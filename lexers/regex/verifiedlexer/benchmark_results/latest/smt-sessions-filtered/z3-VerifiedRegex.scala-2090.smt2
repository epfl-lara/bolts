; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105872 () Bool)

(assert start!105872)

(declare-datatypes ((T!21474 0))(
  ( (T!21475 (val!3844 Int)) )
))
(declare-datatypes ((List!12023 0))(
  ( (Nil!11999) (Cons!11999 (h!17400 T!21474) (t!112245 List!12023)) )
))
(declare-datatypes ((IArray!7869 0))(
  ( (IArray!7870 (innerList!3992 List!12023)) )
))
(declare-datatypes ((Conc!3932 0))(
  ( (Node!3932 (left!10446 Conc!3932) (right!10776 Conc!3932) (csize!8094 Int) (cheight!4143 Int)) (Leaf!6023 (xs!6637 IArray!7869) (csize!8095 Int)) (Empty!3932) )
))
(declare-fun t!4115 () Conc!3932)

(declare-fun tp!339894 () Bool)

(declare-fun tp!339895 () Bool)

(declare-fun b!1191057 () Bool)

(declare-fun e!765679 () Bool)

(declare-fun inv!15885 (Conc!3932) Bool)

(assert (=> b!1191057 (= e!765679 (and (inv!15885 (left!10446 t!4115)) tp!339895 (inv!15885 (right!10776 t!4115)) tp!339894))))

(declare-fun res!538060 () Bool)

(declare-fun e!765680 () Bool)

(assert (=> start!105872 (=> (not res!538060) (not e!765680))))

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(assert (=> start!105872 (= res!538060 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!105872 e!765680))

(assert (=> start!105872 true))

(assert (=> start!105872 (and (inv!15885 t!4115) e!765679)))

(declare-fun b!1191058 () Bool)

(declare-fun res!538064 () Bool)

(assert (=> b!1191058 (=> (not res!538064) (not e!765680))))

(declare-fun isBalanced!1117 (Conc!3932) Bool)

(declare-fun slice!409 (IArray!7869 Int Int) IArray!7869)

(assert (=> b!1191058 (= res!538064 (isBalanced!1117 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553))))))

(declare-fun b!1191059 () Bool)

(declare-fun res!538061 () Bool)

(assert (=> b!1191059 (=> (not res!538061) (not e!765680))))

(get-info :version)

(assert (=> b!1191059 (= res!538061 (and (not (= from!553 until!31)) ((_ is Leaf!6023) t!4115) (not (= (- until!31 from!553) 0))))))

(declare-fun b!1191060 () Bool)

(declare-fun res!538063 () Bool)

(assert (=> b!1191060 (=> (not res!538063) (not e!765680))))

(declare-fun size!9480 (Conc!3932) Int)

(assert (=> b!1191060 (= res!538063 (<= until!31 (size!9480 t!4115)))))

(declare-fun b!1191061 () Bool)

(declare-fun size!9481 (List!12023) Int)

(declare-fun list!4409 (Conc!3932) List!12023)

(assert (=> b!1191061 (= e!765680 (> until!31 (size!9481 (list!4409 t!4115))))))

(declare-fun b!1191062 () Bool)

(declare-fun e!765678 () Bool)

(declare-fun inv!15886 (IArray!7869) Bool)

(assert (=> b!1191062 (= e!765679 (and (inv!15886 (xs!6637 t!4115)) e!765678))))

(declare-fun b!1191063 () Bool)

(declare-fun res!538062 () Bool)

(assert (=> b!1191063 (=> (not res!538062) (not e!765680))))

(assert (=> b!1191063 (= res!538062 (isBalanced!1117 t!4115))))

(declare-fun b!1191064 () Bool)

(declare-fun tp!339893 () Bool)

(assert (=> b!1191064 (= e!765678 tp!339893)))

(assert (= (and start!105872 res!538060) b!1191060))

(assert (= (and b!1191060 res!538063) b!1191063))

(assert (= (and b!1191063 res!538062) b!1191059))

(assert (= (and b!1191059 res!538061) b!1191058))

(assert (= (and b!1191058 res!538064) b!1191061))

(assert (= (and start!105872 ((_ is Node!3932) t!4115)) b!1191057))

(assert (= b!1191062 b!1191064))

(assert (= (and start!105872 ((_ is Leaf!6023) t!4115)) b!1191062))

(declare-fun m!1366027 () Bool)

(assert (=> b!1191057 m!1366027))

(declare-fun m!1366029 () Bool)

(assert (=> b!1191057 m!1366029))

(declare-fun m!1366031 () Bool)

(assert (=> b!1191058 m!1366031))

(declare-fun m!1366033 () Bool)

(assert (=> b!1191058 m!1366033))

(declare-fun m!1366035 () Bool)

(assert (=> b!1191061 m!1366035))

(assert (=> b!1191061 m!1366035))

(declare-fun m!1366037 () Bool)

(assert (=> b!1191061 m!1366037))

(declare-fun m!1366039 () Bool)

(assert (=> b!1191060 m!1366039))

(declare-fun m!1366041 () Bool)

(assert (=> b!1191063 m!1366041))

(declare-fun m!1366043 () Bool)

(assert (=> start!105872 m!1366043))

(declare-fun m!1366045 () Bool)

(assert (=> b!1191062 m!1366045))

(check-sat (not b!1191057) (not b!1191061) (not b!1191060) (not b!1191063) (not start!105872) (not b!1191062) (not b!1191064) (not b!1191058))
(check-sat)
(get-model)

(declare-fun b!1191083 () Bool)

(declare-fun res!538084 () Bool)

(declare-fun e!765690 () Bool)

(assert (=> b!1191083 (=> (not res!538084) (not e!765690))))

(declare-fun isEmpty!7212 (Conc!3932) Bool)

(assert (=> b!1191083 (= res!538084 (not (isEmpty!7212 (left!10446 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553))))))))

(declare-fun b!1191084 () Bool)

(declare-fun res!538080 () Bool)

(assert (=> b!1191084 (=> (not res!538080) (not e!765690))))

(assert (=> b!1191084 (= res!538080 (isBalanced!1117 (right!10776 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553)))))))

(declare-fun b!1191085 () Bool)

(declare-fun e!765689 () Bool)

(assert (=> b!1191085 (= e!765689 e!765690)))

(declare-fun res!538083 () Bool)

(assert (=> b!1191085 (=> (not res!538083) (not e!765690))))

(declare-fun height!531 (Conc!3932) Int)

(assert (=> b!1191085 (= res!538083 (<= (- 1) (- (height!531 (left!10446 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553)))) (height!531 (right!10776 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553)))))))))

(declare-fun d!340357 () Bool)

(declare-fun res!538081 () Bool)

(assert (=> d!340357 (=> res!538081 e!765689)))

(assert (=> d!340357 (= res!538081 (not ((_ is Node!3932) (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553)))))))

(assert (=> d!340357 (= (isBalanced!1117 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553))) e!765689)))

(declare-fun b!1191086 () Bool)

(declare-fun res!538079 () Bool)

(assert (=> b!1191086 (=> (not res!538079) (not e!765690))))

(assert (=> b!1191086 (= res!538079 (<= (- (height!531 (left!10446 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553)))) (height!531 (right!10776 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553))))) 1))))

(declare-fun b!1191087 () Bool)

(declare-fun res!538082 () Bool)

(assert (=> b!1191087 (=> (not res!538082) (not e!765690))))

(assert (=> b!1191087 (= res!538082 (isBalanced!1117 (left!10446 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553)))))))

(declare-fun b!1191088 () Bool)

(assert (=> b!1191088 (= e!765690 (not (isEmpty!7212 (right!10776 (Leaf!6023 (slice!409 (xs!6637 t!4115) from!553 until!31) (- until!31 from!553))))))))

(assert (= (and d!340357 (not res!538081)) b!1191085))

(assert (= (and b!1191085 res!538083) b!1191086))

(assert (= (and b!1191086 res!538079) b!1191087))

(assert (= (and b!1191087 res!538082) b!1191084))

(assert (= (and b!1191084 res!538080) b!1191083))

(assert (= (and b!1191083 res!538084) b!1191088))

(declare-fun m!1366047 () Bool)

(assert (=> b!1191085 m!1366047))

(declare-fun m!1366049 () Bool)

(assert (=> b!1191085 m!1366049))

(declare-fun m!1366051 () Bool)

(assert (=> b!1191083 m!1366051))

(declare-fun m!1366053 () Bool)

(assert (=> b!1191087 m!1366053))

(declare-fun m!1366055 () Bool)

(assert (=> b!1191088 m!1366055))

(assert (=> b!1191086 m!1366047))

(assert (=> b!1191086 m!1366049))

(declare-fun m!1366057 () Bool)

(assert (=> b!1191084 m!1366057))

(assert (=> b!1191058 d!340357))

(declare-fun lt!409232 () IArray!7869)

(declare-fun d!340361 () Bool)

(declare-fun slice!410 (List!12023 Int Int) List!12023)

(declare-fun list!4410 (IArray!7869) List!12023)

(assert (=> d!340361 (= lt!409232 (IArray!7870 (slice!410 (list!4410 (xs!6637 t!4115)) from!553 until!31)))))

(declare-fun choose!7699 (IArray!7869 Int Int) IArray!7869)

(assert (=> d!340361 (= lt!409232 (choose!7699 (xs!6637 t!4115) from!553 until!31))))

(declare-fun e!765706 () Bool)

(assert (=> d!340361 e!765706))

(declare-fun res!538089 () Bool)

(assert (=> d!340361 (=> (not res!538089) (not e!765706))))

(assert (=> d!340361 (= res!538089 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340361 (= (slice!409 (xs!6637 t!4115) from!553 until!31) lt!409232)))

(declare-fun b!1191115 () Bool)

(declare-fun size!9482 (IArray!7869) Int)

(assert (=> b!1191115 (= e!765706 (<= until!31 (size!9482 (xs!6637 t!4115))))))

(assert (= (and d!340361 res!538089) b!1191115))

(declare-fun m!1366081 () Bool)

(assert (=> d!340361 m!1366081))

(assert (=> d!340361 m!1366081))

(declare-fun m!1366083 () Bool)

(assert (=> d!340361 m!1366083))

(declare-fun m!1366085 () Bool)

(assert (=> d!340361 m!1366085))

(declare-fun m!1366087 () Bool)

(assert (=> b!1191115 m!1366087))

(assert (=> b!1191058 d!340361))

(declare-fun b!1191119 () Bool)

(declare-fun res!538096 () Bool)

(declare-fun e!765710 () Bool)

(assert (=> b!1191119 (=> (not res!538096) (not e!765710))))

(assert (=> b!1191119 (= res!538096 (not (isEmpty!7212 (left!10446 t!4115))))))

(declare-fun b!1191120 () Bool)

(declare-fun res!538092 () Bool)

(assert (=> b!1191120 (=> (not res!538092) (not e!765710))))

(assert (=> b!1191120 (= res!538092 (isBalanced!1117 (right!10776 t!4115)))))

(declare-fun b!1191121 () Bool)

(declare-fun e!765709 () Bool)

(assert (=> b!1191121 (= e!765709 e!765710)))

(declare-fun res!538095 () Bool)

(assert (=> b!1191121 (=> (not res!538095) (not e!765710))))

(assert (=> b!1191121 (= res!538095 (<= (- 1) (- (height!531 (left!10446 t!4115)) (height!531 (right!10776 t!4115)))))))

(declare-fun d!340373 () Bool)

(declare-fun res!538093 () Bool)

(assert (=> d!340373 (=> res!538093 e!765709)))

(assert (=> d!340373 (= res!538093 (not ((_ is Node!3932) t!4115)))))

(assert (=> d!340373 (= (isBalanced!1117 t!4115) e!765709)))

(declare-fun b!1191122 () Bool)

(declare-fun res!538091 () Bool)

(assert (=> b!1191122 (=> (not res!538091) (not e!765710))))

(assert (=> b!1191122 (= res!538091 (<= (- (height!531 (left!10446 t!4115)) (height!531 (right!10776 t!4115))) 1))))

(declare-fun b!1191123 () Bool)

(declare-fun res!538094 () Bool)

(assert (=> b!1191123 (=> (not res!538094) (not e!765710))))

(assert (=> b!1191123 (= res!538094 (isBalanced!1117 (left!10446 t!4115)))))

(declare-fun b!1191124 () Bool)

(assert (=> b!1191124 (= e!765710 (not (isEmpty!7212 (right!10776 t!4115))))))

(assert (= (and d!340373 (not res!538093)) b!1191121))

(assert (= (and b!1191121 res!538095) b!1191122))

(assert (= (and b!1191122 res!538091) b!1191123))

(assert (= (and b!1191123 res!538094) b!1191120))

(assert (= (and b!1191120 res!538092) b!1191119))

(assert (= (and b!1191119 res!538096) b!1191124))

(declare-fun m!1366089 () Bool)

(assert (=> b!1191121 m!1366089))

(declare-fun m!1366091 () Bool)

(assert (=> b!1191121 m!1366091))

(declare-fun m!1366093 () Bool)

(assert (=> b!1191119 m!1366093))

(declare-fun m!1366095 () Bool)

(assert (=> b!1191123 m!1366095))

(declare-fun m!1366097 () Bool)

(assert (=> b!1191124 m!1366097))

(assert (=> b!1191122 m!1366089))

(assert (=> b!1191122 m!1366091))

(declare-fun m!1366099 () Bool)

(assert (=> b!1191120 m!1366099))

(assert (=> b!1191063 d!340373))

(declare-fun d!340375 () Bool)

(declare-fun lt!409235 () Int)

(assert (=> d!340375 (= lt!409235 (size!9481 (list!4409 t!4115)))))

(assert (=> d!340375 (= lt!409235 (ite ((_ is Empty!3932) t!4115) 0 (ite ((_ is Leaf!6023) t!4115) (csize!8095 t!4115) (csize!8094 t!4115))))))

(assert (=> d!340375 (= (size!9480 t!4115) lt!409235)))

(declare-fun bs!287887 () Bool)

(assert (= bs!287887 d!340375))

(assert (=> bs!287887 m!1366035))

(assert (=> bs!287887 m!1366035))

(assert (=> bs!287887 m!1366037))

(assert (=> b!1191060 d!340375))

(declare-fun d!340377 () Bool)

(declare-fun lt!409238 () Int)

(assert (=> d!340377 (>= lt!409238 0)))

(declare-fun e!765717 () Int)

(assert (=> d!340377 (= lt!409238 e!765717)))

(declare-fun c!197669 () Bool)

(assert (=> d!340377 (= c!197669 ((_ is Nil!11999) (list!4409 t!4115)))))

(assert (=> d!340377 (= (size!9481 (list!4409 t!4115)) lt!409238)))

(declare-fun b!1191141 () Bool)

(assert (=> b!1191141 (= e!765717 0)))

(declare-fun b!1191142 () Bool)

(assert (=> b!1191142 (= e!765717 (+ 1 (size!9481 (t!112245 (list!4409 t!4115)))))))

(assert (= (and d!340377 c!197669) b!1191141))

(assert (= (and d!340377 (not c!197669)) b!1191142))

(declare-fun m!1366101 () Bool)

(assert (=> b!1191142 m!1366101))

(assert (=> b!1191061 d!340377))

(declare-fun b!1191157 () Bool)

(declare-fun e!765724 () List!12023)

(assert (=> b!1191157 (= e!765724 Nil!11999)))

(declare-fun b!1191159 () Bool)

(declare-fun e!765725 () List!12023)

(assert (=> b!1191159 (= e!765725 (list!4410 (xs!6637 t!4115)))))

(declare-fun b!1191158 () Bool)

(assert (=> b!1191158 (= e!765724 e!765725)))

(declare-fun c!197675 () Bool)

(assert (=> b!1191158 (= c!197675 ((_ is Leaf!6023) t!4115))))

(declare-fun d!340379 () Bool)

(declare-fun c!197674 () Bool)

(assert (=> d!340379 (= c!197674 ((_ is Empty!3932) t!4115))))

(assert (=> d!340379 (= (list!4409 t!4115) e!765724)))

(declare-fun b!1191160 () Bool)

(declare-fun ++!3034 (List!12023 List!12023) List!12023)

(assert (=> b!1191160 (= e!765725 (++!3034 (list!4409 (left!10446 t!4115)) (list!4409 (right!10776 t!4115))))))

(assert (= (and d!340379 c!197674) b!1191157))

(assert (= (and d!340379 (not c!197674)) b!1191158))

(assert (= (and b!1191158 c!197675) b!1191159))

(assert (= (and b!1191158 (not c!197675)) b!1191160))

(assert (=> b!1191159 m!1366081))

(declare-fun m!1366115 () Bool)

(assert (=> b!1191160 m!1366115))

(declare-fun m!1366117 () Bool)

(assert (=> b!1191160 m!1366117))

(assert (=> b!1191160 m!1366115))

(assert (=> b!1191160 m!1366117))

(declare-fun m!1366119 () Bool)

(assert (=> b!1191160 m!1366119))

(assert (=> b!1191061 d!340379))

(declare-fun d!340383 () Bool)

(declare-fun c!197678 () Bool)

(assert (=> d!340383 (= c!197678 ((_ is Node!3932) t!4115))))

(declare-fun e!765732 () Bool)

(assert (=> d!340383 (= (inv!15885 t!4115) e!765732)))

(declare-fun b!1191169 () Bool)

(declare-fun inv!15889 (Conc!3932) Bool)

(assert (=> b!1191169 (= e!765732 (inv!15889 t!4115))))

(declare-fun b!1191170 () Bool)

(declare-fun e!765733 () Bool)

(assert (=> b!1191170 (= e!765732 e!765733)))

(declare-fun res!538119 () Bool)

(assert (=> b!1191170 (= res!538119 (not ((_ is Leaf!6023) t!4115)))))

(assert (=> b!1191170 (=> res!538119 e!765733)))

(declare-fun b!1191171 () Bool)

(declare-fun inv!15890 (Conc!3932) Bool)

(assert (=> b!1191171 (= e!765733 (inv!15890 t!4115))))

(assert (= (and d!340383 c!197678) b!1191169))

(assert (= (and d!340383 (not c!197678)) b!1191170))

(assert (= (and b!1191170 (not res!538119)) b!1191171))

(declare-fun m!1366121 () Bool)

(assert (=> b!1191169 m!1366121))

(declare-fun m!1366123 () Bool)

(assert (=> b!1191171 m!1366123))

(assert (=> start!105872 d!340383))

(declare-fun d!340385 () Bool)

(declare-fun c!197679 () Bool)

(assert (=> d!340385 (= c!197679 ((_ is Node!3932) (left!10446 t!4115)))))

(declare-fun e!765734 () Bool)

(assert (=> d!340385 (= (inv!15885 (left!10446 t!4115)) e!765734)))

(declare-fun b!1191172 () Bool)

(assert (=> b!1191172 (= e!765734 (inv!15889 (left!10446 t!4115)))))

(declare-fun b!1191173 () Bool)

(declare-fun e!765735 () Bool)

(assert (=> b!1191173 (= e!765734 e!765735)))

(declare-fun res!538120 () Bool)

(assert (=> b!1191173 (= res!538120 (not ((_ is Leaf!6023) (left!10446 t!4115))))))

(assert (=> b!1191173 (=> res!538120 e!765735)))

(declare-fun b!1191174 () Bool)

(assert (=> b!1191174 (= e!765735 (inv!15890 (left!10446 t!4115)))))

(assert (= (and d!340385 c!197679) b!1191172))

(assert (= (and d!340385 (not c!197679)) b!1191173))

(assert (= (and b!1191173 (not res!538120)) b!1191174))

(declare-fun m!1366125 () Bool)

(assert (=> b!1191172 m!1366125))

(declare-fun m!1366127 () Bool)

(assert (=> b!1191174 m!1366127))

(assert (=> b!1191057 d!340385))

(declare-fun d!340387 () Bool)

(declare-fun c!197680 () Bool)

(assert (=> d!340387 (= c!197680 ((_ is Node!3932) (right!10776 t!4115)))))

(declare-fun e!765736 () Bool)

(assert (=> d!340387 (= (inv!15885 (right!10776 t!4115)) e!765736)))

(declare-fun b!1191175 () Bool)

(assert (=> b!1191175 (= e!765736 (inv!15889 (right!10776 t!4115)))))

(declare-fun b!1191176 () Bool)

(declare-fun e!765737 () Bool)

(assert (=> b!1191176 (= e!765736 e!765737)))

(declare-fun res!538121 () Bool)

(assert (=> b!1191176 (= res!538121 (not ((_ is Leaf!6023) (right!10776 t!4115))))))

(assert (=> b!1191176 (=> res!538121 e!765737)))

(declare-fun b!1191177 () Bool)

(assert (=> b!1191177 (= e!765737 (inv!15890 (right!10776 t!4115)))))

(assert (= (and d!340387 c!197680) b!1191175))

(assert (= (and d!340387 (not c!197680)) b!1191176))

(assert (= (and b!1191176 (not res!538121)) b!1191177))

(declare-fun m!1366129 () Bool)

(assert (=> b!1191175 m!1366129))

(declare-fun m!1366131 () Bool)

(assert (=> b!1191177 m!1366131))

(assert (=> b!1191057 d!340387))

(declare-fun d!340389 () Bool)

(assert (=> d!340389 (= (inv!15886 (xs!6637 t!4115)) (<= (size!9481 (innerList!3992 (xs!6637 t!4115))) 2147483647))))

(declare-fun bs!287888 () Bool)

(assert (= bs!287888 d!340389))

(declare-fun m!1366139 () Bool)

(assert (=> bs!287888 m!1366139))

(assert (=> b!1191062 d!340389))

(declare-fun b!1191183 () Bool)

(declare-fun e!765741 () Bool)

(declare-fun tp_is_empty!5901 () Bool)

(declare-fun tp!339898 () Bool)

(assert (=> b!1191183 (= e!765741 (and tp_is_empty!5901 tp!339898))))

(assert (=> b!1191064 (= tp!339893 e!765741)))

(assert (= (and b!1191064 ((_ is Cons!11999) (innerList!3992 (xs!6637 t!4115)))) b!1191183))

(declare-fun tp!339905 () Bool)

(declare-fun b!1191192 () Bool)

(declare-fun tp!339906 () Bool)

(declare-fun e!765747 () Bool)

(assert (=> b!1191192 (= e!765747 (and (inv!15885 (left!10446 (left!10446 t!4115))) tp!339906 (inv!15885 (right!10776 (left!10446 t!4115))) tp!339905))))

(declare-fun b!1191194 () Bool)

(declare-fun e!765746 () Bool)

(declare-fun tp!339907 () Bool)

(assert (=> b!1191194 (= e!765746 tp!339907)))

(declare-fun b!1191193 () Bool)

(assert (=> b!1191193 (= e!765747 (and (inv!15886 (xs!6637 (left!10446 t!4115))) e!765746))))

(assert (=> b!1191057 (= tp!339895 (and (inv!15885 (left!10446 t!4115)) e!765747))))

(assert (= (and b!1191057 ((_ is Node!3932) (left!10446 t!4115))) b!1191192))

(assert (= b!1191193 b!1191194))

(assert (= (and b!1191057 ((_ is Leaf!6023) (left!10446 t!4115))) b!1191193))

(declare-fun m!1366143 () Bool)

(assert (=> b!1191192 m!1366143))

(declare-fun m!1366145 () Bool)

(assert (=> b!1191192 m!1366145))

(declare-fun m!1366147 () Bool)

(assert (=> b!1191193 m!1366147))

(assert (=> b!1191057 m!1366027))

(declare-fun b!1191195 () Bool)

(declare-fun tp!339908 () Bool)

(declare-fun tp!339909 () Bool)

(declare-fun e!765749 () Bool)

(assert (=> b!1191195 (= e!765749 (and (inv!15885 (left!10446 (right!10776 t!4115))) tp!339909 (inv!15885 (right!10776 (right!10776 t!4115))) tp!339908))))

(declare-fun b!1191197 () Bool)

(declare-fun e!765748 () Bool)

(declare-fun tp!339910 () Bool)

(assert (=> b!1191197 (= e!765748 tp!339910)))

(declare-fun b!1191196 () Bool)

(assert (=> b!1191196 (= e!765749 (and (inv!15886 (xs!6637 (right!10776 t!4115))) e!765748))))

(assert (=> b!1191057 (= tp!339894 (and (inv!15885 (right!10776 t!4115)) e!765749))))

(assert (= (and b!1191057 ((_ is Node!3932) (right!10776 t!4115))) b!1191195))

(assert (= b!1191196 b!1191197))

(assert (= (and b!1191057 ((_ is Leaf!6023) (right!10776 t!4115))) b!1191196))

(declare-fun m!1366149 () Bool)

(assert (=> b!1191195 m!1366149))

(declare-fun m!1366151 () Bool)

(assert (=> b!1191195 m!1366151))

(declare-fun m!1366153 () Bool)

(assert (=> b!1191196 m!1366153))

(assert (=> b!1191057 m!1366029))

(check-sat (not b!1191183) (not b!1191192) (not b!1191086) (not b!1191160) (not b!1191169) (not b!1191120) (not b!1191193) (not d!340361) (not b!1191124) (not d!340375) (not b!1191172) (not b!1191142) (not b!1191119) (not b!1191174) (not b!1191121) (not b!1191057) (not b!1191084) (not b!1191087) (not b!1191175) (not b!1191197) (not b!1191123) (not b!1191088) tp_is_empty!5901 (not b!1191122) (not b!1191195) (not b!1191196) (not b!1191115) (not b!1191177) (not b!1191159) (not d!340389) (not b!1191171) (not b!1191083) (not b!1191194) (not b!1191085))
(check-sat)
