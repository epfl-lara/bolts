; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755456 () Bool)

(assert start!755456)

(declare-fun b!8024632 () Bool)

(declare-fun e!4727300 () Bool)

(declare-fun tp_is_empty!54189 () Bool)

(declare-fun tp!2401551 () Bool)

(assert (=> b!8024632 (= e!4727300 (and tp_is_empty!54189 tp!2401551))))

(declare-fun res!3173416 () Bool)

(declare-fun e!4727302 () Bool)

(assert (=> start!755456 (=> (not res!3173416) (not e!4727302))))

(declare-datatypes ((B!4301 0))(
  ( (B!4302 (val!32540 Int)) )
))
(declare-datatypes ((List!75052 0))(
  ( (Nil!74928) (Cons!74928 (h!81376 B!4301) (t!390795 List!75052)) )
))
(declare-fun l1!1007 () List!75052)

(declare-fun l2!976 () List!75052)

(get-info :version)

(assert (=> start!755456 (= res!3173416 (and (= l1!1007 l2!976) ((_ is Cons!74928) l1!1007)))))

(assert (=> start!755456 e!4727302))

(assert (=> start!755456 e!4727300))

(declare-fun e!4727303 () Bool)

(assert (=> start!755456 e!4727303))

(declare-fun b!8024633 () Bool)

(declare-fun tp!2401550 () Bool)

(assert (=> b!8024633 (= e!4727303 (and tp_is_empty!54189 tp!2401550))))

(declare-fun b!8024630 () Bool)

(declare-fun e!4727301 () Bool)

(assert (=> b!8024630 (= e!4727302 e!4727301)))

(declare-fun res!3173415 () Bool)

(assert (=> b!8024630 (=> (not res!3173415) (not e!4727301))))

(declare-fun lt!2720651 () List!75052)

(assert (=> b!8024630 (= res!3173415 (= (t!390795 l1!1007) lt!2720651))))

(declare-fun tail!15989 (List!75052) List!75052)

(assert (=> b!8024630 (= lt!2720651 (tail!15989 l2!976))))

(declare-fun b!8024631 () Bool)

(declare-fun isPrefix!6851 (List!75052 List!75052) Bool)

(assert (=> b!8024631 (= e!4727301 (not (isPrefix!6851 l1!1007 l2!976)))))

(assert (=> b!8024631 (isPrefix!6851 (t!390795 l1!1007) lt!2720651)))

(declare-datatypes ((Unit!170932 0))(
  ( (Unit!170933) )
))
(declare-fun lt!2720652 () Unit!170932)

(declare-fun lemmaIsPrefixRefl!4187 (List!75052 List!75052) Unit!170932)

(assert (=> b!8024631 (= lt!2720652 (lemmaIsPrefixRefl!4187 (t!390795 l1!1007) lt!2720651))))

(assert (= (and start!755456 res!3173416) b!8024630))

(assert (= (and b!8024630 res!3173415) b!8024631))

(assert (= (and start!755456 ((_ is Cons!74928) l1!1007)) b!8024632))

(assert (= (and start!755456 ((_ is Cons!74928) l2!976)) b!8024633))

(declare-fun m!8386954 () Bool)

(assert (=> b!8024630 m!8386954))

(declare-fun m!8386956 () Bool)

(assert (=> b!8024631 m!8386956))

(declare-fun m!8386958 () Bool)

(assert (=> b!8024631 m!8386958))

(declare-fun m!8386960 () Bool)

(assert (=> b!8024631 m!8386960))

(check-sat (not b!8024633) (not b!8024632) (not b!8024631) tp_is_empty!54189 (not b!8024630))
(check-sat)
(get-model)

(declare-fun b!8024660 () Bool)

(declare-fun e!4727324 () Bool)

(assert (=> b!8024660 (= e!4727324 (isPrefix!6851 (tail!15989 l1!1007) (tail!15989 l2!976)))))

(declare-fun b!8024659 () Bool)

(declare-fun res!3173444 () Bool)

(assert (=> b!8024659 (=> (not res!3173444) (not e!4727324))))

(declare-fun head!16446 (List!75052) B!4301)

(assert (=> b!8024659 (= res!3173444 (= (head!16446 l1!1007) (head!16446 l2!976)))))

(declare-fun b!8024658 () Bool)

(declare-fun e!4727323 () Bool)

(assert (=> b!8024658 (= e!4727323 e!4727324)))

(declare-fun res!3173441 () Bool)

(assert (=> b!8024658 (=> (not res!3173441) (not e!4727324))))

(assert (=> b!8024658 (= res!3173441 (not ((_ is Nil!74928) l2!976)))))

(declare-fun d!2392796 () Bool)

(declare-fun e!4727322 () Bool)

(assert (=> d!2392796 e!4727322))

(declare-fun res!3173443 () Bool)

(assert (=> d!2392796 (=> res!3173443 e!4727322)))

(declare-fun lt!2720659 () Bool)

(assert (=> d!2392796 (= res!3173443 (not lt!2720659))))

(assert (=> d!2392796 (= lt!2720659 e!4727323)))

(declare-fun res!3173442 () Bool)

(assert (=> d!2392796 (=> res!3173442 e!4727323)))

(assert (=> d!2392796 (= res!3173442 ((_ is Nil!74928) l1!1007))))

(assert (=> d!2392796 (= (isPrefix!6851 l1!1007 l2!976) lt!2720659)))

(declare-fun b!8024661 () Bool)

(declare-fun size!43697 (List!75052) Int)

(assert (=> b!8024661 (= e!4727322 (>= (size!43697 l2!976) (size!43697 l1!1007)))))

(assert (= (and d!2392796 (not res!3173442)) b!8024658))

(assert (= (and b!8024658 res!3173441) b!8024659))

(assert (= (and b!8024659 res!3173444) b!8024660))

(assert (= (and d!2392796 (not res!3173443)) b!8024661))

(declare-fun m!8386988 () Bool)

(assert (=> b!8024660 m!8386988))

(assert (=> b!8024660 m!8386954))

(assert (=> b!8024660 m!8386988))

(assert (=> b!8024660 m!8386954))

(declare-fun m!8386990 () Bool)

(assert (=> b!8024660 m!8386990))

(declare-fun m!8386992 () Bool)

(assert (=> b!8024659 m!8386992))

(declare-fun m!8386994 () Bool)

(assert (=> b!8024659 m!8386994))

(declare-fun m!8386996 () Bool)

(assert (=> b!8024661 m!8386996))

(declare-fun m!8386998 () Bool)

(assert (=> b!8024661 m!8386998))

(assert (=> b!8024631 d!2392796))

(declare-fun b!8024664 () Bool)

(declare-fun e!4727327 () Bool)

(assert (=> b!8024664 (= e!4727327 (isPrefix!6851 (tail!15989 (t!390795 l1!1007)) (tail!15989 lt!2720651)))))

(declare-fun b!8024663 () Bool)

(declare-fun res!3173448 () Bool)

(assert (=> b!8024663 (=> (not res!3173448) (not e!4727327))))

(assert (=> b!8024663 (= res!3173448 (= (head!16446 (t!390795 l1!1007)) (head!16446 lt!2720651)))))

(declare-fun b!8024662 () Bool)

(declare-fun e!4727326 () Bool)

(assert (=> b!8024662 (= e!4727326 e!4727327)))

(declare-fun res!3173445 () Bool)

(assert (=> b!8024662 (=> (not res!3173445) (not e!4727327))))

(assert (=> b!8024662 (= res!3173445 (not ((_ is Nil!74928) lt!2720651)))))

(declare-fun d!2392802 () Bool)

(declare-fun e!4727325 () Bool)

(assert (=> d!2392802 e!4727325))

(declare-fun res!3173447 () Bool)

(assert (=> d!2392802 (=> res!3173447 e!4727325)))

(declare-fun lt!2720660 () Bool)

(assert (=> d!2392802 (= res!3173447 (not lt!2720660))))

(assert (=> d!2392802 (= lt!2720660 e!4727326)))

(declare-fun res!3173446 () Bool)

(assert (=> d!2392802 (=> res!3173446 e!4727326)))

(assert (=> d!2392802 (= res!3173446 ((_ is Nil!74928) (t!390795 l1!1007)))))

(assert (=> d!2392802 (= (isPrefix!6851 (t!390795 l1!1007) lt!2720651) lt!2720660)))

(declare-fun b!8024665 () Bool)

(assert (=> b!8024665 (= e!4727325 (>= (size!43697 lt!2720651) (size!43697 (t!390795 l1!1007))))))

(assert (= (and d!2392802 (not res!3173446)) b!8024662))

(assert (= (and b!8024662 res!3173445) b!8024663))

(assert (= (and b!8024663 res!3173448) b!8024664))

(assert (= (and d!2392802 (not res!3173447)) b!8024665))

(declare-fun m!8387000 () Bool)

(assert (=> b!8024664 m!8387000))

(declare-fun m!8387002 () Bool)

(assert (=> b!8024664 m!8387002))

(assert (=> b!8024664 m!8387000))

(assert (=> b!8024664 m!8387002))

(declare-fun m!8387004 () Bool)

(assert (=> b!8024664 m!8387004))

(declare-fun m!8387006 () Bool)

(assert (=> b!8024663 m!8387006))

(declare-fun m!8387008 () Bool)

(assert (=> b!8024663 m!8387008))

(declare-fun m!8387010 () Bool)

(assert (=> b!8024665 m!8387010))

(declare-fun m!8387012 () Bool)

(assert (=> b!8024665 m!8387012))

(assert (=> b!8024631 d!2392802))

(declare-fun d!2392804 () Bool)

(assert (=> d!2392804 (isPrefix!6851 (t!390795 l1!1007) lt!2720651)))

(declare-fun lt!2720666 () Unit!170932)

(declare-fun choose!60440 (List!75052 List!75052) Unit!170932)

(assert (=> d!2392804 (= lt!2720666 (choose!60440 (t!390795 l1!1007) lt!2720651))))

(assert (=> d!2392804 (= (lemmaIsPrefixRefl!4187 (t!390795 l1!1007) lt!2720651) lt!2720666)))

(declare-fun bs!1971238 () Bool)

(assert (= bs!1971238 d!2392804))

(assert (=> bs!1971238 m!8386958))

(declare-fun m!8387016 () Bool)

(assert (=> bs!1971238 m!8387016))

(assert (=> b!8024631 d!2392804))

(declare-fun d!2392808 () Bool)

(assert (=> d!2392808 (= (tail!15989 l2!976) (t!390795 l2!976))))

(assert (=> b!8024630 d!2392808))

(declare-fun b!8024676 () Bool)

(declare-fun e!4727334 () Bool)

(declare-fun tp!2401558 () Bool)

(assert (=> b!8024676 (= e!4727334 (and tp_is_empty!54189 tp!2401558))))

(assert (=> b!8024633 (= tp!2401550 e!4727334)))

(assert (= (and b!8024633 ((_ is Cons!74928) (t!390795 l2!976))) b!8024676))

(declare-fun b!8024677 () Bool)

(declare-fun e!4727335 () Bool)

(declare-fun tp!2401559 () Bool)

(assert (=> b!8024677 (= e!4727335 (and tp_is_empty!54189 tp!2401559))))

(assert (=> b!8024632 (= tp!2401551 e!4727335)))

(assert (= (and b!8024632 ((_ is Cons!74928) (t!390795 l1!1007))) b!8024677))

(check-sat (not d!2392804) (not b!8024665) (not b!8024659) (not b!8024663) (not b!8024661) (not b!8024676) (not b!8024677) tp_is_empty!54189 (not b!8024664) (not b!8024660))
(check-sat)
