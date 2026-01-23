; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667690 () Bool)

(assert start!667690)

(declare-fun b!6958268 () Bool)

(assert (=> b!6958268 true))

(assert (=> b!6958268 true))

(declare-fun bs!1858237 () Bool)

(declare-fun b!6958271 () Bool)

(assert (= bs!1858237 (and b!6958271 b!6958268)))

(declare-fun lambda!396982 () Int)

(declare-fun lambda!396981 () Int)

(assert (=> bs!1858237 (not (= lambda!396982 lambda!396981))))

(assert (=> b!6958271 true))

(assert (=> b!6958271 true))

(declare-fun b!6958262 () Bool)

(declare-fun e!4183930 () Bool)

(declare-fun tp!1918150 () Bool)

(declare-fun tp!1918149 () Bool)

(assert (=> b!6958262 (= e!4183930 (and tp!1918150 tp!1918149))))

(declare-fun b!6958263 () Bool)

(declare-fun e!4183928 () Bool)

(declare-fun Exists!4061 (Int) Bool)

(assert (=> b!6958263 (= e!4183928 (not (= (Exists!4061 lambda!396981) (Exists!4061 lambda!396982))))))

(declare-fun b!6958264 () Bool)

(declare-fun res!2839345 () Bool)

(assert (=> b!6958264 (=> (not res!2839345) (not e!4183928))))

(declare-datatypes ((C!34400 0))(
  ( (C!34401 (val!26902 Int)) )
))
(declare-datatypes ((Regex!17065 0))(
  ( (ElementMatch!17065 (c!1290297 C!34400)) (Concat!25910 (regOne!34642 Regex!17065) (regTwo!34642 Regex!17065)) (EmptyExpr!17065) (Star!17065 (reg!17394 Regex!17065)) (EmptyLang!17065) (Union!17065 (regOne!34643 Regex!17065) (regTwo!34643 Regex!17065)) )
))
(declare-fun rInner!765 () Regex!17065)

(declare-fun nullable!6878 (Regex!17065) Bool)

(assert (=> b!6958264 (= res!2839345 (not (nullable!6878 rInner!765)))))

(declare-fun b!6958265 () Bool)

(declare-fun tp!1918148 () Bool)

(declare-fun tp!1918153 () Bool)

(assert (=> b!6958265 (= e!4183930 (and tp!1918148 tp!1918153))))

(declare-fun b!6958266 () Bool)

(declare-fun res!2839346 () Bool)

(assert (=> b!6958266 (=> (not res!2839346) (not e!4183928))))

(assert (=> b!6958266 (= res!2839346 (not (Exists!4061 lambda!396981)))))

(declare-fun b!6958267 () Bool)

(declare-fun tp!1918152 () Bool)

(assert (=> b!6958267 (= e!4183930 tp!1918152)))

(declare-fun res!2839342 () Bool)

(assert (=> start!667690 (=> (not res!2839342) (not e!4183928))))

(declare-fun validRegex!8771 (Regex!17065) Bool)

(assert (=> start!667690 (= res!2839342 (validRegex!8771 rInner!765))))

(assert (=> start!667690 e!4183928))

(assert (=> start!667690 e!4183930))

(declare-fun e!4183929 () Bool)

(assert (=> start!667690 e!4183929))

(declare-fun res!2839344 () Bool)

(assert (=> b!6958268 (=> (not res!2839344) (not e!4183928))))

(assert (=> b!6958268 (= res!2839344 (not (Exists!4061 lambda!396981)))))

(declare-fun b!6958269 () Bool)

(declare-fun tp_is_empty!43355 () Bool)

(assert (=> b!6958269 (= e!4183930 tp_is_empty!43355)))

(declare-fun b!6958270 () Bool)

(declare-fun tp!1918151 () Bool)

(assert (=> b!6958270 (= e!4183929 (and tp_is_empty!43355 tp!1918151))))

(declare-fun res!2839343 () Bool)

(assert (=> b!6958271 (=> (not res!2839343) (not e!4183928))))

(assert (=> b!6958271 (= res!2839343 (not (Exists!4061 lambda!396982)))))

(assert (= (and start!667690 res!2839342) b!6958264))

(assert (= (and b!6958264 res!2839345) b!6958268))

(assert (= (and b!6958268 res!2839344) b!6958266))

(assert (= (and b!6958266 res!2839346) b!6958271))

(assert (= (and b!6958271 res!2839343) b!6958263))

(get-info :version)

(assert (= (and start!667690 ((_ is ElementMatch!17065) rInner!765)) b!6958269))

(assert (= (and start!667690 ((_ is Concat!25910) rInner!765)) b!6958265))

(assert (= (and start!667690 ((_ is Star!17065) rInner!765)) b!6958267))

(assert (= (and start!667690 ((_ is Union!17065) rInner!765)) b!6958262))

(declare-datatypes ((List!66818 0))(
  ( (Nil!66694) (Cons!66694 (h!73142 C!34400) (t!380561 List!66818)) )
))
(declare-fun s!10388 () List!66818)

(assert (= (and start!667690 ((_ is Cons!66694) s!10388)) b!6958270))

(declare-fun m!7655220 () Bool)

(assert (=> b!6958264 m!7655220))

(declare-fun m!7655222 () Bool)

(assert (=> b!6958268 m!7655222))

(declare-fun m!7655224 () Bool)

(assert (=> b!6958271 m!7655224))

(declare-fun m!7655226 () Bool)

(assert (=> start!667690 m!7655226))

(assert (=> b!6958266 m!7655222))

(assert (=> b!6958263 m!7655222))

(assert (=> b!6958263 m!7655224))

(check-sat (not b!6958264) (not b!6958267) (not b!6958262) (not b!6958270) (not b!6958266) (not b!6958263) (not b!6958265) (not start!667690) tp_is_empty!43355 (not b!6958271) (not b!6958268))
(check-sat)
