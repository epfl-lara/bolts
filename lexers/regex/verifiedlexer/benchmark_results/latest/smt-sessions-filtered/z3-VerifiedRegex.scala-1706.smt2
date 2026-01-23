; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85650 () Bool)

(assert start!85650)

(declare-fun b!961694 () Bool)

(declare-fun e!621117 () Bool)

(declare-fun lt!346876 () Bool)

(assert (=> b!961694 (= e!621117 lt!346876)))

(declare-datatypes ((C!5912 0))(
  ( (C!5913 (val!3204 Int)) )
))
(declare-datatypes ((Regex!2671 0))(
  ( (ElementMatch!2671 (c!156640 C!5912)) (Concat!4504 (regOne!5854 Regex!2671) (regTwo!5854 Regex!2671)) (EmptyExpr!2671) (Star!2671 (reg!3000 Regex!2671)) (EmptyLang!2671) (Union!2671 (regOne!5855 Regex!2671) (regTwo!5855 Regex!2671)) )
))
(declare-fun lt!346884 () Regex!2671)

(declare-datatypes ((List!9901 0))(
  ( (Nil!9885) (Cons!9885 (h!15286 C!5912) (t!100947 List!9901)) )
))
(declare-fun s!10566 () List!9901)

(declare-fun matchR!1209 (Regex!2671 List!9901) Bool)

(assert (=> b!961694 (= lt!346876 (matchR!1209 lt!346884 s!10566))))

(declare-fun r!15766 () Regex!2671)

(assert (=> b!961694 (= lt!346876 (matchR!1209 (regTwo!5855 r!15766) s!10566))))

(declare-datatypes ((Unit!14997 0))(
  ( (Unit!14998) )
))
(declare-fun lt!346882 () Unit!14997)

(declare-fun lemmaRemoveUselessConcatSound!176 (Regex!2671 List!9901) Unit!14997)

(assert (=> b!961694 (= lt!346882 (lemmaRemoveUselessConcatSound!176 (regTwo!5855 r!15766) s!10566))))

(declare-fun b!961695 () Bool)

(declare-fun e!621121 () Bool)

(declare-fun e!621119 () Bool)

(assert (=> b!961695 (= e!621121 (not e!621119))))

(declare-fun res!437066 () Bool)

(assert (=> b!961695 (=> res!437066 e!621119)))

(declare-fun lt!346877 () Bool)

(get-info :version)

(assert (=> b!961695 (= res!437066 (or lt!346877 (and ((_ is Concat!4504) r!15766) ((_ is EmptyExpr!2671) (regOne!5854 r!15766))) (and ((_ is Concat!4504) r!15766) ((_ is EmptyExpr!2671) (regTwo!5854 r!15766))) ((_ is Concat!4504) r!15766) (not ((_ is Union!2671) r!15766))))))

(declare-fun matchRSpec!472 (Regex!2671 List!9901) Bool)

(assert (=> b!961695 (= lt!346877 (matchRSpec!472 r!15766 s!10566))))

(assert (=> b!961695 (= lt!346877 (matchR!1209 r!15766 s!10566))))

(declare-fun lt!346879 () Unit!14997)

(declare-fun mainMatchTheorem!472 (Regex!2671 List!9901) Unit!14997)

(assert (=> b!961695 (= lt!346879 (mainMatchTheorem!472 r!15766 s!10566))))

(declare-fun b!961696 () Bool)

(declare-fun e!621118 () Bool)

(assert (=> b!961696 (= e!621118 e!621117)))

(declare-fun res!437062 () Bool)

(assert (=> b!961696 (=> res!437062 e!621117)))

(declare-fun lt!346881 () Bool)

(assert (=> b!961696 (= res!437062 lt!346881)))

(declare-fun e!621116 () Bool)

(assert (=> b!961696 e!621116))

(declare-fun res!437063 () Bool)

(assert (=> b!961696 (=> res!437063 e!621116)))

(assert (=> b!961696 (= res!437063 lt!346881)))

(declare-fun lt!346878 () Regex!2671)

(assert (=> b!961696 (= lt!346881 (matchR!1209 lt!346878 s!10566))))

(declare-fun lt!346880 () Unit!14997)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!66 (Regex!2671 Regex!2671 List!9901) Unit!14997)

(assert (=> b!961696 (= lt!346880 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!66 lt!346878 lt!346884 s!10566))))

(declare-fun lt!346883 () Regex!2671)

(assert (=> b!961696 (matchRSpec!472 lt!346883 s!10566)))

(declare-fun lt!346885 () Unit!14997)

(assert (=> b!961696 (= lt!346885 (mainMatchTheorem!472 lt!346883 s!10566))))

(declare-fun b!961697 () Bool)

(declare-fun e!621120 () Bool)

(declare-fun tp_is_empty!4985 () Bool)

(declare-fun tp!295632 () Bool)

(assert (=> b!961697 (= e!621120 (and tp_is_empty!4985 tp!295632))))

(declare-fun b!961698 () Bool)

(declare-fun e!621115 () Bool)

(declare-fun tp!295629 () Bool)

(declare-fun tp!295628 () Bool)

(assert (=> b!961698 (= e!621115 (and tp!295629 tp!295628))))

(declare-fun b!961699 () Bool)

(assert (=> b!961699 (= e!621115 tp_is_empty!4985)))

(declare-fun b!961700 () Bool)

(declare-fun tp!295631 () Bool)

(declare-fun tp!295630 () Bool)

(assert (=> b!961700 (= e!621115 (and tp!295631 tp!295630))))

(declare-fun res!437065 () Bool)

(assert (=> start!85650 (=> (not res!437065) (not e!621121))))

(declare-fun validRegex!1140 (Regex!2671) Bool)

(assert (=> start!85650 (= res!437065 (validRegex!1140 r!15766))))

(assert (=> start!85650 e!621121))

(assert (=> start!85650 e!621115))

(assert (=> start!85650 e!621120))

(declare-fun b!961701 () Bool)

(declare-fun tp!295627 () Bool)

(assert (=> b!961701 (= e!621115 tp!295627)))

(declare-fun b!961702 () Bool)

(assert (=> b!961702 (= e!621119 e!621118)))

(declare-fun res!437064 () Bool)

(assert (=> b!961702 (=> res!437064 e!621118)))

(assert (=> b!961702 (= res!437064 (not (matchR!1209 lt!346883 s!10566)))))

(assert (=> b!961702 (= lt!346883 (Union!2671 lt!346878 lt!346884))))

(declare-fun removeUselessConcat!318 (Regex!2671) Regex!2671)

(assert (=> b!961702 (= lt!346884 (removeUselessConcat!318 (regTwo!5855 r!15766)))))

(assert (=> b!961702 (= lt!346878 (removeUselessConcat!318 (regOne!5855 r!15766)))))

(declare-fun b!961703 () Bool)

(assert (=> b!961703 (= e!621116 (matchR!1209 lt!346884 s!10566))))

(assert (= (and start!85650 res!437065) b!961695))

(assert (= (and b!961695 (not res!437066)) b!961702))

(assert (= (and b!961702 (not res!437064)) b!961696))

(assert (= (and b!961696 (not res!437063)) b!961703))

(assert (= (and b!961696 (not res!437062)) b!961694))

(assert (= (and start!85650 ((_ is ElementMatch!2671) r!15766)) b!961699))

(assert (= (and start!85650 ((_ is Concat!4504) r!15766)) b!961700))

(assert (= (and start!85650 ((_ is Star!2671) r!15766)) b!961701))

(assert (= (and start!85650 ((_ is Union!2671) r!15766)) b!961698))

(assert (= (and start!85650 ((_ is Cons!9885) s!10566)) b!961697))

(declare-fun m!1169553 () Bool)

(assert (=> start!85650 m!1169553))

(declare-fun m!1169555 () Bool)

(assert (=> b!961703 m!1169555))

(declare-fun m!1169557 () Bool)

(assert (=> b!961696 m!1169557))

(declare-fun m!1169559 () Bool)

(assert (=> b!961696 m!1169559))

(declare-fun m!1169561 () Bool)

(assert (=> b!961696 m!1169561))

(declare-fun m!1169563 () Bool)

(assert (=> b!961696 m!1169563))

(declare-fun m!1169565 () Bool)

(assert (=> b!961695 m!1169565))

(declare-fun m!1169567 () Bool)

(assert (=> b!961695 m!1169567))

(declare-fun m!1169569 () Bool)

(assert (=> b!961695 m!1169569))

(declare-fun m!1169571 () Bool)

(assert (=> b!961702 m!1169571))

(declare-fun m!1169573 () Bool)

(assert (=> b!961702 m!1169573))

(declare-fun m!1169575 () Bool)

(assert (=> b!961702 m!1169575))

(assert (=> b!961694 m!1169555))

(declare-fun m!1169577 () Bool)

(assert (=> b!961694 m!1169577))

(declare-fun m!1169579 () Bool)

(assert (=> b!961694 m!1169579))

(check-sat (not b!961701) (not b!961697) (not b!961700) (not b!961703) tp_is_empty!4985 (not b!961702) (not b!961696) (not b!961698) (not b!961695) (not b!961694) (not start!85650))
(check-sat)
