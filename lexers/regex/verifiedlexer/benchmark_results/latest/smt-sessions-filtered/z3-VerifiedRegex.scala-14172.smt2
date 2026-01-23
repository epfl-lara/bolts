; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!743566 () Bool)

(assert start!743566)

(declare-fun b!7859912 () Bool)

(declare-fun e!4644989 () Bool)

(declare-datatypes ((C!42560 0))(
  ( (C!42561 (val!31742 Int)) )
))
(declare-datatypes ((Regex!21117 0))(
  ( (ElementMatch!21117 (c!1444377 C!42560)) (Concat!29962 (regOne!42746 Regex!21117) (regTwo!42746 Regex!21117)) (EmptyExpr!21117) (Star!21117 (reg!21446 Regex!21117)) (EmptyLang!21117) (Union!21117 (regOne!42747 Regex!21117) (regTwo!42747 Regex!21117)) )
))
(declare-fun r1!6218 () Regex!21117)

(declare-fun nullable!9387 (Regex!21117) Bool)

(assert (=> b!7859912 (= e!4644989 (nullable!9387 r1!6218))))

(declare-fun b!7859913 () Bool)

(declare-fun e!4644984 () Bool)

(assert (=> b!7859913 (= e!4644984 true)))

(declare-fun lt!2680264 () Bool)

(declare-fun lt!2680262 () Regex!21117)

(declare-datatypes ((List!73976 0))(
  ( (Nil!73852) (Cons!73852 (h!80300 C!42560) (t!388711 List!73976)) )
))
(declare-fun s!14237 () List!73976)

(declare-fun matchR!10553 (Regex!21117 List!73976) Bool)

(assert (=> b!7859913 (= lt!2680264 (matchR!10553 lt!2680262 (t!388711 s!14237)))))

(declare-fun b!7859914 () Bool)

(declare-fun res!3124672 () Bool)

(declare-fun e!4644983 () Bool)

(assert (=> b!7859914 (=> (not res!3124672) (not e!4644983))))

(get-info :version)

(assert (=> b!7859914 (= res!3124672 ((_ is Cons!73852) s!14237))))

(declare-fun b!7859915 () Bool)

(declare-fun e!4644988 () Bool)

(declare-fun tp!2329302 () Bool)

(declare-fun tp!2329296 () Bool)

(assert (=> b!7859915 (= e!4644988 (and tp!2329302 tp!2329296))))

(declare-fun b!7859916 () Bool)

(declare-fun e!4644985 () Bool)

(declare-fun tp_is_empty!52633 () Bool)

(declare-fun tp!2329300 () Bool)

(assert (=> b!7859916 (= e!4644985 (and tp_is_empty!52633 tp!2329300))))

(declare-fun b!7859917 () Bool)

(declare-fun res!3124673 () Bool)

(assert (=> b!7859917 (=> res!3124673 e!4644984)))

(declare-fun lt!2680263 () Regex!21117)

(declare-fun validRegex!11527 (Regex!21117) Bool)

(assert (=> b!7859917 (= res!3124673 (not (validRegex!11527 lt!2680263)))))

(declare-fun b!7859918 () Bool)

(declare-fun e!4644986 () Bool)

(assert (=> b!7859918 (= e!4644983 e!4644986)))

(declare-fun res!3124676 () Bool)

(assert (=> b!7859918 (=> (not res!3124676) (not e!4644986))))

(declare-fun r2!6156 () Regex!21117)

(declare-fun derivativeStep!6350 (Regex!21117 C!42560) Regex!21117)

(assert (=> b!7859918 (= res!3124676 (= (derivativeStep!6350 (Concat!29962 r2!6156 r1!6218) (h!80300 s!14237)) (Union!21117 lt!2680263 lt!2680262)))))

(assert (=> b!7859918 (= lt!2680262 (derivativeStep!6350 r1!6218 (h!80300 s!14237)))))

(assert (=> b!7859918 (= lt!2680263 (Concat!29962 (derivativeStep!6350 r2!6156 (h!80300 s!14237)) r1!6218))))

(declare-fun b!7859919 () Bool)

(declare-fun res!3124677 () Bool)

(assert (=> b!7859919 (=> (not res!3124677) (not e!4644983))))

(assert (=> b!7859919 (= res!3124677 (validRegex!11527 r2!6156))))

(declare-fun b!7859921 () Bool)

(declare-fun e!4644987 () Bool)

(declare-fun tp!2329297 () Bool)

(declare-fun tp!2329301 () Bool)

(assert (=> b!7859921 (= e!4644987 (and tp!2329297 tp!2329301))))

(declare-fun b!7859922 () Bool)

(declare-fun res!3124675 () Bool)

(assert (=> b!7859922 (=> (not res!3124675) (not e!4644983))))

(assert (=> b!7859922 (= res!3124675 (matchR!10553 r1!6218 s!14237))))

(declare-fun b!7859923 () Bool)

(assert (=> b!7859923 (= e!4644986 (not e!4644984))))

(declare-fun res!3124678 () Bool)

(assert (=> b!7859923 (=> res!3124678 e!4644984)))

(assert (=> b!7859923 (= res!3124678 (not (validRegex!11527 lt!2680262)))))

(assert (=> b!7859923 e!4644989))

(declare-fun c!1444376 () Bool)

(declare-fun isEmpty!42355 (List!73976) Bool)

(assert (=> b!7859923 (= c!1444376 (isEmpty!42355 s!14237))))

(declare-datatypes ((Unit!168940 0))(
  ( (Unit!168941) )
))
(declare-fun lt!2680265 () Unit!168940)

(declare-fun lemmaRegexAcceptsStringThenDerivativeAcceptsTail!4 (Regex!21117 List!73976) Unit!168940)

(assert (=> b!7859923 (= lt!2680265 (lemmaRegexAcceptsStringThenDerivativeAcceptsTail!4 r1!6218 s!14237))))

(declare-fun b!7859924 () Bool)

(assert (=> b!7859924 (= e!4644988 tp_is_empty!52633)))

(declare-fun b!7859925 () Bool)

(declare-fun tp!2329295 () Bool)

(assert (=> b!7859925 (= e!4644987 tp!2329295)))

(declare-fun b!7859926 () Bool)

(declare-fun head!16066 (List!73976) C!42560)

(declare-fun tail!15609 (List!73976) List!73976)

(assert (=> b!7859926 (= e!4644989 (matchR!10553 (derivativeStep!6350 r1!6218 (head!16066 s!14237)) (tail!15609 s!14237)))))

(declare-fun b!7859927 () Bool)

(assert (=> b!7859927 (= e!4644987 tp_is_empty!52633)))

(declare-fun b!7859928 () Bool)

(declare-fun res!3124671 () Bool)

(assert (=> b!7859928 (=> (not res!3124671) (not e!4644983))))

(assert (=> b!7859928 (= res!3124671 (nullable!9387 r2!6156))))

(declare-fun b!7859929 () Bool)

(declare-fun tp!2329294 () Bool)

(assert (=> b!7859929 (= e!4644988 tp!2329294)))

(declare-fun b!7859930 () Bool)

(declare-fun tp!2329292 () Bool)

(declare-fun tp!2329298 () Bool)

(assert (=> b!7859930 (= e!4644987 (and tp!2329292 tp!2329298))))

(declare-fun res!3124674 () Bool)

(assert (=> start!743566 (=> (not res!3124674) (not e!4644983))))

(assert (=> start!743566 (= res!3124674 (validRegex!11527 r1!6218))))

(assert (=> start!743566 e!4644983))

(assert (=> start!743566 e!4644987))

(assert (=> start!743566 e!4644988))

(assert (=> start!743566 e!4644985))

(declare-fun b!7859920 () Bool)

(declare-fun tp!2329293 () Bool)

(declare-fun tp!2329299 () Bool)

(assert (=> b!7859920 (= e!4644988 (and tp!2329293 tp!2329299))))

(assert (= (and start!743566 res!3124674) b!7859919))

(assert (= (and b!7859919 res!3124677) b!7859922))

(assert (= (and b!7859922 res!3124675) b!7859928))

(assert (= (and b!7859928 res!3124671) b!7859914))

(assert (= (and b!7859914 res!3124672) b!7859918))

(assert (= (and b!7859918 res!3124676) b!7859923))

(assert (= (and b!7859923 c!1444376) b!7859912))

(assert (= (and b!7859923 (not c!1444376)) b!7859926))

(assert (= (and b!7859923 (not res!3124678)) b!7859917))

(assert (= (and b!7859917 (not res!3124673)) b!7859913))

(assert (= (and start!743566 ((_ is ElementMatch!21117) r1!6218)) b!7859927))

(assert (= (and start!743566 ((_ is Concat!29962) r1!6218)) b!7859930))

(assert (= (and start!743566 ((_ is Star!21117) r1!6218)) b!7859925))

(assert (= (and start!743566 ((_ is Union!21117) r1!6218)) b!7859921))

(assert (= (and start!743566 ((_ is ElementMatch!21117) r2!6156)) b!7859924))

(assert (= (and start!743566 ((_ is Concat!29962) r2!6156)) b!7859920))

(assert (= (and start!743566 ((_ is Star!21117) r2!6156)) b!7859929))

(assert (= (and start!743566 ((_ is Union!21117) r2!6156)) b!7859915))

(assert (= (and start!743566 ((_ is Cons!73852) s!14237)) b!7859916))

(declare-fun m!8261846 () Bool)

(assert (=> b!7859923 m!8261846))

(declare-fun m!8261848 () Bool)

(assert (=> b!7859923 m!8261848))

(declare-fun m!8261850 () Bool)

(assert (=> b!7859923 m!8261850))

(declare-fun m!8261852 () Bool)

(assert (=> start!743566 m!8261852))

(declare-fun m!8261854 () Bool)

(assert (=> b!7859917 m!8261854))

(declare-fun m!8261856 () Bool)

(assert (=> b!7859913 m!8261856))

(declare-fun m!8261858 () Bool)

(assert (=> b!7859926 m!8261858))

(assert (=> b!7859926 m!8261858))

(declare-fun m!8261860 () Bool)

(assert (=> b!7859926 m!8261860))

(declare-fun m!8261862 () Bool)

(assert (=> b!7859926 m!8261862))

(assert (=> b!7859926 m!8261860))

(assert (=> b!7859926 m!8261862))

(declare-fun m!8261864 () Bool)

(assert (=> b!7859926 m!8261864))

(declare-fun m!8261866 () Bool)

(assert (=> b!7859912 m!8261866))

(declare-fun m!8261868 () Bool)

(assert (=> b!7859918 m!8261868))

(declare-fun m!8261870 () Bool)

(assert (=> b!7859918 m!8261870))

(declare-fun m!8261872 () Bool)

(assert (=> b!7859918 m!8261872))

(declare-fun m!8261874 () Bool)

(assert (=> b!7859919 m!8261874))

(declare-fun m!8261876 () Bool)

(assert (=> b!7859928 m!8261876))

(declare-fun m!8261878 () Bool)

(assert (=> b!7859922 m!8261878))

(check-sat (not b!7859921) tp_is_empty!52633 (not b!7859919) (not b!7859915) (not b!7859923) (not b!7859913) (not b!7859918) (not b!7859922) (not b!7859930) (not b!7859929) (not start!743566) (not b!7859925) (not b!7859912) (not b!7859917) (not b!7859916) (not b!7859926) (not b!7859920) (not b!7859928))
(check-sat)
