; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700902 () Bool)

(assert start!700902)

(declare-fun res!2932590 () Bool)

(declare-fun e!4332760 () Bool)

(assert (=> start!700902 (=> (not res!2932590) (not e!4332760))))

(declare-datatypes ((C!37136 0))(
  ( (C!37137 (val!28516 Int)) )
))
(declare-datatypes ((Regex!18431 0))(
  ( (ElementMatch!18431 (c!1340988 C!37136)) (Concat!27276 (regOne!37374 Regex!18431) (regTwo!37374 Regex!18431)) (EmptyExpr!18431) (Star!18431 (reg!18760 Regex!18431)) (EmptyLang!18431) (Union!18431 (regOne!37375 Regex!18431) (regTwo!37375 Regex!18431)) )
))
(declare-datatypes ((List!69969 0))(
  ( (Nil!69845) (Cons!69845 (h!76293 Regex!18431) (t!384000 List!69969)) )
))
(declare-datatypes ((Context!14766 0))(
  ( (Context!14767 (exprs!7883 List!69969)) )
))
(declare-fun c!7037 () Context!14766)

(get-info :version)

(assert (=> start!700902 (= res!2932590 ((_ is Cons!69845) (exprs!7883 c!7037)))))

(assert (=> start!700902 e!4332760))

(declare-fun e!4332761 () Bool)

(declare-fun inv!89099 (Context!14766) Bool)

(assert (=> start!700902 (and (inv!89099 c!7037) e!4332761)))

(declare-fun b!7227856 () Bool)

(declare-fun lt!2572350 () Int)

(declare-fun lt!2572351 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7227856 (= e!4332760 (< (maxBigInt!0 lt!2572350 lt!2572351) lt!2572351))))

(declare-fun contextDepth!338 (Context!14766) Int)

(assert (=> b!7227856 (= lt!2572351 (contextDepth!338 (Context!14767 (t!384000 (exprs!7883 c!7037)))))))

(declare-fun regexDepth!420 (Regex!18431) Int)

(assert (=> b!7227856 (= lt!2572350 (regexDepth!420 (h!76293 (exprs!7883 c!7037))))))

(declare-fun b!7227857 () Bool)

(declare-fun tp!2032624 () Bool)

(assert (=> b!7227857 (= e!4332761 tp!2032624)))

(assert (= (and start!700902 res!2932590) b!7227856))

(assert (= start!700902 b!7227857))

(declare-fun m!7896684 () Bool)

(assert (=> start!700902 m!7896684))

(declare-fun m!7896686 () Bool)

(assert (=> b!7227856 m!7896686))

(declare-fun m!7896688 () Bool)

(assert (=> b!7227856 m!7896688))

(declare-fun m!7896690 () Bool)

(assert (=> b!7227856 m!7896690))

(check-sat (not b!7227856) (not start!700902) (not b!7227857))
(check-sat)
(get-model)

(declare-fun d!2244808 () Bool)

(assert (=> d!2244808 (= (maxBigInt!0 lt!2572350 lt!2572351) (ite (>= lt!2572350 lt!2572351) lt!2572350 lt!2572351))))

(assert (=> b!7227856 d!2244808))

(declare-fun b!7227865 () Bool)

(assert (=> b!7227865 true))

(declare-fun bs!1902112 () Bool)

(declare-fun b!7227867 () Bool)

(assert (= bs!1902112 (and b!7227867 b!7227865)))

(declare-fun lt!2572362 () Int)

(declare-fun lambda!438685 () Int)

(declare-fun lambda!438684 () Int)

(declare-fun lt!2572361 () Int)

(assert (=> bs!1902112 (= (= lt!2572361 lt!2572362) (= lambda!438685 lambda!438684))))

(assert (=> b!7227867 true))

(declare-fun d!2244812 () Bool)

(declare-fun e!4332767 () Bool)

(assert (=> d!2244812 e!4332767))

(declare-fun res!2932593 () Bool)

(assert (=> d!2244812 (=> (not res!2932593) (not e!4332767))))

(assert (=> d!2244812 (= res!2932593 (>= lt!2572361 0))))

(declare-fun e!4332766 () Int)

(assert (=> d!2244812 (= lt!2572361 e!4332766)))

(declare-fun c!1340992 () Bool)

(assert (=> d!2244812 (= c!1340992 ((_ is Cons!69845) (exprs!7883 (Context!14767 (t!384000 (exprs!7883 c!7037))))))))

(assert (=> d!2244812 (= (contextDepth!338 (Context!14767 (t!384000 (exprs!7883 c!7037)))) lt!2572361)))

(assert (=> b!7227865 (= e!4332766 lt!2572362)))

(assert (=> b!7227865 (= lt!2572362 (maxBigInt!0 (regexDepth!420 (h!76293 (exprs!7883 (Context!14767 (t!384000 (exprs!7883 c!7037)))))) (contextDepth!338 (Context!14767 (t!384000 (exprs!7883 (Context!14767 (t!384000 (exprs!7883 c!7037)))))))))))

(declare-datatypes ((Unit!163447 0))(
  ( (Unit!163448) )
))
(declare-fun lt!2572363 () Unit!163447)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!152 (List!69969 Int Int) Unit!163447)

(assert (=> b!7227865 (= lt!2572363 (lemmaForallRegexDepthBiggerThanTransitive!152 (t!384000 (exprs!7883 (Context!14767 (t!384000 (exprs!7883 c!7037))))) lt!2572362 (contextDepth!338 (Context!14767 (t!384000 (exprs!7883 (Context!14767 (t!384000 (exprs!7883 c!7037)))))))))))

(declare-fun forall!17255 (List!69969 Int) Bool)

(assert (=> b!7227865 (forall!17255 (t!384000 (exprs!7883 (Context!14767 (t!384000 (exprs!7883 c!7037))))) lambda!438684)))

(declare-fun lt!2572360 () Unit!163447)

(assert (=> b!7227865 (= lt!2572360 lt!2572363)))

(declare-fun b!7227866 () Bool)

(assert (=> b!7227866 (= e!4332766 0)))

(assert (=> b!7227867 (= e!4332767 (forall!17255 (exprs!7883 (Context!14767 (t!384000 (exprs!7883 c!7037)))) lambda!438685))))

(assert (= (and d!2244812 c!1340992) b!7227865))

(assert (= (and d!2244812 (not c!1340992)) b!7227866))

(assert (= (and d!2244812 res!2932593) b!7227867))

(declare-fun m!7896692 () Bool)

(assert (=> b!7227865 m!7896692))

(declare-fun m!7896694 () Bool)

(assert (=> b!7227865 m!7896694))

(declare-fun m!7896696 () Bool)

(assert (=> b!7227865 m!7896696))

(declare-fun m!7896698 () Bool)

(assert (=> b!7227865 m!7896698))

(assert (=> b!7227865 m!7896692))

(assert (=> b!7227865 m!7896694))

(declare-fun m!7896700 () Bool)

(assert (=> b!7227865 m!7896700))

(assert (=> b!7227865 m!7896694))

(declare-fun m!7896702 () Bool)

(assert (=> b!7227867 m!7896702))

(assert (=> b!7227856 d!2244812))

(declare-fun call!658011 () Int)

(declare-fun c!1341014 () Bool)

(declare-fun bm!658002 () Bool)

(declare-fun c!1341011 () Bool)

(assert (=> bm!658002 (= call!658011 (regexDepth!420 (ite c!1341011 (regOne!37375 (h!76293 (exprs!7883 c!7037))) (ite c!1341014 (regOne!37374 (h!76293 (exprs!7883 c!7037))) (reg!18760 (h!76293 (exprs!7883 c!7037)))))))))

(declare-fun b!7227909 () Bool)

(declare-fun e!4332793 () Bool)

(declare-fun e!4332792 () Bool)

(assert (=> b!7227909 (= e!4332793 e!4332792)))

(declare-fun res!2932600 () Bool)

(declare-fun lt!2572374 () Int)

(assert (=> b!7227909 (= res!2932600 (> lt!2572374 call!658011))))

(assert (=> b!7227909 (=> (not res!2932600) (not e!4332792))))

(declare-fun b!7227910 () Bool)

(declare-fun e!4332796 () Int)

(declare-fun call!658010 () Int)

(assert (=> b!7227910 (= e!4332796 (+ 1 call!658010))))

(declare-fun bm!658003 () Bool)

(declare-fun call!658012 () Int)

(declare-fun c!1341012 () Bool)

(assert (=> bm!658003 (= call!658012 (regexDepth!420 (ite c!1341012 (regTwo!37375 (h!76293 (exprs!7883 c!7037))) (regTwo!37374 (h!76293 (exprs!7883 c!7037))))))))

(declare-fun bm!658004 () Bool)

(declare-fun call!658007 () Int)

(assert (=> bm!658004 (= call!658007 call!658011)))

(declare-fun b!7227911 () Bool)

(declare-fun e!4332797 () Bool)

(assert (=> b!7227911 (= e!4332797 (= lt!2572374 1))))

(declare-fun b!7227912 () Bool)

(declare-fun call!658013 () Int)

(assert (=> b!7227912 (= e!4332792 (> lt!2572374 call!658013))))

(declare-fun b!7227913 () Bool)

(assert (=> b!7227913 (= e!4332796 1)))

(declare-fun b!7227914 () Bool)

(declare-fun res!2932602 () Bool)

(declare-fun e!4332794 () Bool)

(assert (=> b!7227914 (=> (not res!2932602) (not e!4332794))))

(assert (=> b!7227914 (= res!2932602 (> lt!2572374 call!658007))))

(declare-fun e!4332795 () Bool)

(assert (=> b!7227914 (= e!4332795 e!4332794)))

(declare-fun b!7227915 () Bool)

(declare-fun c!1341016 () Bool)

(assert (=> b!7227915 (= c!1341016 ((_ is Star!18431) (h!76293 (exprs!7883 c!7037))))))

(assert (=> b!7227915 (= e!4332795 e!4332797)))

(declare-fun b!7227916 () Bool)

(declare-fun e!4332790 () Int)

(assert (=> b!7227916 (= e!4332790 (+ 1 call!658010))))

(declare-fun b!7227917 () Bool)

(assert (=> b!7227917 (= e!4332797 (> lt!2572374 call!658007))))

(declare-fun call!658009 () Int)

(declare-fun bm!658005 () Bool)

(declare-fun c!1341010 () Bool)

(assert (=> bm!658005 (= call!658009 (regexDepth!420 (ite c!1341010 (reg!18760 (h!76293 (exprs!7883 c!7037))) (ite c!1341012 (regOne!37375 (h!76293 (exprs!7883 c!7037))) (regOne!37374 (h!76293 (exprs!7883 c!7037)))))))))

(declare-fun b!7227919 () Bool)

(assert (=> b!7227919 (= e!4332793 e!4332795)))

(assert (=> b!7227919 (= c!1341014 ((_ is Concat!27276) (h!76293 (exprs!7883 c!7037))))))

(declare-fun b!7227920 () Bool)

(declare-fun e!4332791 () Bool)

(assert (=> b!7227920 (= e!4332791 e!4332793)))

(assert (=> b!7227920 (= c!1341011 ((_ is Union!18431) (h!76293 (exprs!7883 c!7037))))))

(declare-fun b!7227921 () Bool)

(declare-fun e!4332799 () Int)

(declare-fun e!4332798 () Int)

(assert (=> b!7227921 (= e!4332799 e!4332798)))

(assert (=> b!7227921 (= c!1341010 ((_ is Star!18431) (h!76293 (exprs!7883 c!7037))))))

(declare-fun b!7227922 () Bool)

(assert (=> b!7227922 (= e!4332794 (> lt!2572374 call!658013))))

(declare-fun bm!658006 () Bool)

(assert (=> bm!658006 (= call!658013 (regexDepth!420 (ite c!1341011 (regTwo!37375 (h!76293 (exprs!7883 c!7037))) (regTwo!37374 (h!76293 (exprs!7883 c!7037))))))))

(declare-fun b!7227923 () Bool)

(assert (=> b!7227923 (= e!4332790 e!4332796)))

(declare-fun c!1341015 () Bool)

(assert (=> b!7227923 (= c!1341015 ((_ is Concat!27276) (h!76293 (exprs!7883 c!7037))))))

(declare-fun b!7227924 () Bool)

(assert (=> b!7227924 (= c!1341012 ((_ is Union!18431) (h!76293 (exprs!7883 c!7037))))))

(assert (=> b!7227924 (= e!4332798 e!4332790)))

(declare-fun b!7227925 () Bool)

(assert (=> b!7227925 (= e!4332799 1)))

(declare-fun bm!658007 () Bool)

(declare-fun call!658008 () Int)

(assert (=> bm!658007 (= call!658008 call!658009)))

(declare-fun bm!658008 () Bool)

(assert (=> bm!658008 (= call!658010 (maxBigInt!0 call!658008 call!658012))))

(declare-fun b!7227918 () Bool)

(assert (=> b!7227918 (= e!4332798 (+ 1 call!658009))))

(declare-fun d!2244814 () Bool)

(assert (=> d!2244814 e!4332791))

(declare-fun res!2932601 () Bool)

(assert (=> d!2244814 (=> (not res!2932601) (not e!4332791))))

(assert (=> d!2244814 (= res!2932601 (> lt!2572374 0))))

(assert (=> d!2244814 (= lt!2572374 e!4332799)))

(declare-fun c!1341013 () Bool)

(assert (=> d!2244814 (= c!1341013 ((_ is ElementMatch!18431) (h!76293 (exprs!7883 c!7037))))))

(assert (=> d!2244814 (= (regexDepth!420 (h!76293 (exprs!7883 c!7037))) lt!2572374)))

(assert (= (and d!2244814 c!1341013) b!7227925))

(assert (= (and d!2244814 (not c!1341013)) b!7227921))

(assert (= (and b!7227921 c!1341010) b!7227918))

(assert (= (and b!7227921 (not c!1341010)) b!7227924))

(assert (= (and b!7227924 c!1341012) b!7227916))

(assert (= (and b!7227924 (not c!1341012)) b!7227923))

(assert (= (and b!7227923 c!1341015) b!7227910))

(assert (= (and b!7227923 (not c!1341015)) b!7227913))

(assert (= (or b!7227916 b!7227910) bm!658007))

(assert (= (or b!7227916 b!7227910) bm!658003))

(assert (= (or b!7227916 b!7227910) bm!658008))

(assert (= (or b!7227918 bm!658007) bm!658005))

(assert (= (and d!2244814 res!2932601) b!7227920))

(assert (= (and b!7227920 c!1341011) b!7227909))

(assert (= (and b!7227920 (not c!1341011)) b!7227919))

(assert (= (and b!7227909 res!2932600) b!7227912))

(assert (= (and b!7227919 c!1341014) b!7227914))

(assert (= (and b!7227919 (not c!1341014)) b!7227915))

(assert (= (and b!7227914 res!2932602) b!7227922))

(assert (= (and b!7227915 c!1341016) b!7227917))

(assert (= (and b!7227915 (not c!1341016)) b!7227911))

(assert (= (or b!7227914 b!7227917) bm!658004))

(assert (= (or b!7227909 bm!658004) bm!658002))

(assert (= (or b!7227912 b!7227922) bm!658006))

(declare-fun m!7896706 () Bool)

(assert (=> bm!658006 m!7896706))

(declare-fun m!7896708 () Bool)

(assert (=> bm!658002 m!7896708))

(declare-fun m!7896710 () Bool)

(assert (=> bm!658003 m!7896710))

(declare-fun m!7896712 () Bool)

(assert (=> bm!658008 m!7896712))

(declare-fun m!7896714 () Bool)

(assert (=> bm!658005 m!7896714))

(assert (=> b!7227856 d!2244814))

(declare-fun bs!1902117 () Bool)

(declare-fun d!2244820 () Bool)

(assert (= bs!1902117 (and d!2244820 b!7227865)))

(declare-fun lambda!438697 () Int)

(assert (=> bs!1902117 (not (= lambda!438697 lambda!438684))))

(declare-fun bs!1902118 () Bool)

(assert (= bs!1902118 (and d!2244820 b!7227867)))

(assert (=> bs!1902118 (not (= lambda!438697 lambda!438685))))

(assert (=> d!2244820 (= (inv!89099 c!7037) (forall!17255 (exprs!7883 c!7037) lambda!438697))))

(declare-fun bs!1902119 () Bool)

(assert (= bs!1902119 d!2244820))

(declare-fun m!7896728 () Bool)

(assert (=> bs!1902119 m!7896728))

(assert (=> start!700902 d!2244820))

(declare-fun b!7227937 () Bool)

(declare-fun e!4332806 () Bool)

(declare-fun tp!2032629 () Bool)

(declare-fun tp!2032630 () Bool)

(assert (=> b!7227937 (= e!4332806 (and tp!2032629 tp!2032630))))

(assert (=> b!7227857 (= tp!2032624 e!4332806)))

(assert (= (and b!7227857 ((_ is Cons!69845) (exprs!7883 c!7037))) b!7227937))

(check-sat (not bm!658005) (not b!7227867) (not bm!658002) (not bm!658008) (not b!7227937) (not bm!658003) (not b!7227865) (not d!2244820) (not bm!658006))
(check-sat)
