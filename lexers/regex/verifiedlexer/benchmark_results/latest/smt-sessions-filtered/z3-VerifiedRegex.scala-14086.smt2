; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742274 () Bool)

(assert start!742274)

(declare-fun b!7833841 () Bool)

(declare-fun e!4632590 () Bool)

(declare-fun tp_is_empty!52289 () Bool)

(declare-fun tp!2317015 () Bool)

(assert (=> b!7833841 (= e!4632590 (and tp_is_empty!52289 tp!2317015))))

(declare-fun b!7833842 () Bool)

(declare-fun e!4632592 () Bool)

(assert (=> b!7833842 (= e!4632592 tp_is_empty!52289)))

(declare-fun b!7833843 () Bool)

(declare-fun e!4632597 () Bool)

(declare-fun tp!2317007 () Bool)

(assert (=> b!7833843 (= e!4632597 (and tp_is_empty!52289 tp!2317007))))

(declare-fun b!7833844 () Bool)

(declare-fun e!4632596 () Bool)

(declare-fun e!4632588 () Bool)

(assert (=> b!7833844 (= e!4632596 (not e!4632588))))

(declare-fun res!3115848 () Bool)

(assert (=> b!7833844 (=> res!3115848 e!4632588)))

(declare-datatypes ((C!42260 0))(
  ( (C!42261 (val!31570 Int)) )
))
(declare-datatypes ((List!73804 0))(
  ( (Nil!73680) (Cons!73680 (h!80128 C!42260) (t!388539 List!73804)) )
))
(declare-fun s1Rec!453 () List!73804)

(declare-fun s1!4101 () List!73804)

(assert (=> b!7833844 (= res!3115848 (not (= s1Rec!453 s1!4101)))))

(declare-fun lt!2677127 () List!73804)

(declare-fun isPrefix!6317 (List!73804 List!73804) Bool)

(assert (=> b!7833844 (isPrefix!6317 s1Rec!453 lt!2677127)))

(declare-datatypes ((Unit!168704 0))(
  ( (Unit!168705) )
))
(declare-fun lt!2677130 () Unit!168704)

(declare-fun s2Rec!453 () List!73804)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3763 (List!73804 List!73804) Unit!168704)

(assert (=> b!7833844 (= lt!2677130 (lemmaConcatTwoListThenFirstIsPrefix!3763 s1Rec!453 s2Rec!453))))

(declare-fun lt!2677129 () List!73804)

(assert (=> b!7833844 (isPrefix!6317 s1!4101 lt!2677129)))

(declare-fun lt!2677128 () Unit!168704)

(declare-fun s2!3721 () List!73804)

(assert (=> b!7833844 (= lt!2677128 (lemmaConcatTwoListThenFirstIsPrefix!3763 s1!4101 s2!3721))))

(declare-fun b!7833845 () Bool)

(declare-fun e!4632587 () Bool)

(declare-datatypes ((Regex!20967 0))(
  ( (ElementMatch!20967 (c!1440852 C!42260)) (Concat!29812 (regOne!42446 Regex!20967) (regTwo!42446 Regex!20967)) (EmptyExpr!20967) (Star!20967 (reg!21296 Regex!20967)) (EmptyLang!20967) (Union!20967 (regOne!42447 Regex!20967) (regTwo!42447 Regex!20967)) )
))
(declare-fun r2!6199 () Regex!20967)

(declare-fun matchR!10423 (Regex!20967 List!73804) Bool)

(assert (=> b!7833845 (= e!4632587 (not (matchR!10423 r2!6199 s2Rec!453)))))

(declare-fun b!7833846 () Bool)

(declare-fun res!3115843 () Bool)

(declare-fun e!4632589 () Bool)

(assert (=> b!7833846 (=> (not res!3115843) (not e!4632589))))

(assert (=> b!7833846 (= res!3115843 (isPrefix!6317 s1Rec!453 s1!4101))))

(declare-fun b!7833847 () Bool)

(declare-fun res!3115852 () Bool)

(assert (=> b!7833847 (=> res!3115852 e!4632588)))

(declare-fun s!14274 () List!73804)

(assert (=> b!7833847 (= res!3115852 (not (isPrefix!6317 s1!4101 s!14274)))))

(declare-fun b!7833848 () Bool)

(declare-fun res!3115845 () Bool)

(assert (=> b!7833848 (=> (not res!3115845) (not e!4632596))))

(assert (=> b!7833848 (= res!3115845 (matchR!10423 r2!6199 s2!3721))))

(declare-fun b!7833849 () Bool)

(declare-fun e!4632586 () Bool)

(assert (=> b!7833849 (= e!4632586 e!4632589)))

(declare-fun res!3115850 () Bool)

(assert (=> b!7833849 (=> (not res!3115850) (not e!4632589))))

(assert (=> b!7833849 (= res!3115850 (= lt!2677129 s!14274))))

(declare-fun ++!18001 (List!73804 List!73804) List!73804)

(assert (=> b!7833849 (= lt!2677129 (++!18001 s1!4101 s2!3721))))

(declare-fun b!7833850 () Bool)

(declare-fun tp!2317008 () Bool)

(declare-fun tp!2317020 () Bool)

(assert (=> b!7833850 (= e!4632592 (and tp!2317008 tp!2317020))))

(declare-fun b!7833851 () Bool)

(assert (=> b!7833851 (= e!4632588 (isPrefix!6317 s1Rec!453 s!14274))))

(declare-fun b!7833852 () Bool)

(declare-fun tp!2317018 () Bool)

(declare-fun tp!2317012 () Bool)

(assert (=> b!7833852 (= e!4632592 (and tp!2317018 tp!2317012))))

(declare-fun b!7833854 () Bool)

(declare-fun e!4632595 () Bool)

(declare-fun tp!2317009 () Bool)

(assert (=> b!7833854 (= e!4632595 (and tp_is_empty!52289 tp!2317009))))

(declare-fun b!7833855 () Bool)

(declare-fun tp!2317011 () Bool)

(assert (=> b!7833855 (= e!4632592 tp!2317011)))

(declare-fun b!7833856 () Bool)

(declare-fun res!3115853 () Bool)

(assert (=> b!7833856 (=> (not res!3115853) (not e!4632596))))

(assert (=> b!7833856 (= res!3115853 e!4632587)))

(declare-fun res!3115847 () Bool)

(assert (=> b!7833856 (=> res!3115847 e!4632587)))

(declare-fun r1!6261 () Regex!20967)

(assert (=> b!7833856 (= res!3115847 (not (matchR!10423 r1!6261 s1Rec!453)))))

(declare-fun b!7833857 () Bool)

(declare-fun e!4632594 () Bool)

(assert (=> b!7833857 (= e!4632594 tp_is_empty!52289)))

(declare-fun b!7833858 () Bool)

(declare-fun tp!2317017 () Bool)

(declare-fun tp!2317014 () Bool)

(assert (=> b!7833858 (= e!4632594 (and tp!2317017 tp!2317014))))

(declare-fun b!7833859 () Bool)

(declare-fun res!3115854 () Bool)

(assert (=> b!7833859 (=> (not res!3115854) (not e!4632596))))

(assert (=> b!7833859 (= res!3115854 (matchR!10423 r1!6261 s1!4101))))

(declare-fun b!7833860 () Bool)

(declare-fun e!4632593 () Bool)

(declare-fun tp!2317010 () Bool)

(assert (=> b!7833860 (= e!4632593 (and tp_is_empty!52289 tp!2317010))))

(declare-fun b!7833861 () Bool)

(declare-fun e!4632591 () Bool)

(declare-fun tp!2317021 () Bool)

(assert (=> b!7833861 (= e!4632591 (and tp_is_empty!52289 tp!2317021))))

(declare-fun b!7833862 () Bool)

(declare-fun tp!2317019 () Bool)

(assert (=> b!7833862 (= e!4632594 tp!2317019)))

(declare-fun b!7833863 () Bool)

(declare-fun res!3115851 () Bool)

(assert (=> b!7833863 (=> (not res!3115851) (not e!4632586))))

(declare-fun validRegex!11381 (Regex!20967) Bool)

(assert (=> b!7833863 (= res!3115851 (validRegex!11381 r2!6199))))

(declare-fun b!7833864 () Bool)

(declare-fun res!3115849 () Bool)

(assert (=> b!7833864 (=> (not res!3115849) (not e!4632596))))

(get-info :version)

(assert (=> b!7833864 (= res!3115849 (not ((_ is Nil!73680) s2Rec!453)))))

(declare-fun b!7833865 () Bool)

(assert (=> b!7833865 (= e!4632589 e!4632596)))

(declare-fun res!3115846 () Bool)

(assert (=> b!7833865 (=> (not res!3115846) (not e!4632596))))

(assert (=> b!7833865 (= res!3115846 (= lt!2677127 s!14274))))

(assert (=> b!7833865 (= lt!2677127 (++!18001 s1Rec!453 s2Rec!453))))

(declare-fun res!3115844 () Bool)

(assert (=> start!742274 (=> (not res!3115844) (not e!4632586))))

(assert (=> start!742274 (= res!3115844 (validRegex!11381 r1!6261))))

(assert (=> start!742274 e!4632586))

(assert (=> start!742274 e!4632594))

(assert (=> start!742274 e!4632597))

(assert (=> start!742274 e!4632595))

(assert (=> start!742274 e!4632591))

(assert (=> start!742274 e!4632593))

(assert (=> start!742274 e!4632592))

(assert (=> start!742274 e!4632590))

(declare-fun b!7833853 () Bool)

(declare-fun tp!2317013 () Bool)

(declare-fun tp!2317016 () Bool)

(assert (=> b!7833853 (= e!4632594 (and tp!2317013 tp!2317016))))

(assert (= (and start!742274 res!3115844) b!7833863))

(assert (= (and b!7833863 res!3115851) b!7833849))

(assert (= (and b!7833849 res!3115850) b!7833846))

(assert (= (and b!7833846 res!3115843) b!7833865))

(assert (= (and b!7833865 res!3115846) b!7833859))

(assert (= (and b!7833859 res!3115854) b!7833848))

(assert (= (and b!7833848 res!3115845) b!7833856))

(assert (= (and b!7833856 (not res!3115847)) b!7833845))

(assert (= (and b!7833856 res!3115853) b!7833864))

(assert (= (and b!7833864 res!3115849) b!7833844))

(assert (= (and b!7833844 (not res!3115848)) b!7833847))

(assert (= (and b!7833847 (not res!3115852)) b!7833851))

(assert (= (and start!742274 ((_ is ElementMatch!20967) r2!6199)) b!7833857))

(assert (= (and start!742274 ((_ is Concat!29812) r2!6199)) b!7833858))

(assert (= (and start!742274 ((_ is Star!20967) r2!6199)) b!7833862))

(assert (= (and start!742274 ((_ is Union!20967) r2!6199)) b!7833853))

(assert (= (and start!742274 ((_ is Cons!73680) s1!4101)) b!7833843))

(assert (= (and start!742274 ((_ is Cons!73680) s2!3721)) b!7833854))

(assert (= (and start!742274 ((_ is Cons!73680) s2Rec!453)) b!7833861))

(assert (= (and start!742274 ((_ is Cons!73680) s!14274)) b!7833860))

(assert (= (and start!742274 ((_ is ElementMatch!20967) r1!6261)) b!7833842))

(assert (= (and start!742274 ((_ is Concat!29812) r1!6261)) b!7833850))

(assert (= (and start!742274 ((_ is Star!20967) r1!6261)) b!7833855))

(assert (= (and start!742274 ((_ is Union!20967) r1!6261)) b!7833852))

(assert (= (and start!742274 ((_ is Cons!73680) s1Rec!453)) b!7833841))

(declare-fun m!8249804 () Bool)

(assert (=> b!7833845 m!8249804))

(declare-fun m!8249806 () Bool)

(assert (=> b!7833844 m!8249806))

(declare-fun m!8249808 () Bool)

(assert (=> b!7833844 m!8249808))

(declare-fun m!8249810 () Bool)

(assert (=> b!7833844 m!8249810))

(declare-fun m!8249812 () Bool)

(assert (=> b!7833844 m!8249812))

(declare-fun m!8249814 () Bool)

(assert (=> b!7833849 m!8249814))

(declare-fun m!8249816 () Bool)

(assert (=> b!7833865 m!8249816))

(declare-fun m!8249818 () Bool)

(assert (=> b!7833863 m!8249818))

(declare-fun m!8249820 () Bool)

(assert (=> b!7833846 m!8249820))

(declare-fun m!8249822 () Bool)

(assert (=> b!7833859 m!8249822))

(declare-fun m!8249824 () Bool)

(assert (=> start!742274 m!8249824))

(declare-fun m!8249826 () Bool)

(assert (=> b!7833851 m!8249826))

(declare-fun m!8249828 () Bool)

(assert (=> b!7833848 m!8249828))

(declare-fun m!8249830 () Bool)

(assert (=> b!7833856 m!8249830))

(declare-fun m!8249832 () Bool)

(assert (=> b!7833847 m!8249832))

(check-sat (not b!7833841) (not b!7833860) (not b!7833848) (not b!7833847) (not b!7833843) (not b!7833861) (not b!7833862) (not b!7833844) (not b!7833856) (not b!7833853) (not b!7833846) (not b!7833855) (not b!7833858) (not b!7833852) (not start!742274) (not b!7833851) (not b!7833850) (not b!7833854) (not b!7833863) (not b!7833865) tp_is_empty!52289 (not b!7833845) (not b!7833849) (not b!7833859))
(check-sat)
