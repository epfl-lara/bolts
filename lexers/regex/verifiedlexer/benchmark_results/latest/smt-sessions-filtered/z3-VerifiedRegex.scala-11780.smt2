; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664278 () Bool)

(assert start!664278)

(declare-fun b!6890724 () Bool)

(declare-fun e!4151214 () Bool)

(declare-fun tp!1895839 () Bool)

(declare-fun tp!1895838 () Bool)

(assert (=> b!6890724 (= e!4151214 (and tp!1895839 tp!1895838))))

(declare-fun b!6890725 () Bool)

(declare-fun e!4151215 () Bool)

(declare-fun tp_is_empty!42839 () Bool)

(assert (=> b!6890725 (= e!4151215 tp_is_empty!42839)))

(declare-fun b!6890726 () Bool)

(declare-fun tp!1895843 () Bool)

(declare-fun tp!1895847 () Bool)

(assert (=> b!6890726 (= e!4151214 (and tp!1895843 tp!1895847))))

(declare-fun b!6890727 () Bool)

(declare-fun tp!1895833 () Bool)

(assert (=> b!6890727 (= e!4151215 tp!1895833)))

(declare-fun b!6890728 () Bool)

(declare-fun e!4151216 () Bool)

(declare-fun tp!1895841 () Bool)

(declare-fun tp!1895840 () Bool)

(assert (=> b!6890728 (= e!4151216 (and tp!1895841 tp!1895840))))

(declare-fun b!6890729 () Bool)

(declare-fun tp!1895846 () Bool)

(declare-fun tp!1895834 () Bool)

(assert (=> b!6890729 (= e!4151215 (and tp!1895846 tp!1895834))))

(declare-fun b!6890730 () Bool)

(declare-fun tp!1895837 () Bool)

(declare-fun tp!1895836 () Bool)

(assert (=> b!6890730 (= e!4151215 (and tp!1895837 tp!1895836))))

(declare-fun res!2809486 () Bool)

(declare-fun e!4151213 () Bool)

(assert (=> start!664278 (=> (not res!2809486) (not e!4151213))))

(declare-datatypes ((C!33884 0))(
  ( (C!33885 (val!26644 Int)) )
))
(declare-datatypes ((Regex!16807 0))(
  ( (ElementMatch!16807 (c!1281175 C!33884)) (Concat!25652 (regOne!34126 Regex!16807) (regTwo!34126 Regex!16807)) (EmptyExpr!16807) (Star!16807 (reg!17136 Regex!16807)) (EmptyLang!16807) (Union!16807 (regOne!34127 Regex!16807) (regTwo!34127 Regex!16807)) )
))
(declare-fun r1!6342 () Regex!16807)

(declare-fun validRegex!8515 (Regex!16807) Bool)

(assert (=> start!664278 (= res!2809486 (validRegex!8515 r1!6342))))

(assert (=> start!664278 e!4151213))

(assert (=> start!664278 e!4151215))

(assert (=> start!664278 e!4151214))

(assert (=> start!664278 e!4151216))

(declare-fun e!4151212 () Bool)

(assert (=> start!664278 e!4151212))

(declare-fun b!6890731 () Bool)

(declare-fun tp!1895842 () Bool)

(assert (=> b!6890731 (= e!4151216 tp!1895842)))

(declare-fun b!6890732 () Bool)

(assert (=> b!6890732 (= e!4151214 tp_is_empty!42839)))

(declare-fun b!6890733 () Bool)

(assert (=> b!6890733 (= e!4151216 tp_is_empty!42839)))

(declare-fun b!6890734 () Bool)

(declare-fun tp!1895832 () Bool)

(declare-fun tp!1895844 () Bool)

(assert (=> b!6890734 (= e!4151216 (and tp!1895832 tp!1895844))))

(declare-fun b!6890735 () Bool)

(declare-fun tp!1895845 () Bool)

(assert (=> b!6890735 (= e!4151212 (and tp_is_empty!42839 tp!1895845))))

(declare-fun b!6890736 () Bool)

(assert (=> b!6890736 (= e!4151213 (not true))))

(declare-fun lt!2462861 () Regex!16807)

(declare-datatypes ((List!66564 0))(
  ( (Nil!66440) (Cons!66440 (h!72888 C!33884) (t!380307 List!66564)) )
))
(declare-fun s!14361 () List!66564)

(declare-fun matchR!8952 (Regex!16807 List!66564) Bool)

(declare-fun matchRSpec!3870 (Regex!16807 List!66564) Bool)

(assert (=> b!6890736 (= (matchR!8952 lt!2462861 s!14361) (matchRSpec!3870 lt!2462861 s!14361))))

(declare-datatypes ((Unit!160334 0))(
  ( (Unit!160335) )
))
(declare-fun lt!2462862 () Unit!160334)

(declare-fun mainMatchTheorem!3870 (Regex!16807 List!66564) Unit!160334)

(assert (=> b!6890736 (= lt!2462862 (mainMatchTheorem!3870 lt!2462861 s!14361))))

(declare-fun lt!2462860 () Regex!16807)

(assert (=> b!6890736 (= (matchR!8952 lt!2462860 s!14361) (matchRSpec!3870 lt!2462860 s!14361))))

(declare-fun lt!2462863 () Unit!160334)

(assert (=> b!6890736 (= lt!2462863 (mainMatchTheorem!3870 lt!2462860 s!14361))))

(declare-fun r3!135 () Regex!16807)

(declare-fun r2!6280 () Regex!16807)

(assert (=> b!6890736 (= lt!2462861 (Concat!25652 r1!6342 (Concat!25652 r2!6280 r3!135)))))

(assert (=> b!6890736 (= lt!2462860 (Concat!25652 (Concat!25652 r1!6342 r2!6280) r3!135))))

(declare-fun b!6890737 () Bool)

(declare-fun res!2809488 () Bool)

(assert (=> b!6890737 (=> (not res!2809488) (not e!4151213))))

(assert (=> b!6890737 (= res!2809488 (validRegex!8515 r2!6280))))

(declare-fun b!6890738 () Bool)

(declare-fun res!2809487 () Bool)

(assert (=> b!6890738 (=> (not res!2809487) (not e!4151213))))

(assert (=> b!6890738 (= res!2809487 (validRegex!8515 r3!135))))

(declare-fun b!6890739 () Bool)

(declare-fun tp!1895835 () Bool)

(assert (=> b!6890739 (= e!4151214 tp!1895835)))

(assert (= (and start!664278 res!2809486) b!6890737))

(assert (= (and b!6890737 res!2809488) b!6890738))

(assert (= (and b!6890738 res!2809487) b!6890736))

(get-info :version)

(assert (= (and start!664278 ((_ is ElementMatch!16807) r1!6342)) b!6890725))

(assert (= (and start!664278 ((_ is Concat!25652) r1!6342)) b!6890729))

(assert (= (and start!664278 ((_ is Star!16807) r1!6342)) b!6890727))

(assert (= (and start!664278 ((_ is Union!16807) r1!6342)) b!6890730))

(assert (= (and start!664278 ((_ is ElementMatch!16807) r2!6280)) b!6890732))

(assert (= (and start!664278 ((_ is Concat!25652) r2!6280)) b!6890724))

(assert (= (and start!664278 ((_ is Star!16807) r2!6280)) b!6890739))

(assert (= (and start!664278 ((_ is Union!16807) r2!6280)) b!6890726))

(assert (= (and start!664278 ((_ is ElementMatch!16807) r3!135)) b!6890733))

(assert (= (and start!664278 ((_ is Concat!25652) r3!135)) b!6890734))

(assert (= (and start!664278 ((_ is Star!16807) r3!135)) b!6890731))

(assert (= (and start!664278 ((_ is Union!16807) r3!135)) b!6890728))

(assert (= (and start!664278 ((_ is Cons!66440) s!14361)) b!6890735))

(declare-fun m!7612866 () Bool)

(assert (=> start!664278 m!7612866))

(declare-fun m!7612868 () Bool)

(assert (=> b!6890736 m!7612868))

(declare-fun m!7612870 () Bool)

(assert (=> b!6890736 m!7612870))

(declare-fun m!7612872 () Bool)

(assert (=> b!6890736 m!7612872))

(declare-fun m!7612874 () Bool)

(assert (=> b!6890736 m!7612874))

(declare-fun m!7612876 () Bool)

(assert (=> b!6890736 m!7612876))

(declare-fun m!7612878 () Bool)

(assert (=> b!6890736 m!7612878))

(declare-fun m!7612880 () Bool)

(assert (=> b!6890737 m!7612880))

(declare-fun m!7612882 () Bool)

(assert (=> b!6890738 m!7612882))

(check-sat (not b!6890729) (not b!6890735) (not b!6890734) (not b!6890724) (not b!6890736) (not b!6890731) (not b!6890728) tp_is_empty!42839 (not b!6890730) (not b!6890726) (not start!664278) (not b!6890727) (not b!6890738) (not b!6890739) (not b!6890737))
(check-sat)
