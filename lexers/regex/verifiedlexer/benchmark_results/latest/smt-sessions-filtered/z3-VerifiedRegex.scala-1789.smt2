; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89286 () Bool)

(assert start!89286)

(declare-fun b!1025702 () Bool)

(declare-fun e!654459 () Bool)

(declare-fun e!654458 () Bool)

(assert (=> b!1025702 (= e!654459 (not e!654458))))

(declare-fun res!460802 () Bool)

(assert (=> b!1025702 (=> res!460802 e!654458)))

(declare-fun lt!355123 () Bool)

(declare-datatypes ((C!6244 0))(
  ( (C!6245 (val!3370 Int)) )
))
(declare-datatypes ((Regex!2837 0))(
  ( (ElementMatch!2837 (c!170084 C!6244)) (Concat!4670 (regOne!6186 Regex!2837) (regTwo!6186 Regex!2837)) (EmptyExpr!2837) (Star!2837 (reg!3166 Regex!2837)) (EmptyLang!2837) (Union!2837 (regOne!6187 Regex!2837) (regTwo!6187 Regex!2837)) )
))
(declare-fun r!15766 () Regex!2837)

(get-info :version)

(assert (=> b!1025702 (= res!460802 (or lt!355123 (and ((_ is Concat!4670) r!15766) ((_ is EmptyExpr!2837) (regOne!6186 r!15766))) (not ((_ is Concat!4670) r!15766)) (not ((_ is EmptyExpr!2837) (regTwo!6186 r!15766)))))))

(declare-datatypes ((List!10067 0))(
  ( (Nil!10051) (Cons!10051 (h!15452 C!6244) (t!101113 List!10067)) )
))
(declare-fun s!10566 () List!10067)

(declare-fun matchRSpec!636 (Regex!2837 List!10067) Bool)

(assert (=> b!1025702 (= lt!355123 (matchRSpec!636 r!15766 s!10566))))

(declare-fun matchR!1373 (Regex!2837 List!10067) Bool)

(assert (=> b!1025702 (= lt!355123 (matchR!1373 r!15766 s!10566))))

(declare-datatypes ((Unit!15349 0))(
  ( (Unit!15350) )
))
(declare-fun lt!355122 () Unit!15349)

(declare-fun mainMatchTheorem!636 (Regex!2837 List!10067) Unit!15349)

(assert (=> b!1025702 (= lt!355122 (mainMatchTheorem!636 r!15766 s!10566))))

(declare-fun b!1025703 () Bool)

(declare-fun res!460804 () Bool)

(assert (=> b!1025703 (=> res!460804 e!654458)))

(declare-fun validRegex!1306 (Regex!2837) Bool)

(assert (=> b!1025703 (= res!460804 (not (validRegex!1306 (regOne!6186 r!15766))))))

(declare-fun b!1025704 () Bool)

(declare-fun e!654460 () Bool)

(declare-fun tp_is_empty!5317 () Bool)

(assert (=> b!1025704 (= e!654460 tp_is_empty!5317)))

(declare-fun b!1025705 () Bool)

(declare-fun tp!311238 () Bool)

(declare-fun tp!311236 () Bool)

(assert (=> b!1025705 (= e!654460 (and tp!311238 tp!311236))))

(declare-fun b!1025706 () Bool)

(declare-fun e!654461 () Bool)

(declare-fun tp!311240 () Bool)

(assert (=> b!1025706 (= e!654461 (and tp_is_empty!5317 tp!311240))))

(declare-fun res!460803 () Bool)

(assert (=> start!89286 (=> (not res!460803) (not e!654459))))

(assert (=> start!89286 (= res!460803 (validRegex!1306 r!15766))))

(assert (=> start!89286 e!654459))

(assert (=> start!89286 e!654460))

(assert (=> start!89286 e!654461))

(declare-fun b!1025707 () Bool)

(declare-fun tp!311237 () Bool)

(assert (=> b!1025707 (= e!654460 tp!311237)))

(declare-fun b!1025708 () Bool)

(declare-fun tp!311239 () Bool)

(declare-fun tp!311235 () Bool)

(assert (=> b!1025708 (= e!654460 (and tp!311239 tp!311235))))

(declare-fun b!1025709 () Bool)

(assert (=> b!1025709 (= e!654458 true)))

(assert (= (and start!89286 res!460803) b!1025702))

(assert (= (and b!1025702 (not res!460802)) b!1025703))

(assert (= (and b!1025703 (not res!460804)) b!1025709))

(assert (= (and start!89286 ((_ is ElementMatch!2837) r!15766)) b!1025704))

(assert (= (and start!89286 ((_ is Concat!4670) r!15766)) b!1025705))

(assert (= (and start!89286 ((_ is Star!2837) r!15766)) b!1025707))

(assert (= (and start!89286 ((_ is Union!2837) r!15766)) b!1025708))

(assert (= (and start!89286 ((_ is Cons!10051) s!10566)) b!1025706))

(declare-fun m!1202267 () Bool)

(assert (=> b!1025702 m!1202267))

(declare-fun m!1202269 () Bool)

(assert (=> b!1025702 m!1202269))

(declare-fun m!1202271 () Bool)

(assert (=> b!1025702 m!1202271))

(declare-fun m!1202273 () Bool)

(assert (=> b!1025703 m!1202273))

(declare-fun m!1202275 () Bool)

(assert (=> start!89286 m!1202275))

(check-sat (not b!1025705) (not start!89286) tp_is_empty!5317 (not b!1025702) (not b!1025706) (not b!1025708) (not b!1025703) (not b!1025707))
(check-sat)
