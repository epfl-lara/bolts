; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411268 () Bool)

(assert start!411268)

(declare-fun b!4280949 () Bool)

(declare-fun e!2657658 () Bool)

(declare-fun e!2657659 () Bool)

(assert (=> b!4280949 (= e!2657658 e!2657659)))

(declare-fun res!1757183 () Bool)

(assert (=> b!4280949 (=> (not res!1757183) (not e!2657659))))

(declare-datatypes ((T!80172 0))(
  ( (T!80173 (val!15298 Int)) )
))
(declare-datatypes ((List!47507 0))(
  ( (Nil!47383) (Cons!47383 (h!52803 T!80172) (t!354094 List!47507)) )
))
(declare-fun acc!244 () List!47507)

(declare-fun lt!1515021 () List!47507)

(declare-fun i!561 () Int)

(declare-fun drop!2165 (List!47507 Int) List!47507)

(assert (=> b!4280949 (= res!1757183 (= acc!244 (drop!2165 lt!1515021 i!561)))))

(declare-datatypes ((IArray!28735 0))(
  ( (IArray!28736 (innerList!14425 List!47507)) )
))
(declare-fun arr!11 () IArray!28735)

(declare-fun list!17305 (IArray!28735) List!47507)

(assert (=> b!4280949 (= lt!1515021 (list!17305 arr!11))))

(declare-fun b!4280950 () Bool)

(declare-fun res!1757186 () Bool)

(assert (=> b!4280950 (=> (not res!1757186) (not e!2657659))))

(assert (=> b!4280950 (= res!1757186 (> i!561 0))))

(declare-fun b!4280951 () Bool)

(declare-fun e!2657660 () Bool)

(declare-fun size!34716 (List!47507) Int)

(assert (=> b!4280951 (= e!2657660 (< (- i!561 1) (size!34716 lt!1515021)))))

(declare-fun b!4280952 () Bool)

(declare-fun e!2657657 () Bool)

(declare-fun tp!1309387 () Bool)

(assert (=> b!4280952 (= e!2657657 tp!1309387)))

(declare-fun res!1757185 () Bool)

(assert (=> start!411268 (=> (not res!1757185) (not e!2657658))))

(assert (=> start!411268 (= res!1757185 (<= 0 i!561))))

(assert (=> start!411268 e!2657658))

(assert (=> start!411268 true))

(declare-fun inv!62795 (IArray!28735) Bool)

(assert (=> start!411268 (and (inv!62795 arr!11) e!2657657)))

(declare-fun e!2657661 () Bool)

(assert (=> start!411268 e!2657661))

(declare-fun b!4280953 () Bool)

(declare-fun tp_is_empty!23005 () Bool)

(declare-fun tp!1309388 () Bool)

(assert (=> b!4280953 (= e!2657661 (and tp_is_empty!23005 tp!1309388))))

(declare-fun b!4280954 () Bool)

(assert (=> b!4280954 (= e!2657659 (not e!2657660))))

(declare-fun res!1757187 () Bool)

(assert (=> b!4280954 (=> (not res!1757187) (not e!2657660))))

(assert (=> b!4280954 (= res!1757187 (>= (- i!561 1) 0))))

(declare-fun head!9013 (List!47507) T!80172)

(declare-fun apply!10815 (List!47507 Int) T!80172)

(assert (=> b!4280954 (= (head!9013 (drop!2165 lt!1515021 (- i!561 1))) (apply!10815 lt!1515021 (- i!561 1)))))

(declare-datatypes ((Unit!66341 0))(
  ( (Unit!66342) )
))
(declare-fun lt!1515020 () Unit!66341)

(declare-fun lemmaDropApply!1257 (List!47507 Int) Unit!66341)

(assert (=> b!4280954 (= lt!1515020 (lemmaDropApply!1257 lt!1515021 (- i!561 1)))))

(declare-fun b!4280955 () Bool)

(declare-fun res!1757184 () Bool)

(assert (=> b!4280955 (=> (not res!1757184) (not e!2657658))))

(declare-fun size!34717 (IArray!28735) Int)

(assert (=> b!4280955 (= res!1757184 (<= i!561 (size!34717 arr!11)))))

(assert (= (and start!411268 res!1757185) b!4280955))

(assert (= (and b!4280955 res!1757184) b!4280949))

(assert (= (and b!4280949 res!1757183) b!4280950))

(assert (= (and b!4280950 res!1757186) b!4280954))

(assert (= (and b!4280954 res!1757187) b!4280951))

(assert (= start!411268 b!4280952))

(get-info :version)

(assert (= (and start!411268 ((_ is Cons!47383) acc!244)) b!4280953))

(declare-fun m!4878573 () Bool)

(assert (=> b!4280949 m!4878573))

(declare-fun m!4878575 () Bool)

(assert (=> b!4280949 m!4878575))

(declare-fun m!4878577 () Bool)

(assert (=> b!4280951 m!4878577))

(declare-fun m!4878579 () Bool)

(assert (=> start!411268 m!4878579))

(declare-fun m!4878581 () Bool)

(assert (=> b!4280955 m!4878581))

(declare-fun m!4878583 () Bool)

(assert (=> b!4280954 m!4878583))

(assert (=> b!4280954 m!4878583))

(declare-fun m!4878585 () Bool)

(assert (=> b!4280954 m!4878585))

(declare-fun m!4878587 () Bool)

(assert (=> b!4280954 m!4878587))

(declare-fun m!4878589 () Bool)

(assert (=> b!4280954 m!4878589))

(check-sat (not b!4280952) (not b!4280953) tp_is_empty!23005 (not b!4280949) (not b!4280951) (not b!4280954) (not start!411268) (not b!4280955))
(check-sat)
(get-model)

(declare-fun d!1264612 () Bool)

(declare-fun lt!1515024 () Int)

(assert (=> d!1264612 (>= lt!1515024 0)))

(declare-fun e!2657664 () Int)

(assert (=> d!1264612 (= lt!1515024 e!2657664)))

(declare-fun c!729531 () Bool)

(assert (=> d!1264612 (= c!729531 ((_ is Nil!47383) lt!1515021))))

(assert (=> d!1264612 (= (size!34716 lt!1515021) lt!1515024)))

(declare-fun b!4280960 () Bool)

(assert (=> b!4280960 (= e!2657664 0)))

(declare-fun b!4280961 () Bool)

(assert (=> b!4280961 (= e!2657664 (+ 1 (size!34716 (t!354094 lt!1515021))))))

(assert (= (and d!1264612 c!729531) b!4280960))

(assert (= (and d!1264612 (not c!729531)) b!4280961))

(declare-fun m!4878591 () Bool)

(assert (=> b!4280961 m!4878591))

(assert (=> b!4280951 d!1264612))

(declare-fun b!4281007 () Bool)

(declare-fun e!2657692 () List!47507)

(assert (=> b!4281007 (= e!2657692 lt!1515021)))

(declare-fun b!4281008 () Bool)

(declare-fun e!2657690 () Bool)

(declare-fun lt!1515030 () List!47507)

(declare-fun e!2657694 () Int)

(assert (=> b!4281008 (= e!2657690 (= (size!34716 lt!1515030) e!2657694))))

(declare-fun c!729552 () Bool)

(assert (=> b!4281008 (= c!729552 (<= i!561 0))))

(declare-fun b!4281009 () Bool)

(declare-fun e!2657691 () Int)

(assert (=> b!4281009 (= e!2657691 0)))

(declare-fun b!4281010 () Bool)

(assert (=> b!4281010 (= e!2657692 (drop!2165 (t!354094 lt!1515021) (- i!561 1)))))

(declare-fun b!4281011 () Bool)

(declare-fun e!2657693 () List!47507)

(assert (=> b!4281011 (= e!2657693 Nil!47383)))

(declare-fun b!4281012 () Bool)

(assert (=> b!4281012 (= e!2657694 e!2657691)))

(declare-fun c!729555 () Bool)

(declare-fun call!294341 () Int)

(assert (=> b!4281012 (= c!729555 (>= i!561 call!294341))))

(declare-fun b!4281013 () Bool)

(assert (=> b!4281013 (= e!2657691 (- call!294341 i!561))))

(declare-fun b!4281014 () Bool)

(assert (=> b!4281014 (= e!2657694 call!294341)))

(declare-fun b!4281015 () Bool)

(assert (=> b!4281015 (= e!2657693 e!2657692)))

(declare-fun c!729553 () Bool)

(assert (=> b!4281015 (= c!729553 (<= i!561 0))))

(declare-fun bm!294336 () Bool)

(assert (=> bm!294336 (= call!294341 (size!34716 lt!1515021))))

(declare-fun d!1264616 () Bool)

(assert (=> d!1264616 e!2657690))

(declare-fun res!1757193 () Bool)

(assert (=> d!1264616 (=> (not res!1757193) (not e!2657690))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7503 (List!47507) (InoxSet T!80172))

(assert (=> d!1264616 (= res!1757193 (= ((_ map implies) (content!7503 lt!1515030) (content!7503 lt!1515021)) ((as const (InoxSet T!80172)) true)))))

(assert (=> d!1264616 (= lt!1515030 e!2657693)))

(declare-fun c!729554 () Bool)

(assert (=> d!1264616 (= c!729554 ((_ is Nil!47383) lt!1515021))))

(assert (=> d!1264616 (= (drop!2165 lt!1515021 i!561) lt!1515030)))

(assert (= (and d!1264616 c!729554) b!4281011))

(assert (= (and d!1264616 (not c!729554)) b!4281015))

(assert (= (and b!4281015 c!729553) b!4281007))

(assert (= (and b!4281015 (not c!729553)) b!4281010))

(assert (= (and d!1264616 res!1757193) b!4281008))

(assert (= (and b!4281008 c!729552) b!4281014))

(assert (= (and b!4281008 (not c!729552)) b!4281012))

(assert (= (and b!4281012 c!729555) b!4281009))

(assert (= (and b!4281012 (not c!729555)) b!4281013))

(assert (= (or b!4281014 b!4281012 b!4281013) bm!294336))

(declare-fun m!4878601 () Bool)

(assert (=> b!4281008 m!4878601))

(declare-fun m!4878603 () Bool)

(assert (=> b!4281010 m!4878603))

(assert (=> bm!294336 m!4878577))

(declare-fun m!4878605 () Bool)

(assert (=> d!1264616 m!4878605))

(declare-fun m!4878607 () Bool)

(assert (=> d!1264616 m!4878607))

(assert (=> b!4280949 d!1264616))

(declare-fun d!1264620 () Bool)

(assert (=> d!1264620 (= (list!17305 arr!11) (innerList!14425 arr!11))))

(assert (=> b!4280949 d!1264620))

(declare-fun d!1264622 () Bool)

(declare-fun lt!1515036 () Int)

(assert (=> d!1264622 (= lt!1515036 (size!34716 (list!17305 arr!11)))))

(declare-fun choose!26111 (IArray!28735) Int)

(assert (=> d!1264622 (= lt!1515036 (choose!26111 arr!11))))

(assert (=> d!1264622 (= (size!34717 arr!11) lt!1515036)))

(declare-fun bs!602731 () Bool)

(assert (= bs!602731 d!1264622))

(assert (=> bs!602731 m!4878575))

(assert (=> bs!602731 m!4878575))

(declare-fun m!4878617 () Bool)

(assert (=> bs!602731 m!4878617))

(declare-fun m!4878619 () Bool)

(assert (=> bs!602731 m!4878619))

(assert (=> b!4280955 d!1264622))

(declare-fun d!1264626 () Bool)

(assert (=> d!1264626 (= (inv!62795 arr!11) (<= (size!34716 (innerList!14425 arr!11)) 2147483647))))

(declare-fun bs!602732 () Bool)

(assert (= bs!602732 d!1264626))

(declare-fun m!4878621 () Bool)

(assert (=> bs!602732 m!4878621))

(assert (=> start!411268 d!1264626))

(declare-fun d!1264628 () Bool)

(assert (=> d!1264628 (= (head!9013 (drop!2165 lt!1515021 (- i!561 1))) (h!52803 (drop!2165 lt!1515021 (- i!561 1))))))

(assert (=> b!4280954 d!1264628))

(declare-fun b!4281025 () Bool)

(declare-fun e!2657703 () List!47507)

(assert (=> b!4281025 (= e!2657703 lt!1515021)))

(declare-fun b!4281026 () Bool)

(declare-fun e!2657701 () Bool)

(declare-fun lt!1515037 () List!47507)

(declare-fun e!2657705 () Int)

(assert (=> b!4281026 (= e!2657701 (= (size!34716 lt!1515037) e!2657705))))

(declare-fun c!729559 () Bool)

(assert (=> b!4281026 (= c!729559 (<= (- i!561 1) 0))))

(declare-fun b!4281027 () Bool)

(declare-fun e!2657702 () Int)

(assert (=> b!4281027 (= e!2657702 0)))

(declare-fun b!4281028 () Bool)

(assert (=> b!4281028 (= e!2657703 (drop!2165 (t!354094 lt!1515021) (- (- i!561 1) 1)))))

(declare-fun b!4281029 () Bool)

(declare-fun e!2657704 () List!47507)

(assert (=> b!4281029 (= e!2657704 Nil!47383)))

(declare-fun b!4281030 () Bool)

(assert (=> b!4281030 (= e!2657705 e!2657702)))

(declare-fun c!729562 () Bool)

(declare-fun call!294342 () Int)

(assert (=> b!4281030 (= c!729562 (>= (- i!561 1) call!294342))))

(declare-fun b!4281031 () Bool)

(assert (=> b!4281031 (= e!2657702 (- call!294342 (- i!561 1)))))

(declare-fun b!4281032 () Bool)

(assert (=> b!4281032 (= e!2657705 call!294342)))

(declare-fun b!4281033 () Bool)

(assert (=> b!4281033 (= e!2657704 e!2657703)))

(declare-fun c!729560 () Bool)

(assert (=> b!4281033 (= c!729560 (<= (- i!561 1) 0))))

(declare-fun bm!294337 () Bool)

(assert (=> bm!294337 (= call!294342 (size!34716 lt!1515021))))

(declare-fun d!1264630 () Bool)

(assert (=> d!1264630 e!2657701))

(declare-fun res!1757197 () Bool)

(assert (=> d!1264630 (=> (not res!1757197) (not e!2657701))))

(assert (=> d!1264630 (= res!1757197 (= ((_ map implies) (content!7503 lt!1515037) (content!7503 lt!1515021)) ((as const (InoxSet T!80172)) true)))))

(assert (=> d!1264630 (= lt!1515037 e!2657704)))

(declare-fun c!729561 () Bool)

(assert (=> d!1264630 (= c!729561 ((_ is Nil!47383) lt!1515021))))

(assert (=> d!1264630 (= (drop!2165 lt!1515021 (- i!561 1)) lt!1515037)))

(assert (= (and d!1264630 c!729561) b!4281029))

(assert (= (and d!1264630 (not c!729561)) b!4281033))

(assert (= (and b!4281033 c!729560) b!4281025))

(assert (= (and b!4281033 (not c!729560)) b!4281028))

(assert (= (and d!1264630 res!1757197) b!4281026))

(assert (= (and b!4281026 c!729559) b!4281032))

(assert (= (and b!4281026 (not c!729559)) b!4281030))

(assert (= (and b!4281030 c!729562) b!4281027))

(assert (= (and b!4281030 (not c!729562)) b!4281031))

(assert (= (or b!4281032 b!4281030 b!4281031) bm!294337))

(declare-fun m!4878623 () Bool)

(assert (=> b!4281026 m!4878623))

(declare-fun m!4878625 () Bool)

(assert (=> b!4281028 m!4878625))

(assert (=> bm!294337 m!4878577))

(declare-fun m!4878627 () Bool)

(assert (=> d!1264630 m!4878627))

(assert (=> d!1264630 m!4878607))

(assert (=> b!4280954 d!1264630))

(declare-fun d!1264632 () Bool)

(declare-fun lt!1515046 () T!80172)

(declare-fun contains!9792 (List!47507 T!80172) Bool)

(assert (=> d!1264632 (contains!9792 lt!1515021 lt!1515046)))

(declare-fun e!2657713 () T!80172)

(assert (=> d!1264632 (= lt!1515046 e!2657713)))

(declare-fun c!729565 () Bool)

(assert (=> d!1264632 (= c!729565 (= (- i!561 1) 0))))

(declare-fun e!2657714 () Bool)

(assert (=> d!1264632 e!2657714))

(declare-fun res!1757203 () Bool)

(assert (=> d!1264632 (=> (not res!1757203) (not e!2657714))))

(assert (=> d!1264632 (= res!1757203 (<= 0 (- i!561 1)))))

(assert (=> d!1264632 (= (apply!10815 lt!1515021 (- i!561 1)) lt!1515046)))

(declare-fun b!4281043 () Bool)

(assert (=> b!4281043 (= e!2657714 (< (- i!561 1) (size!34716 lt!1515021)))))

(declare-fun b!4281044 () Bool)

(assert (=> b!4281044 (= e!2657713 (head!9013 lt!1515021))))

(declare-fun b!4281045 () Bool)

(declare-fun tail!6876 (List!47507) List!47507)

(assert (=> b!4281045 (= e!2657713 (apply!10815 (tail!6876 lt!1515021) (- (- i!561 1) 1)))))

(assert (= (and d!1264632 res!1757203) b!4281043))

(assert (= (and d!1264632 c!729565) b!4281044))

(assert (= (and d!1264632 (not c!729565)) b!4281045))

(declare-fun m!4878637 () Bool)

(assert (=> d!1264632 m!4878637))

(assert (=> b!4281043 m!4878577))

(declare-fun m!4878639 () Bool)

(assert (=> b!4281044 m!4878639))

(declare-fun m!4878641 () Bool)

(assert (=> b!4281045 m!4878641))

(assert (=> b!4281045 m!4878641))

(declare-fun m!4878643 () Bool)

(assert (=> b!4281045 m!4878643))

(assert (=> b!4280954 d!1264632))

(declare-fun d!1264640 () Bool)

(assert (=> d!1264640 (= (head!9013 (drop!2165 lt!1515021 (- i!561 1))) (apply!10815 lt!1515021 (- i!561 1)))))

(declare-fun lt!1515053 () Unit!66341)

(declare-fun choose!26114 (List!47507 Int) Unit!66341)

(assert (=> d!1264640 (= lt!1515053 (choose!26114 lt!1515021 (- i!561 1)))))

(declare-fun e!2657729 () Bool)

(assert (=> d!1264640 e!2657729))

(declare-fun res!1757207 () Bool)

(assert (=> d!1264640 (=> (not res!1757207) (not e!2657729))))

(assert (=> d!1264640 (= res!1757207 (>= (- i!561 1) 0))))

(assert (=> d!1264640 (= (lemmaDropApply!1257 lt!1515021 (- i!561 1)) lt!1515053)))

(declare-fun b!4281069 () Bool)

(assert (=> b!4281069 (= e!2657729 (< (- i!561 1) (size!34716 lt!1515021)))))

(assert (= (and d!1264640 res!1757207) b!4281069))

(assert (=> d!1264640 m!4878583))

(assert (=> d!1264640 m!4878583))

(assert (=> d!1264640 m!4878585))

(assert (=> d!1264640 m!4878587))

(declare-fun m!4878653 () Bool)

(assert (=> d!1264640 m!4878653))

(assert (=> b!4281069 m!4878577))

(assert (=> b!4280954 d!1264640))

(declare-fun b!4281074 () Bool)

(declare-fun e!2657732 () Bool)

(declare-fun tp!1309395 () Bool)

(assert (=> b!4281074 (= e!2657732 (and tp_is_empty!23005 tp!1309395))))

(assert (=> b!4280952 (= tp!1309387 e!2657732)))

(assert (= (and b!4280952 ((_ is Cons!47383) (innerList!14425 arr!11))) b!4281074))

(declare-fun b!4281075 () Bool)

(declare-fun e!2657733 () Bool)

(declare-fun tp!1309396 () Bool)

(assert (=> b!4281075 (= e!2657733 (and tp_is_empty!23005 tp!1309396))))

(assert (=> b!4280953 (= tp!1309388 e!2657733)))

(assert (= (and b!4280953 ((_ is Cons!47383) (t!354094 acc!244))) b!4281075))

(check-sat (not d!1264640) (not d!1264626) (not b!4281045) (not bm!294336) (not b!4281069) tp_is_empty!23005 (not bm!294337) (not d!1264630) (not b!4281074) (not b!4281010) (not b!4280961) (not b!4281008) (not b!4281026) (not b!4281043) (not b!4281028) (not d!1264632) (not b!4281075) (not b!4281044) (not d!1264616) (not d!1264622))
(check-sat)
