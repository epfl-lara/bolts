; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755880 () Bool)

(assert start!755880)

(declare-fun b!8026780 () Bool)

(declare-fun e!4728703 () Bool)

(declare-fun tp_is_empty!54285 () Bool)

(declare-fun tp!2402132 () Bool)

(assert (=> b!8026780 (= e!4728703 (and tp_is_empty!54285 tp!2402132))))

(declare-fun b!8026781 () Bool)

(declare-fun e!4728702 () Bool)

(declare-fun tp!2402135 () Bool)

(assert (=> b!8026781 (= e!4728702 (and tp_is_empty!54285 tp!2402135))))

(declare-fun res!3174268 () Bool)

(declare-fun e!4728701 () Bool)

(assert (=> start!755880 (=> (not res!3174268) (not e!4728701))))

(declare-datatypes ((B!4381 0))(
  ( (B!4382 (val!32590 Int)) )
))
(declare-datatypes ((List!75106 0))(
  ( (Nil!74980) (Cons!74980 (h!81428 B!4381) (t!390862 List!75106)) )
))
(declare-fun p2!159 () List!75106)

(declare-fun l!3185 () List!75106)

(declare-fun isPrefix!6855 (List!75106 List!75106) Bool)

(assert (=> start!755880 (= res!3174268 (isPrefix!6855 p2!159 l!3185))))

(assert (=> start!755880 e!4728701))

(assert (=> start!755880 e!4728703))

(assert (=> start!755880 e!4728702))

(declare-fun e!4728705 () Bool)

(assert (=> start!755880 e!4728705))

(declare-fun e!4728700 () Bool)

(assert (=> start!755880 e!4728700))

(declare-fun b!8026782 () Bool)

(declare-fun tp!2402134 () Bool)

(assert (=> b!8026782 (= e!4728705 (and tp_is_empty!54285 tp!2402134))))

(declare-fun b!8026783 () Bool)

(declare-fun res!3174266 () Bool)

(declare-fun e!4728704 () Bool)

(assert (=> b!8026783 (=> (not res!3174266) (not e!4728704))))

(declare-fun p1!159 () List!75106)

(declare-fun size!43715 (List!75106) Int)

(assert (=> b!8026783 (= res!3174266 (< (size!43715 p1!159) (size!43715 p2!159)))))

(declare-fun b!8026784 () Bool)

(get-info :version)

(assert (=> b!8026784 (= e!4728704 (not (or (not ((_ is Cons!74980) p1!159)) (not (= p2!159 Nil!74980)))))))

(declare-fun lt!2721029 () List!75106)

(assert (=> b!8026784 (isPrefix!6855 p1!159 lt!2721029)))

(declare-datatypes ((Unit!170948 0))(
  ( (Unit!170949) )
))
(declare-fun lt!2721030 () Unit!170948)

(declare-fun s1!480 () List!75106)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3976 (List!75106 List!75106) Unit!170948)

(assert (=> b!8026784 (= lt!2721030 (lemmaConcatTwoListThenFirstIsPrefix!3976 p1!159 s1!480))))

(declare-fun b!8026785 () Bool)

(assert (=> b!8026785 (= e!4728701 e!4728704)))

(declare-fun res!3174269 () Bool)

(assert (=> b!8026785 (=> (not res!3174269) (not e!4728704))))

(assert (=> b!8026785 (= res!3174269 (= lt!2721029 l!3185))))

(declare-fun ++!18582 (List!75106 List!75106) List!75106)

(assert (=> b!8026785 (= lt!2721029 (++!18582 p1!159 s1!480))))

(declare-fun b!8026786 () Bool)

(declare-fun tp!2402133 () Bool)

(assert (=> b!8026786 (= e!4728700 (and tp_is_empty!54285 tp!2402133))))

(declare-fun b!8026787 () Bool)

(declare-fun res!3174267 () Bool)

(assert (=> b!8026787 (=> (not res!3174267) (not e!4728704))))

(declare-fun isEmpty!42988 (List!75106) Bool)

(assert (=> b!8026787 (= res!3174267 (not (isEmpty!42988 s1!480)))))

(assert (= (and start!755880 res!3174268) b!8026785))

(assert (= (and b!8026785 res!3174269) b!8026787))

(assert (= (and b!8026787 res!3174267) b!8026783))

(assert (= (and b!8026783 res!3174266) b!8026784))

(assert (= (and start!755880 ((_ is Cons!74980) p2!159)) b!8026780))

(assert (= (and start!755880 ((_ is Cons!74980) l!3185)) b!8026781))

(assert (= (and start!755880 ((_ is Cons!74980) p1!159)) b!8026782))

(assert (= (and start!755880 ((_ is Cons!74980) s1!480)) b!8026786))

(declare-fun m!8389024 () Bool)

(assert (=> b!8026785 m!8389024))

(declare-fun m!8389026 () Bool)

(assert (=> b!8026787 m!8389026))

(declare-fun m!8389028 () Bool)

(assert (=> b!8026784 m!8389028))

(declare-fun m!8389030 () Bool)

(assert (=> b!8026784 m!8389030))

(declare-fun m!8389032 () Bool)

(assert (=> start!755880 m!8389032))

(declare-fun m!8389034 () Bool)

(assert (=> b!8026783 m!8389034))

(declare-fun m!8389036 () Bool)

(assert (=> b!8026783 m!8389036))

(check-sat (not start!755880) tp_is_empty!54285 (not b!8026780) (not b!8026782) (not b!8026786) (not b!8026784) (not b!8026781) (not b!8026787) (not b!8026785) (not b!8026783))
(check-sat)
(get-model)

(declare-fun b!8026810 () Bool)

(declare-fun res!3174287 () Bool)

(declare-fun e!4728719 () Bool)

(assert (=> b!8026810 (=> (not res!3174287) (not e!4728719))))

(declare-fun lt!2721036 () List!75106)

(assert (=> b!8026810 (= res!3174287 (= (size!43715 lt!2721036) (+ (size!43715 p1!159) (size!43715 s1!480))))))

(declare-fun b!8026811 () Bool)

(assert (=> b!8026811 (= e!4728719 (or (not (= s1!480 Nil!74980)) (= lt!2721036 p1!159)))))

(declare-fun b!8026808 () Bool)

(declare-fun e!4728720 () List!75106)

(assert (=> b!8026808 (= e!4728720 s1!480)))

(declare-fun d!2393589 () Bool)

(assert (=> d!2393589 e!4728719))

(declare-fun res!3174286 () Bool)

(assert (=> d!2393589 (=> (not res!3174286) (not e!4728719))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15994 (List!75106) (InoxSet B!4381))

(assert (=> d!2393589 (= res!3174286 (= (content!15994 lt!2721036) ((_ map or) (content!15994 p1!159) (content!15994 s1!480))))))

(assert (=> d!2393589 (= lt!2721036 e!4728720)))

(declare-fun c!1472769 () Bool)

(assert (=> d!2393589 (= c!1472769 ((_ is Nil!74980) p1!159))))

(assert (=> d!2393589 (= (++!18582 p1!159 s1!480) lt!2721036)))

(declare-fun b!8026809 () Bool)

(assert (=> b!8026809 (= e!4728720 (Cons!74980 (h!81428 p1!159) (++!18582 (t!390862 p1!159) s1!480)))))

(assert (= (and d!2393589 c!1472769) b!8026808))

(assert (= (and d!2393589 (not c!1472769)) b!8026809))

(assert (= (and d!2393589 res!3174286) b!8026810))

(assert (= (and b!8026810 res!3174287) b!8026811))

(declare-fun m!8389050 () Bool)

(assert (=> b!8026810 m!8389050))

(assert (=> b!8026810 m!8389034))

(declare-fun m!8389052 () Bool)

(assert (=> b!8026810 m!8389052))

(declare-fun m!8389054 () Bool)

(assert (=> d!2393589 m!8389054))

(declare-fun m!8389056 () Bool)

(assert (=> d!2393589 m!8389056))

(declare-fun m!8389058 () Bool)

(assert (=> d!2393589 m!8389058))

(declare-fun m!8389060 () Bool)

(assert (=> b!8026809 m!8389060))

(assert (=> b!8026785 d!2393589))

(declare-fun b!8026837 () Bool)

(declare-fun res!3174306 () Bool)

(declare-fun e!4728736 () Bool)

(assert (=> b!8026837 (=> (not res!3174306) (not e!4728736))))

(declare-fun head!16474 (List!75106) B!4381)

(assert (=> b!8026837 (= res!3174306 (= (head!16474 p1!159) (head!16474 lt!2721029)))))

(declare-fun b!8026839 () Bool)

(declare-fun e!4728737 () Bool)

(assert (=> b!8026839 (= e!4728737 (>= (size!43715 lt!2721029) (size!43715 p1!159)))))

(declare-fun b!8026838 () Bool)

(declare-fun tail!16015 (List!75106) List!75106)

(assert (=> b!8026838 (= e!4728736 (isPrefix!6855 (tail!16015 p1!159) (tail!16015 lt!2721029)))))

(declare-fun b!8026836 () Bool)

(declare-fun e!4728738 () Bool)

(assert (=> b!8026836 (= e!4728738 e!4728736)))

(declare-fun res!3174308 () Bool)

(assert (=> b!8026836 (=> (not res!3174308) (not e!4728736))))

(assert (=> b!8026836 (= res!3174308 (not ((_ is Nil!74980) lt!2721029)))))

(declare-fun d!2393593 () Bool)

(assert (=> d!2393593 e!4728737))

(declare-fun res!3174309 () Bool)

(assert (=> d!2393593 (=> res!3174309 e!4728737)))

(declare-fun lt!2721043 () Bool)

(assert (=> d!2393593 (= res!3174309 (not lt!2721043))))

(assert (=> d!2393593 (= lt!2721043 e!4728738)))

(declare-fun res!3174307 () Bool)

(assert (=> d!2393593 (=> res!3174307 e!4728738)))

(assert (=> d!2393593 (= res!3174307 ((_ is Nil!74980) p1!159))))

(assert (=> d!2393593 (= (isPrefix!6855 p1!159 lt!2721029) lt!2721043)))

(assert (= (and d!2393593 (not res!3174307)) b!8026836))

(assert (= (and b!8026836 res!3174308) b!8026837))

(assert (= (and b!8026837 res!3174306) b!8026838))

(assert (= (and d!2393593 (not res!3174309)) b!8026839))

(declare-fun m!8389086 () Bool)

(assert (=> b!8026837 m!8389086))

(declare-fun m!8389088 () Bool)

(assert (=> b!8026837 m!8389088))

(declare-fun m!8389090 () Bool)

(assert (=> b!8026839 m!8389090))

(assert (=> b!8026839 m!8389034))

(declare-fun m!8389092 () Bool)

(assert (=> b!8026838 m!8389092))

(declare-fun m!8389094 () Bool)

(assert (=> b!8026838 m!8389094))

(assert (=> b!8026838 m!8389092))

(assert (=> b!8026838 m!8389094))

(declare-fun m!8389096 () Bool)

(assert (=> b!8026838 m!8389096))

(assert (=> b!8026784 d!2393593))

(declare-fun d!2393599 () Bool)

(assert (=> d!2393599 (isPrefix!6855 p1!159 (++!18582 p1!159 s1!480))))

(declare-fun lt!2721049 () Unit!170948)

(declare-fun choose!60452 (List!75106 List!75106) Unit!170948)

(assert (=> d!2393599 (= lt!2721049 (choose!60452 p1!159 s1!480))))

(assert (=> d!2393599 (= (lemmaConcatTwoListThenFirstIsPrefix!3976 p1!159 s1!480) lt!2721049)))

(declare-fun bs!1971340 () Bool)

(assert (= bs!1971340 d!2393599))

(assert (=> bs!1971340 m!8389024))

(assert (=> bs!1971340 m!8389024))

(declare-fun m!8389102 () Bool)

(assert (=> bs!1971340 m!8389102))

(declare-fun m!8389104 () Bool)

(assert (=> bs!1971340 m!8389104))

(assert (=> b!8026784 d!2393599))

(declare-fun b!8026841 () Bool)

(declare-fun res!3174310 () Bool)

(declare-fun e!4728739 () Bool)

(assert (=> b!8026841 (=> (not res!3174310) (not e!4728739))))

(assert (=> b!8026841 (= res!3174310 (= (head!16474 p2!159) (head!16474 l!3185)))))

(declare-fun b!8026843 () Bool)

(declare-fun e!4728740 () Bool)

(assert (=> b!8026843 (= e!4728740 (>= (size!43715 l!3185) (size!43715 p2!159)))))

(declare-fun b!8026842 () Bool)

(assert (=> b!8026842 (= e!4728739 (isPrefix!6855 (tail!16015 p2!159) (tail!16015 l!3185)))))

(declare-fun b!8026840 () Bool)

(declare-fun e!4728741 () Bool)

(assert (=> b!8026840 (= e!4728741 e!4728739)))

(declare-fun res!3174312 () Bool)

(assert (=> b!8026840 (=> (not res!3174312) (not e!4728739))))

(assert (=> b!8026840 (= res!3174312 (not ((_ is Nil!74980) l!3185)))))

(declare-fun d!2393603 () Bool)

(assert (=> d!2393603 e!4728740))

(declare-fun res!3174313 () Bool)

(assert (=> d!2393603 (=> res!3174313 e!4728740)))

(declare-fun lt!2721050 () Bool)

(assert (=> d!2393603 (= res!3174313 (not lt!2721050))))

(assert (=> d!2393603 (= lt!2721050 e!4728741)))

(declare-fun res!3174311 () Bool)

(assert (=> d!2393603 (=> res!3174311 e!4728741)))

(assert (=> d!2393603 (= res!3174311 ((_ is Nil!74980) p2!159))))

(assert (=> d!2393603 (= (isPrefix!6855 p2!159 l!3185) lt!2721050)))

(assert (= (and d!2393603 (not res!3174311)) b!8026840))

(assert (= (and b!8026840 res!3174312) b!8026841))

(assert (= (and b!8026841 res!3174310) b!8026842))

(assert (= (and d!2393603 (not res!3174313)) b!8026843))

(declare-fun m!8389106 () Bool)

(assert (=> b!8026841 m!8389106))

(declare-fun m!8389108 () Bool)

(assert (=> b!8026841 m!8389108))

(declare-fun m!8389110 () Bool)

(assert (=> b!8026843 m!8389110))

(assert (=> b!8026843 m!8389036))

(declare-fun m!8389112 () Bool)

(assert (=> b!8026842 m!8389112))

(declare-fun m!8389114 () Bool)

(assert (=> b!8026842 m!8389114))

(assert (=> b!8026842 m!8389112))

(assert (=> b!8026842 m!8389114))

(declare-fun m!8389116 () Bool)

(assert (=> b!8026842 m!8389116))

(assert (=> start!755880 d!2393603))

(declare-fun d!2393605 () Bool)

(assert (=> d!2393605 (= (isEmpty!42988 s1!480) ((_ is Nil!74980) s1!480))))

(assert (=> b!8026787 d!2393605))

(declare-fun d!2393607 () Bool)

(declare-fun lt!2721057 () Int)

(assert (=> d!2393607 (>= lt!2721057 0)))

(declare-fun e!4728753 () Int)

(assert (=> d!2393607 (= lt!2721057 e!4728753)))

(declare-fun c!1472779 () Bool)

(assert (=> d!2393607 (= c!1472779 ((_ is Nil!74980) p1!159))))

(assert (=> d!2393607 (= (size!43715 p1!159) lt!2721057)))

(declare-fun b!8026863 () Bool)

(assert (=> b!8026863 (= e!4728753 0)))

(declare-fun b!8026864 () Bool)

(assert (=> b!8026864 (= e!4728753 (+ 1 (size!43715 (t!390862 p1!159))))))

(assert (= (and d!2393607 c!1472779) b!8026863))

(assert (= (and d!2393607 (not c!1472779)) b!8026864))

(declare-fun m!8389122 () Bool)

(assert (=> b!8026864 m!8389122))

(assert (=> b!8026783 d!2393607))

(declare-fun d!2393613 () Bool)

(declare-fun lt!2721058 () Int)

(assert (=> d!2393613 (>= lt!2721058 0)))

(declare-fun e!4728755 () Int)

(assert (=> d!2393613 (= lt!2721058 e!4728755)))

(declare-fun c!1472780 () Bool)

(assert (=> d!2393613 (= c!1472780 ((_ is Nil!74980) p2!159))))

(assert (=> d!2393613 (= (size!43715 p2!159) lt!2721058)))

(declare-fun b!8026866 () Bool)

(assert (=> b!8026866 (= e!4728755 0)))

(declare-fun b!8026867 () Bool)

(assert (=> b!8026867 (= e!4728755 (+ 1 (size!43715 (t!390862 p2!159))))))

(assert (= (and d!2393613 c!1472780) b!8026866))

(assert (= (and d!2393613 (not c!1472780)) b!8026867))

(declare-fun m!8389124 () Bool)

(assert (=> b!8026867 m!8389124))

(assert (=> b!8026783 d!2393613))

(declare-fun b!8026872 () Bool)

(declare-fun e!4728758 () Bool)

(declare-fun tp!2402144 () Bool)

(assert (=> b!8026872 (= e!4728758 (and tp_is_empty!54285 tp!2402144))))

(assert (=> b!8026786 (= tp!2402133 e!4728758)))

(assert (= (and b!8026786 ((_ is Cons!74980) (t!390862 s1!480))) b!8026872))

(declare-fun b!8026873 () Bool)

(declare-fun e!4728759 () Bool)

(declare-fun tp!2402145 () Bool)

(assert (=> b!8026873 (= e!4728759 (and tp_is_empty!54285 tp!2402145))))

(assert (=> b!8026781 (= tp!2402135 e!4728759)))

(assert (= (and b!8026781 ((_ is Cons!74980) (t!390862 l!3185))) b!8026873))

(declare-fun b!8026874 () Bool)

(declare-fun e!4728760 () Bool)

(declare-fun tp!2402146 () Bool)

(assert (=> b!8026874 (= e!4728760 (and tp_is_empty!54285 tp!2402146))))

(assert (=> b!8026780 (= tp!2402132 e!4728760)))

(assert (= (and b!8026780 ((_ is Cons!74980) (t!390862 p2!159))) b!8026874))

(declare-fun b!8026875 () Bool)

(declare-fun e!4728761 () Bool)

(declare-fun tp!2402147 () Bool)

(assert (=> b!8026875 (= e!4728761 (and tp_is_empty!54285 tp!2402147))))

(assert (=> b!8026782 (= tp!2402134 e!4728761)))

(assert (= (and b!8026782 ((_ is Cons!74980) (t!390862 p1!159))) b!8026875))

(check-sat (not b!8026809) (not b!8026838) (not b!8026867) (not b!8026839) (not b!8026842) (not b!8026874) tp_is_empty!54285 (not d!2393599) (not b!8026875) (not b!8026841) (not b!8026837) (not b!8026864) (not b!8026843) (not b!8026872) (not d!2393589) (not b!8026810) (not b!8026873))
(check-sat)
