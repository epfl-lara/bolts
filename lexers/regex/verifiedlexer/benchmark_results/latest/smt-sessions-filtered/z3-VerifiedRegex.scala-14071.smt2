; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741970 () Bool)

(assert start!741970)

(declare-fun b!7820077 () Bool)

(declare-fun e!4626877 () Bool)

(declare-fun e!4626880 () Bool)

(assert (=> b!7820077 (= e!4626877 e!4626880)))

(declare-fun res!3112683 () Bool)

(assert (=> b!7820077 (=> (not res!3112683) (not e!4626880))))

(declare-datatypes ((C!42200 0))(
  ( (C!42201 (val!31540 Int)) )
))
(declare-datatypes ((List!73774 0))(
  ( (Nil!73650) (Cons!73650 (h!80098 C!42200) (t!388509 List!73774)) )
))
(declare-fun lt!2676210 () List!73774)

(declare-fun s!14274 () List!73774)

(assert (=> b!7820077 (= res!3112683 (= lt!2676210 s!14274))))

(declare-fun s1!4101 () List!73774)

(declare-fun s2!3721 () List!73774)

(declare-fun ++!17971 (List!73774 List!73774) List!73774)

(assert (=> b!7820077 (= lt!2676210 (++!17971 s1!4101 s2!3721))))

(declare-fun b!7820078 () Bool)

(declare-fun e!4626876 () Bool)

(declare-fun tp!2307794 () Bool)

(assert (=> b!7820078 (= e!4626876 tp!2307794)))

(declare-fun res!3112681 () Bool)

(assert (=> start!741970 (=> (not res!3112681) (not e!4626877))))

(declare-datatypes ((Regex!20937 0))(
  ( (ElementMatch!20937 (c!1439292 C!42200)) (Concat!29782 (regOne!42386 Regex!20937) (regTwo!42386 Regex!20937)) (EmptyExpr!20937) (Star!20937 (reg!21266 Regex!20937)) (EmptyLang!20937) (Union!20937 (regOne!42387 Regex!20937) (regTwo!42387 Regex!20937)) )
))
(declare-fun r1!6261 () Regex!20937)

(declare-fun validRegex!11351 (Regex!20937) Bool)

(assert (=> start!741970 (= res!3112681 (validRegex!11351 r1!6261))))

(assert (=> start!741970 e!4626877))

(declare-fun e!4626875 () Bool)

(assert (=> start!741970 e!4626875))

(declare-fun e!4626882 () Bool)

(assert (=> start!741970 e!4626882))

(declare-fun e!4626883 () Bool)

(assert (=> start!741970 e!4626883))

(declare-fun e!4626879 () Bool)

(assert (=> start!741970 e!4626879))

(declare-fun e!4626872 () Bool)

(assert (=> start!741970 e!4626872))

(assert (=> start!741970 e!4626876))

(declare-fun e!4626881 () Bool)

(assert (=> start!741970 e!4626881))

(declare-fun b!7820079 () Bool)

(declare-fun tp!2307797 () Bool)

(declare-fun tp!2307804 () Bool)

(assert (=> b!7820079 (= e!4626876 (and tp!2307797 tp!2307804))))

(declare-fun b!7820080 () Bool)

(declare-fun res!3112686 () Bool)

(declare-fun e!4626874 () Bool)

(assert (=> b!7820080 (=> (not res!3112686) (not e!4626874))))

(declare-fun r2!6199 () Regex!20937)

(declare-fun matchR!10393 (Regex!20937 List!73774) Bool)

(assert (=> b!7820080 (= res!3112686 (matchR!10393 r2!6199 s2!3721))))

(declare-fun b!7820081 () Bool)

(declare-fun tp!2307798 () Bool)

(assert (=> b!7820081 (= e!4626875 tp!2307798)))

(declare-fun b!7820082 () Bool)

(declare-datatypes ((Unit!168646 0))(
  ( (Unit!168647) )
))
(declare-fun e!4626873 () Unit!168646)

(declare-fun Unit!168648 () Unit!168646)

(assert (=> b!7820082 (= e!4626873 Unit!168648)))

(declare-fun b!7820083 () Bool)

(declare-fun Unit!168649 () Unit!168646)

(assert (=> b!7820083 (= e!4626873 Unit!168649)))

(declare-fun s1Rec!453 () List!73774)

(declare-fun lt!2676212 () Unit!168646)

(declare-fun s2Rec!453 () List!73774)

(declare-fun lemmaSamePrefixThenSameSuffix!2895 (List!73774 List!73774 List!73774 List!73774 List!73774) Unit!168646)

(assert (=> b!7820083 (= lt!2676212 (lemmaSamePrefixThenSameSuffix!2895 s1!4101 s2!3721 s1Rec!453 s2Rec!453 s!14274))))

(assert (=> b!7820083 false))

(declare-fun b!7820084 () Bool)

(assert (=> b!7820084 (= e!4626874 (not true))))

(declare-fun lt!2676213 () List!73774)

(assert (=> b!7820084 (= lt!2676213 (++!17971 s1Rec!453 s2Rec!453))))

(declare-fun lt!2676211 () Unit!168646)

(assert (=> b!7820084 (= lt!2676211 e!4626873)))

(declare-fun c!1439291 () Bool)

(assert (=> b!7820084 (= c!1439291 (= s1Rec!453 s1!4101))))

(declare-fun lt!2676216 () List!73774)

(declare-fun isPrefix!6287 (List!73774 List!73774) Bool)

(assert (=> b!7820084 (isPrefix!6287 s1Rec!453 lt!2676216)))

(declare-fun lt!2676214 () Unit!168646)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3751 (List!73774 List!73774) Unit!168646)

(assert (=> b!7820084 (= lt!2676214 (lemmaConcatTwoListThenFirstIsPrefix!3751 s1Rec!453 s2Rec!453))))

(assert (=> b!7820084 (isPrefix!6287 s1!4101 lt!2676210)))

(declare-fun lt!2676215 () Unit!168646)

(assert (=> b!7820084 (= lt!2676215 (lemmaConcatTwoListThenFirstIsPrefix!3751 s1!4101 s2!3721))))

(declare-fun b!7820085 () Bool)

(declare-fun tp_is_empty!52229 () Bool)

(declare-fun tp!2307799 () Bool)

(assert (=> b!7820085 (= e!4626879 (and tp_is_empty!52229 tp!2307799))))

(declare-fun b!7820086 () Bool)

(declare-fun tp!2307793 () Bool)

(declare-fun tp!2307806 () Bool)

(assert (=> b!7820086 (= e!4626876 (and tp!2307793 tp!2307806))))

(declare-fun b!7820087 () Bool)

(assert (=> b!7820087 (= e!4626880 e!4626874)))

(declare-fun res!3112687 () Bool)

(assert (=> b!7820087 (=> (not res!3112687) (not e!4626874))))

(assert (=> b!7820087 (= res!3112687 (= lt!2676216 s!14274))))

(assert (=> b!7820087 (= lt!2676216 (++!17971 s1Rec!453 s2Rec!453))))

(declare-fun b!7820088 () Bool)

(declare-fun tp!2307807 () Bool)

(declare-fun tp!2307802 () Bool)

(assert (=> b!7820088 (= e!4626875 (and tp!2307807 tp!2307802))))

(declare-fun b!7820089 () Bool)

(declare-fun tp!2307795 () Bool)

(assert (=> b!7820089 (= e!4626882 (and tp_is_empty!52229 tp!2307795))))

(declare-fun b!7820090 () Bool)

(declare-fun tp!2307803 () Bool)

(assert (=> b!7820090 (= e!4626883 (and tp_is_empty!52229 tp!2307803))))

(declare-fun b!7820091 () Bool)

(declare-fun res!3112679 () Bool)

(assert (=> b!7820091 (=> (not res!3112679) (not e!4626874))))

(get-info :version)

(assert (=> b!7820091 (= res!3112679 (not ((_ is Nil!73650) s2Rec!453)))))

(declare-fun b!7820092 () Bool)

(declare-fun res!3112684 () Bool)

(assert (=> b!7820092 (=> (not res!3112684) (not e!4626880))))

(assert (=> b!7820092 (= res!3112684 (isPrefix!6287 s1Rec!453 s1!4101))))

(declare-fun b!7820093 () Bool)

(declare-fun tp!2307805 () Bool)

(assert (=> b!7820093 (= e!4626881 (and tp_is_empty!52229 tp!2307805))))

(declare-fun b!7820094 () Bool)

(declare-fun tp!2307801 () Bool)

(assert (=> b!7820094 (= e!4626872 (and tp_is_empty!52229 tp!2307801))))

(declare-fun b!7820095 () Bool)

(declare-fun res!3112685 () Bool)

(assert (=> b!7820095 (=> (not res!3112685) (not e!4626877))))

(assert (=> b!7820095 (= res!3112685 (validRegex!11351 r2!6199))))

(declare-fun b!7820096 () Bool)

(declare-fun tp!2307796 () Bool)

(declare-fun tp!2307800 () Bool)

(assert (=> b!7820096 (= e!4626875 (and tp!2307796 tp!2307800))))

(declare-fun b!7820097 () Bool)

(declare-fun res!3112680 () Bool)

(assert (=> b!7820097 (=> (not res!3112680) (not e!4626874))))

(declare-fun e!4626878 () Bool)

(assert (=> b!7820097 (= res!3112680 e!4626878)))

(declare-fun res!3112688 () Bool)

(assert (=> b!7820097 (=> res!3112688 e!4626878)))

(assert (=> b!7820097 (= res!3112688 (not (matchR!10393 r1!6261 s1Rec!453)))))

(declare-fun b!7820098 () Bool)

(assert (=> b!7820098 (= e!4626878 (not (matchR!10393 r2!6199 s2Rec!453)))))

(declare-fun b!7820099 () Bool)

(assert (=> b!7820099 (= e!4626875 tp_is_empty!52229)))

(declare-fun b!7820100 () Bool)

(assert (=> b!7820100 (= e!4626876 tp_is_empty!52229)))

(declare-fun b!7820101 () Bool)

(declare-fun res!3112682 () Bool)

(assert (=> b!7820101 (=> (not res!3112682) (not e!4626874))))

(assert (=> b!7820101 (= res!3112682 (matchR!10393 r1!6261 s1!4101))))

(assert (= (and start!741970 res!3112681) b!7820095))

(assert (= (and b!7820095 res!3112685) b!7820077))

(assert (= (and b!7820077 res!3112683) b!7820092))

(assert (= (and b!7820092 res!3112684) b!7820087))

(assert (= (and b!7820087 res!3112687) b!7820101))

(assert (= (and b!7820101 res!3112682) b!7820080))

(assert (= (and b!7820080 res!3112686) b!7820097))

(assert (= (and b!7820097 (not res!3112688)) b!7820098))

(assert (= (and b!7820097 res!3112680) b!7820091))

(assert (= (and b!7820091 res!3112679) b!7820084))

(assert (= (and b!7820084 c!1439291) b!7820083))

(assert (= (and b!7820084 (not c!1439291)) b!7820082))

(assert (= (and start!741970 ((_ is ElementMatch!20937) r2!6199)) b!7820099))

(assert (= (and start!741970 ((_ is Concat!29782) r2!6199)) b!7820096))

(assert (= (and start!741970 ((_ is Star!20937) r2!6199)) b!7820081))

(assert (= (and start!741970 ((_ is Union!20937) r2!6199)) b!7820088))

(assert (= (and start!741970 ((_ is Cons!73650) s1!4101)) b!7820089))

(assert (= (and start!741970 ((_ is Cons!73650) s2!3721)) b!7820090))

(assert (= (and start!741970 ((_ is Cons!73650) s2Rec!453)) b!7820085))

(assert (= (and start!741970 ((_ is Cons!73650) s!14274)) b!7820094))

(assert (= (and start!741970 ((_ is ElementMatch!20937) r1!6261)) b!7820100))

(assert (= (and start!741970 ((_ is Concat!29782) r1!6261)) b!7820079))

(assert (= (and start!741970 ((_ is Star!20937) r1!6261)) b!7820078))

(assert (= (and start!741970 ((_ is Union!20937) r1!6261)) b!7820086))

(assert (= (and start!741970 ((_ is Cons!73650) s1Rec!453)) b!7820093))

(declare-fun m!8244710 () Bool)

(assert (=> b!7820083 m!8244710))

(declare-fun m!8244712 () Bool)

(assert (=> b!7820087 m!8244712))

(declare-fun m!8244714 () Bool)

(assert (=> b!7820095 m!8244714))

(declare-fun m!8244716 () Bool)

(assert (=> b!7820077 m!8244716))

(declare-fun m!8244718 () Bool)

(assert (=> b!7820098 m!8244718))

(declare-fun m!8244720 () Bool)

(assert (=> b!7820092 m!8244720))

(declare-fun m!8244722 () Bool)

(assert (=> b!7820097 m!8244722))

(declare-fun m!8244724 () Bool)

(assert (=> b!7820080 m!8244724))

(declare-fun m!8244726 () Bool)

(assert (=> b!7820101 m!8244726))

(declare-fun m!8244728 () Bool)

(assert (=> b!7820084 m!8244728))

(declare-fun m!8244730 () Bool)

(assert (=> b!7820084 m!8244730))

(declare-fun m!8244732 () Bool)

(assert (=> b!7820084 m!8244732))

(declare-fun m!8244734 () Bool)

(assert (=> b!7820084 m!8244734))

(assert (=> b!7820084 m!8244712))

(declare-fun m!8244736 () Bool)

(assert (=> start!741970 m!8244736))

(check-sat (not b!7820088) (not start!741970) tp_is_empty!52229 (not b!7820077) (not b!7820089) (not b!7820101) (not b!7820095) (not b!7820083) (not b!7820080) (not b!7820092) (not b!7820094) (not b!7820081) (not b!7820085) (not b!7820084) (not b!7820097) (not b!7820093) (not b!7820079) (not b!7820087) (not b!7820086) (not b!7820078) (not b!7820096) (not b!7820098) (not b!7820090))
(check-sat)
