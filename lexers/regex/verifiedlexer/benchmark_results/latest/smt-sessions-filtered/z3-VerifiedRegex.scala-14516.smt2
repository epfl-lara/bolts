; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754644 () Bool)

(assert start!754644)

(declare-fun res!3170328 () Bool)

(declare-fun e!4723319 () Bool)

(assert (=> start!754644 (=> (not res!3170328) (not e!4723319))))

(declare-datatypes ((B!4081 0))(
  ( (B!4082 (val!32430 Int)) )
))
(declare-datatypes ((List!74942 0))(
  ( (Nil!74818) (Cons!74818 (h!81266 B!4081) (t!390685 List!74942)) )
))
(declare-fun p!2009 () List!74942)

(declare-fun l!3435 () List!74942)

(declare-fun isPrefix!6765 (List!74942 List!74942) Bool)

(assert (=> start!754644 (= res!3170328 (isPrefix!6765 p!2009 l!3435))))

(assert (=> start!754644 e!4723319))

(declare-fun e!4723316 () Bool)

(assert (=> start!754644 e!4723316))

(declare-fun e!4723315 () Bool)

(assert (=> start!754644 e!4723315))

(declare-fun b!8018315 () Bool)

(declare-fun e!4723317 () Bool)

(assert (=> b!8018315 (= e!4723319 e!4723317)))

(declare-fun res!3170330 () Bool)

(assert (=> b!8018315 (=> (not res!3170330) (not e!4723317))))

(declare-fun lt!2719256 () Int)

(declare-fun lt!2719255 () Int)

(get-info :version)

(assert (=> b!8018315 (= res!3170330 (and (< lt!2719256 lt!2719255) ((_ is Cons!74818) p!2009)))))

(declare-fun size!43609 (List!74942) Int)

(assert (=> b!8018315 (= lt!2719255 (size!43609 l!3435))))

(assert (=> b!8018315 (= lt!2719256 (size!43609 p!2009))))

(declare-fun b!8018316 () Bool)

(declare-fun tp_is_empty!53969 () Bool)

(declare-fun tp!2400062 () Bool)

(assert (=> b!8018316 (= e!4723316 (and tp_is_empty!53969 tp!2400062))))

(declare-fun b!8018317 () Bool)

(declare-fun res!3170329 () Bool)

(declare-fun e!4723318 () Bool)

(assert (=> b!8018317 (=> (not res!3170329) (not e!4723318))))

(declare-fun lt!2719254 () List!74942)

(assert (=> b!8018317 (= res!3170329 (< (size!43609 (t!390685 p!2009)) (size!43609 lt!2719254)))))

(declare-fun b!8018318 () Bool)

(assert (=> b!8018318 (= e!4723318 (not (>= lt!2719255 lt!2719256)))))

(declare-fun ++!18519 (List!74942 List!74942) List!74942)

(declare-fun head!16379 (List!74942) B!4081)

(declare-fun getSuffix!3940 (List!74942 List!74942) List!74942)

(assert (=> b!8018318 (isPrefix!6765 (++!18519 (t!390685 p!2009) (Cons!74818 (head!16379 (getSuffix!3940 lt!2719254 (t!390685 p!2009))) Nil!74818)) lt!2719254)))

(declare-datatypes ((Unit!170904 0))(
  ( (Unit!170905) )
))
(declare-fun lt!2719257 () Unit!170904)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1418 (List!74942 List!74942) Unit!170904)

(assert (=> b!8018318 (= lt!2719257 (lemmaAddHeadSuffixToPrefixStillPrefix!1418 (t!390685 p!2009) lt!2719254))))

(declare-fun b!8018319 () Bool)

(declare-fun tp!2400061 () Bool)

(assert (=> b!8018319 (= e!4723315 (and tp_is_empty!53969 tp!2400061))))

(declare-fun b!8018320 () Bool)

(assert (=> b!8018320 (= e!4723317 e!4723318)))

(declare-fun res!3170327 () Bool)

(assert (=> b!8018320 (=> (not res!3170327) (not e!4723318))))

(assert (=> b!8018320 (= res!3170327 (isPrefix!6765 (t!390685 p!2009) lt!2719254))))

(declare-fun tail!15906 (List!74942) List!74942)

(assert (=> b!8018320 (= lt!2719254 (tail!15906 l!3435))))

(assert (= (and start!754644 res!3170328) b!8018315))

(assert (= (and b!8018315 res!3170330) b!8018320))

(assert (= (and b!8018320 res!3170327) b!8018317))

(assert (= (and b!8018317 res!3170329) b!8018318))

(assert (= (and start!754644 ((_ is Cons!74818) p!2009)) b!8018316))

(assert (= (and start!754644 ((_ is Cons!74818) l!3435)) b!8018319))

(declare-fun m!8381278 () Bool)

(assert (=> start!754644 m!8381278))

(declare-fun m!8381280 () Bool)

(assert (=> b!8018317 m!8381280))

(declare-fun m!8381282 () Bool)

(assert (=> b!8018317 m!8381282))

(declare-fun m!8381284 () Bool)

(assert (=> b!8018320 m!8381284))

(declare-fun m!8381286 () Bool)

(assert (=> b!8018320 m!8381286))

(declare-fun m!8381288 () Bool)

(assert (=> b!8018318 m!8381288))

(assert (=> b!8018318 m!8381288))

(declare-fun m!8381290 () Bool)

(assert (=> b!8018318 m!8381290))

(declare-fun m!8381292 () Bool)

(assert (=> b!8018318 m!8381292))

(declare-fun m!8381294 () Bool)

(assert (=> b!8018318 m!8381294))

(declare-fun m!8381296 () Bool)

(assert (=> b!8018318 m!8381296))

(assert (=> b!8018318 m!8381294))

(declare-fun m!8381298 () Bool)

(assert (=> b!8018315 m!8381298))

(declare-fun m!8381300 () Bool)

(assert (=> b!8018315 m!8381300))

(check-sat (not b!8018315) (not start!754644) (not b!8018318) (not b!8018317) tp_is_empty!53969 (not b!8018319) (not b!8018320) (not b!8018316))
(check-sat)
