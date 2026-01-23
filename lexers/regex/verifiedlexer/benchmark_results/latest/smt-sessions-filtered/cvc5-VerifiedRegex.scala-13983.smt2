; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!740084 () Bool)

(assert start!740084)

(declare-fun b!7771708 () Bool)

(declare-fun e!4604722 () Bool)

(declare-datatypes ((C!41846 0))(
  ( (C!41847 (val!31363 Int)) )
))
(declare-datatypes ((Regex!20760 0))(
  ( (ElementMatch!20760 (c!1432417 C!41846)) (Concat!29605 (regOne!42032 Regex!20760) (regTwo!42032 Regex!20760)) (EmptyExpr!20760) (Star!20760 (reg!21089 Regex!20760)) (EmptyLang!20760) (Union!20760 (regOne!42033 Regex!20760) (regTwo!42033 Regex!20760)) )
))
(declare-fun lt!2671548 () Regex!20760)

(declare-datatypes ((List!73601 0))(
  ( (Nil!73477) (Cons!73477 (h!79925 C!41846) (t!388336 List!73601)) )
))
(declare-fun s!14904 () List!73601)

(declare-fun matchR!10222 (Regex!20760 List!73601) Bool)

(assert (=> b!7771708 (= e!4604722 (matchR!10222 lt!2671548 s!14904))))

(declare-fun b!7771709 () Bool)

(declare-fun e!4604726 () Bool)

(assert (=> b!7771709 (= e!4604726 e!4604722)))

(declare-fun res!3097966 () Bool)

(assert (=> b!7771709 (=> res!3097966 e!4604722)))

(declare-fun isEmpty!42151 (List!73601) Bool)

(assert (=> b!7771709 (= res!3097966 (isEmpty!42151 s!14904))))

(declare-fun lt!2671547 () List!73601)

(declare-datatypes ((tuple2!69862 0))(
  ( (tuple2!69863 (_1!38234 List!73601) (_2!38234 List!73601)) )
))
(declare-fun lt!2671552 () tuple2!69862)

(declare-fun ++!17904 (List!73601 List!73601) List!73601)

(assert (=> b!7771709 (matchR!10222 lt!2671548 (++!17904 lt!2671547 (_2!38234 lt!2671552)))))

(declare-fun r!25924 () Regex!20760)

(declare-fun lt!2671546 () Regex!20760)

(assert (=> b!7771709 (= lt!2671548 (Concat!29605 r!25924 lt!2671546))))

(declare-datatypes ((Unit!168458 0))(
  ( (Unit!168459) )
))
(declare-fun lt!2671551 () Unit!168458)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!421 (Regex!20760 Regex!20760 List!73601 List!73601) Unit!168458)

(assert (=> b!7771709 (= lt!2671551 (lemmaTwoRegexMatchThenConcatMatchesConcatString!421 r!25924 lt!2671546 lt!2671547 (_2!38234 lt!2671552)))))

(declare-fun b!7771710 () Bool)

(declare-fun e!4604724 () Bool)

(declare-fun tp!2283216 () Bool)

(declare-fun tp!2283214 () Bool)

(assert (=> b!7771710 (= e!4604724 (and tp!2283216 tp!2283214))))

(declare-fun b!7771711 () Bool)

(declare-fun tp!2283219 () Bool)

(declare-fun tp!2283217 () Bool)

(assert (=> b!7771711 (= e!4604724 (and tp!2283219 tp!2283217))))

(declare-fun b!7771713 () Bool)

(declare-fun tp!2283218 () Bool)

(assert (=> b!7771713 (= e!4604724 tp!2283218)))

(declare-fun b!7771714 () Bool)

(declare-fun e!4604723 () Bool)

(declare-fun tp_is_empty!51875 () Bool)

(declare-fun tp!2283215 () Bool)

(assert (=> b!7771714 (= e!4604723 (and tp_is_empty!51875 tp!2283215))))

(declare-fun b!7771715 () Bool)

(declare-fun e!4604727 () Bool)

(assert (=> b!7771715 (= e!4604727 (not e!4604726))))

(declare-fun res!3097960 () Bool)

(assert (=> b!7771715 (=> res!3097960 e!4604726)))

(declare-fun validRegex!11174 (Regex!20760) Bool)

(assert (=> b!7771715 (= res!3097960 (not (validRegex!11174 r!25924)))))

(assert (=> b!7771715 (= lt!2671547 (Cons!73477 (h!79925 s!14904) (_1!38234 lt!2671552)))))

(declare-datatypes ((Option!17725 0))(
  ( (None!17724) (Some!17724 (v!54859 tuple2!69862)) )
))
(declare-fun lt!2671550 () Option!17725)

(declare-fun get!26240 (Option!17725) tuple2!69862)

(assert (=> b!7771715 (= lt!2671552 (get!26240 lt!2671550))))

(declare-fun isDefined!14337 (Option!17725) Bool)

(assert (=> b!7771715 (isDefined!14337 lt!2671550)))

(declare-fun lt!2671549 () Regex!20760)

(declare-fun findConcatSeparation!3755 (Regex!20760 Regex!20760 List!73601 List!73601 List!73601) Option!17725)

(assert (=> b!7771715 (= lt!2671550 (findConcatSeparation!3755 lt!2671549 lt!2671546 Nil!73477 (t!388336 s!14904) (t!388336 s!14904)))))

(declare-fun lt!2671545 () Unit!168458)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!345 (Regex!20760 Regex!20760 List!73601) Unit!168458)

(assert (=> b!7771715 (= lt!2671545 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!345 lt!2671549 lt!2671546 (t!388336 s!14904)))))

(declare-fun b!7771716 () Bool)

(declare-fun e!4604725 () Bool)

(assert (=> b!7771716 (= e!4604725 e!4604727)))

(declare-fun res!3097964 () Bool)

(assert (=> b!7771716 (=> (not res!3097964) (not e!4604727))))

(declare-fun derivativeStep!6105 (Regex!20760 C!41846) Regex!20760)

(assert (=> b!7771716 (= res!3097964 (= (derivativeStep!6105 lt!2671546 (h!79925 s!14904)) (Concat!29605 lt!2671549 lt!2671546)))))

(assert (=> b!7771716 (= lt!2671549 (derivativeStep!6105 r!25924 (h!79925 s!14904)))))

(declare-fun b!7771717 () Bool)

(assert (=> b!7771717 (= e!4604724 tp_is_empty!51875)))

(declare-fun b!7771718 () Bool)

(declare-fun res!3097962 () Bool)

(assert (=> b!7771718 (=> (not res!3097962) (not e!4604725))))

(assert (=> b!7771718 (= res!3097962 (matchR!10222 lt!2671546 s!14904))))

(declare-fun b!7771712 () Bool)

(declare-fun res!3097965 () Bool)

(assert (=> b!7771712 (=> res!3097965 e!4604726)))

(assert (=> b!7771712 (= res!3097965 (not (matchR!10222 r!25924 lt!2671547)))))

(declare-fun res!3097961 () Bool)

(assert (=> start!740084 (=> (not res!3097961) (not e!4604725))))

(assert (=> start!740084 (= res!3097961 (validRegex!11174 lt!2671546))))

(assert (=> start!740084 (= lt!2671546 (Star!20760 r!25924))))

(assert (=> start!740084 e!4604725))

(assert (=> start!740084 e!4604724))

(assert (=> start!740084 e!4604723))

(declare-fun b!7771719 () Bool)

(declare-fun res!3097959 () Bool)

(assert (=> b!7771719 (=> (not res!3097959) (not e!4604725))))

(assert (=> b!7771719 (= res!3097959 (is-Cons!73477 s!14904))))

(declare-fun b!7771720 () Bool)

(declare-fun res!3097963 () Bool)

(assert (=> b!7771720 (=> res!3097963 e!4604726)))

(assert (=> b!7771720 (= res!3097963 (not (matchR!10222 lt!2671546 (_2!38234 lt!2671552))))))

(assert (= (and start!740084 res!3097961) b!7771718))

(assert (= (and b!7771718 res!3097962) b!7771719))

(assert (= (and b!7771719 res!3097959) b!7771716))

(assert (= (and b!7771716 res!3097964) b!7771715))

(assert (= (and b!7771715 (not res!3097960)) b!7771712))

(assert (= (and b!7771712 (not res!3097965)) b!7771720))

(assert (= (and b!7771720 (not res!3097963)) b!7771709))

(assert (= (and b!7771709 (not res!3097966)) b!7771708))

(assert (= (and start!740084 (is-ElementMatch!20760 r!25924)) b!7771717))

(assert (= (and start!740084 (is-Concat!29605 r!25924)) b!7771710))

(assert (= (and start!740084 (is-Star!20760 r!25924)) b!7771713))

(assert (= (and start!740084 (is-Union!20760 r!25924)) b!7771711))

(assert (= (and start!740084 (is-Cons!73477 s!14904)) b!7771714))

(declare-fun m!8225286 () Bool)

(assert (=> start!740084 m!8225286))

(declare-fun m!8225288 () Bool)

(assert (=> b!7771712 m!8225288))

(declare-fun m!8225290 () Bool)

(assert (=> b!7771720 m!8225290))

(declare-fun m!8225292 () Bool)

(assert (=> b!7771709 m!8225292))

(declare-fun m!8225294 () Bool)

(assert (=> b!7771709 m!8225294))

(assert (=> b!7771709 m!8225294))

(declare-fun m!8225296 () Bool)

(assert (=> b!7771709 m!8225296))

(declare-fun m!8225298 () Bool)

(assert (=> b!7771709 m!8225298))

(declare-fun m!8225300 () Bool)

(assert (=> b!7771718 m!8225300))

(declare-fun m!8225302 () Bool)

(assert (=> b!7771716 m!8225302))

(declare-fun m!8225304 () Bool)

(assert (=> b!7771716 m!8225304))

(declare-fun m!8225306 () Bool)

(assert (=> b!7771715 m!8225306))

(declare-fun m!8225308 () Bool)

(assert (=> b!7771715 m!8225308))

(declare-fun m!8225310 () Bool)

(assert (=> b!7771715 m!8225310))

(declare-fun m!8225312 () Bool)

(assert (=> b!7771715 m!8225312))

(declare-fun m!8225314 () Bool)

(assert (=> b!7771715 m!8225314))

(declare-fun m!8225316 () Bool)

(assert (=> b!7771708 m!8225316))

(push 1)

(assert tp_is_empty!51875)

(assert (not b!7771708))

(assert (not b!7771714))

(assert (not b!7771711))

(assert (not b!7771713))

(assert (not start!740084))

(assert (not b!7771716))

(assert (not b!7771718))

(assert (not b!7771715))

(assert (not b!7771712))

(assert (not b!7771709))

(assert (not b!7771720))

(assert (not b!7771710))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7771788 () Bool)

(declare-fun e!4604762 () Bool)

(declare-fun head!15887 (List!73601) C!41846)

(assert (=> b!7771788 (= e!4604762 (= (head!15887 s!14904) (c!1432417 lt!2671546)))))

(declare-fun b!7771789 () Bool)

(declare-fun res!3098012 () Bool)

(declare-fun e!4604760 () Bool)

(assert (=> b!7771789 (=> res!3098012 e!4604760)))

(declare-fun tail!15428 (List!73601) List!73601)

(assert (=> b!7771789 (= res!3098012 (not (isEmpty!42151 (tail!15428 s!14904))))))

(declare-fun b!7771790 () Bool)

(declare-fun e!4604764 () Bool)

(assert (=> b!7771790 (= e!4604764 (matchR!10222 (derivativeStep!6105 lt!2671546 (head!15887 s!14904)) (tail!15428 s!14904)))))

(declare-fun b!7771791 () Bool)

(declare-fun res!3098010 () Bool)

(assert (=> b!7771791 (=> (not res!3098010) (not e!4604762))))

(declare-fun call!720289 () Bool)

(assert (=> b!7771791 (= res!3098010 (not call!720289))))

(declare-fun d!2344548 () Bool)

(declare-fun e!4604765 () Bool)

(assert (=> d!2344548 e!4604765))

(declare-fun c!1432425 () Bool)

(assert (=> d!2344548 (= c!1432425 (is-EmptyExpr!20760 lt!2671546))))

(declare-fun lt!2671579 () Bool)

(assert (=> d!2344548 (= lt!2671579 e!4604764)))

(declare-fun c!1432426 () Bool)

(assert (=> d!2344548 (= c!1432426 (isEmpty!42151 s!14904))))

(assert (=> d!2344548 (validRegex!11174 lt!2671546)))

(assert (=> d!2344548 (= (matchR!10222 lt!2671546 s!14904) lt!2671579)))

(declare-fun b!7771792 () Bool)

(assert (=> b!7771792 (= e!4604765 (= lt!2671579 call!720289))))

(declare-fun b!7771793 () Bool)

(declare-fun e!4604763 () Bool)

(assert (=> b!7771793 (= e!4604763 (not lt!2671579))))

(declare-fun b!7771794 () Bool)

(declare-fun nullable!9150 (Regex!20760) Bool)

(assert (=> b!7771794 (= e!4604764 (nullable!9150 lt!2671546))))

(declare-fun bm!720284 () Bool)

(assert (=> bm!720284 (= call!720289 (isEmpty!42151 s!14904))))

(declare-fun b!7771795 () Bool)

(assert (=> b!7771795 (= e!4604765 e!4604763)))

(declare-fun c!1432427 () Bool)

(assert (=> b!7771795 (= c!1432427 (is-EmptyLang!20760 lt!2671546))))

(declare-fun b!7771796 () Bool)

(declare-fun e!4604766 () Bool)

(assert (=> b!7771796 (= e!4604766 e!4604760)))

(declare-fun res!3098013 () Bool)

(assert (=> b!7771796 (=> res!3098013 e!4604760)))

(assert (=> b!7771796 (= res!3098013 call!720289)))

(declare-fun b!7771797 () Bool)

(declare-fun res!3098007 () Bool)

(declare-fun e!4604761 () Bool)

(assert (=> b!7771797 (=> res!3098007 e!4604761)))

(assert (=> b!7771797 (= res!3098007 e!4604762)))

(declare-fun res!3098009 () Bool)

(assert (=> b!7771797 (=> (not res!3098009) (not e!4604762))))

(assert (=> b!7771797 (= res!3098009 lt!2671579)))

(declare-fun b!7771798 () Bool)

(declare-fun res!3098011 () Bool)

(assert (=> b!7771798 (=> (not res!3098011) (not e!4604762))))

(assert (=> b!7771798 (= res!3098011 (isEmpty!42151 (tail!15428 s!14904)))))

(declare-fun b!7771799 () Bool)

(assert (=> b!7771799 (= e!4604761 e!4604766)))

(declare-fun res!3098014 () Bool)

(assert (=> b!7771799 (=> (not res!3098014) (not e!4604766))))

(assert (=> b!7771799 (= res!3098014 (not lt!2671579))))

(declare-fun b!7771800 () Bool)

(assert (=> b!7771800 (= e!4604760 (not (= (head!15887 s!14904) (c!1432417 lt!2671546))))))

(declare-fun b!7771801 () Bool)

(declare-fun res!3098008 () Bool)

(assert (=> b!7771801 (=> res!3098008 e!4604761)))

(assert (=> b!7771801 (= res!3098008 (not (is-ElementMatch!20760 lt!2671546)))))

(assert (=> b!7771801 (= e!4604763 e!4604761)))

(assert (= (and d!2344548 c!1432426) b!7771794))

(assert (= (and d!2344548 (not c!1432426)) b!7771790))

(assert (= (and d!2344548 c!1432425) b!7771792))

(assert (= (and d!2344548 (not c!1432425)) b!7771795))

(assert (= (and b!7771795 c!1432427) b!7771793))

(assert (= (and b!7771795 (not c!1432427)) b!7771801))

(assert (= (and b!7771801 (not res!3098008)) b!7771797))

(assert (= (and b!7771797 res!3098009) b!7771791))

(assert (= (and b!7771791 res!3098010) b!7771798))

(assert (= (and b!7771798 res!3098011) b!7771788))

(assert (= (and b!7771797 (not res!3098007)) b!7771799))

(assert (= (and b!7771799 res!3098014) b!7771796))

(assert (= (and b!7771796 (not res!3098013)) b!7771789))

(assert (= (and b!7771789 (not res!3098012)) b!7771800))

(assert (= (or b!7771792 b!7771791 b!7771796) bm!720284))

(declare-fun m!8225350 () Bool)

(assert (=> b!7771789 m!8225350))

(assert (=> b!7771789 m!8225350))

(declare-fun m!8225352 () Bool)

(assert (=> b!7771789 m!8225352))

(assert (=> bm!720284 m!8225292))

(assert (=> b!7771798 m!8225350))

(assert (=> b!7771798 m!8225350))

(assert (=> b!7771798 m!8225352))

(assert (=> d!2344548 m!8225292))

(assert (=> d!2344548 m!8225286))

(declare-fun m!8225354 () Bool)

(assert (=> b!7771800 m!8225354))

(assert (=> b!7771790 m!8225354))

(assert (=> b!7771790 m!8225354))

(declare-fun m!8225356 () Bool)

(assert (=> b!7771790 m!8225356))

(assert (=> b!7771790 m!8225350))

(assert (=> b!7771790 m!8225356))

(assert (=> b!7771790 m!8225350))

(declare-fun m!8225358 () Bool)

(assert (=> b!7771790 m!8225358))

(assert (=> b!7771788 m!8225354))

(declare-fun m!8225360 () Bool)

(assert (=> b!7771794 m!8225360))

(assert (=> b!7771718 d!2344548))

(declare-fun bm!720293 () Bool)

(declare-fun call!720299 () Bool)

(declare-fun c!1432443 () Bool)

(assert (=> bm!720293 (= call!720299 (validRegex!11174 (ite c!1432443 (regOne!42033 lt!2671546) (regTwo!42032 lt!2671546))))))

(declare-fun b!7771840 () Bool)

(declare-fun res!3098029 () Bool)

(declare-fun e!4604792 () Bool)

(assert (=> b!7771840 (=> (not res!3098029) (not e!4604792))))

(assert (=> b!7771840 (= res!3098029 call!720299)))

(declare-fun e!4604797 () Bool)

(assert (=> b!7771840 (= e!4604797 e!4604792)))

(declare-fun b!7771841 () Bool)

(declare-fun e!4604791 () Bool)

(assert (=> b!7771841 (= e!4604791 e!4604797)))

(assert (=> b!7771841 (= c!1432443 (is-Union!20760 lt!2671546))))

(declare-fun b!7771842 () Bool)

(declare-fun call!720300 () Bool)

(assert (=> b!7771842 (= e!4604792 call!720300)))

(declare-fun b!7771843 () Bool)

(declare-fun e!4604793 () Bool)

(declare-fun call!720298 () Bool)

(assert (=> b!7771843 (= e!4604793 call!720298)))

(declare-fun d!2344552 () Bool)

(declare-fun res!3098027 () Bool)

(declare-fun e!4604796 () Bool)

(assert (=> d!2344552 (=> res!3098027 e!4604796)))

(assert (=> d!2344552 (= res!3098027 (is-ElementMatch!20760 lt!2671546))))

(assert (=> d!2344552 (= (validRegex!11174 lt!2671546) e!4604796)))

(declare-fun b!7771844 () Bool)

(declare-fun e!4604794 () Bool)

(declare-fun e!4604795 () Bool)

(assert (=> b!7771844 (= e!4604794 e!4604795)))

(declare-fun res!3098026 () Bool)

(assert (=> b!7771844 (=> (not res!3098026) (not e!4604795))))

(assert (=> b!7771844 (= res!3098026 call!720300)))

(declare-fun bm!720294 () Bool)

(assert (=> bm!720294 (= call!720300 call!720298)))

(declare-fun b!7771845 () Bool)

(declare-fun res!3098025 () Bool)

(assert (=> b!7771845 (=> res!3098025 e!4604794)))

(assert (=> b!7771845 (= res!3098025 (not (is-Concat!29605 lt!2671546)))))

(assert (=> b!7771845 (= e!4604797 e!4604794)))

(declare-fun bm!720295 () Bool)

(declare-fun c!1432442 () Bool)

(assert (=> bm!720295 (= call!720298 (validRegex!11174 (ite c!1432442 (reg!21089 lt!2671546) (ite c!1432443 (regTwo!42033 lt!2671546) (regOne!42032 lt!2671546)))))))

(declare-fun b!7771846 () Bool)

(assert (=> b!7771846 (= e!4604795 call!720299)))

(declare-fun b!7771847 () Bool)

(assert (=> b!7771847 (= e!4604796 e!4604791)))

(assert (=> b!7771847 (= c!1432442 (is-Star!20760 lt!2671546))))

(declare-fun b!7771848 () Bool)

(assert (=> b!7771848 (= e!4604791 e!4604793)))

(declare-fun res!3098028 () Bool)

(assert (=> b!7771848 (= res!3098028 (not (nullable!9150 (reg!21089 lt!2671546))))))

(assert (=> b!7771848 (=> (not res!3098028) (not e!4604793))))

(assert (= (and d!2344552 (not res!3098027)) b!7771847))

(assert (= (and b!7771847 c!1432442) b!7771848))

(assert (= (and b!7771847 (not c!1432442)) b!7771841))

(assert (= (and b!7771848 res!3098028) b!7771843))

(assert (= (and b!7771841 c!1432443) b!7771840))

(assert (= (and b!7771841 (not c!1432443)) b!7771845))

(assert (= (and b!7771840 res!3098029) b!7771842))

(assert (= (and b!7771845 (not res!3098025)) b!7771844))

(assert (= (and b!7771844 res!3098026) b!7771846))

(assert (= (or b!7771842 b!7771844) bm!720294))

(assert (= (or b!7771840 b!7771846) bm!720293))

(assert (= (or b!7771843 bm!720294) bm!720295))

(declare-fun m!8225362 () Bool)

(assert (=> bm!720293 m!8225362))

(declare-fun m!8225364 () Bool)

(assert (=> bm!720295 m!8225364))

(declare-fun m!8225366 () Bool)

(assert (=> b!7771848 m!8225366))

(assert (=> start!740084 d!2344552))

(declare-fun b!7771849 () Bool)

(declare-fun e!4604800 () Bool)

(assert (=> b!7771849 (= e!4604800 (= (head!15887 lt!2671547) (c!1432417 r!25924)))))

(declare-fun b!7771850 () Bool)

(declare-fun res!3098035 () Bool)

(declare-fun e!4604798 () Bool)

(assert (=> b!7771850 (=> res!3098035 e!4604798)))

(assert (=> b!7771850 (= res!3098035 (not (isEmpty!42151 (tail!15428 lt!2671547))))))

(declare-fun b!7771851 () Bool)

(declare-fun e!4604802 () Bool)

(assert (=> b!7771851 (= e!4604802 (matchR!10222 (derivativeStep!6105 r!25924 (head!15887 lt!2671547)) (tail!15428 lt!2671547)))))

(declare-fun b!7771852 () Bool)

(declare-fun res!3098033 () Bool)

(assert (=> b!7771852 (=> (not res!3098033) (not e!4604800))))

(declare-fun call!720303 () Bool)

(assert (=> b!7771852 (= res!3098033 (not call!720303))))

(declare-fun d!2344554 () Bool)

(declare-fun e!4604803 () Bool)

(assert (=> d!2344554 e!4604803))

(declare-fun c!1432444 () Bool)

(assert (=> d!2344554 (= c!1432444 (is-EmptyExpr!20760 r!25924))))

(declare-fun lt!2671582 () Bool)

(assert (=> d!2344554 (= lt!2671582 e!4604802)))

(declare-fun c!1432445 () Bool)

(assert (=> d!2344554 (= c!1432445 (isEmpty!42151 lt!2671547))))

(assert (=> d!2344554 (validRegex!11174 r!25924)))

(assert (=> d!2344554 (= (matchR!10222 r!25924 lt!2671547) lt!2671582)))

(declare-fun b!7771853 () Bool)

(assert (=> b!7771853 (= e!4604803 (= lt!2671582 call!720303))))

(declare-fun b!7771854 () Bool)

(declare-fun e!4604801 () Bool)

(assert (=> b!7771854 (= e!4604801 (not lt!2671582))))

(declare-fun b!7771855 () Bool)

(assert (=> b!7771855 (= e!4604802 (nullable!9150 r!25924))))

(declare-fun bm!720298 () Bool)

(assert (=> bm!720298 (= call!720303 (isEmpty!42151 lt!2671547))))

(declare-fun b!7771856 () Bool)

(assert (=> b!7771856 (= e!4604803 e!4604801)))

(declare-fun c!1432446 () Bool)

(assert (=> b!7771856 (= c!1432446 (is-EmptyLang!20760 r!25924))))

(declare-fun b!7771857 () Bool)

(declare-fun e!4604804 () Bool)

(assert (=> b!7771857 (= e!4604804 e!4604798)))

(declare-fun res!3098036 () Bool)

(assert (=> b!7771857 (=> res!3098036 e!4604798)))

(assert (=> b!7771857 (= res!3098036 call!720303)))

(declare-fun b!7771858 () Bool)

(declare-fun res!3098030 () Bool)

(declare-fun e!4604799 () Bool)

(assert (=> b!7771858 (=> res!3098030 e!4604799)))

(assert (=> b!7771858 (= res!3098030 e!4604800)))

(declare-fun res!3098032 () Bool)

(assert (=> b!7771858 (=> (not res!3098032) (not e!4604800))))

(assert (=> b!7771858 (= res!3098032 lt!2671582)))

(declare-fun b!7771859 () Bool)

(declare-fun res!3098034 () Bool)

(assert (=> b!7771859 (=> (not res!3098034) (not e!4604800))))

(assert (=> b!7771859 (= res!3098034 (isEmpty!42151 (tail!15428 lt!2671547)))))

(declare-fun b!7771860 () Bool)

(assert (=> b!7771860 (= e!4604799 e!4604804)))

(declare-fun res!3098037 () Bool)

(assert (=> b!7771860 (=> (not res!3098037) (not e!4604804))))

(assert (=> b!7771860 (= res!3098037 (not lt!2671582))))

(declare-fun b!7771861 () Bool)

(assert (=> b!7771861 (= e!4604798 (not (= (head!15887 lt!2671547) (c!1432417 r!25924))))))

(declare-fun b!7771862 () Bool)

(declare-fun res!3098031 () Bool)

(assert (=> b!7771862 (=> res!3098031 e!4604799)))

(assert (=> b!7771862 (= res!3098031 (not (is-ElementMatch!20760 r!25924)))))

(assert (=> b!7771862 (= e!4604801 e!4604799)))

(assert (= (and d!2344554 c!1432445) b!7771855))

(assert (= (and d!2344554 (not c!1432445)) b!7771851))

(assert (= (and d!2344554 c!1432444) b!7771853))

(assert (= (and d!2344554 (not c!1432444)) b!7771856))

(assert (= (and b!7771856 c!1432446) b!7771854))

(assert (= (and b!7771856 (not c!1432446)) b!7771862))

(assert (= (and b!7771862 (not res!3098031)) b!7771858))

(assert (= (and b!7771858 res!3098032) b!7771852))

(assert (= (and b!7771852 res!3098033) b!7771859))

(assert (= (and b!7771859 res!3098034) b!7771849))

(assert (= (and b!7771858 (not res!3098030)) b!7771860))

(assert (= (and b!7771860 res!3098037) b!7771857))

(assert (= (and b!7771857 (not res!3098036)) b!7771850))

(assert (= (and b!7771850 (not res!3098035)) b!7771861))

(assert (= (or b!7771853 b!7771852 b!7771857) bm!720298))

(declare-fun m!8225368 () Bool)

(assert (=> b!7771850 m!8225368))

(assert (=> b!7771850 m!8225368))

(declare-fun m!8225370 () Bool)

(assert (=> b!7771850 m!8225370))

(declare-fun m!8225372 () Bool)

(assert (=> bm!720298 m!8225372))

(assert (=> b!7771859 m!8225368))

(assert (=> b!7771859 m!8225368))

(assert (=> b!7771859 m!8225370))

(assert (=> d!2344554 m!8225372))

(assert (=> d!2344554 m!8225314))

(declare-fun m!8225374 () Bool)

(assert (=> b!7771861 m!8225374))

(assert (=> b!7771851 m!8225374))

(assert (=> b!7771851 m!8225374))

(declare-fun m!8225376 () Bool)

(assert (=> b!7771851 m!8225376))

(assert (=> b!7771851 m!8225368))

(assert (=> b!7771851 m!8225376))

(assert (=> b!7771851 m!8225368))

(declare-fun m!8225378 () Bool)

(assert (=> b!7771851 m!8225378))

(assert (=> b!7771849 m!8225374))

(declare-fun m!8225380 () Bool)

(assert (=> b!7771855 m!8225380))

(assert (=> b!7771712 d!2344554))

(declare-fun d!2344556 () Bool)

(assert (=> d!2344556 (= (isEmpty!42151 s!14904) (is-Nil!73477 s!14904))))

(assert (=> b!7771709 d!2344556))

(declare-fun e!4604807 () Bool)

(declare-fun b!7771863 () Bool)

(assert (=> b!7771863 (= e!4604807 (= (head!15887 (++!17904 lt!2671547 (_2!38234 lt!2671552))) (c!1432417 lt!2671548)))))

(declare-fun b!7771864 () Bool)

(declare-fun res!3098043 () Bool)

(declare-fun e!4604805 () Bool)

(assert (=> b!7771864 (=> res!3098043 e!4604805)))

(assert (=> b!7771864 (= res!3098043 (not (isEmpty!42151 (tail!15428 (++!17904 lt!2671547 (_2!38234 lt!2671552))))))))

(declare-fun b!7771865 () Bool)

(declare-fun e!4604809 () Bool)

(assert (=> b!7771865 (= e!4604809 (matchR!10222 (derivativeStep!6105 lt!2671548 (head!15887 (++!17904 lt!2671547 (_2!38234 lt!2671552)))) (tail!15428 (++!17904 lt!2671547 (_2!38234 lt!2671552)))))))

(declare-fun b!7771866 () Bool)

(declare-fun res!3098041 () Bool)

(assert (=> b!7771866 (=> (not res!3098041) (not e!4604807))))

(declare-fun call!720308 () Bool)

(assert (=> b!7771866 (= res!3098041 (not call!720308))))

(declare-fun d!2344558 () Bool)

(declare-fun e!4604810 () Bool)

(assert (=> d!2344558 e!4604810))

(declare-fun c!1432447 () Bool)

(assert (=> d!2344558 (= c!1432447 (is-EmptyExpr!20760 lt!2671548))))

(declare-fun lt!2671583 () Bool)

(assert (=> d!2344558 (= lt!2671583 e!4604809)))

(declare-fun c!1432448 () Bool)

(assert (=> d!2344558 (= c!1432448 (isEmpty!42151 (++!17904 lt!2671547 (_2!38234 lt!2671552))))))

(assert (=> d!2344558 (validRegex!11174 lt!2671548)))

(assert (=> d!2344558 (= (matchR!10222 lt!2671548 (++!17904 lt!2671547 (_2!38234 lt!2671552))) lt!2671583)))

(declare-fun b!7771867 () Bool)

(assert (=> b!7771867 (= e!4604810 (= lt!2671583 call!720308))))

(declare-fun b!7771868 () Bool)

(declare-fun e!4604808 () Bool)

(assert (=> b!7771868 (= e!4604808 (not lt!2671583))))

(declare-fun b!7771869 () Bool)

(assert (=> b!7771869 (= e!4604809 (nullable!9150 lt!2671548))))

(declare-fun bm!720301 () Bool)

(assert (=> bm!720301 (= call!720308 (isEmpty!42151 (++!17904 lt!2671547 (_2!38234 lt!2671552))))))

(declare-fun b!7771870 () Bool)

(assert (=> b!7771870 (= e!4604810 e!4604808)))

(declare-fun c!1432449 () Bool)

(assert (=> b!7771870 (= c!1432449 (is-EmptyLang!20760 lt!2671548))))

(declare-fun b!7771871 () Bool)

(declare-fun e!4604811 () Bool)

(assert (=> b!7771871 (= e!4604811 e!4604805)))

(declare-fun res!3098044 () Bool)

(assert (=> b!7771871 (=> res!3098044 e!4604805)))

(assert (=> b!7771871 (= res!3098044 call!720308)))

(declare-fun b!7771872 () Bool)

(declare-fun res!3098038 () Bool)

(declare-fun e!4604806 () Bool)

(assert (=> b!7771872 (=> res!3098038 e!4604806)))

(assert (=> b!7771872 (= res!3098038 e!4604807)))

(declare-fun res!3098040 () Bool)

(assert (=> b!7771872 (=> (not res!3098040) (not e!4604807))))

(assert (=> b!7771872 (= res!3098040 lt!2671583)))

(declare-fun b!7771873 () Bool)

(declare-fun res!3098042 () Bool)

(assert (=> b!7771873 (=> (not res!3098042) (not e!4604807))))

(assert (=> b!7771873 (= res!3098042 (isEmpty!42151 (tail!15428 (++!17904 lt!2671547 (_2!38234 lt!2671552)))))))

(declare-fun b!7771874 () Bool)

(assert (=> b!7771874 (= e!4604806 e!4604811)))

(declare-fun res!3098045 () Bool)

(assert (=> b!7771874 (=> (not res!3098045) (not e!4604811))))

(assert (=> b!7771874 (= res!3098045 (not lt!2671583))))

(declare-fun b!7771875 () Bool)

(assert (=> b!7771875 (= e!4604805 (not (= (head!15887 (++!17904 lt!2671547 (_2!38234 lt!2671552))) (c!1432417 lt!2671548))))))

(declare-fun b!7771876 () Bool)

(declare-fun res!3098039 () Bool)

(assert (=> b!7771876 (=> res!3098039 e!4604806)))

(assert (=> b!7771876 (= res!3098039 (not (is-ElementMatch!20760 lt!2671548)))))

(assert (=> b!7771876 (= e!4604808 e!4604806)))

(assert (= (and d!2344558 c!1432448) b!7771869))

(assert (= (and d!2344558 (not c!1432448)) b!7771865))

(assert (= (and d!2344558 c!1432447) b!7771867))

(assert (= (and d!2344558 (not c!1432447)) b!7771870))

(assert (= (and b!7771870 c!1432449) b!7771868))

(assert (= (and b!7771870 (not c!1432449)) b!7771876))

(assert (= (and b!7771876 (not res!3098039)) b!7771872))

(assert (= (and b!7771872 res!3098040) b!7771866))

(assert (= (and b!7771866 res!3098041) b!7771873))

(assert (= (and b!7771873 res!3098042) b!7771863))

(assert (= (and b!7771872 (not res!3098038)) b!7771874))

(assert (= (and b!7771874 res!3098045) b!7771871))

(assert (= (and b!7771871 (not res!3098044)) b!7771864))

(assert (= (and b!7771864 (not res!3098043)) b!7771875))

(assert (= (or b!7771867 b!7771866 b!7771871) bm!720301))

(assert (=> b!7771864 m!8225294))

(declare-fun m!8225382 () Bool)

(assert (=> b!7771864 m!8225382))

(assert (=> b!7771864 m!8225382))

(declare-fun m!8225384 () Bool)

(assert (=> b!7771864 m!8225384))

(assert (=> bm!720301 m!8225294))

(declare-fun m!8225386 () Bool)

(assert (=> bm!720301 m!8225386))

(assert (=> b!7771873 m!8225294))

(assert (=> b!7771873 m!8225382))

(assert (=> b!7771873 m!8225382))

(assert (=> b!7771873 m!8225384))

(assert (=> d!2344558 m!8225294))

(assert (=> d!2344558 m!8225386))

(declare-fun m!8225388 () Bool)

(assert (=> d!2344558 m!8225388))

(assert (=> b!7771875 m!8225294))

(declare-fun m!8225390 () Bool)

(assert (=> b!7771875 m!8225390))

(assert (=> b!7771865 m!8225294))

(assert (=> b!7771865 m!8225390))

(assert (=> b!7771865 m!8225390))

(declare-fun m!8225392 () Bool)

(assert (=> b!7771865 m!8225392))

(assert (=> b!7771865 m!8225294))

(assert (=> b!7771865 m!8225382))

(assert (=> b!7771865 m!8225392))

(assert (=> b!7771865 m!8225382))

(declare-fun m!8225394 () Bool)

(assert (=> b!7771865 m!8225394))

(assert (=> b!7771863 m!8225294))

(assert (=> b!7771863 m!8225390))

(declare-fun m!8225396 () Bool)

(assert (=> b!7771869 m!8225396))

(assert (=> b!7771709 d!2344558))

(declare-fun lt!2671586 () List!73601)

(declare-fun b!7771888 () Bool)

(declare-fun e!4604817 () Bool)

(assert (=> b!7771888 (= e!4604817 (or (not (= (_2!38234 lt!2671552) Nil!73477)) (= lt!2671586 lt!2671547)))))

(declare-fun b!7771885 () Bool)

(declare-fun e!4604816 () List!73601)

(assert (=> b!7771885 (= e!4604816 (_2!38234 lt!2671552))))

(declare-fun b!7771887 () Bool)

(declare-fun res!3098050 () Bool)

(assert (=> b!7771887 (=> (not res!3098050) (not e!4604817))))

(declare-fun size!42699 (List!73601) Int)

(assert (=> b!7771887 (= res!3098050 (= (size!42699 lt!2671586) (+ (size!42699 lt!2671547) (size!42699 (_2!38234 lt!2671552)))))))

(declare-fun d!2344560 () Bool)

(assert (=> d!2344560 e!4604817))

(declare-fun res!3098051 () Bool)

(assert (=> d!2344560 (=> (not res!3098051) (not e!4604817))))

(declare-fun content!15596 (List!73601) (Set C!41846))

(assert (=> d!2344560 (= res!3098051 (= (content!15596 lt!2671586) (set.union (content!15596 lt!2671547) (content!15596 (_2!38234 lt!2671552)))))))

(assert (=> d!2344560 (= lt!2671586 e!4604816)))

(declare-fun c!1432452 () Bool)

(assert (=> d!2344560 (= c!1432452 (is-Nil!73477 lt!2671547))))

(assert (=> d!2344560 (= (++!17904 lt!2671547 (_2!38234 lt!2671552)) lt!2671586)))

(declare-fun b!7771886 () Bool)

(assert (=> b!7771886 (= e!4604816 (Cons!73477 (h!79925 lt!2671547) (++!17904 (t!388336 lt!2671547) (_2!38234 lt!2671552))))))

(assert (= (and d!2344560 c!1432452) b!7771885))

(assert (= (and d!2344560 (not c!1432452)) b!7771886))

(assert (= (and d!2344560 res!3098051) b!7771887))

(assert (= (and b!7771887 res!3098050) b!7771888))

(declare-fun m!8225398 () Bool)

(assert (=> b!7771887 m!8225398))

(declare-fun m!8225400 () Bool)

(assert (=> b!7771887 m!8225400))

(declare-fun m!8225402 () Bool)

(assert (=> b!7771887 m!8225402))

(declare-fun m!8225404 () Bool)

(assert (=> d!2344560 m!8225404))

(declare-fun m!8225406 () Bool)

(assert (=> d!2344560 m!8225406))

(declare-fun m!8225408 () Bool)

(assert (=> d!2344560 m!8225408))

(declare-fun m!8225410 () Bool)

(assert (=> b!7771886 m!8225410))

(assert (=> b!7771709 d!2344560))

(declare-fun d!2344562 () Bool)

(assert (=> d!2344562 (matchR!10222 (Concat!29605 r!25924 lt!2671546) (++!17904 lt!2671547 (_2!38234 lt!2671552)))))

(declare-fun lt!2671590 () Unit!168458)

(declare-fun choose!59476 (Regex!20760 Regex!20760 List!73601 List!73601) Unit!168458)

(assert (=> d!2344562 (= lt!2671590 (choose!59476 r!25924 lt!2671546 lt!2671547 (_2!38234 lt!2671552)))))

(declare-fun e!4604825 () Bool)

(assert (=> d!2344562 e!4604825))

(declare-fun res!3098054 () Bool)

(assert (=> d!2344562 (=> (not res!3098054) (not e!4604825))))

(assert (=> d!2344562 (= res!3098054 (validRegex!11174 r!25924))))

(assert (=> d!2344562 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!421 r!25924 lt!2671546 lt!2671547 (_2!38234 lt!2671552)) lt!2671590)))

(declare-fun b!7771901 () Bool)

(assert (=> b!7771901 (= e!4604825 (validRegex!11174 lt!2671546))))

(assert (= (and d!2344562 res!3098054) b!7771901))

(assert (=> d!2344562 m!8225294))

(assert (=> d!2344562 m!8225294))

(declare-fun m!8225412 () Bool)

(assert (=> d!2344562 m!8225412))

(declare-fun m!8225414 () Bool)

(assert (=> d!2344562 m!8225414))

(assert (=> d!2344562 m!8225314))

(assert (=> b!7771901 m!8225286))

(assert (=> b!7771709 d!2344562))

(declare-fun b!7771902 () Bool)

(declare-fun e!4604828 () Bool)

(assert (=> b!7771902 (= e!4604828 (= (head!15887 s!14904) (c!1432417 lt!2671548)))))

(declare-fun b!7771903 () Bool)

(declare-fun res!3098060 () Bool)

(declare-fun e!4604826 () Bool)

(assert (=> b!7771903 (=> res!3098060 e!4604826)))

(assert (=> b!7771903 (= res!3098060 (not (isEmpty!42151 (tail!15428 s!14904))))))

(declare-fun b!7771904 () Bool)

(declare-fun e!4604830 () Bool)

(assert (=> b!7771904 (= e!4604830 (matchR!10222 (derivativeStep!6105 lt!2671548 (head!15887 s!14904)) (tail!15428 s!14904)))))

(declare-fun b!7771905 () Bool)

(declare-fun res!3098058 () Bool)

(assert (=> b!7771905 (=> (not res!3098058) (not e!4604828))))

(declare-fun call!720313 () Bool)

(assert (=> b!7771905 (= res!3098058 (not call!720313))))

(declare-fun d!2344564 () Bool)

(declare-fun e!4604831 () Bool)

(assert (=> d!2344564 e!4604831))

(declare-fun c!1432458 () Bool)

(assert (=> d!2344564 (= c!1432458 (is-EmptyExpr!20760 lt!2671548))))

(declare-fun lt!2671591 () Bool)

(assert (=> d!2344564 (= lt!2671591 e!4604830)))

(declare-fun c!1432459 () Bool)

(assert (=> d!2344564 (= c!1432459 (isEmpty!42151 s!14904))))

(assert (=> d!2344564 (validRegex!11174 lt!2671548)))

(assert (=> d!2344564 (= (matchR!10222 lt!2671548 s!14904) lt!2671591)))

(declare-fun b!7771906 () Bool)

(assert (=> b!7771906 (= e!4604831 (= lt!2671591 call!720313))))

(declare-fun b!7771907 () Bool)

(declare-fun e!4604829 () Bool)

(assert (=> b!7771907 (= e!4604829 (not lt!2671591))))

(declare-fun b!7771908 () Bool)

(assert (=> b!7771908 (= e!4604830 (nullable!9150 lt!2671548))))

(declare-fun bm!720308 () Bool)

(assert (=> bm!720308 (= call!720313 (isEmpty!42151 s!14904))))

(declare-fun b!7771909 () Bool)

(assert (=> b!7771909 (= e!4604831 e!4604829)))

(declare-fun c!1432460 () Bool)

(assert (=> b!7771909 (= c!1432460 (is-EmptyLang!20760 lt!2671548))))

(declare-fun b!7771910 () Bool)

(declare-fun e!4604832 () Bool)

(assert (=> b!7771910 (= e!4604832 e!4604826)))

(declare-fun res!3098061 () Bool)

(assert (=> b!7771910 (=> res!3098061 e!4604826)))

(assert (=> b!7771910 (= res!3098061 call!720313)))

(declare-fun b!7771911 () Bool)

(declare-fun res!3098055 () Bool)

(declare-fun e!4604827 () Bool)

(assert (=> b!7771911 (=> res!3098055 e!4604827)))

(assert (=> b!7771911 (= res!3098055 e!4604828)))

(declare-fun res!3098057 () Bool)

(assert (=> b!7771911 (=> (not res!3098057) (not e!4604828))))

(assert (=> b!7771911 (= res!3098057 lt!2671591)))

(declare-fun b!7771912 () Bool)

(declare-fun res!3098059 () Bool)

(assert (=> b!7771912 (=> (not res!3098059) (not e!4604828))))

(assert (=> b!7771912 (= res!3098059 (isEmpty!42151 (tail!15428 s!14904)))))

(declare-fun b!7771913 () Bool)

(assert (=> b!7771913 (= e!4604827 e!4604832)))

(declare-fun res!3098062 () Bool)

(assert (=> b!7771913 (=> (not res!3098062) (not e!4604832))))

(assert (=> b!7771913 (= res!3098062 (not lt!2671591))))

(declare-fun b!7771914 () Bool)

(assert (=> b!7771914 (= e!4604826 (not (= (head!15887 s!14904) (c!1432417 lt!2671548))))))

(declare-fun b!7771915 () Bool)

(declare-fun res!3098056 () Bool)

(assert (=> b!7771915 (=> res!3098056 e!4604827)))

(assert (=> b!7771915 (= res!3098056 (not (is-ElementMatch!20760 lt!2671548)))))

(assert (=> b!7771915 (= e!4604829 e!4604827)))

(assert (= (and d!2344564 c!1432459) b!7771908))

(assert (= (and d!2344564 (not c!1432459)) b!7771904))

(assert (= (and d!2344564 c!1432458) b!7771906))

(assert (= (and d!2344564 (not c!1432458)) b!7771909))

(assert (= (and b!7771909 c!1432460) b!7771907))

(assert (= (and b!7771909 (not c!1432460)) b!7771915))

(assert (= (and b!7771915 (not res!3098056)) b!7771911))

(assert (= (and b!7771911 res!3098057) b!7771905))

(assert (= (and b!7771905 res!3098058) b!7771912))

(assert (= (and b!7771912 res!3098059) b!7771902))

(assert (= (and b!7771911 (not res!3098055)) b!7771913))

(assert (= (and b!7771913 res!3098062) b!7771910))

(assert (= (and b!7771910 (not res!3098061)) b!7771903))

(assert (= (and b!7771903 (not res!3098060)) b!7771914))

(assert (= (or b!7771906 b!7771905 b!7771910) bm!720308))

(assert (=> b!7771903 m!8225350))

(assert (=> b!7771903 m!8225350))

(assert (=> b!7771903 m!8225352))

(assert (=> bm!720308 m!8225292))

(assert (=> b!7771912 m!8225350))

(assert (=> b!7771912 m!8225350))

(assert (=> b!7771912 m!8225352))

(assert (=> d!2344564 m!8225292))

(assert (=> d!2344564 m!8225388))

(assert (=> b!7771914 m!8225354))

(assert (=> b!7771904 m!8225354))

(assert (=> b!7771904 m!8225354))

(declare-fun m!8225424 () Bool)

(assert (=> b!7771904 m!8225424))

(assert (=> b!7771904 m!8225350))

(assert (=> b!7771904 m!8225424))

(assert (=> b!7771904 m!8225350))

(declare-fun m!8225426 () Bool)

(assert (=> b!7771904 m!8225426))

(assert (=> b!7771902 m!8225354))

(assert (=> b!7771908 m!8225396))

(assert (=> b!7771708 d!2344564))

(declare-fun bm!720312 () Bool)

(declare-fun call!720319 () Bool)

(declare-fun c!1432467 () Bool)

(assert (=> bm!720312 (= call!720319 (validRegex!11174 (ite c!1432467 (regOne!42033 r!25924) (regTwo!42032 r!25924))))))

(declare-fun b!7771924 () Bool)

(declare-fun res!3098067 () Bool)

(declare-fun e!4604838 () Bool)

(assert (=> b!7771924 (=> (not res!3098067) (not e!4604838))))

(assert (=> b!7771924 (= res!3098067 call!720319)))

(declare-fun e!4604844 () Bool)

(assert (=> b!7771924 (= e!4604844 e!4604838)))

(declare-fun b!7771926 () Bool)

(declare-fun e!4604836 () Bool)

(assert (=> b!7771926 (= e!4604836 e!4604844)))

(assert (=> b!7771926 (= c!1432467 (is-Union!20760 r!25924))))

(declare-fun b!7771927 () Bool)

(declare-fun call!720320 () Bool)

(assert (=> b!7771927 (= e!4604838 call!720320)))

(declare-fun b!7771929 () Bool)

(declare-fun e!4604840 () Bool)

(declare-fun call!720317 () Bool)

(assert (=> b!7771929 (= e!4604840 call!720317)))

(declare-fun d!2344568 () Bool)

(declare-fun res!3098065 () Bool)

(declare-fun e!4604843 () Bool)

(assert (=> d!2344568 (=> res!3098065 e!4604843)))

(assert (=> d!2344568 (= res!3098065 (is-ElementMatch!20760 r!25924))))

(assert (=> d!2344568 (= (validRegex!11174 r!25924) e!4604843)))

(declare-fun b!7771930 () Bool)

(declare-fun e!4604841 () Bool)

(declare-fun e!4604842 () Bool)

(assert (=> b!7771930 (= e!4604841 e!4604842)))

(declare-fun res!3098064 () Bool)

(assert (=> b!7771930 (=> (not res!3098064) (not e!4604842))))

(assert (=> b!7771930 (= res!3098064 call!720320)))

(declare-fun bm!720314 () Bool)

(assert (=> bm!720314 (= call!720320 call!720317)))

(declare-fun b!7771931 () Bool)

(declare-fun res!3098063 () Bool)

(assert (=> b!7771931 (=> res!3098063 e!4604841)))

(assert (=> b!7771931 (= res!3098063 (not (is-Concat!29605 r!25924)))))

(assert (=> b!7771931 (= e!4604844 e!4604841)))

(declare-fun c!1432464 () Bool)

(declare-fun bm!720315 () Bool)

(assert (=> bm!720315 (= call!720317 (validRegex!11174 (ite c!1432464 (reg!21089 r!25924) (ite c!1432467 (regTwo!42033 r!25924) (regOne!42032 r!25924)))))))

(declare-fun b!7771932 () Bool)

(assert (=> b!7771932 (= e!4604842 call!720319)))

(declare-fun b!7771933 () Bool)

(assert (=> b!7771933 (= e!4604843 e!4604836)))

(assert (=> b!7771933 (= c!1432464 (is-Star!20760 r!25924))))

(declare-fun b!7771934 () Bool)

(assert (=> b!7771934 (= e!4604836 e!4604840)))

(declare-fun res!3098066 () Bool)

(assert (=> b!7771934 (= res!3098066 (not (nullable!9150 (reg!21089 r!25924))))))

(assert (=> b!7771934 (=> (not res!3098066) (not e!4604840))))

(assert (= (and d!2344568 (not res!3098065)) b!7771933))

(assert (= (and b!7771933 c!1432464) b!7771934))

(assert (= (and b!7771933 (not c!1432464)) b!7771926))

(assert (= (and b!7771934 res!3098066) b!7771929))

(assert (= (and b!7771926 c!1432467) b!7771924))

(assert (= (and b!7771926 (not c!1432467)) b!7771931))

(assert (= (and b!7771924 res!3098067) b!7771927))

(assert (= (and b!7771931 (not res!3098063)) b!7771930))

(assert (= (and b!7771930 res!3098064) b!7771932))

(assert (= (or b!7771927 b!7771930) bm!720314))

(assert (= (or b!7771924 b!7771932) bm!720312))

(assert (= (or b!7771929 bm!720314) bm!720315))

(declare-fun m!8225428 () Bool)

(assert (=> bm!720312 m!8225428))

(declare-fun m!8225430 () Bool)

(assert (=> bm!720315 m!8225430))

(declare-fun m!8225432 () Bool)

(assert (=> b!7771934 m!8225432))

(assert (=> b!7771715 d!2344568))

(declare-fun d!2344570 () Bool)

(declare-fun isEmpty!42153 (Option!17725) Bool)

(assert (=> d!2344570 (= (isDefined!14337 lt!2671550) (not (isEmpty!42153 lt!2671550)))))

(declare-fun bs!1966124 () Bool)

(assert (= bs!1966124 d!2344570))

(declare-fun m!8225434 () Bool)

(assert (=> bs!1966124 m!8225434))

(assert (=> b!7771715 d!2344570))

(declare-fun b!7771979 () Bool)

(declare-fun e!4604871 () Option!17725)

(assert (=> b!7771979 (= e!4604871 (Some!17724 (tuple2!69863 Nil!73477 (t!388336 s!14904))))))

(declare-fun d!2344572 () Bool)

(declare-fun e!4604873 () Bool)

(assert (=> d!2344572 e!4604873))

(declare-fun res!3098094 () Bool)

(assert (=> d!2344572 (=> res!3098094 e!4604873)))

(declare-fun e!4604869 () Bool)

(assert (=> d!2344572 (= res!3098094 e!4604869)))

(declare-fun res!3098093 () Bool)

(assert (=> d!2344572 (=> (not res!3098093) (not e!4604869))))

(declare-fun lt!2671603 () Option!17725)

(assert (=> d!2344572 (= res!3098093 (isDefined!14337 lt!2671603))))

(assert (=> d!2344572 (= lt!2671603 e!4604871)))

(declare-fun c!1432479 () Bool)

(declare-fun e!4604872 () Bool)

(assert (=> d!2344572 (= c!1432479 e!4604872)))

(declare-fun res!3098095 () Bool)

(assert (=> d!2344572 (=> (not res!3098095) (not e!4604872))))

(assert (=> d!2344572 (= res!3098095 (matchR!10222 lt!2671549 Nil!73477))))

(assert (=> d!2344572 (validRegex!11174 lt!2671549)))

(assert (=> d!2344572 (= (findConcatSeparation!3755 lt!2671549 lt!2671546 Nil!73477 (t!388336 s!14904) (t!388336 s!14904)) lt!2671603)))

(declare-fun b!7771980 () Bool)

(declare-fun res!3098090 () Bool)

(assert (=> b!7771980 (=> (not res!3098090) (not e!4604869))))

(assert (=> b!7771980 (= res!3098090 (matchR!10222 lt!2671546 (_2!38234 (get!26240 lt!2671603))))))

(declare-fun b!7771981 () Bool)

(declare-fun lt!2671601 () Unit!168458)

(declare-fun lt!2671602 () Unit!168458)

(assert (=> b!7771981 (= lt!2671601 lt!2671602)))

(assert (=> b!7771981 (= (++!17904 (++!17904 Nil!73477 (Cons!73477 (h!79925 (t!388336 s!14904)) Nil!73477)) (t!388336 (t!388336 s!14904))) (t!388336 s!14904))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3388 (List!73601 C!41846 List!73601 List!73601) Unit!168458)

(assert (=> b!7771981 (= lt!2671602 (lemmaMoveElementToOtherListKeepsConcatEq!3388 Nil!73477 (h!79925 (t!388336 s!14904)) (t!388336 (t!388336 s!14904)) (t!388336 s!14904)))))

(declare-fun e!4604870 () Option!17725)

(assert (=> b!7771981 (= e!4604870 (findConcatSeparation!3755 lt!2671549 lt!2671546 (++!17904 Nil!73477 (Cons!73477 (h!79925 (t!388336 s!14904)) Nil!73477)) (t!388336 (t!388336 s!14904)) (t!388336 s!14904)))))

(declare-fun b!7771982 () Bool)

(assert (=> b!7771982 (= e!4604871 e!4604870)))

(declare-fun c!1432478 () Bool)

(assert (=> b!7771982 (= c!1432478 (is-Nil!73477 (t!388336 s!14904)))))

(declare-fun b!7771983 () Bool)

(assert (=> b!7771983 (= e!4604873 (not (isDefined!14337 lt!2671603)))))

(declare-fun b!7771984 () Bool)

(assert (=> b!7771984 (= e!4604869 (= (++!17904 (_1!38234 (get!26240 lt!2671603)) (_2!38234 (get!26240 lt!2671603))) (t!388336 s!14904)))))

(declare-fun b!7771985 () Bool)

(assert (=> b!7771985 (= e!4604872 (matchR!10222 lt!2671546 (t!388336 s!14904)))))

(declare-fun b!7771986 () Bool)

(declare-fun res!3098096 () Bool)

(assert (=> b!7771986 (=> (not res!3098096) (not e!4604869))))

(assert (=> b!7771986 (= res!3098096 (matchR!10222 lt!2671549 (_1!38234 (get!26240 lt!2671603))))))

(declare-fun b!7771987 () Bool)

(assert (=> b!7771987 (= e!4604870 None!17724)))

(assert (= (and d!2344572 res!3098095) b!7771985))

(assert (= (and d!2344572 c!1432479) b!7771979))

(assert (= (and d!2344572 (not c!1432479)) b!7771982))

(assert (= (and b!7771982 c!1432478) b!7771987))

(assert (= (and b!7771982 (not c!1432478)) b!7771981))

(assert (= (and d!2344572 res!3098093) b!7771986))

(assert (= (and b!7771986 res!3098096) b!7771980))

(assert (= (and b!7771980 res!3098090) b!7771984))

(assert (= (and d!2344572 (not res!3098094)) b!7771983))

(declare-fun m!8225444 () Bool)

(assert (=> b!7771984 m!8225444))

(declare-fun m!8225446 () Bool)

(assert (=> b!7771984 m!8225446))

(declare-fun m!8225448 () Bool)

(assert (=> b!7771981 m!8225448))

(assert (=> b!7771981 m!8225448))

(declare-fun m!8225450 () Bool)

(assert (=> b!7771981 m!8225450))

(declare-fun m!8225452 () Bool)

(assert (=> b!7771981 m!8225452))

(assert (=> b!7771981 m!8225448))

(declare-fun m!8225454 () Bool)

(assert (=> b!7771981 m!8225454))

(assert (=> b!7771986 m!8225444))

(declare-fun m!8225456 () Bool)

(assert (=> b!7771986 m!8225456))

(declare-fun m!8225458 () Bool)

(assert (=> b!7771983 m!8225458))

(assert (=> b!7771980 m!8225444))

(declare-fun m!8225460 () Bool)

(assert (=> b!7771980 m!8225460))

(declare-fun m!8225462 () Bool)

(assert (=> b!7771985 m!8225462))

(assert (=> d!2344572 m!8225458))

(declare-fun m!8225464 () Bool)

(assert (=> d!2344572 m!8225464))

(declare-fun m!8225466 () Bool)

(assert (=> d!2344572 m!8225466))

(assert (=> b!7771715 d!2344572))

(declare-fun d!2344576 () Bool)

(assert (=> d!2344576 (= (get!26240 lt!2671550) (v!54859 lt!2671550))))

(assert (=> b!7771715 d!2344576))

(declare-fun d!2344578 () Bool)

(assert (=> d!2344578 (isDefined!14337 (findConcatSeparation!3755 lt!2671549 lt!2671546 Nil!73477 (t!388336 s!14904) (t!388336 s!14904)))))

(declare-fun lt!2671606 () Unit!168458)

(declare-fun choose!59477 (Regex!20760 Regex!20760 List!73601) Unit!168458)

(assert (=> d!2344578 (= lt!2671606 (choose!59477 lt!2671549 lt!2671546 (t!388336 s!14904)))))

(assert (=> d!2344578 (validRegex!11174 lt!2671549)))

(assert (=> d!2344578 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!345 lt!2671549 lt!2671546 (t!388336 s!14904)) lt!2671606)))

(declare-fun bs!1966125 () Bool)

(assert (= bs!1966125 d!2344578))

(assert (=> bs!1966125 m!8225312))

(assert (=> bs!1966125 m!8225312))

(declare-fun m!8225468 () Bool)

(assert (=> bs!1966125 m!8225468))

(declare-fun m!8225470 () Bool)

(assert (=> bs!1966125 m!8225470))

(assert (=> bs!1966125 m!8225466))

(assert (=> b!7771715 d!2344578))

(declare-fun b!7771990 () Bool)

(declare-fun e!4604876 () Bool)

(assert (=> b!7771990 (= e!4604876 (= (head!15887 (_2!38234 lt!2671552)) (c!1432417 lt!2671546)))))

(declare-fun b!7771991 () Bool)

(declare-fun res!3098104 () Bool)

(declare-fun e!4604874 () Bool)

(assert (=> b!7771991 (=> res!3098104 e!4604874)))

(assert (=> b!7771991 (= res!3098104 (not (isEmpty!42151 (tail!15428 (_2!38234 lt!2671552)))))))

(declare-fun b!7771992 () Bool)

(declare-fun e!4604878 () Bool)

(assert (=> b!7771992 (= e!4604878 (matchR!10222 (derivativeStep!6105 lt!2671546 (head!15887 (_2!38234 lt!2671552))) (tail!15428 (_2!38234 lt!2671552))))))

(declare-fun b!7771993 () Bool)

(declare-fun res!3098102 () Bool)

(assert (=> b!7771993 (=> (not res!3098102) (not e!4604876))))

(declare-fun call!720323 () Bool)

(assert (=> b!7771993 (= res!3098102 (not call!720323))))

(declare-fun d!2344580 () Bool)

(declare-fun e!4604879 () Bool)

(assert (=> d!2344580 e!4604879))

(declare-fun c!1432480 () Bool)

(assert (=> d!2344580 (= c!1432480 (is-EmptyExpr!20760 lt!2671546))))

(declare-fun lt!2671607 () Bool)

(assert (=> d!2344580 (= lt!2671607 e!4604878)))

(declare-fun c!1432481 () Bool)

(assert (=> d!2344580 (= c!1432481 (isEmpty!42151 (_2!38234 lt!2671552)))))

(assert (=> d!2344580 (validRegex!11174 lt!2671546)))

(assert (=> d!2344580 (= (matchR!10222 lt!2671546 (_2!38234 lt!2671552)) lt!2671607)))

(declare-fun b!7771994 () Bool)

(assert (=> b!7771994 (= e!4604879 (= lt!2671607 call!720323))))

(declare-fun b!7771995 () Bool)

(declare-fun e!4604877 () Bool)

(assert (=> b!7771995 (= e!4604877 (not lt!2671607))))

(declare-fun b!7771996 () Bool)

(assert (=> b!7771996 (= e!4604878 (nullable!9150 lt!2671546))))

(declare-fun bm!720318 () Bool)

(assert (=> bm!720318 (= call!720323 (isEmpty!42151 (_2!38234 lt!2671552)))))

(declare-fun b!7771997 () Bool)

(assert (=> b!7771997 (= e!4604879 e!4604877)))

(declare-fun c!1432482 () Bool)

(assert (=> b!7771997 (= c!1432482 (is-EmptyLang!20760 lt!2671546))))

(declare-fun b!7771998 () Bool)

(declare-fun e!4604880 () Bool)

(assert (=> b!7771998 (= e!4604880 e!4604874)))

(declare-fun res!3098105 () Bool)

(assert (=> b!7771998 (=> res!3098105 e!4604874)))

(assert (=> b!7771998 (= res!3098105 call!720323)))

(declare-fun b!7771999 () Bool)

(declare-fun res!3098099 () Bool)

(declare-fun e!4604875 () Bool)

(assert (=> b!7771999 (=> res!3098099 e!4604875)))

(assert (=> b!7771999 (= res!3098099 e!4604876)))

(declare-fun res!3098101 () Bool)

(assert (=> b!7771999 (=> (not res!3098101) (not e!4604876))))

(assert (=> b!7771999 (= res!3098101 lt!2671607)))

(declare-fun b!7772000 () Bool)

(declare-fun res!3098103 () Bool)

(assert (=> b!7772000 (=> (not res!3098103) (not e!4604876))))

(assert (=> b!7772000 (= res!3098103 (isEmpty!42151 (tail!15428 (_2!38234 lt!2671552))))))

(declare-fun b!7772001 () Bool)

(assert (=> b!7772001 (= e!4604875 e!4604880)))

(declare-fun res!3098106 () Bool)

(assert (=> b!7772001 (=> (not res!3098106) (not e!4604880))))

(assert (=> b!7772001 (= res!3098106 (not lt!2671607))))

(declare-fun b!7772002 () Bool)

(assert (=> b!7772002 (= e!4604874 (not (= (head!15887 (_2!38234 lt!2671552)) (c!1432417 lt!2671546))))))

(declare-fun b!7772003 () Bool)

(declare-fun res!3098100 () Bool)

(assert (=> b!7772003 (=> res!3098100 e!4604875)))

(assert (=> b!7772003 (= res!3098100 (not (is-ElementMatch!20760 lt!2671546)))))

(assert (=> b!7772003 (= e!4604877 e!4604875)))

(assert (= (and d!2344580 c!1432481) b!7771996))

(assert (= (and d!2344580 (not c!1432481)) b!7771992))

(assert (= (and d!2344580 c!1432480) b!7771994))

(assert (= (and d!2344580 (not c!1432480)) b!7771997))

(assert (= (and b!7771997 c!1432482) b!7771995))

(assert (= (and b!7771997 (not c!1432482)) b!7772003))

(assert (= (and b!7772003 (not res!3098100)) b!7771999))

(assert (= (and b!7771999 res!3098101) b!7771993))

(assert (= (and b!7771993 res!3098102) b!7772000))

(assert (= (and b!7772000 res!3098103) b!7771990))

(assert (= (and b!7771999 (not res!3098099)) b!7772001))

(assert (= (and b!7772001 res!3098106) b!7771998))

(assert (= (and b!7771998 (not res!3098105)) b!7771991))

(assert (= (and b!7771991 (not res!3098104)) b!7772002))

(assert (= (or b!7771994 b!7771993 b!7771998) bm!720318))

(declare-fun m!8225472 () Bool)

(assert (=> b!7771991 m!8225472))

(assert (=> b!7771991 m!8225472))

(declare-fun m!8225474 () Bool)

(assert (=> b!7771991 m!8225474))

(declare-fun m!8225476 () Bool)

(assert (=> bm!720318 m!8225476))

(assert (=> b!7772000 m!8225472))

(assert (=> b!7772000 m!8225472))

(assert (=> b!7772000 m!8225474))

(assert (=> d!2344580 m!8225476))

(assert (=> d!2344580 m!8225286))

(declare-fun m!8225478 () Bool)

(assert (=> b!7772002 m!8225478))

(assert (=> b!7771992 m!8225478))

(assert (=> b!7771992 m!8225478))

(declare-fun m!8225480 () Bool)

(assert (=> b!7771992 m!8225480))

(assert (=> b!7771992 m!8225472))

(assert (=> b!7771992 m!8225480))

(assert (=> b!7771992 m!8225472))

(declare-fun m!8225482 () Bool)

(assert (=> b!7771992 m!8225482))

(assert (=> b!7771990 m!8225478))

(assert (=> b!7771996 m!8225360))

(assert (=> b!7771720 d!2344580))

(declare-fun bm!720329 () Bool)

(declare-fun call!720336 () Regex!20760)

(declare-fun call!720337 () Regex!20760)

(assert (=> bm!720329 (= call!720336 call!720337)))

(declare-fun bm!720330 () Bool)

(declare-fun call!720334 () Regex!20760)

(assert (=> bm!720330 (= call!720337 call!720334)))

(declare-fun b!7772053 () Bool)

(declare-fun e!4604908 () Regex!20760)

(assert (=> b!7772053 (= e!4604908 (Concat!29605 call!720337 lt!2671546))))

(declare-fun bm!720331 () Bool)

(declare-fun c!1432503 () Bool)

(declare-fun c!1432502 () Bool)

(assert (=> bm!720331 (= call!720334 (derivativeStep!6105 (ite c!1432502 (regOne!42033 lt!2671546) (ite c!1432503 (reg!21089 lt!2671546) (regOne!42032 lt!2671546))) (h!79925 s!14904)))))

(declare-fun b!7772054 () Bool)

(declare-fun c!1432499 () Bool)

(assert (=> b!7772054 (= c!1432499 (nullable!9150 (regOne!42032 lt!2671546)))))

(declare-fun e!4604905 () Regex!20760)

(assert (=> b!7772054 (= e!4604908 e!4604905)))

(declare-fun bm!720332 () Bool)

(declare-fun call!720335 () Regex!20760)

(assert (=> bm!720332 (= call!720335 (derivativeStep!6105 (ite c!1432502 (regTwo!42033 lt!2671546) (regTwo!42032 lt!2671546)) (h!79925 s!14904)))))

(declare-fun b!7772055 () Bool)

(declare-fun e!4604907 () Regex!20760)

(assert (=> b!7772055 (= e!4604907 (Union!20760 call!720334 call!720335))))

(declare-fun b!7772056 () Bool)

(declare-fun e!4604909 () Regex!20760)

(declare-fun e!4604906 () Regex!20760)

(assert (=> b!7772056 (= e!4604909 e!4604906)))

(declare-fun c!1432500 () Bool)

(assert (=> b!7772056 (= c!1432500 (is-ElementMatch!20760 lt!2671546))))

(declare-fun b!7772057 () Bool)

(assert (=> b!7772057 (= e!4604905 (Union!20760 (Concat!29605 call!720336 (regTwo!42032 lt!2671546)) call!720335))))

(declare-fun b!7772058 () Bool)

(assert (=> b!7772058 (= e!4604909 EmptyLang!20760)))

(declare-fun b!7772059 () Bool)

(assert (=> b!7772059 (= e!4604905 (Union!20760 (Concat!29605 call!720336 (regTwo!42032 lt!2671546)) EmptyLang!20760))))

(declare-fun d!2344582 () Bool)

(declare-fun lt!2671612 () Regex!20760)

(assert (=> d!2344582 (validRegex!11174 lt!2671612)))

(assert (=> d!2344582 (= lt!2671612 e!4604909)))

(declare-fun c!1432501 () Bool)

(assert (=> d!2344582 (= c!1432501 (or (is-EmptyExpr!20760 lt!2671546) (is-EmptyLang!20760 lt!2671546)))))

(assert (=> d!2344582 (validRegex!11174 lt!2671546)))

(assert (=> d!2344582 (= (derivativeStep!6105 lt!2671546 (h!79925 s!14904)) lt!2671612)))

(declare-fun b!7772052 () Bool)

(assert (=> b!7772052 (= c!1432502 (is-Union!20760 lt!2671546))))

(assert (=> b!7772052 (= e!4604906 e!4604907)))

(declare-fun b!7772060 () Bool)

(assert (=> b!7772060 (= e!4604906 (ite (= (h!79925 s!14904) (c!1432417 lt!2671546)) EmptyExpr!20760 EmptyLang!20760))))

(declare-fun b!7772061 () Bool)

(assert (=> b!7772061 (= e!4604907 e!4604908)))

(assert (=> b!7772061 (= c!1432503 (is-Star!20760 lt!2671546))))

(assert (= (and d!2344582 c!1432501) b!7772058))

(assert (= (and d!2344582 (not c!1432501)) b!7772056))

(assert (= (and b!7772056 c!1432500) b!7772060))

(assert (= (and b!7772056 (not c!1432500)) b!7772052))

(assert (= (and b!7772052 c!1432502) b!7772055))

(assert (= (and b!7772052 (not c!1432502)) b!7772061))

(assert (= (and b!7772061 c!1432503) b!7772053))

(assert (= (and b!7772061 (not c!1432503)) b!7772054))

(assert (= (and b!7772054 c!1432499) b!7772057))

(assert (= (and b!7772054 (not c!1432499)) b!7772059))

(assert (= (or b!7772057 b!7772059) bm!720329))

(assert (= (or b!7772053 bm!720329) bm!720330))

(assert (= (or b!7772055 b!7772057) bm!720332))

(assert (= (or b!7772055 bm!720330) bm!720331))

(declare-fun m!8225510 () Bool)

(assert (=> bm!720331 m!8225510))

(declare-fun m!8225512 () Bool)

(assert (=> b!7772054 m!8225512))

(declare-fun m!8225514 () Bool)

(assert (=> bm!720332 m!8225514))

(declare-fun m!8225516 () Bool)

(assert (=> d!2344582 m!8225516))

(assert (=> d!2344582 m!8225286))

(assert (=> b!7771716 d!2344582))

(declare-fun bm!720333 () Bool)

(declare-fun call!720340 () Regex!20760)

(declare-fun call!720341 () Regex!20760)

(assert (=> bm!720333 (= call!720340 call!720341)))

(declare-fun bm!720334 () Bool)

(declare-fun call!720338 () Regex!20760)

(assert (=> bm!720334 (= call!720341 call!720338)))

(declare-fun b!7772063 () Bool)

(declare-fun e!4604913 () Regex!20760)

(assert (=> b!7772063 (= e!4604913 (Concat!29605 call!720341 r!25924))))

(declare-fun bm!720335 () Bool)

(declare-fun c!1432508 () Bool)

(declare-fun c!1432507 () Bool)

(assert (=> bm!720335 (= call!720338 (derivativeStep!6105 (ite c!1432507 (regOne!42033 r!25924) (ite c!1432508 (reg!21089 r!25924) (regOne!42032 r!25924))) (h!79925 s!14904)))))

(declare-fun b!7772064 () Bool)

(declare-fun c!1432504 () Bool)

(assert (=> b!7772064 (= c!1432504 (nullable!9150 (regOne!42032 r!25924)))))

(declare-fun e!4604910 () Regex!20760)

(assert (=> b!7772064 (= e!4604913 e!4604910)))

(declare-fun call!720339 () Regex!20760)

(declare-fun bm!720336 () Bool)

(assert (=> bm!720336 (= call!720339 (derivativeStep!6105 (ite c!1432507 (regTwo!42033 r!25924) (regTwo!42032 r!25924)) (h!79925 s!14904)))))

(declare-fun b!7772065 () Bool)

(declare-fun e!4604912 () Regex!20760)

(assert (=> b!7772065 (= e!4604912 (Union!20760 call!720338 call!720339))))

(declare-fun b!7772066 () Bool)

(declare-fun e!4604914 () Regex!20760)

(declare-fun e!4604911 () Regex!20760)

(assert (=> b!7772066 (= e!4604914 e!4604911)))

(declare-fun c!1432505 () Bool)

(assert (=> b!7772066 (= c!1432505 (is-ElementMatch!20760 r!25924))))

(declare-fun b!7772067 () Bool)

(assert (=> b!7772067 (= e!4604910 (Union!20760 (Concat!29605 call!720340 (regTwo!42032 r!25924)) call!720339))))

(declare-fun b!7772068 () Bool)

(assert (=> b!7772068 (= e!4604914 EmptyLang!20760)))

(declare-fun b!7772069 () Bool)

(assert (=> b!7772069 (= e!4604910 (Union!20760 (Concat!29605 call!720340 (regTwo!42032 r!25924)) EmptyLang!20760))))

(declare-fun d!2344588 () Bool)

(declare-fun lt!2671613 () Regex!20760)

(assert (=> d!2344588 (validRegex!11174 lt!2671613)))

(assert (=> d!2344588 (= lt!2671613 e!4604914)))

(declare-fun c!1432506 () Bool)

(assert (=> d!2344588 (= c!1432506 (or (is-EmptyExpr!20760 r!25924) (is-EmptyLang!20760 r!25924)))))

(assert (=> d!2344588 (validRegex!11174 r!25924)))

(assert (=> d!2344588 (= (derivativeStep!6105 r!25924 (h!79925 s!14904)) lt!2671613)))

(declare-fun b!7772062 () Bool)

(assert (=> b!7772062 (= c!1432507 (is-Union!20760 r!25924))))

(assert (=> b!7772062 (= e!4604911 e!4604912)))

(declare-fun b!7772070 () Bool)

(assert (=> b!7772070 (= e!4604911 (ite (= (h!79925 s!14904) (c!1432417 r!25924)) EmptyExpr!20760 EmptyLang!20760))))

(declare-fun b!7772071 () Bool)

(assert (=> b!7772071 (= e!4604912 e!4604913)))

(assert (=> b!7772071 (= c!1432508 (is-Star!20760 r!25924))))

(assert (= (and d!2344588 c!1432506) b!7772068))

(assert (= (and d!2344588 (not c!1432506)) b!7772066))

(assert (= (and b!7772066 c!1432505) b!7772070))

(assert (= (and b!7772066 (not c!1432505)) b!7772062))

(assert (= (and b!7772062 c!1432507) b!7772065))

(assert (= (and b!7772062 (not c!1432507)) b!7772071))

(assert (= (and b!7772071 c!1432508) b!7772063))

(assert (= (and b!7772071 (not c!1432508)) b!7772064))

(assert (= (and b!7772064 c!1432504) b!7772067))

(assert (= (and b!7772064 (not c!1432504)) b!7772069))

(assert (= (or b!7772067 b!7772069) bm!720333))

(assert (= (or b!7772063 bm!720333) bm!720334))

(assert (= (or b!7772065 b!7772067) bm!720336))

(assert (= (or b!7772065 bm!720334) bm!720335))

(declare-fun m!8225518 () Bool)

(assert (=> bm!720335 m!8225518))

(declare-fun m!8225520 () Bool)

(assert (=> b!7772064 m!8225520))

(declare-fun m!8225522 () Bool)

(assert (=> bm!720336 m!8225522))

(declare-fun m!8225524 () Bool)

(assert (=> d!2344588 m!8225524))

(assert (=> d!2344588 m!8225314))

(assert (=> b!7771716 d!2344588))

(declare-fun e!4604919 () Bool)

(assert (=> b!7771713 (= tp!2283218 e!4604919)))

(declare-fun b!7772087 () Bool)

(declare-fun tp!2283249 () Bool)

(declare-fun tp!2283248 () Bool)

(assert (=> b!7772087 (= e!4604919 (and tp!2283249 tp!2283248))))

(declare-fun b!7772089 () Bool)

(declare-fun tp!2283251 () Bool)

(declare-fun tp!2283250 () Bool)

(assert (=> b!7772089 (= e!4604919 (and tp!2283251 tp!2283250))))

(declare-fun b!7772088 () Bool)

(declare-fun tp!2283252 () Bool)

(assert (=> b!7772088 (= e!4604919 tp!2283252)))

(declare-fun b!7772086 () Bool)

(assert (=> b!7772086 (= e!4604919 tp_is_empty!51875)))

(assert (= (and b!7771713 (is-ElementMatch!20760 (reg!21089 r!25924))) b!7772086))

(assert (= (and b!7771713 (is-Concat!29605 (reg!21089 r!25924))) b!7772087))

(assert (= (and b!7771713 (is-Star!20760 (reg!21089 r!25924))) b!7772088))

(assert (= (and b!7771713 (is-Union!20760 (reg!21089 r!25924))) b!7772089))

(declare-fun b!7772104 () Bool)

(declare-fun e!4604930 () Bool)

(declare-fun tp!2283255 () Bool)

(assert (=> b!7772104 (= e!4604930 (and tp_is_empty!51875 tp!2283255))))

(assert (=> b!7771714 (= tp!2283215 e!4604930)))

(assert (= (and b!7771714 (is-Cons!73477 (t!388336 s!14904))) b!7772104))

(declare-fun e!4604933 () Bool)

(assert (=> b!7771710 (= tp!2283216 e!4604933)))

(declare-fun b!7772108 () Bool)

(declare-fun tp!2283257 () Bool)

(declare-fun tp!2283256 () Bool)

(assert (=> b!7772108 (= e!4604933 (and tp!2283257 tp!2283256))))

(declare-fun b!7772110 () Bool)

(declare-fun tp!2283259 () Bool)

(declare-fun tp!2283258 () Bool)

(assert (=> b!7772110 (= e!4604933 (and tp!2283259 tp!2283258))))

(declare-fun b!7772109 () Bool)

(declare-fun tp!2283260 () Bool)

(assert (=> b!7772109 (= e!4604933 tp!2283260)))

(declare-fun b!7772107 () Bool)

(assert (=> b!7772107 (= e!4604933 tp_is_empty!51875)))

(assert (= (and b!7771710 (is-ElementMatch!20760 (regOne!42032 r!25924))) b!7772107))

(assert (= (and b!7771710 (is-Concat!29605 (regOne!42032 r!25924))) b!7772108))

(assert (= (and b!7771710 (is-Star!20760 (regOne!42032 r!25924))) b!7772109))

(assert (= (and b!7771710 (is-Union!20760 (regOne!42032 r!25924))) b!7772110))

(declare-fun e!4604936 () Bool)

(assert (=> b!7771710 (= tp!2283214 e!4604936)))

(declare-fun b!7772114 () Bool)

(declare-fun tp!2283262 () Bool)

(declare-fun tp!2283261 () Bool)

(assert (=> b!7772114 (= e!4604936 (and tp!2283262 tp!2283261))))

(declare-fun b!7772116 () Bool)

(declare-fun tp!2283264 () Bool)

(declare-fun tp!2283263 () Bool)

(assert (=> b!7772116 (= e!4604936 (and tp!2283264 tp!2283263))))

(declare-fun b!7772115 () Bool)

(declare-fun tp!2283265 () Bool)

(assert (=> b!7772115 (= e!4604936 tp!2283265)))

(declare-fun b!7772113 () Bool)

(assert (=> b!7772113 (= e!4604936 tp_is_empty!51875)))

(assert (= (and b!7771710 (is-ElementMatch!20760 (regTwo!42032 r!25924))) b!7772113))

(assert (= (and b!7771710 (is-Concat!29605 (regTwo!42032 r!25924))) b!7772114))

(assert (= (and b!7771710 (is-Star!20760 (regTwo!42032 r!25924))) b!7772115))

(assert (= (and b!7771710 (is-Union!20760 (regTwo!42032 r!25924))) b!7772116))

(declare-fun e!4604937 () Bool)

(assert (=> b!7771711 (= tp!2283219 e!4604937)))

(declare-fun b!7772118 () Bool)

(declare-fun tp!2283267 () Bool)

(declare-fun tp!2283266 () Bool)

(assert (=> b!7772118 (= e!4604937 (and tp!2283267 tp!2283266))))

(declare-fun b!7772120 () Bool)

(declare-fun tp!2283269 () Bool)

(declare-fun tp!2283268 () Bool)

(assert (=> b!7772120 (= e!4604937 (and tp!2283269 tp!2283268))))

(declare-fun b!7772119 () Bool)

(declare-fun tp!2283270 () Bool)

(assert (=> b!7772119 (= e!4604937 tp!2283270)))

(declare-fun b!7772117 () Bool)

(assert (=> b!7772117 (= e!4604937 tp_is_empty!51875)))

(assert (= (and b!7771711 (is-ElementMatch!20760 (regOne!42033 r!25924))) b!7772117))

(assert (= (and b!7771711 (is-Concat!29605 (regOne!42033 r!25924))) b!7772118))

(assert (= (and b!7771711 (is-Star!20760 (regOne!42033 r!25924))) b!7772119))

(assert (= (and b!7771711 (is-Union!20760 (regOne!42033 r!25924))) b!7772120))

(declare-fun e!4604938 () Bool)

(assert (=> b!7771711 (= tp!2283217 e!4604938)))

(declare-fun b!7772122 () Bool)

(declare-fun tp!2283272 () Bool)

(declare-fun tp!2283271 () Bool)

(assert (=> b!7772122 (= e!4604938 (and tp!2283272 tp!2283271))))

(declare-fun b!7772124 () Bool)

(declare-fun tp!2283274 () Bool)

(declare-fun tp!2283273 () Bool)

(assert (=> b!7772124 (= e!4604938 (and tp!2283274 tp!2283273))))

(declare-fun b!7772123 () Bool)

(declare-fun tp!2283275 () Bool)

(assert (=> b!7772123 (= e!4604938 tp!2283275)))

(declare-fun b!7772121 () Bool)

(assert (=> b!7772121 (= e!4604938 tp_is_empty!51875)))

(assert (= (and b!7771711 (is-ElementMatch!20760 (regTwo!42033 r!25924))) b!7772121))

(assert (= (and b!7771711 (is-Concat!29605 (regTwo!42033 r!25924))) b!7772122))

(assert (= (and b!7771711 (is-Star!20760 (regTwo!42033 r!25924))) b!7772123))

(assert (= (and b!7771711 (is-Union!20760 (regTwo!42033 r!25924))) b!7772124))

(push 1)

(assert (not d!2344588))

(assert (not b!7772115))

(assert (not bm!720336))

(assert (not b!7771800))

(assert (not b!7772119))

(assert (not b!7771869))

(assert (not bm!720331))

(assert (not d!2344548))

(assert (not b!7772002))

(assert (not b!7771887))

(assert (not b!7772120))

(assert (not b!7772054))

(assert (not b!7772104))

(assert (not b!7772000))

(assert (not b!7771875))

(assert (not bm!720315))

(assert (not d!2344580))

(assert tp_is_empty!51875)

(assert (not b!7771848))

(assert (not b!7771863))

(assert (not d!2344578))

(assert (not b!7772114))

(assert (not b!7771788))

(assert (not b!7771794))

(assert (not b!7771859))

(assert (not b!7771983))

(assert (not b!7772064))

(assert (not bm!720293))

(assert (not b!7771865))

(assert (not b!7771903))

(assert (not b!7772088))

(assert (not b!7772089))

(assert (not b!7771850))

(assert (not bm!720335))

(assert (not bm!720284))

(assert (not d!2344560))

(assert (not bm!720312))

(assert (not b!7771992))

(assert (not b!7771996))

(assert (not bm!720301))

(assert (not d!2344562))

(assert (not b!7771981))

(assert (not d!2344558))

(assert (not b!7772087))

(assert (not bm!720298))

(assert (not b!7771790))

(assert (not b!7772108))

(assert (not d!2344564))

(assert (not b!7771901))

(assert (not b!7771986))

(assert (not b!7772118))

(assert (not b!7771855))

(assert (not d!2344554))

(assert (not b!7771985))

(assert (not b!7771798))

(assert (not b!7772110))

(assert (not b!7771990))

(assert (not b!7771984))

(assert (not b!7771886))

(assert (not b!7771980))

(assert (not b!7771851))

(assert (not b!7772122))

(assert (not b!7771861))

(assert (not b!7772109))

(assert (not b!7771864))

(assert (not b!7771873))

(assert (not bm!720332))

(assert (not d!2344582))

(assert (not bm!720318))

(assert (not bm!720295))

(assert (not b!7771849))

(assert (not b!7771934))

(assert (not b!7771902))

(assert (not b!7772123))

(assert (not b!7771914))

(assert (not b!7772116))

(assert (not b!7771908))

(assert (not b!7772124))

(assert (not b!7771912))

(assert (not b!7771904))

(assert (not d!2344572))

(assert (not bm!720308))

(assert (not b!7771789))

(assert (not b!7771991))

(assert (not d!2344570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

