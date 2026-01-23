; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754748 () Bool)

(assert start!754748)

(declare-fun b!8018977 () Bool)

(declare-fun e!4723735 () Bool)

(declare-datatypes ((B!4109 0))(
  ( (B!4110 (val!32444 Int)) )
))
(declare-datatypes ((List!74956 0))(
  ( (Nil!74832) (Cons!74832 (h!81280 B!4109) (t!390699 List!74956)) )
))
(declare-fun p!2009 () List!74956)

(declare-fun lt!2719435 () List!74956)

(declare-fun size!43623 (List!74956) Int)

(assert (=> b!8018977 (= e!4723735 (>= (size!43623 (t!390699 p!2009)) (size!43623 lt!2719435)))))

(declare-fun b!8018979 () Bool)

(declare-fun res!3170650 () Bool)

(declare-fun e!4723733 () Bool)

(assert (=> b!8018979 (=> (not res!3170650) (not e!4723733))))

(declare-fun l!3435 () List!74956)

(assert (=> b!8018979 (= res!3170650 (< (size!43623 p!2009) (size!43623 l!3435)))))

(declare-fun b!8018980 () Bool)

(declare-fun res!3170652 () Bool)

(assert (=> b!8018980 (=> (not res!3170652) (not e!4723733))))

(get-info :version)

(assert (=> b!8018980 (= res!3170652 ((_ is Cons!74832) p!2009))))

(declare-fun b!8018981 () Bool)

(assert (=> b!8018981 (= e!4723733 e!4723735)))

(declare-fun res!3170651 () Bool)

(assert (=> b!8018981 (=> (not res!3170651) (not e!4723735))))

(declare-fun isPrefix!6779 (List!74956 List!74956) Bool)

(assert (=> b!8018981 (= res!3170651 (isPrefix!6779 (t!390699 p!2009) lt!2719435))))

(declare-fun tail!15917 (List!74956) List!74956)

(assert (=> b!8018981 (= lt!2719435 (tail!15917 l!3435))))

(declare-fun b!8018982 () Bool)

(declare-fun e!4723734 () Bool)

(declare-fun tp_is_empty!53997 () Bool)

(declare-fun tp!2400185 () Bool)

(assert (=> b!8018982 (= e!4723734 (and tp_is_empty!53997 tp!2400185))))

(declare-fun res!3170649 () Bool)

(assert (=> start!754748 (=> (not res!3170649) (not e!4723733))))

(assert (=> start!754748 (= res!3170649 (isPrefix!6779 p!2009 l!3435))))

(assert (=> start!754748 e!4723733))

(assert (=> start!754748 e!4723734))

(declare-fun e!4723732 () Bool)

(assert (=> start!754748 e!4723732))

(declare-fun b!8018978 () Bool)

(declare-fun tp!2400186 () Bool)

(assert (=> b!8018978 (= e!4723732 (and tp_is_empty!53997 tp!2400186))))

(assert (= (and start!754748 res!3170649) b!8018979))

(assert (= (and b!8018979 res!3170650) b!8018980))

(assert (= (and b!8018980 res!3170652) b!8018981))

(assert (= (and b!8018981 res!3170651) b!8018977))

(assert (= (and start!754748 ((_ is Cons!74832) p!2009)) b!8018982))

(assert (= (and start!754748 ((_ is Cons!74832) l!3435)) b!8018978))

(declare-fun m!8381946 () Bool)

(assert (=> b!8018977 m!8381946))

(declare-fun m!8381948 () Bool)

(assert (=> b!8018977 m!8381948))

(declare-fun m!8381950 () Bool)

(assert (=> b!8018979 m!8381950))

(declare-fun m!8381952 () Bool)

(assert (=> b!8018979 m!8381952))

(declare-fun m!8381954 () Bool)

(assert (=> b!8018981 m!8381954))

(declare-fun m!8381956 () Bool)

(assert (=> b!8018981 m!8381956))

(declare-fun m!8381958 () Bool)

(assert (=> start!754748 m!8381958))

(check-sat tp_is_empty!53997 (not b!8018977) (not b!8018981) (not start!754748) (not b!8018978) (not b!8018982) (not b!8018979))
(check-sat)
(get-model)

(declare-fun d!2390996 () Bool)

(declare-fun lt!2719440 () Int)

(assert (=> d!2390996 (>= lt!2719440 0)))

(declare-fun e!4723740 () Int)

(assert (=> d!2390996 (= lt!2719440 e!4723740)))

(declare-fun c!1471771 () Bool)

(assert (=> d!2390996 (= c!1471771 ((_ is Nil!74832) (t!390699 p!2009)))))

(assert (=> d!2390996 (= (size!43623 (t!390699 p!2009)) lt!2719440)))

(declare-fun b!8018991 () Bool)

(assert (=> b!8018991 (= e!4723740 0)))

(declare-fun b!8018992 () Bool)

(assert (=> b!8018992 (= e!4723740 (+ 1 (size!43623 (t!390699 (t!390699 p!2009)))))))

(assert (= (and d!2390996 c!1471771) b!8018991))

(assert (= (and d!2390996 (not c!1471771)) b!8018992))

(declare-fun m!8381960 () Bool)

(assert (=> b!8018992 m!8381960))

(assert (=> b!8018977 d!2390996))

(declare-fun d!2391000 () Bool)

(declare-fun lt!2719441 () Int)

(assert (=> d!2391000 (>= lt!2719441 0)))

(declare-fun e!4723741 () Int)

(assert (=> d!2391000 (= lt!2719441 e!4723741)))

(declare-fun c!1471772 () Bool)

(assert (=> d!2391000 (= c!1471772 ((_ is Nil!74832) lt!2719435))))

(assert (=> d!2391000 (= (size!43623 lt!2719435) lt!2719441)))

(declare-fun b!8018993 () Bool)

(assert (=> b!8018993 (= e!4723741 0)))

(declare-fun b!8018994 () Bool)

(assert (=> b!8018994 (= e!4723741 (+ 1 (size!43623 (t!390699 lt!2719435))))))

(assert (= (and d!2391000 c!1471772) b!8018993))

(assert (= (and d!2391000 (not c!1471772)) b!8018994))

(declare-fun m!8381962 () Bool)

(assert (=> b!8018994 m!8381962))

(assert (=> b!8018977 d!2391000))

(declare-fun b!8019017 () Bool)

(declare-fun e!4723757 () Bool)

(assert (=> b!8019017 (= e!4723757 (isPrefix!6779 (tail!15917 p!2009) (tail!15917 l!3435)))))

(declare-fun b!8019016 () Bool)

(declare-fun res!3170670 () Bool)

(assert (=> b!8019016 (=> (not res!3170670) (not e!4723757))))

(declare-fun head!16389 (List!74956) B!4109)

(assert (=> b!8019016 (= res!3170670 (= (head!16389 p!2009) (head!16389 l!3435)))))

(declare-fun d!2391002 () Bool)

(declare-fun e!4723756 () Bool)

(assert (=> d!2391002 e!4723756))

(declare-fun res!3170671 () Bool)

(assert (=> d!2391002 (=> res!3170671 e!4723756)))

(declare-fun lt!2719448 () Bool)

(assert (=> d!2391002 (= res!3170671 (not lt!2719448))))

(declare-fun e!4723758 () Bool)

(assert (=> d!2391002 (= lt!2719448 e!4723758)))

(declare-fun res!3170669 () Bool)

(assert (=> d!2391002 (=> res!3170669 e!4723758)))

(assert (=> d!2391002 (= res!3170669 ((_ is Nil!74832) p!2009))))

(assert (=> d!2391002 (= (isPrefix!6779 p!2009 l!3435) lt!2719448)))

(declare-fun b!8019015 () Bool)

(assert (=> b!8019015 (= e!4723758 e!4723757)))

(declare-fun res!3170672 () Bool)

(assert (=> b!8019015 (=> (not res!3170672) (not e!4723757))))

(assert (=> b!8019015 (= res!3170672 (not ((_ is Nil!74832) l!3435)))))

(declare-fun b!8019018 () Bool)

(assert (=> b!8019018 (= e!4723756 (>= (size!43623 l!3435) (size!43623 p!2009)))))

(assert (= (and d!2391002 (not res!3170669)) b!8019015))

(assert (= (and b!8019015 res!3170672) b!8019016))

(assert (= (and b!8019016 res!3170670) b!8019017))

(assert (= (and d!2391002 (not res!3170671)) b!8019018))

(declare-fun m!8381966 () Bool)

(assert (=> b!8019017 m!8381966))

(assert (=> b!8019017 m!8381956))

(assert (=> b!8019017 m!8381966))

(assert (=> b!8019017 m!8381956))

(declare-fun m!8381968 () Bool)

(assert (=> b!8019017 m!8381968))

(declare-fun m!8381970 () Bool)

(assert (=> b!8019016 m!8381970))

(declare-fun m!8381972 () Bool)

(assert (=> b!8019016 m!8381972))

(assert (=> b!8019018 m!8381952))

(assert (=> b!8019018 m!8381950))

(assert (=> start!754748 d!2391002))

(declare-fun d!2391008 () Bool)

(declare-fun lt!2719450 () Int)

(assert (=> d!2391008 (>= lt!2719450 0)))

(declare-fun e!4723762 () Int)

(assert (=> d!2391008 (= lt!2719450 e!4723762)))

(declare-fun c!1471775 () Bool)

(assert (=> d!2391008 (= c!1471775 ((_ is Nil!74832) p!2009))))

(assert (=> d!2391008 (= (size!43623 p!2009) lt!2719450)))

(declare-fun b!8019023 () Bool)

(assert (=> b!8019023 (= e!4723762 0)))

(declare-fun b!8019024 () Bool)

(assert (=> b!8019024 (= e!4723762 (+ 1 (size!43623 (t!390699 p!2009))))))

(assert (= (and d!2391008 c!1471775) b!8019023))

(assert (= (and d!2391008 (not c!1471775)) b!8019024))

(assert (=> b!8019024 m!8381946))

(assert (=> b!8018979 d!2391008))

(declare-fun d!2391012 () Bool)

(declare-fun lt!2719452 () Int)

(assert (=> d!2391012 (>= lt!2719452 0)))

(declare-fun e!4723764 () Int)

(assert (=> d!2391012 (= lt!2719452 e!4723764)))

(declare-fun c!1471777 () Bool)

(assert (=> d!2391012 (= c!1471777 ((_ is Nil!74832) l!3435))))

(assert (=> d!2391012 (= (size!43623 l!3435) lt!2719452)))

(declare-fun b!8019027 () Bool)

(assert (=> b!8019027 (= e!4723764 0)))

(declare-fun b!8019028 () Bool)

(assert (=> b!8019028 (= e!4723764 (+ 1 (size!43623 (t!390699 l!3435))))))

(assert (= (and d!2391012 c!1471777) b!8019027))

(assert (= (and d!2391012 (not c!1471777)) b!8019028))

(declare-fun m!8381982 () Bool)

(assert (=> b!8019028 m!8381982))

(assert (=> b!8018979 d!2391012))

(declare-fun b!8019033 () Bool)

(declare-fun e!4723767 () Bool)

(assert (=> b!8019033 (= e!4723767 (isPrefix!6779 (tail!15917 (t!390699 p!2009)) (tail!15917 lt!2719435)))))

(declare-fun b!8019032 () Bool)

(declare-fun res!3170678 () Bool)

(assert (=> b!8019032 (=> (not res!3170678) (not e!4723767))))

(assert (=> b!8019032 (= res!3170678 (= (head!16389 (t!390699 p!2009)) (head!16389 lt!2719435)))))

(declare-fun d!2391014 () Bool)

(declare-fun e!4723765 () Bool)

(assert (=> d!2391014 e!4723765))

(declare-fun res!3170679 () Bool)

(assert (=> d!2391014 (=> res!3170679 e!4723765)))

(declare-fun lt!2719454 () Bool)

(assert (=> d!2391014 (= res!3170679 (not lt!2719454))))

(declare-fun e!4723768 () Bool)

(assert (=> d!2391014 (= lt!2719454 e!4723768)))

(declare-fun res!3170677 () Bool)

(assert (=> d!2391014 (=> res!3170677 e!4723768)))

(assert (=> d!2391014 (= res!3170677 ((_ is Nil!74832) (t!390699 p!2009)))))

(assert (=> d!2391014 (= (isPrefix!6779 (t!390699 p!2009) lt!2719435) lt!2719454)))

(declare-fun b!8019031 () Bool)

(assert (=> b!8019031 (= e!4723768 e!4723767)))

(declare-fun res!3170680 () Bool)

(assert (=> b!8019031 (=> (not res!3170680) (not e!4723767))))

(assert (=> b!8019031 (= res!3170680 (not ((_ is Nil!74832) lt!2719435)))))

(declare-fun b!8019034 () Bool)

(assert (=> b!8019034 (= e!4723765 (>= (size!43623 lt!2719435) (size!43623 (t!390699 p!2009))))))

(assert (= (and d!2391014 (not res!3170677)) b!8019031))

(assert (= (and b!8019031 res!3170680) b!8019032))

(assert (= (and b!8019032 res!3170678) b!8019033))

(assert (= (and d!2391014 (not res!3170679)) b!8019034))

(declare-fun m!8381988 () Bool)

(assert (=> b!8019033 m!8381988))

(declare-fun m!8381990 () Bool)

(assert (=> b!8019033 m!8381990))

(assert (=> b!8019033 m!8381988))

(assert (=> b!8019033 m!8381990))

(declare-fun m!8381992 () Bool)

(assert (=> b!8019033 m!8381992))

(declare-fun m!8381994 () Bool)

(assert (=> b!8019032 m!8381994))

(declare-fun m!8381996 () Bool)

(assert (=> b!8019032 m!8381996))

(assert (=> b!8019034 m!8381948))

(assert (=> b!8019034 m!8381946))

(assert (=> b!8018981 d!2391014))

(declare-fun d!2391020 () Bool)

(assert (=> d!2391020 (= (tail!15917 l!3435) (t!390699 l!3435))))

(assert (=> b!8018981 d!2391020))

(declare-fun b!8019047 () Bool)

(declare-fun e!4723776 () Bool)

(declare-fun tp!2400191 () Bool)

(assert (=> b!8019047 (= e!4723776 (and tp_is_empty!53997 tp!2400191))))

(assert (=> b!8018978 (= tp!2400186 e!4723776)))

(assert (= (and b!8018978 ((_ is Cons!74832) (t!390699 l!3435))) b!8019047))

(declare-fun b!8019048 () Bool)

(declare-fun e!4723777 () Bool)

(declare-fun tp!2400192 () Bool)

(assert (=> b!8019048 (= e!4723777 (and tp_is_empty!53997 tp!2400192))))

(assert (=> b!8018982 (= tp!2400185 e!4723777)))

(assert (= (and b!8018982 ((_ is Cons!74832) (t!390699 p!2009))) b!8019048))

(check-sat tp_is_empty!53997 (not b!8019028) (not b!8018994) (not b!8019033) (not b!8019032) (not b!8019024) (not b!8018992) (not b!8019034) (not b!8019018) (not b!8019017) (not b!8019047) (not b!8019016) (not b!8019048))
(check-sat)
