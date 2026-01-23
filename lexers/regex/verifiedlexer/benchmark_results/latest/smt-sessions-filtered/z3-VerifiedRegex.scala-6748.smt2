; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!352420 () Bool)

(assert start!352420)

(declare-fun b_free!100423 () Bool)

(declare-fun b_next!101127 () Bool)

(assert (=> start!352420 (= b_free!100423 (not b_next!101127))))

(declare-fun tp!1145906 () Bool)

(declare-fun b_and!278877 () Bool)

(assert (=> start!352420 (= tp!1145906 b_and!278877)))

(declare-fun b!3753010 () Bool)

(declare-fun e!2321464 () Bool)

(declare-datatypes ((T!69126 0))(
  ( (T!69127 (val!13176 Int)) )
))
(declare-datatypes ((List!40135 0))(
  ( (Nil!40011) (Cons!40011 (h!45431 T!69126) (t!303206 List!40135)) )
))
(declare-datatypes ((IArray!24479 0))(
  ( (IArray!24480 (innerList!12297 List!40135)) )
))
(declare-datatypes ((Conc!12237 0))(
  ( (Node!12237 (left!30977 Conc!12237) (right!31307 Conc!12237) (csize!24704 Int) (cheight!12448 Int)) (Leaf!18986 (xs!15439 IArray!24479) (csize!24705 Int)) (Empty!12237) )
))
(declare-fun t!3709 () Conc!12237)

(declare-fun e!2321462 () Bool)

(declare-fun inv!53576 (IArray!24479) Bool)

(assert (=> b!3753010 (= e!2321464 (and (inv!53576 (xs!15439 t!3709)) e!2321462))))

(declare-fun e!2321463 () Bool)

(declare-fun p!1451 () Int)

(declare-fun e!2321461 () Bool)

(declare-fun b!3753011 () Bool)

(declare-fun forall!8236 (List!40135 Int) Bool)

(declare-fun list!14746 (Conc!12237) List!40135)

(assert (=> b!3753011 (= e!2321461 (not (= e!2321463 (forall!8236 (list!14746 t!3709) p!1451))))))

(declare-fun res!1520869 () Bool)

(assert (=> b!3753011 (=> (not res!1520869) (not e!2321463))))

(declare-fun forall!8237 (Conc!12237 Int) Bool)

(assert (=> b!3753011 (= res!1520869 (forall!8237 (left!30977 t!3709) p!1451))))

(declare-datatypes ((Unit!57742 0))(
  ( (Unit!57743) )
))
(declare-fun lt!1300105 () Unit!57742)

(declare-fun lemmaForallConcat!213 (List!40135 List!40135 Int) Unit!57742)

(assert (=> b!3753011 (= lt!1300105 (lemmaForallConcat!213 (list!14746 (left!30977 t!3709)) (list!14746 (right!31307 t!3709)) p!1451))))

(declare-fun b!3753012 () Bool)

(assert (=> b!3753012 (= e!2321463 (forall!8237 (right!31307 t!3709) p!1451))))

(declare-fun res!1520868 () Bool)

(assert (=> start!352420 (=> (not res!1520868) (not e!2321461))))

(get-info :version)

(assert (=> start!352420 (= res!1520868 (and (not ((_ is Empty!12237) t!3709)) (not ((_ is Leaf!18986) t!3709))))))

(assert (=> start!352420 e!2321461))

(declare-fun inv!53577 (Conc!12237) Bool)

(assert (=> start!352420 (and (inv!53577 t!3709) e!2321464)))

(assert (=> start!352420 tp!1145906))

(declare-fun b!3753013 () Bool)

(declare-fun tp!1145904 () Bool)

(assert (=> b!3753013 (= e!2321462 tp!1145904)))

(declare-fun b!3753014 () Bool)

(declare-fun tp!1145905 () Bool)

(declare-fun tp!1145903 () Bool)

(assert (=> b!3753014 (= e!2321464 (and (inv!53577 (left!30977 t!3709)) tp!1145905 (inv!53577 (right!31307 t!3709)) tp!1145903))))

(assert (= (and start!352420 res!1520868) b!3753011))

(assert (= (and b!3753011 res!1520869) b!3753012))

(assert (= (and start!352420 ((_ is Node!12237) t!3709)) b!3753014))

(assert (= b!3753010 b!3753013))

(assert (= (and start!352420 ((_ is Leaf!18986) t!3709)) b!3753010))

(declare-fun m!4244811 () Bool)

(assert (=> b!3753010 m!4244811))

(declare-fun m!4244813 () Bool)

(assert (=> b!3753014 m!4244813))

(declare-fun m!4244815 () Bool)

(assert (=> b!3753014 m!4244815))

(declare-fun m!4244817 () Bool)

(assert (=> start!352420 m!4244817))

(declare-fun m!4244819 () Bool)

(assert (=> b!3753012 m!4244819))

(declare-fun m!4244821 () Bool)

(assert (=> b!3753011 m!4244821))

(declare-fun m!4244823 () Bool)

(assert (=> b!3753011 m!4244823))

(declare-fun m!4244825 () Bool)

(assert (=> b!3753011 m!4244825))

(assert (=> b!3753011 m!4244821))

(declare-fun m!4244827 () Bool)

(assert (=> b!3753011 m!4244827))

(declare-fun m!4244829 () Bool)

(assert (=> b!3753011 m!4244829))

(declare-fun m!4244831 () Bool)

(assert (=> b!3753011 m!4244831))

(assert (=> b!3753011 m!4244829))

(assert (=> b!3753011 m!4244827))

(check-sat (not b_next!101127) (not b!3753014) (not start!352420) (not b!3753013) (not b!3753011) b_and!278877 (not b!3753012) (not b!3753010))
(check-sat b_and!278877 (not b_next!101127))
(get-model)

(declare-fun b!3753039 () Bool)

(declare-fun e!2321482 () Bool)

(declare-fun forall!8238 (IArray!24479 Int) Bool)

(assert (=> b!3753039 (= e!2321482 (forall!8238 (xs!15439 (right!31307 t!3709)) p!1451))))

(declare-fun b!3753038 () Bool)

(declare-fun e!2321481 () Bool)

(assert (=> b!3753038 (= e!2321481 e!2321482)))

(declare-fun c!649665 () Bool)

(assert (=> b!3753038 (= c!649665 ((_ is Leaf!18986) (right!31307 t!3709)))))

(declare-fun d!1095229 () Bool)

(declare-fun lt!1300111 () Bool)

(assert (=> d!1095229 (= lt!1300111 (forall!8236 (list!14746 (right!31307 t!3709)) p!1451))))

(assert (=> d!1095229 (= lt!1300111 e!2321481)))

(declare-fun res!1520879 () Bool)

(assert (=> d!1095229 (=> res!1520879 e!2321481)))

(assert (=> d!1095229 (= res!1520879 ((_ is Empty!12237) (right!31307 t!3709)))))

(assert (=> d!1095229 (= (forall!8237 (right!31307 t!3709) p!1451) lt!1300111)))

(declare-fun b!3753041 () Bool)

(declare-fun e!2321483 () Bool)

(assert (=> b!3753041 (= e!2321483 (forall!8237 (right!31307 (right!31307 t!3709)) p!1451))))

(declare-fun b!3753040 () Bool)

(assert (=> b!3753040 (= e!2321482 e!2321483)))

(declare-fun lt!1300110 () Unit!57742)

(assert (=> b!3753040 (= lt!1300110 (lemmaForallConcat!213 (list!14746 (left!30977 (right!31307 t!3709))) (list!14746 (right!31307 (right!31307 t!3709))) p!1451))))

(declare-fun res!1520880 () Bool)

(assert (=> b!3753040 (= res!1520880 (forall!8237 (left!30977 (right!31307 t!3709)) p!1451))))

(assert (=> b!3753040 (=> (not res!1520880) (not e!2321483))))

(assert (= (and d!1095229 (not res!1520879)) b!3753038))

(assert (= (and b!3753038 c!649665) b!3753039))

(assert (= (and b!3753038 (not c!649665)) b!3753040))

(assert (= (and b!3753040 res!1520880) b!3753041))

(declare-fun m!4244847 () Bool)

(assert (=> b!3753039 m!4244847))

(assert (=> d!1095229 m!4244829))

(assert (=> d!1095229 m!4244829))

(declare-fun m!4244849 () Bool)

(assert (=> d!1095229 m!4244849))

(declare-fun m!4244851 () Bool)

(assert (=> b!3753041 m!4244851))

(declare-fun m!4244853 () Bool)

(assert (=> b!3753040 m!4244853))

(declare-fun m!4244855 () Bool)

(assert (=> b!3753040 m!4244855))

(assert (=> b!3753040 m!4244853))

(assert (=> b!3753040 m!4244855))

(declare-fun m!4244857 () Bool)

(assert (=> b!3753040 m!4244857))

(declare-fun m!4244859 () Bool)

(assert (=> b!3753040 m!4244859))

(assert (=> b!3753012 d!1095229))

(declare-fun d!1095239 () Bool)

(declare-fun c!649671 () Bool)

(assert (=> d!1095239 (= c!649671 ((_ is Node!12237) t!3709))))

(declare-fun e!2321497 () Bool)

(assert (=> d!1095239 (= (inv!53577 t!3709) e!2321497)))

(declare-fun b!3753060 () Bool)

(declare-fun inv!53580 (Conc!12237) Bool)

(assert (=> b!3753060 (= e!2321497 (inv!53580 t!3709))))

(declare-fun b!3753061 () Bool)

(declare-fun e!2321498 () Bool)

(assert (=> b!3753061 (= e!2321497 e!2321498)))

(declare-fun res!1520889 () Bool)

(assert (=> b!3753061 (= res!1520889 (not ((_ is Leaf!18986) t!3709)))))

(assert (=> b!3753061 (=> res!1520889 e!2321498)))

(declare-fun b!3753062 () Bool)

(declare-fun inv!53581 (Conc!12237) Bool)

(assert (=> b!3753062 (= e!2321498 (inv!53581 t!3709))))

(assert (= (and d!1095239 c!649671) b!3753060))

(assert (= (and d!1095239 (not c!649671)) b!3753061))

(assert (= (and b!3753061 (not res!1520889)) b!3753062))

(declare-fun m!4244867 () Bool)

(assert (=> b!3753060 m!4244867))

(declare-fun m!4244869 () Bool)

(assert (=> b!3753062 m!4244869))

(assert (=> start!352420 d!1095239))

(declare-fun d!1095241 () Bool)

(declare-fun c!649672 () Bool)

(assert (=> d!1095241 (= c!649672 ((_ is Node!12237) (left!30977 t!3709)))))

(declare-fun e!2321499 () Bool)

(assert (=> d!1095241 (= (inv!53577 (left!30977 t!3709)) e!2321499)))

(declare-fun b!3753063 () Bool)

(assert (=> b!3753063 (= e!2321499 (inv!53580 (left!30977 t!3709)))))

(declare-fun b!3753064 () Bool)

(declare-fun e!2321500 () Bool)

(assert (=> b!3753064 (= e!2321499 e!2321500)))

(declare-fun res!1520890 () Bool)

(assert (=> b!3753064 (= res!1520890 (not ((_ is Leaf!18986) (left!30977 t!3709))))))

(assert (=> b!3753064 (=> res!1520890 e!2321500)))

(declare-fun b!3753065 () Bool)

(assert (=> b!3753065 (= e!2321500 (inv!53581 (left!30977 t!3709)))))

(assert (= (and d!1095241 c!649672) b!3753063))

(assert (= (and d!1095241 (not c!649672)) b!3753064))

(assert (= (and b!3753064 (not res!1520890)) b!3753065))

(declare-fun m!4244879 () Bool)

(assert (=> b!3753063 m!4244879))

(declare-fun m!4244881 () Bool)

(assert (=> b!3753065 m!4244881))

(assert (=> b!3753014 d!1095241))

(declare-fun d!1095245 () Bool)

(declare-fun c!649673 () Bool)

(assert (=> d!1095245 (= c!649673 ((_ is Node!12237) (right!31307 t!3709)))))

(declare-fun e!2321501 () Bool)

(assert (=> d!1095245 (= (inv!53577 (right!31307 t!3709)) e!2321501)))

(declare-fun b!3753066 () Bool)

(assert (=> b!3753066 (= e!2321501 (inv!53580 (right!31307 t!3709)))))

(declare-fun b!3753067 () Bool)

(declare-fun e!2321502 () Bool)

(assert (=> b!3753067 (= e!2321501 e!2321502)))

(declare-fun res!1520891 () Bool)

(assert (=> b!3753067 (= res!1520891 (not ((_ is Leaf!18986) (right!31307 t!3709))))))

(assert (=> b!3753067 (=> res!1520891 e!2321502)))

(declare-fun b!3753068 () Bool)

(assert (=> b!3753068 (= e!2321502 (inv!53581 (right!31307 t!3709)))))

(assert (= (and d!1095245 c!649673) b!3753066))

(assert (= (and d!1095245 (not c!649673)) b!3753067))

(assert (= (and b!3753067 (not res!1520891)) b!3753068))

(declare-fun m!4244883 () Bool)

(assert (=> b!3753066 m!4244883))

(declare-fun m!4244885 () Bool)

(assert (=> b!3753068 m!4244885))

(assert (=> b!3753014 d!1095245))

(declare-fun d!1095247 () Bool)

(declare-fun size!30108 (List!40135) Int)

(assert (=> d!1095247 (= (inv!53576 (xs!15439 t!3709)) (<= (size!30108 (innerList!12297 (xs!15439 t!3709))) 2147483647))))

(declare-fun bs!575464 () Bool)

(assert (= bs!575464 d!1095247))

(declare-fun m!4244887 () Bool)

(assert (=> bs!575464 m!4244887))

(assert (=> b!3753010 d!1095247))

(declare-fun d!1095249 () Bool)

(declare-fun e!2321508 () Bool)

(declare-fun ++!9904 (List!40135 List!40135) List!40135)

(assert (=> d!1095249 (= (forall!8236 (++!9904 (list!14746 (left!30977 t!3709)) (list!14746 (right!31307 t!3709))) p!1451) e!2321508)))

(declare-fun res!1520897 () Bool)

(assert (=> d!1095249 (=> (not res!1520897) (not e!2321508))))

(assert (=> d!1095249 (= res!1520897 (forall!8236 (list!14746 (left!30977 t!3709)) p!1451))))

(declare-fun lt!1300123 () Unit!57742)

(declare-fun choose!22259 (List!40135 List!40135 Int) Unit!57742)

(assert (=> d!1095249 (= lt!1300123 (choose!22259 (list!14746 (left!30977 t!3709)) (list!14746 (right!31307 t!3709)) p!1451))))

(assert (=> d!1095249 (= (lemmaForallConcat!213 (list!14746 (left!30977 t!3709)) (list!14746 (right!31307 t!3709)) p!1451) lt!1300123)))

(declare-fun b!3753074 () Bool)

(assert (=> b!3753074 (= e!2321508 (forall!8236 (list!14746 (right!31307 t!3709)) p!1451))))

(assert (= (and d!1095249 res!1520897) b!3753074))

(assert (=> d!1095249 m!4244827))

(assert (=> d!1095249 m!4244829))

(declare-fun m!4244897 () Bool)

(assert (=> d!1095249 m!4244897))

(assert (=> d!1095249 m!4244897))

(declare-fun m!4244899 () Bool)

(assert (=> d!1095249 m!4244899))

(assert (=> d!1095249 m!4244827))

(declare-fun m!4244901 () Bool)

(assert (=> d!1095249 m!4244901))

(assert (=> d!1095249 m!4244827))

(assert (=> d!1095249 m!4244829))

(declare-fun m!4244903 () Bool)

(assert (=> d!1095249 m!4244903))

(assert (=> b!3753074 m!4244829))

(assert (=> b!3753074 m!4244849))

(assert (=> b!3753011 d!1095249))

(declare-fun b!3753096 () Bool)

(declare-fun e!2321519 () List!40135)

(declare-fun e!2321520 () List!40135)

(assert (=> b!3753096 (= e!2321519 e!2321520)))

(declare-fun c!649685 () Bool)

(assert (=> b!3753096 (= c!649685 ((_ is Leaf!18986) (left!30977 t!3709)))))

(declare-fun b!3753095 () Bool)

(assert (=> b!3753095 (= e!2321519 Nil!40011)))

(declare-fun d!1095253 () Bool)

(declare-fun c!649684 () Bool)

(assert (=> d!1095253 (= c!649684 ((_ is Empty!12237) (left!30977 t!3709)))))

(assert (=> d!1095253 (= (list!14746 (left!30977 t!3709)) e!2321519)))

(declare-fun b!3753098 () Bool)

(assert (=> b!3753098 (= e!2321520 (++!9904 (list!14746 (left!30977 (left!30977 t!3709))) (list!14746 (right!31307 (left!30977 t!3709)))))))

(declare-fun b!3753097 () Bool)

(declare-fun list!14748 (IArray!24479) List!40135)

(assert (=> b!3753097 (= e!2321520 (list!14748 (xs!15439 (left!30977 t!3709))))))

(assert (= (and d!1095253 c!649684) b!3753095))

(assert (= (and d!1095253 (not c!649684)) b!3753096))

(assert (= (and b!3753096 c!649685) b!3753097))

(assert (= (and b!3753096 (not c!649685)) b!3753098))

(declare-fun m!4244913 () Bool)

(assert (=> b!3753098 m!4244913))

(declare-fun m!4244915 () Bool)

(assert (=> b!3753098 m!4244915))

(assert (=> b!3753098 m!4244913))

(assert (=> b!3753098 m!4244915))

(declare-fun m!4244917 () Bool)

(assert (=> b!3753098 m!4244917))

(declare-fun m!4244919 () Bool)

(assert (=> b!3753097 m!4244919))

(assert (=> b!3753011 d!1095253))

(declare-fun d!1095257 () Bool)

(declare-fun res!1520908 () Bool)

(declare-fun e!2321535 () Bool)

(assert (=> d!1095257 (=> res!1520908 e!2321535)))

(assert (=> d!1095257 (= res!1520908 ((_ is Nil!40011) (list!14746 t!3709)))))

(assert (=> d!1095257 (= (forall!8236 (list!14746 t!3709) p!1451) e!2321535)))

(declare-fun b!3753117 () Bool)

(declare-fun e!2321536 () Bool)

(assert (=> b!3753117 (= e!2321535 e!2321536)))

(declare-fun res!1520909 () Bool)

(assert (=> b!3753117 (=> (not res!1520909) (not e!2321536))))

(declare-fun dynLambda!17303 (Int T!69126) Bool)

(assert (=> b!3753117 (= res!1520909 (dynLambda!17303 p!1451 (h!45431 (list!14746 t!3709))))))

(declare-fun b!3753118 () Bool)

(assert (=> b!3753118 (= e!2321536 (forall!8236 (t!303206 (list!14746 t!3709)) p!1451))))

(assert (= (and d!1095257 (not res!1520908)) b!3753117))

(assert (= (and b!3753117 res!1520909) b!3753118))

(declare-fun b_lambda!110121 () Bool)

(assert (=> (not b_lambda!110121) (not b!3753117)))

(declare-fun t!303214 () Bool)

(declare-fun tb!214715 () Bool)

(assert (=> (and start!352420 (= p!1451 p!1451) t!303214) tb!214715))

(declare-fun result!262204 () Bool)

(assert (=> tb!214715 (= result!262204 true)))

(assert (=> b!3753117 t!303214))

(declare-fun b_and!278881 () Bool)

(assert (= b_and!278877 (and (=> t!303214 result!262204) b_and!278881)))

(declare-fun m!4244931 () Bool)

(assert (=> b!3753117 m!4244931))

(declare-fun m!4244933 () Bool)

(assert (=> b!3753118 m!4244933))

(assert (=> b!3753011 d!1095257))

(declare-fun b!3753124 () Bool)

(declare-fun e!2321540 () List!40135)

(declare-fun e!2321541 () List!40135)

(assert (=> b!3753124 (= e!2321540 e!2321541)))

(declare-fun c!649692 () Bool)

(assert (=> b!3753124 (= c!649692 ((_ is Leaf!18986) t!3709))))

(declare-fun b!3753123 () Bool)

(assert (=> b!3753123 (= e!2321540 Nil!40011)))

(declare-fun d!1095265 () Bool)

(declare-fun c!649691 () Bool)

(assert (=> d!1095265 (= c!649691 ((_ is Empty!12237) t!3709))))

(assert (=> d!1095265 (= (list!14746 t!3709) e!2321540)))

(declare-fun b!3753126 () Bool)

(assert (=> b!3753126 (= e!2321541 (++!9904 (list!14746 (left!30977 t!3709)) (list!14746 (right!31307 t!3709))))))

(declare-fun b!3753125 () Bool)

(assert (=> b!3753125 (= e!2321541 (list!14748 (xs!15439 t!3709)))))

(assert (= (and d!1095265 c!649691) b!3753123))

(assert (= (and d!1095265 (not c!649691)) b!3753124))

(assert (= (and b!3753124 c!649692) b!3753125))

(assert (= (and b!3753124 (not c!649692)) b!3753126))

(assert (=> b!3753126 m!4244827))

(assert (=> b!3753126 m!4244829))

(assert (=> b!3753126 m!4244827))

(assert (=> b!3753126 m!4244829))

(assert (=> b!3753126 m!4244897))

(declare-fun m!4244943 () Bool)

(assert (=> b!3753125 m!4244943))

(assert (=> b!3753011 d!1095265))

(declare-fun b!3753132 () Bool)

(declare-fun e!2321544 () List!40135)

(declare-fun e!2321545 () List!40135)

(assert (=> b!3753132 (= e!2321544 e!2321545)))

(declare-fun c!649694 () Bool)

(assert (=> b!3753132 (= c!649694 ((_ is Leaf!18986) (right!31307 t!3709)))))

(declare-fun b!3753131 () Bool)

(assert (=> b!3753131 (= e!2321544 Nil!40011)))

(declare-fun d!1095267 () Bool)

(declare-fun c!649693 () Bool)

(assert (=> d!1095267 (= c!649693 ((_ is Empty!12237) (right!31307 t!3709)))))

(assert (=> d!1095267 (= (list!14746 (right!31307 t!3709)) e!2321544)))

(declare-fun b!3753134 () Bool)

(assert (=> b!3753134 (= e!2321545 (++!9904 (list!14746 (left!30977 (right!31307 t!3709))) (list!14746 (right!31307 (right!31307 t!3709)))))))

(declare-fun b!3753133 () Bool)

(assert (=> b!3753133 (= e!2321545 (list!14748 (xs!15439 (right!31307 t!3709))))))

(assert (= (and d!1095267 c!649693) b!3753131))

(assert (= (and d!1095267 (not c!649693)) b!3753132))

(assert (= (and b!3753132 c!649694) b!3753133))

(assert (= (and b!3753132 (not c!649694)) b!3753134))

(assert (=> b!3753134 m!4244853))

(assert (=> b!3753134 m!4244855))

(assert (=> b!3753134 m!4244853))

(assert (=> b!3753134 m!4244855))

(declare-fun m!4244945 () Bool)

(assert (=> b!3753134 m!4244945))

(declare-fun m!4244947 () Bool)

(assert (=> b!3753133 m!4244947))

(assert (=> b!3753011 d!1095267))

(declare-fun b!3753140 () Bool)

(declare-fun e!2321549 () Bool)

(assert (=> b!3753140 (= e!2321549 (forall!8238 (xs!15439 (left!30977 t!3709)) p!1451))))

(declare-fun b!3753139 () Bool)

(declare-fun e!2321548 () Bool)

(assert (=> b!3753139 (= e!2321548 e!2321549)))

(declare-fun c!649695 () Bool)

(assert (=> b!3753139 (= c!649695 ((_ is Leaf!18986) (left!30977 t!3709)))))

(declare-fun d!1095269 () Bool)

(declare-fun lt!1300127 () Bool)

(assert (=> d!1095269 (= lt!1300127 (forall!8236 (list!14746 (left!30977 t!3709)) p!1451))))

(assert (=> d!1095269 (= lt!1300127 e!2321548)))

(declare-fun res!1520912 () Bool)

(assert (=> d!1095269 (=> res!1520912 e!2321548)))

(assert (=> d!1095269 (= res!1520912 ((_ is Empty!12237) (left!30977 t!3709)))))

(assert (=> d!1095269 (= (forall!8237 (left!30977 t!3709) p!1451) lt!1300127)))

(declare-fun b!3753142 () Bool)

(declare-fun e!2321550 () Bool)

(assert (=> b!3753142 (= e!2321550 (forall!8237 (right!31307 (left!30977 t!3709)) p!1451))))

(declare-fun b!3753141 () Bool)

(assert (=> b!3753141 (= e!2321549 e!2321550)))

(declare-fun lt!1300126 () Unit!57742)

(assert (=> b!3753141 (= lt!1300126 (lemmaForallConcat!213 (list!14746 (left!30977 (left!30977 t!3709))) (list!14746 (right!31307 (left!30977 t!3709))) p!1451))))

(declare-fun res!1520913 () Bool)

(assert (=> b!3753141 (= res!1520913 (forall!8237 (left!30977 (left!30977 t!3709)) p!1451))))

(assert (=> b!3753141 (=> (not res!1520913) (not e!2321550))))

(assert (= (and d!1095269 (not res!1520912)) b!3753139))

(assert (= (and b!3753139 c!649695) b!3753140))

(assert (= (and b!3753139 (not c!649695)) b!3753141))

(assert (= (and b!3753141 res!1520913) b!3753142))

(declare-fun m!4244949 () Bool)

(assert (=> b!3753140 m!4244949))

(assert (=> d!1095269 m!4244827))

(assert (=> d!1095269 m!4244827))

(assert (=> d!1095269 m!4244901))

(declare-fun m!4244951 () Bool)

(assert (=> b!3753142 m!4244951))

(assert (=> b!3753141 m!4244913))

(assert (=> b!3753141 m!4244915))

(assert (=> b!3753141 m!4244913))

(assert (=> b!3753141 m!4244915))

(declare-fun m!4244953 () Bool)

(assert (=> b!3753141 m!4244953))

(declare-fun m!4244955 () Bool)

(assert (=> b!3753141 m!4244955))

(assert (=> b!3753011 d!1095269))

(declare-fun b!3753150 () Bool)

(declare-fun e!2321555 () Bool)

(declare-fun tp_is_empty!19055 () Bool)

(declare-fun tp!1145918 () Bool)

(assert (=> b!3753150 (= e!2321555 (and tp_is_empty!19055 tp!1145918))))

(assert (=> b!3753013 (= tp!1145904 e!2321555)))

(assert (= (and b!3753013 ((_ is Cons!40011) (innerList!12297 (xs!15439 t!3709)))) b!3753150))

(declare-fun tp!1145932 () Bool)

(declare-fun b!3753167 () Bool)

(declare-fun e!2321565 () Bool)

(declare-fun tp!1145933 () Bool)

(assert (=> b!3753167 (= e!2321565 (and (inv!53577 (left!30977 (left!30977 t!3709))) tp!1145932 (inv!53577 (right!31307 (left!30977 t!3709))) tp!1145933))))

(declare-fun b!3753169 () Bool)

(declare-fun e!2321566 () Bool)

(declare-fun tp!1145931 () Bool)

(assert (=> b!3753169 (= e!2321566 tp!1145931)))

(declare-fun b!3753168 () Bool)

(assert (=> b!3753168 (= e!2321565 (and (inv!53576 (xs!15439 (left!30977 t!3709))) e!2321566))))

(assert (=> b!3753014 (= tp!1145905 (and (inv!53577 (left!30977 t!3709)) e!2321565))))

(assert (= (and b!3753014 ((_ is Node!12237) (left!30977 t!3709))) b!3753167))

(assert (= b!3753168 b!3753169))

(assert (= (and b!3753014 ((_ is Leaf!18986) (left!30977 t!3709))) b!3753168))

(declare-fun m!4244969 () Bool)

(assert (=> b!3753167 m!4244969))

(declare-fun m!4244971 () Bool)

(assert (=> b!3753167 m!4244971))

(declare-fun m!4244973 () Bool)

(assert (=> b!3753168 m!4244973))

(assert (=> b!3753014 m!4244813))

(declare-fun tp!1145935 () Bool)

(declare-fun tp!1145936 () Bool)

(declare-fun e!2321567 () Bool)

(declare-fun b!3753170 () Bool)

(assert (=> b!3753170 (= e!2321567 (and (inv!53577 (left!30977 (right!31307 t!3709))) tp!1145935 (inv!53577 (right!31307 (right!31307 t!3709))) tp!1145936))))

(declare-fun b!3753172 () Bool)

(declare-fun e!2321568 () Bool)

(declare-fun tp!1145934 () Bool)

(assert (=> b!3753172 (= e!2321568 tp!1145934)))

(declare-fun b!3753171 () Bool)

(assert (=> b!3753171 (= e!2321567 (and (inv!53576 (xs!15439 (right!31307 t!3709))) e!2321568))))

(assert (=> b!3753014 (= tp!1145903 (and (inv!53577 (right!31307 t!3709)) e!2321567))))

(assert (= (and b!3753014 ((_ is Node!12237) (right!31307 t!3709))) b!3753170))

(assert (= b!3753171 b!3753172))

(assert (= (and b!3753014 ((_ is Leaf!18986) (right!31307 t!3709))) b!3753171))

(declare-fun m!4244975 () Bool)

(assert (=> b!3753170 m!4244975))

(declare-fun m!4244977 () Bool)

(assert (=> b!3753170 m!4244977))

(declare-fun m!4244979 () Bool)

(assert (=> b!3753171 m!4244979))

(assert (=> b!3753014 m!4244815))

(declare-fun b_lambda!110125 () Bool)

(assert (= b_lambda!110121 (or (and start!352420 b_free!100423) b_lambda!110125)))

(check-sat (not b!3753140) (not b!3753172) (not b!3753169) (not b!3753171) (not b!3753074) (not b!3753066) (not b!3753133) (not b!3753065) (not b_lambda!110125) tp_is_empty!19055 (not b!3753118) (not b!3753041) (not b!3753168) (not b!3753098) (not b!3753125) (not b!3753170) b_and!278881 (not b_next!101127) (not b!3753141) (not b!3753167) (not b!3753039) (not b!3753014) (not b!3753142) (not b!3753150) (not d!1095249) (not b!3753126) (not d!1095269) (not b!3753063) (not d!1095247) (not d!1095229) (not b!3753062) (not b!3753040) (not b!3753097) (not b!3753134) (not b!3753060) (not b!3753068))
(check-sat b_and!278881 (not b_next!101127))
