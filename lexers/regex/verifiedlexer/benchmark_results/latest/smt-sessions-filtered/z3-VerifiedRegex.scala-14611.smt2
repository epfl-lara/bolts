; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756264 () Bool)

(assert start!756264)

(declare-fun res!3175421 () Bool)

(declare-fun e!4730187 () Bool)

(assert (=> start!756264 (=> (not res!3175421) (not e!4730187))))

(declare-datatypes ((B!4441 0))(
  ( (B!4442 (val!32620 Int)) )
))
(declare-datatypes ((List!75136 0))(
  ( (Nil!75010) (Cons!75010 (h!81458 B!4441) (t!390892 List!75136)) )
))
(declare-fun l1!1017 () List!75136)

(get-info :version)

(assert (=> start!756264 (= res!3175421 (not ((_ is Cons!75010) l1!1017)))))

(assert (=> start!756264 e!4730187))

(declare-fun e!4730185 () Bool)

(assert (=> start!756264 e!4730185))

(declare-fun e!4730186 () Bool)

(assert (=> start!756264 e!4730186))

(declare-fun b!8028997 () Bool)

(declare-fun l2!986 () List!75136)

(declare-fun isPrefix!6885 (List!75136 List!75136) Bool)

(declare-fun ++!18612 (List!75136 List!75136) List!75136)

(assert (=> b!8028997 (= e!4730187 (not (isPrefix!6885 l1!1017 (++!18612 l1!1017 l2!986))))))

(declare-fun b!8028998 () Bool)

(declare-fun tp_is_empty!54345 () Bool)

(declare-fun tp!2402623 () Bool)

(assert (=> b!8028998 (= e!4730185 (and tp_is_empty!54345 tp!2402623))))

(declare-fun b!8028999 () Bool)

(declare-fun tp!2402622 () Bool)

(assert (=> b!8028999 (= e!4730186 (and tp_is_empty!54345 tp!2402622))))

(assert (= (and start!756264 res!3175421) b!8028997))

(assert (= (and start!756264 ((_ is Cons!75010) l1!1017)) b!8028998))

(assert (= (and start!756264 ((_ is Cons!75010) l2!986)) b!8028999))

(declare-fun m!8391182 () Bool)

(assert (=> b!8028997 m!8391182))

(assert (=> b!8028997 m!8391182))

(declare-fun m!8391184 () Bool)

(assert (=> b!8028997 m!8391184))

(check-sat (not b!8028997) (not b!8028999) (not b!8028998) tp_is_empty!54345)
(check-sat)
(get-model)

(declare-fun d!2394286 () Bool)

(declare-fun e!4730194 () Bool)

(assert (=> d!2394286 e!4730194))

(declare-fun res!3175430 () Bool)

(assert (=> d!2394286 (=> res!3175430 e!4730194)))

(declare-fun lt!2721737 () Bool)

(assert (=> d!2394286 (= res!3175430 (not lt!2721737))))

(declare-fun e!4730196 () Bool)

(assert (=> d!2394286 (= lt!2721737 e!4730196)))

(declare-fun res!3175432 () Bool)

(assert (=> d!2394286 (=> res!3175432 e!4730196)))

(assert (=> d!2394286 (= res!3175432 ((_ is Nil!75010) l1!1017))))

(assert (=> d!2394286 (= (isPrefix!6885 l1!1017 (++!18612 l1!1017 l2!986)) lt!2721737)))

(declare-fun b!8029009 () Bool)

(declare-fun res!3175433 () Bool)

(declare-fun e!4730195 () Bool)

(assert (=> b!8029009 (=> (not res!3175433) (not e!4730195))))

(declare-fun head!16497 (List!75136) B!4441)

(assert (=> b!8029009 (= res!3175433 (= (head!16497 l1!1017) (head!16497 (++!18612 l1!1017 l2!986))))))

(declare-fun b!8029010 () Bool)

(declare-fun tail!16042 (List!75136) List!75136)

(assert (=> b!8029010 (= e!4730195 (isPrefix!6885 (tail!16042 l1!1017) (tail!16042 (++!18612 l1!1017 l2!986))))))

(declare-fun b!8029011 () Bool)

(declare-fun size!43744 (List!75136) Int)

(assert (=> b!8029011 (= e!4730194 (>= (size!43744 (++!18612 l1!1017 l2!986)) (size!43744 l1!1017)))))

(declare-fun b!8029008 () Bool)

(assert (=> b!8029008 (= e!4730196 e!4730195)))

(declare-fun res!3175431 () Bool)

(assert (=> b!8029008 (=> (not res!3175431) (not e!4730195))))

(assert (=> b!8029008 (= res!3175431 (not ((_ is Nil!75010) (++!18612 l1!1017 l2!986))))))

(assert (= (and d!2394286 (not res!3175432)) b!8029008))

(assert (= (and b!8029008 res!3175431) b!8029009))

(assert (= (and b!8029009 res!3175433) b!8029010))

(assert (= (and d!2394286 (not res!3175430)) b!8029011))

(declare-fun m!8391186 () Bool)

(assert (=> b!8029009 m!8391186))

(assert (=> b!8029009 m!8391182))

(declare-fun m!8391188 () Bool)

(assert (=> b!8029009 m!8391188))

(declare-fun m!8391190 () Bool)

(assert (=> b!8029010 m!8391190))

(assert (=> b!8029010 m!8391182))

(declare-fun m!8391192 () Bool)

(assert (=> b!8029010 m!8391192))

(assert (=> b!8029010 m!8391190))

(assert (=> b!8029010 m!8391192))

(declare-fun m!8391194 () Bool)

(assert (=> b!8029010 m!8391194))

(assert (=> b!8029011 m!8391182))

(declare-fun m!8391196 () Bool)

(assert (=> b!8029011 m!8391196))

(declare-fun m!8391198 () Bool)

(assert (=> b!8029011 m!8391198))

(assert (=> b!8028997 d!2394286))

(declare-fun b!8029030 () Bool)

(declare-fun res!3175446 () Bool)

(declare-fun e!4730207 () Bool)

(assert (=> b!8029030 (=> (not res!3175446) (not e!4730207))))

(declare-fun lt!2721742 () List!75136)

(assert (=> b!8029030 (= res!3175446 (= (size!43744 lt!2721742) (+ (size!43744 l1!1017) (size!43744 l2!986))))))

(declare-fun b!8029031 () Bool)

(assert (=> b!8029031 (= e!4730207 (or (not (= l2!986 Nil!75010)) (= lt!2721742 l1!1017)))))

(declare-fun d!2394290 () Bool)

(assert (=> d!2394290 e!4730207))

(declare-fun res!3175447 () Bool)

(assert (=> d!2394290 (=> (not res!3175447) (not e!4730207))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16018 (List!75136) (InoxSet B!4441))

(assert (=> d!2394290 (= res!3175447 (= (content!16018 lt!2721742) ((_ map or) (content!16018 l1!1017) (content!16018 l2!986))))))

(declare-fun e!4730208 () List!75136)

(assert (=> d!2394290 (= lt!2721742 e!4730208)))

(declare-fun c!1473031 () Bool)

(assert (=> d!2394290 (= c!1473031 ((_ is Nil!75010) l1!1017))))

(assert (=> d!2394290 (= (++!18612 l1!1017 l2!986) lt!2721742)))

(declare-fun b!8029029 () Bool)

(assert (=> b!8029029 (= e!4730208 (Cons!75010 (h!81458 l1!1017) (++!18612 (t!390892 l1!1017) l2!986)))))

(declare-fun b!8029028 () Bool)

(assert (=> b!8029028 (= e!4730208 l2!986)))

(assert (= (and d!2394290 c!1473031) b!8029028))

(assert (= (and d!2394290 (not c!1473031)) b!8029029))

(assert (= (and d!2394290 res!3175447) b!8029030))

(assert (= (and b!8029030 res!3175446) b!8029031))

(declare-fun m!8391200 () Bool)

(assert (=> b!8029030 m!8391200))

(assert (=> b!8029030 m!8391198))

(declare-fun m!8391202 () Bool)

(assert (=> b!8029030 m!8391202))

(declare-fun m!8391204 () Bool)

(assert (=> d!2394290 m!8391204))

(declare-fun m!8391206 () Bool)

(assert (=> d!2394290 m!8391206))

(declare-fun m!8391208 () Bool)

(assert (=> d!2394290 m!8391208))

(declare-fun m!8391210 () Bool)

(assert (=> b!8029029 m!8391210))

(assert (=> b!8028997 d!2394290))

(declare-fun b!8029036 () Bool)

(declare-fun e!4730211 () Bool)

(declare-fun tp!2402626 () Bool)

(assert (=> b!8029036 (= e!4730211 (and tp_is_empty!54345 tp!2402626))))

(assert (=> b!8028999 (= tp!2402622 e!4730211)))

(assert (= (and b!8028999 ((_ is Cons!75010) (t!390892 l2!986))) b!8029036))

(declare-fun b!8029037 () Bool)

(declare-fun e!4730212 () Bool)

(declare-fun tp!2402627 () Bool)

(assert (=> b!8029037 (= e!4730212 (and tp_is_empty!54345 tp!2402627))))

(assert (=> b!8028998 (= tp!2402623 e!4730212)))

(assert (= (and b!8028998 ((_ is Cons!75010) (t!390892 l1!1017))) b!8029037))

(check-sat (not b!8029037) (not b!8029030) (not b!8029010) (not b!8029011) (not b!8029009) tp_is_empty!54345 (not b!8029029) (not b!8029036) (not d!2394290))
(check-sat)
