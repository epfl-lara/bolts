; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534018 () Bool)

(assert start!534018)

(declare-fun res!2150426 () Bool)

(declare-fun e!3152421 () Bool)

(assert (=> start!534018 (=> (not res!2150426) (not e!3152421))))

(declare-fun i!658 () Int)

(assert (=> start!534018 (= res!2150426 (<= 0 i!658))))

(assert (=> start!534018 e!3152421))

(assert (=> start!534018 true))

(declare-fun e!3152420 () Bool)

(assert (=> start!534018 e!3152420))

(declare-fun b!5049039 () Bool)

(declare-fun e!3152422 () Bool)

(assert (=> b!5049039 (= e!3152421 e!3152422)))

(declare-fun res!2150427 () Bool)

(assert (=> b!5049039 (=> (not res!2150427) (not e!3152422))))

(declare-datatypes ((T!104516 0))(
  ( (T!104517 (val!23562 Int)) )
))
(declare-datatypes ((List!58472 0))(
  ( (Nil!58348) (Cons!58348 (h!64796 T!104516) (t!371111 List!58472)) )
))
(declare-fun l!2763 () List!58472)

(declare-fun lt!2086211 () Int)

(get-info :version)

(assert (=> b!5049039 (= res!2150427 (and (<= i!658 lt!2086211) ((_ is Nil!58348) l!2763)))))

(declare-fun size!38973 (List!58472) Int)

(assert (=> b!5049039 (= lt!2086211 (size!38973 l!2763))))

(declare-fun b!5049040 () Bool)

(declare-fun drop!2672 (List!58472 Int) List!58472)

(declare-fun slice!889 (List!58472 Int Int) List!58472)

(assert (=> b!5049040 (= e!3152422 (not (= (drop!2672 l!2763 i!658) (slice!889 l!2763 i!658 lt!2086211))))))

(declare-fun b!5049041 () Bool)

(declare-fun tp_is_empty!36879 () Bool)

(declare-fun tp!1412011 () Bool)

(assert (=> b!5049041 (= e!3152420 (and tp_is_empty!36879 tp!1412011))))

(assert (= (and start!534018 res!2150426) b!5049039))

(assert (= (and b!5049039 res!2150427) b!5049040))

(assert (= (and start!534018 ((_ is Cons!58348) l!2763)) b!5049041))

(declare-fun m!6084024 () Bool)

(assert (=> b!5049039 m!6084024))

(declare-fun m!6084026 () Bool)

(assert (=> b!5049040 m!6084026))

(declare-fun m!6084028 () Bool)

(assert (=> b!5049040 m!6084028))

(check-sat (not b!5049040) (not b!5049039) (not b!5049041) tp_is_empty!36879)
(check-sat)
(get-model)

(declare-fun bm!351917 () Bool)

(declare-fun call!351922 () Int)

(assert (=> bm!351917 (= call!351922 (size!38973 l!2763))))

(declare-fun b!5049079 () Bool)

(declare-fun e!3152445 () Int)

(declare-fun e!3152449 () Int)

(assert (=> b!5049079 (= e!3152445 e!3152449)))

(declare-fun c!865889 () Bool)

(assert (=> b!5049079 (= c!865889 (>= i!658 call!351922))))

(declare-fun b!5049080 () Bool)

(assert (=> b!5049080 (= e!3152449 0)))

(declare-fun b!5049082 () Bool)

(declare-fun e!3152447 () List!58472)

(assert (=> b!5049082 (= e!3152447 l!2763)))

(declare-fun b!5049084 () Bool)

(assert (=> b!5049084 (= e!3152447 (drop!2672 (t!371111 l!2763) (- i!658 1)))))

(declare-fun b!5049086 () Bool)

(declare-fun e!3152451 () List!58472)

(assert (=> b!5049086 (= e!3152451 Nil!58348)))

(declare-fun b!5049088 () Bool)

(declare-fun e!3152450 () Bool)

(declare-fun lt!2086217 () List!58472)

(assert (=> b!5049088 (= e!3152450 (= (size!38973 lt!2086217) e!3152445))))

(declare-fun c!865892 () Bool)

(assert (=> b!5049088 (= c!865892 (<= i!658 0))))

(declare-fun b!5049090 () Bool)

(assert (=> b!5049090 (= e!3152449 (- call!351922 i!658))))

(declare-fun d!1624746 () Bool)

(assert (=> d!1624746 e!3152450))

(declare-fun res!2150433 () Bool)

(assert (=> d!1624746 (=> (not res!2150433) (not e!3152450))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10378 (List!58472) (InoxSet T!104516))

(assert (=> d!1624746 (= res!2150433 (= ((_ map implies) (content!10378 lt!2086217) (content!10378 l!2763)) ((as const (InoxSet T!104516)) true)))))

(assert (=> d!1624746 (= lt!2086217 e!3152451)))

(declare-fun c!865895 () Bool)

(assert (=> d!1624746 (= c!865895 ((_ is Nil!58348) l!2763))))

(assert (=> d!1624746 (= (drop!2672 l!2763 i!658) lt!2086217)))

(declare-fun b!5049092 () Bool)

(assert (=> b!5049092 (= e!3152451 e!3152447)))

(declare-fun c!865890 () Bool)

(assert (=> b!5049092 (= c!865890 (<= i!658 0))))

(declare-fun b!5049094 () Bool)

(assert (=> b!5049094 (= e!3152445 call!351922)))

(assert (= (and d!1624746 c!865895) b!5049086))

(assert (= (and d!1624746 (not c!865895)) b!5049092))

(assert (= (and b!5049092 c!865890) b!5049082))

(assert (= (and b!5049092 (not c!865890)) b!5049084))

(assert (= (and d!1624746 res!2150433) b!5049088))

(assert (= (and b!5049088 c!865892) b!5049094))

(assert (= (and b!5049088 (not c!865892)) b!5049079))

(assert (= (and b!5049079 c!865889) b!5049080))

(assert (= (and b!5049079 (not c!865889)) b!5049090))

(assert (= (or b!5049094 b!5049079 b!5049090) bm!351917))

(assert (=> bm!351917 m!6084024))

(declare-fun m!6084032 () Bool)

(assert (=> b!5049084 m!6084032))

(declare-fun m!6084036 () Bool)

(assert (=> b!5049088 m!6084036))

(declare-fun m!6084040 () Bool)

(assert (=> d!1624746 m!6084040))

(declare-fun m!6084044 () Bool)

(assert (=> d!1624746 m!6084044))

(assert (=> b!5049040 d!1624746))

(declare-fun d!1624750 () Bool)

(declare-fun take!858 (List!58472 Int) List!58472)

(assert (=> d!1624750 (= (slice!889 l!2763 i!658 lt!2086211) (take!858 (drop!2672 l!2763 i!658) (- lt!2086211 i!658)))))

(declare-fun bs!1189209 () Bool)

(assert (= bs!1189209 d!1624750))

(assert (=> bs!1189209 m!6084026))

(assert (=> bs!1189209 m!6084026))

(declare-fun m!6084048 () Bool)

(assert (=> bs!1189209 m!6084048))

(assert (=> b!5049040 d!1624750))

(declare-fun d!1624754 () Bool)

(declare-fun lt!2086223 () Int)

(assert (=> d!1624754 (>= lt!2086223 0)))

(declare-fun e!3152458 () Int)

(assert (=> d!1624754 (= lt!2086223 e!3152458)))

(declare-fun c!865901 () Bool)

(assert (=> d!1624754 (= c!865901 ((_ is Nil!58348) l!2763))))

(assert (=> d!1624754 (= (size!38973 l!2763) lt!2086223)))

(declare-fun b!5049106 () Bool)

(assert (=> b!5049106 (= e!3152458 0)))

(declare-fun b!5049107 () Bool)

(assert (=> b!5049107 (= e!3152458 (+ 1 (size!38973 (t!371111 l!2763))))))

(assert (= (and d!1624754 c!865901) b!5049106))

(assert (= (and d!1624754 (not c!865901)) b!5049107))

(declare-fun m!6084050 () Bool)

(assert (=> b!5049107 m!6084050))

(assert (=> b!5049039 d!1624754))

(declare-fun b!5049117 () Bool)

(declare-fun e!3152464 () Bool)

(declare-fun tp!1412017 () Bool)

(assert (=> b!5049117 (= e!3152464 (and tp_is_empty!36879 tp!1412017))))

(assert (=> b!5049041 (= tp!1412011 e!3152464)))

(assert (= (and b!5049041 ((_ is Cons!58348) (t!371111 l!2763))) b!5049117))

(check-sat (not d!1624746) (not b!5049107) (not bm!351917) (not b!5049117) (not b!5049084) (not d!1624750) (not b!5049088) tp_is_empty!36879)
(check-sat)
(get-model)

(declare-fun d!1624756 () Bool)

(declare-fun c!865904 () Bool)

(assert (=> d!1624756 (= c!865904 ((_ is Nil!58348) lt!2086217))))

(declare-fun e!3152467 () (InoxSet T!104516))

(assert (=> d!1624756 (= (content!10378 lt!2086217) e!3152467)))

(declare-fun b!5049122 () Bool)

(assert (=> b!5049122 (= e!3152467 ((as const (Array T!104516 Bool)) false))))

(declare-fun b!5049123 () Bool)

(assert (=> b!5049123 (= e!3152467 ((_ map or) (store ((as const (Array T!104516 Bool)) false) (h!64796 lt!2086217) true) (content!10378 (t!371111 lt!2086217))))))

(assert (= (and d!1624756 c!865904) b!5049122))

(assert (= (and d!1624756 (not c!865904)) b!5049123))

(declare-fun m!6084054 () Bool)

(assert (=> b!5049123 m!6084054))

(declare-fun m!6084056 () Bool)

(assert (=> b!5049123 m!6084056))

(assert (=> d!1624746 d!1624756))

(declare-fun d!1624758 () Bool)

(declare-fun c!865905 () Bool)

(assert (=> d!1624758 (= c!865905 ((_ is Nil!58348) l!2763))))

(declare-fun e!3152468 () (InoxSet T!104516))

(assert (=> d!1624758 (= (content!10378 l!2763) e!3152468)))

(declare-fun b!5049124 () Bool)

(assert (=> b!5049124 (= e!3152468 ((as const (Array T!104516 Bool)) false))))

(declare-fun b!5049125 () Bool)

(assert (=> b!5049125 (= e!3152468 ((_ map or) (store ((as const (Array T!104516 Bool)) false) (h!64796 l!2763) true) (content!10378 (t!371111 l!2763))))))

(assert (= (and d!1624758 c!865905) b!5049124))

(assert (= (and d!1624758 (not c!865905)) b!5049125))

(declare-fun m!6084058 () Bool)

(assert (=> b!5049125 m!6084058))

(declare-fun m!6084060 () Bool)

(assert (=> b!5049125 m!6084060))

(assert (=> d!1624746 d!1624758))

(declare-fun b!5049140 () Bool)

(declare-fun e!3152479 () List!58472)

(assert (=> b!5049140 (= e!3152479 Nil!58348)))

(declare-fun b!5049141 () Bool)

(declare-fun e!3152477 () Int)

(assert (=> b!5049141 (= e!3152477 0)))

(declare-fun b!5049142 () Bool)

(declare-fun e!3152480 () Int)

(assert (=> b!5049142 (= e!3152480 (- lt!2086211 i!658))))

(declare-fun b!5049143 () Bool)

(declare-fun e!3152478 () Bool)

(declare-fun lt!2086226 () List!58472)

(assert (=> b!5049143 (= e!3152478 (= (size!38973 lt!2086226) e!3152477))))

(declare-fun c!865912 () Bool)

(assert (=> b!5049143 (= c!865912 (<= (- lt!2086211 i!658) 0))))

(declare-fun d!1624760 () Bool)

(assert (=> d!1624760 e!3152478))

(declare-fun res!2150436 () Bool)

(assert (=> d!1624760 (=> (not res!2150436) (not e!3152478))))

(assert (=> d!1624760 (= res!2150436 (= ((_ map implies) (content!10378 lt!2086226) (content!10378 (drop!2672 l!2763 i!658))) ((as const (InoxSet T!104516)) true)))))

(assert (=> d!1624760 (= lt!2086226 e!3152479)))

(declare-fun c!865913 () Bool)

(assert (=> d!1624760 (= c!865913 (or ((_ is Nil!58348) (drop!2672 l!2763 i!658)) (<= (- lt!2086211 i!658) 0)))))

(assert (=> d!1624760 (= (take!858 (drop!2672 l!2763 i!658) (- lt!2086211 i!658)) lt!2086226)))

(declare-fun b!5049144 () Bool)

(assert (=> b!5049144 (= e!3152480 (size!38973 (drop!2672 l!2763 i!658)))))

(declare-fun b!5049145 () Bool)

(assert (=> b!5049145 (= e!3152479 (Cons!58348 (h!64796 (drop!2672 l!2763 i!658)) (take!858 (t!371111 (drop!2672 l!2763 i!658)) (- (- lt!2086211 i!658) 1))))))

(declare-fun b!5049146 () Bool)

(assert (=> b!5049146 (= e!3152477 e!3152480)))

(declare-fun c!865914 () Bool)

(assert (=> b!5049146 (= c!865914 (>= (- lt!2086211 i!658) (size!38973 (drop!2672 l!2763 i!658))))))

(assert (= (and d!1624760 c!865913) b!5049140))

(assert (= (and d!1624760 (not c!865913)) b!5049145))

(assert (= (and d!1624760 res!2150436) b!5049143))

(assert (= (and b!5049143 c!865912) b!5049141))

(assert (= (and b!5049143 (not c!865912)) b!5049146))

(assert (= (and b!5049146 c!865914) b!5049144))

(assert (= (and b!5049146 (not c!865914)) b!5049142))

(declare-fun m!6084062 () Bool)

(assert (=> d!1624760 m!6084062))

(assert (=> d!1624760 m!6084026))

(declare-fun m!6084064 () Bool)

(assert (=> d!1624760 m!6084064))

(assert (=> b!5049146 m!6084026))

(declare-fun m!6084066 () Bool)

(assert (=> b!5049146 m!6084066))

(declare-fun m!6084068 () Bool)

(assert (=> b!5049145 m!6084068))

(declare-fun m!6084070 () Bool)

(assert (=> b!5049143 m!6084070))

(assert (=> b!5049144 m!6084026))

(assert (=> b!5049144 m!6084066))

(assert (=> d!1624750 d!1624760))

(assert (=> d!1624750 d!1624746))

(declare-fun d!1624762 () Bool)

(declare-fun lt!2086227 () Int)

(assert (=> d!1624762 (>= lt!2086227 0)))

(declare-fun e!3152481 () Int)

(assert (=> d!1624762 (= lt!2086227 e!3152481)))

(declare-fun c!865915 () Bool)

(assert (=> d!1624762 (= c!865915 ((_ is Nil!58348) lt!2086217))))

(assert (=> d!1624762 (= (size!38973 lt!2086217) lt!2086227)))

(declare-fun b!5049147 () Bool)

(assert (=> b!5049147 (= e!3152481 0)))

(declare-fun b!5049148 () Bool)

(assert (=> b!5049148 (= e!3152481 (+ 1 (size!38973 (t!371111 lt!2086217))))))

(assert (= (and d!1624762 c!865915) b!5049147))

(assert (= (and d!1624762 (not c!865915)) b!5049148))

(declare-fun m!6084072 () Bool)

(assert (=> b!5049148 m!6084072))

(assert (=> b!5049088 d!1624762))

(assert (=> bm!351917 d!1624754))

(declare-fun d!1624766 () Bool)

(declare-fun lt!2086228 () Int)

(assert (=> d!1624766 (>= lt!2086228 0)))

(declare-fun e!3152482 () Int)

(assert (=> d!1624766 (= lt!2086228 e!3152482)))

(declare-fun c!865916 () Bool)

(assert (=> d!1624766 (= c!865916 ((_ is Nil!58348) (t!371111 l!2763)))))

(assert (=> d!1624766 (= (size!38973 (t!371111 l!2763)) lt!2086228)))

(declare-fun b!5049149 () Bool)

(assert (=> b!5049149 (= e!3152482 0)))

(declare-fun b!5049150 () Bool)

(assert (=> b!5049150 (= e!3152482 (+ 1 (size!38973 (t!371111 (t!371111 l!2763)))))))

(assert (= (and d!1624766 c!865916) b!5049149))

(assert (= (and d!1624766 (not c!865916)) b!5049150))

(declare-fun m!6084074 () Bool)

(assert (=> b!5049150 m!6084074))

(assert (=> b!5049107 d!1624766))

(declare-fun bm!351919 () Bool)

(declare-fun call!351924 () Int)

(assert (=> bm!351919 (= call!351924 (size!38973 (t!371111 l!2763)))))

(declare-fun b!5049151 () Bool)

(declare-fun e!3152483 () Int)

(declare-fun e!3152485 () Int)

(assert (=> b!5049151 (= e!3152483 e!3152485)))

(declare-fun c!865917 () Bool)

(assert (=> b!5049151 (= c!865917 (>= (- i!658 1) call!351924))))

(declare-fun b!5049152 () Bool)

(assert (=> b!5049152 (= e!3152485 0)))

(declare-fun b!5049153 () Bool)

(declare-fun e!3152484 () List!58472)

(assert (=> b!5049153 (= e!3152484 (t!371111 l!2763))))

(declare-fun b!5049154 () Bool)

(assert (=> b!5049154 (= e!3152484 (drop!2672 (t!371111 (t!371111 l!2763)) (- (- i!658 1) 1)))))

(declare-fun b!5049155 () Bool)

(declare-fun e!3152487 () List!58472)

(assert (=> b!5049155 (= e!3152487 Nil!58348)))

(declare-fun b!5049156 () Bool)

(declare-fun e!3152486 () Bool)

(declare-fun lt!2086229 () List!58472)

(assert (=> b!5049156 (= e!3152486 (= (size!38973 lt!2086229) e!3152483))))

(declare-fun c!865919 () Bool)

(assert (=> b!5049156 (= c!865919 (<= (- i!658 1) 0))))

(declare-fun b!5049157 () Bool)

(assert (=> b!5049157 (= e!3152485 (- call!351924 (- i!658 1)))))

(declare-fun d!1624768 () Bool)

(assert (=> d!1624768 e!3152486))

(declare-fun res!2150437 () Bool)

(assert (=> d!1624768 (=> (not res!2150437) (not e!3152486))))

(assert (=> d!1624768 (= res!2150437 (= ((_ map implies) (content!10378 lt!2086229) (content!10378 (t!371111 l!2763))) ((as const (InoxSet T!104516)) true)))))

(assert (=> d!1624768 (= lt!2086229 e!3152487)))

(declare-fun c!865920 () Bool)

(assert (=> d!1624768 (= c!865920 ((_ is Nil!58348) (t!371111 l!2763)))))

(assert (=> d!1624768 (= (drop!2672 (t!371111 l!2763) (- i!658 1)) lt!2086229)))

(declare-fun b!5049158 () Bool)

(assert (=> b!5049158 (= e!3152487 e!3152484)))

(declare-fun c!865918 () Bool)

(assert (=> b!5049158 (= c!865918 (<= (- i!658 1) 0))))

(declare-fun b!5049159 () Bool)

(assert (=> b!5049159 (= e!3152483 call!351924)))

(assert (= (and d!1624768 c!865920) b!5049155))

(assert (= (and d!1624768 (not c!865920)) b!5049158))

(assert (= (and b!5049158 c!865918) b!5049153))

(assert (= (and b!5049158 (not c!865918)) b!5049154))

(assert (= (and d!1624768 res!2150437) b!5049156))

(assert (= (and b!5049156 c!865919) b!5049159))

(assert (= (and b!5049156 (not c!865919)) b!5049151))

(assert (= (and b!5049151 c!865917) b!5049152))

(assert (= (and b!5049151 (not c!865917)) b!5049157))

(assert (= (or b!5049159 b!5049151 b!5049157) bm!351919))

(assert (=> bm!351919 m!6084050))

(declare-fun m!6084076 () Bool)

(assert (=> b!5049154 m!6084076))

(declare-fun m!6084078 () Bool)

(assert (=> b!5049156 m!6084078))

(declare-fun m!6084080 () Bool)

(assert (=> d!1624768 m!6084080))

(assert (=> d!1624768 m!6084060))

(assert (=> b!5049084 d!1624768))

(declare-fun b!5049160 () Bool)

(declare-fun e!3152488 () Bool)

(declare-fun tp!1412018 () Bool)

(assert (=> b!5049160 (= e!3152488 (and tp_is_empty!36879 tp!1412018))))

(assert (=> b!5049117 (= tp!1412017 e!3152488)))

(assert (= (and b!5049117 ((_ is Cons!58348) (t!371111 (t!371111 l!2763)))) b!5049160))

(check-sat (not b!5049144) (not b!5049143) (not b!5049146) (not b!5049125) (not b!5049156) (not b!5049154) (not bm!351919) (not b!5049160) (not b!5049123) (not d!1624768) (not b!5049150) (not d!1624760) (not b!5049148) tp_is_empty!36879 (not b!5049145))
(check-sat)
