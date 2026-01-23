; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!250980 () Bool)

(assert start!250980)

(declare-fun b!2590851 () Bool)

(declare-fun e!1634355 () Bool)

(declare-fun e!1634357 () Bool)

(assert (=> b!2590851 (= e!1634355 (not e!1634357))))

(declare-fun res!1089376 () Bool)

(assert (=> b!2590851 (=> res!1089376 e!1634357)))

(declare-fun lt!911095 () Int)

(declare-datatypes ((B!2009 0))(
  ( (B!2010 (val!9472 Int)) )
))
(declare-datatypes ((List!29905 0))(
  ( (Nil!29805) (Cons!29805 (h!35225 B!2009) (t!212918 List!29905)) )
))
(declare-fun l!3230 () List!29905)

(declare-fun size!23118 (List!29905) Int)

(assert (=> b!2590851 (= res!1089376 (>= lt!911095 (size!23118 l!3230)))))

(declare-fun lt!911097 () Int)

(assert (=> b!2590851 (= lt!911095 lt!911097)))

(assert (=> b!2590851 (= lt!911097 (size!23118 (t!212918 l!3230)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!911094 () (InoxSet B!2009))

(declare-fun toList!1756 ((InoxSet B!2009)) List!29905)

(assert (=> b!2590851 (= lt!911095 (size!23118 (toList!1756 lt!911094)))))

(declare-fun content!4146 (List!29905) (InoxSet B!2009))

(assert (=> b!2590851 (= lt!911094 (content!4146 (t!212918 l!3230)))))

(declare-datatypes ((Unit!43716 0))(
  ( (Unit!43717) )
))
(declare-fun lt!911096 () Unit!43716)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!46 (List!29905) Unit!43716)

(assert (=> b!2590851 (= lt!911096 (lemmaNoDuplicateThenContentToListSameSize!46 (t!212918 l!3230)))))

(declare-fun b!2590852 () Bool)

(declare-fun res!1089381 () Bool)

(assert (=> b!2590852 (=> res!1089381 e!1634357)))

(declare-fun contains!5355 (List!29905 B!2009) Bool)

(assert (=> b!2590852 (= res!1089381 (contains!5355 (t!212918 l!3230) (h!35225 l!3230)))))

(declare-fun b!2590853 () Bool)

(declare-fun res!1089378 () Bool)

(assert (=> b!2590853 (=> (not res!1089378) (not e!1634355))))

(get-info :version)

(assert (=> b!2590853 (= res!1089378 ((_ is Cons!29805) l!3230))))

(declare-fun b!2590854 () Bool)

(declare-fun res!1089379 () Bool)

(assert (=> b!2590854 (=> res!1089379 e!1634357)))

(assert (=> b!2590854 (= res!1089379 (not (= (size!23118 l!3230) (+ 1 lt!911097))))))

(declare-fun res!1089380 () Bool)

(assert (=> start!250980 (=> (not res!1089380) (not e!1634355))))

(declare-fun noDuplicate!353 (List!29905) Bool)

(assert (=> start!250980 (= res!1089380 (noDuplicate!353 l!3230))))

(assert (=> start!250980 e!1634355))

(declare-fun e!1634356 () Bool)

(assert (=> start!250980 e!1634356))

(declare-fun b!2590855 () Bool)

(declare-fun tp_is_empty!13289 () Bool)

(declare-fun tp!822656 () Bool)

(assert (=> b!2590855 (= e!1634356 (and tp_is_empty!13289 tp!822656))))

(declare-fun b!2590856 () Bool)

(assert (=> b!2590856 (= e!1634357 (= (content!4146 l!3230) ((_ map or) lt!911094 (store ((as const (Array B!2009 Bool)) false) (h!35225 l!3230) true))))))

(declare-fun b!2590857 () Bool)

(declare-fun res!1089377 () Bool)

(assert (=> b!2590857 (=> res!1089377 e!1634357)))

(assert (=> b!2590857 (= res!1089377 (select lt!911094 (h!35225 l!3230)))))

(assert (= (and start!250980 res!1089380) b!2590853))

(assert (= (and b!2590853 res!1089378) b!2590851))

(assert (= (and b!2590851 (not res!1089376)) b!2590857))

(assert (= (and b!2590857 (not res!1089377)) b!2590852))

(assert (= (and b!2590852 (not res!1089381)) b!2590854))

(assert (= (and b!2590854 (not res!1089379)) b!2590856))

(assert (= (and start!250980 ((_ is Cons!29805) l!3230)) b!2590855))

(declare-fun m!2926903 () Bool)

(assert (=> b!2590851 m!2926903))

(declare-fun m!2926905 () Bool)

(assert (=> b!2590851 m!2926905))

(declare-fun m!2926907 () Bool)

(assert (=> b!2590851 m!2926907))

(declare-fun m!2926909 () Bool)

(assert (=> b!2590851 m!2926909))

(declare-fun m!2926911 () Bool)

(assert (=> b!2590851 m!2926911))

(assert (=> b!2590851 m!2926903))

(declare-fun m!2926913 () Bool)

(assert (=> b!2590851 m!2926913))

(declare-fun m!2926915 () Bool)

(assert (=> start!250980 m!2926915))

(assert (=> b!2590854 m!2926907))

(declare-fun m!2926917 () Bool)

(assert (=> b!2590852 m!2926917))

(declare-fun m!2926919 () Bool)

(assert (=> b!2590857 m!2926919))

(declare-fun m!2926921 () Bool)

(assert (=> b!2590856 m!2926921))

(declare-fun m!2926923 () Bool)

(assert (=> b!2590856 m!2926923))

(check-sat (not b!2590851) tp_is_empty!13289 (not b!2590852) (not b!2590855) (not b!2590854) (not start!250980) (not b!2590856))
(check-sat)
(get-model)

(declare-fun d!733954 () Bool)

(declare-fun c!417687 () Bool)

(assert (=> d!733954 (= c!417687 ((_ is Nil!29805) l!3230))))

(declare-fun e!1634360 () (InoxSet B!2009))

(assert (=> d!733954 (= (content!4146 l!3230) e!1634360)))

(declare-fun b!2590862 () Bool)

(assert (=> b!2590862 (= e!1634360 ((as const (Array B!2009 Bool)) false))))

(declare-fun b!2590863 () Bool)

(assert (=> b!2590863 (= e!1634360 ((_ map or) (store ((as const (Array B!2009 Bool)) false) (h!35225 l!3230) true) (content!4146 (t!212918 l!3230))))))

(assert (= (and d!733954 c!417687) b!2590862))

(assert (= (and d!733954 (not c!417687)) b!2590863))

(assert (=> b!2590863 m!2926923))

(assert (=> b!2590863 m!2926913))

(assert (=> b!2590856 d!733954))

(declare-fun d!733956 () Bool)

(declare-fun res!1089390 () Bool)

(declare-fun e!1634369 () Bool)

(assert (=> d!733956 (=> res!1089390 e!1634369)))

(assert (=> d!733956 (= res!1089390 ((_ is Nil!29805) l!3230))))

(assert (=> d!733956 (= (noDuplicate!353 l!3230) e!1634369)))

(declare-fun b!2590872 () Bool)

(declare-fun e!1634370 () Bool)

(assert (=> b!2590872 (= e!1634369 e!1634370)))

(declare-fun res!1089391 () Bool)

(assert (=> b!2590872 (=> (not res!1089391) (not e!1634370))))

(assert (=> b!2590872 (= res!1089391 (not (contains!5355 (t!212918 l!3230) (h!35225 l!3230))))))

(declare-fun b!2590873 () Bool)

(assert (=> b!2590873 (= e!1634370 (noDuplicate!353 (t!212918 l!3230)))))

(assert (= (and d!733956 (not res!1089390)) b!2590872))

(assert (= (and b!2590872 res!1089391) b!2590873))

(assert (=> b!2590872 m!2926917))

(declare-fun m!2926925 () Bool)

(assert (=> b!2590873 m!2926925))

(assert (=> start!250980 d!733956))

(declare-fun d!733960 () Bool)

(declare-fun e!1634375 () Bool)

(assert (=> d!733960 e!1634375))

(declare-fun res!1089396 () Bool)

(assert (=> d!733960 (=> (not res!1089396) (not e!1634375))))

(declare-fun lt!911103 () List!29905)

(assert (=> d!733960 (= res!1089396 (noDuplicate!353 lt!911103))))

(declare-fun choose!15296 ((InoxSet B!2009)) List!29905)

(assert (=> d!733960 (= lt!911103 (choose!15296 lt!911094))))

(assert (=> d!733960 (= (toList!1756 lt!911094) lt!911103)))

(declare-fun b!2590878 () Bool)

(assert (=> b!2590878 (= e!1634375 (= (content!4146 lt!911103) lt!911094))))

(assert (= (and d!733960 res!1089396) b!2590878))

(declare-fun m!2926931 () Bool)

(assert (=> d!733960 m!2926931))

(declare-fun m!2926933 () Bool)

(assert (=> d!733960 m!2926933))

(declare-fun m!2926935 () Bool)

(assert (=> b!2590878 m!2926935))

(assert (=> b!2590851 d!733960))

(declare-fun d!733964 () Bool)

(declare-fun lt!911110 () Int)

(assert (=> d!733964 (>= lt!911110 0)))

(declare-fun e!1634382 () Int)

(assert (=> d!733964 (= lt!911110 e!1634382)))

(declare-fun c!417694 () Bool)

(assert (=> d!733964 (= c!417694 ((_ is Nil!29805) l!3230))))

(assert (=> d!733964 (= (size!23118 l!3230) lt!911110)))

(declare-fun b!2590891 () Bool)

(assert (=> b!2590891 (= e!1634382 0)))

(declare-fun b!2590892 () Bool)

(assert (=> b!2590892 (= e!1634382 (+ 1 (size!23118 (t!212918 l!3230))))))

(assert (= (and d!733964 c!417694) b!2590891))

(assert (= (and d!733964 (not c!417694)) b!2590892))

(assert (=> b!2590892 m!2926909))

(assert (=> b!2590851 d!733964))

(declare-fun d!733970 () Bool)

(declare-fun c!417695 () Bool)

(assert (=> d!733970 (= c!417695 ((_ is Nil!29805) (t!212918 l!3230)))))

(declare-fun e!1634383 () (InoxSet B!2009))

(assert (=> d!733970 (= (content!4146 (t!212918 l!3230)) e!1634383)))

(declare-fun b!2590893 () Bool)

(assert (=> b!2590893 (= e!1634383 ((as const (Array B!2009 Bool)) false))))

(declare-fun b!2590894 () Bool)

(assert (=> b!2590894 (= e!1634383 ((_ map or) (store ((as const (Array B!2009 Bool)) false) (h!35225 (t!212918 l!3230)) true) (content!4146 (t!212918 (t!212918 l!3230)))))))

(assert (= (and d!733970 c!417695) b!2590893))

(assert (= (and d!733970 (not c!417695)) b!2590894))

(declare-fun m!2926939 () Bool)

(assert (=> b!2590894 m!2926939))

(declare-fun m!2926941 () Bool)

(assert (=> b!2590894 m!2926941))

(assert (=> b!2590851 d!733970))

(declare-fun d!733972 () Bool)

(assert (=> d!733972 (= (size!23118 (toList!1756 (content!4146 (t!212918 l!3230)))) (size!23118 (t!212918 l!3230)))))

(declare-fun lt!911116 () Unit!43716)

(declare-fun choose!15297 (List!29905) Unit!43716)

(assert (=> d!733972 (= lt!911116 (choose!15297 (t!212918 l!3230)))))

(assert (=> d!733972 (noDuplicate!353 (t!212918 l!3230))))

(assert (=> d!733972 (= (lemmaNoDuplicateThenContentToListSameSize!46 (t!212918 l!3230)) lt!911116)))

(declare-fun bs!472135 () Bool)

(assert (= bs!472135 d!733972))

(assert (=> bs!472135 m!2926913))

(assert (=> bs!472135 m!2926925))

(assert (=> bs!472135 m!2926909))

(declare-fun m!2926949 () Bool)

(assert (=> bs!472135 m!2926949))

(declare-fun m!2926951 () Bool)

(assert (=> bs!472135 m!2926951))

(declare-fun m!2926953 () Bool)

(assert (=> bs!472135 m!2926953))

(assert (=> bs!472135 m!2926913))

(assert (=> bs!472135 m!2926949))

(assert (=> b!2590851 d!733972))

(declare-fun d!733976 () Bool)

(declare-fun lt!911117 () Int)

(assert (=> d!733976 (>= lt!911117 0)))

(declare-fun e!1634387 () Int)

(assert (=> d!733976 (= lt!911117 e!1634387)))

(declare-fun c!417696 () Bool)

(assert (=> d!733976 (= c!417696 ((_ is Nil!29805) (t!212918 l!3230)))))

(assert (=> d!733976 (= (size!23118 (t!212918 l!3230)) lt!911117)))

(declare-fun b!2590898 () Bool)

(assert (=> b!2590898 (= e!1634387 0)))

(declare-fun b!2590899 () Bool)

(assert (=> b!2590899 (= e!1634387 (+ 1 (size!23118 (t!212918 (t!212918 l!3230)))))))

(assert (= (and d!733976 c!417696) b!2590898))

(assert (= (and d!733976 (not c!417696)) b!2590899))

(declare-fun m!2926955 () Bool)

(assert (=> b!2590899 m!2926955))

(assert (=> b!2590851 d!733976))

(declare-fun d!733978 () Bool)

(declare-fun lt!911120 () Int)

(assert (=> d!733978 (>= lt!911120 0)))

(declare-fun e!1634388 () Int)

(assert (=> d!733978 (= lt!911120 e!1634388)))

(declare-fun c!417697 () Bool)

(assert (=> d!733978 (= c!417697 ((_ is Nil!29805) (toList!1756 lt!911094)))))

(assert (=> d!733978 (= (size!23118 (toList!1756 lt!911094)) lt!911120)))

(declare-fun b!2590900 () Bool)

(assert (=> b!2590900 (= e!1634388 0)))

(declare-fun b!2590901 () Bool)

(assert (=> b!2590901 (= e!1634388 (+ 1 (size!23118 (t!212918 (toList!1756 lt!911094)))))))

(assert (= (and d!733978 c!417697) b!2590900))

(assert (= (and d!733978 (not c!417697)) b!2590901))

(declare-fun m!2926957 () Bool)

(assert (=> b!2590901 m!2926957))

(assert (=> b!2590851 d!733978))

(assert (=> b!2590854 d!733964))

(declare-fun d!733980 () Bool)

(declare-fun lt!911124 () Bool)

(assert (=> d!733980 (= lt!911124 (select (content!4146 (t!212918 l!3230)) (h!35225 l!3230)))))

(declare-fun e!1634396 () Bool)

(assert (=> d!733980 (= lt!911124 e!1634396)))

(declare-fun res!1089404 () Bool)

(assert (=> d!733980 (=> (not res!1089404) (not e!1634396))))

(assert (=> d!733980 (= res!1089404 ((_ is Cons!29805) (t!212918 l!3230)))))

(assert (=> d!733980 (= (contains!5355 (t!212918 l!3230) (h!35225 l!3230)) lt!911124)))

(declare-fun b!2590912 () Bool)

(declare-fun e!1634397 () Bool)

(assert (=> b!2590912 (= e!1634396 e!1634397)))

(declare-fun res!1089405 () Bool)

(assert (=> b!2590912 (=> res!1089405 e!1634397)))

(assert (=> b!2590912 (= res!1089405 (= (h!35225 (t!212918 l!3230)) (h!35225 l!3230)))))

(declare-fun b!2590913 () Bool)

(assert (=> b!2590913 (= e!1634397 (contains!5355 (t!212918 (t!212918 l!3230)) (h!35225 l!3230)))))

(assert (= (and d!733980 res!1089404) b!2590912))

(assert (= (and b!2590912 (not res!1089405)) b!2590913))

(assert (=> d!733980 m!2926913))

(declare-fun m!2926973 () Bool)

(assert (=> d!733980 m!2926973))

(declare-fun m!2926975 () Bool)

(assert (=> b!2590913 m!2926975))

(assert (=> b!2590852 d!733980))

(declare-fun b!2590922 () Bool)

(declare-fun e!1634402 () Bool)

(declare-fun tp!822659 () Bool)

(assert (=> b!2590922 (= e!1634402 (and tp_is_empty!13289 tp!822659))))

(assert (=> b!2590855 (= tp!822656 e!1634402)))

(assert (= (and b!2590855 ((_ is Cons!29805) (t!212918 l!3230))) b!2590922))

(check-sat (not d!733980) (not d!733960) (not b!2590878) (not b!2590892) (not b!2590872) (not b!2590899) tp_is_empty!13289 (not b!2590922) (not b!2590873) (not d!733972) (not b!2590901) (not b!2590894) (not b!2590863) (not b!2590913))
(check-sat)
