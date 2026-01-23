; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754880 () Bool)

(assert start!754880)

(declare-fun b!8019892 () Bool)

(declare-fun e!4724309 () Bool)

(declare-fun tp_is_empty!54025 () Bool)

(declare-fun tp!2400352 () Bool)

(assert (=> b!8019892 (= e!4724309 (and tp_is_empty!54025 tp!2400352))))

(declare-fun b!8019893 () Bool)

(declare-fun res!3171034 () Bool)

(declare-fun e!4724307 () Bool)

(assert (=> b!8019893 (=> (not res!3171034) (not e!4724307))))

(declare-datatypes ((B!4137 0))(
  ( (B!4138 (val!32458 Int)) )
))
(declare-datatypes ((List!74970 0))(
  ( (Nil!74846) (Cons!74846 (h!81294 B!4137) (t!390713 List!74970)) )
))
(declare-fun s1!496 () List!74970)

(get-info :version)

(assert (=> b!8019893 (= res!3171034 ((_ is Cons!74846) s1!496))))

(declare-fun b!8019894 () Bool)

(declare-fun e!4724306 () Bool)

(declare-fun tp!2400354 () Bool)

(assert (=> b!8019894 (= e!4724306 (and tp_is_empty!54025 tp!2400354))))

(declare-fun res!3171033 () Bool)

(assert (=> start!754880 (=> (not res!3171033) (not e!4724307))))

(declare-fun lt!2719669 () List!74970)

(declare-fun tot!47 () List!74970)

(declare-fun ++!18536 (List!74970 List!74970) List!74970)

(assert (=> start!754880 (= res!3171033 (= (++!18536 s1!496 lt!2719669) tot!47))))

(declare-fun hd2!39 () B!4137)

(declare-fun tl2!39 () List!74970)

(assert (=> start!754880 (= lt!2719669 (Cons!74846 hd2!39 tl2!39))))

(assert (=> start!754880 e!4724307))

(assert (=> start!754880 e!4724306))

(assert (=> start!754880 tp_is_empty!54025))

(declare-fun e!4724308 () Bool)

(assert (=> start!754880 e!4724308))

(assert (=> start!754880 e!4724309))

(declare-fun b!8019895 () Bool)

(declare-fun tp!2400353 () Bool)

(assert (=> b!8019895 (= e!4724308 (and tp_is_empty!54025 tp!2400353))))

(declare-fun b!8019896 () Bool)

(declare-fun tail!15925 (List!74970) List!74970)

(assert (=> b!8019896 (= e!4724307 (not (= (++!18536 (t!390713 s1!496) lt!2719669) (tail!15925 tot!47))))))

(assert (= (and start!754880 res!3171033) b!8019893))

(assert (= (and b!8019893 res!3171034) b!8019896))

(assert (= (and start!754880 ((_ is Cons!74846) tl2!39)) b!8019894))

(assert (= (and start!754880 ((_ is Cons!74846) s1!496)) b!8019895))

(assert (= (and start!754880 ((_ is Cons!74846) tot!47)) b!8019892))

(declare-fun m!8382872 () Bool)

(assert (=> start!754880 m!8382872))

(declare-fun m!8382874 () Bool)

(assert (=> b!8019896 m!8382874))

(declare-fun m!8382876 () Bool)

(assert (=> b!8019896 m!8382876))

(check-sat (not start!754880) (not b!8019895) (not b!8019894) tp_is_empty!54025 (not b!8019896) (not b!8019892))
(check-sat)
(get-model)

(declare-fun b!8019922 () Bool)

(declare-fun e!4724322 () List!74970)

(assert (=> b!8019922 (= e!4724322 (Cons!74846 (h!81294 s1!496) (++!18536 (t!390713 s1!496) lt!2719669)))))

(declare-fun b!8019923 () Bool)

(declare-fun res!3171048 () Bool)

(declare-fun e!4724323 () Bool)

(assert (=> b!8019923 (=> (not res!3171048) (not e!4724323))))

(declare-fun lt!2719676 () List!74970)

(declare-fun size!43632 (List!74970) Int)

(assert (=> b!8019923 (= res!3171048 (= (size!43632 lt!2719676) (+ (size!43632 s1!496) (size!43632 lt!2719669))))))

(declare-fun d!2391397 () Bool)

(assert (=> d!2391397 e!4724323))

(declare-fun res!3171047 () Bool)

(assert (=> d!2391397 (=> (not res!3171047) (not e!4724323))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15932 (List!74970) (InoxSet B!4137))

(assert (=> d!2391397 (= res!3171047 (= (content!15932 lt!2719676) ((_ map or) (content!15932 s1!496) (content!15932 lt!2719669))))))

(assert (=> d!2391397 (= lt!2719676 e!4724322)))

(declare-fun c!1471943 () Bool)

(assert (=> d!2391397 (= c!1471943 ((_ is Nil!74846) s1!496))))

(assert (=> d!2391397 (= (++!18536 s1!496 lt!2719669) lt!2719676)))

(declare-fun b!8019921 () Bool)

(assert (=> b!8019921 (= e!4724322 lt!2719669)))

(declare-fun b!8019924 () Bool)

(assert (=> b!8019924 (= e!4724323 (or (not (= lt!2719669 Nil!74846)) (= lt!2719676 s1!496)))))

(assert (= (and d!2391397 c!1471943) b!8019921))

(assert (= (and d!2391397 (not c!1471943)) b!8019922))

(assert (= (and d!2391397 res!3171047) b!8019923))

(assert (= (and b!8019923 res!3171048) b!8019924))

(assert (=> b!8019922 m!8382874))

(declare-fun m!8382900 () Bool)

(assert (=> b!8019923 m!8382900))

(declare-fun m!8382902 () Bool)

(assert (=> b!8019923 m!8382902))

(declare-fun m!8382904 () Bool)

(assert (=> b!8019923 m!8382904))

(declare-fun m!8382906 () Bool)

(assert (=> d!2391397 m!8382906))

(declare-fun m!8382908 () Bool)

(assert (=> d!2391397 m!8382908))

(declare-fun m!8382910 () Bool)

(assert (=> d!2391397 m!8382910))

(assert (=> start!754880 d!2391397))

(declare-fun b!8019926 () Bool)

(declare-fun e!4724324 () List!74970)

(assert (=> b!8019926 (= e!4724324 (Cons!74846 (h!81294 (t!390713 s1!496)) (++!18536 (t!390713 (t!390713 s1!496)) lt!2719669)))))

(declare-fun b!8019927 () Bool)

(declare-fun res!3171050 () Bool)

(declare-fun e!4724325 () Bool)

(assert (=> b!8019927 (=> (not res!3171050) (not e!4724325))))

(declare-fun lt!2719677 () List!74970)

(assert (=> b!8019927 (= res!3171050 (= (size!43632 lt!2719677) (+ (size!43632 (t!390713 s1!496)) (size!43632 lt!2719669))))))

(declare-fun d!2391403 () Bool)

(assert (=> d!2391403 e!4724325))

(declare-fun res!3171049 () Bool)

(assert (=> d!2391403 (=> (not res!3171049) (not e!4724325))))

(assert (=> d!2391403 (= res!3171049 (= (content!15932 lt!2719677) ((_ map or) (content!15932 (t!390713 s1!496)) (content!15932 lt!2719669))))))

(assert (=> d!2391403 (= lt!2719677 e!4724324)))

(declare-fun c!1471944 () Bool)

(assert (=> d!2391403 (= c!1471944 ((_ is Nil!74846) (t!390713 s1!496)))))

(assert (=> d!2391403 (= (++!18536 (t!390713 s1!496) lt!2719669) lt!2719677)))

(declare-fun b!8019925 () Bool)

(assert (=> b!8019925 (= e!4724324 lt!2719669)))

(declare-fun b!8019928 () Bool)

(assert (=> b!8019928 (= e!4724325 (or (not (= lt!2719669 Nil!74846)) (= lt!2719677 (t!390713 s1!496))))))

(assert (= (and d!2391403 c!1471944) b!8019925))

(assert (= (and d!2391403 (not c!1471944)) b!8019926))

(assert (= (and d!2391403 res!3171049) b!8019927))

(assert (= (and b!8019927 res!3171050) b!8019928))

(declare-fun m!8382912 () Bool)

(assert (=> b!8019926 m!8382912))

(declare-fun m!8382914 () Bool)

(assert (=> b!8019927 m!8382914))

(declare-fun m!8382916 () Bool)

(assert (=> b!8019927 m!8382916))

(assert (=> b!8019927 m!8382904))

(declare-fun m!8382918 () Bool)

(assert (=> d!2391403 m!8382918))

(declare-fun m!8382920 () Bool)

(assert (=> d!2391403 m!8382920))

(assert (=> d!2391403 m!8382910))

(assert (=> b!8019896 d!2391403))

(declare-fun d!2391405 () Bool)

(assert (=> d!2391405 (= (tail!15925 tot!47) (t!390713 tot!47))))

(assert (=> b!8019896 d!2391405))

(declare-fun b!8019940 () Bool)

(declare-fun e!4724333 () Bool)

(declare-fun tp!2400362 () Bool)

(assert (=> b!8019940 (= e!4724333 (and tp_is_empty!54025 tp!2400362))))

(assert (=> b!8019892 (= tp!2400352 e!4724333)))

(assert (= (and b!8019892 ((_ is Cons!74846) (t!390713 tot!47))) b!8019940))

(declare-fun b!8019941 () Bool)

(declare-fun e!4724334 () Bool)

(declare-fun tp!2400363 () Bool)

(assert (=> b!8019941 (= e!4724334 (and tp_is_empty!54025 tp!2400363))))

(assert (=> b!8019894 (= tp!2400354 e!4724334)))

(assert (= (and b!8019894 ((_ is Cons!74846) (t!390713 tl2!39))) b!8019941))

(declare-fun b!8019942 () Bool)

(declare-fun e!4724335 () Bool)

(declare-fun tp!2400364 () Bool)

(assert (=> b!8019942 (= e!4724335 (and tp_is_empty!54025 tp!2400364))))

(assert (=> b!8019895 (= tp!2400353 e!4724335)))

(assert (= (and b!8019895 ((_ is Cons!74846) (t!390713 s1!496))) b!8019942))

(check-sat (not b!8019942) (not d!2391397) (not b!8019927) tp_is_empty!54025 (not b!8019926) (not b!8019922) (not b!8019940) (not d!2391403) (not b!8019923) (not b!8019941))
(check-sat)
