; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250952 () Bool)

(assert start!250952)

(declare-fun b!2590738 () Bool)

(declare-fun e!1634286 () Bool)

(declare-datatypes ((B!2005 0))(
  ( (B!2006 (val!9470 Int)) )
))
(declare-datatypes ((List!29903 0))(
  ( (Nil!29803) (Cons!29803 (h!35223 B!2005) (t!212916 List!29903)) )
))
(declare-fun l!3230 () List!29903)

(declare-fun lt!911042 () Int)

(declare-fun size!23116 (List!29903) Int)

(assert (=> b!2590738 (= e!1634286 (= (size!23116 l!3230) (+ 1 lt!911042)))))

(declare-fun res!1089312 () Bool)

(declare-fun e!1634287 () Bool)

(assert (=> start!250952 (=> (not res!1089312) (not e!1634287))))

(declare-fun noDuplicate!351 (List!29903) Bool)

(assert (=> start!250952 (= res!1089312 (noDuplicate!351 l!3230))))

(assert (=> start!250952 e!1634287))

(declare-fun e!1634285 () Bool)

(assert (=> start!250952 e!1634285))

(declare-fun b!2590739 () Bool)

(declare-fun res!1089311 () Bool)

(assert (=> b!2590739 (=> (not res!1089311) (not e!1634287))))

(get-info :version)

(assert (=> b!2590739 (= res!1089311 ((_ is Cons!29803) l!3230))))

(declare-fun b!2590740 () Bool)

(assert (=> b!2590740 (= e!1634287 (not e!1634286))))

(declare-fun res!1089314 () Bool)

(assert (=> b!2590740 (=> res!1089314 e!1634286)))

(declare-fun lt!911045 () Int)

(assert (=> b!2590740 (= res!1089314 (>= lt!911045 (size!23116 l!3230)))))

(assert (=> b!2590740 (= lt!911045 lt!911042)))

(assert (=> b!2590740 (= lt!911042 (size!23116 (t!212916 l!3230)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!911044 () (InoxSet B!2005))

(declare-fun toList!1754 ((InoxSet B!2005)) List!29903)

(assert (=> b!2590740 (= lt!911045 (size!23116 (toList!1754 lt!911044)))))

(declare-fun content!4144 (List!29903) (InoxSet B!2005))

(assert (=> b!2590740 (= lt!911044 (content!4144 (t!212916 l!3230)))))

(declare-datatypes ((Unit!43712 0))(
  ( (Unit!43713) )
))
(declare-fun lt!911043 () Unit!43712)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!44 (List!29903) Unit!43712)

(assert (=> b!2590740 (= lt!911043 (lemmaNoDuplicateThenContentToListSameSize!44 (t!212916 l!3230)))))

(declare-fun b!2590741 () Bool)

(declare-fun res!1089315 () Bool)

(assert (=> b!2590741 (=> res!1089315 e!1634286)))

(declare-fun contains!5353 (List!29903 B!2005) Bool)

(assert (=> b!2590741 (= res!1089315 (contains!5353 (t!212916 l!3230) (h!35223 l!3230)))))

(declare-fun b!2590742 () Bool)

(declare-fun tp_is_empty!13285 () Bool)

(declare-fun tp!822644 () Bool)

(assert (=> b!2590742 (= e!1634285 (and tp_is_empty!13285 tp!822644))))

(declare-fun b!2590743 () Bool)

(declare-fun res!1089313 () Bool)

(assert (=> b!2590743 (=> res!1089313 e!1634286)))

(assert (=> b!2590743 (= res!1089313 (select lt!911044 (h!35223 l!3230)))))

(assert (= (and start!250952 res!1089312) b!2590739))

(assert (= (and b!2590739 res!1089311) b!2590740))

(assert (= (and b!2590740 (not res!1089314)) b!2590743))

(assert (= (and b!2590743 (not res!1089313)) b!2590741))

(assert (= (and b!2590741 (not res!1089315)) b!2590738))

(assert (= (and start!250952 ((_ is Cons!29803) l!3230)) b!2590742))

(declare-fun m!2926811 () Bool)

(assert (=> b!2590740 m!2926811))

(declare-fun m!2926813 () Bool)

(assert (=> b!2590740 m!2926813))

(assert (=> b!2590740 m!2926811))

(declare-fun m!2926815 () Bool)

(assert (=> b!2590740 m!2926815))

(declare-fun m!2926817 () Bool)

(assert (=> b!2590740 m!2926817))

(declare-fun m!2926819 () Bool)

(assert (=> b!2590740 m!2926819))

(declare-fun m!2926821 () Bool)

(assert (=> b!2590740 m!2926821))

(declare-fun m!2926823 () Bool)

(assert (=> start!250952 m!2926823))

(assert (=> b!2590738 m!2926813))

(declare-fun m!2926825 () Bool)

(assert (=> b!2590741 m!2926825))

(declare-fun m!2926827 () Bool)

(assert (=> b!2590743 m!2926827))

(check-sat (not b!2590742) (not b!2590740) tp_is_empty!13285 (not b!2590741) (not b!2590738) (not start!250952))
(check-sat)
(get-model)

(declare-fun d!733923 () Bool)

(declare-fun lt!911051 () Bool)

(assert (=> d!733923 (= lt!911051 (select (content!4144 (t!212916 l!3230)) (h!35223 l!3230)))))

(declare-fun e!1634299 () Bool)

(assert (=> d!733923 (= lt!911051 e!1634299)))

(declare-fun res!1089324 () Bool)

(assert (=> d!733923 (=> (not res!1089324) (not e!1634299))))

(assert (=> d!733923 (= res!1089324 ((_ is Cons!29803) (t!212916 l!3230)))))

(assert (=> d!733923 (= (contains!5353 (t!212916 l!3230) (h!35223 l!3230)) lt!911051)))

(declare-fun b!2590758 () Bool)

(declare-fun e!1634300 () Bool)

(assert (=> b!2590758 (= e!1634299 e!1634300)))

(declare-fun res!1089325 () Bool)

(assert (=> b!2590758 (=> res!1089325 e!1634300)))

(assert (=> b!2590758 (= res!1089325 (= (h!35223 (t!212916 l!3230)) (h!35223 l!3230)))))

(declare-fun b!2590759 () Bool)

(assert (=> b!2590759 (= e!1634300 (contains!5353 (t!212916 (t!212916 l!3230)) (h!35223 l!3230)))))

(assert (= (and d!733923 res!1089324) b!2590758))

(assert (= (and b!2590758 (not res!1089325)) b!2590759))

(assert (=> d!733923 m!2926819))

(declare-fun m!2926829 () Bool)

(assert (=> d!733923 m!2926829))

(declare-fun m!2926831 () Bool)

(assert (=> b!2590759 m!2926831))

(assert (=> b!2590741 d!733923))

(declare-fun d!733927 () Bool)

(declare-fun lt!911056 () Int)

(assert (=> d!733927 (>= lt!911056 0)))

(declare-fun e!1634309 () Int)

(assert (=> d!733927 (= lt!911056 e!1634309)))

(declare-fun c!417674 () Bool)

(assert (=> d!733927 (= c!417674 ((_ is Nil!29803) (toList!1754 lt!911044)))))

(assert (=> d!733927 (= (size!23116 (toList!1754 lt!911044)) lt!911056)))

(declare-fun b!2590770 () Bool)

(assert (=> b!2590770 (= e!1634309 0)))

(declare-fun b!2590771 () Bool)

(assert (=> b!2590771 (= e!1634309 (+ 1 (size!23116 (t!212916 (toList!1754 lt!911044)))))))

(assert (= (and d!733927 c!417674) b!2590770))

(assert (= (and d!733927 (not c!417674)) b!2590771))

(declare-fun m!2926835 () Bool)

(assert (=> b!2590771 m!2926835))

(assert (=> b!2590740 d!733927))

(declare-fun d!733931 () Bool)

(declare-fun lt!911057 () Int)

(assert (=> d!733931 (>= lt!911057 0)))

(declare-fun e!1634310 () Int)

(assert (=> d!733931 (= lt!911057 e!1634310)))

(declare-fun c!417675 () Bool)

(assert (=> d!733931 (= c!417675 ((_ is Nil!29803) (t!212916 l!3230)))))

(assert (=> d!733931 (= (size!23116 (t!212916 l!3230)) lt!911057)))

(declare-fun b!2590772 () Bool)

(assert (=> b!2590772 (= e!1634310 0)))

(declare-fun b!2590773 () Bool)

(assert (=> b!2590773 (= e!1634310 (+ 1 (size!23116 (t!212916 (t!212916 l!3230)))))))

(assert (= (and d!733931 c!417675) b!2590772))

(assert (= (and d!733931 (not c!417675)) b!2590773))

(declare-fun m!2926837 () Bool)

(assert (=> b!2590773 m!2926837))

(assert (=> b!2590740 d!733931))

(declare-fun d!733933 () Bool)

(declare-fun c!417679 () Bool)

(assert (=> d!733933 (= c!417679 ((_ is Nil!29803) (t!212916 l!3230)))))

(declare-fun e!1634316 () (InoxSet B!2005))

(assert (=> d!733933 (= (content!4144 (t!212916 l!3230)) e!1634316)))

(declare-fun b!2590782 () Bool)

(assert (=> b!2590782 (= e!1634316 ((as const (Array B!2005 Bool)) false))))

(declare-fun b!2590783 () Bool)

(assert (=> b!2590783 (= e!1634316 ((_ map or) (store ((as const (Array B!2005 Bool)) false) (h!35223 (t!212916 l!3230)) true) (content!4144 (t!212916 (t!212916 l!3230)))))))

(assert (= (and d!733933 c!417679) b!2590782))

(assert (= (and d!733933 (not c!417679)) b!2590783))

(declare-fun m!2926845 () Bool)

(assert (=> b!2590783 m!2926845))

(declare-fun m!2926847 () Bool)

(assert (=> b!2590783 m!2926847))

(assert (=> b!2590740 d!733933))

(declare-fun d!733939 () Bool)

(assert (=> d!733939 (= (size!23116 (toList!1754 (content!4144 (t!212916 l!3230)))) (size!23116 (t!212916 l!3230)))))

(declare-fun lt!911065 () Unit!43712)

(declare-fun choose!15292 (List!29903) Unit!43712)

(assert (=> d!733939 (= lt!911065 (choose!15292 (t!212916 l!3230)))))

(assert (=> d!733939 (noDuplicate!351 (t!212916 l!3230))))

(assert (=> d!733939 (= (lemmaNoDuplicateThenContentToListSameSize!44 (t!212916 l!3230)) lt!911065)))

(declare-fun bs!472131 () Bool)

(assert (= bs!472131 d!733939))

(declare-fun m!2926855 () Bool)

(assert (=> bs!472131 m!2926855))

(declare-fun m!2926857 () Bool)

(assert (=> bs!472131 m!2926857))

(declare-fun m!2926859 () Bool)

(assert (=> bs!472131 m!2926859))

(assert (=> bs!472131 m!2926819))

(assert (=> bs!472131 m!2926819))

(assert (=> bs!472131 m!2926857))

(declare-fun m!2926861 () Bool)

(assert (=> bs!472131 m!2926861))

(assert (=> bs!472131 m!2926817))

(assert (=> b!2590740 d!733939))

(declare-fun d!733945 () Bool)

(declare-fun e!1634326 () Bool)

(assert (=> d!733945 e!1634326))

(declare-fun res!1089339 () Bool)

(assert (=> d!733945 (=> (not res!1089339) (not e!1634326))))

(declare-fun lt!911069 () List!29903)

(assert (=> d!733945 (= res!1089339 (noDuplicate!351 lt!911069))))

(declare-fun choose!15293 ((InoxSet B!2005)) List!29903)

(assert (=> d!733945 (= lt!911069 (choose!15293 lt!911044))))

(assert (=> d!733945 (= (toList!1754 lt!911044) lt!911069)))

(declare-fun b!2590797 () Bool)

(assert (=> b!2590797 (= e!1634326 (= (content!4144 lt!911069) lt!911044))))

(assert (= (and d!733945 res!1089339) b!2590797))

(declare-fun m!2926869 () Bool)

(assert (=> d!733945 m!2926869))

(declare-fun m!2926871 () Bool)

(assert (=> d!733945 m!2926871))

(declare-fun m!2926873 () Bool)

(assert (=> b!2590797 m!2926873))

(assert (=> b!2590740 d!733945))

(declare-fun d!733949 () Bool)

(declare-fun lt!911070 () Int)

(assert (=> d!733949 (>= lt!911070 0)))

(declare-fun e!1634327 () Int)

(assert (=> d!733949 (= lt!911070 e!1634327)))

(declare-fun c!417684 () Bool)

(assert (=> d!733949 (= c!417684 ((_ is Nil!29803) l!3230))))

(assert (=> d!733949 (= (size!23116 l!3230) lt!911070)))

(declare-fun b!2590798 () Bool)

(assert (=> b!2590798 (= e!1634327 0)))

(declare-fun b!2590799 () Bool)

(assert (=> b!2590799 (= e!1634327 (+ 1 (size!23116 (t!212916 l!3230))))))

(assert (= (and d!733949 c!417684) b!2590798))

(assert (= (and d!733949 (not c!417684)) b!2590799))

(assert (=> b!2590799 m!2926817))

(assert (=> b!2590740 d!733949))

(assert (=> b!2590738 d!733949))

(declare-fun d!733951 () Bool)

(declare-fun res!1089344 () Bool)

(declare-fun e!1634335 () Bool)

(assert (=> d!733951 (=> res!1089344 e!1634335)))

(assert (=> d!733951 (= res!1089344 ((_ is Nil!29803) l!3230))))

(assert (=> d!733951 (= (noDuplicate!351 l!3230) e!1634335)))

(declare-fun b!2590809 () Bool)

(declare-fun e!1634336 () Bool)

(assert (=> b!2590809 (= e!1634335 e!1634336)))

(declare-fun res!1089345 () Bool)

(assert (=> b!2590809 (=> (not res!1089345) (not e!1634336))))

(assert (=> b!2590809 (= res!1089345 (not (contains!5353 (t!212916 l!3230) (h!35223 l!3230))))))

(declare-fun b!2590810 () Bool)

(assert (=> b!2590810 (= e!1634336 (noDuplicate!351 (t!212916 l!3230)))))

(assert (= (and d!733951 (not res!1089344)) b!2590809))

(assert (= (and b!2590809 res!1089345) b!2590810))

(assert (=> b!2590809 m!2926825))

(assert (=> b!2590810 m!2926861))

(assert (=> start!250952 d!733951))

(declare-fun b!2590815 () Bool)

(declare-fun e!1634339 () Bool)

(declare-fun tp!822650 () Bool)

(assert (=> b!2590815 (= e!1634339 (and tp_is_empty!13285 tp!822650))))

(assert (=> b!2590742 (= tp!822644 e!1634339)))

(assert (= (and b!2590742 ((_ is Cons!29803) (t!212916 l!3230))) b!2590815))

(check-sat (not b!2590815) (not b!2590783) (not b!2590810) (not d!733939) (not b!2590809) tp_is_empty!13285 (not d!733945) (not b!2590797) (not b!2590773) (not d!733923) (not b!2590771) (not b!2590799) (not b!2590759))
(check-sat)
