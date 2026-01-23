; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405078 () Bool)

(assert start!405078)

(declare-fun b!4233840 () Bool)

(declare-fun e!2628826 () Bool)

(declare-fun e!2628827 () Bool)

(assert (=> b!4233840 (= e!2628826 e!2628827)))

(declare-fun res!1741324 () Bool)

(assert (=> b!4233840 (=> (not res!1741324) (not e!2628827))))

(declare-fun lt!1505380 () Int)

(declare-datatypes ((B!2741 0))(
  ( (B!2742 (val!15072 Int)) )
))
(declare-fun e2!42 () B!2741)

(declare-datatypes ((List!46869 0))(
  ( (Nil!46745) (Cons!46745 (h!52165 B!2741) (t!349572 List!46869)) )
))
(declare-fun l!3106 () List!46869)

(declare-fun getIndex!888 (List!46869 B!2741) Int)

(assert (=> b!4233840 (= res!1741324 (= lt!1505380 (getIndex!888 l!3106 e2!42)))))

(declare-fun e1!42 () B!2741)

(assert (=> b!4233840 (= lt!1505380 (getIndex!888 l!3106 e1!42))))

(declare-fun b!4233839 () Bool)

(declare-fun res!1741322 () Bool)

(assert (=> b!4233839 (=> (not res!1741322) (not e!2628826))))

(declare-fun contains!9689 (List!46869 B!2741) Bool)

(assert (=> b!4233839 (= res!1741322 (contains!9689 l!3106 e2!42))))

(declare-fun res!1741323 () Bool)

(assert (=> start!405078 (=> (not res!1741323) (not e!2628826))))

(assert (=> start!405078 (= res!1741323 (contains!9689 l!3106 e1!42))))

(assert (=> start!405078 e!2628826))

(declare-fun e!2628828 () Bool)

(assert (=> start!405078 e!2628828))

(declare-fun tp_is_empty!22557 () Bool)

(assert (=> start!405078 tp_is_empty!22557))

(declare-fun b!4233842 () Bool)

(declare-fun tp!1296540 () Bool)

(assert (=> b!4233842 (= e!2628828 (and tp_is_empty!22557 tp!1296540))))

(declare-fun b!4233841 () Bool)

(assert (=> b!4233841 (= e!2628827 (and (not (= lt!1505380 0)) (= l!3106 Nil!46745)))))

(assert (= (and start!405078 res!1741323) b!4233839))

(assert (= (and b!4233839 res!1741322) b!4233840))

(assert (= (and b!4233840 res!1741324) b!4233841))

(get-info :version)

(assert (= (and start!405078 ((_ is Cons!46745) l!3106)) b!4233842))

(declare-fun m!4820159 () Bool)

(assert (=> b!4233840 m!4820159))

(declare-fun m!4820161 () Bool)

(assert (=> b!4233840 m!4820161))

(declare-fun m!4820163 () Bool)

(assert (=> b!4233839 m!4820163))

(declare-fun m!4820165 () Bool)

(assert (=> start!405078 m!4820165))

(check-sat (not b!4233840) (not start!405078) (not b!4233839) tp_is_empty!22557 (not b!4233842))
(check-sat)
(get-model)

(declare-fun d!1245846 () Bool)

(declare-fun lt!1505385 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7346 (List!46869) (InoxSet B!2741))

(assert (=> d!1245846 (= lt!1505385 (select (content!7346 l!3106) e2!42))))

(declare-fun e!2628838 () Bool)

(assert (=> d!1245846 (= lt!1505385 e!2628838)))

(declare-fun res!1741333 () Bool)

(assert (=> d!1245846 (=> (not res!1741333) (not e!2628838))))

(assert (=> d!1245846 (= res!1741333 ((_ is Cons!46745) l!3106))))

(assert (=> d!1245846 (= (contains!9689 l!3106 e2!42) lt!1505385)))

(declare-fun b!4233851 () Bool)

(declare-fun e!2628837 () Bool)

(assert (=> b!4233851 (= e!2628838 e!2628837)))

(declare-fun res!1741334 () Bool)

(assert (=> b!4233851 (=> res!1741334 e!2628837)))

(assert (=> b!4233851 (= res!1741334 (= (h!52165 l!3106) e2!42))))

(declare-fun b!4233852 () Bool)

(assert (=> b!4233852 (= e!2628837 (contains!9689 (t!349572 l!3106) e2!42))))

(assert (= (and d!1245846 res!1741333) b!4233851))

(assert (= (and b!4233851 (not res!1741334)) b!4233852))

(declare-fun m!4820167 () Bool)

(assert (=> d!1245846 m!4820167))

(declare-fun m!4820169 () Bool)

(assert (=> d!1245846 m!4820169))

(declare-fun m!4820171 () Bool)

(assert (=> b!4233852 m!4820171))

(assert (=> b!4233839 d!1245846))

(declare-fun d!1245850 () Bool)

(declare-fun lt!1505387 () Bool)

(assert (=> d!1245850 (= lt!1505387 (select (content!7346 l!3106) e1!42))))

(declare-fun e!2628842 () Bool)

(assert (=> d!1245850 (= lt!1505387 e!2628842)))

(declare-fun res!1741337 () Bool)

(assert (=> d!1245850 (=> (not res!1741337) (not e!2628842))))

(assert (=> d!1245850 (= res!1741337 ((_ is Cons!46745) l!3106))))

(assert (=> d!1245850 (= (contains!9689 l!3106 e1!42) lt!1505387)))

(declare-fun b!4233855 () Bool)

(declare-fun e!2628841 () Bool)

(assert (=> b!4233855 (= e!2628842 e!2628841)))

(declare-fun res!1741338 () Bool)

(assert (=> b!4233855 (=> res!1741338 e!2628841)))

(assert (=> b!4233855 (= res!1741338 (= (h!52165 l!3106) e1!42))))

(declare-fun b!4233856 () Bool)

(assert (=> b!4233856 (= e!2628841 (contains!9689 (t!349572 l!3106) e1!42))))

(assert (= (and d!1245850 res!1741337) b!4233855))

(assert (= (and b!4233855 (not res!1741338)) b!4233856))

(assert (=> d!1245850 m!4820167))

(declare-fun m!4820179 () Bool)

(assert (=> d!1245850 m!4820179))

(declare-fun m!4820181 () Bool)

(assert (=> b!4233856 m!4820181))

(assert (=> start!405078 d!1245850))

(declare-fun d!1245854 () Bool)

(declare-fun lt!1505393 () Int)

(assert (=> d!1245854 (>= lt!1505393 0)))

(declare-fun e!2628855 () Int)

(assert (=> d!1245854 (= lt!1505393 e!2628855)))

(declare-fun c!719682 () Bool)

(assert (=> d!1245854 (= c!719682 (and ((_ is Cons!46745) l!3106) (= (h!52165 l!3106) e2!42)))))

(assert (=> d!1245854 (contains!9689 l!3106 e2!42)))

(assert (=> d!1245854 (= (getIndex!888 l!3106 e2!42) lt!1505393)))

(declare-fun b!4233878 () Bool)

(declare-fun e!2628856 () Int)

(assert (=> b!4233878 (= e!2628856 (- 1))))

(declare-fun b!4233876 () Bool)

(assert (=> b!4233876 (= e!2628855 e!2628856)))

(declare-fun c!719683 () Bool)

(assert (=> b!4233876 (= c!719683 (and ((_ is Cons!46745) l!3106) (not (= (h!52165 l!3106) e2!42))))))

(declare-fun b!4233875 () Bool)

(assert (=> b!4233875 (= e!2628855 0)))

(declare-fun b!4233877 () Bool)

(assert (=> b!4233877 (= e!2628856 (+ 1 (getIndex!888 (t!349572 l!3106) e2!42)))))

(assert (= (and d!1245854 c!719682) b!4233875))

(assert (= (and d!1245854 (not c!719682)) b!4233876))

(assert (= (and b!4233876 c!719683) b!4233877))

(assert (= (and b!4233876 (not c!719683)) b!4233878))

(assert (=> d!1245854 m!4820163))

(declare-fun m!4820187 () Bool)

(assert (=> b!4233877 m!4820187))

(assert (=> b!4233840 d!1245854))

(declare-fun d!1245858 () Bool)

(declare-fun lt!1505395 () Int)

(assert (=> d!1245858 (>= lt!1505395 0)))

(declare-fun e!2628859 () Int)

(assert (=> d!1245858 (= lt!1505395 e!2628859)))

(declare-fun c!719686 () Bool)

(assert (=> d!1245858 (= c!719686 (and ((_ is Cons!46745) l!3106) (= (h!52165 l!3106) e1!42)))))

(assert (=> d!1245858 (contains!9689 l!3106 e1!42)))

(assert (=> d!1245858 (= (getIndex!888 l!3106 e1!42) lt!1505395)))

(declare-fun b!4233886 () Bool)

(declare-fun e!2628860 () Int)

(assert (=> b!4233886 (= e!2628860 (- 1))))

(declare-fun b!4233884 () Bool)

(assert (=> b!4233884 (= e!2628859 e!2628860)))

(declare-fun c!719687 () Bool)

(assert (=> b!4233884 (= c!719687 (and ((_ is Cons!46745) l!3106) (not (= (h!52165 l!3106) e1!42))))))

(declare-fun b!4233883 () Bool)

(assert (=> b!4233883 (= e!2628859 0)))

(declare-fun b!4233885 () Bool)

(assert (=> b!4233885 (= e!2628860 (+ 1 (getIndex!888 (t!349572 l!3106) e1!42)))))

(assert (= (and d!1245858 c!719686) b!4233883))

(assert (= (and d!1245858 (not c!719686)) b!4233884))

(assert (= (and b!4233884 c!719687) b!4233885))

(assert (= (and b!4233884 (not c!719687)) b!4233886))

(assert (=> d!1245858 m!4820165))

(declare-fun m!4820191 () Bool)

(assert (=> b!4233885 m!4820191))

(assert (=> b!4233840 d!1245858))

(declare-fun b!4233899 () Bool)

(declare-fun e!2628867 () Bool)

(declare-fun tp!1296545 () Bool)

(assert (=> b!4233899 (= e!2628867 (and tp_is_empty!22557 tp!1296545))))

(assert (=> b!4233842 (= tp!1296540 e!2628867)))

(assert (= (and b!4233842 ((_ is Cons!46745) (t!349572 l!3106))) b!4233899))

(check-sat (not d!1245858) (not b!4233885) (not b!4233856) (not d!1245846) (not b!4233899) (not d!1245854) (not b!4233877) (not b!4233852) tp_is_empty!22557 (not d!1245850))
(check-sat)
