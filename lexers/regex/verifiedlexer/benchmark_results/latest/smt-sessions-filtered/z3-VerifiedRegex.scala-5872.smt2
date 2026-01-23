; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287980 () Bool)

(assert start!287980)

(declare-fun b!2979218 () Bool)

(assert (=> b!2979218 true))

(assert (=> b!2979218 true))

(assert (=> b!2979218 true))

(declare-fun lambda!111036 () Int)

(declare-fun lambda!111035 () Int)

(assert (=> b!2979218 (not (= lambda!111036 lambda!111035))))

(assert (=> b!2979218 true))

(assert (=> b!2979218 true))

(assert (=> b!2979218 true))

(declare-fun b!2979214 () Bool)

(declare-fun e!1873852 () Bool)

(declare-fun tp_is_empty!16153 () Bool)

(assert (=> b!2979214 (= e!1873852 tp_is_empty!16153)))

(declare-fun b!2979215 () Bool)

(declare-fun tp!948786 () Bool)

(declare-fun tp!948785 () Bool)

(assert (=> b!2979215 (= e!1873852 (and tp!948786 tp!948785))))

(declare-fun b!2979216 () Bool)

(declare-fun tp!948784 () Bool)

(declare-fun tp!948789 () Bool)

(assert (=> b!2979216 (= e!1873852 (and tp!948784 tp!948789))))

(declare-fun b!2979217 () Bool)

(declare-fun e!1873851 () Bool)

(declare-fun e!1873849 () Bool)

(assert (=> b!2979217 (= e!1873851 e!1873849)))

(declare-fun res!1228473 () Bool)

(assert (=> b!2979217 (=> res!1228473 e!1873849)))

(declare-datatypes ((C!18776 0))(
  ( (C!18777 (val!11424 Int)) )
))
(declare-datatypes ((List!35160 0))(
  ( (Nil!35036) (Cons!35036 (h!40456 C!18776) (t!234225 List!35160)) )
))
(declare-fun s!11993 () List!35160)

(declare-fun isEmpty!19289 (List!35160) Bool)

(assert (=> b!2979217 (= res!1228473 (isEmpty!19289 s!11993))))

(declare-datatypes ((Regex!9295 0))(
  ( (ElementMatch!9295 (c!489279 C!18776)) (Concat!14616 (regOne!19102 Regex!9295) (regTwo!19102 Regex!9295)) (EmptyExpr!9295) (Star!9295 (reg!9624 Regex!9295)) (EmptyLang!9295) (Union!9295 (regOne!19103 Regex!9295) (regTwo!19103 Regex!9295)) )
))
(declare-fun lt!1037651 () Regex!9295)

(declare-fun matchRSpec!1432 (Regex!9295 List!35160) Bool)

(assert (=> b!2979217 (matchRSpec!1432 lt!1037651 s!11993)))

(declare-datatypes ((Unit!48969 0))(
  ( (Unit!48970) )
))
(declare-fun lt!1037648 () Unit!48969)

(declare-fun mainMatchTheorem!1432 (Regex!9295 List!35160) Unit!48969)

(assert (=> b!2979217 (= lt!1037648 (mainMatchTheorem!1432 lt!1037651 s!11993))))

(assert (=> b!2979218 (= e!1873849 true)))

(declare-fun Exists!1575 (Int) Bool)

(assert (=> b!2979218 (= (Exists!1575 lambda!111035) (Exists!1575 lambda!111036))))

(declare-fun lt!1037654 () Unit!48969)

(declare-fun lt!1037652 () Regex!9295)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!260 (Regex!9295 List!35160) Unit!48969)

(assert (=> b!2979218 (= lt!1037654 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!260 lt!1037652 s!11993))))

(declare-datatypes ((tuple2!33928 0))(
  ( (tuple2!33929 (_1!20096 List!35160) (_2!20096 List!35160)) )
))
(declare-datatypes ((Option!6696 0))(
  ( (None!6695) (Some!6695 (v!34829 tuple2!33928)) )
))
(declare-fun isDefined!5247 (Option!6696) Bool)

(declare-fun findConcatSeparation!1090 (Regex!9295 Regex!9295 List!35160 List!35160 List!35160) Option!6696)

(assert (=> b!2979218 (= (isDefined!5247 (findConcatSeparation!1090 lt!1037652 lt!1037651 Nil!35036 s!11993 s!11993)) (Exists!1575 lambda!111035))))

(declare-fun lt!1037649 () Unit!48969)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!868 (Regex!9295 Regex!9295 List!35160) Unit!48969)

(assert (=> b!2979218 (= lt!1037649 (lemmaFindConcatSeparationEquivalentToExists!868 lt!1037652 lt!1037651 s!11993))))

(declare-fun b!2979219 () Bool)

(declare-fun e!1873848 () Bool)

(declare-fun e!1873847 () Bool)

(assert (=> b!2979219 (= e!1873848 (not e!1873847))))

(declare-fun res!1228470 () Bool)

(assert (=> b!2979219 (=> res!1228470 e!1873847)))

(declare-fun lt!1037653 () Bool)

(declare-fun r!17423 () Regex!9295)

(get-info :version)

(assert (=> b!2979219 (= res!1228470 (or lt!1037653 ((_ is Concat!14616) r!17423) ((_ is Union!9295) r!17423) (not ((_ is Star!9295) r!17423))))))

(assert (=> b!2979219 (= lt!1037653 (matchRSpec!1432 r!17423 s!11993))))

(declare-fun matchR!4177 (Regex!9295 List!35160) Bool)

(assert (=> b!2979219 (= lt!1037653 (matchR!4177 r!17423 s!11993))))

(declare-fun lt!1037650 () Unit!48969)

(assert (=> b!2979219 (= lt!1037650 (mainMatchTheorem!1432 r!17423 s!11993))))

(declare-fun res!1228472 () Bool)

(assert (=> start!287980 (=> (not res!1228472) (not e!1873848))))

(declare-fun validRegex!4028 (Regex!9295) Bool)

(assert (=> start!287980 (= res!1228472 (validRegex!4028 r!17423))))

(assert (=> start!287980 e!1873848))

(assert (=> start!287980 e!1873852))

(declare-fun e!1873850 () Bool)

(assert (=> start!287980 e!1873850))

(declare-fun b!2979220 () Bool)

(declare-fun e!1873853 () Bool)

(assert (=> b!2979220 (= e!1873847 e!1873853)))

(declare-fun res!1228474 () Bool)

(assert (=> b!2979220 (=> res!1228474 e!1873853)))

(declare-fun isEmptyLang!409 (Regex!9295) Bool)

(assert (=> b!2979220 (= res!1228474 (isEmptyLang!409 lt!1037652))))

(declare-fun simplify!296 (Regex!9295) Regex!9295)

(assert (=> b!2979220 (= lt!1037652 (simplify!296 (reg!9624 r!17423)))))

(declare-fun b!2979221 () Bool)

(declare-fun tp!948787 () Bool)

(assert (=> b!2979221 (= e!1873850 (and tp_is_empty!16153 tp!948787))))

(declare-fun b!2979222 () Bool)

(assert (=> b!2979222 (= e!1873853 e!1873851)))

(declare-fun res!1228471 () Bool)

(assert (=> b!2979222 (=> res!1228471 e!1873851)))

(assert (=> b!2979222 (= res!1228471 (not (matchR!4177 lt!1037651 s!11993)))))

(assert (=> b!2979222 (= lt!1037651 (Star!9295 lt!1037652))))

(declare-fun b!2979223 () Bool)

(declare-fun tp!948788 () Bool)

(assert (=> b!2979223 (= e!1873852 tp!948788)))

(assert (= (and start!287980 res!1228472) b!2979219))

(assert (= (and b!2979219 (not res!1228470)) b!2979220))

(assert (= (and b!2979220 (not res!1228474)) b!2979222))

(assert (= (and b!2979222 (not res!1228471)) b!2979217))

(assert (= (and b!2979217 (not res!1228473)) b!2979218))

(assert (= (and start!287980 ((_ is ElementMatch!9295) r!17423)) b!2979214))

(assert (= (and start!287980 ((_ is Concat!14616) r!17423)) b!2979216))

(assert (= (and start!287980 ((_ is Star!9295) r!17423)) b!2979223))

(assert (= (and start!287980 ((_ is Union!9295) r!17423)) b!2979215))

(assert (= (and start!287980 ((_ is Cons!35036) s!11993)) b!2979221))

(declare-fun m!3341377 () Bool)

(assert (=> start!287980 m!3341377))

(declare-fun m!3341379 () Bool)

(assert (=> b!2979220 m!3341379))

(declare-fun m!3341381 () Bool)

(assert (=> b!2979220 m!3341381))

(declare-fun m!3341383 () Bool)

(assert (=> b!2979217 m!3341383))

(declare-fun m!3341385 () Bool)

(assert (=> b!2979217 m!3341385))

(declare-fun m!3341387 () Bool)

(assert (=> b!2979217 m!3341387))

(declare-fun m!3341389 () Bool)

(assert (=> b!2979218 m!3341389))

(declare-fun m!3341391 () Bool)

(assert (=> b!2979218 m!3341391))

(declare-fun m!3341393 () Bool)

(assert (=> b!2979218 m!3341393))

(declare-fun m!3341395 () Bool)

(assert (=> b!2979218 m!3341395))

(assert (=> b!2979218 m!3341395))

(declare-fun m!3341397 () Bool)

(assert (=> b!2979218 m!3341397))

(declare-fun m!3341399 () Bool)

(assert (=> b!2979218 m!3341399))

(assert (=> b!2979218 m!3341389))

(declare-fun m!3341401 () Bool)

(assert (=> b!2979222 m!3341401))

(declare-fun m!3341403 () Bool)

(assert (=> b!2979219 m!3341403))

(declare-fun m!3341405 () Bool)

(assert (=> b!2979219 m!3341405))

(declare-fun m!3341407 () Bool)

(assert (=> b!2979219 m!3341407))

(check-sat (not start!287980) (not b!2979216) (not b!2979217) (not b!2979223) (not b!2979215) (not b!2979219) (not b!2979222) (not b!2979221) (not b!2979218) tp_is_empty!16153 (not b!2979220))
(check-sat)
