; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286216 () Bool)

(assert start!286216)

(declare-fun b!2951148 () Bool)

(assert (=> b!2951148 true))

(assert (=> b!2951148 true))

(assert (=> b!2951148 true))

(declare-fun b!2951139 () Bool)

(declare-fun res!1217641 () Bool)

(declare-fun e!1858667 () Bool)

(assert (=> b!2951139 (=> res!1217641 e!1858667)))

(declare-datatypes ((C!18492 0))(
  ( (C!18493 (val!11282 Int)) )
))
(declare-datatypes ((Regex!9153 0))(
  ( (ElementMatch!9153 (c!483129 C!18492)) (Concat!14474 (regOne!18818 Regex!9153) (regTwo!18818 Regex!9153)) (EmptyExpr!9153) (Star!9153 (reg!9482 Regex!9153)) (EmptyLang!9153) (Union!9153 (regOne!18819 Regex!9153) (regTwo!18819 Regex!9153)) )
))
(declare-fun lt!1032068 () Regex!9153)

(declare-fun isEmptyLang!275 (Regex!9153) Bool)

(assert (=> b!2951139 (= res!1217641 (isEmptyLang!275 lt!1032068))))

(declare-fun b!2951140 () Bool)

(declare-fun res!1217646 () Bool)

(assert (=> b!2951140 (=> res!1217646 e!1858667)))

(declare-fun isEmptyExpr!356 (Regex!9153) Bool)

(assert (=> b!2951140 (= res!1217646 (isEmptyExpr!356 lt!1032068))))

(declare-fun b!2951141 () Bool)

(declare-fun res!1217642 () Bool)

(assert (=> b!2951141 (=> res!1217642 e!1858667)))

(declare-fun lt!1032067 () Regex!9153)

(assert (=> b!2951141 (= res!1217642 (isEmptyExpr!356 lt!1032067))))

(declare-fun res!1217639 () Bool)

(declare-fun e!1858665 () Bool)

(assert (=> start!286216 (=> (not res!1217639) (not e!1858665))))

(declare-fun r!17423 () Regex!9153)

(declare-fun validRegex!3886 (Regex!9153) Bool)

(assert (=> start!286216 (= res!1217639 (validRegex!3886 r!17423))))

(assert (=> start!286216 e!1858665))

(declare-fun e!1858663 () Bool)

(assert (=> start!286216 e!1858663))

(declare-fun e!1858662 () Bool)

(assert (=> start!286216 e!1858662))

(declare-fun b!2951142 () Bool)

(declare-fun e!1858664 () Bool)

(assert (=> b!2951142 (= e!1858665 (not e!1858664))))

(declare-fun res!1217645 () Bool)

(assert (=> b!2951142 (=> res!1217645 e!1858664)))

(declare-fun lt!1032069 () Bool)

(get-info :version)

(assert (=> b!2951142 (= res!1217645 (or lt!1032069 (not ((_ is Concat!14474) r!17423))))))

(declare-datatypes ((List!35018 0))(
  ( (Nil!34894) (Cons!34894 (h!40314 C!18492) (t!234083 List!35018)) )
))
(declare-fun s!11993 () List!35018)

(declare-fun matchRSpec!1290 (Regex!9153 List!35018) Bool)

(assert (=> b!2951142 (= lt!1032069 (matchRSpec!1290 r!17423 s!11993))))

(declare-fun matchR!4035 (Regex!9153 List!35018) Bool)

(assert (=> b!2951142 (= lt!1032069 (matchR!4035 r!17423 s!11993))))

(declare-datatypes ((Unit!48685 0))(
  ( (Unit!48686) )
))
(declare-fun lt!1032071 () Unit!48685)

(declare-fun mainMatchTheorem!1290 (Regex!9153 List!35018) Unit!48685)

(assert (=> b!2951142 (= lt!1032071 (mainMatchTheorem!1290 r!17423 s!11993))))

(declare-fun b!2951143 () Bool)

(declare-fun tp!943264 () Bool)

(declare-fun tp!943266 () Bool)

(assert (=> b!2951143 (= e!1858663 (and tp!943264 tp!943266))))

(declare-fun b!2951144 () Bool)

(declare-fun tp!943267 () Bool)

(declare-fun tp!943269 () Bool)

(assert (=> b!2951144 (= e!1858663 (and tp!943267 tp!943269))))

(declare-fun b!2951145 () Bool)

(declare-fun tp_is_empty!15869 () Bool)

(declare-fun tp!943268 () Bool)

(assert (=> b!2951145 (= e!1858662 (and tp_is_empty!15869 tp!943268))))

(declare-fun b!2951146 () Bool)

(assert (=> b!2951146 (= e!1858664 e!1858667)))

(declare-fun res!1217643 () Bool)

(assert (=> b!2951146 (=> res!1217643 e!1858667)))

(assert (=> b!2951146 (= res!1217643 (isEmptyLang!275 lt!1032067))))

(declare-fun simplify!158 (Regex!9153) Regex!9153)

(assert (=> b!2951146 (= lt!1032068 (simplify!158 (regTwo!18818 r!17423)))))

(assert (=> b!2951146 (= lt!1032067 (simplify!158 (regOne!18818 r!17423)))))

(declare-fun b!2951147 () Bool)

(declare-fun e!1858666 () Bool)

(assert (=> b!2951147 (= e!1858667 e!1858666)))

(declare-fun res!1217644 () Bool)

(assert (=> b!2951147 (=> res!1217644 e!1858666)))

(declare-fun lt!1032070 () Regex!9153)

(assert (=> b!2951147 (= res!1217644 (not (matchR!4035 lt!1032070 s!11993)))))

(assert (=> b!2951147 (= lt!1032070 (Concat!14474 lt!1032067 lt!1032068))))

(assert (=> b!2951148 (= e!1858666 true)))

(declare-fun lambda!109758 () Int)

(declare-datatypes ((tuple2!33824 0))(
  ( (tuple2!33825 (_1!20044 List!35018) (_2!20044 List!35018)) )
))
(declare-datatypes ((Option!6644 0))(
  ( (None!6643) (Some!6643 (v!34777 tuple2!33824)) )
))
(declare-fun isDefined!5195 (Option!6644) Bool)

(declare-fun findConcatSeparation!1038 (Regex!9153 Regex!9153 List!35018 List!35018 List!35018) Option!6644)

(declare-fun Exists!1485 (Int) Bool)

(assert (=> b!2951148 (= (isDefined!5195 (findConcatSeparation!1038 lt!1032067 lt!1032068 Nil!34894 s!11993 s!11993)) (Exists!1485 lambda!109758))))

(declare-fun lt!1032073 () Unit!48685)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!816 (Regex!9153 Regex!9153 List!35018) Unit!48685)

(assert (=> b!2951148 (= lt!1032073 (lemmaFindConcatSeparationEquivalentToExists!816 lt!1032067 lt!1032068 s!11993))))

(assert (=> b!2951148 (matchRSpec!1290 lt!1032070 s!11993)))

(declare-fun lt!1032072 () Unit!48685)

(assert (=> b!2951148 (= lt!1032072 (mainMatchTheorem!1290 lt!1032070 s!11993))))

(declare-fun b!2951149 () Bool)

(assert (=> b!2951149 (= e!1858663 tp_is_empty!15869)))

(declare-fun b!2951150 () Bool)

(declare-fun res!1217640 () Bool)

(assert (=> b!2951150 (=> res!1217640 e!1858664)))

(declare-fun isEmpty!19158 (List!35018) Bool)

(assert (=> b!2951150 (= res!1217640 (isEmpty!19158 s!11993))))

(declare-fun b!2951151 () Bool)

(declare-fun tp!943265 () Bool)

(assert (=> b!2951151 (= e!1858663 tp!943265)))

(assert (= (and start!286216 res!1217639) b!2951142))

(assert (= (and b!2951142 (not res!1217645)) b!2951150))

(assert (= (and b!2951150 (not res!1217640)) b!2951146))

(assert (= (and b!2951146 (not res!1217643)) b!2951139))

(assert (= (and b!2951139 (not res!1217641)) b!2951141))

(assert (= (and b!2951141 (not res!1217642)) b!2951140))

(assert (= (and b!2951140 (not res!1217646)) b!2951147))

(assert (= (and b!2951147 (not res!1217644)) b!2951148))

(assert (= (and start!286216 ((_ is ElementMatch!9153) r!17423)) b!2951149))

(assert (= (and start!286216 ((_ is Concat!14474) r!17423)) b!2951143))

(assert (= (and start!286216 ((_ is Star!9153) r!17423)) b!2951151))

(assert (= (and start!286216 ((_ is Union!9153) r!17423)) b!2951144))

(assert (= (and start!286216 ((_ is Cons!34894) s!11993)) b!2951145))

(declare-fun m!3329749 () Bool)

(assert (=> b!2951142 m!3329749))

(declare-fun m!3329751 () Bool)

(assert (=> b!2951142 m!3329751))

(declare-fun m!3329753 () Bool)

(assert (=> b!2951142 m!3329753))

(declare-fun m!3329755 () Bool)

(assert (=> start!286216 m!3329755))

(declare-fun m!3329757 () Bool)

(assert (=> b!2951139 m!3329757))

(declare-fun m!3329759 () Bool)

(assert (=> b!2951146 m!3329759))

(declare-fun m!3329761 () Bool)

(assert (=> b!2951146 m!3329761))

(declare-fun m!3329763 () Bool)

(assert (=> b!2951146 m!3329763))

(declare-fun m!3329765 () Bool)

(assert (=> b!2951141 m!3329765))

(declare-fun m!3329767 () Bool)

(assert (=> b!2951147 m!3329767))

(declare-fun m!3329769 () Bool)

(assert (=> b!2951150 m!3329769))

(declare-fun m!3329771 () Bool)

(assert (=> b!2951140 m!3329771))

(declare-fun m!3329773 () Bool)

(assert (=> b!2951148 m!3329773))

(declare-fun m!3329775 () Bool)

(assert (=> b!2951148 m!3329775))

(declare-fun m!3329777 () Bool)

(assert (=> b!2951148 m!3329777))

(assert (=> b!2951148 m!3329775))

(declare-fun m!3329779 () Bool)

(assert (=> b!2951148 m!3329779))

(declare-fun m!3329781 () Bool)

(assert (=> b!2951148 m!3329781))

(declare-fun m!3329783 () Bool)

(assert (=> b!2951148 m!3329783))

(check-sat (not b!2951146) (not b!2951150) (not b!2951139) (not b!2951142) (not b!2951140) (not b!2951144) (not b!2951151) (not b!2951143) (not b!2951145) (not b!2951147) (not b!2951148) tp_is_empty!15869 (not b!2951141) (not start!286216))
(check-sat)
