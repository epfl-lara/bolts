; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740862 () Bool)

(assert start!740862)

(declare-fun b!7790762 () Bool)

(declare-fun res!3103976 () Bool)

(declare-fun e!4613320 () Bool)

(assert (=> b!7790762 (=> (not res!3103976) (not e!4613320))))

(declare-datatypes ((C!42040 0))(
  ( (C!42041 (val!31460 Int)) )
))
(declare-datatypes ((Regex!20857 0))(
  ( (ElementMatch!20857 (c!1434814 C!42040)) (Concat!29702 (regOne!42226 Regex!20857) (regTwo!42226 Regex!20857)) (EmptyExpr!20857) (Star!20857 (reg!21186 Regex!20857)) (EmptyLang!20857) (Union!20857 (regOne!42227 Regex!20857) (regTwo!42227 Regex!20857)) )
))
(declare-fun lt!2673559 () Regex!20857)

(declare-fun validRegex!11271 (Regex!20857) Bool)

(assert (=> b!7790762 (= res!3103976 (validRegex!11271 lt!2673559))))

(declare-fun b!7790763 () Bool)

(declare-fun res!3103980 () Bool)

(declare-fun e!4613319 () Bool)

(assert (=> b!7790763 (=> (not res!3103980) (not e!4613319))))

(declare-fun r2!6217 () Regex!20857)

(assert (=> b!7790763 (= res!3103980 (validRegex!11271 r2!6217))))

(declare-fun b!7790764 () Bool)

(declare-fun e!4613317 () Bool)

(declare-fun tp!2293420 () Bool)

(assert (=> b!7790764 (= e!4613317 tp!2293420)))

(declare-fun b!7790766 () Bool)

(declare-fun tp!2293421 () Bool)

(declare-fun tp!2293414 () Bool)

(assert (=> b!7790766 (= e!4613317 (and tp!2293421 tp!2293414))))

(declare-fun b!7790767 () Bool)

(declare-fun res!3103972 () Bool)

(declare-fun e!4613315 () Bool)

(assert (=> b!7790767 (=> (not res!3103972) (not e!4613315))))

(declare-datatypes ((List!73696 0))(
  ( (Nil!73572) (Cons!73572 (h!80020 C!42040) (t!388431 List!73696)) )
))
(declare-fun s!14292 () List!73696)

(get-info :version)

(assert (=> b!7790767 (= res!3103972 ((_ is Cons!73572) s!14292))))

(declare-fun b!7790768 () Bool)

(declare-fun e!4613316 () Bool)

(declare-fun tp_is_empty!52069 () Bool)

(assert (=> b!7790768 (= e!4613316 tp_is_empty!52069)))

(declare-fun b!7790769 () Bool)

(assert (=> b!7790769 (= e!4613319 e!4613315)))

(declare-fun res!3103973 () Bool)

(assert (=> b!7790769 (=> (not res!3103973) (not e!4613315))))

(declare-fun lt!2673557 () Regex!20857)

(declare-fun matchR!10317 (Regex!20857 List!73696) Bool)

(assert (=> b!7790769 (= res!3103973 (matchR!10317 lt!2673557 s!14292))))

(declare-fun r1!6279 () Regex!20857)

(assert (=> b!7790769 (= lt!2673557 (Concat!29702 r1!6279 r2!6217))))

(declare-fun b!7790770 () Bool)

(declare-fun tp!2293416 () Bool)

(assert (=> b!7790770 (= e!4613316 tp!2293416)))

(declare-fun b!7790771 () Bool)

(declare-fun e!4613318 () Bool)

(assert (=> b!7790771 (= e!4613315 e!4613318)))

(declare-fun res!3103978 () Bool)

(assert (=> b!7790771 (=> (not res!3103978) (not e!4613318))))

(declare-fun lt!2673556 () Regex!20857)

(assert (=> b!7790771 (= res!3103978 (matchR!10317 lt!2673556 (t!388431 s!14292)))))

(declare-fun derivativeStep!6194 (Regex!20857 C!42040) Regex!20857)

(assert (=> b!7790771 (= lt!2673556 (derivativeStep!6194 lt!2673557 (h!80020 s!14292)))))

(declare-fun b!7790772 () Bool)

(declare-fun e!4613321 () Bool)

(declare-fun tp!2293417 () Bool)

(assert (=> b!7790772 (= e!4613321 (and tp_is_empty!52069 tp!2293417))))

(declare-fun b!7790773 () Bool)

(assert (=> b!7790773 (= e!4613317 tp_is_empty!52069)))

(declare-fun b!7790774 () Bool)

(declare-fun tp!2293415 () Bool)

(declare-fun tp!2293411 () Bool)

(assert (=> b!7790774 (= e!4613317 (and tp!2293415 tp!2293411))))

(declare-fun b!7790775 () Bool)

(declare-fun res!3103975 () Bool)

(assert (=> b!7790775 (=> (not res!3103975) (not e!4613318))))

(declare-fun nullable!9241 (Regex!20857) Bool)

(assert (=> b!7790775 (= res!3103975 (nullable!9241 r1!6279))))

(declare-fun b!7790776 () Bool)

(declare-fun lt!2673560 () Regex!20857)

(assert (=> b!7790776 (= e!4613320 (not (matchR!10317 lt!2673560 (t!388431 s!14292))))))

(declare-fun b!7790777 () Bool)

(declare-fun res!3103974 () Bool)

(assert (=> b!7790777 (=> (not res!3103974) (not e!4613320))))

(declare-fun lt!2673558 () Regex!20857)

(assert (=> b!7790777 (= res!3103974 (validRegex!11271 lt!2673558))))

(declare-fun b!7790765 () Bool)

(declare-fun tp!2293412 () Bool)

(declare-fun tp!2293418 () Bool)

(assert (=> b!7790765 (= e!4613316 (and tp!2293412 tp!2293418))))

(declare-fun res!3103979 () Bool)

(assert (=> start!740862 (=> (not res!3103979) (not e!4613319))))

(assert (=> start!740862 (= res!3103979 (validRegex!11271 r1!6279))))

(assert (=> start!740862 e!4613319))

(assert (=> start!740862 e!4613316))

(assert (=> start!740862 e!4613317))

(assert (=> start!740862 e!4613321))

(declare-fun b!7790778 () Bool)

(assert (=> b!7790778 (= e!4613318 e!4613320)))

(declare-fun res!3103977 () Bool)

(assert (=> b!7790778 (=> (not res!3103977) (not e!4613320))))

(assert (=> b!7790778 (= res!3103977 (= lt!2673556 lt!2673560))))

(assert (=> b!7790778 (= lt!2673560 (Union!20857 lt!2673559 lt!2673558))))

(assert (=> b!7790778 (= lt!2673558 (derivativeStep!6194 r2!6217 (h!80020 s!14292)))))

(assert (=> b!7790778 (= lt!2673559 (Concat!29702 (derivativeStep!6194 r1!6279 (h!80020 s!14292)) r2!6217))))

(declare-fun b!7790779 () Bool)

(declare-fun tp!2293419 () Bool)

(declare-fun tp!2293413 () Bool)

(assert (=> b!7790779 (= e!4613316 (and tp!2293419 tp!2293413))))

(assert (= (and start!740862 res!3103979) b!7790763))

(assert (= (and b!7790763 res!3103980) b!7790769))

(assert (= (and b!7790769 res!3103973) b!7790767))

(assert (= (and b!7790767 res!3103972) b!7790771))

(assert (= (and b!7790771 res!3103978) b!7790775))

(assert (= (and b!7790775 res!3103975) b!7790778))

(assert (= (and b!7790778 res!3103977) b!7790762))

(assert (= (and b!7790762 res!3103976) b!7790777))

(assert (= (and b!7790777 res!3103974) b!7790776))

(assert (= (and start!740862 ((_ is ElementMatch!20857) r1!6279)) b!7790768))

(assert (= (and start!740862 ((_ is Concat!29702) r1!6279)) b!7790765))

(assert (= (and start!740862 ((_ is Star!20857) r1!6279)) b!7790770))

(assert (= (and start!740862 ((_ is Union!20857) r1!6279)) b!7790779))

(assert (= (and start!740862 ((_ is ElementMatch!20857) r2!6217)) b!7790773))

(assert (= (and start!740862 ((_ is Concat!29702) r2!6217)) b!7790766))

(assert (= (and start!740862 ((_ is Star!20857) r2!6217)) b!7790764))

(assert (= (and start!740862 ((_ is Union!20857) r2!6217)) b!7790774))

(assert (= (and start!740862 ((_ is Cons!73572) s!14292)) b!7790772))

(declare-fun m!8231880 () Bool)

(assert (=> b!7790775 m!8231880))

(declare-fun m!8231882 () Bool)

(assert (=> b!7790778 m!8231882))

(declare-fun m!8231884 () Bool)

(assert (=> b!7790778 m!8231884))

(declare-fun m!8231886 () Bool)

(assert (=> b!7790763 m!8231886))

(declare-fun m!8231888 () Bool)

(assert (=> b!7790769 m!8231888))

(declare-fun m!8231890 () Bool)

(assert (=> b!7790771 m!8231890))

(declare-fun m!8231892 () Bool)

(assert (=> b!7790771 m!8231892))

(declare-fun m!8231894 () Bool)

(assert (=> start!740862 m!8231894))

(declare-fun m!8231896 () Bool)

(assert (=> b!7790762 m!8231896))

(declare-fun m!8231898 () Bool)

(assert (=> b!7790776 m!8231898))

(declare-fun m!8231900 () Bool)

(assert (=> b!7790777 m!8231900))

(check-sat (not b!7790769) (not start!740862) (not b!7790775) (not b!7790771) (not b!7790765) (not b!7790774) (not b!7790764) tp_is_empty!52069 (not b!7790762) (not b!7790772) (not b!7790778) (not b!7790779) (not b!7790770) (not b!7790766) (not b!7790776) (not b!7790763) (not b!7790777))
(check-sat)
