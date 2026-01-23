; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742278 () Bool)

(assert start!742278)

(declare-fun b!7833996 () Bool)

(declare-fun e!4632666 () Bool)

(declare-fun tp!2317111 () Bool)

(assert (=> b!7833996 (= e!4632666 tp!2317111)))

(declare-fun b!7833997 () Bool)

(declare-fun tp_is_empty!52293 () Bool)

(assert (=> b!7833997 (= e!4632666 tp_is_empty!52293)))

(declare-fun b!7833998 () Bool)

(declare-fun e!4632663 () Bool)

(declare-fun tp!2317102 () Bool)

(assert (=> b!7833998 (= e!4632663 (and tp_is_empty!52293 tp!2317102))))

(declare-fun b!7833999 () Bool)

(declare-fun e!4632660 () Bool)

(declare-datatypes ((C!42264 0))(
  ( (C!42265 (val!31572 Int)) )
))
(declare-datatypes ((List!73806 0))(
  ( (Nil!73682) (Cons!73682 (h!80130 C!42264) (t!388541 List!73806)) )
))
(declare-fun s1!4101 () List!73806)

(declare-fun s1Rec!453 () List!73806)

(assert (=> b!7833999 (= e!4632660 (= s1!4101 s1Rec!453))))

(declare-fun b!7834000 () Bool)

(declare-fun res!3115922 () Bool)

(declare-fun e!4632659 () Bool)

(assert (=> b!7834000 (=> (not res!3115922) (not e!4632659))))

(declare-fun isPrefix!6319 (List!73806 List!73806) Bool)

(assert (=> b!7834000 (= res!3115922 (isPrefix!6319 s1Rec!453 s1!4101))))

(declare-fun b!7834001 () Bool)

(declare-fun e!4632661 () Bool)

(declare-fun tp!2317107 () Bool)

(assert (=> b!7834001 (= e!4632661 (and tp_is_empty!52293 tp!2317107))))

(declare-fun b!7834003 () Bool)

(declare-fun res!3115930 () Bool)

(assert (=> b!7834003 (=> res!3115930 e!4632660)))

(declare-fun s!14274 () List!73806)

(assert (=> b!7834003 (= res!3115930 (not (isPrefix!6319 s1Rec!453 s!14274)))))

(declare-fun b!7834004 () Bool)

(declare-fun res!3115923 () Bool)

(assert (=> b!7834004 (=> res!3115923 e!4632660)))

(assert (=> b!7834004 (= res!3115923 (not (isPrefix!6319 s1!4101 s!14274)))))

(declare-fun b!7834005 () Bool)

(declare-fun res!3115925 () Bool)

(declare-fun e!4632662 () Bool)

(assert (=> b!7834005 (=> (not res!3115925) (not e!4632662))))

(declare-fun s2Rec!453 () List!73806)

(get-info :version)

(assert (=> b!7834005 (= res!3115925 (not ((_ is Nil!73682) s2Rec!453)))))

(declare-fun b!7834006 () Bool)

(declare-fun e!4632667 () Bool)

(declare-fun tp!2317109 () Bool)

(declare-fun tp!2317100 () Bool)

(assert (=> b!7834006 (= e!4632667 (and tp!2317109 tp!2317100))))

(declare-fun b!7834007 () Bool)

(declare-fun res!3115928 () Bool)

(assert (=> b!7834007 (=> (not res!3115928) (not e!4632662))))

(declare-datatypes ((Regex!20969 0))(
  ( (ElementMatch!20969 (c!1440854 C!42264)) (Concat!29814 (regOne!42450 Regex!20969) (regTwo!42450 Regex!20969)) (EmptyExpr!20969) (Star!20969 (reg!21298 Regex!20969)) (EmptyLang!20969) (Union!20969 (regOne!42451 Regex!20969) (regTwo!42451 Regex!20969)) )
))
(declare-fun r1!6261 () Regex!20969)

(declare-fun matchR!10425 (Regex!20969 List!73806) Bool)

(assert (=> b!7834007 (= res!3115928 (matchR!10425 r1!6261 s1!4101))))

(declare-fun b!7834008 () Bool)

(declare-fun res!3115924 () Bool)

(declare-fun e!4632658 () Bool)

(assert (=> b!7834008 (=> (not res!3115924) (not e!4632658))))

(declare-fun r2!6199 () Regex!20969)

(declare-fun validRegex!11383 (Regex!20969) Bool)

(assert (=> b!7834008 (= res!3115924 (validRegex!11383 r2!6199))))

(declare-fun b!7834009 () Bool)

(declare-fun res!3115929 () Bool)

(assert (=> b!7834009 (=> (not res!3115929) (not e!4632662))))

(declare-fun e!4632664 () Bool)

(assert (=> b!7834009 (= res!3115929 e!4632664)))

(declare-fun res!3115932 () Bool)

(assert (=> b!7834009 (=> res!3115932 e!4632664)))

(assert (=> b!7834009 (= res!3115932 (not (matchR!10425 r1!6261 s1Rec!453)))))

(declare-fun b!7834010 () Bool)

(declare-fun e!4632668 () Bool)

(declare-fun tp!2317098 () Bool)

(assert (=> b!7834010 (= e!4632668 (and tp_is_empty!52293 tp!2317098))))

(declare-fun b!7834011 () Bool)

(assert (=> b!7834011 (= e!4632662 (not e!4632660))))

(declare-fun res!3115931 () Bool)

(assert (=> b!7834011 (=> res!3115931 e!4632660)))

(assert (=> b!7834011 (= res!3115931 (not (= s1Rec!453 s1!4101)))))

(declare-fun lt!2677154 () List!73806)

(assert (=> b!7834011 (isPrefix!6319 s1Rec!453 lt!2677154)))

(declare-datatypes ((Unit!168708 0))(
  ( (Unit!168709) )
))
(declare-fun lt!2677152 () Unit!168708)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3765 (List!73806 List!73806) Unit!168708)

(assert (=> b!7834011 (= lt!2677152 (lemmaConcatTwoListThenFirstIsPrefix!3765 s1Rec!453 s2Rec!453))))

(declare-fun lt!2677153 () List!73806)

(assert (=> b!7834011 (isPrefix!6319 s1!4101 lt!2677153)))

(declare-fun lt!2677151 () Unit!168708)

(declare-fun s2!3721 () List!73806)

(assert (=> b!7834011 (= lt!2677151 (lemmaConcatTwoListThenFirstIsPrefix!3765 s1!4101 s2!3721))))

(declare-fun b!7834012 () Bool)

(declare-fun e!4632665 () Bool)

(declare-fun tp!2317105 () Bool)

(assert (=> b!7834012 (= e!4632665 (and tp_is_empty!52293 tp!2317105))))

(declare-fun b!7834013 () Bool)

(assert (=> b!7834013 (= e!4632658 e!4632659)))

(declare-fun res!3115920 () Bool)

(assert (=> b!7834013 (=> (not res!3115920) (not e!4632659))))

(assert (=> b!7834013 (= res!3115920 (= lt!2677153 s!14274))))

(declare-fun ++!18003 (List!73806 List!73806) List!73806)

(assert (=> b!7834013 (= lt!2677153 (++!18003 s1!4101 s2!3721))))

(declare-fun b!7834014 () Bool)

(declare-fun tp!2317110 () Bool)

(assert (=> b!7834014 (= e!4632667 tp!2317110)))

(declare-fun b!7834015 () Bool)

(declare-fun e!4632669 () Bool)

(declare-fun tp!2317103 () Bool)

(assert (=> b!7834015 (= e!4632669 (and tp_is_empty!52293 tp!2317103))))

(declare-fun b!7834016 () Bool)

(assert (=> b!7834016 (= e!4632667 tp_is_empty!52293)))

(declare-fun b!7834017 () Bool)

(declare-fun tp!2317104 () Bool)

(declare-fun tp!2317099 () Bool)

(assert (=> b!7834017 (= e!4632666 (and tp!2317104 tp!2317099))))

(declare-fun b!7834018 () Bool)

(declare-fun res!3115921 () Bool)

(assert (=> b!7834018 (=> (not res!3115921) (not e!4632662))))

(assert (=> b!7834018 (= res!3115921 (matchR!10425 r2!6199 s2!3721))))

(declare-fun b!7834019 () Bool)

(assert (=> b!7834019 (= e!4632659 e!4632662)))

(declare-fun res!3115927 () Bool)

(assert (=> b!7834019 (=> (not res!3115927) (not e!4632662))))

(assert (=> b!7834019 (= res!3115927 (= lt!2677154 s!14274))))

(assert (=> b!7834019 (= lt!2677154 (++!18003 s1Rec!453 s2Rec!453))))

(declare-fun b!7834002 () Bool)

(assert (=> b!7834002 (= e!4632664 (not (matchR!10425 r2!6199 s2Rec!453)))))

(declare-fun res!3115926 () Bool)

(assert (=> start!742278 (=> (not res!3115926) (not e!4632658))))

(assert (=> start!742278 (= res!3115926 (validRegex!11383 r1!6261))))

(assert (=> start!742278 e!4632658))

(assert (=> start!742278 e!4632666))

(assert (=> start!742278 e!4632669))

(assert (=> start!742278 e!4632668))

(assert (=> start!742278 e!4632661))

(assert (=> start!742278 e!4632663))

(assert (=> start!742278 e!4632667))

(assert (=> start!742278 e!4632665))

(declare-fun b!7834020 () Bool)

(declare-fun tp!2317101 () Bool)

(declare-fun tp!2317106 () Bool)

(assert (=> b!7834020 (= e!4632667 (and tp!2317101 tp!2317106))))

(declare-fun b!7834021 () Bool)

(declare-fun tp!2317097 () Bool)

(declare-fun tp!2317108 () Bool)

(assert (=> b!7834021 (= e!4632666 (and tp!2317097 tp!2317108))))

(assert (= (and start!742278 res!3115926) b!7834008))

(assert (= (and b!7834008 res!3115924) b!7834013))

(assert (= (and b!7834013 res!3115920) b!7834000))

(assert (= (and b!7834000 res!3115922) b!7834019))

(assert (= (and b!7834019 res!3115927) b!7834007))

(assert (= (and b!7834007 res!3115928) b!7834018))

(assert (= (and b!7834018 res!3115921) b!7834009))

(assert (= (and b!7834009 (not res!3115932)) b!7834002))

(assert (= (and b!7834009 res!3115929) b!7834005))

(assert (= (and b!7834005 res!3115925) b!7834011))

(assert (= (and b!7834011 (not res!3115931)) b!7834004))

(assert (= (and b!7834004 (not res!3115923)) b!7834003))

(assert (= (and b!7834003 (not res!3115930)) b!7833999))

(assert (= (and start!742278 ((_ is ElementMatch!20969) r2!6199)) b!7833997))

(assert (= (and start!742278 ((_ is Concat!29814) r2!6199)) b!7834021))

(assert (= (and start!742278 ((_ is Star!20969) r2!6199)) b!7833996))

(assert (= (and start!742278 ((_ is Union!20969) r2!6199)) b!7834017))

(assert (= (and start!742278 ((_ is Cons!73682) s1!4101)) b!7834015))

(assert (= (and start!742278 ((_ is Cons!73682) s2!3721)) b!7834010))

(assert (= (and start!742278 ((_ is Cons!73682) s2Rec!453)) b!7834001))

(assert (= (and start!742278 ((_ is Cons!73682) s!14274)) b!7833998))

(assert (= (and start!742278 ((_ is ElementMatch!20969) r1!6261)) b!7834016))

(assert (= (and start!742278 ((_ is Concat!29814) r1!6261)) b!7834006))

(assert (= (and start!742278 ((_ is Star!20969) r1!6261)) b!7834014))

(assert (= (and start!742278 ((_ is Union!20969) r1!6261)) b!7834020))

(assert (= (and start!742278 ((_ is Cons!73682) s1Rec!453)) b!7834012))

(declare-fun m!8249864 () Bool)

(assert (=> b!7834003 m!8249864))

(declare-fun m!8249866 () Bool)

(assert (=> b!7834013 m!8249866))

(declare-fun m!8249868 () Bool)

(assert (=> b!7834018 m!8249868))

(declare-fun m!8249870 () Bool)

(assert (=> b!7834011 m!8249870))

(declare-fun m!8249872 () Bool)

(assert (=> b!7834011 m!8249872))

(declare-fun m!8249874 () Bool)

(assert (=> b!7834011 m!8249874))

(declare-fun m!8249876 () Bool)

(assert (=> b!7834011 m!8249876))

(declare-fun m!8249878 () Bool)

(assert (=> b!7834002 m!8249878))

(declare-fun m!8249880 () Bool)

(assert (=> b!7834000 m!8249880))

(declare-fun m!8249882 () Bool)

(assert (=> b!7834019 m!8249882))

(declare-fun m!8249884 () Bool)

(assert (=> b!7834007 m!8249884))

(declare-fun m!8249886 () Bool)

(assert (=> b!7834009 m!8249886))

(declare-fun m!8249888 () Bool)

(assert (=> b!7834008 m!8249888))

(declare-fun m!8249890 () Bool)

(assert (=> start!742278 m!8249890))

(declare-fun m!8249892 () Bool)

(assert (=> b!7834004 m!8249892))

(check-sat (not b!7834018) (not b!7833996) (not b!7834003) (not b!7834020) (not b!7834011) (not b!7833998) (not b!7834006) (not b!7834017) (not b!7834010) (not b!7834015) (not b!7834008) (not b!7834000) (not b!7834019) tp_is_empty!52293 (not b!7834021) (not b!7834013) (not start!742278) (not b!7834002) (not b!7834014) (not b!7834001) (not b!7834007) (not b!7834012) (not b!7834009) (not b!7834004))
(check-sat)
