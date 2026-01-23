; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288168 () Bool)

(assert start!288168)

(declare-fun b!2981771 () Bool)

(assert (=> b!2981771 true))

(assert (=> b!2981771 true))

(assert (=> b!2981771 true))

(declare-fun lambda!111218 () Int)

(declare-fun lambda!111217 () Int)

(assert (=> b!2981771 (not (= lambda!111218 lambda!111217))))

(assert (=> b!2981771 true))

(assert (=> b!2981771 true))

(assert (=> b!2981771 true))

(declare-fun b!2981769 () Bool)

(declare-fun e!1875240 () Bool)

(declare-fun tp!949193 () Bool)

(declare-fun tp!949197 () Bool)

(assert (=> b!2981769 (= e!1875240 (and tp!949193 tp!949197))))

(declare-fun b!2981770 () Bool)

(declare-fun e!1875244 () Bool)

(assert (=> b!2981770 (= e!1875244 true)))

(declare-fun lt!1038251 () Int)

(declare-datatypes ((C!18796 0))(
  ( (C!18797 (val!11434 Int)) )
))
(declare-datatypes ((List!35170 0))(
  ( (Nil!35046) (Cons!35046 (h!40466 C!18796) (t!234235 List!35170)) )
))
(declare-datatypes ((tuple2!33948 0))(
  ( (tuple2!33949 (_1!20106 List!35170) (_2!20106 List!35170)) )
))
(declare-fun lt!1038254 () tuple2!33948)

(declare-fun size!26477 (List!35170) Int)

(assert (=> b!2981770 (= lt!1038251 (size!26477 (_1!20106 lt!1038254)))))

(declare-fun e!1875245 () Bool)

(declare-fun e!1875246 () Bool)

(assert (=> b!2981771 (= e!1875245 e!1875246)))

(declare-fun res!1229633 () Bool)

(assert (=> b!2981771 (=> res!1229633 e!1875246)))

(declare-fun lt!1038255 () Bool)

(assert (=> b!2981771 (= res!1229633 (not lt!1038255))))

(declare-fun Exists!1585 (Int) Bool)

(assert (=> b!2981771 (= (Exists!1585 lambda!111217) (Exists!1585 lambda!111218))))

(declare-datatypes ((Unit!48989 0))(
  ( (Unit!48990) )
))
(declare-fun lt!1038256 () Unit!48989)

(declare-datatypes ((Regex!9305 0))(
  ( (ElementMatch!9305 (c!489785 C!18796)) (Concat!14626 (regOne!19122 Regex!9305) (regTwo!19122 Regex!9305)) (EmptyExpr!9305) (Star!9305 (reg!9634 Regex!9305)) (EmptyLang!9305) (Union!9305 (regOne!19123 Regex!9305) (regTwo!19123 Regex!9305)) )
))
(declare-fun lt!1038245 () Regex!9305)

(declare-fun s!11993 () List!35170)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!270 (Regex!9305 List!35170) Unit!48989)

(assert (=> b!2981771 (= lt!1038256 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!270 lt!1038245 s!11993))))

(assert (=> b!2981771 (= lt!1038255 (Exists!1585 lambda!111217))))

(declare-datatypes ((Option!6706 0))(
  ( (None!6705) (Some!6705 (v!34839 tuple2!33948)) )
))
(declare-fun lt!1038250 () Option!6706)

(declare-fun isDefined!5257 (Option!6706) Bool)

(assert (=> b!2981771 (= lt!1038255 (isDefined!5257 lt!1038250))))

(declare-fun lt!1038248 () Regex!9305)

(declare-fun findConcatSeparation!1100 (Regex!9305 Regex!9305 List!35170 List!35170 List!35170) Option!6706)

(assert (=> b!2981771 (= lt!1038250 (findConcatSeparation!1100 lt!1038245 lt!1038248 Nil!35046 s!11993 s!11993))))

(declare-fun lt!1038246 () Unit!48989)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!878 (Regex!9305 Regex!9305 List!35170) Unit!48989)

(assert (=> b!2981771 (= lt!1038246 (lemmaFindConcatSeparationEquivalentToExists!878 lt!1038245 lt!1038248 s!11993))))

(declare-fun b!2981772 () Bool)

(declare-fun e!1875242 () Bool)

(assert (=> b!2981772 (= e!1875242 e!1875245)))

(declare-fun res!1229634 () Bool)

(assert (=> b!2981772 (=> res!1229634 e!1875245)))

(declare-fun isEmpty!19305 (List!35170) Bool)

(assert (=> b!2981772 (= res!1229634 (isEmpty!19305 s!11993))))

(declare-fun matchRSpec!1442 (Regex!9305 List!35170) Bool)

(assert (=> b!2981772 (matchRSpec!1442 lt!1038248 s!11993)))

(declare-fun lt!1038249 () Unit!48989)

(declare-fun mainMatchTheorem!1442 (Regex!9305 List!35170) Unit!48989)

(assert (=> b!2981772 (= lt!1038249 (mainMatchTheorem!1442 lt!1038248 s!11993))))

(declare-fun b!2981773 () Bool)

(declare-fun e!1875243 () Bool)

(declare-fun e!1875247 () Bool)

(assert (=> b!2981773 (= e!1875243 (not e!1875247))))

(declare-fun res!1229641 () Bool)

(assert (=> b!2981773 (=> res!1229641 e!1875247)))

(declare-fun lt!1038253 () Bool)

(declare-fun r!17423 () Regex!9305)

(get-info :version)

(assert (=> b!2981773 (= res!1229641 (or lt!1038253 ((_ is Concat!14626) r!17423) ((_ is Union!9305) r!17423) (not ((_ is Star!9305) r!17423))))))

(assert (=> b!2981773 (= lt!1038253 (matchRSpec!1442 r!17423 s!11993))))

(declare-fun matchR!4187 (Regex!9305 List!35170) Bool)

(assert (=> b!2981773 (= lt!1038253 (matchR!4187 r!17423 s!11993))))

(declare-fun lt!1038247 () Unit!48989)

(assert (=> b!2981773 (= lt!1038247 (mainMatchTheorem!1442 r!17423 s!11993))))

(declare-fun b!2981774 () Bool)

(declare-fun e!1875238 () Bool)

(assert (=> b!2981774 (= e!1875247 e!1875238)))

(declare-fun res!1229635 () Bool)

(assert (=> b!2981774 (=> res!1229635 e!1875238)))

(declare-fun isEmptyLang!419 (Regex!9305) Bool)

(assert (=> b!2981774 (= res!1229635 (isEmptyLang!419 lt!1038245))))

(declare-fun simplify!306 (Regex!9305) Regex!9305)

(assert (=> b!2981774 (= lt!1038245 (simplify!306 (reg!9634 r!17423)))))

(declare-fun b!2981775 () Bool)

(declare-fun tp!949192 () Bool)

(declare-fun tp!949194 () Bool)

(assert (=> b!2981775 (= e!1875240 (and tp!949192 tp!949194))))

(declare-fun b!2981776 () Bool)

(declare-fun e!1875241 () Bool)

(assert (=> b!2981776 (= e!1875241 e!1875244)))

(declare-fun res!1229642 () Bool)

(assert (=> b!2981776 (=> res!1229642 e!1875244)))

(assert (=> b!2981776 (= res!1229642 (not (= (size!26477 (_2!20106 lt!1038254)) (size!26477 s!11993))))))

(assert (=> b!2981776 (matchR!4187 (reg!9634 r!17423) (_1!20106 lt!1038254))))

(declare-fun lt!1038252 () Unit!48989)

(declare-fun lemmaSimplifySound!170 (Regex!9305 List!35170) Unit!48989)

(assert (=> b!2981776 (= lt!1038252 (lemmaSimplifySound!170 (reg!9634 r!17423) (_1!20106 lt!1038254)))))

(declare-fun b!2981777 () Bool)

(assert (=> b!2981777 (= e!1875238 e!1875242)))

(declare-fun res!1229637 () Bool)

(assert (=> b!2981777 (=> res!1229637 e!1875242)))

(assert (=> b!2981777 (= res!1229637 (not (matchR!4187 lt!1038248 s!11993)))))

(assert (=> b!2981777 (= lt!1038248 (Star!9305 lt!1038245))))

(declare-fun b!2981778 () Bool)

(declare-fun e!1875239 () Bool)

(declare-fun tp_is_empty!16173 () Bool)

(declare-fun tp!949196 () Bool)

(assert (=> b!2981778 (= e!1875239 (and tp_is_empty!16173 tp!949196))))

(declare-fun res!1229638 () Bool)

(assert (=> start!288168 (=> (not res!1229638) (not e!1875243))))

(declare-fun validRegex!4038 (Regex!9305) Bool)

(assert (=> start!288168 (= res!1229638 (validRegex!4038 r!17423))))

(assert (=> start!288168 e!1875243))

(assert (=> start!288168 e!1875240))

(assert (=> start!288168 e!1875239))

(declare-fun b!2981779 () Bool)

(declare-fun tp!949195 () Bool)

(assert (=> b!2981779 (= e!1875240 tp!949195)))

(declare-fun b!2981780 () Bool)

(declare-fun res!1229640 () Bool)

(assert (=> b!2981780 (=> res!1229640 e!1875244)))

(declare-fun ++!8369 (List!35170 List!35170) List!35170)

(assert (=> b!2981780 (= res!1229640 (not (= (++!8369 (_1!20106 lt!1038254) (_2!20106 lt!1038254)) s!11993)))))

(declare-fun b!2981781 () Bool)

(declare-fun res!1229636 () Bool)

(assert (=> b!2981781 (=> res!1229636 e!1875241)))

(assert (=> b!2981781 (= res!1229636 (not (matchR!4187 lt!1038248 (_2!20106 lt!1038254))))))

(declare-fun b!2981782 () Bool)

(assert (=> b!2981782 (= e!1875246 e!1875241)))

(declare-fun res!1229639 () Bool)

(assert (=> b!2981782 (=> res!1229639 e!1875241)))

(assert (=> b!2981782 (= res!1229639 (not (matchR!4187 lt!1038245 (_1!20106 lt!1038254))))))

(declare-fun get!10826 (Option!6706) tuple2!33948)

(assert (=> b!2981782 (= lt!1038254 (get!10826 lt!1038250))))

(declare-fun b!2981783 () Bool)

(assert (=> b!2981783 (= e!1875240 tp_is_empty!16173)))

(assert (= (and start!288168 res!1229638) b!2981773))

(assert (= (and b!2981773 (not res!1229641)) b!2981774))

(assert (= (and b!2981774 (not res!1229635)) b!2981777))

(assert (= (and b!2981777 (not res!1229637)) b!2981772))

(assert (= (and b!2981772 (not res!1229634)) b!2981771))

(assert (= (and b!2981771 (not res!1229633)) b!2981782))

(assert (= (and b!2981782 (not res!1229639)) b!2981781))

(assert (= (and b!2981781 (not res!1229636)) b!2981776))

(assert (= (and b!2981776 (not res!1229642)) b!2981780))

(assert (= (and b!2981780 (not res!1229640)) b!2981770))

(assert (= (and start!288168 ((_ is ElementMatch!9305) r!17423)) b!2981783))

(assert (= (and start!288168 ((_ is Concat!14626) r!17423)) b!2981775))

(assert (= (and start!288168 ((_ is Star!9305) r!17423)) b!2981779))

(assert (= (and start!288168 ((_ is Union!9305) r!17423)) b!2981769))

(assert (= (and start!288168 ((_ is Cons!35046) s!11993)) b!2981778))

(declare-fun m!3342571 () Bool)

(assert (=> b!2981773 m!3342571))

(declare-fun m!3342573 () Bool)

(assert (=> b!2981773 m!3342573))

(declare-fun m!3342575 () Bool)

(assert (=> b!2981773 m!3342575))

(declare-fun m!3342577 () Bool)

(assert (=> b!2981770 m!3342577))

(declare-fun m!3342579 () Bool)

(assert (=> start!288168 m!3342579))

(declare-fun m!3342581 () Bool)

(assert (=> b!2981777 m!3342581))

(declare-fun m!3342583 () Bool)

(assert (=> b!2981782 m!3342583))

(declare-fun m!3342585 () Bool)

(assert (=> b!2981782 m!3342585))

(declare-fun m!3342587 () Bool)

(assert (=> b!2981771 m!3342587))

(declare-fun m!3342589 () Bool)

(assert (=> b!2981771 m!3342589))

(assert (=> b!2981771 m!3342589))

(declare-fun m!3342591 () Bool)

(assert (=> b!2981771 m!3342591))

(declare-fun m!3342593 () Bool)

(assert (=> b!2981771 m!3342593))

(declare-fun m!3342595 () Bool)

(assert (=> b!2981771 m!3342595))

(declare-fun m!3342597 () Bool)

(assert (=> b!2981771 m!3342597))

(declare-fun m!3342599 () Bool)

(assert (=> b!2981776 m!3342599))

(declare-fun m!3342601 () Bool)

(assert (=> b!2981776 m!3342601))

(declare-fun m!3342603 () Bool)

(assert (=> b!2981776 m!3342603))

(declare-fun m!3342605 () Bool)

(assert (=> b!2981776 m!3342605))

(declare-fun m!3342607 () Bool)

(assert (=> b!2981772 m!3342607))

(declare-fun m!3342609 () Bool)

(assert (=> b!2981772 m!3342609))

(declare-fun m!3342611 () Bool)

(assert (=> b!2981772 m!3342611))

(declare-fun m!3342613 () Bool)

(assert (=> b!2981780 m!3342613))

(declare-fun m!3342615 () Bool)

(assert (=> b!2981781 m!3342615))

(declare-fun m!3342617 () Bool)

(assert (=> b!2981774 m!3342617))

(declare-fun m!3342619 () Bool)

(assert (=> b!2981774 m!3342619))

(check-sat (not b!2981770) (not b!2981782) (not b!2981773) (not b!2981769) (not b!2981780) (not start!288168) tp_is_empty!16173 (not b!2981778) (not b!2981781) (not b!2981771) (not b!2981779) (not b!2981774) (not b!2981775) (not b!2981772) (not b!2981777) (not b!2981776))
(check-sat)
