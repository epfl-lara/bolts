; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756084 () Bool)

(assert start!756084)

(declare-fun b!8028027 () Bool)

(declare-fun e!4729547 () Bool)

(declare-fun tp_is_empty!54325 () Bool)

(declare-fun tp!2402458 () Bool)

(assert (=> b!8028027 (= e!4729547 (and tp_is_empty!54325 tp!2402458))))

(declare-fun b!8028028 () Bool)

(declare-fun res!3174938 () Bool)

(declare-fun e!4729546 () Bool)

(assert (=> b!8028028 (=> res!3174938 e!4729546)))

(declare-datatypes ((B!4421 0))(
  ( (B!4422 (val!32610 Int)) )
))
(declare-datatypes ((List!75126 0))(
  ( (Nil!75000) (Cons!75000 (h!81448 B!4421) (t!390882 List!75126)) )
))
(declare-fun lt!2721421 () List!75126)

(declare-fun s1!480 () List!75126)

(declare-fun p1!159 () List!75126)

(declare-fun ++!18602 (List!75126 List!75126) List!75126)

(assert (=> b!8028028 (= res!3174938 (not (= (++!18602 (t!390882 p1!159) s1!480) lt!2721421)))))

(declare-fun b!8028029 () Bool)

(declare-fun lt!2721422 () List!75126)

(declare-fun size!43735 (List!75126) Int)

(assert (=> b!8028029 (= e!4729546 (< (size!43735 (t!390882 p1!159)) (size!43735 lt!2721422)))))

(declare-fun b!8028030 () Bool)

(declare-fun e!4729552 () Bool)

(declare-fun e!4729549 () Bool)

(assert (=> b!8028030 (= e!4729552 (not e!4729549))))

(declare-fun res!3174941 () Bool)

(assert (=> b!8028030 (=> res!3174941 e!4729549)))

(get-info :version)

(assert (=> b!8028030 (= res!3174941 (not ((_ is Cons!75000) p1!159)))))

(declare-fun lt!2721424 () List!75126)

(declare-fun isPrefix!6875 (List!75126 List!75126) Bool)

(assert (=> b!8028030 (isPrefix!6875 p1!159 lt!2721424)))

(declare-datatypes ((Unit!170984 0))(
  ( (Unit!170985) )
))
(declare-fun lt!2721423 () Unit!170984)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3994 (List!75126 List!75126) Unit!170984)

(assert (=> b!8028030 (= lt!2721423 (lemmaConcatTwoListThenFirstIsPrefix!3994 p1!159 s1!480))))

(declare-fun b!8028031 () Bool)

(declare-fun e!4729550 () Bool)

(assert (=> b!8028031 (= e!4729550 e!4729552)))

(declare-fun res!3174939 () Bool)

(assert (=> b!8028031 (=> (not res!3174939) (not e!4729552))))

(declare-fun l!3185 () List!75126)

(assert (=> b!8028031 (= res!3174939 (= lt!2721424 l!3185))))

(assert (=> b!8028031 (= lt!2721424 (++!18602 p1!159 s1!480))))

(declare-fun b!8028032 () Bool)

(declare-fun e!4729548 () Bool)

(declare-fun tp!2402459 () Bool)

(assert (=> b!8028032 (= e!4729548 (and tp_is_empty!54325 tp!2402459))))

(declare-fun b!8028033 () Bool)

(declare-fun e!4729551 () Bool)

(declare-fun tp!2402456 () Bool)

(assert (=> b!8028033 (= e!4729551 (and tp_is_empty!54325 tp!2402456))))

(declare-fun b!8028034 () Bool)

(assert (=> b!8028034 (= e!4729549 e!4729546)))

(declare-fun res!3174937 () Bool)

(assert (=> b!8028034 (=> res!3174937 e!4729546)))

(assert (=> b!8028034 (= res!3174937 (not (isPrefix!6875 lt!2721422 lt!2721421)))))

(declare-fun tail!16033 (List!75126) List!75126)

(assert (=> b!8028034 (= lt!2721421 (tail!16033 l!3185))))

(declare-fun p2!159 () List!75126)

(assert (=> b!8028034 (= lt!2721422 (tail!16033 p2!159))))

(declare-fun res!3174940 () Bool)

(assert (=> start!756084 (=> (not res!3174940) (not e!4729550))))

(assert (=> start!756084 (= res!3174940 (isPrefix!6875 p2!159 l!3185))))

(assert (=> start!756084 e!4729550))

(declare-fun e!4729553 () Bool)

(assert (=> start!756084 e!4729553))

(assert (=> start!756084 e!4729548))

(assert (=> start!756084 e!4729551))

(assert (=> start!756084 e!4729547))

(declare-fun b!8028035 () Bool)

(declare-fun res!3174942 () Bool)

(assert (=> b!8028035 (=> (not res!3174942) (not e!4729552))))

(declare-fun isEmpty!43008 (List!75126) Bool)

(assert (=> b!8028035 (= res!3174942 (not (isEmpty!43008 s1!480)))))

(declare-fun b!8028036 () Bool)

(declare-fun tp!2402457 () Bool)

(assert (=> b!8028036 (= e!4729553 (and tp_is_empty!54325 tp!2402457))))

(declare-fun b!8028037 () Bool)

(declare-fun res!3174943 () Bool)

(assert (=> b!8028037 (=> (not res!3174943) (not e!4729552))))

(assert (=> b!8028037 (= res!3174943 (< (size!43735 p1!159) (size!43735 p2!159)))))

(assert (= (and start!756084 res!3174940) b!8028031))

(assert (= (and b!8028031 res!3174939) b!8028035))

(assert (= (and b!8028035 res!3174942) b!8028037))

(assert (= (and b!8028037 res!3174943) b!8028030))

(assert (= (and b!8028030 (not res!3174941)) b!8028034))

(assert (= (and b!8028034 (not res!3174937)) b!8028028))

(assert (= (and b!8028028 (not res!3174938)) b!8028029))

(assert (= (and start!756084 ((_ is Cons!75000) p2!159)) b!8028036))

(assert (= (and start!756084 ((_ is Cons!75000) l!3185)) b!8028032))

(assert (= (and start!756084 ((_ is Cons!75000) p1!159)) b!8028033))

(assert (= (and start!756084 ((_ is Cons!75000) s1!480)) b!8028027))

(declare-fun m!8390100 () Bool)

(assert (=> b!8028029 m!8390100))

(declare-fun m!8390102 () Bool)

(assert (=> b!8028029 m!8390102))

(declare-fun m!8390104 () Bool)

(assert (=> b!8028028 m!8390104))

(declare-fun m!8390106 () Bool)

(assert (=> start!756084 m!8390106))

(declare-fun m!8390108 () Bool)

(assert (=> b!8028035 m!8390108))

(declare-fun m!8390110 () Bool)

(assert (=> b!8028030 m!8390110))

(declare-fun m!8390112 () Bool)

(assert (=> b!8028030 m!8390112))

(declare-fun m!8390114 () Bool)

(assert (=> b!8028034 m!8390114))

(declare-fun m!8390116 () Bool)

(assert (=> b!8028034 m!8390116))

(declare-fun m!8390118 () Bool)

(assert (=> b!8028034 m!8390118))

(declare-fun m!8390120 () Bool)

(assert (=> b!8028031 m!8390120))

(declare-fun m!8390122 () Bool)

(assert (=> b!8028037 m!8390122))

(declare-fun m!8390124 () Bool)

(assert (=> b!8028037 m!8390124))

(check-sat (not b!8028027) (not b!8028030) (not b!8028034) (not b!8028033) (not b!8028032) (not b!8028028) (not b!8028029) (not b!8028036) (not start!756084) (not b!8028035) tp_is_empty!54325 (not b!8028037) (not b!8028031))
(check-sat)
(get-model)

(declare-fun b!8028057 () Bool)

(declare-fun e!4729567 () Bool)

(assert (=> b!8028057 (= e!4729567 (>= (size!43735 l!3185) (size!43735 p2!159)))))

(declare-fun b!8028055 () Bool)

(declare-fun res!3174962 () Bool)

(declare-fun e!4729568 () Bool)

(assert (=> b!8028055 (=> (not res!3174962) (not e!4729568))))

(declare-fun head!16487 (List!75126) B!4421)

(assert (=> b!8028055 (= res!3174962 (= (head!16487 p2!159) (head!16487 l!3185)))))

(declare-fun b!8028056 () Bool)

(assert (=> b!8028056 (= e!4729568 (isPrefix!6875 (tail!16033 p2!159) (tail!16033 l!3185)))))

(declare-fun d!2393853 () Bool)

(assert (=> d!2393853 e!4729567))

(declare-fun res!3174961 () Bool)

(assert (=> d!2393853 (=> res!3174961 e!4729567)))

(declare-fun lt!2721429 () Bool)

(assert (=> d!2393853 (= res!3174961 (not lt!2721429))))

(declare-fun e!4729566 () Bool)

(assert (=> d!2393853 (= lt!2721429 e!4729566)))

(declare-fun res!3174960 () Bool)

(assert (=> d!2393853 (=> res!3174960 e!4729566)))

(assert (=> d!2393853 (= res!3174960 ((_ is Nil!75000) p2!159))))

(assert (=> d!2393853 (= (isPrefix!6875 p2!159 l!3185) lt!2721429)))

(declare-fun b!8028054 () Bool)

(assert (=> b!8028054 (= e!4729566 e!4729568)))

(declare-fun res!3174963 () Bool)

(assert (=> b!8028054 (=> (not res!3174963) (not e!4729568))))

(assert (=> b!8028054 (= res!3174963 (not ((_ is Nil!75000) l!3185)))))

(assert (= (and d!2393853 (not res!3174960)) b!8028054))

(assert (= (and b!8028054 res!3174963) b!8028055))

(assert (= (and b!8028055 res!3174962) b!8028056))

(assert (= (and d!2393853 (not res!3174961)) b!8028057))

(declare-fun m!8390126 () Bool)

(assert (=> b!8028057 m!8390126))

(assert (=> b!8028057 m!8390124))

(declare-fun m!8390128 () Bool)

(assert (=> b!8028055 m!8390128))

(declare-fun m!8390130 () Bool)

(assert (=> b!8028055 m!8390130))

(assert (=> b!8028056 m!8390118))

(assert (=> b!8028056 m!8390116))

(assert (=> b!8028056 m!8390118))

(assert (=> b!8028056 m!8390116))

(declare-fun m!8390134 () Bool)

(assert (=> b!8028056 m!8390134))

(assert (=> start!756084 d!2393853))

(declare-fun d!2393859 () Bool)

(declare-fun lt!2721435 () Int)

(assert (=> d!2393859 (>= lt!2721435 0)))

(declare-fun e!4729576 () Int)

(assert (=> d!2393859 (= lt!2721435 e!4729576)))

(declare-fun c!1472883 () Bool)

(assert (=> d!2393859 (= c!1472883 ((_ is Nil!75000) (t!390882 p1!159)))))

(assert (=> d!2393859 (= (size!43735 (t!390882 p1!159)) lt!2721435)))

(declare-fun b!8028070 () Bool)

(assert (=> b!8028070 (= e!4729576 0)))

(declare-fun b!8028071 () Bool)

(assert (=> b!8028071 (= e!4729576 (+ 1 (size!43735 (t!390882 (t!390882 p1!159)))))))

(assert (= (and d!2393859 c!1472883) b!8028070))

(assert (= (and d!2393859 (not c!1472883)) b!8028071))

(declare-fun m!8390146 () Bool)

(assert (=> b!8028071 m!8390146))

(assert (=> b!8028029 d!2393859))

(declare-fun d!2393867 () Bool)

(declare-fun lt!2721436 () Int)

(assert (=> d!2393867 (>= lt!2721436 0)))

(declare-fun e!4729577 () Int)

(assert (=> d!2393867 (= lt!2721436 e!4729577)))

(declare-fun c!1472884 () Bool)

(assert (=> d!2393867 (= c!1472884 ((_ is Nil!75000) lt!2721422))))

(assert (=> d!2393867 (= (size!43735 lt!2721422) lt!2721436)))

(declare-fun b!8028072 () Bool)

(assert (=> b!8028072 (= e!4729577 0)))

(declare-fun b!8028073 () Bool)

(assert (=> b!8028073 (= e!4729577 (+ 1 (size!43735 (t!390882 lt!2721422))))))

(assert (= (and d!2393867 c!1472884) b!8028072))

(assert (= (and d!2393867 (not c!1472884)) b!8028073))

(declare-fun m!8390148 () Bool)

(assert (=> b!8028073 m!8390148))

(assert (=> b!8028029 d!2393867))

(declare-fun d!2393869 () Bool)

(assert (=> d!2393869 (= (isEmpty!43008 s1!480) ((_ is Nil!75000) s1!480))))

(assert (=> b!8028035 d!2393869))

(declare-fun b!8028081 () Bool)

(declare-fun e!4729581 () Bool)

(assert (=> b!8028081 (= e!4729581 (>= (size!43735 lt!2721424) (size!43735 p1!159)))))

(declare-fun b!8028079 () Bool)

(declare-fun res!3174970 () Bool)

(declare-fun e!4729582 () Bool)

(assert (=> b!8028079 (=> (not res!3174970) (not e!4729582))))

(assert (=> b!8028079 (= res!3174970 (= (head!16487 p1!159) (head!16487 lt!2721424)))))

(declare-fun b!8028080 () Bool)

(assert (=> b!8028080 (= e!4729582 (isPrefix!6875 (tail!16033 p1!159) (tail!16033 lt!2721424)))))

(declare-fun d!2393873 () Bool)

(assert (=> d!2393873 e!4729581))

(declare-fun res!3174969 () Bool)

(assert (=> d!2393873 (=> res!3174969 e!4729581)))

(declare-fun lt!2721439 () Bool)

(assert (=> d!2393873 (= res!3174969 (not lt!2721439))))

(declare-fun e!4729580 () Bool)

(assert (=> d!2393873 (= lt!2721439 e!4729580)))

(declare-fun res!3174968 () Bool)

(assert (=> d!2393873 (=> res!3174968 e!4729580)))

(assert (=> d!2393873 (= res!3174968 ((_ is Nil!75000) p1!159))))

(assert (=> d!2393873 (= (isPrefix!6875 p1!159 lt!2721424) lt!2721439)))

(declare-fun b!8028078 () Bool)

(assert (=> b!8028078 (= e!4729580 e!4729582)))

(declare-fun res!3174971 () Bool)

(assert (=> b!8028078 (=> (not res!3174971) (not e!4729582))))

(assert (=> b!8028078 (= res!3174971 (not ((_ is Nil!75000) lt!2721424)))))

(assert (= (and d!2393873 (not res!3174968)) b!8028078))

(assert (= (and b!8028078 res!3174971) b!8028079))

(assert (= (and b!8028079 res!3174970) b!8028080))

(assert (= (and d!2393873 (not res!3174969)) b!8028081))

(declare-fun m!8390154 () Bool)

(assert (=> b!8028081 m!8390154))

(assert (=> b!8028081 m!8390122))

(declare-fun m!8390156 () Bool)

(assert (=> b!8028079 m!8390156))

(declare-fun m!8390158 () Bool)

(assert (=> b!8028079 m!8390158))

(declare-fun m!8390160 () Bool)

(assert (=> b!8028080 m!8390160))

(declare-fun m!8390162 () Bool)

(assert (=> b!8028080 m!8390162))

(assert (=> b!8028080 m!8390160))

(assert (=> b!8028080 m!8390162))

(declare-fun m!8390164 () Bool)

(assert (=> b!8028080 m!8390164))

(assert (=> b!8028030 d!2393873))

(declare-fun d!2393877 () Bool)

(assert (=> d!2393877 (isPrefix!6875 p1!159 (++!18602 p1!159 s1!480))))

(declare-fun lt!2721442 () Unit!170984)

(declare-fun choose!60465 (List!75126 List!75126) Unit!170984)

(assert (=> d!2393877 (= lt!2721442 (choose!60465 p1!159 s1!480))))

(assert (=> d!2393877 (= (lemmaConcatTwoListThenFirstIsPrefix!3994 p1!159 s1!480) lt!2721442)))

(declare-fun bs!1971373 () Bool)

(assert (= bs!1971373 d!2393877))

(assert (=> bs!1971373 m!8390120))

(assert (=> bs!1971373 m!8390120))

(declare-fun m!8390166 () Bool)

(assert (=> bs!1971373 m!8390166))

(declare-fun m!8390168 () Bool)

(assert (=> bs!1971373 m!8390168))

(assert (=> b!8028030 d!2393877))

(declare-fun d!2393879 () Bool)

(declare-fun e!4729598 () Bool)

(assert (=> d!2393879 e!4729598))

(declare-fun res!3174988 () Bool)

(assert (=> d!2393879 (=> (not res!3174988) (not e!4729598))))

(declare-fun lt!2721450 () List!75126)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16009 (List!75126) (InoxSet B!4421))

(assert (=> d!2393879 (= res!3174988 (= (content!16009 lt!2721450) ((_ map or) (content!16009 (t!390882 p1!159)) (content!16009 s1!480))))))

(declare-fun e!4729599 () List!75126)

(assert (=> d!2393879 (= lt!2721450 e!4729599)))

(declare-fun c!1472893 () Bool)

(assert (=> d!2393879 (= c!1472893 ((_ is Nil!75000) (t!390882 p1!159)))))

(assert (=> d!2393879 (= (++!18602 (t!390882 p1!159) s1!480) lt!2721450)))

(declare-fun b!8028113 () Bool)

(assert (=> b!8028113 (= e!4729598 (or (not (= s1!480 Nil!75000)) (= lt!2721450 (t!390882 p1!159))))))

(declare-fun b!8028110 () Bool)

(assert (=> b!8028110 (= e!4729599 s1!480)))

(declare-fun b!8028112 () Bool)

(declare-fun res!3174989 () Bool)

(assert (=> b!8028112 (=> (not res!3174989) (not e!4729598))))

(assert (=> b!8028112 (= res!3174989 (= (size!43735 lt!2721450) (+ (size!43735 (t!390882 p1!159)) (size!43735 s1!480))))))

(declare-fun b!8028111 () Bool)

(assert (=> b!8028111 (= e!4729599 (Cons!75000 (h!81448 (t!390882 p1!159)) (++!18602 (t!390882 (t!390882 p1!159)) s1!480)))))

(assert (= (and d!2393879 c!1472893) b!8028110))

(assert (= (and d!2393879 (not c!1472893)) b!8028111))

(assert (= (and d!2393879 res!3174988) b!8028112))

(assert (= (and b!8028112 res!3174989) b!8028113))

(declare-fun m!8390200 () Bool)

(assert (=> d!2393879 m!8390200))

(declare-fun m!8390202 () Bool)

(assert (=> d!2393879 m!8390202))

(declare-fun m!8390204 () Bool)

(assert (=> d!2393879 m!8390204))

(declare-fun m!8390206 () Bool)

(assert (=> b!8028112 m!8390206))

(assert (=> b!8028112 m!8390100))

(declare-fun m!8390208 () Bool)

(assert (=> b!8028112 m!8390208))

(declare-fun m!8390210 () Bool)

(assert (=> b!8028111 m!8390210))

(assert (=> b!8028028 d!2393879))

(declare-fun b!8028117 () Bool)

(declare-fun e!4729601 () Bool)

(assert (=> b!8028117 (= e!4729601 (>= (size!43735 lt!2721421) (size!43735 lt!2721422)))))

(declare-fun b!8028115 () Bool)

(declare-fun res!3174992 () Bool)

(declare-fun e!4729602 () Bool)

(assert (=> b!8028115 (=> (not res!3174992) (not e!4729602))))

(assert (=> b!8028115 (= res!3174992 (= (head!16487 lt!2721422) (head!16487 lt!2721421)))))

(declare-fun b!8028116 () Bool)

(assert (=> b!8028116 (= e!4729602 (isPrefix!6875 (tail!16033 lt!2721422) (tail!16033 lt!2721421)))))

(declare-fun d!2393887 () Bool)

(assert (=> d!2393887 e!4729601))

(declare-fun res!3174991 () Bool)

(assert (=> d!2393887 (=> res!3174991 e!4729601)))

(declare-fun lt!2721454 () Bool)

(assert (=> d!2393887 (= res!3174991 (not lt!2721454))))

(declare-fun e!4729600 () Bool)

(assert (=> d!2393887 (= lt!2721454 e!4729600)))

(declare-fun res!3174990 () Bool)

(assert (=> d!2393887 (=> res!3174990 e!4729600)))

(assert (=> d!2393887 (= res!3174990 ((_ is Nil!75000) lt!2721422))))

(assert (=> d!2393887 (= (isPrefix!6875 lt!2721422 lt!2721421) lt!2721454)))

(declare-fun b!8028114 () Bool)

(assert (=> b!8028114 (= e!4729600 e!4729602)))

(declare-fun res!3174993 () Bool)

(assert (=> b!8028114 (=> (not res!3174993) (not e!4729602))))

(assert (=> b!8028114 (= res!3174993 (not ((_ is Nil!75000) lt!2721421)))))

(assert (= (and d!2393887 (not res!3174990)) b!8028114))

(assert (= (and b!8028114 res!3174993) b!8028115))

(assert (= (and b!8028115 res!3174992) b!8028116))

(assert (= (and d!2393887 (not res!3174991)) b!8028117))

(declare-fun m!8390216 () Bool)

(assert (=> b!8028117 m!8390216))

(assert (=> b!8028117 m!8390102))

(declare-fun m!8390218 () Bool)

(assert (=> b!8028115 m!8390218))

(declare-fun m!8390220 () Bool)

(assert (=> b!8028115 m!8390220))

(declare-fun m!8390222 () Bool)

(assert (=> b!8028116 m!8390222))

(declare-fun m!8390224 () Bool)

(assert (=> b!8028116 m!8390224))

(assert (=> b!8028116 m!8390222))

(assert (=> b!8028116 m!8390224))

(declare-fun m!8390226 () Bool)

(assert (=> b!8028116 m!8390226))

(assert (=> b!8028034 d!2393887))

(declare-fun d!2393891 () Bool)

(assert (=> d!2393891 (= (tail!16033 l!3185) (t!390882 l!3185))))

(assert (=> b!8028034 d!2393891))

(declare-fun d!2393897 () Bool)

(assert (=> d!2393897 (= (tail!16033 p2!159) (t!390882 p2!159))))

(assert (=> b!8028034 d!2393897))

(declare-fun d!2393899 () Bool)

(declare-fun lt!2721458 () Int)

(assert (=> d!2393899 (>= lt!2721458 0)))

(declare-fun e!4729608 () Int)

(assert (=> d!2393899 (= lt!2721458 e!4729608)))

(declare-fun c!1472896 () Bool)

(assert (=> d!2393899 (= c!1472896 ((_ is Nil!75000) p1!159))))

(assert (=> d!2393899 (= (size!43735 p1!159) lt!2721458)))

(declare-fun b!8028126 () Bool)

(assert (=> b!8028126 (= e!4729608 0)))

(declare-fun b!8028127 () Bool)

(assert (=> b!8028127 (= e!4729608 (+ 1 (size!43735 (t!390882 p1!159))))))

(assert (= (and d!2393899 c!1472896) b!8028126))

(assert (= (and d!2393899 (not c!1472896)) b!8028127))

(assert (=> b!8028127 m!8390100))

(assert (=> b!8028037 d!2393899))

(declare-fun d!2393901 () Bool)

(declare-fun lt!2721459 () Int)

(assert (=> d!2393901 (>= lt!2721459 0)))

(declare-fun e!4729611 () Int)

(assert (=> d!2393901 (= lt!2721459 e!4729611)))

(declare-fun c!1472897 () Bool)

(assert (=> d!2393901 (= c!1472897 ((_ is Nil!75000) p2!159))))

(assert (=> d!2393901 (= (size!43735 p2!159) lt!2721459)))

(declare-fun b!8028132 () Bool)

(assert (=> b!8028132 (= e!4729611 0)))

(declare-fun b!8028133 () Bool)

(assert (=> b!8028133 (= e!4729611 (+ 1 (size!43735 (t!390882 p2!159))))))

(assert (= (and d!2393901 c!1472897) b!8028132))

(assert (= (and d!2393901 (not c!1472897)) b!8028133))

(declare-fun m!8390238 () Bool)

(assert (=> b!8028133 m!8390238))

(assert (=> b!8028037 d!2393901))

(declare-fun d!2393903 () Bool)

(declare-fun e!4729612 () Bool)

(assert (=> d!2393903 e!4729612))

(declare-fun res!3174998 () Bool)

(assert (=> d!2393903 (=> (not res!3174998) (not e!4729612))))

(declare-fun lt!2721460 () List!75126)

(assert (=> d!2393903 (= res!3174998 (= (content!16009 lt!2721460) ((_ map or) (content!16009 p1!159) (content!16009 s1!480))))))

(declare-fun e!4729613 () List!75126)

(assert (=> d!2393903 (= lt!2721460 e!4729613)))

(declare-fun c!1472898 () Bool)

(assert (=> d!2393903 (= c!1472898 ((_ is Nil!75000) p1!159))))

(assert (=> d!2393903 (= (++!18602 p1!159 s1!480) lt!2721460)))

(declare-fun b!8028137 () Bool)

(assert (=> b!8028137 (= e!4729612 (or (not (= s1!480 Nil!75000)) (= lt!2721460 p1!159)))))

(declare-fun b!8028134 () Bool)

(assert (=> b!8028134 (= e!4729613 s1!480)))

(declare-fun b!8028136 () Bool)

(declare-fun res!3174999 () Bool)

(assert (=> b!8028136 (=> (not res!3174999) (not e!4729612))))

(assert (=> b!8028136 (= res!3174999 (= (size!43735 lt!2721460) (+ (size!43735 p1!159) (size!43735 s1!480))))))

(declare-fun b!8028135 () Bool)

(assert (=> b!8028135 (= e!4729613 (Cons!75000 (h!81448 p1!159) (++!18602 (t!390882 p1!159) s1!480)))))

(assert (= (and d!2393903 c!1472898) b!8028134))

(assert (= (and d!2393903 (not c!1472898)) b!8028135))

(assert (= (and d!2393903 res!3174998) b!8028136))

(assert (= (and b!8028136 res!3174999) b!8028137))

(declare-fun m!8390240 () Bool)

(assert (=> d!2393903 m!8390240))

(declare-fun m!8390242 () Bool)

(assert (=> d!2393903 m!8390242))

(assert (=> d!2393903 m!8390204))

(declare-fun m!8390244 () Bool)

(assert (=> b!8028136 m!8390244))

(assert (=> b!8028136 m!8390122))

(assert (=> b!8028136 m!8390208))

(assert (=> b!8028135 m!8390104))

(assert (=> b!8028031 d!2393903))

(declare-fun b!8028146 () Bool)

(declare-fun e!4729620 () Bool)

(declare-fun tp!2402468 () Bool)

(assert (=> b!8028146 (= e!4729620 (and tp_is_empty!54325 tp!2402468))))

(assert (=> b!8028033 (= tp!2402456 e!4729620)))

(assert (= (and b!8028033 ((_ is Cons!75000) (t!390882 p1!159))) b!8028146))

(declare-fun b!8028147 () Bool)

(declare-fun e!4729621 () Bool)

(declare-fun tp!2402469 () Bool)

(assert (=> b!8028147 (= e!4729621 (and tp_is_empty!54325 tp!2402469))))

(assert (=> b!8028032 (= tp!2402459 e!4729621)))

(assert (= (and b!8028032 ((_ is Cons!75000) (t!390882 l!3185))) b!8028147))

(declare-fun b!8028148 () Bool)

(declare-fun e!4729622 () Bool)

(declare-fun tp!2402470 () Bool)

(assert (=> b!8028148 (= e!4729622 (and tp_is_empty!54325 tp!2402470))))

(assert (=> b!8028027 (= tp!2402458 e!4729622)))

(assert (= (and b!8028027 ((_ is Cons!75000) (t!390882 s1!480))) b!8028148))

(declare-fun b!8028149 () Bool)

(declare-fun e!4729623 () Bool)

(declare-fun tp!2402471 () Bool)

(assert (=> b!8028149 (= e!4729623 (and tp_is_empty!54325 tp!2402471))))

(assert (=> b!8028036 (= tp!2402457 e!4729623)))

(assert (= (and b!8028036 ((_ is Cons!75000) (t!390882 p2!159))) b!8028149))

(check-sat (not d!2393879) (not b!8028080) (not b!8028071) (not b!8028116) (not b!8028056) (not b!8028135) (not b!8028147) (not b!8028079) (not d!2393903) (not b!8028057) (not b!8028073) tp_is_empty!54325 (not b!8028146) (not b!8028111) (not b!8028081) (not b!8028133) (not b!8028136) (not b!8028112) (not b!8028148) (not b!8028115) (not b!8028127) (not b!8028117) (not b!8028055) (not b!8028149) (not d!2393877))
(check-sat)
