; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755336 () Bool)

(assert start!755336)

(declare-fun b!8023997 () Bool)

(declare-fun e!4726883 () Bool)

(declare-fun tp_is_empty!54153 () Bool)

(declare-fun tp!2401382 () Bool)

(assert (=> b!8023997 (= e!4726883 (and tp_is_empty!54153 tp!2401382))))

(declare-fun b!8023996 () Bool)

(declare-fun e!4726881 () Bool)

(declare-fun tp!2401383 () Bool)

(assert (=> b!8023996 (= e!4726881 (and tp_is_empty!54153 tp!2401383))))

(declare-fun res!3173184 () Bool)

(declare-fun e!4726882 () Bool)

(assert (=> start!755336 (=> (not res!3173184) (not e!4726882))))

(declare-datatypes ((B!4265 0))(
  ( (B!4266 (val!32522 Int)) )
))
(declare-datatypes ((List!75034 0))(
  ( (Nil!74910) (Cons!74910 (h!81358 B!4265) (t!390777 List!75034)) )
))
(declare-fun l!2932 () List!75034)

(declare-fun p!1838 () List!75034)

(declare-fun size!43687 (List!75034) Int)

(assert (=> start!755336 (= res!3173184 (>= (size!43687 l!2932) (size!43687 p!1838)))))

(assert (=> start!755336 e!4726882))

(assert (=> start!755336 e!4726881))

(assert (=> start!755336 e!4726883))

(declare-fun b!8023994 () Bool)

(declare-fun res!3173183 () Bool)

(assert (=> b!8023994 (=> (not res!3173183) (not e!4726882))))

(declare-fun isPrefix!6841 (List!75034 List!75034) Bool)

(assert (=> b!8023994 (= res!3173183 (isPrefix!6841 p!1838 l!2932))))

(declare-fun b!8023995 () Bool)

(declare-fun ListPrimitiveSize!505 (List!75034) Int)

(assert (=> b!8023995 (= e!4726882 (< (ListPrimitiveSize!505 l!2932) 0))))

(assert (= (and start!755336 res!3173184) b!8023994))

(assert (= (and b!8023994 res!3173183) b!8023995))

(get-info :version)

(assert (= (and start!755336 ((_ is Cons!74910) l!2932)) b!8023996))

(assert (= (and start!755336 ((_ is Cons!74910) p!1838)) b!8023997))

(declare-fun m!8386546 () Bool)

(assert (=> start!755336 m!8386546))

(declare-fun m!8386548 () Bool)

(assert (=> start!755336 m!8386548))

(declare-fun m!8386550 () Bool)

(assert (=> b!8023994 m!8386550))

(declare-fun m!8386552 () Bool)

(assert (=> b!8023995 m!8386552))

(check-sat (not b!8023995) (not b!8023994) (not b!8023997) (not b!8023996) tp_is_empty!54153 (not start!755336))
(check-sat)
(get-model)

(declare-fun d!2392621 () Bool)

(declare-fun lt!2720517 () Int)

(assert (=> d!2392621 (>= lt!2720517 0)))

(declare-fun e!4726886 () Int)

(assert (=> d!2392621 (= lt!2720517 e!4726886)))

(declare-fun c!1472350 () Bool)

(assert (=> d!2392621 (= c!1472350 ((_ is Nil!74910) l!2932))))

(assert (=> d!2392621 (= (ListPrimitiveSize!505 l!2932) lt!2720517)))

(declare-fun b!8024002 () Bool)

(assert (=> b!8024002 (= e!4726886 0)))

(declare-fun b!8024003 () Bool)

(assert (=> b!8024003 (= e!4726886 (+ 1 (ListPrimitiveSize!505 (t!390777 l!2932))))))

(assert (= (and d!2392621 c!1472350) b!8024002))

(assert (= (and d!2392621 (not c!1472350)) b!8024003))

(declare-fun m!8386554 () Bool)

(assert (=> b!8024003 m!8386554))

(assert (=> b!8023995 d!2392621))

(declare-fun d!2392625 () Bool)

(declare-fun lt!2720523 () Int)

(assert (=> d!2392625 (>= lt!2720523 0)))

(declare-fun e!4726898 () Int)

(assert (=> d!2392625 (= lt!2720523 e!4726898)))

(declare-fun c!1472353 () Bool)

(assert (=> d!2392625 (= c!1472353 ((_ is Nil!74910) l!2932))))

(assert (=> d!2392625 (= (size!43687 l!2932) lt!2720523)))

(declare-fun b!8024017 () Bool)

(assert (=> b!8024017 (= e!4726898 0)))

(declare-fun b!8024019 () Bool)

(assert (=> b!8024019 (= e!4726898 (+ 1 (size!43687 (t!390777 l!2932))))))

(assert (= (and d!2392625 c!1472353) b!8024017))

(assert (= (and d!2392625 (not c!1472353)) b!8024019))

(declare-fun m!8386556 () Bool)

(assert (=> b!8024019 m!8386556))

(assert (=> start!755336 d!2392625))

(declare-fun d!2392627 () Bool)

(declare-fun lt!2720524 () Int)

(assert (=> d!2392627 (>= lt!2720524 0)))

(declare-fun e!4726899 () Int)

(assert (=> d!2392627 (= lt!2720524 e!4726899)))

(declare-fun c!1472354 () Bool)

(assert (=> d!2392627 (= c!1472354 ((_ is Nil!74910) p!1838))))

(assert (=> d!2392627 (= (size!43687 p!1838) lt!2720524)))

(declare-fun b!8024022 () Bool)

(assert (=> b!8024022 (= e!4726899 0)))

(declare-fun b!8024023 () Bool)

(assert (=> b!8024023 (= e!4726899 (+ 1 (size!43687 (t!390777 p!1838))))))

(assert (= (and d!2392627 c!1472354) b!8024022))

(assert (= (and d!2392627 (not c!1472354)) b!8024023))

(declare-fun m!8386560 () Bool)

(assert (=> b!8024023 m!8386560))

(assert (=> start!755336 d!2392627))

(declare-fun d!2392629 () Bool)

(declare-fun e!4726914 () Bool)

(assert (=> d!2392629 e!4726914))

(declare-fun res!3173205 () Bool)

(assert (=> d!2392629 (=> res!3173205 e!4726914)))

(declare-fun lt!2720533 () Bool)

(assert (=> d!2392629 (= res!3173205 (not lt!2720533))))

(declare-fun e!4726913 () Bool)

(assert (=> d!2392629 (= lt!2720533 e!4726913)))

(declare-fun res!3173208 () Bool)

(assert (=> d!2392629 (=> res!3173208 e!4726913)))

(assert (=> d!2392629 (= res!3173208 ((_ is Nil!74910) p!1838))))

(assert (=> d!2392629 (= (isPrefix!6841 p!1838 l!2932) lt!2720533)))

(declare-fun b!8024044 () Bool)

(declare-fun e!4726912 () Bool)

(assert (=> b!8024044 (= e!4726913 e!4726912)))

(declare-fun res!3173207 () Bool)

(assert (=> b!8024044 (=> (not res!3173207) (not e!4726912))))

(assert (=> b!8024044 (= res!3173207 (not ((_ is Nil!74910) l!2932)))))

(declare-fun b!8024045 () Bool)

(declare-fun res!3173206 () Bool)

(assert (=> b!8024045 (=> (not res!3173206) (not e!4726912))))

(declare-fun head!16438 (List!75034) B!4265)

(assert (=> b!8024045 (= res!3173206 (= (head!16438 p!1838) (head!16438 l!2932)))))

(declare-fun b!8024046 () Bool)

(declare-fun tail!15977 (List!75034) List!75034)

(assert (=> b!8024046 (= e!4726912 (isPrefix!6841 (tail!15977 p!1838) (tail!15977 l!2932)))))

(declare-fun b!8024047 () Bool)

(assert (=> b!8024047 (= e!4726914 (>= (size!43687 l!2932) (size!43687 p!1838)))))

(assert (= (and d!2392629 (not res!3173208)) b!8024044))

(assert (= (and b!8024044 res!3173207) b!8024045))

(assert (= (and b!8024045 res!3173206) b!8024046))

(assert (= (and d!2392629 (not res!3173205)) b!8024047))

(declare-fun m!8386576 () Bool)

(assert (=> b!8024045 m!8386576))

(declare-fun m!8386578 () Bool)

(assert (=> b!8024045 m!8386578))

(declare-fun m!8386580 () Bool)

(assert (=> b!8024046 m!8386580))

(declare-fun m!8386582 () Bool)

(assert (=> b!8024046 m!8386582))

(assert (=> b!8024046 m!8386580))

(assert (=> b!8024046 m!8386582))

(declare-fun m!8386584 () Bool)

(assert (=> b!8024046 m!8386584))

(assert (=> b!8024047 m!8386546))

(assert (=> b!8024047 m!8386548))

(assert (=> b!8023994 d!2392629))

(declare-fun b!8024060 () Bool)

(declare-fun e!4726922 () Bool)

(declare-fun tp!2401390 () Bool)

(assert (=> b!8024060 (= e!4726922 (and tp_is_empty!54153 tp!2401390))))

(assert (=> b!8023996 (= tp!2401383 e!4726922)))

(assert (= (and b!8023996 ((_ is Cons!74910) (t!390777 l!2932))) b!8024060))

(declare-fun b!8024061 () Bool)

(declare-fun e!4726923 () Bool)

(declare-fun tp!2401391 () Bool)

(assert (=> b!8024061 (= e!4726923 (and tp_is_empty!54153 tp!2401391))))

(assert (=> b!8023997 (= tp!2401382 e!4726923)))

(assert (= (and b!8023997 ((_ is Cons!74910) (t!390777 p!1838))) b!8024061))

(check-sat (not b!8024061) (not b!8024060) (not b!8024047) tp_is_empty!54153 (not b!8024023) (not b!8024003) (not b!8024019) (not b!8024046) (not b!8024045))
(check-sat)
