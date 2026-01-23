; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742922 () Bool)

(assert start!742922)

(declare-fun b!7844718 () Bool)

(declare-fun res!3119831 () Bool)

(declare-fun e!4637917 () Bool)

(assert (=> b!7844718 (=> (not res!3119831) (not e!4637917))))

(declare-datatypes ((C!42436 0))(
  ( (C!42437 (val!31680 Int)) )
))
(declare-datatypes ((Regex!21055 0))(
  ( (ElementMatch!21055 (c!1441977 C!42436)) (Concat!29900 (regOne!42622 Regex!21055) (regTwo!42622 Regex!21055)) (EmptyExpr!21055) (Star!21055 (reg!21384 Regex!21055)) (EmptyLang!21055) (Union!21055 (regOne!42623 Regex!21055) (regTwo!42623 Regex!21055)) )
))
(declare-fun r2!6165 () Regex!21055)

(declare-datatypes ((List!73914 0))(
  ( (Nil!73790) (Cons!73790 (h!80238 C!42436) (t!388649 List!73914)) )
))
(declare-fun s2!3706 () List!73914)

(declare-fun matchR!10491 (Regex!21055 List!73914) Bool)

(assert (=> b!7844718 (= res!3119831 (matchR!10491 r2!6165 s2!3706))))

(declare-fun b!7844719 () Bool)

(declare-fun e!4637919 () Bool)

(declare-fun tp!2322525 () Bool)

(declare-fun tp!2322522 () Bool)

(assert (=> b!7844719 (= e!4637919 (and tp!2322525 tp!2322522))))

(declare-fun b!7844720 () Bool)

(declare-fun e!4637918 () Bool)

(declare-fun tp!2322524 () Bool)

(declare-fun tp!2322528 () Bool)

(assert (=> b!7844720 (= e!4637918 (and tp!2322524 tp!2322528))))

(declare-fun b!7844721 () Bool)

(declare-fun tp!2322530 () Bool)

(assert (=> b!7844721 (= e!4637918 tp!2322530)))

(declare-fun b!7844722 () Bool)

(declare-fun res!3119832 () Bool)

(assert (=> b!7844722 (=> (not res!3119832) (not e!4637917))))

(declare-fun r1!6227 () Regex!21055)

(declare-fun s1!4084 () List!73914)

(assert (=> b!7844722 (= res!3119832 (matchR!10491 r1!6227 s1!4084))))

(declare-fun b!7844723 () Bool)

(declare-fun e!4637915 () Bool)

(declare-fun tp_is_empty!52509 () Bool)

(declare-fun tp!2322532 () Bool)

(assert (=> b!7844723 (= e!4637915 (and tp_is_empty!52509 tp!2322532))))

(declare-fun b!7844724 () Bool)

(declare-fun res!3119830 () Bool)

(assert (=> b!7844724 (=> (not res!3119830) (not e!4637917))))

(get-info :version)

(assert (=> b!7844724 (= res!3119830 ((_ is Cons!73790) s1!4084))))

(declare-fun b!7844725 () Bool)

(declare-fun e!4637916 () Bool)

(declare-fun tp!2322526 () Bool)

(assert (=> b!7844725 (= e!4637916 (and tp_is_empty!52509 tp!2322526))))

(declare-fun b!7844726 () Bool)

(declare-fun res!3119834 () Bool)

(assert (=> b!7844726 (=> (not res!3119834) (not e!4637917))))

(declare-fun validRegex!11465 (Regex!21055) Bool)

(assert (=> b!7844726 (= res!3119834 (validRegex!11465 r2!6165))))

(declare-fun b!7844727 () Bool)

(declare-fun tp!2322529 () Bool)

(assert (=> b!7844727 (= e!4637919 tp!2322529)))

(declare-fun b!7844728 () Bool)

(declare-fun tp!2322531 () Bool)

(declare-fun tp!2322527 () Bool)

(assert (=> b!7844728 (= e!4637919 (and tp!2322531 tp!2322527))))

(declare-fun b!7844729 () Bool)

(assert (=> b!7844729 (= e!4637918 tp_is_empty!52509)))

(declare-fun b!7844731 () Bool)

(assert (=> b!7844731 (= e!4637919 tp_is_empty!52509)))

(declare-fun b!7844732 () Bool)

(declare-fun tp!2322521 () Bool)

(declare-fun tp!2322523 () Bool)

(assert (=> b!7844732 (= e!4637918 (and tp!2322521 tp!2322523))))

(declare-fun res!3119833 () Bool)

(assert (=> start!742922 (=> (not res!3119833) (not e!4637917))))

(assert (=> start!742922 (= res!3119833 (validRegex!11465 r1!6227))))

(assert (=> start!742922 e!4637917))

(assert (=> start!742922 e!4637919))

(assert (=> start!742922 e!4637918))

(assert (=> start!742922 e!4637916))

(assert (=> start!742922 e!4637915))

(declare-fun b!7844730 () Bool)

(declare-fun lt!2679020 () Regex!21055)

(assert (=> b!7844730 (= e!4637917 (not (validRegex!11465 lt!2679020)))))

(declare-fun ++!18065 (List!73914 List!73914) List!73914)

(assert (=> b!7844730 (matchR!10491 lt!2679020 (++!18065 (t!388649 s1!4084) s2!3706))))

(declare-fun lt!2679019 () Regex!21055)

(assert (=> b!7844730 (= lt!2679020 (Concat!29900 lt!2679019 r2!6165))))

(declare-datatypes ((Unit!168856 0))(
  ( (Unit!168857) )
))
(declare-fun lt!2679021 () Unit!168856)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!426 (Regex!21055 Regex!21055 List!73914 List!73914) Unit!168856)

(assert (=> b!7844730 (= lt!2679021 (lemmaTwoRegexMatchThenConcatMatchesConcatString!426 lt!2679019 r2!6165 (t!388649 s1!4084) s2!3706))))

(declare-fun derivativeStep!6292 (Regex!21055 C!42436) Regex!21055)

(assert (=> b!7844730 (= lt!2679019 (derivativeStep!6292 r1!6227 (h!80238 s1!4084)))))

(assert (= (and start!742922 res!3119833) b!7844726))

(assert (= (and b!7844726 res!3119834) b!7844722))

(assert (= (and b!7844722 res!3119832) b!7844718))

(assert (= (and b!7844718 res!3119831) b!7844724))

(assert (= (and b!7844724 res!3119830) b!7844730))

(assert (= (and start!742922 ((_ is ElementMatch!21055) r1!6227)) b!7844731))

(assert (= (and start!742922 ((_ is Concat!29900) r1!6227)) b!7844728))

(assert (= (and start!742922 ((_ is Star!21055) r1!6227)) b!7844727))

(assert (= (and start!742922 ((_ is Union!21055) r1!6227)) b!7844719))

(assert (= (and start!742922 ((_ is ElementMatch!21055) r2!6165)) b!7844729))

(assert (= (and start!742922 ((_ is Concat!29900) r2!6165)) b!7844732))

(assert (= (and start!742922 ((_ is Star!21055) r2!6165)) b!7844721))

(assert (= (and start!742922 ((_ is Union!21055) r2!6165)) b!7844720))

(assert (= (and start!742922 ((_ is Cons!73790) s1!4084)) b!7844725))

(assert (= (and start!742922 ((_ is Cons!73790) s2!3706)) b!7844723))

(declare-fun m!8255398 () Bool)

(assert (=> start!742922 m!8255398))

(declare-fun m!8255400 () Bool)

(assert (=> b!7844722 m!8255400))

(declare-fun m!8255402 () Bool)

(assert (=> b!7844726 m!8255402))

(declare-fun m!8255404 () Bool)

(assert (=> b!7844718 m!8255404))

(declare-fun m!8255406 () Bool)

(assert (=> b!7844730 m!8255406))

(declare-fun m!8255408 () Bool)

(assert (=> b!7844730 m!8255408))

(declare-fun m!8255410 () Bool)

(assert (=> b!7844730 m!8255410))

(declare-fun m!8255412 () Bool)

(assert (=> b!7844730 m!8255412))

(assert (=> b!7844730 m!8255412))

(declare-fun m!8255414 () Bool)

(assert (=> b!7844730 m!8255414))

(check-sat (not b!7844728) (not b!7844730) (not b!7844719) (not b!7844722) tp_is_empty!52509 (not b!7844726) (not b!7844727) (not b!7844723) (not b!7844721) (not start!742922) (not b!7844732) (not b!7844725) (not b!7844720) (not b!7844718))
(check-sat)
(get-model)

(declare-fun b!7844761 () Bool)

(declare-fun res!3119858 () Bool)

(declare-fun e!4637938 () Bool)

(assert (=> b!7844761 (=> res!3119858 e!4637938)))

(assert (=> b!7844761 (= res!3119858 (not ((_ is ElementMatch!21055) r2!6165)))))

(declare-fun e!4637937 () Bool)

(assert (=> b!7844761 (= e!4637937 e!4637938)))

(declare-fun b!7844762 () Bool)

(declare-fun e!4637940 () Bool)

(declare-fun nullable!9330 (Regex!21055) Bool)

(assert (=> b!7844762 (= e!4637940 (nullable!9330 r2!6165))))

(declare-fun b!7844763 () Bool)

(declare-fun e!4637936 () Bool)

(declare-fun head!16023 (List!73914) C!42436)

(assert (=> b!7844763 (= e!4637936 (= (head!16023 s2!3706) (c!1441977 r2!6165)))))

(declare-fun bm!726882 () Bool)

(declare-fun call!726887 () Bool)

(declare-fun isEmpty!42312 (List!73914) Bool)

(assert (=> bm!726882 (= call!726887 (isEmpty!42312 s2!3706))))

(declare-fun b!7844765 () Bool)

(declare-fun tail!15566 (List!73914) List!73914)

(assert (=> b!7844765 (= e!4637940 (matchR!10491 (derivativeStep!6292 r2!6165 (head!16023 s2!3706)) (tail!15566 s2!3706)))))

(declare-fun b!7844766 () Bool)

(declare-fun e!4637939 () Bool)

(declare-fun e!4637934 () Bool)

(assert (=> b!7844766 (= e!4637939 e!4637934)))

(declare-fun res!3119856 () Bool)

(assert (=> b!7844766 (=> res!3119856 e!4637934)))

(assert (=> b!7844766 (= res!3119856 call!726887)))

(declare-fun b!7844767 () Bool)

(declare-fun res!3119852 () Bool)

(assert (=> b!7844767 (=> (not res!3119852) (not e!4637936))))

(assert (=> b!7844767 (= res!3119852 (isEmpty!42312 (tail!15566 s2!3706)))))

(declare-fun b!7844768 () Bool)

(declare-fun res!3119855 () Bool)

(assert (=> b!7844768 (=> (not res!3119855) (not e!4637936))))

(assert (=> b!7844768 (= res!3119855 (not call!726887))))

(declare-fun b!7844769 () Bool)

(declare-fun lt!2679024 () Bool)

(assert (=> b!7844769 (= e!4637937 (not lt!2679024))))

(declare-fun b!7844770 () Bool)

(declare-fun e!4637935 () Bool)

(assert (=> b!7844770 (= e!4637935 (= lt!2679024 call!726887))))

(declare-fun b!7844771 () Bool)

(assert (=> b!7844771 (= e!4637935 e!4637937)))

(declare-fun c!1441986 () Bool)

(assert (=> b!7844771 (= c!1441986 ((_ is EmptyLang!21055) r2!6165))))

(declare-fun b!7844772 () Bool)

(assert (=> b!7844772 (= e!4637934 (not (= (head!16023 s2!3706) (c!1441977 r2!6165))))))

(declare-fun b!7844764 () Bool)

(assert (=> b!7844764 (= e!4637938 e!4637939)))

(declare-fun res!3119853 () Bool)

(assert (=> b!7844764 (=> (not res!3119853) (not e!4637939))))

(assert (=> b!7844764 (= res!3119853 (not lt!2679024))))

(declare-fun d!2352706 () Bool)

(assert (=> d!2352706 e!4637935))

(declare-fun c!1441984 () Bool)

(assert (=> d!2352706 (= c!1441984 ((_ is EmptyExpr!21055) r2!6165))))

(assert (=> d!2352706 (= lt!2679024 e!4637940)))

(declare-fun c!1441985 () Bool)

(assert (=> d!2352706 (= c!1441985 (isEmpty!42312 s2!3706))))

(assert (=> d!2352706 (validRegex!11465 r2!6165)))

(assert (=> d!2352706 (= (matchR!10491 r2!6165 s2!3706) lt!2679024)))

(declare-fun b!7844773 () Bool)

(declare-fun res!3119854 () Bool)

(assert (=> b!7844773 (=> res!3119854 e!4637934)))

(assert (=> b!7844773 (= res!3119854 (not (isEmpty!42312 (tail!15566 s2!3706))))))

(declare-fun b!7844774 () Bool)

(declare-fun res!3119851 () Bool)

(assert (=> b!7844774 (=> res!3119851 e!4637938)))

(assert (=> b!7844774 (= res!3119851 e!4637936)))

(declare-fun res!3119857 () Bool)

(assert (=> b!7844774 (=> (not res!3119857) (not e!4637936))))

(assert (=> b!7844774 (= res!3119857 lt!2679024)))

(assert (= (and d!2352706 c!1441985) b!7844762))

(assert (= (and d!2352706 (not c!1441985)) b!7844765))

(assert (= (and d!2352706 c!1441984) b!7844770))

(assert (= (and d!2352706 (not c!1441984)) b!7844771))

(assert (= (and b!7844771 c!1441986) b!7844769))

(assert (= (and b!7844771 (not c!1441986)) b!7844761))

(assert (= (and b!7844761 (not res!3119858)) b!7844774))

(assert (= (and b!7844774 res!3119857) b!7844768))

(assert (= (and b!7844768 res!3119855) b!7844767))

(assert (= (and b!7844767 res!3119852) b!7844763))

(assert (= (and b!7844774 (not res!3119851)) b!7844764))

(assert (= (and b!7844764 res!3119853) b!7844766))

(assert (= (and b!7844766 (not res!3119856)) b!7844773))

(assert (= (and b!7844773 (not res!3119854)) b!7844772))

(assert (= (or b!7844770 b!7844766 b!7844768) bm!726882))

(declare-fun m!8255416 () Bool)

(assert (=> b!7844773 m!8255416))

(assert (=> b!7844773 m!8255416))

(declare-fun m!8255418 () Bool)

(assert (=> b!7844773 m!8255418))

(declare-fun m!8255420 () Bool)

(assert (=> b!7844772 m!8255420))

(declare-fun m!8255422 () Bool)

(assert (=> bm!726882 m!8255422))

(assert (=> b!7844763 m!8255420))

(declare-fun m!8255424 () Bool)

(assert (=> b!7844762 m!8255424))

(assert (=> d!2352706 m!8255422))

(assert (=> d!2352706 m!8255402))

(assert (=> b!7844765 m!8255420))

(assert (=> b!7844765 m!8255420))

(declare-fun m!8255426 () Bool)

(assert (=> b!7844765 m!8255426))

(assert (=> b!7844765 m!8255416))

(assert (=> b!7844765 m!8255426))

(assert (=> b!7844765 m!8255416))

(declare-fun m!8255428 () Bool)

(assert (=> b!7844765 m!8255428))

(assert (=> b!7844767 m!8255416))

(assert (=> b!7844767 m!8255416))

(assert (=> b!7844767 m!8255418))

(assert (=> b!7844718 d!2352706))

(declare-fun b!7844821 () Bool)

(declare-fun e!4637971 () Bool)

(declare-fun call!726894 () Bool)

(assert (=> b!7844821 (= e!4637971 call!726894)))

(declare-fun b!7844822 () Bool)

(declare-fun e!4637974 () Bool)

(declare-fun call!726895 () Bool)

(assert (=> b!7844822 (= e!4637974 call!726895)))

(declare-fun b!7844824 () Bool)

(declare-fun e!4637969 () Bool)

(declare-fun e!4637975 () Bool)

(assert (=> b!7844824 (= e!4637969 e!4637975)))

(declare-fun c!1441998 () Bool)

(assert (=> b!7844824 (= c!1441998 ((_ is Star!21055) r1!6227))))

(declare-fun b!7844825 () Bool)

(declare-fun res!3119888 () Bool)

(declare-fun e!4637970 () Bool)

(assert (=> b!7844825 (=> (not res!3119888) (not e!4637970))))

(assert (=> b!7844825 (= res!3119888 call!726895)))

(declare-fun e!4637972 () Bool)

(assert (=> b!7844825 (= e!4637972 e!4637970)))

(declare-fun bm!726889 () Bool)

(assert (=> bm!726889 (= call!726895 call!726894)))

(declare-fun b!7844826 () Bool)

(assert (=> b!7844826 (= e!4637975 e!4637971)))

(declare-fun res!3119889 () Bool)

(assert (=> b!7844826 (= res!3119889 (not (nullable!9330 (reg!21384 r1!6227))))))

(assert (=> b!7844826 (=> (not res!3119889) (not e!4637971))))

(declare-fun b!7844827 () Bool)

(declare-fun res!3119887 () Bool)

(declare-fun e!4637973 () Bool)

(assert (=> b!7844827 (=> res!3119887 e!4637973)))

(assert (=> b!7844827 (= res!3119887 (not ((_ is Concat!29900) r1!6227)))))

(assert (=> b!7844827 (= e!4637972 e!4637973)))

(declare-fun b!7844823 () Bool)

(assert (=> b!7844823 (= e!4637975 e!4637972)))

(declare-fun c!1441997 () Bool)

(assert (=> b!7844823 (= c!1441997 ((_ is Union!21055) r1!6227))))

(declare-fun d!2352710 () Bool)

(declare-fun res!3119886 () Bool)

(assert (=> d!2352710 (=> res!3119886 e!4637969)))

(assert (=> d!2352710 (= res!3119886 ((_ is ElementMatch!21055) r1!6227))))

(assert (=> d!2352710 (= (validRegex!11465 r1!6227) e!4637969)))

(declare-fun b!7844828 () Bool)

(declare-fun call!726896 () Bool)

(assert (=> b!7844828 (= e!4637970 call!726896)))

(declare-fun b!7844829 () Bool)

(assert (=> b!7844829 (= e!4637973 e!4637974)))

(declare-fun res!3119885 () Bool)

(assert (=> b!7844829 (=> (not res!3119885) (not e!4637974))))

(assert (=> b!7844829 (= res!3119885 call!726896)))

(declare-fun bm!726890 () Bool)

(assert (=> bm!726890 (= call!726896 (validRegex!11465 (ite c!1441997 (regTwo!42623 r1!6227) (regOne!42622 r1!6227))))))

(declare-fun bm!726891 () Bool)

(assert (=> bm!726891 (= call!726894 (validRegex!11465 (ite c!1441998 (reg!21384 r1!6227) (ite c!1441997 (regOne!42623 r1!6227) (regTwo!42622 r1!6227)))))))

(assert (= (and d!2352710 (not res!3119886)) b!7844824))

(assert (= (and b!7844824 c!1441998) b!7844826))

(assert (= (and b!7844824 (not c!1441998)) b!7844823))

(assert (= (and b!7844826 res!3119889) b!7844821))

(assert (= (and b!7844823 c!1441997) b!7844825))

(assert (= (and b!7844823 (not c!1441997)) b!7844827))

(assert (= (and b!7844825 res!3119888) b!7844828))

(assert (= (and b!7844827 (not res!3119887)) b!7844829))

(assert (= (and b!7844829 res!3119885) b!7844822))

(assert (= (or b!7844825 b!7844822) bm!726889))

(assert (= (or b!7844828 b!7844829) bm!726890))

(assert (= (or b!7844821 bm!726889) bm!726891))

(declare-fun m!8255430 () Bool)

(assert (=> b!7844826 m!8255430))

(declare-fun m!8255432 () Bool)

(assert (=> bm!726890 m!8255432))

(declare-fun m!8255434 () Bool)

(assert (=> bm!726891 m!8255434))

(assert (=> start!742922 d!2352710))

(declare-fun b!7844830 () Bool)

(declare-fun res!3119897 () Bool)

(declare-fun e!4637980 () Bool)

(assert (=> b!7844830 (=> res!3119897 e!4637980)))

(assert (=> b!7844830 (= res!3119897 (not ((_ is ElementMatch!21055) r1!6227)))))

(declare-fun e!4637979 () Bool)

(assert (=> b!7844830 (= e!4637979 e!4637980)))

(declare-fun b!7844831 () Bool)

(declare-fun e!4637982 () Bool)

(assert (=> b!7844831 (= e!4637982 (nullable!9330 r1!6227))))

(declare-fun b!7844832 () Bool)

(declare-fun e!4637978 () Bool)

(assert (=> b!7844832 (= e!4637978 (= (head!16023 s1!4084) (c!1441977 r1!6227)))))

(declare-fun bm!726892 () Bool)

(declare-fun call!726897 () Bool)

(assert (=> bm!726892 (= call!726897 (isEmpty!42312 s1!4084))))

(declare-fun b!7844834 () Bool)

(assert (=> b!7844834 (= e!4637982 (matchR!10491 (derivativeStep!6292 r1!6227 (head!16023 s1!4084)) (tail!15566 s1!4084)))))

(declare-fun b!7844835 () Bool)

(declare-fun e!4637981 () Bool)

(declare-fun e!4637976 () Bool)

(assert (=> b!7844835 (= e!4637981 e!4637976)))

(declare-fun res!3119895 () Bool)

(assert (=> b!7844835 (=> res!3119895 e!4637976)))

(assert (=> b!7844835 (= res!3119895 call!726897)))

(declare-fun b!7844836 () Bool)

(declare-fun res!3119891 () Bool)

(assert (=> b!7844836 (=> (not res!3119891) (not e!4637978))))

(assert (=> b!7844836 (= res!3119891 (isEmpty!42312 (tail!15566 s1!4084)))))

(declare-fun b!7844837 () Bool)

(declare-fun res!3119894 () Bool)

(assert (=> b!7844837 (=> (not res!3119894) (not e!4637978))))

(assert (=> b!7844837 (= res!3119894 (not call!726897))))

(declare-fun b!7844838 () Bool)

(declare-fun lt!2679027 () Bool)

(assert (=> b!7844838 (= e!4637979 (not lt!2679027))))

(declare-fun b!7844839 () Bool)

(declare-fun e!4637977 () Bool)

(assert (=> b!7844839 (= e!4637977 (= lt!2679027 call!726897))))

(declare-fun b!7844840 () Bool)

(assert (=> b!7844840 (= e!4637977 e!4637979)))

(declare-fun c!1442001 () Bool)

(assert (=> b!7844840 (= c!1442001 ((_ is EmptyLang!21055) r1!6227))))

(declare-fun b!7844841 () Bool)

(assert (=> b!7844841 (= e!4637976 (not (= (head!16023 s1!4084) (c!1441977 r1!6227))))))

(declare-fun b!7844833 () Bool)

(assert (=> b!7844833 (= e!4637980 e!4637981)))

(declare-fun res!3119892 () Bool)

(assert (=> b!7844833 (=> (not res!3119892) (not e!4637981))))

(assert (=> b!7844833 (= res!3119892 (not lt!2679027))))

(declare-fun d!2352712 () Bool)

(assert (=> d!2352712 e!4637977))

(declare-fun c!1441999 () Bool)

(assert (=> d!2352712 (= c!1441999 ((_ is EmptyExpr!21055) r1!6227))))

(assert (=> d!2352712 (= lt!2679027 e!4637982)))

(declare-fun c!1442000 () Bool)

(assert (=> d!2352712 (= c!1442000 (isEmpty!42312 s1!4084))))

(assert (=> d!2352712 (validRegex!11465 r1!6227)))

(assert (=> d!2352712 (= (matchR!10491 r1!6227 s1!4084) lt!2679027)))

(declare-fun b!7844842 () Bool)

(declare-fun res!3119893 () Bool)

(assert (=> b!7844842 (=> res!3119893 e!4637976)))

(assert (=> b!7844842 (= res!3119893 (not (isEmpty!42312 (tail!15566 s1!4084))))))

(declare-fun b!7844843 () Bool)

(declare-fun res!3119890 () Bool)

(assert (=> b!7844843 (=> res!3119890 e!4637980)))

(assert (=> b!7844843 (= res!3119890 e!4637978)))

(declare-fun res!3119896 () Bool)

(assert (=> b!7844843 (=> (not res!3119896) (not e!4637978))))

(assert (=> b!7844843 (= res!3119896 lt!2679027)))

(assert (= (and d!2352712 c!1442000) b!7844831))

(assert (= (and d!2352712 (not c!1442000)) b!7844834))

(assert (= (and d!2352712 c!1441999) b!7844839))

(assert (= (and d!2352712 (not c!1441999)) b!7844840))

(assert (= (and b!7844840 c!1442001) b!7844838))

(assert (= (and b!7844840 (not c!1442001)) b!7844830))

(assert (= (and b!7844830 (not res!3119897)) b!7844843))

(assert (= (and b!7844843 res!3119896) b!7844837))

(assert (= (and b!7844837 res!3119894) b!7844836))

(assert (= (and b!7844836 res!3119891) b!7844832))

(assert (= (and b!7844843 (not res!3119890)) b!7844833))

(assert (= (and b!7844833 res!3119892) b!7844835))

(assert (= (and b!7844835 (not res!3119895)) b!7844842))

(assert (= (and b!7844842 (not res!3119893)) b!7844841))

(assert (= (or b!7844839 b!7844835 b!7844837) bm!726892))

(declare-fun m!8255436 () Bool)

(assert (=> b!7844842 m!8255436))

(assert (=> b!7844842 m!8255436))

(declare-fun m!8255438 () Bool)

(assert (=> b!7844842 m!8255438))

(declare-fun m!8255440 () Bool)

(assert (=> b!7844841 m!8255440))

(declare-fun m!8255442 () Bool)

(assert (=> bm!726892 m!8255442))

(assert (=> b!7844832 m!8255440))

(declare-fun m!8255444 () Bool)

(assert (=> b!7844831 m!8255444))

(assert (=> d!2352712 m!8255442))

(assert (=> d!2352712 m!8255398))

(assert (=> b!7844834 m!8255440))

(assert (=> b!7844834 m!8255440))

(declare-fun m!8255446 () Bool)

(assert (=> b!7844834 m!8255446))

(assert (=> b!7844834 m!8255436))

(assert (=> b!7844834 m!8255446))

(assert (=> b!7844834 m!8255436))

(declare-fun m!8255448 () Bool)

(assert (=> b!7844834 m!8255448))

(assert (=> b!7844836 m!8255436))

(assert (=> b!7844836 m!8255436))

(assert (=> b!7844836 m!8255438))

(assert (=> b!7844722 d!2352712))

(declare-fun b!7844844 () Bool)

(declare-fun e!4637985 () Bool)

(declare-fun call!726900 () Bool)

(assert (=> b!7844844 (= e!4637985 call!726900)))

(declare-fun b!7844845 () Bool)

(declare-fun e!4637988 () Bool)

(declare-fun call!726901 () Bool)

(assert (=> b!7844845 (= e!4637988 call!726901)))

(declare-fun b!7844847 () Bool)

(declare-fun e!4637983 () Bool)

(declare-fun e!4637989 () Bool)

(assert (=> b!7844847 (= e!4637983 e!4637989)))

(declare-fun c!1442003 () Bool)

(assert (=> b!7844847 (= c!1442003 ((_ is Star!21055) r2!6165))))

(declare-fun b!7844848 () Bool)

(declare-fun res!3119901 () Bool)

(declare-fun e!4637984 () Bool)

(assert (=> b!7844848 (=> (not res!3119901) (not e!4637984))))

(assert (=> b!7844848 (= res!3119901 call!726901)))

(declare-fun e!4637986 () Bool)

(assert (=> b!7844848 (= e!4637986 e!4637984)))

(declare-fun bm!726895 () Bool)

(assert (=> bm!726895 (= call!726901 call!726900)))

(declare-fun b!7844849 () Bool)

(assert (=> b!7844849 (= e!4637989 e!4637985)))

(declare-fun res!3119902 () Bool)

(assert (=> b!7844849 (= res!3119902 (not (nullable!9330 (reg!21384 r2!6165))))))

(assert (=> b!7844849 (=> (not res!3119902) (not e!4637985))))

(declare-fun b!7844850 () Bool)

(declare-fun res!3119900 () Bool)

(declare-fun e!4637987 () Bool)

(assert (=> b!7844850 (=> res!3119900 e!4637987)))

(assert (=> b!7844850 (= res!3119900 (not ((_ is Concat!29900) r2!6165)))))

(assert (=> b!7844850 (= e!4637986 e!4637987)))

(declare-fun b!7844846 () Bool)

(assert (=> b!7844846 (= e!4637989 e!4637986)))

(declare-fun c!1442002 () Bool)

(assert (=> b!7844846 (= c!1442002 ((_ is Union!21055) r2!6165))))

(declare-fun d!2352714 () Bool)

(declare-fun res!3119899 () Bool)

(assert (=> d!2352714 (=> res!3119899 e!4637983)))

(assert (=> d!2352714 (= res!3119899 ((_ is ElementMatch!21055) r2!6165))))

(assert (=> d!2352714 (= (validRegex!11465 r2!6165) e!4637983)))

(declare-fun b!7844851 () Bool)

(declare-fun call!726902 () Bool)

(assert (=> b!7844851 (= e!4637984 call!726902)))

(declare-fun b!7844852 () Bool)

(assert (=> b!7844852 (= e!4637987 e!4637988)))

(declare-fun res!3119898 () Bool)

(assert (=> b!7844852 (=> (not res!3119898) (not e!4637988))))

(assert (=> b!7844852 (= res!3119898 call!726902)))

(declare-fun bm!726896 () Bool)

(assert (=> bm!726896 (= call!726902 (validRegex!11465 (ite c!1442002 (regTwo!42623 r2!6165) (regOne!42622 r2!6165))))))

(declare-fun bm!726897 () Bool)

(assert (=> bm!726897 (= call!726900 (validRegex!11465 (ite c!1442003 (reg!21384 r2!6165) (ite c!1442002 (regOne!42623 r2!6165) (regTwo!42622 r2!6165)))))))

(assert (= (and d!2352714 (not res!3119899)) b!7844847))

(assert (= (and b!7844847 c!1442003) b!7844849))

(assert (= (and b!7844847 (not c!1442003)) b!7844846))

(assert (= (and b!7844849 res!3119902) b!7844844))

(assert (= (and b!7844846 c!1442002) b!7844848))

(assert (= (and b!7844846 (not c!1442002)) b!7844850))

(assert (= (and b!7844848 res!3119901) b!7844851))

(assert (= (and b!7844850 (not res!3119900)) b!7844852))

(assert (= (and b!7844852 res!3119898) b!7844845))

(assert (= (or b!7844848 b!7844845) bm!726895))

(assert (= (or b!7844851 b!7844852) bm!726896))

(assert (= (or b!7844844 bm!726895) bm!726897))

(declare-fun m!8255450 () Bool)

(assert (=> b!7844849 m!8255450))

(declare-fun m!8255452 () Bool)

(assert (=> bm!726896 m!8255452))

(declare-fun m!8255454 () Bool)

(assert (=> bm!726897 m!8255454))

(assert (=> b!7844726 d!2352714))

(declare-fun d!2352716 () Bool)

(assert (=> d!2352716 (matchR!10491 (Concat!29900 lt!2679019 r2!6165) (++!18065 (t!388649 s1!4084) s2!3706))))

(declare-fun lt!2679030 () Unit!168856)

(declare-fun choose!59628 (Regex!21055 Regex!21055 List!73914 List!73914) Unit!168856)

(assert (=> d!2352716 (= lt!2679030 (choose!59628 lt!2679019 r2!6165 (t!388649 s1!4084) s2!3706))))

(declare-fun e!4637992 () Bool)

(assert (=> d!2352716 e!4637992))

(declare-fun res!3119905 () Bool)

(assert (=> d!2352716 (=> (not res!3119905) (not e!4637992))))

(assert (=> d!2352716 (= res!3119905 (validRegex!11465 lt!2679019))))

(assert (=> d!2352716 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!426 lt!2679019 r2!6165 (t!388649 s1!4084) s2!3706) lt!2679030)))

(declare-fun b!7844855 () Bool)

(assert (=> b!7844855 (= e!4637992 (validRegex!11465 r2!6165))))

(assert (= (and d!2352716 res!3119905) b!7844855))

(assert (=> d!2352716 m!8255412))

(assert (=> d!2352716 m!8255412))

(declare-fun m!8255456 () Bool)

(assert (=> d!2352716 m!8255456))

(declare-fun m!8255458 () Bool)

(assert (=> d!2352716 m!8255458))

(declare-fun m!8255460 () Bool)

(assert (=> d!2352716 m!8255460))

(assert (=> b!7844855 m!8255402))

(assert (=> b!7844730 d!2352716))

(declare-fun b!7844856 () Bool)

(declare-fun e!4637995 () Bool)

(declare-fun call!726903 () Bool)

(assert (=> b!7844856 (= e!4637995 call!726903)))

(declare-fun b!7844857 () Bool)

(declare-fun e!4637998 () Bool)

(declare-fun call!726904 () Bool)

(assert (=> b!7844857 (= e!4637998 call!726904)))

(declare-fun b!7844859 () Bool)

(declare-fun e!4637993 () Bool)

(declare-fun e!4637999 () Bool)

(assert (=> b!7844859 (= e!4637993 e!4637999)))

(declare-fun c!1442005 () Bool)

(assert (=> b!7844859 (= c!1442005 ((_ is Star!21055) lt!2679020))))

(declare-fun b!7844860 () Bool)

(declare-fun res!3119909 () Bool)

(declare-fun e!4637994 () Bool)

(assert (=> b!7844860 (=> (not res!3119909) (not e!4637994))))

(assert (=> b!7844860 (= res!3119909 call!726904)))

(declare-fun e!4637996 () Bool)

(assert (=> b!7844860 (= e!4637996 e!4637994)))

(declare-fun bm!726898 () Bool)

(assert (=> bm!726898 (= call!726904 call!726903)))

(declare-fun b!7844861 () Bool)

(assert (=> b!7844861 (= e!4637999 e!4637995)))

(declare-fun res!3119910 () Bool)

(assert (=> b!7844861 (= res!3119910 (not (nullable!9330 (reg!21384 lt!2679020))))))

(assert (=> b!7844861 (=> (not res!3119910) (not e!4637995))))

(declare-fun b!7844862 () Bool)

(declare-fun res!3119908 () Bool)

(declare-fun e!4637997 () Bool)

(assert (=> b!7844862 (=> res!3119908 e!4637997)))

(assert (=> b!7844862 (= res!3119908 (not ((_ is Concat!29900) lt!2679020)))))

(assert (=> b!7844862 (= e!4637996 e!4637997)))

(declare-fun b!7844858 () Bool)

(assert (=> b!7844858 (= e!4637999 e!4637996)))

(declare-fun c!1442004 () Bool)

(assert (=> b!7844858 (= c!1442004 ((_ is Union!21055) lt!2679020))))

(declare-fun d!2352718 () Bool)

(declare-fun res!3119907 () Bool)

(assert (=> d!2352718 (=> res!3119907 e!4637993)))

(assert (=> d!2352718 (= res!3119907 ((_ is ElementMatch!21055) lt!2679020))))

(assert (=> d!2352718 (= (validRegex!11465 lt!2679020) e!4637993)))

(declare-fun b!7844863 () Bool)

(declare-fun call!726905 () Bool)

(assert (=> b!7844863 (= e!4637994 call!726905)))

(declare-fun b!7844864 () Bool)

(assert (=> b!7844864 (= e!4637997 e!4637998)))

(declare-fun res!3119906 () Bool)

(assert (=> b!7844864 (=> (not res!3119906) (not e!4637998))))

(assert (=> b!7844864 (= res!3119906 call!726905)))

(declare-fun bm!726899 () Bool)

(assert (=> bm!726899 (= call!726905 (validRegex!11465 (ite c!1442004 (regTwo!42623 lt!2679020) (regOne!42622 lt!2679020))))))

(declare-fun bm!726900 () Bool)

(assert (=> bm!726900 (= call!726903 (validRegex!11465 (ite c!1442005 (reg!21384 lt!2679020) (ite c!1442004 (regOne!42623 lt!2679020) (regTwo!42622 lt!2679020)))))))

(assert (= (and d!2352718 (not res!3119907)) b!7844859))

(assert (= (and b!7844859 c!1442005) b!7844861))

(assert (= (and b!7844859 (not c!1442005)) b!7844858))

(assert (= (and b!7844861 res!3119910) b!7844856))

(assert (= (and b!7844858 c!1442004) b!7844860))

(assert (= (and b!7844858 (not c!1442004)) b!7844862))

(assert (= (and b!7844860 res!3119909) b!7844863))

(assert (= (and b!7844862 (not res!3119908)) b!7844864))

(assert (= (and b!7844864 res!3119906) b!7844857))

(assert (= (or b!7844860 b!7844857) bm!726898))

(assert (= (or b!7844863 b!7844864) bm!726899))

(assert (= (or b!7844856 bm!726898) bm!726900))

(declare-fun m!8255462 () Bool)

(assert (=> b!7844861 m!8255462))

(declare-fun m!8255464 () Bool)

(assert (=> bm!726899 m!8255464))

(declare-fun m!8255466 () Bool)

(assert (=> bm!726900 m!8255466))

(assert (=> b!7844730 d!2352718))

(declare-fun b!7844865 () Bool)

(declare-fun res!3119918 () Bool)

(declare-fun e!4638004 () Bool)

(assert (=> b!7844865 (=> res!3119918 e!4638004)))

(assert (=> b!7844865 (= res!3119918 (not ((_ is ElementMatch!21055) lt!2679020)))))

(declare-fun e!4638003 () Bool)

(assert (=> b!7844865 (= e!4638003 e!4638004)))

(declare-fun b!7844866 () Bool)

(declare-fun e!4638006 () Bool)

(assert (=> b!7844866 (= e!4638006 (nullable!9330 lt!2679020))))

(declare-fun e!4638002 () Bool)

(declare-fun b!7844867 () Bool)

(assert (=> b!7844867 (= e!4638002 (= (head!16023 (++!18065 (t!388649 s1!4084) s2!3706)) (c!1441977 lt!2679020)))))

(declare-fun bm!726901 () Bool)

(declare-fun call!726906 () Bool)

(assert (=> bm!726901 (= call!726906 (isEmpty!42312 (++!18065 (t!388649 s1!4084) s2!3706)))))

(declare-fun b!7844869 () Bool)

(assert (=> b!7844869 (= e!4638006 (matchR!10491 (derivativeStep!6292 lt!2679020 (head!16023 (++!18065 (t!388649 s1!4084) s2!3706))) (tail!15566 (++!18065 (t!388649 s1!4084) s2!3706))))))

(declare-fun b!7844870 () Bool)

(declare-fun e!4638005 () Bool)

(declare-fun e!4638000 () Bool)

(assert (=> b!7844870 (= e!4638005 e!4638000)))

(declare-fun res!3119916 () Bool)

(assert (=> b!7844870 (=> res!3119916 e!4638000)))

(assert (=> b!7844870 (= res!3119916 call!726906)))

(declare-fun b!7844871 () Bool)

(declare-fun res!3119912 () Bool)

(assert (=> b!7844871 (=> (not res!3119912) (not e!4638002))))

(assert (=> b!7844871 (= res!3119912 (isEmpty!42312 (tail!15566 (++!18065 (t!388649 s1!4084) s2!3706))))))

(declare-fun b!7844872 () Bool)

(declare-fun res!3119915 () Bool)

(assert (=> b!7844872 (=> (not res!3119915) (not e!4638002))))

(assert (=> b!7844872 (= res!3119915 (not call!726906))))

(declare-fun b!7844873 () Bool)

(declare-fun lt!2679031 () Bool)

(assert (=> b!7844873 (= e!4638003 (not lt!2679031))))

(declare-fun b!7844874 () Bool)

(declare-fun e!4638001 () Bool)

(assert (=> b!7844874 (= e!4638001 (= lt!2679031 call!726906))))

(declare-fun b!7844875 () Bool)

(assert (=> b!7844875 (= e!4638001 e!4638003)))

(declare-fun c!1442008 () Bool)

(assert (=> b!7844875 (= c!1442008 ((_ is EmptyLang!21055) lt!2679020))))

(declare-fun b!7844876 () Bool)

(assert (=> b!7844876 (= e!4638000 (not (= (head!16023 (++!18065 (t!388649 s1!4084) s2!3706)) (c!1441977 lt!2679020))))))

(declare-fun b!7844868 () Bool)

(assert (=> b!7844868 (= e!4638004 e!4638005)))

(declare-fun res!3119913 () Bool)

(assert (=> b!7844868 (=> (not res!3119913) (not e!4638005))))

(assert (=> b!7844868 (= res!3119913 (not lt!2679031))))

(declare-fun d!2352720 () Bool)

(assert (=> d!2352720 e!4638001))

(declare-fun c!1442006 () Bool)

(assert (=> d!2352720 (= c!1442006 ((_ is EmptyExpr!21055) lt!2679020))))

(assert (=> d!2352720 (= lt!2679031 e!4638006)))

(declare-fun c!1442007 () Bool)

(assert (=> d!2352720 (= c!1442007 (isEmpty!42312 (++!18065 (t!388649 s1!4084) s2!3706)))))

(assert (=> d!2352720 (validRegex!11465 lt!2679020)))

(assert (=> d!2352720 (= (matchR!10491 lt!2679020 (++!18065 (t!388649 s1!4084) s2!3706)) lt!2679031)))

(declare-fun b!7844877 () Bool)

(declare-fun res!3119914 () Bool)

(assert (=> b!7844877 (=> res!3119914 e!4638000)))

(assert (=> b!7844877 (= res!3119914 (not (isEmpty!42312 (tail!15566 (++!18065 (t!388649 s1!4084) s2!3706)))))))

(declare-fun b!7844878 () Bool)

(declare-fun res!3119911 () Bool)

(assert (=> b!7844878 (=> res!3119911 e!4638004)))

(assert (=> b!7844878 (= res!3119911 e!4638002)))

(declare-fun res!3119917 () Bool)

(assert (=> b!7844878 (=> (not res!3119917) (not e!4638002))))

(assert (=> b!7844878 (= res!3119917 lt!2679031)))

(assert (= (and d!2352720 c!1442007) b!7844866))

(assert (= (and d!2352720 (not c!1442007)) b!7844869))

(assert (= (and d!2352720 c!1442006) b!7844874))

(assert (= (and d!2352720 (not c!1442006)) b!7844875))

(assert (= (and b!7844875 c!1442008) b!7844873))

(assert (= (and b!7844875 (not c!1442008)) b!7844865))

(assert (= (and b!7844865 (not res!3119918)) b!7844878))

(assert (= (and b!7844878 res!3119917) b!7844872))

(assert (= (and b!7844872 res!3119915) b!7844871))

(assert (= (and b!7844871 res!3119912) b!7844867))

(assert (= (and b!7844878 (not res!3119911)) b!7844868))

(assert (= (and b!7844868 res!3119913) b!7844870))

(assert (= (and b!7844870 (not res!3119916)) b!7844877))

(assert (= (and b!7844877 (not res!3119914)) b!7844876))

(assert (= (or b!7844874 b!7844870 b!7844872) bm!726901))

(assert (=> b!7844877 m!8255412))

(declare-fun m!8255468 () Bool)

(assert (=> b!7844877 m!8255468))

(assert (=> b!7844877 m!8255468))

(declare-fun m!8255470 () Bool)

(assert (=> b!7844877 m!8255470))

(assert (=> b!7844876 m!8255412))

(declare-fun m!8255472 () Bool)

(assert (=> b!7844876 m!8255472))

(assert (=> bm!726901 m!8255412))

(declare-fun m!8255474 () Bool)

(assert (=> bm!726901 m!8255474))

(assert (=> b!7844867 m!8255412))

(assert (=> b!7844867 m!8255472))

(declare-fun m!8255476 () Bool)

(assert (=> b!7844866 m!8255476))

(assert (=> d!2352720 m!8255412))

(assert (=> d!2352720 m!8255474))

(assert (=> d!2352720 m!8255410))

(assert (=> b!7844869 m!8255412))

(assert (=> b!7844869 m!8255472))

(assert (=> b!7844869 m!8255472))

(declare-fun m!8255478 () Bool)

(assert (=> b!7844869 m!8255478))

(assert (=> b!7844869 m!8255412))

(assert (=> b!7844869 m!8255468))

(assert (=> b!7844869 m!8255478))

(assert (=> b!7844869 m!8255468))

(declare-fun m!8255480 () Bool)

(assert (=> b!7844869 m!8255480))

(assert (=> b!7844871 m!8255412))

(assert (=> b!7844871 m!8255468))

(assert (=> b!7844871 m!8255468))

(assert (=> b!7844871 m!8255470))

(assert (=> b!7844730 d!2352720))

(declare-fun c!1442024 () Bool)

(declare-fun c!1442023 () Bool)

(declare-fun bm!726911 () Bool)

(declare-fun call!726917 () Regex!21055)

(declare-fun c!1442025 () Bool)

(assert (=> bm!726911 (= call!726917 (derivativeStep!6292 (ite c!1442025 (regTwo!42623 r1!6227) (ite c!1442024 (reg!21384 r1!6227) (ite c!1442023 (regTwo!42622 r1!6227) (regOne!42622 r1!6227)))) (h!80238 s1!4084)))))

(declare-fun call!726916 () Regex!21055)

(declare-fun bm!726912 () Bool)

(assert (=> bm!726912 (= call!726916 (derivativeStep!6292 (ite c!1442025 (regOne!42623 r1!6227) (regOne!42622 r1!6227)) (h!80238 s1!4084)))))

(declare-fun d!2352722 () Bool)

(declare-fun lt!2679035 () Regex!21055)

(assert (=> d!2352722 (validRegex!11465 lt!2679035)))

(declare-fun e!4638024 () Regex!21055)

(assert (=> d!2352722 (= lt!2679035 e!4638024)))

(declare-fun c!1442026 () Bool)

(assert (=> d!2352722 (= c!1442026 (or ((_ is EmptyExpr!21055) r1!6227) ((_ is EmptyLang!21055) r1!6227)))))

(assert (=> d!2352722 (validRegex!11465 r1!6227)))

(assert (=> d!2352722 (= (derivativeStep!6292 r1!6227 (h!80238 s1!4084)) lt!2679035)))

(declare-fun e!4638025 () Regex!21055)

(declare-fun call!726919 () Regex!21055)

(declare-fun b!7844913 () Bool)

(assert (=> b!7844913 (= e!4638025 (Union!21055 (Concat!29900 call!726916 (regTwo!42622 r1!6227)) call!726919))))

(declare-fun bm!726913 () Bool)

(declare-fun call!726918 () Regex!21055)

(assert (=> bm!726913 (= call!726918 call!726917)))

(declare-fun b!7844914 () Bool)

(assert (=> b!7844914 (= c!1442023 (nullable!9330 (regOne!42622 r1!6227)))))

(declare-fun e!4638028 () Regex!21055)

(assert (=> b!7844914 (= e!4638028 e!4638025)))

(declare-fun b!7844915 () Bool)

(declare-fun e!4638026 () Regex!21055)

(assert (=> b!7844915 (= e!4638026 (Union!21055 call!726916 call!726917))))

(declare-fun b!7844916 () Bool)

(declare-fun e!4638027 () Regex!21055)

(assert (=> b!7844916 (= e!4638027 (ite (= (h!80238 s1!4084) (c!1441977 r1!6227)) EmptyExpr!21055 EmptyLang!21055))))

(declare-fun b!7844917 () Bool)

(assert (=> b!7844917 (= e!4638026 e!4638028)))

(assert (=> b!7844917 (= c!1442024 ((_ is Star!21055) r1!6227))))

(declare-fun b!7844918 () Bool)

(assert (=> b!7844918 (= c!1442025 ((_ is Union!21055) r1!6227))))

(assert (=> b!7844918 (= e!4638027 e!4638026)))

(declare-fun b!7844919 () Bool)

(assert (=> b!7844919 (= e!4638024 EmptyLang!21055)))

(declare-fun b!7844920 () Bool)

(assert (=> b!7844920 (= e!4638025 (Union!21055 (Concat!29900 call!726919 (regTwo!42622 r1!6227)) EmptyLang!21055))))

(declare-fun b!7844921 () Bool)

(assert (=> b!7844921 (= e!4638028 (Concat!29900 call!726918 r1!6227))))

(declare-fun bm!726914 () Bool)

(assert (=> bm!726914 (= call!726919 call!726918)))

(declare-fun b!7844922 () Bool)

(assert (=> b!7844922 (= e!4638024 e!4638027)))

(declare-fun c!1442022 () Bool)

(assert (=> b!7844922 (= c!1442022 ((_ is ElementMatch!21055) r1!6227))))

(assert (= (and d!2352722 c!1442026) b!7844919))

(assert (= (and d!2352722 (not c!1442026)) b!7844922))

(assert (= (and b!7844922 c!1442022) b!7844916))

(assert (= (and b!7844922 (not c!1442022)) b!7844918))

(assert (= (and b!7844918 c!1442025) b!7844915))

(assert (= (and b!7844918 (not c!1442025)) b!7844917))

(assert (= (and b!7844917 c!1442024) b!7844921))

(assert (= (and b!7844917 (not c!1442024)) b!7844914))

(assert (= (and b!7844914 c!1442023) b!7844913))

(assert (= (and b!7844914 (not c!1442023)) b!7844920))

(assert (= (or b!7844913 b!7844920) bm!726914))

(assert (= (or b!7844921 bm!726914) bm!726913))

(assert (= (or b!7844915 bm!726913) bm!726911))

(assert (= (or b!7844915 b!7844913) bm!726912))

(declare-fun m!8255496 () Bool)

(assert (=> bm!726911 m!8255496))

(declare-fun m!8255498 () Bool)

(assert (=> bm!726912 m!8255498))

(declare-fun m!8255500 () Bool)

(assert (=> d!2352722 m!8255500))

(assert (=> d!2352722 m!8255398))

(declare-fun m!8255502 () Bool)

(assert (=> b!7844914 m!8255502))

(assert (=> b!7844730 d!2352722))

(declare-fun e!4638037 () Bool)

(declare-fun b!7844942 () Bool)

(declare-fun lt!2679040 () List!73914)

(assert (=> b!7844942 (= e!4638037 (or (not (= s2!3706 Nil!73790)) (= lt!2679040 (t!388649 s1!4084))))))

(declare-fun b!7844939 () Bool)

(declare-fun e!4638038 () List!73914)

(assert (=> b!7844939 (= e!4638038 s2!3706)))

(declare-fun b!7844940 () Bool)

(assert (=> b!7844940 (= e!4638038 (Cons!73790 (h!80238 (t!388649 s1!4084)) (++!18065 (t!388649 (t!388649 s1!4084)) s2!3706)))))

(declare-fun d!2352726 () Bool)

(assert (=> d!2352726 e!4638037))

(declare-fun res!3119932 () Bool)

(assert (=> d!2352726 (=> (not res!3119932) (not e!4638037))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15660 (List!73914) (InoxSet C!42436))

(assert (=> d!2352726 (= res!3119932 (= (content!15660 lt!2679040) ((_ map or) (content!15660 (t!388649 s1!4084)) (content!15660 s2!3706))))))

(assert (=> d!2352726 (= lt!2679040 e!4638038)))

(declare-fun c!1442033 () Bool)

(assert (=> d!2352726 (= c!1442033 ((_ is Nil!73790) (t!388649 s1!4084)))))

(assert (=> d!2352726 (= (++!18065 (t!388649 s1!4084) s2!3706) lt!2679040)))

(declare-fun b!7844941 () Bool)

(declare-fun res!3119931 () Bool)

(assert (=> b!7844941 (=> (not res!3119931) (not e!4638037))))

(declare-fun size!42813 (List!73914) Int)

(assert (=> b!7844941 (= res!3119931 (= (size!42813 lt!2679040) (+ (size!42813 (t!388649 s1!4084)) (size!42813 s2!3706))))))

(assert (= (and d!2352726 c!1442033) b!7844939))

(assert (= (and d!2352726 (not c!1442033)) b!7844940))

(assert (= (and d!2352726 res!3119932) b!7844941))

(assert (= (and b!7844941 res!3119931) b!7844942))

(declare-fun m!8255504 () Bool)

(assert (=> b!7844940 m!8255504))

(declare-fun m!8255506 () Bool)

(assert (=> d!2352726 m!8255506))

(declare-fun m!8255508 () Bool)

(assert (=> d!2352726 m!8255508))

(declare-fun m!8255510 () Bool)

(assert (=> d!2352726 m!8255510))

(declare-fun m!8255512 () Bool)

(assert (=> b!7844941 m!8255512))

(declare-fun m!8255514 () Bool)

(assert (=> b!7844941 m!8255514))

(declare-fun m!8255516 () Bool)

(assert (=> b!7844941 m!8255516))

(assert (=> b!7844730 d!2352726))

(declare-fun b!7844967 () Bool)

(declare-fun e!4638047 () Bool)

(declare-fun tp!2322546 () Bool)

(assert (=> b!7844967 (= e!4638047 tp!2322546)))

(assert (=> b!7844728 (= tp!2322531 e!4638047)))

(declare-fun b!7844966 () Bool)

(declare-fun tp!2322547 () Bool)

(declare-fun tp!2322544 () Bool)

(assert (=> b!7844966 (= e!4638047 (and tp!2322547 tp!2322544))))

(declare-fun b!7844965 () Bool)

(assert (=> b!7844965 (= e!4638047 tp_is_empty!52509)))

(declare-fun b!7844968 () Bool)

(declare-fun tp!2322543 () Bool)

(declare-fun tp!2322545 () Bool)

(assert (=> b!7844968 (= e!4638047 (and tp!2322543 tp!2322545))))

(assert (= (and b!7844728 ((_ is ElementMatch!21055) (regOne!42622 r1!6227))) b!7844965))

(assert (= (and b!7844728 ((_ is Concat!29900) (regOne!42622 r1!6227))) b!7844966))

(assert (= (and b!7844728 ((_ is Star!21055) (regOne!42622 r1!6227))) b!7844967))

(assert (= (and b!7844728 ((_ is Union!21055) (regOne!42622 r1!6227))) b!7844968))

(declare-fun b!7844971 () Bool)

(declare-fun e!4638048 () Bool)

(declare-fun tp!2322551 () Bool)

(assert (=> b!7844971 (= e!4638048 tp!2322551)))

(assert (=> b!7844728 (= tp!2322527 e!4638048)))

(declare-fun b!7844970 () Bool)

(declare-fun tp!2322552 () Bool)

(declare-fun tp!2322549 () Bool)

(assert (=> b!7844970 (= e!4638048 (and tp!2322552 tp!2322549))))

(declare-fun b!7844969 () Bool)

(assert (=> b!7844969 (= e!4638048 tp_is_empty!52509)))

(declare-fun b!7844972 () Bool)

(declare-fun tp!2322548 () Bool)

(declare-fun tp!2322550 () Bool)

(assert (=> b!7844972 (= e!4638048 (and tp!2322548 tp!2322550))))

(assert (= (and b!7844728 ((_ is ElementMatch!21055) (regTwo!42622 r1!6227))) b!7844969))

(assert (= (and b!7844728 ((_ is Concat!29900) (regTwo!42622 r1!6227))) b!7844970))

(assert (= (and b!7844728 ((_ is Star!21055) (regTwo!42622 r1!6227))) b!7844971))

(assert (= (and b!7844728 ((_ is Union!21055) (regTwo!42622 r1!6227))) b!7844972))

(declare-fun b!7844977 () Bool)

(declare-fun e!4638051 () Bool)

(declare-fun tp!2322555 () Bool)

(assert (=> b!7844977 (= e!4638051 (and tp_is_empty!52509 tp!2322555))))

(assert (=> b!7844723 (= tp!2322532 e!4638051)))

(assert (= (and b!7844723 ((_ is Cons!73790) (t!388649 s2!3706))) b!7844977))

(declare-fun b!7844980 () Bool)

(declare-fun e!4638052 () Bool)

(declare-fun tp!2322559 () Bool)

(assert (=> b!7844980 (= e!4638052 tp!2322559)))

(assert (=> b!7844721 (= tp!2322530 e!4638052)))

(declare-fun b!7844979 () Bool)

(declare-fun tp!2322560 () Bool)

(declare-fun tp!2322557 () Bool)

(assert (=> b!7844979 (= e!4638052 (and tp!2322560 tp!2322557))))

(declare-fun b!7844978 () Bool)

(assert (=> b!7844978 (= e!4638052 tp_is_empty!52509)))

(declare-fun b!7844981 () Bool)

(declare-fun tp!2322556 () Bool)

(declare-fun tp!2322558 () Bool)

(assert (=> b!7844981 (= e!4638052 (and tp!2322556 tp!2322558))))

(assert (= (and b!7844721 ((_ is ElementMatch!21055) (reg!21384 r2!6165))) b!7844978))

(assert (= (and b!7844721 ((_ is Concat!29900) (reg!21384 r2!6165))) b!7844979))

(assert (= (and b!7844721 ((_ is Star!21055) (reg!21384 r2!6165))) b!7844980))

(assert (= (and b!7844721 ((_ is Union!21055) (reg!21384 r2!6165))) b!7844981))

(declare-fun b!7844984 () Bool)

(declare-fun e!4638053 () Bool)

(declare-fun tp!2322564 () Bool)

(assert (=> b!7844984 (= e!4638053 tp!2322564)))

(assert (=> b!7844732 (= tp!2322521 e!4638053)))

(declare-fun b!7844983 () Bool)

(declare-fun tp!2322565 () Bool)

(declare-fun tp!2322562 () Bool)

(assert (=> b!7844983 (= e!4638053 (and tp!2322565 tp!2322562))))

(declare-fun b!7844982 () Bool)

(assert (=> b!7844982 (= e!4638053 tp_is_empty!52509)))

(declare-fun b!7844985 () Bool)

(declare-fun tp!2322561 () Bool)

(declare-fun tp!2322563 () Bool)

(assert (=> b!7844985 (= e!4638053 (and tp!2322561 tp!2322563))))

(assert (= (and b!7844732 ((_ is ElementMatch!21055) (regOne!42622 r2!6165))) b!7844982))

(assert (= (and b!7844732 ((_ is Concat!29900) (regOne!42622 r2!6165))) b!7844983))

(assert (= (and b!7844732 ((_ is Star!21055) (regOne!42622 r2!6165))) b!7844984))

(assert (= (and b!7844732 ((_ is Union!21055) (regOne!42622 r2!6165))) b!7844985))

(declare-fun b!7844988 () Bool)

(declare-fun e!4638054 () Bool)

(declare-fun tp!2322569 () Bool)

(assert (=> b!7844988 (= e!4638054 tp!2322569)))

(assert (=> b!7844732 (= tp!2322523 e!4638054)))

(declare-fun b!7844987 () Bool)

(declare-fun tp!2322570 () Bool)

(declare-fun tp!2322567 () Bool)

(assert (=> b!7844987 (= e!4638054 (and tp!2322570 tp!2322567))))

(declare-fun b!7844986 () Bool)

(assert (=> b!7844986 (= e!4638054 tp_is_empty!52509)))

(declare-fun b!7844989 () Bool)

(declare-fun tp!2322566 () Bool)

(declare-fun tp!2322568 () Bool)

(assert (=> b!7844989 (= e!4638054 (and tp!2322566 tp!2322568))))

(assert (= (and b!7844732 ((_ is ElementMatch!21055) (regTwo!42622 r2!6165))) b!7844986))

(assert (= (and b!7844732 ((_ is Concat!29900) (regTwo!42622 r2!6165))) b!7844987))

(assert (= (and b!7844732 ((_ is Star!21055) (regTwo!42622 r2!6165))) b!7844988))

(assert (= (and b!7844732 ((_ is Union!21055) (regTwo!42622 r2!6165))) b!7844989))

(declare-fun b!7844992 () Bool)

(declare-fun e!4638055 () Bool)

(declare-fun tp!2322574 () Bool)

(assert (=> b!7844992 (= e!4638055 tp!2322574)))

(assert (=> b!7844727 (= tp!2322529 e!4638055)))

(declare-fun b!7844991 () Bool)

(declare-fun tp!2322575 () Bool)

(declare-fun tp!2322572 () Bool)

(assert (=> b!7844991 (= e!4638055 (and tp!2322575 tp!2322572))))

(declare-fun b!7844990 () Bool)

(assert (=> b!7844990 (= e!4638055 tp_is_empty!52509)))

(declare-fun b!7844993 () Bool)

(declare-fun tp!2322571 () Bool)

(declare-fun tp!2322573 () Bool)

(assert (=> b!7844993 (= e!4638055 (and tp!2322571 tp!2322573))))

(assert (= (and b!7844727 ((_ is ElementMatch!21055) (reg!21384 r1!6227))) b!7844990))

(assert (= (and b!7844727 ((_ is Concat!29900) (reg!21384 r1!6227))) b!7844991))

(assert (= (and b!7844727 ((_ is Star!21055) (reg!21384 r1!6227))) b!7844992))

(assert (= (and b!7844727 ((_ is Union!21055) (reg!21384 r1!6227))) b!7844993))

(declare-fun b!7844994 () Bool)

(declare-fun e!4638056 () Bool)

(declare-fun tp!2322576 () Bool)

(assert (=> b!7844994 (= e!4638056 (and tp_is_empty!52509 tp!2322576))))

(assert (=> b!7844725 (= tp!2322526 e!4638056)))

(assert (= (and b!7844725 ((_ is Cons!73790) (t!388649 s1!4084))) b!7844994))

(declare-fun b!7844997 () Bool)

(declare-fun e!4638057 () Bool)

(declare-fun tp!2322580 () Bool)

(assert (=> b!7844997 (= e!4638057 tp!2322580)))

(assert (=> b!7844720 (= tp!2322524 e!4638057)))

(declare-fun b!7844996 () Bool)

(declare-fun tp!2322581 () Bool)

(declare-fun tp!2322578 () Bool)

(assert (=> b!7844996 (= e!4638057 (and tp!2322581 tp!2322578))))

(declare-fun b!7844995 () Bool)

(assert (=> b!7844995 (= e!4638057 tp_is_empty!52509)))

(declare-fun b!7844998 () Bool)

(declare-fun tp!2322577 () Bool)

(declare-fun tp!2322579 () Bool)

(assert (=> b!7844998 (= e!4638057 (and tp!2322577 tp!2322579))))

(assert (= (and b!7844720 ((_ is ElementMatch!21055) (regOne!42623 r2!6165))) b!7844995))

(assert (= (and b!7844720 ((_ is Concat!29900) (regOne!42623 r2!6165))) b!7844996))

(assert (= (and b!7844720 ((_ is Star!21055) (regOne!42623 r2!6165))) b!7844997))

(assert (= (and b!7844720 ((_ is Union!21055) (regOne!42623 r2!6165))) b!7844998))

(declare-fun b!7845001 () Bool)

(declare-fun e!4638058 () Bool)

(declare-fun tp!2322585 () Bool)

(assert (=> b!7845001 (= e!4638058 tp!2322585)))

(assert (=> b!7844720 (= tp!2322528 e!4638058)))

(declare-fun b!7845000 () Bool)

(declare-fun tp!2322586 () Bool)

(declare-fun tp!2322583 () Bool)

(assert (=> b!7845000 (= e!4638058 (and tp!2322586 tp!2322583))))

(declare-fun b!7844999 () Bool)

(assert (=> b!7844999 (= e!4638058 tp_is_empty!52509)))

(declare-fun b!7845002 () Bool)

(declare-fun tp!2322582 () Bool)

(declare-fun tp!2322584 () Bool)

(assert (=> b!7845002 (= e!4638058 (and tp!2322582 tp!2322584))))

(assert (= (and b!7844720 ((_ is ElementMatch!21055) (regTwo!42623 r2!6165))) b!7844999))

(assert (= (and b!7844720 ((_ is Concat!29900) (regTwo!42623 r2!6165))) b!7845000))

(assert (= (and b!7844720 ((_ is Star!21055) (regTwo!42623 r2!6165))) b!7845001))

(assert (= (and b!7844720 ((_ is Union!21055) (regTwo!42623 r2!6165))) b!7845002))

(declare-fun b!7845005 () Bool)

(declare-fun e!4638059 () Bool)

(declare-fun tp!2322590 () Bool)

(assert (=> b!7845005 (= e!4638059 tp!2322590)))

(assert (=> b!7844719 (= tp!2322525 e!4638059)))

(declare-fun b!7845004 () Bool)

(declare-fun tp!2322591 () Bool)

(declare-fun tp!2322588 () Bool)

(assert (=> b!7845004 (= e!4638059 (and tp!2322591 tp!2322588))))

(declare-fun b!7845003 () Bool)

(assert (=> b!7845003 (= e!4638059 tp_is_empty!52509)))

(declare-fun b!7845006 () Bool)

(declare-fun tp!2322587 () Bool)

(declare-fun tp!2322589 () Bool)

(assert (=> b!7845006 (= e!4638059 (and tp!2322587 tp!2322589))))

(assert (= (and b!7844719 ((_ is ElementMatch!21055) (regOne!42623 r1!6227))) b!7845003))

(assert (= (and b!7844719 ((_ is Concat!29900) (regOne!42623 r1!6227))) b!7845004))

(assert (= (and b!7844719 ((_ is Star!21055) (regOne!42623 r1!6227))) b!7845005))

(assert (= (and b!7844719 ((_ is Union!21055) (regOne!42623 r1!6227))) b!7845006))

(declare-fun b!7845009 () Bool)

(declare-fun e!4638060 () Bool)

(declare-fun tp!2322595 () Bool)

(assert (=> b!7845009 (= e!4638060 tp!2322595)))

(assert (=> b!7844719 (= tp!2322522 e!4638060)))

(declare-fun b!7845008 () Bool)

(declare-fun tp!2322596 () Bool)

(declare-fun tp!2322593 () Bool)

(assert (=> b!7845008 (= e!4638060 (and tp!2322596 tp!2322593))))

(declare-fun b!7845007 () Bool)

(assert (=> b!7845007 (= e!4638060 tp_is_empty!52509)))

(declare-fun b!7845010 () Bool)

(declare-fun tp!2322592 () Bool)

(declare-fun tp!2322594 () Bool)

(assert (=> b!7845010 (= e!4638060 (and tp!2322592 tp!2322594))))

(assert (= (and b!7844719 ((_ is ElementMatch!21055) (regTwo!42623 r1!6227))) b!7845007))

(assert (= (and b!7844719 ((_ is Concat!29900) (regTwo!42623 r1!6227))) b!7845008))

(assert (= (and b!7844719 ((_ is Star!21055) (regTwo!42623 r1!6227))) b!7845009))

(assert (= (and b!7844719 ((_ is Union!21055) (regTwo!42623 r1!6227))) b!7845010))

(check-sat (not bm!726882) (not b!7844988) (not b!7845000) (not b!7844831) (not b!7844842) (not b!7844826) (not b!7844970) (not bm!726901) (not b!7844971) (not b!7844855) (not b!7845009) (not bm!726890) (not b!7844914) (not b!7844861) (not b!7844992) (not b!7844980) (not b!7845001) (not bm!726900) (not b!7844772) (not b!7844996) (not b!7844984) (not bm!726912) (not b!7844773) (not b!7844763) (not bm!726897) (not b!7845010) (not bm!726896) (not b!7844765) (not b!7845006) (not b!7844989) (not b!7844966) (not d!2352722) (not d!2352706) (not b!7844767) (not b!7844876) (not d!2352712) (not d!2352720) (not d!2352716) (not b!7844997) (not b!7844871) (not b!7844977) (not b!7844968) (not b!7844991) (not b!7844993) (not b!7844869) (not b!7844877) (not b!7844832) (not b!7844940) (not b!7844866) tp_is_empty!52509 (not b!7845008) (not b!7844834) (not b!7844972) (not b!7844867) (not b!7844994) (not b!7844983) (not bm!726899) (not bm!726892) (not b!7844987) (not b!7845005) (not b!7844941) (not bm!726891) (not b!7844841) (not b!7844762) (not b!7845004) (not b!7845002) (not b!7844981) (not b!7844985) (not bm!726911) (not b!7844967) (not b!7844998) (not b!7844836) (not d!2352726) (not b!7844849) (not b!7844979))
(check-sat)
