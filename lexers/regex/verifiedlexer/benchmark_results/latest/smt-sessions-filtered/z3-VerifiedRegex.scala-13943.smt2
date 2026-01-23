; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739336 () Bool)

(assert start!739336)

(declare-fun b!7759701 () Bool)

(assert (=> b!7759701 true))

(assert (=> b!7759701 true))

(assert (=> b!7759701 true))

(declare-fun res!3093530 () Bool)

(declare-fun e!4599032 () Bool)

(assert (=> start!739336 (=> (not res!3093530) (not e!4599032))))

(declare-datatypes ((C!41688 0))(
  ( (C!41689 (val!31284 Int)) )
))
(declare-datatypes ((Regex!20681 0))(
  ( (ElementMatch!20681 (c!1430670 C!41688)) (Concat!29526 (regOne!41874 Regex!20681) (regTwo!41874 Regex!20681)) (EmptyExpr!20681) (Star!20681 (reg!21010 Regex!20681)) (EmptyLang!20681) (Union!20681 (regOne!41875 Regex!20681) (regTwo!41875 Regex!20681)) )
))
(declare-fun r1!3330 () Regex!20681)

(declare-fun validRegex!11097 (Regex!20681) Bool)

(assert (=> start!739336 (= res!3093530 (validRegex!11097 r1!3330))))

(assert (=> start!739336 e!4599032))

(declare-fun e!4599033 () Bool)

(assert (=> start!739336 e!4599033))

(declare-fun e!4599034 () Bool)

(assert (=> start!739336 e!4599034))

(declare-fun e!4599035 () Bool)

(assert (=> start!739336 e!4599035))

(declare-fun b!7759698 () Bool)

(declare-fun e!4599031 () Bool)

(declare-fun lambda!471979 () Int)

(declare-fun Exists!4727 (Int) Bool)

(assert (=> b!7759698 (= e!4599031 (not (Exists!4727 lambda!471979)))))

(declare-fun b!7759699 () Bool)

(declare-fun res!3093527 () Bool)

(assert (=> b!7759699 (=> (not res!3093527) (not e!4599031))))

(declare-datatypes ((List!73524 0))(
  ( (Nil!73400) (Cons!73400 (h!79848 C!41688) (t!388259 List!73524)) )
))
(declare-datatypes ((tuple2!69748 0))(
  ( (tuple2!69749 (_1!38177 List!73524) (_2!38177 List!73524)) )
))
(declare-datatypes ((Option!17668 0))(
  ( (None!17667) (Some!17667 (v!54802 tuple2!69748)) )
))
(declare-fun lt!2670196 () Option!17668)

(declare-fun isEmpty!42064 (Option!17668) Bool)

(assert (=> b!7759699 (= res!3093527 (isEmpty!42064 lt!2670196))))

(declare-fun b!7759700 () Bool)

(declare-fun tp!2278398 () Bool)

(declare-fun tp!2278403 () Bool)

(assert (=> b!7759700 (= e!4599034 (and tp!2278398 tp!2278403))))

(declare-fun res!3093526 () Bool)

(assert (=> b!7759701 (=> (not res!3093526) (not e!4599031))))

(assert (=> b!7759701 (= res!3093526 (Exists!4727 lambda!471979))))

(declare-fun b!7759702 () Bool)

(declare-fun tp_is_empty!51717 () Bool)

(declare-fun tp!2278401 () Bool)

(assert (=> b!7759702 (= e!4599035 (and tp_is_empty!51717 tp!2278401))))

(declare-fun b!7759703 () Bool)

(declare-fun tp!2278407 () Bool)

(assert (=> b!7759703 (= e!4599033 tp!2278407)))

(declare-fun b!7759704 () Bool)

(assert (=> b!7759704 (= e!4599032 e!4599031)))

(declare-fun res!3093529 () Bool)

(assert (=> b!7759704 (=> (not res!3093529) (not e!4599031))))

(declare-fun isDefined!14280 (Option!17668) Bool)

(assert (=> b!7759704 (= res!3093529 (not (isDefined!14280 lt!2670196)))))

(declare-fun r2!3230 () Regex!20681)

(declare-fun s!10216 () List!73524)

(declare-fun findConcatSeparation!3698 (Regex!20681 Regex!20681 List!73524 List!73524 List!73524) Option!17668)

(assert (=> b!7759704 (= lt!2670196 (findConcatSeparation!3698 r1!3330 r2!3230 Nil!73400 s!10216 s!10216))))

(declare-fun b!7759705 () Bool)

(declare-fun tp!2278400 () Bool)

(declare-fun tp!2278405 () Bool)

(assert (=> b!7759705 (= e!4599033 (and tp!2278400 tp!2278405))))

(declare-fun b!7759706 () Bool)

(declare-fun tp!2278404 () Bool)

(declare-fun tp!2278399 () Bool)

(assert (=> b!7759706 (= e!4599033 (and tp!2278404 tp!2278399))))

(declare-fun b!7759707 () Bool)

(assert (=> b!7759707 (= e!4599033 tp_is_empty!51717)))

(declare-fun b!7759708 () Bool)

(declare-fun tp!2278402 () Bool)

(assert (=> b!7759708 (= e!4599034 tp!2278402)))

(declare-fun b!7759709 () Bool)

(declare-fun tp!2278397 () Bool)

(declare-fun tp!2278406 () Bool)

(assert (=> b!7759709 (= e!4599034 (and tp!2278397 tp!2278406))))

(declare-fun b!7759710 () Bool)

(assert (=> b!7759710 (= e!4599034 tp_is_empty!51717)))

(declare-fun b!7759711 () Bool)

(declare-fun res!3093528 () Bool)

(assert (=> b!7759711 (=> (not res!3093528) (not e!4599032))))

(assert (=> b!7759711 (= res!3093528 (validRegex!11097 r2!3230))))

(assert (= (and start!739336 res!3093530) b!7759711))

(assert (= (and b!7759711 res!3093528) b!7759704))

(assert (= (and b!7759704 res!3093529) b!7759699))

(assert (= (and b!7759699 res!3093527) b!7759701))

(assert (= (and b!7759701 res!3093526) b!7759698))

(get-info :version)

(assert (= (and start!739336 ((_ is ElementMatch!20681) r1!3330)) b!7759707))

(assert (= (and start!739336 ((_ is Concat!29526) r1!3330)) b!7759706))

(assert (= (and start!739336 ((_ is Star!20681) r1!3330)) b!7759703))

(assert (= (and start!739336 ((_ is Union!20681) r1!3330)) b!7759705))

(assert (= (and start!739336 ((_ is ElementMatch!20681) r2!3230)) b!7759710))

(assert (= (and start!739336 ((_ is Concat!29526) r2!3230)) b!7759700))

(assert (= (and start!739336 ((_ is Star!20681) r2!3230)) b!7759708))

(assert (= (and start!739336 ((_ is Union!20681) r2!3230)) b!7759709))

(assert (= (and start!739336 ((_ is Cons!73400) s!10216)) b!7759702))

(declare-fun m!8220262 () Bool)

(assert (=> b!7759711 m!8220262))

(declare-fun m!8220264 () Bool)

(assert (=> start!739336 m!8220264))

(declare-fun m!8220266 () Bool)

(assert (=> b!7759699 m!8220266))

(declare-fun m!8220268 () Bool)

(assert (=> b!7759701 m!8220268))

(declare-fun m!8220270 () Bool)

(assert (=> b!7759704 m!8220270))

(declare-fun m!8220272 () Bool)

(assert (=> b!7759704 m!8220272))

(assert (=> b!7759698 m!8220268))

(check-sat (not b!7759709) tp_is_empty!51717 (not b!7759706) (not b!7759701) (not b!7759700) (not b!7759698) (not b!7759711) (not b!7759703) (not b!7759704) (not b!7759708) (not b!7759702) (not b!7759699) (not b!7759705) (not start!739336))
(check-sat)
