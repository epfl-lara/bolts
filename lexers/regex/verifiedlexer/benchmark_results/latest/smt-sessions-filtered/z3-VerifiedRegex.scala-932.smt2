; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47674 () Bool)

(assert start!47674)

(declare-fun b!520612 () Bool)

(declare-fun e!312003 () Bool)

(declare-fun tp_is_empty!2761 () Bool)

(declare-fun tp!161979 () Bool)

(assert (=> b!520612 (= e!312003 (and tp_is_empty!2761 tp!161979))))

(declare-fun b!520613 () Bool)

(declare-datatypes ((B!1165 0))(
  ( (B!1166 (val!1872 Int)) )
))
(declare-datatypes ((List!4820 0))(
  ( (Nil!4810) (Cons!4810 (h!10211 B!1165) (t!73410 List!4820)) )
))
(declare-fun list!41 () List!4820)

(declare-fun acc!308 () List!4820)

(declare-fun lt!216996 () List!4820)

(declare-fun e!312002 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!873 (List!4820) (InoxSet B!1165))

(declare-fun ++!1359 (List!4820 List!4820) List!4820)

(assert (=> b!520613 (= e!312002 (= (content!873 lt!216996) (content!873 (++!1359 (t!73410 list!41) acc!308))))))

(declare-fun b!520614 () Bool)

(declare-fun res!221072 () Bool)

(declare-fun e!312004 () Bool)

(assert (=> b!520614 (=> (not res!221072) (not e!312004))))

(get-info :version)

(assert (=> b!520614 (= res!221072 ((_ is Cons!4810) list!41))))

(declare-fun b!520616 () Bool)

(declare-fun e!312006 () Bool)

(assert (=> b!520616 (= e!312004 (not e!312006))))

(declare-fun res!221070 () Bool)

(assert (=> b!520616 (=> (not res!221070) (not e!312006))))

(declare-fun lt!216997 () Bool)

(assert (=> b!520616 (= res!221070 (not lt!216997))))

(assert (=> b!520616 e!312002))

(declare-fun res!221069 () Bool)

(assert (=> b!520616 (=> (not res!221069) (not e!312002))))

(assert (=> b!520616 (= res!221069 (not lt!216997))))

(declare-fun noDuplicate!161 (List!4820) Bool)

(assert (=> b!520616 (= lt!216997 (not (noDuplicate!161 lt!216996)))))

(declare-fun removeDuplicates!2 (List!4820 List!4820) List!4820)

(assert (=> b!520616 (= lt!216996 (removeDuplicates!2 (t!73410 list!41) acc!308))))

(declare-fun b!520617 () Bool)

(assert (=> b!520617 (= e!312006 (= (content!873 lt!216996) (content!873 (++!1359 list!41 acc!308))))))

(declare-fun b!520618 () Bool)

(declare-fun e!312005 () Bool)

(declare-fun tp!161978 () Bool)

(assert (=> b!520618 (= e!312005 (and tp_is_empty!2761 tp!161978))))

(declare-fun b!520615 () Bool)

(declare-fun res!221071 () Bool)

(assert (=> b!520615 (=> (not res!221071) (not e!312004))))

(declare-fun contains!1158 (List!4820 B!1165) Bool)

(assert (=> b!520615 (= res!221071 (contains!1158 acc!308 (h!10211 list!41)))))

(declare-fun res!221073 () Bool)

(assert (=> start!47674 (=> (not res!221073) (not e!312004))))

(assert (=> start!47674 (= res!221073 (noDuplicate!161 acc!308))))

(assert (=> start!47674 e!312004))

(assert (=> start!47674 e!312005))

(assert (=> start!47674 e!312003))

(assert (= (and start!47674 res!221073) b!520614))

(assert (= (and b!520614 res!221072) b!520615))

(assert (= (and b!520615 res!221071) b!520616))

(assert (= (and b!520616 res!221069) b!520613))

(assert (= (and b!520616 res!221070) b!520617))

(assert (= (and start!47674 ((_ is Cons!4810) acc!308)) b!520618))

(assert (= (and start!47674 ((_ is Cons!4810) list!41)) b!520612))

(declare-fun m!767215 () Bool)

(assert (=> start!47674 m!767215))

(declare-fun m!767217 () Bool)

(assert (=> b!520615 m!767217))

(declare-fun m!767219 () Bool)

(assert (=> b!520613 m!767219))

(declare-fun m!767221 () Bool)

(assert (=> b!520613 m!767221))

(assert (=> b!520613 m!767221))

(declare-fun m!767223 () Bool)

(assert (=> b!520613 m!767223))

(declare-fun m!767225 () Bool)

(assert (=> b!520616 m!767225))

(declare-fun m!767227 () Bool)

(assert (=> b!520616 m!767227))

(assert (=> b!520617 m!767219))

(declare-fun m!767229 () Bool)

(assert (=> b!520617 m!767229))

(assert (=> b!520617 m!767229))

(declare-fun m!767231 () Bool)

(assert (=> b!520617 m!767231))

(check-sat (not b!520612) tp_is_empty!2761 (not b!520615) (not b!520613) (not start!47674) (not b!520616) (not b!520618) (not b!520617))
(check-sat)
(get-model)

(declare-fun d!185897 () Bool)

(declare-fun res!221078 () Bool)

(declare-fun e!312015 () Bool)

(assert (=> d!185897 (=> res!221078 e!312015)))

(assert (=> d!185897 (= res!221078 ((_ is Nil!4810) lt!216996))))

(assert (=> d!185897 (= (noDuplicate!161 lt!216996) e!312015)))

(declare-fun b!520631 () Bool)

(declare-fun e!312016 () Bool)

(assert (=> b!520631 (= e!312015 e!312016)))

(declare-fun res!221079 () Bool)

(assert (=> b!520631 (=> (not res!221079) (not e!312016))))

(assert (=> b!520631 (= res!221079 (not (contains!1158 (t!73410 lt!216996) (h!10211 lt!216996))))))

(declare-fun b!520632 () Bool)

(assert (=> b!520632 (= e!312016 (noDuplicate!161 (t!73410 lt!216996)))))

(assert (= (and d!185897 (not res!221078)) b!520631))

(assert (= (and b!520631 res!221079) b!520632))

(declare-fun m!767241 () Bool)

(assert (=> b!520631 m!767241))

(declare-fun m!767243 () Bool)

(assert (=> b!520632 m!767243))

(assert (=> b!520616 d!185897))

(declare-fun d!185905 () Bool)

(declare-fun e!312036 () Bool)

(assert (=> d!185905 e!312036))

(declare-fun res!221098 () Bool)

(assert (=> d!185905 (=> (not res!221098) (not e!312036))))

(declare-fun lt!217004 () List!4820)

(assert (=> d!185905 (= res!221098 (noDuplicate!161 lt!217004))))

(declare-fun choose!3725 (List!4820 List!4820) List!4820)

(assert (=> d!185905 (= lt!217004 (choose!3725 (t!73410 list!41) acc!308))))

(assert (=> d!185905 (noDuplicate!161 acc!308)))

(assert (=> d!185905 (= (removeDuplicates!2 (t!73410 list!41) acc!308) lt!217004)))

(declare-fun b!520661 () Bool)

(assert (=> b!520661 (= e!312036 (= (content!873 lt!217004) (content!873 (++!1359 (t!73410 list!41) acc!308))))))

(assert (= (and d!185905 res!221098) b!520661))

(declare-fun m!767279 () Bool)

(assert (=> d!185905 m!767279))

(declare-fun m!767281 () Bool)

(assert (=> d!185905 m!767281))

(assert (=> d!185905 m!767215))

(declare-fun m!767283 () Bool)

(assert (=> b!520661 m!767283))

(assert (=> b!520661 m!767221))

(assert (=> b!520661 m!767221))

(assert (=> b!520661 m!767223))

(assert (=> b!520616 d!185905))

(declare-fun d!185917 () Bool)

(declare-fun c!100630 () Bool)

(assert (=> d!185917 (= c!100630 ((_ is Nil!4810) lt!216996))))

(declare-fun e!312050 () (InoxSet B!1165))

(assert (=> d!185917 (= (content!873 lt!216996) e!312050)))

(declare-fun b!520679 () Bool)

(assert (=> b!520679 (= e!312050 ((as const (Array B!1165 Bool)) false))))

(declare-fun b!520680 () Bool)

(assert (=> b!520680 (= e!312050 ((_ map or) (store ((as const (Array B!1165 Bool)) false) (h!10211 lt!216996) true) (content!873 (t!73410 lt!216996))))))

(assert (= (and d!185917 c!100630) b!520679))

(assert (= (and d!185917 (not c!100630)) b!520680))

(declare-fun m!767295 () Bool)

(assert (=> b!520680 m!767295))

(declare-fun m!767297 () Bool)

(assert (=> b!520680 m!767297))

(assert (=> b!520617 d!185917))

(declare-fun d!185921 () Bool)

(declare-fun c!100631 () Bool)

(assert (=> d!185921 (= c!100631 ((_ is Nil!4810) (++!1359 list!41 acc!308)))))

(declare-fun e!312053 () (InoxSet B!1165))

(assert (=> d!185921 (= (content!873 (++!1359 list!41 acc!308)) e!312053)))

(declare-fun b!520683 () Bool)

(assert (=> b!520683 (= e!312053 ((as const (Array B!1165 Bool)) false))))

(declare-fun b!520684 () Bool)

(assert (=> b!520684 (= e!312053 ((_ map or) (store ((as const (Array B!1165 Bool)) false) (h!10211 (++!1359 list!41 acc!308)) true) (content!873 (t!73410 (++!1359 list!41 acc!308)))))))

(assert (= (and d!185921 c!100631) b!520683))

(assert (= (and d!185921 (not c!100631)) b!520684))

(declare-fun m!767299 () Bool)

(assert (=> b!520684 m!767299))

(declare-fun m!767301 () Bool)

(assert (=> b!520684 m!767301))

(assert (=> b!520617 d!185921))

(declare-fun b!520695 () Bool)

(declare-fun res!221112 () Bool)

(declare-fun e!312059 () Bool)

(assert (=> b!520695 (=> (not res!221112) (not e!312059))))

(declare-fun lt!217013 () List!4820)

(declare-fun size!3926 (List!4820) Int)

(assert (=> b!520695 (= res!221112 (= (size!3926 lt!217013) (+ (size!3926 list!41) (size!3926 acc!308))))))

(declare-fun b!520696 () Bool)

(assert (=> b!520696 (= e!312059 (or (not (= acc!308 Nil!4810)) (= lt!217013 list!41)))))

(declare-fun b!520694 () Bool)

(declare-fun e!312058 () List!4820)

(assert (=> b!520694 (= e!312058 (Cons!4810 (h!10211 list!41) (++!1359 (t!73410 list!41) acc!308)))))

(declare-fun d!185923 () Bool)

(assert (=> d!185923 e!312059))

(declare-fun res!221113 () Bool)

(assert (=> d!185923 (=> (not res!221113) (not e!312059))))

(assert (=> d!185923 (= res!221113 (= (content!873 lt!217013) ((_ map or) (content!873 list!41) (content!873 acc!308))))))

(assert (=> d!185923 (= lt!217013 e!312058)))

(declare-fun c!100634 () Bool)

(assert (=> d!185923 (= c!100634 ((_ is Nil!4810) list!41))))

(assert (=> d!185923 (= (++!1359 list!41 acc!308) lt!217013)))

(declare-fun b!520693 () Bool)

(assert (=> b!520693 (= e!312058 acc!308)))

(assert (= (and d!185923 c!100634) b!520693))

(assert (= (and d!185923 (not c!100634)) b!520694))

(assert (= (and d!185923 res!221113) b!520695))

(assert (= (and b!520695 res!221112) b!520696))

(declare-fun m!767303 () Bool)

(assert (=> b!520695 m!767303))

(declare-fun m!767305 () Bool)

(assert (=> b!520695 m!767305))

(declare-fun m!767307 () Bool)

(assert (=> b!520695 m!767307))

(assert (=> b!520694 m!767221))

(declare-fun m!767309 () Bool)

(assert (=> d!185923 m!767309))

(declare-fun m!767311 () Bool)

(assert (=> d!185923 m!767311))

(declare-fun m!767313 () Bool)

(assert (=> d!185923 m!767313))

(assert (=> b!520617 d!185923))

(declare-fun d!185925 () Bool)

(declare-fun res!221114 () Bool)

(declare-fun e!312060 () Bool)

(assert (=> d!185925 (=> res!221114 e!312060)))

(assert (=> d!185925 (= res!221114 ((_ is Nil!4810) acc!308))))

(assert (=> d!185925 (= (noDuplicate!161 acc!308) e!312060)))

(declare-fun b!520697 () Bool)

(declare-fun e!312061 () Bool)

(assert (=> b!520697 (= e!312060 e!312061)))

(declare-fun res!221115 () Bool)

(assert (=> b!520697 (=> (not res!221115) (not e!312061))))

(assert (=> b!520697 (= res!221115 (not (contains!1158 (t!73410 acc!308) (h!10211 acc!308))))))

(declare-fun b!520698 () Bool)

(assert (=> b!520698 (= e!312061 (noDuplicate!161 (t!73410 acc!308)))))

(assert (= (and d!185925 (not res!221114)) b!520697))

(assert (= (and b!520697 res!221115) b!520698))

(declare-fun m!767315 () Bool)

(assert (=> b!520697 m!767315))

(declare-fun m!767317 () Bool)

(assert (=> b!520698 m!767317))

(assert (=> start!47674 d!185925))

(declare-fun d!185927 () Bool)

(declare-fun lt!217016 () Bool)

(assert (=> d!185927 (= lt!217016 (select (content!873 acc!308) (h!10211 list!41)))))

(declare-fun e!312066 () Bool)

(assert (=> d!185927 (= lt!217016 e!312066)))

(declare-fun res!221121 () Bool)

(assert (=> d!185927 (=> (not res!221121) (not e!312066))))

(assert (=> d!185927 (= res!221121 ((_ is Cons!4810) acc!308))))

(assert (=> d!185927 (= (contains!1158 acc!308 (h!10211 list!41)) lt!217016)))

(declare-fun b!520703 () Bool)

(declare-fun e!312067 () Bool)

(assert (=> b!520703 (= e!312066 e!312067)))

(declare-fun res!221120 () Bool)

(assert (=> b!520703 (=> res!221120 e!312067)))

(assert (=> b!520703 (= res!221120 (= (h!10211 acc!308) (h!10211 list!41)))))

(declare-fun b!520704 () Bool)

(assert (=> b!520704 (= e!312067 (contains!1158 (t!73410 acc!308) (h!10211 list!41)))))

(assert (= (and d!185927 res!221121) b!520703))

(assert (= (and b!520703 (not res!221120)) b!520704))

(assert (=> d!185927 m!767313))

(declare-fun m!767319 () Bool)

(assert (=> d!185927 m!767319))

(declare-fun m!767321 () Bool)

(assert (=> b!520704 m!767321))

(assert (=> b!520615 d!185927))

(assert (=> b!520613 d!185917))

(declare-fun d!185929 () Bool)

(declare-fun c!100635 () Bool)

(assert (=> d!185929 (= c!100635 ((_ is Nil!4810) (++!1359 (t!73410 list!41) acc!308)))))

(declare-fun e!312068 () (InoxSet B!1165))

(assert (=> d!185929 (= (content!873 (++!1359 (t!73410 list!41) acc!308)) e!312068)))

(declare-fun b!520705 () Bool)

(assert (=> b!520705 (= e!312068 ((as const (Array B!1165 Bool)) false))))

(declare-fun b!520706 () Bool)

(assert (=> b!520706 (= e!312068 ((_ map or) (store ((as const (Array B!1165 Bool)) false) (h!10211 (++!1359 (t!73410 list!41) acc!308)) true) (content!873 (t!73410 (++!1359 (t!73410 list!41) acc!308)))))))

(assert (= (and d!185929 c!100635) b!520705))

(assert (= (and d!185929 (not c!100635)) b!520706))

(declare-fun m!767323 () Bool)

(assert (=> b!520706 m!767323))

(declare-fun m!767325 () Bool)

(assert (=> b!520706 m!767325))

(assert (=> b!520613 d!185929))

(declare-fun b!520709 () Bool)

(declare-fun res!221122 () Bool)

(declare-fun e!312070 () Bool)

(assert (=> b!520709 (=> (not res!221122) (not e!312070))))

(declare-fun lt!217017 () List!4820)

(assert (=> b!520709 (= res!221122 (= (size!3926 lt!217017) (+ (size!3926 (t!73410 list!41)) (size!3926 acc!308))))))

(declare-fun b!520710 () Bool)

(assert (=> b!520710 (= e!312070 (or (not (= acc!308 Nil!4810)) (= lt!217017 (t!73410 list!41))))))

(declare-fun b!520708 () Bool)

(declare-fun e!312069 () List!4820)

(assert (=> b!520708 (= e!312069 (Cons!4810 (h!10211 (t!73410 list!41)) (++!1359 (t!73410 (t!73410 list!41)) acc!308)))))

(declare-fun d!185931 () Bool)

(assert (=> d!185931 e!312070))

(declare-fun res!221123 () Bool)

(assert (=> d!185931 (=> (not res!221123) (not e!312070))))

(assert (=> d!185931 (= res!221123 (= (content!873 lt!217017) ((_ map or) (content!873 (t!73410 list!41)) (content!873 acc!308))))))

(assert (=> d!185931 (= lt!217017 e!312069)))

(declare-fun c!100636 () Bool)

(assert (=> d!185931 (= c!100636 ((_ is Nil!4810) (t!73410 list!41)))))

(assert (=> d!185931 (= (++!1359 (t!73410 list!41) acc!308) lt!217017)))

(declare-fun b!520707 () Bool)

(assert (=> b!520707 (= e!312069 acc!308)))

(assert (= (and d!185931 c!100636) b!520707))

(assert (= (and d!185931 (not c!100636)) b!520708))

(assert (= (and d!185931 res!221123) b!520709))

(assert (= (and b!520709 res!221122) b!520710))

(declare-fun m!767327 () Bool)

(assert (=> b!520709 m!767327))

(declare-fun m!767329 () Bool)

(assert (=> b!520709 m!767329))

(assert (=> b!520709 m!767307))

(declare-fun m!767331 () Bool)

(assert (=> b!520708 m!767331))

(declare-fun m!767333 () Bool)

(assert (=> d!185931 m!767333))

(declare-fun m!767335 () Bool)

(assert (=> d!185931 m!767335))

(assert (=> d!185931 m!767313))

(assert (=> b!520613 d!185931))

(declare-fun b!520715 () Bool)

(declare-fun e!312073 () Bool)

(declare-fun tp!161986 () Bool)

(assert (=> b!520715 (= e!312073 (and tp_is_empty!2761 tp!161986))))

(assert (=> b!520612 (= tp!161979 e!312073)))

(assert (= (and b!520612 ((_ is Cons!4810) (t!73410 list!41))) b!520715))

(declare-fun b!520716 () Bool)

(declare-fun e!312074 () Bool)

(declare-fun tp!161987 () Bool)

(assert (=> b!520716 (= e!312074 (and tp_is_empty!2761 tp!161987))))

(assert (=> b!520618 (= tp!161978 e!312074)))

(assert (= (and b!520618 ((_ is Cons!4810) (t!73410 acc!308))) b!520716))

(check-sat (not b!520632) (not b!520697) (not d!185923) (not b!520661) tp_is_empty!2761 (not b!520709) (not d!185927) (not b!520715) (not b!520695) (not b!520704) (not b!520716) (not b!520698) (not d!185931) (not d!185905) (not b!520708) (not b!520706) (not b!520680) (not b!520694) (not b!520684) (not b!520631))
(check-sat)
