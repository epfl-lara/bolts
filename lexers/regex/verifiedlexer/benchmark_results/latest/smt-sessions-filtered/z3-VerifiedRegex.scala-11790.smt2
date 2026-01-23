; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664470 () Bool)

(assert start!664470)

(declare-fun b!6894778 () Bool)

(assert (=> b!6894778 true))

(assert (=> b!6894778 true))

(assert (=> b!6894778 true))

(declare-fun lambda!390860 () Int)

(declare-fun lambda!390859 () Int)

(assert (=> b!6894778 (not (= lambda!390860 lambda!390859))))

(assert (=> b!6894778 true))

(assert (=> b!6894778 true))

(assert (=> b!6894778 true))

(declare-fun b!6894760 () Bool)

(declare-fun res!2811002 () Bool)

(declare-fun e!4153085 () Bool)

(assert (=> b!6894760 (=> (not res!2811002) (not e!4153085))))

(declare-datatypes ((C!33924 0))(
  ( (C!33925 (val!26664 Int)) )
))
(declare-datatypes ((Regex!16827 0))(
  ( (ElementMatch!16827 (c!1281657 C!33924)) (Concat!25672 (regOne!34166 Regex!16827) (regTwo!34166 Regex!16827)) (EmptyExpr!16827) (Star!16827 (reg!17156 Regex!16827)) (EmptyLang!16827) (Union!16827 (regOne!34167 Regex!16827) (regTwo!34167 Regex!16827)) )
))
(declare-fun r3!135 () Regex!16827)

(declare-fun validRegex!8535 (Regex!16827) Bool)

(assert (=> b!6894760 (= res!2811002 (validRegex!8535 r3!135))))

(declare-fun b!6894762 () Bool)

(declare-fun e!4153083 () Bool)

(declare-fun tp!1897679 () Bool)

(assert (=> b!6894762 (= e!4153083 tp!1897679)))

(declare-fun b!6894763 () Bool)

(declare-fun e!4153084 () Bool)

(declare-fun tp!1897677 () Bool)

(declare-fun tp!1897685 () Bool)

(assert (=> b!6894763 (= e!4153084 (and tp!1897677 tp!1897685))))

(declare-fun b!6894764 () Bool)

(declare-fun e!4153086 () Bool)

(declare-fun tp!1897673 () Bool)

(declare-fun tp!1897672 () Bool)

(assert (=> b!6894764 (= e!4153086 (and tp!1897673 tp!1897672))))

(declare-fun b!6894765 () Bool)

(declare-fun tp!1897680 () Bool)

(declare-fun tp!1897678 () Bool)

(assert (=> b!6894765 (= e!4153084 (and tp!1897680 tp!1897678))))

(declare-fun b!6894766 () Bool)

(declare-fun tp_is_empty!42879 () Bool)

(assert (=> b!6894766 (= e!4153086 tp_is_empty!42879)))

(declare-fun b!6894767 () Bool)

(declare-fun tp!1897686 () Bool)

(declare-fun tp!1897674 () Bool)

(assert (=> b!6894767 (= e!4153083 (and tp!1897686 tp!1897674))))

(declare-fun b!6894768 () Bool)

(declare-fun e!4153082 () Bool)

(declare-fun tp!1897681 () Bool)

(assert (=> b!6894768 (= e!4153082 (and tp_is_empty!42879 tp!1897681))))

(declare-fun b!6894769 () Bool)

(declare-fun tp!1897687 () Bool)

(declare-fun tp!1897683 () Bool)

(assert (=> b!6894769 (= e!4153086 (and tp!1897687 tp!1897683))))

(declare-fun b!6894770 () Bool)

(assert (=> b!6894770 (= e!4153084 tp_is_empty!42879)))

(declare-fun b!6894771 () Bool)

(declare-fun tp!1897676 () Bool)

(assert (=> b!6894771 (= e!4153084 tp!1897676)))

(declare-fun res!2811001 () Bool)

(assert (=> start!664470 (=> (not res!2811001) (not e!4153085))))

(declare-fun r1!6342 () Regex!16827)

(assert (=> start!664470 (= res!2811001 (validRegex!8535 r1!6342))))

(assert (=> start!664470 e!4153085))

(assert (=> start!664470 e!4153083))

(assert (=> start!664470 e!4153086))

(assert (=> start!664470 e!4153084))

(assert (=> start!664470 e!4153082))

(declare-fun b!6894761 () Bool)

(declare-fun e!4153079 () Bool)

(declare-fun e!4153081 () Bool)

(assert (=> b!6894761 (= e!4153079 e!4153081)))

(declare-fun res!2811004 () Bool)

(assert (=> b!6894761 (=> res!2811004 e!4153081)))

(declare-datatypes ((List!66584 0))(
  ( (Nil!66460) (Cons!66460 (h!72908 C!33924) (t!380327 List!66584)) )
))
(declare-datatypes ((tuple2!67388 0))(
  ( (tuple2!67389 (_1!36997 List!66584) (_2!36997 List!66584)) )
))
(declare-datatypes ((Option!16606 0))(
  ( (None!16605) (Some!16605 (v!52877 tuple2!67388)) )
))
(declare-fun lt!2463545 () Option!16606)

(declare-fun isDefined!13309 (Option!16606) Bool)

(assert (=> b!6894761 (= res!2811004 (not (isDefined!13309 lt!2463545)))))

(declare-fun lt!2463543 () Regex!16827)

(declare-fun s!14361 () List!66584)

(declare-fun findConcatSeparation!3020 (Regex!16827 Regex!16827 List!66584 List!66584 List!66584) Option!16606)

(assert (=> b!6894761 (= lt!2463545 (findConcatSeparation!3020 r1!6342 lt!2463543 Nil!66460 s!14361 s!14361))))

(declare-fun b!6894772 () Bool)

(assert (=> b!6894772 (= e!4153083 tp_is_empty!42879)))

(declare-fun b!6894773 () Bool)

(declare-fun res!2811005 () Bool)

(declare-fun e!4153080 () Bool)

(assert (=> b!6894773 (=> res!2811005 e!4153080)))

(declare-fun lt!2463551 () tuple2!67388)

(declare-fun matchR!8972 (Regex!16827 List!66584) Bool)

(assert (=> b!6894773 (= res!2811005 (not (matchR!8972 lt!2463543 (_2!36997 lt!2463551))))))

(declare-fun b!6894774 () Bool)

(declare-fun tp!1897675 () Bool)

(declare-fun tp!1897682 () Bool)

(assert (=> b!6894774 (= e!4153083 (and tp!1897675 tp!1897682))))

(declare-fun b!6894775 () Bool)

(assert (=> b!6894775 (= e!4153085 (not e!4153079))))

(declare-fun res!2811000 () Bool)

(assert (=> b!6894775 (=> res!2811000 e!4153079)))

(declare-fun lt!2463553 () Bool)

(assert (=> b!6894775 (= res!2811000 lt!2463553)))

(declare-fun lt!2463552 () Regex!16827)

(declare-fun matchRSpec!3890 (Regex!16827 List!66584) Bool)

(assert (=> b!6894775 (= (matchR!8972 lt!2463552 s!14361) (matchRSpec!3890 lt!2463552 s!14361))))

(declare-datatypes ((Unit!160374 0))(
  ( (Unit!160375) )
))
(declare-fun lt!2463548 () Unit!160374)

(declare-fun mainMatchTheorem!3890 (Regex!16827 List!66584) Unit!160374)

(assert (=> b!6894775 (= lt!2463548 (mainMatchTheorem!3890 lt!2463552 s!14361))))

(declare-fun lt!2463547 () Regex!16827)

(assert (=> b!6894775 (= lt!2463553 (matchRSpec!3890 lt!2463547 s!14361))))

(assert (=> b!6894775 (= lt!2463553 (matchR!8972 lt!2463547 s!14361))))

(declare-fun lt!2463544 () Unit!160374)

(assert (=> b!6894775 (= lt!2463544 (mainMatchTheorem!3890 lt!2463547 s!14361))))

(assert (=> b!6894775 (= lt!2463552 (Concat!25672 r1!6342 lt!2463543))))

(declare-fun r2!6280 () Regex!16827)

(assert (=> b!6894775 (= lt!2463543 (Concat!25672 r2!6280 r3!135))))

(assert (=> b!6894775 (= lt!2463547 (Concat!25672 (Concat!25672 r1!6342 r2!6280) r3!135))))

(declare-fun b!6894776 () Bool)

(assert (=> b!6894776 (= e!4153080 true)))

(declare-fun b!6894777 () Bool)

(declare-fun res!2811003 () Bool)

(assert (=> b!6894777 (=> (not res!2811003) (not e!4153085))))

(assert (=> b!6894777 (= res!2811003 (validRegex!8535 r2!6280))))

(assert (=> b!6894778 (= e!4153081 e!4153080)))

(declare-fun res!2811006 () Bool)

(assert (=> b!6894778 (=> res!2811006 e!4153080)))

(declare-fun lt!2463546 () Bool)

(assert (=> b!6894778 (= res!2811006 (not lt!2463546))))

(assert (=> b!6894778 (= lt!2463546 (matchRSpec!3890 r1!6342 (_1!36997 lt!2463551)))))

(assert (=> b!6894778 (= lt!2463546 (matchR!8972 r1!6342 (_1!36997 lt!2463551)))))

(declare-fun lt!2463550 () Unit!160374)

(assert (=> b!6894778 (= lt!2463550 (mainMatchTheorem!3890 r1!6342 (_1!36997 lt!2463551)))))

(declare-fun get!23191 (Option!16606) tuple2!67388)

(assert (=> b!6894778 (= lt!2463551 (get!23191 lt!2463545))))

(declare-fun Exists!3835 (Int) Bool)

(assert (=> b!6894778 (= (Exists!3835 lambda!390859) (Exists!3835 lambda!390860))))

(declare-fun lt!2463542 () Unit!160374)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2308 (Regex!16827 Regex!16827 List!66584) Unit!160374)

(assert (=> b!6894778 (= lt!2463542 (lemmaExistCutMatchRandMatchRSpecEquivalent!2308 r1!6342 lt!2463543 s!14361))))

(assert (=> b!6894778 (Exists!3835 lambda!390859)))

(declare-fun lt!2463549 () Unit!160374)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2782 (Regex!16827 Regex!16827 List!66584) Unit!160374)

(assert (=> b!6894778 (= lt!2463549 (lemmaFindConcatSeparationEquivalentToExists!2782 r1!6342 lt!2463543 s!14361))))

(declare-fun b!6894779 () Bool)

(declare-fun tp!1897684 () Bool)

(assert (=> b!6894779 (= e!4153086 tp!1897684)))

(assert (= (and start!664470 res!2811001) b!6894777))

(assert (= (and b!6894777 res!2811003) b!6894760))

(assert (= (and b!6894760 res!2811002) b!6894775))

(assert (= (and b!6894775 (not res!2811000)) b!6894761))

(assert (= (and b!6894761 (not res!2811004)) b!6894778))

(assert (= (and b!6894778 (not res!2811006)) b!6894773))

(assert (= (and b!6894773 (not res!2811005)) b!6894776))

(get-info :version)

(assert (= (and start!664470 ((_ is ElementMatch!16827) r1!6342)) b!6894772))

(assert (= (and start!664470 ((_ is Concat!25672) r1!6342)) b!6894767))

(assert (= (and start!664470 ((_ is Star!16827) r1!6342)) b!6894762))

(assert (= (and start!664470 ((_ is Union!16827) r1!6342)) b!6894774))

(assert (= (and start!664470 ((_ is ElementMatch!16827) r2!6280)) b!6894766))

(assert (= (and start!664470 ((_ is Concat!25672) r2!6280)) b!6894764))

(assert (= (and start!664470 ((_ is Star!16827) r2!6280)) b!6894779))

(assert (= (and start!664470 ((_ is Union!16827) r2!6280)) b!6894769))

(assert (= (and start!664470 ((_ is ElementMatch!16827) r3!135)) b!6894770))

(assert (= (and start!664470 ((_ is Concat!25672) r3!135)) b!6894765))

(assert (= (and start!664470 ((_ is Star!16827) r3!135)) b!6894771))

(assert (= (and start!664470 ((_ is Union!16827) r3!135)) b!6894763))

(assert (= (and start!664470 ((_ is Cons!66460) s!14361)) b!6894768))

(declare-fun m!7614424 () Bool)

(assert (=> b!6894773 m!7614424))

(declare-fun m!7614426 () Bool)

(assert (=> start!664470 m!7614426))

(declare-fun m!7614428 () Bool)

(assert (=> b!6894761 m!7614428))

(declare-fun m!7614430 () Bool)

(assert (=> b!6894761 m!7614430))

(declare-fun m!7614432 () Bool)

(assert (=> b!6894775 m!7614432))

(declare-fun m!7614434 () Bool)

(assert (=> b!6894775 m!7614434))

(declare-fun m!7614436 () Bool)

(assert (=> b!6894775 m!7614436))

(declare-fun m!7614438 () Bool)

(assert (=> b!6894775 m!7614438))

(declare-fun m!7614440 () Bool)

(assert (=> b!6894775 m!7614440))

(declare-fun m!7614442 () Bool)

(assert (=> b!6894775 m!7614442))

(declare-fun m!7614444 () Bool)

(assert (=> b!6894760 m!7614444))

(declare-fun m!7614446 () Bool)

(assert (=> b!6894777 m!7614446))

(declare-fun m!7614448 () Bool)

(assert (=> b!6894778 m!7614448))

(declare-fun m!7614450 () Bool)

(assert (=> b!6894778 m!7614450))

(declare-fun m!7614452 () Bool)

(assert (=> b!6894778 m!7614452))

(assert (=> b!6894778 m!7614450))

(declare-fun m!7614454 () Bool)

(assert (=> b!6894778 m!7614454))

(declare-fun m!7614456 () Bool)

(assert (=> b!6894778 m!7614456))

(declare-fun m!7614458 () Bool)

(assert (=> b!6894778 m!7614458))

(declare-fun m!7614460 () Bool)

(assert (=> b!6894778 m!7614460))

(declare-fun m!7614462 () Bool)

(assert (=> b!6894778 m!7614462))

(check-sat (not b!6894769) (not b!6894773) (not start!664470) (not b!6894779) (not b!6894778) (not b!6894768) (not b!6894775) (not b!6894765) (not b!6894762) (not b!6894763) (not b!6894767) (not b!6894761) (not b!6894771) tp_is_empty!42879 (not b!6894760) (not b!6894764) (not b!6894774) (not b!6894777))
(check-sat)
