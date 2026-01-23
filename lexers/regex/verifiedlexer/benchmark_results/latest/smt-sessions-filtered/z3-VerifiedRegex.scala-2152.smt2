; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107532 () Bool)

(assert start!107532)

(declare-fun b!1207646 () Bool)

(declare-datatypes ((T!22342 0))(
  ( (T!22343 (val!3968 Int)) )
))
(declare-datatypes ((List!12147 0))(
  ( (Nil!12123) (Cons!12123 (h!17524 T!22342) (t!112563 List!12147)) )
))
(declare-fun e!774629 () List!12147)

(declare-fun call!84320 () List!12147)

(declare-fun call!84317 () List!12147)

(declare-fun ++!3145 (List!12147 List!12147) List!12147)

(assert (=> b!1207646 (= e!774629 (++!3145 call!84320 call!84317))))

(declare-fun b!1207647 () Bool)

(declare-fun e!774628 () Bool)

(declare-fun lt!412766 () List!12147)

(declare-fun e!774623 () List!12147)

(assert (=> b!1207647 (= e!774628 (= lt!412766 e!774623))))

(declare-fun c!202092 () Bool)

(declare-fun until!61 () Int)

(declare-fun lt!412765 () Int)

(assert (=> b!1207647 (= c!202092 (<= (- until!61 1) lt!412765))))

(declare-fun b!1207648 () Bool)

(declare-fun e!774632 () Bool)

(declare-fun e!774626 () Bool)

(assert (=> b!1207648 (= e!774632 e!774626)))

(declare-fun res!543291 () Bool)

(assert (=> b!1207648 (=> (not res!543291) (not e!774626))))

(declare-fun l!2744 () List!12147)

(declare-fun lt!412768 () Int)

(declare-fun r!2028 () List!12147)

(declare-fun lt!412769 () Int)

(assert (=> b!1207648 (= res!543291 (and (<= until!61 (+ lt!412769 lt!412768)) (not (= l!2744 Nil!12123)) (not (= r!2028 Nil!12123)) (not (= until!61 0))))))

(declare-fun size!9663 (List!12147) Int)

(assert (=> b!1207648 (= lt!412768 (size!9663 r!2028))))

(assert (=> b!1207648 (= lt!412769 (size!9663 l!2744))))

(declare-fun from!613 () Int)

(declare-fun c!202094 () Bool)

(declare-fun bm!84312 () Bool)

(declare-fun slice!523 (List!12147 Int Int) List!12147)

(assert (=> bm!84312 (= call!84317 (slice!523 r!2028 (ite c!202094 (- from!613 lt!412769) 0) (- until!61 lt!412769)))))

(declare-fun b!1207649 () Bool)

(declare-fun e!774630 () Bool)

(declare-fun tp_is_empty!6139 () Bool)

(declare-fun tp!342120 () Bool)

(assert (=> b!1207649 (= e!774630 (and tp_is_empty!6139 tp!342120))))

(declare-fun b!1207650 () Bool)

(declare-fun e!774631 () Bool)

(declare-fun lt!412770 () List!12147)

(assert (=> b!1207650 (= e!774631 (= lt!412770 call!84317))))

(declare-fun b!1207651 () Bool)

(declare-fun e!774627 () Bool)

(declare-fun tp!342121 () Bool)

(assert (=> b!1207651 (= e!774627 (and tp_is_empty!6139 tp!342121))))

(declare-fun b!1207652 () Bool)

(assert (=> b!1207652 (= e!774629 call!84320)))

(declare-fun b!1207653 () Bool)

(declare-fun call!84318 () List!12147)

(assert (=> b!1207653 (= e!774623 call!84318)))

(declare-fun b!1207654 () Bool)

(assert (=> b!1207654 (= e!774631 (= lt!412770 e!774629))))

(declare-fun c!202093 () Bool)

(assert (=> b!1207654 (= c!202093 (<= until!61 lt!412769))))

(declare-fun b!1207655 () Bool)

(declare-fun call!84319 () List!12147)

(assert (=> b!1207655 (= e!774628 (= lt!412766 call!84319))))

(declare-fun bm!84314 () Bool)

(declare-fun c!202091 () Bool)

(assert (=> bm!84314 (= call!84319 (slice!523 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0) (- (- until!61 1) lt!412765)))))

(declare-fun b!1207656 () Bool)

(declare-fun e!774624 () Bool)

(assert (=> b!1207656 (= e!774624 (not e!774631))))

(assert (=> b!1207656 (= c!202094 (<= lt!412769 from!613))))

(declare-fun lt!412764 () List!12147)

(assert (=> b!1207656 (= lt!412770 (slice!523 lt!412764 from!613 until!61))))

(assert (=> b!1207656 e!774628))

(assert (=> b!1207656 (= c!202091 (<= lt!412765 (- from!613 1)))))

(declare-fun lt!412772 () List!12147)

(assert (=> b!1207656 (= lt!412766 (slice!523 lt!412772 (- from!613 1) (- until!61 1)))))

(declare-datatypes ((Unit!18516 0))(
  ( (Unit!18517) )
))
(declare-fun lt!412771 () Unit!18516)

(declare-fun lt!412767 () List!12147)

(declare-fun sliceLemma!69 (List!12147 List!12147 Int Int) Unit!18516)

(assert (=> b!1207656 (= lt!412771 (sliceLemma!69 lt!412767 r!2028 (- from!613 1) (- until!61 1)))))

(declare-fun bm!84313 () Bool)

(assert (=> bm!84313 (= call!84320 (slice!523 l!2744 from!613 (ite c!202093 until!61 lt!412769)))))

(declare-fun res!543292 () Bool)

(assert (=> start!107532 (=> (not res!543292) (not e!774632))))

(assert (=> start!107532 (= res!543292 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107532 e!774632))

(assert (=> start!107532 true))

(assert (=> start!107532 e!774630))

(assert (=> start!107532 e!774627))

(declare-fun bm!84315 () Bool)

(assert (=> bm!84315 (= call!84318 (slice!523 lt!412767 (- from!613 1) (ite c!202092 (- until!61 1) lt!412765)))))

(declare-fun b!1207657 () Bool)

(declare-fun e!774625 () Bool)

(assert (=> b!1207657 (= e!774625 e!774624)))

(declare-fun res!543294 () Bool)

(assert (=> b!1207657 (=> (not res!543294) (not e!774624))))

(assert (=> b!1207657 (= res!543294 (<= (- until!61 1) (+ lt!412765 lt!412768)))))

(assert (=> b!1207657 (= lt!412765 (size!9663 lt!412767))))

(declare-fun b!1207658 () Bool)

(assert (=> b!1207658 (= e!774623 (++!3145 call!84318 call!84319))))

(declare-fun b!1207659 () Bool)

(declare-fun res!543290 () Bool)

(assert (=> b!1207659 (=> (not res!543290) (not e!774625))))

(assert (=> b!1207659 (= res!543290 (and (not (= from!613 0)) (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(declare-fun b!1207660 () Bool)

(assert (=> b!1207660 (= e!774626 e!774625)))

(declare-fun res!543293 () Bool)

(assert (=> b!1207660 (=> (not res!543293) (not e!774625))))

(declare-fun tail!1744 (List!12147) List!12147)

(assert (=> b!1207660 (= res!543293 (= (tail!1744 lt!412764) lt!412772))))

(assert (=> b!1207660 (= lt!412772 (++!3145 lt!412767 r!2028))))

(assert (=> b!1207660 (= lt!412767 (tail!1744 l!2744))))

(assert (=> b!1207660 (= lt!412764 (++!3145 l!2744 r!2028))))

(assert (= (and start!107532 res!543292) b!1207648))

(assert (= (and b!1207648 res!543291) b!1207660))

(assert (= (and b!1207660 res!543293) b!1207659))

(assert (= (and b!1207659 res!543290) b!1207657))

(assert (= (and b!1207657 res!543294) b!1207656))

(assert (= (and b!1207656 c!202091) b!1207655))

(assert (= (and b!1207656 (not c!202091)) b!1207647))

(assert (= (and b!1207647 c!202092) b!1207653))

(assert (= (and b!1207647 (not c!202092)) b!1207658))

(assert (= (or b!1207653 b!1207658) bm!84315))

(assert (= (or b!1207655 b!1207658) bm!84314))

(assert (= (and b!1207656 c!202094) b!1207650))

(assert (= (and b!1207656 (not c!202094)) b!1207654))

(assert (= (and b!1207654 c!202093) b!1207652))

(assert (= (and b!1207654 (not c!202093)) b!1207646))

(assert (= (or b!1207652 b!1207646) bm!84313))

(assert (= (or b!1207650 b!1207646) bm!84312))

(get-info :version)

(assert (= (and start!107532 ((_ is Cons!12123) l!2744)) b!1207649))

(assert (= (and start!107532 ((_ is Cons!12123) r!2028)) b!1207651))

(declare-fun m!1382937 () Bool)

(assert (=> b!1207656 m!1382937))

(declare-fun m!1382939 () Bool)

(assert (=> b!1207656 m!1382939))

(declare-fun m!1382941 () Bool)

(assert (=> b!1207656 m!1382941))

(declare-fun m!1382943 () Bool)

(assert (=> b!1207658 m!1382943))

(declare-fun m!1382945 () Bool)

(assert (=> b!1207657 m!1382945))

(declare-fun m!1382947 () Bool)

(assert (=> bm!84314 m!1382947))

(declare-fun m!1382949 () Bool)

(assert (=> bm!84313 m!1382949))

(declare-fun m!1382951 () Bool)

(assert (=> b!1207646 m!1382951))

(declare-fun m!1382953 () Bool)

(assert (=> b!1207648 m!1382953))

(declare-fun m!1382955 () Bool)

(assert (=> b!1207648 m!1382955))

(declare-fun m!1382957 () Bool)

(assert (=> bm!84315 m!1382957))

(declare-fun m!1382959 () Bool)

(assert (=> bm!84312 m!1382959))

(declare-fun m!1382961 () Bool)

(assert (=> b!1207660 m!1382961))

(declare-fun m!1382963 () Bool)

(assert (=> b!1207660 m!1382963))

(declare-fun m!1382965 () Bool)

(assert (=> b!1207660 m!1382965))

(declare-fun m!1382967 () Bool)

(assert (=> b!1207660 m!1382967))

(check-sat (not bm!84313) (not b!1207658) (not b!1207648) (not bm!84312) (not bm!84315) (not b!1207657) (not bm!84314) (not b!1207649) (not b!1207660) (not b!1207656) tp_is_empty!6139 (not b!1207646) (not b!1207651))
(check-sat)
(get-model)

(declare-fun d!345367 () Bool)

(declare-fun take!147 (List!12147 Int) List!12147)

(declare-fun drop!619 (List!12147 Int) List!12147)

(assert (=> d!345367 (= (slice!523 l!2744 from!613 (ite c!202093 until!61 lt!412769)) (take!147 (drop!619 l!2744 from!613) (- (ite c!202093 until!61 lt!412769) from!613)))))

(declare-fun bs!288479 () Bool)

(assert (= bs!288479 d!345367))

(declare-fun m!1382969 () Bool)

(assert (=> bs!288479 m!1382969))

(assert (=> bs!288479 m!1382969))

(declare-fun m!1382971 () Bool)

(assert (=> bs!288479 m!1382971))

(assert (=> bm!84313 d!345367))

(declare-fun d!345369 () Bool)

(declare-fun e!774641 () Bool)

(assert (=> d!345369 e!774641))

(declare-fun res!543299 () Bool)

(assert (=> d!345369 (=> (not res!543299) (not e!774641))))

(declare-fun lt!412779 () List!12147)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1721 (List!12147) (InoxSet T!22342))

(assert (=> d!345369 (= res!543299 (= (content!1721 lt!412779) ((_ map or) (content!1721 call!84320) (content!1721 call!84317))))))

(declare-fun e!774642 () List!12147)

(assert (=> d!345369 (= lt!412779 e!774642)))

(declare-fun c!202101 () Bool)

(assert (=> d!345369 (= c!202101 ((_ is Nil!12123) call!84320))))

(assert (=> d!345369 (= (++!3145 call!84320 call!84317) lt!412779)))

(declare-fun b!1207678 () Bool)

(assert (=> b!1207678 (= e!774642 (Cons!12123 (h!17524 call!84320) (++!3145 (t!112563 call!84320) call!84317)))))

(declare-fun b!1207679 () Bool)

(declare-fun res!543300 () Bool)

(assert (=> b!1207679 (=> (not res!543300) (not e!774641))))

(assert (=> b!1207679 (= res!543300 (= (size!9663 lt!412779) (+ (size!9663 call!84320) (size!9663 call!84317))))))

(declare-fun b!1207680 () Bool)

(assert (=> b!1207680 (= e!774641 (or (not (= call!84317 Nil!12123)) (= lt!412779 call!84320)))))

(declare-fun b!1207677 () Bool)

(assert (=> b!1207677 (= e!774642 call!84317)))

(assert (= (and d!345369 c!202101) b!1207677))

(assert (= (and d!345369 (not c!202101)) b!1207678))

(assert (= (and d!345369 res!543299) b!1207679))

(assert (= (and b!1207679 res!543300) b!1207680))

(declare-fun m!1382981 () Bool)

(assert (=> d!345369 m!1382981))

(declare-fun m!1382983 () Bool)

(assert (=> d!345369 m!1382983))

(declare-fun m!1382985 () Bool)

(assert (=> d!345369 m!1382985))

(declare-fun m!1382987 () Bool)

(assert (=> b!1207678 m!1382987))

(declare-fun m!1382989 () Bool)

(assert (=> b!1207679 m!1382989))

(declare-fun m!1382991 () Bool)

(assert (=> b!1207679 m!1382991))

(declare-fun m!1382993 () Bool)

(assert (=> b!1207679 m!1382993))

(assert (=> b!1207646 d!345369))

(declare-fun d!345381 () Bool)

(declare-fun e!774643 () Bool)

(assert (=> d!345381 e!774643))

(declare-fun res!543301 () Bool)

(assert (=> d!345381 (=> (not res!543301) (not e!774643))))

(declare-fun lt!412780 () List!12147)

(assert (=> d!345381 (= res!543301 (= (content!1721 lt!412780) ((_ map or) (content!1721 call!84318) (content!1721 call!84319))))))

(declare-fun e!774644 () List!12147)

(assert (=> d!345381 (= lt!412780 e!774644)))

(declare-fun c!202102 () Bool)

(assert (=> d!345381 (= c!202102 ((_ is Nil!12123) call!84318))))

(assert (=> d!345381 (= (++!3145 call!84318 call!84319) lt!412780)))

(declare-fun b!1207682 () Bool)

(assert (=> b!1207682 (= e!774644 (Cons!12123 (h!17524 call!84318) (++!3145 (t!112563 call!84318) call!84319)))))

(declare-fun b!1207683 () Bool)

(declare-fun res!543302 () Bool)

(assert (=> b!1207683 (=> (not res!543302) (not e!774643))))

(assert (=> b!1207683 (= res!543302 (= (size!9663 lt!412780) (+ (size!9663 call!84318) (size!9663 call!84319))))))

(declare-fun b!1207684 () Bool)

(assert (=> b!1207684 (= e!774643 (or (not (= call!84319 Nil!12123)) (= lt!412780 call!84318)))))

(declare-fun b!1207681 () Bool)

(assert (=> b!1207681 (= e!774644 call!84319)))

(assert (= (and d!345381 c!202102) b!1207681))

(assert (= (and d!345381 (not c!202102)) b!1207682))

(assert (= (and d!345381 res!543301) b!1207683))

(assert (= (and b!1207683 res!543302) b!1207684))

(declare-fun m!1382995 () Bool)

(assert (=> d!345381 m!1382995))

(declare-fun m!1382997 () Bool)

(assert (=> d!345381 m!1382997))

(declare-fun m!1382999 () Bool)

(assert (=> d!345381 m!1382999))

(declare-fun m!1383001 () Bool)

(assert (=> b!1207682 m!1383001))

(declare-fun m!1383003 () Bool)

(assert (=> b!1207683 m!1383003))

(declare-fun m!1383005 () Bool)

(assert (=> b!1207683 m!1383005))

(declare-fun m!1383007 () Bool)

(assert (=> b!1207683 m!1383007))

(assert (=> b!1207658 d!345381))

(declare-fun d!345383 () Bool)

(assert (=> d!345383 (= (tail!1744 lt!412764) (t!112563 lt!412764))))

(assert (=> b!1207660 d!345383))

(declare-fun d!345385 () Bool)

(declare-fun e!774645 () Bool)

(assert (=> d!345385 e!774645))

(declare-fun res!543303 () Bool)

(assert (=> d!345385 (=> (not res!543303) (not e!774645))))

(declare-fun lt!412781 () List!12147)

(assert (=> d!345385 (= res!543303 (= (content!1721 lt!412781) ((_ map or) (content!1721 lt!412767) (content!1721 r!2028))))))

(declare-fun e!774646 () List!12147)

(assert (=> d!345385 (= lt!412781 e!774646)))

(declare-fun c!202103 () Bool)

(assert (=> d!345385 (= c!202103 ((_ is Nil!12123) lt!412767))))

(assert (=> d!345385 (= (++!3145 lt!412767 r!2028) lt!412781)))

(declare-fun b!1207686 () Bool)

(assert (=> b!1207686 (= e!774646 (Cons!12123 (h!17524 lt!412767) (++!3145 (t!112563 lt!412767) r!2028)))))

(declare-fun b!1207687 () Bool)

(declare-fun res!543304 () Bool)

(assert (=> b!1207687 (=> (not res!543304) (not e!774645))))

(assert (=> b!1207687 (= res!543304 (= (size!9663 lt!412781) (+ (size!9663 lt!412767) (size!9663 r!2028))))))

(declare-fun b!1207688 () Bool)

(assert (=> b!1207688 (= e!774645 (or (not (= r!2028 Nil!12123)) (= lt!412781 lt!412767)))))

(declare-fun b!1207685 () Bool)

(assert (=> b!1207685 (= e!774646 r!2028)))

(assert (= (and d!345385 c!202103) b!1207685))

(assert (= (and d!345385 (not c!202103)) b!1207686))

(assert (= (and d!345385 res!543303) b!1207687))

(assert (= (and b!1207687 res!543304) b!1207688))

(declare-fun m!1383009 () Bool)

(assert (=> d!345385 m!1383009))

(declare-fun m!1383011 () Bool)

(assert (=> d!345385 m!1383011))

(declare-fun m!1383013 () Bool)

(assert (=> d!345385 m!1383013))

(declare-fun m!1383015 () Bool)

(assert (=> b!1207686 m!1383015))

(declare-fun m!1383017 () Bool)

(assert (=> b!1207687 m!1383017))

(assert (=> b!1207687 m!1382945))

(assert (=> b!1207687 m!1382953))

(assert (=> b!1207660 d!345385))

(declare-fun d!345387 () Bool)

(assert (=> d!345387 (= (tail!1744 l!2744) (t!112563 l!2744))))

(assert (=> b!1207660 d!345387))

(declare-fun d!345389 () Bool)

(declare-fun e!774647 () Bool)

(assert (=> d!345389 e!774647))

(declare-fun res!543305 () Bool)

(assert (=> d!345389 (=> (not res!543305) (not e!774647))))

(declare-fun lt!412782 () List!12147)

(assert (=> d!345389 (= res!543305 (= (content!1721 lt!412782) ((_ map or) (content!1721 l!2744) (content!1721 r!2028))))))

(declare-fun e!774648 () List!12147)

(assert (=> d!345389 (= lt!412782 e!774648)))

(declare-fun c!202104 () Bool)

(assert (=> d!345389 (= c!202104 ((_ is Nil!12123) l!2744))))

(assert (=> d!345389 (= (++!3145 l!2744 r!2028) lt!412782)))

(declare-fun b!1207690 () Bool)

(assert (=> b!1207690 (= e!774648 (Cons!12123 (h!17524 l!2744) (++!3145 (t!112563 l!2744) r!2028)))))

(declare-fun b!1207691 () Bool)

(declare-fun res!543306 () Bool)

(assert (=> b!1207691 (=> (not res!543306) (not e!774647))))

(assert (=> b!1207691 (= res!543306 (= (size!9663 lt!412782) (+ (size!9663 l!2744) (size!9663 r!2028))))))

(declare-fun b!1207692 () Bool)

(assert (=> b!1207692 (= e!774647 (or (not (= r!2028 Nil!12123)) (= lt!412782 l!2744)))))

(declare-fun b!1207689 () Bool)

(assert (=> b!1207689 (= e!774648 r!2028)))

(assert (= (and d!345389 c!202104) b!1207689))

(assert (= (and d!345389 (not c!202104)) b!1207690))

(assert (= (and d!345389 res!543305) b!1207691))

(assert (= (and b!1207691 res!543306) b!1207692))

(declare-fun m!1383019 () Bool)

(assert (=> d!345389 m!1383019))

(declare-fun m!1383021 () Bool)

(assert (=> d!345389 m!1383021))

(assert (=> d!345389 m!1383013))

(declare-fun m!1383023 () Bool)

(assert (=> b!1207690 m!1383023))

(declare-fun m!1383025 () Bool)

(assert (=> b!1207691 m!1383025))

(assert (=> b!1207691 m!1382955))

(assert (=> b!1207691 m!1382953))

(assert (=> b!1207660 d!345389))

(declare-fun d!345391 () Bool)

(declare-fun lt!412787 () Int)

(assert (=> d!345391 (>= lt!412787 0)))

(declare-fun e!774655 () Int)

(assert (=> d!345391 (= lt!412787 e!774655)))

(declare-fun c!202109 () Bool)

(assert (=> d!345391 (= c!202109 ((_ is Nil!12123) r!2028))))

(assert (=> d!345391 (= (size!9663 r!2028) lt!412787)))

(declare-fun b!1207705 () Bool)

(assert (=> b!1207705 (= e!774655 0)))

(declare-fun b!1207706 () Bool)

(assert (=> b!1207706 (= e!774655 (+ 1 (size!9663 (t!112563 r!2028))))))

(assert (= (and d!345391 c!202109) b!1207705))

(assert (= (and d!345391 (not c!202109)) b!1207706))

(declare-fun m!1383027 () Bool)

(assert (=> b!1207706 m!1383027))

(assert (=> b!1207648 d!345391))

(declare-fun d!345393 () Bool)

(declare-fun lt!412788 () Int)

(assert (=> d!345393 (>= lt!412788 0)))

(declare-fun e!774656 () Int)

(assert (=> d!345393 (= lt!412788 e!774656)))

(declare-fun c!202110 () Bool)

(assert (=> d!345393 (= c!202110 ((_ is Nil!12123) l!2744))))

(assert (=> d!345393 (= (size!9663 l!2744) lt!412788)))

(declare-fun b!1207707 () Bool)

(assert (=> b!1207707 (= e!774656 0)))

(declare-fun b!1207708 () Bool)

(assert (=> b!1207708 (= e!774656 (+ 1 (size!9663 (t!112563 l!2744))))))

(assert (= (and d!345393 c!202110) b!1207707))

(assert (= (and d!345393 (not c!202110)) b!1207708))

(declare-fun m!1383029 () Bool)

(assert (=> b!1207708 m!1383029))

(assert (=> b!1207648 d!345393))

(declare-fun d!345395 () Bool)

(assert (=> d!345395 (= (slice!523 lt!412764 from!613 until!61) (take!147 (drop!619 lt!412764 from!613) (- until!61 from!613)))))

(declare-fun bs!288481 () Bool)

(assert (= bs!288481 d!345395))

(declare-fun m!1383031 () Bool)

(assert (=> bs!288481 m!1383031))

(assert (=> bs!288481 m!1383031))

(declare-fun m!1383033 () Bool)

(assert (=> bs!288481 m!1383033))

(assert (=> b!1207656 d!345395))

(declare-fun d!345397 () Bool)

(assert (=> d!345397 (= (slice!523 lt!412772 (- from!613 1) (- until!61 1)) (take!147 (drop!619 lt!412772 (- from!613 1)) (- (- until!61 1) (- from!613 1))))))

(declare-fun bs!288482 () Bool)

(assert (= bs!288482 d!345397))

(declare-fun m!1383035 () Bool)

(assert (=> bs!288482 m!1383035))

(assert (=> bs!288482 m!1383035))

(declare-fun m!1383037 () Bool)

(assert (=> bs!288482 m!1383037))

(assert (=> b!1207656 d!345397))

(declare-fun call!84334 () Int)

(declare-fun e!774681 () Int)

(declare-fun bm!84328 () Bool)

(declare-fun call!84333 () List!12147)

(declare-fun c!202128 () Bool)

(assert (=> bm!84328 (= call!84333 (slice!523 (ite c!202128 r!2028 lt!412767) (ite c!202128 (- (- from!613 1) call!84334) (- from!613 1)) (ite c!202128 (- (- until!61 1) call!84334) e!774681)))))

(declare-fun b!1207751 () Bool)

(declare-fun e!774683 () List!12147)

(declare-fun call!84335 () List!12147)

(assert (=> b!1207751 (= e!774683 call!84335)))

(declare-fun bm!84329 () Bool)

(assert (=> bm!84329 (= call!84334 (size!9663 lt!412767))))

(declare-fun b!1207752 () Bool)

(assert (=> b!1207752 (= e!774681 (- until!61 1))))

(declare-fun b!1207753 () Bool)

(assert (=> b!1207753 (= e!774681 call!84334)))

(declare-fun b!1207754 () Bool)

(declare-fun e!774680 () List!12147)

(assert (=> b!1207754 (= e!774680 call!84333)))

(declare-fun b!1207755 () Bool)

(assert (=> b!1207755 (= e!774680 e!774683)))

(declare-fun c!202127 () Bool)

(assert (=> b!1207755 (= c!202127 (<= (- until!61 1) call!84334))))

(declare-fun d!345399 () Bool)

(assert (=> d!345399 (= (slice!523 (++!3145 lt!412767 r!2028) (- from!613 1) (- until!61 1)) e!774680)))

(assert (=> d!345399 (= c!202128 (<= (size!9663 lt!412767) (- from!613 1)))))

(declare-fun lt!412797 () Unit!18516)

(declare-fun choose!7748 (List!12147 List!12147 Int Int) Unit!18516)

(assert (=> d!345399 (= lt!412797 (choose!7748 lt!412767 r!2028 (- from!613 1) (- until!61 1)))))

(declare-fun e!774682 () Bool)

(assert (=> d!345399 e!774682))

(declare-fun res!543321 () Bool)

(assert (=> d!345399 (=> (not res!543321) (not e!774682))))

(assert (=> d!345399 (= res!543321 (and (<= 0 (- from!613 1)) (<= (- from!613 1) (- until!61 1))))))

(assert (=> d!345399 (= (sliceLemma!69 lt!412767 r!2028 (- from!613 1) (- until!61 1)) lt!412797)))

(declare-fun b!1207756 () Bool)

(assert (=> b!1207756 (= e!774682 (<= (- until!61 1) (+ (size!9663 lt!412767) (size!9663 r!2028))))))

(declare-fun bm!84330 () Bool)

(declare-fun c!202129 () Bool)

(assert (=> bm!84330 (= c!202129 c!202127)))

(assert (=> bm!84330 (= call!84335 call!84333)))

(declare-fun b!1207757 () Bool)

(assert (=> b!1207757 (= e!774683 (++!3145 call!84335 (slice!523 r!2028 0 (- (- until!61 1) call!84334))))))

(assert (= (and d!345399 res!543321) b!1207756))

(assert (= (and d!345399 c!202128) b!1207754))

(assert (= (and d!345399 (not c!202128)) b!1207755))

(assert (= (and b!1207755 c!202127) b!1207751))

(assert (= (and b!1207755 (not c!202127)) b!1207757))

(assert (= (or b!1207751 b!1207757) bm!84330))

(assert (= (and bm!84330 c!202129) b!1207752))

(assert (= (and bm!84330 (not c!202129)) b!1207753))

(assert (= (or b!1207754 b!1207753 b!1207755 b!1207757) bm!84329))

(assert (= (or b!1207754 bm!84330) bm!84328))

(declare-fun m!1383085 () Bool)

(assert (=> bm!84328 m!1383085))

(declare-fun m!1383087 () Bool)

(assert (=> b!1207757 m!1383087))

(assert (=> b!1207757 m!1383087))

(declare-fun m!1383089 () Bool)

(assert (=> b!1207757 m!1383089))

(assert (=> d!345399 m!1382963))

(assert (=> d!345399 m!1382963))

(declare-fun m!1383091 () Bool)

(assert (=> d!345399 m!1383091))

(assert (=> d!345399 m!1382945))

(declare-fun m!1383093 () Bool)

(assert (=> d!345399 m!1383093))

(assert (=> bm!84329 m!1382945))

(assert (=> b!1207756 m!1382945))

(assert (=> b!1207756 m!1382953))

(assert (=> b!1207656 d!345399))

(declare-fun d!345417 () Bool)

(assert (=> d!345417 (= (slice!523 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0) (- (- until!61 1) lt!412765)) (take!147 (drop!619 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0)) (- (- (- until!61 1) lt!412765) (ite c!202091 (- (- from!613 1) lt!412765) 0))))))

(declare-fun bs!288486 () Bool)

(assert (= bs!288486 d!345417))

(declare-fun m!1383095 () Bool)

(assert (=> bs!288486 m!1383095))

(assert (=> bs!288486 m!1383095))

(declare-fun m!1383097 () Bool)

(assert (=> bs!288486 m!1383097))

(assert (=> bm!84314 d!345417))

(declare-fun d!345419 () Bool)

(assert (=> d!345419 (= (slice!523 lt!412767 (- from!613 1) (ite c!202092 (- until!61 1) lt!412765)) (take!147 (drop!619 lt!412767 (- from!613 1)) (- (ite c!202092 (- until!61 1) lt!412765) (- from!613 1))))))

(declare-fun bs!288487 () Bool)

(assert (= bs!288487 d!345419))

(declare-fun m!1383099 () Bool)

(assert (=> bs!288487 m!1383099))

(assert (=> bs!288487 m!1383099))

(declare-fun m!1383101 () Bool)

(assert (=> bs!288487 m!1383101))

(assert (=> bm!84315 d!345419))

(declare-fun d!345421 () Bool)

(assert (=> d!345421 (= (slice!523 r!2028 (ite c!202094 (- from!613 lt!412769) 0) (- until!61 lt!412769)) (take!147 (drop!619 r!2028 (ite c!202094 (- from!613 lt!412769) 0)) (- (- until!61 lt!412769) (ite c!202094 (- from!613 lt!412769) 0))))))

(declare-fun bs!288488 () Bool)

(assert (= bs!288488 d!345421))

(declare-fun m!1383103 () Bool)

(assert (=> bs!288488 m!1383103))

(assert (=> bs!288488 m!1383103))

(declare-fun m!1383105 () Bool)

(assert (=> bs!288488 m!1383105))

(assert (=> bm!84312 d!345421))

(declare-fun d!345423 () Bool)

(declare-fun lt!412799 () Int)

(assert (=> d!345423 (>= lt!412799 0)))

(declare-fun e!774688 () Int)

(assert (=> d!345423 (= lt!412799 e!774688)))

(declare-fun c!202133 () Bool)

(assert (=> d!345423 (= c!202133 ((_ is Nil!12123) lt!412767))))

(assert (=> d!345423 (= (size!9663 lt!412767) lt!412799)))

(declare-fun b!1207765 () Bool)

(assert (=> b!1207765 (= e!774688 0)))

(declare-fun b!1207766 () Bool)

(assert (=> b!1207766 (= e!774688 (+ 1 (size!9663 (t!112563 lt!412767))))))

(assert (= (and d!345423 c!202133) b!1207765))

(assert (= (and d!345423 (not c!202133)) b!1207766))

(declare-fun m!1383107 () Bool)

(assert (=> b!1207766 m!1383107))

(assert (=> b!1207657 d!345423))

(declare-fun b!1207775 () Bool)

(declare-fun e!774693 () Bool)

(declare-fun tp!342124 () Bool)

(assert (=> b!1207775 (= e!774693 (and tp_is_empty!6139 tp!342124))))

(assert (=> b!1207651 (= tp!342121 e!774693)))

(assert (= (and b!1207651 ((_ is Cons!12123) (t!112563 r!2028))) b!1207775))

(declare-fun b!1207776 () Bool)

(declare-fun e!774694 () Bool)

(declare-fun tp!342125 () Bool)

(assert (=> b!1207776 (= e!774694 (and tp_is_empty!6139 tp!342125))))

(assert (=> b!1207649 (= tp!342120 e!774694)))

(assert (= (and b!1207649 ((_ is Cons!12123) (t!112563 l!2744))) b!1207776))

(check-sat (not b!1207691) (not b!1207756) (not d!345389) (not d!345421) (not d!345417) (not b!1207687) (not b!1207682) (not d!345395) (not b!1207678) (not b!1207766) (not b!1207776) (not b!1207679) (not b!1207683) (not d!345381) (not d!345367) (not d!345369) (not d!345399) (not b!1207775) (not b!1207708) (not b!1207690) (not d!345419) (not b!1207706) (not bm!84328) (not d!345385) (not b!1207686) (not b!1207757) (not bm!84329) tp_is_empty!6139 (not d!345397))
(check-sat)
(get-model)

(declare-fun b!1207797 () Bool)

(declare-fun e!774708 () Int)

(assert (=> b!1207797 (= e!774708 0)))

(declare-fun e!774707 () Int)

(declare-fun b!1207798 () Bool)

(assert (=> b!1207798 (= e!774707 (- (- (- until!61 1) lt!412765) (ite c!202091 (- (- from!613 1) lt!412765) 0)))))

(declare-fun b!1207799 () Bool)

(declare-fun e!774709 () List!12147)

(assert (=> b!1207799 (= e!774709 Nil!12123)))

(declare-fun b!1207800 () Bool)

(assert (=> b!1207800 (= e!774708 e!774707)))

(declare-fun c!202142 () Bool)

(assert (=> b!1207800 (= c!202142 (>= (- (- (- until!61 1) lt!412765) (ite c!202091 (- (- from!613 1) lt!412765) 0)) (size!9663 (drop!619 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0)))))))

(declare-fun b!1207801 () Bool)

(assert (=> b!1207801 (= e!774709 (Cons!12123 (h!17524 (drop!619 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0))) (take!147 (t!112563 (drop!619 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0))) (- (- (- (- until!61 1) lt!412765) (ite c!202091 (- (- from!613 1) lt!412765) 0)) 1))))))

(declare-fun b!1207802 () Bool)

(declare-fun e!774710 () Bool)

(declare-fun lt!412803 () List!12147)

(assert (=> b!1207802 (= e!774710 (= (size!9663 lt!412803) e!774708))))

(declare-fun c!202143 () Bool)

(assert (=> b!1207802 (= c!202143 (<= (- (- (- until!61 1) lt!412765) (ite c!202091 (- (- from!613 1) lt!412765) 0)) 0))))

(declare-fun d!345431 () Bool)

(assert (=> d!345431 e!774710))

(declare-fun res!543327 () Bool)

(assert (=> d!345431 (=> (not res!543327) (not e!774710))))

(assert (=> d!345431 (= res!543327 (= ((_ map implies) (content!1721 lt!412803) (content!1721 (drop!619 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0)))) ((as const (InoxSet T!22342)) true)))))

(assert (=> d!345431 (= lt!412803 e!774709)))

(declare-fun c!202141 () Bool)

(assert (=> d!345431 (= c!202141 (or ((_ is Nil!12123) (drop!619 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0))) (<= (- (- (- until!61 1) lt!412765) (ite c!202091 (- (- from!613 1) lt!412765) 0)) 0)))))

(assert (=> d!345431 (= (take!147 (drop!619 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0)) (- (- (- until!61 1) lt!412765) (ite c!202091 (- (- from!613 1) lt!412765) 0))) lt!412803)))

(declare-fun b!1207803 () Bool)

(assert (=> b!1207803 (= e!774707 (size!9663 (drop!619 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0))))))

(assert (= (and d!345431 c!202141) b!1207799))

(assert (= (and d!345431 (not c!202141)) b!1207801))

(assert (= (and d!345431 res!543327) b!1207802))

(assert (= (and b!1207802 c!202143) b!1207797))

(assert (= (and b!1207802 (not c!202143)) b!1207800))

(assert (= (and b!1207800 c!202142) b!1207803))

(assert (= (and b!1207800 (not c!202142)) b!1207798))

(assert (=> b!1207800 m!1383095))

(declare-fun m!1383139 () Bool)

(assert (=> b!1207800 m!1383139))

(declare-fun m!1383141 () Bool)

(assert (=> d!345431 m!1383141))

(assert (=> d!345431 m!1383095))

(declare-fun m!1383143 () Bool)

(assert (=> d!345431 m!1383143))

(assert (=> b!1207803 m!1383095))

(assert (=> b!1207803 m!1383139))

(declare-fun m!1383145 () Bool)

(assert (=> b!1207801 m!1383145))

(declare-fun m!1383147 () Bool)

(assert (=> b!1207802 m!1383147))

(assert (=> d!345417 d!345431))

(declare-fun d!345433 () Bool)

(declare-fun e!774724 () Bool)

(assert (=> d!345433 e!774724))

(declare-fun res!543330 () Bool)

(assert (=> d!345433 (=> (not res!543330) (not e!774724))))

(declare-fun lt!412806 () List!12147)

(assert (=> d!345433 (= res!543330 (= ((_ map implies) (content!1721 lt!412806) (content!1721 r!2028)) ((as const (InoxSet T!22342)) true)))))

(declare-fun e!774725 () List!12147)

(assert (=> d!345433 (= lt!412806 e!774725)))

(declare-fun c!202153 () Bool)

(assert (=> d!345433 (= c!202153 ((_ is Nil!12123) r!2028))))

(assert (=> d!345433 (= (drop!619 r!2028 (ite c!202091 (- (- from!613 1) lt!412765) 0)) lt!412806)))

(declare-fun b!1207822 () Bool)

(declare-fun e!774721 () Int)

(declare-fun e!774723 () Int)

(assert (=> b!1207822 (= e!774721 e!774723)))

(declare-fun call!84341 () Int)

(declare-fun c!202152 () Bool)

(assert (=> b!1207822 (= c!202152 (>= (ite c!202091 (- (- from!613 1) lt!412765) 0) call!84341))))

(declare-fun b!1207823 () Bool)

(assert (=> b!1207823 (= e!774723 (- call!84341 (ite c!202091 (- (- from!613 1) lt!412765) 0)))))

(declare-fun b!1207824 () Bool)

(assert (=> b!1207824 (= e!774723 0)))

(declare-fun b!1207825 () Bool)

(assert (=> b!1207825 (= e!774721 call!84341)))

(declare-fun b!1207826 () Bool)

(declare-fun e!774722 () List!12147)

(assert (=> b!1207826 (= e!774722 (drop!619 (t!112563 r!2028) (- (ite c!202091 (- (- from!613 1) lt!412765) 0) 1)))))

(declare-fun b!1207827 () Bool)

(assert (=> b!1207827 (= e!774722 r!2028)))

(declare-fun b!1207828 () Bool)

(assert (=> b!1207828 (= e!774725 Nil!12123)))

(declare-fun b!1207829 () Bool)

(assert (=> b!1207829 (= e!774724 (= (size!9663 lt!412806) e!774721))))

(declare-fun c!202155 () Bool)

(assert (=> b!1207829 (= c!202155 (<= (ite c!202091 (- (- from!613 1) lt!412765) 0) 0))))

(declare-fun b!1207830 () Bool)

(assert (=> b!1207830 (= e!774725 e!774722)))

(declare-fun c!202154 () Bool)

(assert (=> b!1207830 (= c!202154 (<= (ite c!202091 (- (- from!613 1) lt!412765) 0) 0))))

(declare-fun bm!84336 () Bool)

(assert (=> bm!84336 (= call!84341 (size!9663 r!2028))))

(assert (= (and d!345433 c!202153) b!1207828))

(assert (= (and d!345433 (not c!202153)) b!1207830))

(assert (= (and b!1207830 c!202154) b!1207827))

(assert (= (and b!1207830 (not c!202154)) b!1207826))

(assert (= (and d!345433 res!543330) b!1207829))

(assert (= (and b!1207829 c!202155) b!1207825))

(assert (= (and b!1207829 (not c!202155)) b!1207822))

(assert (= (and b!1207822 c!202152) b!1207824))

(assert (= (and b!1207822 (not c!202152)) b!1207823))

(assert (= (or b!1207825 b!1207822 b!1207823) bm!84336))

(declare-fun m!1383149 () Bool)

(assert (=> d!345433 m!1383149))

(assert (=> d!345433 m!1383013))

(declare-fun m!1383151 () Bool)

(assert (=> b!1207826 m!1383151))

(declare-fun m!1383153 () Bool)

(assert (=> b!1207829 m!1383153))

(assert (=> bm!84336 m!1382953))

(assert (=> d!345417 d!345433))

(declare-fun d!345435 () Bool)

(assert (=> d!345435 (= (slice!523 (ite c!202128 r!2028 lt!412767) (ite c!202128 (- (- from!613 1) call!84334) (- from!613 1)) (ite c!202128 (- (- until!61 1) call!84334) e!774681)) (take!147 (drop!619 (ite c!202128 r!2028 lt!412767) (ite c!202128 (- (- from!613 1) call!84334) (- from!613 1))) (- (ite c!202128 (- (- until!61 1) call!84334) e!774681) (ite c!202128 (- (- from!613 1) call!84334) (- from!613 1)))))))

(declare-fun bs!288491 () Bool)

(assert (= bs!288491 d!345435))

(declare-fun m!1383155 () Bool)

(assert (=> bs!288491 m!1383155))

(assert (=> bs!288491 m!1383155))

(declare-fun m!1383157 () Bool)

(assert (=> bs!288491 m!1383157))

(assert (=> bm!84328 d!345435))

(declare-fun b!1207831 () Bool)

(declare-fun e!774727 () Int)

(assert (=> b!1207831 (= e!774727 0)))

(declare-fun b!1207832 () Bool)

(declare-fun e!774726 () Int)

(assert (=> b!1207832 (= e!774726 (- (ite c!202093 until!61 lt!412769) from!613))))

(declare-fun b!1207833 () Bool)

(declare-fun e!774728 () List!12147)

(assert (=> b!1207833 (= e!774728 Nil!12123)))

(declare-fun b!1207834 () Bool)

(assert (=> b!1207834 (= e!774727 e!774726)))

(declare-fun c!202157 () Bool)

(assert (=> b!1207834 (= c!202157 (>= (- (ite c!202093 until!61 lt!412769) from!613) (size!9663 (drop!619 l!2744 from!613))))))

(declare-fun b!1207835 () Bool)

(assert (=> b!1207835 (= e!774728 (Cons!12123 (h!17524 (drop!619 l!2744 from!613)) (take!147 (t!112563 (drop!619 l!2744 from!613)) (- (- (ite c!202093 until!61 lt!412769) from!613) 1))))))

(declare-fun b!1207836 () Bool)

(declare-fun e!774729 () Bool)

(declare-fun lt!412807 () List!12147)

(assert (=> b!1207836 (= e!774729 (= (size!9663 lt!412807) e!774727))))

(declare-fun c!202158 () Bool)

(assert (=> b!1207836 (= c!202158 (<= (- (ite c!202093 until!61 lt!412769) from!613) 0))))

(declare-fun d!345437 () Bool)

(assert (=> d!345437 e!774729))

(declare-fun res!543331 () Bool)

(assert (=> d!345437 (=> (not res!543331) (not e!774729))))

(assert (=> d!345437 (= res!543331 (= ((_ map implies) (content!1721 lt!412807) (content!1721 (drop!619 l!2744 from!613))) ((as const (InoxSet T!22342)) true)))))

(assert (=> d!345437 (= lt!412807 e!774728)))

(declare-fun c!202156 () Bool)

(assert (=> d!345437 (= c!202156 (or ((_ is Nil!12123) (drop!619 l!2744 from!613)) (<= (- (ite c!202093 until!61 lt!412769) from!613) 0)))))

(assert (=> d!345437 (= (take!147 (drop!619 l!2744 from!613) (- (ite c!202093 until!61 lt!412769) from!613)) lt!412807)))

(declare-fun b!1207837 () Bool)

(assert (=> b!1207837 (= e!774726 (size!9663 (drop!619 l!2744 from!613)))))

(assert (= (and d!345437 c!202156) b!1207833))

(assert (= (and d!345437 (not c!202156)) b!1207835))

(assert (= (and d!345437 res!543331) b!1207836))

(assert (= (and b!1207836 c!202158) b!1207831))

(assert (= (and b!1207836 (not c!202158)) b!1207834))

(assert (= (and b!1207834 c!202157) b!1207837))

(assert (= (and b!1207834 (not c!202157)) b!1207832))

(assert (=> b!1207834 m!1382969))

(declare-fun m!1383159 () Bool)

(assert (=> b!1207834 m!1383159))

(declare-fun m!1383161 () Bool)

(assert (=> d!345437 m!1383161))

(assert (=> d!345437 m!1382969))

(declare-fun m!1383163 () Bool)

(assert (=> d!345437 m!1383163))

(assert (=> b!1207837 m!1382969))

(assert (=> b!1207837 m!1383159))

(declare-fun m!1383165 () Bool)

(assert (=> b!1207835 m!1383165))

(declare-fun m!1383167 () Bool)

(assert (=> b!1207836 m!1383167))

(assert (=> d!345367 d!345437))

(declare-fun d!345439 () Bool)

(declare-fun e!774733 () Bool)

(assert (=> d!345439 e!774733))

(declare-fun res!543332 () Bool)

(assert (=> d!345439 (=> (not res!543332) (not e!774733))))

(declare-fun lt!412808 () List!12147)

(assert (=> d!345439 (= res!543332 (= ((_ map implies) (content!1721 lt!412808) (content!1721 l!2744)) ((as const (InoxSet T!22342)) true)))))

(declare-fun e!774734 () List!12147)

(assert (=> d!345439 (= lt!412808 e!774734)))

(declare-fun c!202160 () Bool)

(assert (=> d!345439 (= c!202160 ((_ is Nil!12123) l!2744))))

(assert (=> d!345439 (= (drop!619 l!2744 from!613) lt!412808)))

(declare-fun b!1207838 () Bool)

(declare-fun e!774730 () Int)

(declare-fun e!774732 () Int)

(assert (=> b!1207838 (= e!774730 e!774732)))

(declare-fun c!202159 () Bool)

(declare-fun call!84342 () Int)

(assert (=> b!1207838 (= c!202159 (>= from!613 call!84342))))

(declare-fun b!1207839 () Bool)

(assert (=> b!1207839 (= e!774732 (- call!84342 from!613))))

(declare-fun b!1207840 () Bool)

(assert (=> b!1207840 (= e!774732 0)))

(declare-fun b!1207841 () Bool)

(assert (=> b!1207841 (= e!774730 call!84342)))

(declare-fun b!1207842 () Bool)

(declare-fun e!774731 () List!12147)

(assert (=> b!1207842 (= e!774731 (drop!619 (t!112563 l!2744) (- from!613 1)))))

(declare-fun b!1207843 () Bool)

(assert (=> b!1207843 (= e!774731 l!2744)))

(declare-fun b!1207844 () Bool)

(assert (=> b!1207844 (= e!774734 Nil!12123)))

(declare-fun b!1207845 () Bool)

(assert (=> b!1207845 (= e!774733 (= (size!9663 lt!412808) e!774730))))

(declare-fun c!202162 () Bool)

(assert (=> b!1207845 (= c!202162 (<= from!613 0))))

(declare-fun b!1207846 () Bool)

(assert (=> b!1207846 (= e!774734 e!774731)))

(declare-fun c!202161 () Bool)

(assert (=> b!1207846 (= c!202161 (<= from!613 0))))

(declare-fun bm!84337 () Bool)

(assert (=> bm!84337 (= call!84342 (size!9663 l!2744))))

(assert (= (and d!345439 c!202160) b!1207844))

(assert (= (and d!345439 (not c!202160)) b!1207846))

(assert (= (and b!1207846 c!202161) b!1207843))

(assert (= (and b!1207846 (not c!202161)) b!1207842))

(assert (= (and d!345439 res!543332) b!1207845))

(assert (= (and b!1207845 c!202162) b!1207841))

(assert (= (and b!1207845 (not c!202162)) b!1207838))

(assert (= (and b!1207838 c!202159) b!1207840))

(assert (= (and b!1207838 (not c!202159)) b!1207839))

(assert (= (or b!1207841 b!1207838 b!1207839) bm!84337))

(declare-fun m!1383169 () Bool)

(assert (=> d!345439 m!1383169))

(assert (=> d!345439 m!1383021))

(declare-fun m!1383171 () Bool)

(assert (=> b!1207842 m!1383171))

(declare-fun m!1383173 () Bool)

(assert (=> b!1207845 m!1383173))

(assert (=> bm!84337 m!1382955))

(assert (=> d!345367 d!345439))

(declare-fun d!345441 () Bool)

(declare-fun e!774735 () Bool)

(assert (=> d!345441 e!774735))

(declare-fun res!543333 () Bool)

(assert (=> d!345441 (=> (not res!543333) (not e!774735))))

(declare-fun lt!412809 () List!12147)

(assert (=> d!345441 (= res!543333 (= (content!1721 lt!412809) ((_ map or) (content!1721 (t!112563 lt!412767)) (content!1721 r!2028))))))

(declare-fun e!774736 () List!12147)

(assert (=> d!345441 (= lt!412809 e!774736)))

(declare-fun c!202163 () Bool)

(assert (=> d!345441 (= c!202163 ((_ is Nil!12123) (t!112563 lt!412767)))))

(assert (=> d!345441 (= (++!3145 (t!112563 lt!412767) r!2028) lt!412809)))

(declare-fun b!1207848 () Bool)

(assert (=> b!1207848 (= e!774736 (Cons!12123 (h!17524 (t!112563 lt!412767)) (++!3145 (t!112563 (t!112563 lt!412767)) r!2028)))))

(declare-fun b!1207849 () Bool)

(declare-fun res!543334 () Bool)

(assert (=> b!1207849 (=> (not res!543334) (not e!774735))))

(assert (=> b!1207849 (= res!543334 (= (size!9663 lt!412809) (+ (size!9663 (t!112563 lt!412767)) (size!9663 r!2028))))))

(declare-fun b!1207850 () Bool)

(assert (=> b!1207850 (= e!774735 (or (not (= r!2028 Nil!12123)) (= lt!412809 (t!112563 lt!412767))))))

(declare-fun b!1207847 () Bool)

(assert (=> b!1207847 (= e!774736 r!2028)))

(assert (= (and d!345441 c!202163) b!1207847))

(assert (= (and d!345441 (not c!202163)) b!1207848))

(assert (= (and d!345441 res!543333) b!1207849))

(assert (= (and b!1207849 res!543334) b!1207850))

(declare-fun m!1383175 () Bool)

(assert (=> d!345441 m!1383175))

(declare-fun m!1383177 () Bool)

(assert (=> d!345441 m!1383177))

(assert (=> d!345441 m!1383013))

(declare-fun m!1383179 () Bool)

(assert (=> b!1207848 m!1383179))

(declare-fun m!1383181 () Bool)

(assert (=> b!1207849 m!1383181))

(assert (=> b!1207849 m!1383107))

(assert (=> b!1207849 m!1382953))

(assert (=> b!1207686 d!345441))

(assert (=> bm!84329 d!345423))

(declare-fun b!1207851 () Bool)

(declare-fun e!774738 () Int)

(assert (=> b!1207851 (= e!774738 0)))

(declare-fun b!1207852 () Bool)

(declare-fun e!774737 () Int)

(assert (=> b!1207852 (= e!774737 (- (- until!61 1) (- from!613 1)))))

(declare-fun b!1207853 () Bool)

(declare-fun e!774739 () List!12147)

(assert (=> b!1207853 (= e!774739 Nil!12123)))

(declare-fun b!1207854 () Bool)

(assert (=> b!1207854 (= e!774738 e!774737)))

(declare-fun c!202165 () Bool)

(assert (=> b!1207854 (= c!202165 (>= (- (- until!61 1) (- from!613 1)) (size!9663 (drop!619 lt!412772 (- from!613 1)))))))

(declare-fun b!1207855 () Bool)

(assert (=> b!1207855 (= e!774739 (Cons!12123 (h!17524 (drop!619 lt!412772 (- from!613 1))) (take!147 (t!112563 (drop!619 lt!412772 (- from!613 1))) (- (- (- until!61 1) (- from!613 1)) 1))))))

(declare-fun b!1207856 () Bool)

(declare-fun e!774740 () Bool)

(declare-fun lt!412810 () List!12147)

(assert (=> b!1207856 (= e!774740 (= (size!9663 lt!412810) e!774738))))

(declare-fun c!202166 () Bool)

(assert (=> b!1207856 (= c!202166 (<= (- (- until!61 1) (- from!613 1)) 0))))

(declare-fun d!345443 () Bool)

(assert (=> d!345443 e!774740))

(declare-fun res!543335 () Bool)

(assert (=> d!345443 (=> (not res!543335) (not e!774740))))

(assert (=> d!345443 (= res!543335 (= ((_ map implies) (content!1721 lt!412810) (content!1721 (drop!619 lt!412772 (- from!613 1)))) ((as const (InoxSet T!22342)) true)))))

(assert (=> d!345443 (= lt!412810 e!774739)))

(declare-fun c!202164 () Bool)

(assert (=> d!345443 (= c!202164 (or ((_ is Nil!12123) (drop!619 lt!412772 (- from!613 1))) (<= (- (- until!61 1) (- from!613 1)) 0)))))

(assert (=> d!345443 (= (take!147 (drop!619 lt!412772 (- from!613 1)) (- (- until!61 1) (- from!613 1))) lt!412810)))

(declare-fun b!1207857 () Bool)

(assert (=> b!1207857 (= e!774737 (size!9663 (drop!619 lt!412772 (- from!613 1))))))

(assert (= (and d!345443 c!202164) b!1207853))

(assert (= (and d!345443 (not c!202164)) b!1207855))

(assert (= (and d!345443 res!543335) b!1207856))

(assert (= (and b!1207856 c!202166) b!1207851))

(assert (= (and b!1207856 (not c!202166)) b!1207854))

(assert (= (and b!1207854 c!202165) b!1207857))

(assert (= (and b!1207854 (not c!202165)) b!1207852))

(assert (=> b!1207854 m!1383035))

(declare-fun m!1383183 () Bool)

(assert (=> b!1207854 m!1383183))

(declare-fun m!1383185 () Bool)

(assert (=> d!345443 m!1383185))

(assert (=> d!345443 m!1383035))

(declare-fun m!1383187 () Bool)

(assert (=> d!345443 m!1383187))

(assert (=> b!1207857 m!1383035))

(assert (=> b!1207857 m!1383183))

(declare-fun m!1383189 () Bool)

(assert (=> b!1207855 m!1383189))

(declare-fun m!1383191 () Bool)

(assert (=> b!1207856 m!1383191))

(assert (=> d!345397 d!345443))

(declare-fun d!345445 () Bool)

(declare-fun e!774744 () Bool)

(assert (=> d!345445 e!774744))

(declare-fun res!543336 () Bool)

(assert (=> d!345445 (=> (not res!543336) (not e!774744))))

(declare-fun lt!412811 () List!12147)

(assert (=> d!345445 (= res!543336 (= ((_ map implies) (content!1721 lt!412811) (content!1721 lt!412772)) ((as const (InoxSet T!22342)) true)))))

(declare-fun e!774745 () List!12147)

(assert (=> d!345445 (= lt!412811 e!774745)))

(declare-fun c!202168 () Bool)

(assert (=> d!345445 (= c!202168 ((_ is Nil!12123) lt!412772))))

(assert (=> d!345445 (= (drop!619 lt!412772 (- from!613 1)) lt!412811)))

(declare-fun b!1207858 () Bool)

(declare-fun e!774741 () Int)

(declare-fun e!774743 () Int)

(assert (=> b!1207858 (= e!774741 e!774743)))

(declare-fun c!202167 () Bool)

(declare-fun call!84343 () Int)

(assert (=> b!1207858 (= c!202167 (>= (- from!613 1) call!84343))))

(declare-fun b!1207859 () Bool)

(assert (=> b!1207859 (= e!774743 (- call!84343 (- from!613 1)))))

(declare-fun b!1207860 () Bool)

(assert (=> b!1207860 (= e!774743 0)))

(declare-fun b!1207861 () Bool)

(assert (=> b!1207861 (= e!774741 call!84343)))

(declare-fun b!1207862 () Bool)

(declare-fun e!774742 () List!12147)

(assert (=> b!1207862 (= e!774742 (drop!619 (t!112563 lt!412772) (- (- from!613 1) 1)))))

(declare-fun b!1207863 () Bool)

(assert (=> b!1207863 (= e!774742 lt!412772)))

(declare-fun b!1207864 () Bool)

(assert (=> b!1207864 (= e!774745 Nil!12123)))

(declare-fun b!1207865 () Bool)

(assert (=> b!1207865 (= e!774744 (= (size!9663 lt!412811) e!774741))))

(declare-fun c!202170 () Bool)

(assert (=> b!1207865 (= c!202170 (<= (- from!613 1) 0))))

(declare-fun b!1207866 () Bool)

(assert (=> b!1207866 (= e!774745 e!774742)))

(declare-fun c!202169 () Bool)

(assert (=> b!1207866 (= c!202169 (<= (- from!613 1) 0))))

(declare-fun bm!84338 () Bool)

(assert (=> bm!84338 (= call!84343 (size!9663 lt!412772))))

(assert (= (and d!345445 c!202168) b!1207864))

(assert (= (and d!345445 (not c!202168)) b!1207866))

(assert (= (and b!1207866 c!202169) b!1207863))

(assert (= (and b!1207866 (not c!202169)) b!1207862))

(assert (= (and d!345445 res!543336) b!1207865))

(assert (= (and b!1207865 c!202170) b!1207861))

(assert (= (and b!1207865 (not c!202170)) b!1207858))

(assert (= (and b!1207858 c!202167) b!1207860))

(assert (= (and b!1207858 (not c!202167)) b!1207859))

(assert (= (or b!1207861 b!1207858 b!1207859) bm!84338))

(declare-fun m!1383193 () Bool)

(assert (=> d!345445 m!1383193))

(declare-fun m!1383195 () Bool)

(assert (=> d!345445 m!1383195))

(declare-fun m!1383197 () Bool)

(assert (=> b!1207862 m!1383197))

(declare-fun m!1383199 () Bool)

(assert (=> b!1207865 m!1383199))

(declare-fun m!1383201 () Bool)

(assert (=> bm!84338 m!1383201))

(assert (=> d!345397 d!345445))

(declare-fun d!345447 () Bool)

(declare-fun lt!412812 () Int)

(assert (=> d!345447 (>= lt!412812 0)))

(declare-fun e!774746 () Int)

(assert (=> d!345447 (= lt!412812 e!774746)))

(declare-fun c!202171 () Bool)

(assert (=> d!345447 (= c!202171 ((_ is Nil!12123) (t!112563 l!2744)))))

(assert (=> d!345447 (= (size!9663 (t!112563 l!2744)) lt!412812)))

(declare-fun b!1207867 () Bool)

(assert (=> b!1207867 (= e!774746 0)))

(declare-fun b!1207868 () Bool)

(assert (=> b!1207868 (= e!774746 (+ 1 (size!9663 (t!112563 (t!112563 l!2744)))))))

(assert (= (and d!345447 c!202171) b!1207867))

(assert (= (and d!345447 (not c!202171)) b!1207868))

(declare-fun m!1383203 () Bool)

(assert (=> b!1207868 m!1383203))

(assert (=> b!1207708 d!345447))

(declare-fun d!345449 () Bool)

(declare-fun lt!412813 () Int)

(assert (=> d!345449 (>= lt!412813 0)))

(declare-fun e!774747 () Int)

(assert (=> d!345449 (= lt!412813 e!774747)))

(declare-fun c!202172 () Bool)

(assert (=> d!345449 (= c!202172 ((_ is Nil!12123) lt!412781))))

(assert (=> d!345449 (= (size!9663 lt!412781) lt!412813)))

(declare-fun b!1207869 () Bool)

(assert (=> b!1207869 (= e!774747 0)))

(declare-fun b!1207870 () Bool)

(assert (=> b!1207870 (= e!774747 (+ 1 (size!9663 (t!112563 lt!412781))))))

(assert (= (and d!345449 c!202172) b!1207869))

(assert (= (and d!345449 (not c!202172)) b!1207870))

(declare-fun m!1383205 () Bool)

(assert (=> b!1207870 m!1383205))

(assert (=> b!1207687 d!345449))

(assert (=> b!1207687 d!345423))

(assert (=> b!1207687 d!345391))

(declare-fun d!345451 () Bool)

(declare-fun e!774748 () Bool)

(assert (=> d!345451 e!774748))

(declare-fun res!543337 () Bool)

(assert (=> d!345451 (=> (not res!543337) (not e!774748))))

(declare-fun lt!412814 () List!12147)

(assert (=> d!345451 (= res!543337 (= (content!1721 lt!412814) ((_ map or) (content!1721 (t!112563 l!2744)) (content!1721 r!2028))))))

(declare-fun e!774749 () List!12147)

(assert (=> d!345451 (= lt!412814 e!774749)))

(declare-fun c!202173 () Bool)

(assert (=> d!345451 (= c!202173 ((_ is Nil!12123) (t!112563 l!2744)))))

(assert (=> d!345451 (= (++!3145 (t!112563 l!2744) r!2028) lt!412814)))

(declare-fun b!1207872 () Bool)

(assert (=> b!1207872 (= e!774749 (Cons!12123 (h!17524 (t!112563 l!2744)) (++!3145 (t!112563 (t!112563 l!2744)) r!2028)))))

(declare-fun b!1207873 () Bool)

(declare-fun res!543338 () Bool)

(assert (=> b!1207873 (=> (not res!543338) (not e!774748))))

(assert (=> b!1207873 (= res!543338 (= (size!9663 lt!412814) (+ (size!9663 (t!112563 l!2744)) (size!9663 r!2028))))))

(declare-fun b!1207874 () Bool)

(assert (=> b!1207874 (= e!774748 (or (not (= r!2028 Nil!12123)) (= lt!412814 (t!112563 l!2744))))))

(declare-fun b!1207871 () Bool)

(assert (=> b!1207871 (= e!774749 r!2028)))

(assert (= (and d!345451 c!202173) b!1207871))

(assert (= (and d!345451 (not c!202173)) b!1207872))

(assert (= (and d!345451 res!543337) b!1207873))

(assert (= (and b!1207873 res!543338) b!1207874))

(declare-fun m!1383207 () Bool)

(assert (=> d!345451 m!1383207))

(declare-fun m!1383209 () Bool)

(assert (=> d!345451 m!1383209))

(assert (=> d!345451 m!1383013))

(declare-fun m!1383211 () Bool)

(assert (=> b!1207872 m!1383211))

(declare-fun m!1383213 () Bool)

(assert (=> b!1207873 m!1383213))

(assert (=> b!1207873 m!1383029))

(assert (=> b!1207873 m!1382953))

(assert (=> b!1207690 d!345451))

(declare-fun d!345453 () Bool)

(declare-fun lt!412815 () Int)

(assert (=> d!345453 (>= lt!412815 0)))

(declare-fun e!774750 () Int)

(assert (=> d!345453 (= lt!412815 e!774750)))

(declare-fun c!202174 () Bool)

(assert (=> d!345453 (= c!202174 ((_ is Nil!12123) (t!112563 lt!412767)))))

(assert (=> d!345453 (= (size!9663 (t!112563 lt!412767)) lt!412815)))

(declare-fun b!1207875 () Bool)

(assert (=> b!1207875 (= e!774750 0)))

(declare-fun b!1207876 () Bool)

(assert (=> b!1207876 (= e!774750 (+ 1 (size!9663 (t!112563 (t!112563 lt!412767)))))))

(assert (= (and d!345453 c!202174) b!1207875))

(assert (= (and d!345453 (not c!202174)) b!1207876))

(declare-fun m!1383215 () Bool)

(assert (=> b!1207876 m!1383215))

(assert (=> b!1207766 d!345453))

(declare-fun d!345455 () Bool)

(declare-fun c!202177 () Bool)

(assert (=> d!345455 (= c!202177 ((_ is Nil!12123) lt!412780))))

(declare-fun e!774753 () (InoxSet T!22342))

(assert (=> d!345455 (= (content!1721 lt!412780) e!774753)))

(declare-fun b!1207881 () Bool)

(assert (=> b!1207881 (= e!774753 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207882 () Bool)

(assert (=> b!1207882 (= e!774753 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 lt!412780) true) (content!1721 (t!112563 lt!412780))))))

(assert (= (and d!345455 c!202177) b!1207881))

(assert (= (and d!345455 (not c!202177)) b!1207882))

(declare-fun m!1383217 () Bool)

(assert (=> b!1207882 m!1383217))

(declare-fun m!1383219 () Bool)

(assert (=> b!1207882 m!1383219))

(assert (=> d!345381 d!345455))

(declare-fun d!345457 () Bool)

(declare-fun c!202178 () Bool)

(assert (=> d!345457 (= c!202178 ((_ is Nil!12123) call!84318))))

(declare-fun e!774754 () (InoxSet T!22342))

(assert (=> d!345457 (= (content!1721 call!84318) e!774754)))

(declare-fun b!1207883 () Bool)

(assert (=> b!1207883 (= e!774754 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207884 () Bool)

(assert (=> b!1207884 (= e!774754 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 call!84318) true) (content!1721 (t!112563 call!84318))))))

(assert (= (and d!345457 c!202178) b!1207883))

(assert (= (and d!345457 (not c!202178)) b!1207884))

(declare-fun m!1383221 () Bool)

(assert (=> b!1207884 m!1383221))

(declare-fun m!1383223 () Bool)

(assert (=> b!1207884 m!1383223))

(assert (=> d!345381 d!345457))

(declare-fun d!345459 () Bool)

(declare-fun c!202179 () Bool)

(assert (=> d!345459 (= c!202179 ((_ is Nil!12123) call!84319))))

(declare-fun e!774755 () (InoxSet T!22342))

(assert (=> d!345459 (= (content!1721 call!84319) e!774755)))

(declare-fun b!1207885 () Bool)

(assert (=> b!1207885 (= e!774755 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207886 () Bool)

(assert (=> b!1207886 (= e!774755 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 call!84319) true) (content!1721 (t!112563 call!84319))))))

(assert (= (and d!345459 c!202179) b!1207885))

(assert (= (and d!345459 (not c!202179)) b!1207886))

(declare-fun m!1383225 () Bool)

(assert (=> b!1207886 m!1383225))

(declare-fun m!1383227 () Bool)

(assert (=> b!1207886 m!1383227))

(assert (=> d!345381 d!345459))

(declare-fun d!345461 () Bool)

(declare-fun lt!412816 () Int)

(assert (=> d!345461 (>= lt!412816 0)))

(declare-fun e!774756 () Int)

(assert (=> d!345461 (= lt!412816 e!774756)))

(declare-fun c!202180 () Bool)

(assert (=> d!345461 (= c!202180 ((_ is Nil!12123) lt!412782))))

(assert (=> d!345461 (= (size!9663 lt!412782) lt!412816)))

(declare-fun b!1207887 () Bool)

(assert (=> b!1207887 (= e!774756 0)))

(declare-fun b!1207888 () Bool)

(assert (=> b!1207888 (= e!774756 (+ 1 (size!9663 (t!112563 lt!412782))))))

(assert (= (and d!345461 c!202180) b!1207887))

(assert (= (and d!345461 (not c!202180)) b!1207888))

(declare-fun m!1383229 () Bool)

(assert (=> b!1207888 m!1383229))

(assert (=> b!1207691 d!345461))

(assert (=> b!1207691 d!345393))

(assert (=> b!1207691 d!345391))

(declare-fun d!345463 () Bool)

(declare-fun e!774757 () Bool)

(assert (=> d!345463 e!774757))

(declare-fun res!543339 () Bool)

(assert (=> d!345463 (=> (not res!543339) (not e!774757))))

(declare-fun lt!412817 () List!12147)

(assert (=> d!345463 (= res!543339 (= (content!1721 lt!412817) ((_ map or) (content!1721 (t!112563 call!84320)) (content!1721 call!84317))))))

(declare-fun e!774758 () List!12147)

(assert (=> d!345463 (= lt!412817 e!774758)))

(declare-fun c!202181 () Bool)

(assert (=> d!345463 (= c!202181 ((_ is Nil!12123) (t!112563 call!84320)))))

(assert (=> d!345463 (= (++!3145 (t!112563 call!84320) call!84317) lt!412817)))

(declare-fun b!1207890 () Bool)

(assert (=> b!1207890 (= e!774758 (Cons!12123 (h!17524 (t!112563 call!84320)) (++!3145 (t!112563 (t!112563 call!84320)) call!84317)))))

(declare-fun b!1207891 () Bool)

(declare-fun res!543340 () Bool)

(assert (=> b!1207891 (=> (not res!543340) (not e!774757))))

(assert (=> b!1207891 (= res!543340 (= (size!9663 lt!412817) (+ (size!9663 (t!112563 call!84320)) (size!9663 call!84317))))))

(declare-fun b!1207892 () Bool)

(assert (=> b!1207892 (= e!774757 (or (not (= call!84317 Nil!12123)) (= lt!412817 (t!112563 call!84320))))))

(declare-fun b!1207889 () Bool)

(assert (=> b!1207889 (= e!774758 call!84317)))

(assert (= (and d!345463 c!202181) b!1207889))

(assert (= (and d!345463 (not c!202181)) b!1207890))

(assert (= (and d!345463 res!543339) b!1207891))

(assert (= (and b!1207891 res!543340) b!1207892))

(declare-fun m!1383231 () Bool)

(assert (=> d!345463 m!1383231))

(declare-fun m!1383233 () Bool)

(assert (=> d!345463 m!1383233))

(assert (=> d!345463 m!1382985))

(declare-fun m!1383235 () Bool)

(assert (=> b!1207890 m!1383235))

(declare-fun m!1383237 () Bool)

(assert (=> b!1207891 m!1383237))

(declare-fun m!1383239 () Bool)

(assert (=> b!1207891 m!1383239))

(assert (=> b!1207891 m!1382993))

(assert (=> b!1207678 d!345463))

(assert (=> b!1207756 d!345423))

(assert (=> b!1207756 d!345391))

(declare-fun b!1207893 () Bool)

(declare-fun e!774760 () Int)

(assert (=> b!1207893 (= e!774760 0)))

(declare-fun b!1207894 () Bool)

(declare-fun e!774759 () Int)

(assert (=> b!1207894 (= e!774759 (- (ite c!202092 (- until!61 1) lt!412765) (- from!613 1)))))

(declare-fun b!1207895 () Bool)

(declare-fun e!774761 () List!12147)

(assert (=> b!1207895 (= e!774761 Nil!12123)))

(declare-fun b!1207896 () Bool)

(assert (=> b!1207896 (= e!774760 e!774759)))

(declare-fun c!202183 () Bool)

(assert (=> b!1207896 (= c!202183 (>= (- (ite c!202092 (- until!61 1) lt!412765) (- from!613 1)) (size!9663 (drop!619 lt!412767 (- from!613 1)))))))

(declare-fun b!1207897 () Bool)

(assert (=> b!1207897 (= e!774761 (Cons!12123 (h!17524 (drop!619 lt!412767 (- from!613 1))) (take!147 (t!112563 (drop!619 lt!412767 (- from!613 1))) (- (- (ite c!202092 (- until!61 1) lt!412765) (- from!613 1)) 1))))))

(declare-fun b!1207898 () Bool)

(declare-fun e!774762 () Bool)

(declare-fun lt!412818 () List!12147)

(assert (=> b!1207898 (= e!774762 (= (size!9663 lt!412818) e!774760))))

(declare-fun c!202184 () Bool)

(assert (=> b!1207898 (= c!202184 (<= (- (ite c!202092 (- until!61 1) lt!412765) (- from!613 1)) 0))))

(declare-fun d!345465 () Bool)

(assert (=> d!345465 e!774762))

(declare-fun res!543341 () Bool)

(assert (=> d!345465 (=> (not res!543341) (not e!774762))))

(assert (=> d!345465 (= res!543341 (= ((_ map implies) (content!1721 lt!412818) (content!1721 (drop!619 lt!412767 (- from!613 1)))) ((as const (InoxSet T!22342)) true)))))

(assert (=> d!345465 (= lt!412818 e!774761)))

(declare-fun c!202182 () Bool)

(assert (=> d!345465 (= c!202182 (or ((_ is Nil!12123) (drop!619 lt!412767 (- from!613 1))) (<= (- (ite c!202092 (- until!61 1) lt!412765) (- from!613 1)) 0)))))

(assert (=> d!345465 (= (take!147 (drop!619 lt!412767 (- from!613 1)) (- (ite c!202092 (- until!61 1) lt!412765) (- from!613 1))) lt!412818)))

(declare-fun b!1207899 () Bool)

(assert (=> b!1207899 (= e!774759 (size!9663 (drop!619 lt!412767 (- from!613 1))))))

(assert (= (and d!345465 c!202182) b!1207895))

(assert (= (and d!345465 (not c!202182)) b!1207897))

(assert (= (and d!345465 res!543341) b!1207898))

(assert (= (and b!1207898 c!202184) b!1207893))

(assert (= (and b!1207898 (not c!202184)) b!1207896))

(assert (= (and b!1207896 c!202183) b!1207899))

(assert (= (and b!1207896 (not c!202183)) b!1207894))

(assert (=> b!1207896 m!1383099))

(declare-fun m!1383241 () Bool)

(assert (=> b!1207896 m!1383241))

(declare-fun m!1383243 () Bool)

(assert (=> d!345465 m!1383243))

(assert (=> d!345465 m!1383099))

(declare-fun m!1383245 () Bool)

(assert (=> d!345465 m!1383245))

(assert (=> b!1207899 m!1383099))

(assert (=> b!1207899 m!1383241))

(declare-fun m!1383247 () Bool)

(assert (=> b!1207897 m!1383247))

(declare-fun m!1383249 () Bool)

(assert (=> b!1207898 m!1383249))

(assert (=> d!345419 d!345465))

(declare-fun d!345467 () Bool)

(declare-fun e!774766 () Bool)

(assert (=> d!345467 e!774766))

(declare-fun res!543342 () Bool)

(assert (=> d!345467 (=> (not res!543342) (not e!774766))))

(declare-fun lt!412819 () List!12147)

(assert (=> d!345467 (= res!543342 (= ((_ map implies) (content!1721 lt!412819) (content!1721 lt!412767)) ((as const (InoxSet T!22342)) true)))))

(declare-fun e!774767 () List!12147)

(assert (=> d!345467 (= lt!412819 e!774767)))

(declare-fun c!202186 () Bool)

(assert (=> d!345467 (= c!202186 ((_ is Nil!12123) lt!412767))))

(assert (=> d!345467 (= (drop!619 lt!412767 (- from!613 1)) lt!412819)))

(declare-fun b!1207900 () Bool)

(declare-fun e!774763 () Int)

(declare-fun e!774765 () Int)

(assert (=> b!1207900 (= e!774763 e!774765)))

(declare-fun c!202185 () Bool)

(declare-fun call!84344 () Int)

(assert (=> b!1207900 (= c!202185 (>= (- from!613 1) call!84344))))

(declare-fun b!1207901 () Bool)

(assert (=> b!1207901 (= e!774765 (- call!84344 (- from!613 1)))))

(declare-fun b!1207902 () Bool)

(assert (=> b!1207902 (= e!774765 0)))

(declare-fun b!1207903 () Bool)

(assert (=> b!1207903 (= e!774763 call!84344)))

(declare-fun b!1207904 () Bool)

(declare-fun e!774764 () List!12147)

(assert (=> b!1207904 (= e!774764 (drop!619 (t!112563 lt!412767) (- (- from!613 1) 1)))))

(declare-fun b!1207905 () Bool)

(assert (=> b!1207905 (= e!774764 lt!412767)))

(declare-fun b!1207906 () Bool)

(assert (=> b!1207906 (= e!774767 Nil!12123)))

(declare-fun b!1207907 () Bool)

(assert (=> b!1207907 (= e!774766 (= (size!9663 lt!412819) e!774763))))

(declare-fun c!202188 () Bool)

(assert (=> b!1207907 (= c!202188 (<= (- from!613 1) 0))))

(declare-fun b!1207908 () Bool)

(assert (=> b!1207908 (= e!774767 e!774764)))

(declare-fun c!202187 () Bool)

(assert (=> b!1207908 (= c!202187 (<= (- from!613 1) 0))))

(declare-fun bm!84339 () Bool)

(assert (=> bm!84339 (= call!84344 (size!9663 lt!412767))))

(assert (= (and d!345467 c!202186) b!1207906))

(assert (= (and d!345467 (not c!202186)) b!1207908))

(assert (= (and b!1207908 c!202187) b!1207905))

(assert (= (and b!1207908 (not c!202187)) b!1207904))

(assert (= (and d!345467 res!543342) b!1207907))

(assert (= (and b!1207907 c!202188) b!1207903))

(assert (= (and b!1207907 (not c!202188)) b!1207900))

(assert (= (and b!1207900 c!202185) b!1207902))

(assert (= (and b!1207900 (not c!202185)) b!1207901))

(assert (= (or b!1207903 b!1207900 b!1207901) bm!84339))

(declare-fun m!1383251 () Bool)

(assert (=> d!345467 m!1383251))

(assert (=> d!345467 m!1383011))

(declare-fun m!1383253 () Bool)

(assert (=> b!1207904 m!1383253))

(declare-fun m!1383255 () Bool)

(assert (=> b!1207907 m!1383255))

(assert (=> bm!84339 m!1382945))

(assert (=> d!345419 d!345467))

(declare-fun d!345469 () Bool)

(declare-fun e!774768 () Bool)

(assert (=> d!345469 e!774768))

(declare-fun res!543343 () Bool)

(assert (=> d!345469 (=> (not res!543343) (not e!774768))))

(declare-fun lt!412820 () List!12147)

(assert (=> d!345469 (= res!543343 (= (content!1721 lt!412820) ((_ map or) (content!1721 call!84335) (content!1721 (slice!523 r!2028 0 (- (- until!61 1) call!84334))))))))

(declare-fun e!774769 () List!12147)

(assert (=> d!345469 (= lt!412820 e!774769)))

(declare-fun c!202189 () Bool)

(assert (=> d!345469 (= c!202189 ((_ is Nil!12123) call!84335))))

(assert (=> d!345469 (= (++!3145 call!84335 (slice!523 r!2028 0 (- (- until!61 1) call!84334))) lt!412820)))

(declare-fun b!1207910 () Bool)

(assert (=> b!1207910 (= e!774769 (Cons!12123 (h!17524 call!84335) (++!3145 (t!112563 call!84335) (slice!523 r!2028 0 (- (- until!61 1) call!84334)))))))

(declare-fun b!1207911 () Bool)

(declare-fun res!543344 () Bool)

(assert (=> b!1207911 (=> (not res!543344) (not e!774768))))

(assert (=> b!1207911 (= res!543344 (= (size!9663 lt!412820) (+ (size!9663 call!84335) (size!9663 (slice!523 r!2028 0 (- (- until!61 1) call!84334))))))))

(declare-fun b!1207912 () Bool)

(assert (=> b!1207912 (= e!774768 (or (not (= (slice!523 r!2028 0 (- (- until!61 1) call!84334)) Nil!12123)) (= lt!412820 call!84335)))))

(declare-fun b!1207909 () Bool)

(assert (=> b!1207909 (= e!774769 (slice!523 r!2028 0 (- (- until!61 1) call!84334)))))

(assert (= (and d!345469 c!202189) b!1207909))

(assert (= (and d!345469 (not c!202189)) b!1207910))

(assert (= (and d!345469 res!543343) b!1207911))

(assert (= (and b!1207911 res!543344) b!1207912))

(declare-fun m!1383257 () Bool)

(assert (=> d!345469 m!1383257))

(declare-fun m!1383259 () Bool)

(assert (=> d!345469 m!1383259))

(assert (=> d!345469 m!1383087))

(declare-fun m!1383261 () Bool)

(assert (=> d!345469 m!1383261))

(assert (=> b!1207910 m!1383087))

(declare-fun m!1383263 () Bool)

(assert (=> b!1207910 m!1383263))

(declare-fun m!1383265 () Bool)

(assert (=> b!1207911 m!1383265))

(declare-fun m!1383267 () Bool)

(assert (=> b!1207911 m!1383267))

(assert (=> b!1207911 m!1383087))

(declare-fun m!1383269 () Bool)

(assert (=> b!1207911 m!1383269))

(assert (=> b!1207757 d!345469))

(declare-fun d!345471 () Bool)

(assert (=> d!345471 (= (slice!523 r!2028 0 (- (- until!61 1) call!84334)) (take!147 (drop!619 r!2028 0) (- (- (- until!61 1) call!84334) 0)))))

(declare-fun bs!288492 () Bool)

(assert (= bs!288492 d!345471))

(declare-fun m!1383271 () Bool)

(assert (=> bs!288492 m!1383271))

(assert (=> bs!288492 m!1383271))

(declare-fun m!1383273 () Bool)

(assert (=> bs!288492 m!1383273))

(assert (=> b!1207757 d!345471))

(declare-fun d!345473 () Bool)

(declare-fun lt!412821 () Int)

(assert (=> d!345473 (>= lt!412821 0)))

(declare-fun e!774770 () Int)

(assert (=> d!345473 (= lt!412821 e!774770)))

(declare-fun c!202190 () Bool)

(assert (=> d!345473 (= c!202190 ((_ is Nil!12123) lt!412779))))

(assert (=> d!345473 (= (size!9663 lt!412779) lt!412821)))

(declare-fun b!1207913 () Bool)

(assert (=> b!1207913 (= e!774770 0)))

(declare-fun b!1207914 () Bool)

(assert (=> b!1207914 (= e!774770 (+ 1 (size!9663 (t!112563 lt!412779))))))

(assert (= (and d!345473 c!202190) b!1207913))

(assert (= (and d!345473 (not c!202190)) b!1207914))

(declare-fun m!1383275 () Bool)

(assert (=> b!1207914 m!1383275))

(assert (=> b!1207679 d!345473))

(declare-fun d!345475 () Bool)

(declare-fun lt!412822 () Int)

(assert (=> d!345475 (>= lt!412822 0)))

(declare-fun e!774771 () Int)

(assert (=> d!345475 (= lt!412822 e!774771)))

(declare-fun c!202191 () Bool)

(assert (=> d!345475 (= c!202191 ((_ is Nil!12123) call!84320))))

(assert (=> d!345475 (= (size!9663 call!84320) lt!412822)))

(declare-fun b!1207915 () Bool)

(assert (=> b!1207915 (= e!774771 0)))

(declare-fun b!1207916 () Bool)

(assert (=> b!1207916 (= e!774771 (+ 1 (size!9663 (t!112563 call!84320))))))

(assert (= (and d!345475 c!202191) b!1207915))

(assert (= (and d!345475 (not c!202191)) b!1207916))

(assert (=> b!1207916 m!1383239))

(assert (=> b!1207679 d!345475))

(declare-fun d!345477 () Bool)

(declare-fun lt!412823 () Int)

(assert (=> d!345477 (>= lt!412823 0)))

(declare-fun e!774772 () Int)

(assert (=> d!345477 (= lt!412823 e!774772)))

(declare-fun c!202192 () Bool)

(assert (=> d!345477 (= c!202192 ((_ is Nil!12123) call!84317))))

(assert (=> d!345477 (= (size!9663 call!84317) lt!412823)))

(declare-fun b!1207917 () Bool)

(assert (=> b!1207917 (= e!774772 0)))

(declare-fun b!1207918 () Bool)

(assert (=> b!1207918 (= e!774772 (+ 1 (size!9663 (t!112563 call!84317))))))

(assert (= (and d!345477 c!202192) b!1207917))

(assert (= (and d!345477 (not c!202192)) b!1207918))

(declare-fun m!1383277 () Bool)

(assert (=> b!1207918 m!1383277))

(assert (=> b!1207679 d!345477))

(declare-fun d!345479 () Bool)

(declare-fun c!202193 () Bool)

(assert (=> d!345479 (= c!202193 ((_ is Nil!12123) lt!412779))))

(declare-fun e!774773 () (InoxSet T!22342))

(assert (=> d!345479 (= (content!1721 lt!412779) e!774773)))

(declare-fun b!1207919 () Bool)

(assert (=> b!1207919 (= e!774773 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207920 () Bool)

(assert (=> b!1207920 (= e!774773 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 lt!412779) true) (content!1721 (t!112563 lt!412779))))))

(assert (= (and d!345479 c!202193) b!1207919))

(assert (= (and d!345479 (not c!202193)) b!1207920))

(declare-fun m!1383279 () Bool)

(assert (=> b!1207920 m!1383279))

(declare-fun m!1383281 () Bool)

(assert (=> b!1207920 m!1383281))

(assert (=> d!345369 d!345479))

(declare-fun d!345481 () Bool)

(declare-fun c!202194 () Bool)

(assert (=> d!345481 (= c!202194 ((_ is Nil!12123) call!84320))))

(declare-fun e!774774 () (InoxSet T!22342))

(assert (=> d!345481 (= (content!1721 call!84320) e!774774)))

(declare-fun b!1207921 () Bool)

(assert (=> b!1207921 (= e!774774 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207922 () Bool)

(assert (=> b!1207922 (= e!774774 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 call!84320) true) (content!1721 (t!112563 call!84320))))))

(assert (= (and d!345481 c!202194) b!1207921))

(assert (= (and d!345481 (not c!202194)) b!1207922))

(declare-fun m!1383283 () Bool)

(assert (=> b!1207922 m!1383283))

(assert (=> b!1207922 m!1383233))

(assert (=> d!345369 d!345481))

(declare-fun d!345483 () Bool)

(declare-fun c!202195 () Bool)

(assert (=> d!345483 (= c!202195 ((_ is Nil!12123) call!84317))))

(declare-fun e!774775 () (InoxSet T!22342))

(assert (=> d!345483 (= (content!1721 call!84317) e!774775)))

(declare-fun b!1207923 () Bool)

(assert (=> b!1207923 (= e!774775 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207924 () Bool)

(assert (=> b!1207924 (= e!774775 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 call!84317) true) (content!1721 (t!112563 call!84317))))))

(assert (= (and d!345483 c!202195) b!1207923))

(assert (= (and d!345483 (not c!202195)) b!1207924))

(declare-fun m!1383285 () Bool)

(assert (=> b!1207924 m!1383285))

(declare-fun m!1383287 () Bool)

(assert (=> b!1207924 m!1383287))

(assert (=> d!345369 d!345483))

(declare-fun d!345485 () Bool)

(assert (=> d!345485 (= (slice!523 (++!3145 lt!412767 r!2028) (- from!613 1) (- until!61 1)) (take!147 (drop!619 (++!3145 lt!412767 r!2028) (- from!613 1)) (- (- until!61 1) (- from!613 1))))))

(declare-fun bs!288493 () Bool)

(assert (= bs!288493 d!345485))

(assert (=> bs!288493 m!1382963))

(declare-fun m!1383289 () Bool)

(assert (=> bs!288493 m!1383289))

(assert (=> bs!288493 m!1383289))

(declare-fun m!1383291 () Bool)

(assert (=> bs!288493 m!1383291))

(assert (=> d!345399 d!345485))

(assert (=> d!345399 d!345385))

(assert (=> d!345399 d!345423))

(declare-fun b!1207943 () Bool)

(declare-fun e!774786 () List!12147)

(declare-fun call!84351 () List!12147)

(assert (=> b!1207943 (= e!774786 call!84351)))

(declare-fun b!1207944 () Bool)

(declare-fun e!774787 () List!12147)

(declare-fun call!84353 () List!12147)

(assert (=> b!1207944 (= e!774787 call!84353)))

(declare-fun e!774785 () Int)

(declare-fun bm!84346 () Bool)

(declare-fun c!202205 () Bool)

(declare-fun call!84352 () Int)

(assert (=> bm!84346 (= call!84351 (slice!523 (ite c!202205 r!2028 lt!412767) (ite c!202205 (- (- from!613 1) call!84352) (- from!613 1)) (ite c!202205 (- (- until!61 1) call!84352) e!774785)))))

(declare-fun b!1207945 () Bool)

(assert (=> b!1207945 (= e!774785 (- until!61 1))))

(declare-fun d!345487 () Bool)

(assert (=> d!345487 (= (slice!523 (++!3145 lt!412767 r!2028) (- from!613 1) (- until!61 1)) e!774786)))

(assert (=> d!345487 (= c!202205 (<= (size!9663 lt!412767) (- from!613 1)))))

(assert (=> d!345487 true))

(declare-fun _$8!227 () Unit!18516)

(assert (=> d!345487 (= (choose!7748 lt!412767 r!2028 (- from!613 1) (- until!61 1)) _$8!227)))

(declare-fun bm!84347 () Bool)

(declare-fun c!202206 () Bool)

(declare-fun c!202207 () Bool)

(assert (=> bm!84347 (= c!202206 c!202207)))

(assert (=> bm!84347 (= call!84353 call!84351)))

(declare-fun bm!84348 () Bool)

(assert (=> bm!84348 (= call!84352 (size!9663 lt!412767))))

(declare-fun b!1207946 () Bool)

(assert (=> b!1207946 (= e!774785 call!84352)))

(declare-fun b!1207947 () Bool)

(assert (=> b!1207947 (= e!774786 e!774787)))

(assert (=> b!1207947 (= c!202207 (<= (- until!61 1) call!84352))))

(declare-fun b!1207948 () Bool)

(assert (=> b!1207948 (= e!774787 (++!3145 call!84353 (slice!523 r!2028 0 (- (- until!61 1) call!84352))))))

(assert (= (and d!345487 c!202205) b!1207943))

(assert (= (and d!345487 (not c!202205)) b!1207947))

(assert (= (and b!1207947 c!202207) b!1207944))

(assert (= (and b!1207947 (not c!202207)) b!1207948))

(assert (= (or b!1207944 b!1207948) bm!84347))

(assert (= (and bm!84347 c!202206) b!1207945))

(assert (= (and bm!84347 (not c!202206)) b!1207946))

(assert (= (or b!1207943 b!1207946 b!1207947 b!1207948) bm!84348))

(assert (= (or b!1207943 bm!84347) bm!84346))

(declare-fun m!1383299 () Bool)

(assert (=> bm!84346 m!1383299))

(assert (=> d!345487 m!1382963))

(assert (=> d!345487 m!1382963))

(assert (=> d!345487 m!1383091))

(assert (=> d!345487 m!1382945))

(assert (=> bm!84348 m!1382945))

(declare-fun m!1383301 () Bool)

(assert (=> b!1207948 m!1383301))

(assert (=> b!1207948 m!1383301))

(declare-fun m!1383303 () Bool)

(assert (=> b!1207948 m!1383303))

(assert (=> d!345399 d!345487))

(declare-fun b!1207949 () Bool)

(declare-fun e!774789 () Int)

(assert (=> b!1207949 (= e!774789 0)))

(declare-fun e!774788 () Int)

(declare-fun b!1207950 () Bool)

(assert (=> b!1207950 (= e!774788 (- (- until!61 lt!412769) (ite c!202094 (- from!613 lt!412769) 0)))))

(declare-fun b!1207951 () Bool)

(declare-fun e!774790 () List!12147)

(assert (=> b!1207951 (= e!774790 Nil!12123)))

(declare-fun b!1207952 () Bool)

(assert (=> b!1207952 (= e!774789 e!774788)))

(declare-fun c!202209 () Bool)

(assert (=> b!1207952 (= c!202209 (>= (- (- until!61 lt!412769) (ite c!202094 (- from!613 lt!412769) 0)) (size!9663 (drop!619 r!2028 (ite c!202094 (- from!613 lt!412769) 0)))))))

(declare-fun b!1207953 () Bool)

(assert (=> b!1207953 (= e!774790 (Cons!12123 (h!17524 (drop!619 r!2028 (ite c!202094 (- from!613 lt!412769) 0))) (take!147 (t!112563 (drop!619 r!2028 (ite c!202094 (- from!613 lt!412769) 0))) (- (- (- until!61 lt!412769) (ite c!202094 (- from!613 lt!412769) 0)) 1))))))

(declare-fun b!1207954 () Bool)

(declare-fun e!774791 () Bool)

(declare-fun lt!412827 () List!12147)

(assert (=> b!1207954 (= e!774791 (= (size!9663 lt!412827) e!774789))))

(declare-fun c!202210 () Bool)

(assert (=> b!1207954 (= c!202210 (<= (- (- until!61 lt!412769) (ite c!202094 (- from!613 lt!412769) 0)) 0))))

(declare-fun d!345497 () Bool)

(assert (=> d!345497 e!774791))

(declare-fun res!543345 () Bool)

(assert (=> d!345497 (=> (not res!543345) (not e!774791))))

(assert (=> d!345497 (= res!543345 (= ((_ map implies) (content!1721 lt!412827) (content!1721 (drop!619 r!2028 (ite c!202094 (- from!613 lt!412769) 0)))) ((as const (InoxSet T!22342)) true)))))

(assert (=> d!345497 (= lt!412827 e!774790)))

(declare-fun c!202208 () Bool)

(assert (=> d!345497 (= c!202208 (or ((_ is Nil!12123) (drop!619 r!2028 (ite c!202094 (- from!613 lt!412769) 0))) (<= (- (- until!61 lt!412769) (ite c!202094 (- from!613 lt!412769) 0)) 0)))))

(assert (=> d!345497 (= (take!147 (drop!619 r!2028 (ite c!202094 (- from!613 lt!412769) 0)) (- (- until!61 lt!412769) (ite c!202094 (- from!613 lt!412769) 0))) lt!412827)))

(declare-fun b!1207955 () Bool)

(assert (=> b!1207955 (= e!774788 (size!9663 (drop!619 r!2028 (ite c!202094 (- from!613 lt!412769) 0))))))

(assert (= (and d!345497 c!202208) b!1207951))

(assert (= (and d!345497 (not c!202208)) b!1207953))

(assert (= (and d!345497 res!543345) b!1207954))

(assert (= (and b!1207954 c!202210) b!1207949))

(assert (= (and b!1207954 (not c!202210)) b!1207952))

(assert (= (and b!1207952 c!202209) b!1207955))

(assert (= (and b!1207952 (not c!202209)) b!1207950))

(assert (=> b!1207952 m!1383103))

(declare-fun m!1383305 () Bool)

(assert (=> b!1207952 m!1383305))

(declare-fun m!1383307 () Bool)

(assert (=> d!345497 m!1383307))

(assert (=> d!345497 m!1383103))

(declare-fun m!1383309 () Bool)

(assert (=> d!345497 m!1383309))

(assert (=> b!1207955 m!1383103))

(assert (=> b!1207955 m!1383305))

(declare-fun m!1383311 () Bool)

(assert (=> b!1207953 m!1383311))

(declare-fun m!1383313 () Bool)

(assert (=> b!1207954 m!1383313))

(assert (=> d!345421 d!345497))

(declare-fun d!345499 () Bool)

(declare-fun e!774795 () Bool)

(assert (=> d!345499 e!774795))

(declare-fun res!543346 () Bool)

(assert (=> d!345499 (=> (not res!543346) (not e!774795))))

(declare-fun lt!412828 () List!12147)

(assert (=> d!345499 (= res!543346 (= ((_ map implies) (content!1721 lt!412828) (content!1721 r!2028)) ((as const (InoxSet T!22342)) true)))))

(declare-fun e!774796 () List!12147)

(assert (=> d!345499 (= lt!412828 e!774796)))

(declare-fun c!202212 () Bool)

(assert (=> d!345499 (= c!202212 ((_ is Nil!12123) r!2028))))

(assert (=> d!345499 (= (drop!619 r!2028 (ite c!202094 (- from!613 lt!412769) 0)) lt!412828)))

(declare-fun b!1207956 () Bool)

(declare-fun e!774792 () Int)

(declare-fun e!774794 () Int)

(assert (=> b!1207956 (= e!774792 e!774794)))

(declare-fun c!202211 () Bool)

(declare-fun call!84354 () Int)

(assert (=> b!1207956 (= c!202211 (>= (ite c!202094 (- from!613 lt!412769) 0) call!84354))))

(declare-fun b!1207957 () Bool)

(assert (=> b!1207957 (= e!774794 (- call!84354 (ite c!202094 (- from!613 lt!412769) 0)))))

(declare-fun b!1207958 () Bool)

(assert (=> b!1207958 (= e!774794 0)))

(declare-fun b!1207959 () Bool)

(assert (=> b!1207959 (= e!774792 call!84354)))

(declare-fun b!1207960 () Bool)

(declare-fun e!774793 () List!12147)

(assert (=> b!1207960 (= e!774793 (drop!619 (t!112563 r!2028) (- (ite c!202094 (- from!613 lt!412769) 0) 1)))))

(declare-fun b!1207961 () Bool)

(assert (=> b!1207961 (= e!774793 r!2028)))

(declare-fun b!1207962 () Bool)

(assert (=> b!1207962 (= e!774796 Nil!12123)))

(declare-fun b!1207963 () Bool)

(assert (=> b!1207963 (= e!774795 (= (size!9663 lt!412828) e!774792))))

(declare-fun c!202214 () Bool)

(assert (=> b!1207963 (= c!202214 (<= (ite c!202094 (- from!613 lt!412769) 0) 0))))

(declare-fun b!1207964 () Bool)

(assert (=> b!1207964 (= e!774796 e!774793)))

(declare-fun c!202213 () Bool)

(assert (=> b!1207964 (= c!202213 (<= (ite c!202094 (- from!613 lt!412769) 0) 0))))

(declare-fun bm!84349 () Bool)

(assert (=> bm!84349 (= call!84354 (size!9663 r!2028))))

(assert (= (and d!345499 c!202212) b!1207962))

(assert (= (and d!345499 (not c!202212)) b!1207964))

(assert (= (and b!1207964 c!202213) b!1207961))

(assert (= (and b!1207964 (not c!202213)) b!1207960))

(assert (= (and d!345499 res!543346) b!1207963))

(assert (= (and b!1207963 c!202214) b!1207959))

(assert (= (and b!1207963 (not c!202214)) b!1207956))

(assert (= (and b!1207956 c!202211) b!1207958))

(assert (= (and b!1207956 (not c!202211)) b!1207957))

(assert (= (or b!1207959 b!1207956 b!1207957) bm!84349))

(declare-fun m!1383315 () Bool)

(assert (=> d!345499 m!1383315))

(assert (=> d!345499 m!1383013))

(declare-fun m!1383317 () Bool)

(assert (=> b!1207960 m!1383317))

(declare-fun m!1383319 () Bool)

(assert (=> b!1207963 m!1383319))

(assert (=> bm!84349 m!1382953))

(assert (=> d!345421 d!345499))

(declare-fun d!345501 () Bool)

(declare-fun e!774798 () Bool)

(assert (=> d!345501 e!774798))

(declare-fun res!543347 () Bool)

(assert (=> d!345501 (=> (not res!543347) (not e!774798))))

(declare-fun lt!412831 () List!12147)

(assert (=> d!345501 (= res!543347 (= (content!1721 lt!412831) ((_ map or) (content!1721 (t!112563 call!84318)) (content!1721 call!84319))))))

(declare-fun e!774800 () List!12147)

(assert (=> d!345501 (= lt!412831 e!774800)))

(declare-fun c!202217 () Bool)

(assert (=> d!345501 (= c!202217 ((_ is Nil!12123) (t!112563 call!84318)))))

(assert (=> d!345501 (= (++!3145 (t!112563 call!84318) call!84319) lt!412831)))

(declare-fun b!1207970 () Bool)

(assert (=> b!1207970 (= e!774800 (Cons!12123 (h!17524 (t!112563 call!84318)) (++!3145 (t!112563 (t!112563 call!84318)) call!84319)))))

(declare-fun b!1207971 () Bool)

(declare-fun res!543348 () Bool)

(assert (=> b!1207971 (=> (not res!543348) (not e!774798))))

(assert (=> b!1207971 (= res!543348 (= (size!9663 lt!412831) (+ (size!9663 (t!112563 call!84318)) (size!9663 call!84319))))))

(declare-fun b!1207972 () Bool)

(assert (=> b!1207972 (= e!774798 (or (not (= call!84319 Nil!12123)) (= lt!412831 (t!112563 call!84318))))))

(declare-fun b!1207969 () Bool)

(assert (=> b!1207969 (= e!774800 call!84319)))

(assert (= (and d!345501 c!202217) b!1207969))

(assert (= (and d!345501 (not c!202217)) b!1207970))

(assert (= (and d!345501 res!543347) b!1207971))

(assert (= (and b!1207971 res!543348) b!1207972))

(declare-fun m!1383321 () Bool)

(assert (=> d!345501 m!1383321))

(assert (=> d!345501 m!1383223))

(assert (=> d!345501 m!1382999))

(declare-fun m!1383323 () Bool)

(assert (=> b!1207970 m!1383323))

(declare-fun m!1383325 () Bool)

(assert (=> b!1207971 m!1383325))

(declare-fun m!1383327 () Bool)

(assert (=> b!1207971 m!1383327))

(assert (=> b!1207971 m!1383007))

(assert (=> b!1207682 d!345501))

(declare-fun d!345503 () Bool)

(declare-fun c!202218 () Bool)

(assert (=> d!345503 (= c!202218 ((_ is Nil!12123) lt!412781))))

(declare-fun e!774801 () (InoxSet T!22342))

(assert (=> d!345503 (= (content!1721 lt!412781) e!774801)))

(declare-fun b!1207973 () Bool)

(assert (=> b!1207973 (= e!774801 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207974 () Bool)

(assert (=> b!1207974 (= e!774801 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 lt!412781) true) (content!1721 (t!112563 lt!412781))))))

(assert (= (and d!345503 c!202218) b!1207973))

(assert (= (and d!345503 (not c!202218)) b!1207974))

(declare-fun m!1383329 () Bool)

(assert (=> b!1207974 m!1383329))

(declare-fun m!1383331 () Bool)

(assert (=> b!1207974 m!1383331))

(assert (=> d!345385 d!345503))

(declare-fun d!345505 () Bool)

(declare-fun c!202221 () Bool)

(assert (=> d!345505 (= c!202221 ((_ is Nil!12123) lt!412767))))

(declare-fun e!774806 () (InoxSet T!22342))

(assert (=> d!345505 (= (content!1721 lt!412767) e!774806)))

(declare-fun b!1207981 () Bool)

(assert (=> b!1207981 (= e!774806 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207982 () Bool)

(assert (=> b!1207982 (= e!774806 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 lt!412767) true) (content!1721 (t!112563 lt!412767))))))

(assert (= (and d!345505 c!202221) b!1207981))

(assert (= (and d!345505 (not c!202221)) b!1207982))

(declare-fun m!1383333 () Bool)

(assert (=> b!1207982 m!1383333))

(assert (=> b!1207982 m!1383177))

(assert (=> d!345385 d!345505))

(declare-fun d!345507 () Bool)

(declare-fun c!202224 () Bool)

(assert (=> d!345507 (= c!202224 ((_ is Nil!12123) r!2028))))

(declare-fun e!774809 () (InoxSet T!22342))

(assert (=> d!345507 (= (content!1721 r!2028) e!774809)))

(declare-fun b!1207987 () Bool)

(assert (=> b!1207987 (= e!774809 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207988 () Bool)

(assert (=> b!1207988 (= e!774809 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 r!2028) true) (content!1721 (t!112563 r!2028))))))

(assert (= (and d!345507 c!202224) b!1207987))

(assert (= (and d!345507 (not c!202224)) b!1207988))

(declare-fun m!1383335 () Bool)

(assert (=> b!1207988 m!1383335))

(declare-fun m!1383337 () Bool)

(assert (=> b!1207988 m!1383337))

(assert (=> d!345385 d!345507))

(declare-fun d!345509 () Bool)

(declare-fun lt!412832 () Int)

(assert (=> d!345509 (>= lt!412832 0)))

(declare-fun e!774810 () Int)

(assert (=> d!345509 (= lt!412832 e!774810)))

(declare-fun c!202225 () Bool)

(assert (=> d!345509 (= c!202225 ((_ is Nil!12123) lt!412780))))

(assert (=> d!345509 (= (size!9663 lt!412780) lt!412832)))

(declare-fun b!1207989 () Bool)

(assert (=> b!1207989 (= e!774810 0)))

(declare-fun b!1207990 () Bool)

(assert (=> b!1207990 (= e!774810 (+ 1 (size!9663 (t!112563 lt!412780))))))

(assert (= (and d!345509 c!202225) b!1207989))

(assert (= (and d!345509 (not c!202225)) b!1207990))

(declare-fun m!1383339 () Bool)

(assert (=> b!1207990 m!1383339))

(assert (=> b!1207683 d!345509))

(declare-fun d!345511 () Bool)

(declare-fun lt!412833 () Int)

(assert (=> d!345511 (>= lt!412833 0)))

(declare-fun e!774811 () Int)

(assert (=> d!345511 (= lt!412833 e!774811)))

(declare-fun c!202226 () Bool)

(assert (=> d!345511 (= c!202226 ((_ is Nil!12123) call!84318))))

(assert (=> d!345511 (= (size!9663 call!84318) lt!412833)))

(declare-fun b!1207991 () Bool)

(assert (=> b!1207991 (= e!774811 0)))

(declare-fun b!1207992 () Bool)

(assert (=> b!1207992 (= e!774811 (+ 1 (size!9663 (t!112563 call!84318))))))

(assert (= (and d!345511 c!202226) b!1207991))

(assert (= (and d!345511 (not c!202226)) b!1207992))

(assert (=> b!1207992 m!1383327))

(assert (=> b!1207683 d!345511))

(declare-fun d!345513 () Bool)

(declare-fun lt!412834 () Int)

(assert (=> d!345513 (>= lt!412834 0)))

(declare-fun e!774812 () Int)

(assert (=> d!345513 (= lt!412834 e!774812)))

(declare-fun c!202227 () Bool)

(assert (=> d!345513 (= c!202227 ((_ is Nil!12123) call!84319))))

(assert (=> d!345513 (= (size!9663 call!84319) lt!412834)))

(declare-fun b!1207993 () Bool)

(assert (=> b!1207993 (= e!774812 0)))

(declare-fun b!1207994 () Bool)

(assert (=> b!1207994 (= e!774812 (+ 1 (size!9663 (t!112563 call!84319))))))

(assert (= (and d!345513 c!202227) b!1207993))

(assert (= (and d!345513 (not c!202227)) b!1207994))

(declare-fun m!1383341 () Bool)

(assert (=> b!1207994 m!1383341))

(assert (=> b!1207683 d!345513))

(declare-fun d!345515 () Bool)

(declare-fun lt!412835 () Int)

(assert (=> d!345515 (>= lt!412835 0)))

(declare-fun e!774813 () Int)

(assert (=> d!345515 (= lt!412835 e!774813)))

(declare-fun c!202228 () Bool)

(assert (=> d!345515 (= c!202228 ((_ is Nil!12123) (t!112563 r!2028)))))

(assert (=> d!345515 (= (size!9663 (t!112563 r!2028)) lt!412835)))

(declare-fun b!1207995 () Bool)

(assert (=> b!1207995 (= e!774813 0)))

(declare-fun b!1207996 () Bool)

(assert (=> b!1207996 (= e!774813 (+ 1 (size!9663 (t!112563 (t!112563 r!2028)))))))

(assert (= (and d!345515 c!202228) b!1207995))

(assert (= (and d!345515 (not c!202228)) b!1207996))

(declare-fun m!1383343 () Bool)

(assert (=> b!1207996 m!1383343))

(assert (=> b!1207706 d!345515))

(declare-fun d!345517 () Bool)

(declare-fun c!202229 () Bool)

(assert (=> d!345517 (= c!202229 ((_ is Nil!12123) lt!412782))))

(declare-fun e!774814 () (InoxSet T!22342))

(assert (=> d!345517 (= (content!1721 lt!412782) e!774814)))

(declare-fun b!1207997 () Bool)

(assert (=> b!1207997 (= e!774814 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1207998 () Bool)

(assert (=> b!1207998 (= e!774814 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 lt!412782) true) (content!1721 (t!112563 lt!412782))))))

(assert (= (and d!345517 c!202229) b!1207997))

(assert (= (and d!345517 (not c!202229)) b!1207998))

(declare-fun m!1383345 () Bool)

(assert (=> b!1207998 m!1383345))

(declare-fun m!1383347 () Bool)

(assert (=> b!1207998 m!1383347))

(assert (=> d!345389 d!345517))

(declare-fun d!345519 () Bool)

(declare-fun c!202230 () Bool)

(assert (=> d!345519 (= c!202230 ((_ is Nil!12123) l!2744))))

(declare-fun e!774815 () (InoxSet T!22342))

(assert (=> d!345519 (= (content!1721 l!2744) e!774815)))

(declare-fun b!1207999 () Bool)

(assert (=> b!1207999 (= e!774815 ((as const (Array T!22342 Bool)) false))))

(declare-fun b!1208000 () Bool)

(assert (=> b!1208000 (= e!774815 ((_ map or) (store ((as const (Array T!22342 Bool)) false) (h!17524 l!2744) true) (content!1721 (t!112563 l!2744))))))

(assert (= (and d!345519 c!202230) b!1207999))

(assert (= (and d!345519 (not c!202230)) b!1208000))

(declare-fun m!1383349 () Bool)

(assert (=> b!1208000 m!1383349))

(assert (=> b!1208000 m!1383209))

(assert (=> d!345389 d!345519))

(assert (=> d!345389 d!345507))

(declare-fun b!1208001 () Bool)

(declare-fun e!774817 () Int)

(assert (=> b!1208001 (= e!774817 0)))

(declare-fun b!1208002 () Bool)

(declare-fun e!774816 () Int)

(assert (=> b!1208002 (= e!774816 (- until!61 from!613))))

(declare-fun b!1208003 () Bool)

(declare-fun e!774818 () List!12147)

(assert (=> b!1208003 (= e!774818 Nil!12123)))

(declare-fun b!1208004 () Bool)

(assert (=> b!1208004 (= e!774817 e!774816)))

(declare-fun c!202232 () Bool)

(assert (=> b!1208004 (= c!202232 (>= (- until!61 from!613) (size!9663 (drop!619 lt!412764 from!613))))))

(declare-fun b!1208005 () Bool)

(assert (=> b!1208005 (= e!774818 (Cons!12123 (h!17524 (drop!619 lt!412764 from!613)) (take!147 (t!112563 (drop!619 lt!412764 from!613)) (- (- until!61 from!613) 1))))))

(declare-fun b!1208006 () Bool)

(declare-fun e!774819 () Bool)

(declare-fun lt!412836 () List!12147)

(assert (=> b!1208006 (= e!774819 (= (size!9663 lt!412836) e!774817))))

(declare-fun c!202233 () Bool)

(assert (=> b!1208006 (= c!202233 (<= (- until!61 from!613) 0))))

(declare-fun d!345521 () Bool)

(assert (=> d!345521 e!774819))

(declare-fun res!543351 () Bool)

(assert (=> d!345521 (=> (not res!543351) (not e!774819))))

(assert (=> d!345521 (= res!543351 (= ((_ map implies) (content!1721 lt!412836) (content!1721 (drop!619 lt!412764 from!613))) ((as const (InoxSet T!22342)) true)))))

(assert (=> d!345521 (= lt!412836 e!774818)))

(declare-fun c!202231 () Bool)

(assert (=> d!345521 (= c!202231 (or ((_ is Nil!12123) (drop!619 lt!412764 from!613)) (<= (- until!61 from!613) 0)))))

(assert (=> d!345521 (= (take!147 (drop!619 lt!412764 from!613) (- until!61 from!613)) lt!412836)))

(declare-fun b!1208007 () Bool)

(assert (=> b!1208007 (= e!774816 (size!9663 (drop!619 lt!412764 from!613)))))

(assert (= (and d!345521 c!202231) b!1208003))

(assert (= (and d!345521 (not c!202231)) b!1208005))

(assert (= (and d!345521 res!543351) b!1208006))

(assert (= (and b!1208006 c!202233) b!1208001))

(assert (= (and b!1208006 (not c!202233)) b!1208004))

(assert (= (and b!1208004 c!202232) b!1208007))

(assert (= (and b!1208004 (not c!202232)) b!1208002))

(assert (=> b!1208004 m!1383031))

(declare-fun m!1383351 () Bool)

(assert (=> b!1208004 m!1383351))

(declare-fun m!1383353 () Bool)

(assert (=> d!345521 m!1383353))

(assert (=> d!345521 m!1383031))

(declare-fun m!1383355 () Bool)

(assert (=> d!345521 m!1383355))

(assert (=> b!1208007 m!1383031))

(assert (=> b!1208007 m!1383351))

(declare-fun m!1383357 () Bool)

(assert (=> b!1208005 m!1383357))

(declare-fun m!1383359 () Bool)

(assert (=> b!1208006 m!1383359))

(assert (=> d!345395 d!345521))

(declare-fun d!345523 () Bool)

(declare-fun e!774823 () Bool)

(assert (=> d!345523 e!774823))

(declare-fun res!543352 () Bool)

(assert (=> d!345523 (=> (not res!543352) (not e!774823))))

(declare-fun lt!412837 () List!12147)

(assert (=> d!345523 (= res!543352 (= ((_ map implies) (content!1721 lt!412837) (content!1721 lt!412764)) ((as const (InoxSet T!22342)) true)))))

(declare-fun e!774824 () List!12147)

(assert (=> d!345523 (= lt!412837 e!774824)))

(declare-fun c!202235 () Bool)

(assert (=> d!345523 (= c!202235 ((_ is Nil!12123) lt!412764))))

(assert (=> d!345523 (= (drop!619 lt!412764 from!613) lt!412837)))

(declare-fun b!1208008 () Bool)

(declare-fun e!774820 () Int)

(declare-fun e!774822 () Int)

(assert (=> b!1208008 (= e!774820 e!774822)))

(declare-fun c!202234 () Bool)

(declare-fun call!84355 () Int)

(assert (=> b!1208008 (= c!202234 (>= from!613 call!84355))))

(declare-fun b!1208009 () Bool)

(assert (=> b!1208009 (= e!774822 (- call!84355 from!613))))

(declare-fun b!1208010 () Bool)

(assert (=> b!1208010 (= e!774822 0)))

(declare-fun b!1208011 () Bool)

(assert (=> b!1208011 (= e!774820 call!84355)))

(declare-fun b!1208012 () Bool)

(declare-fun e!774821 () List!12147)

(assert (=> b!1208012 (= e!774821 (drop!619 (t!112563 lt!412764) (- from!613 1)))))

(declare-fun b!1208013 () Bool)

(assert (=> b!1208013 (= e!774821 lt!412764)))

(declare-fun b!1208014 () Bool)

(assert (=> b!1208014 (= e!774824 Nil!12123)))

(declare-fun b!1208015 () Bool)

(assert (=> b!1208015 (= e!774823 (= (size!9663 lt!412837) e!774820))))

(declare-fun c!202237 () Bool)

(assert (=> b!1208015 (= c!202237 (<= from!613 0))))

(declare-fun b!1208016 () Bool)

(assert (=> b!1208016 (= e!774824 e!774821)))

(declare-fun c!202236 () Bool)

(assert (=> b!1208016 (= c!202236 (<= from!613 0))))

(declare-fun bm!84350 () Bool)

(assert (=> bm!84350 (= call!84355 (size!9663 lt!412764))))

(assert (= (and d!345523 c!202235) b!1208014))

(assert (= (and d!345523 (not c!202235)) b!1208016))

(assert (= (and b!1208016 c!202236) b!1208013))

(assert (= (and b!1208016 (not c!202236)) b!1208012))

(assert (= (and d!345523 res!543352) b!1208015))

(assert (= (and b!1208015 c!202237) b!1208011))

(assert (= (and b!1208015 (not c!202237)) b!1208008))

(assert (= (and b!1208008 c!202234) b!1208010))

(assert (= (and b!1208008 (not c!202234)) b!1208009))

(assert (= (or b!1208011 b!1208008 b!1208009) bm!84350))

(declare-fun m!1383361 () Bool)

(assert (=> d!345523 m!1383361))

(declare-fun m!1383363 () Bool)

(assert (=> d!345523 m!1383363))

(declare-fun m!1383365 () Bool)

(assert (=> b!1208012 m!1383365))

(declare-fun m!1383367 () Bool)

(assert (=> b!1208015 m!1383367))

(declare-fun m!1383369 () Bool)

(assert (=> bm!84350 m!1383369))

(assert (=> d!345395 d!345523))

(declare-fun b!1208017 () Bool)

(declare-fun e!774825 () Bool)

(declare-fun tp!342130 () Bool)

(assert (=> b!1208017 (= e!774825 (and tp_is_empty!6139 tp!342130))))

(assert (=> b!1207776 (= tp!342125 e!774825)))

(assert (= (and b!1207776 ((_ is Cons!12123) (t!112563 (t!112563 l!2744)))) b!1208017))

(declare-fun b!1208018 () Bool)

(declare-fun e!774826 () Bool)

(declare-fun tp!342131 () Bool)

(assert (=> b!1208018 (= e!774826 (and tp_is_empty!6139 tp!342131))))

(assert (=> b!1207775 (= tp!342124 e!774826)))

(assert (= (and b!1207775 ((_ is Cons!12123) (t!112563 (t!112563 r!2028)))) b!1208018))

(check-sat (not b!1207876) (not d!345433) (not b!1207994) (not b!1207862) (not d!345469) (not b!1208004) (not b!1207803) (not d!345465) (not b!1207910) (not b!1207960) (not b!1207870) (not b!1207873) (not b!1207955) (not d!345471) (not b!1208007) (not bm!84338) (not b!1208018) (not bm!84337) (not b!1207990) (not b!1207918) (not b!1207924) (not d!345443) (not b!1207911) (not b!1207802) (not b!1207992) (not d!345487) (not b!1207834) (not bm!84336) (not d!345437) (not b!1207842) (not d!345439) (not b!1207890) (not b!1207826) (not bm!84339) (not b!1207954) (not b!1207897) (not b!1207837) (not d!345499) (not b!1207856) (not b!1207920) (not bm!84348) (not b!1207898) (not b!1208015) (not d!345467) (not b!1207855) (not b!1207907) (not b!1207916) (not b!1208006) (not d!345501) (not b!1207886) (not bm!84349) (not b!1207971) (not b!1207953) (not b!1207884) (not d!345521) (not b!1207882) (not b!1208005) (not d!345441) (not b!1207800) (not d!345451) (not b!1207848) (not b!1207970) (not b!1207872) (not b!1207865) (not b!1207835) (not b!1208000) (not b!1207988) (not b!1207836) (not d!345431) (not b!1207982) (not b!1207829) (not b!1207952) (not d!345463) (not bm!84350) (not b!1207801) (not b!1207857) (not d!345435) (not b!1207849) (not b!1207974) (not b!1207854) (not b!1207888) (not d!345485) (not b!1207868) (not b!1207914) (not b!1207899) (not b!1208017) (not d!345497) (not b!1208012) (not b!1207998) (not d!345445) tp_is_empty!6139 (not b!1207845) (not b!1207922) (not b!1207963) (not b!1207996) (not b!1207948) (not bm!84346) (not b!1207896) (not b!1207904) (not b!1207891) (not d!345523))
(check-sat)
