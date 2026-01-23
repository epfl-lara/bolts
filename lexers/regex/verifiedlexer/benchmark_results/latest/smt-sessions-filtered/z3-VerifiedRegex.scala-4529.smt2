; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239910 () Bool)

(assert start!239910)

(declare-fun b_free!70587 () Bool)

(declare-fun b_next!71291 () Bool)

(assert (=> start!239910 (= b_free!70587 (not b_next!71291))))

(declare-fun tp!783471 () Bool)

(declare-fun b_and!185617 () Bool)

(assert (=> start!239910 (= tp!783471 b_and!185617)))

(declare-fun res!1042857 () Bool)

(declare-fun e!1560736 () Bool)

(assert (=> start!239910 (=> (not res!1042857) (not e!1560736))))

(declare-datatypes ((B!1885 0))(
  ( (B!1886 (val!8572 Int)) )
))
(declare-datatypes ((List!28729 0))(
  ( (Nil!28629) (Cons!28629 (h!34030 B!1885) (t!208732 List!28729)) )
))
(declare-fun l!3055 () List!28729)

(declare-fun p!1945 () Int)

(declare-fun forall!5881 (List!28729 Int) Bool)

(assert (=> start!239910 (= res!1042857 (not (forall!5881 l!3055 p!1945)))))

(assert (=> start!239910 e!1560736))

(declare-fun e!1560735 () Bool)

(assert (=> start!239910 e!1560735))

(assert (=> start!239910 tp!783471))

(declare-fun b!2460846 () Bool)

(declare-fun res!1042854 () Bool)

(assert (=> b!2460846 (=> (not res!1042854) (not e!1560736))))

(declare-fun dynLambda!12286 (Int B!1885) Bool)

(assert (=> b!2460846 (= res!1042854 (dynLambda!12286 p!1945 (h!34030 l!3055)))))

(declare-fun b!2460847 () Bool)

(declare-fun e!1560737 () Bool)

(assert (=> b!2460847 (= e!1560736 (not e!1560737))))

(declare-fun res!1042856 () Bool)

(assert (=> b!2460847 (=> res!1042856 e!1560737)))

(declare-fun isEmpty!16643 (List!28729) Bool)

(assert (=> b!2460847 (= res!1042856 (isEmpty!16643 l!3055))))

(declare-fun e!1560738 () Bool)

(assert (=> b!2460847 e!1560738))

(declare-fun res!1042855 () Bool)

(assert (=> b!2460847 (=> res!1042855 e!1560738)))

(assert (=> b!2460847 (= res!1042855 (isEmpty!16643 (t!208732 l!3055)))))

(declare-datatypes ((Unit!41973 0))(
  ( (Unit!41974) )
))
(declare-fun lt!881018 () Unit!41973)

(declare-fun lemmaNotForallFilterShorter!85 (List!28729 Int) Unit!41973)

(assert (=> b!2460847 (= lt!881018 (lemmaNotForallFilterShorter!85 (t!208732 l!3055) p!1945))))

(declare-fun b!2460848 () Bool)

(declare-fun res!1042858 () Bool)

(assert (=> b!2460848 (=> (not res!1042858) (not e!1560736))))

(get-info :version)

(assert (=> b!2460848 (= res!1042858 (not ((_ is Nil!28629) l!3055)))))

(declare-fun b!2460849 () Bool)

(declare-fun size!22284 (List!28729) Int)

(declare-fun filter!490 (List!28729 Int) List!28729)

(assert (=> b!2460849 (= e!1560737 (< (size!22284 (filter!490 l!3055 p!1945)) (size!22284 l!3055)))))

(declare-fun b!2460850 () Bool)

(declare-fun tp_is_empty!11915 () Bool)

(declare-fun tp!783470 () Bool)

(assert (=> b!2460850 (= e!1560735 (and tp_is_empty!11915 tp!783470))))

(declare-fun b!2460851 () Bool)

(assert (=> b!2460851 (= e!1560738 (< (size!22284 (filter!490 (t!208732 l!3055) p!1945)) (size!22284 (t!208732 l!3055))))))

(declare-fun b!2460852 () Bool)

(declare-fun res!1042853 () Bool)

(assert (=> b!2460852 (=> (not res!1042853) (not e!1560736))))

(assert (=> b!2460852 (= res!1042853 (not (forall!5881 (t!208732 l!3055) p!1945)))))

(assert (= (and start!239910 res!1042857) b!2460848))

(assert (= (and b!2460848 res!1042858) b!2460846))

(assert (= (and b!2460846 res!1042854) b!2460852))

(assert (= (and b!2460852 res!1042853) b!2460847))

(assert (= (and b!2460847 (not res!1042855)) b!2460851))

(assert (= (and b!2460847 (not res!1042856)) b!2460849))

(assert (= (and start!239910 ((_ is Cons!28629) l!3055)) b!2460850))

(declare-fun b_lambda!75305 () Bool)

(assert (=> (not b_lambda!75305) (not b!2460846)))

(declare-fun t!208731 () Bool)

(declare-fun tb!138863 () Bool)

(assert (=> (and start!239910 (= p!1945 p!1945) t!208731) tb!138863))

(declare-fun result!171414 () Bool)

(assert (=> tb!138863 (= result!171414 true)))

(assert (=> b!2460846 t!208731))

(declare-fun b_and!185619 () Bool)

(assert (= b_and!185617 (and (=> t!208731 result!171414) b_and!185619)))

(declare-fun m!2830079 () Bool)

(assert (=> b!2460846 m!2830079))

(declare-fun m!2830081 () Bool)

(assert (=> b!2460852 m!2830081))

(declare-fun m!2830083 () Bool)

(assert (=> start!239910 m!2830083))

(declare-fun m!2830085 () Bool)

(assert (=> b!2460849 m!2830085))

(assert (=> b!2460849 m!2830085))

(declare-fun m!2830087 () Bool)

(assert (=> b!2460849 m!2830087))

(declare-fun m!2830089 () Bool)

(assert (=> b!2460849 m!2830089))

(declare-fun m!2830091 () Bool)

(assert (=> b!2460851 m!2830091))

(assert (=> b!2460851 m!2830091))

(declare-fun m!2830093 () Bool)

(assert (=> b!2460851 m!2830093))

(declare-fun m!2830095 () Bool)

(assert (=> b!2460851 m!2830095))

(declare-fun m!2830097 () Bool)

(assert (=> b!2460847 m!2830097))

(declare-fun m!2830099 () Bool)

(assert (=> b!2460847 m!2830099))

(declare-fun m!2830101 () Bool)

(assert (=> b!2460847 m!2830101))

(check-sat (not b!2460847) tp_is_empty!11915 (not b_lambda!75305) (not start!239910) (not b!2460851) b_and!185619 (not b_next!71291) (not b!2460850) (not b!2460849) (not b!2460852))
(check-sat b_and!185619 (not b_next!71291))
(get-model)

(declare-fun b_lambda!75309 () Bool)

(assert (= b_lambda!75305 (or (and start!239910 b_free!70587) b_lambda!75309)))

(check-sat (not b!2460847) tp_is_empty!11915 (not b_lambda!75309) (not start!239910) (not b!2460851) b_and!185619 (not b_next!71291) (not b!2460850) (not b!2460849) (not b!2460852))
(check-sat b_and!185619 (not b_next!71291))
(get-model)

(declare-fun d!708362 () Bool)

(declare-fun lt!881021 () Int)

(assert (=> d!708362 (>= lt!881021 0)))

(declare-fun e!1560749 () Int)

(assert (=> d!708362 (= lt!881021 e!1560749)))

(declare-fun c!392758 () Bool)

(assert (=> d!708362 (= c!392758 ((_ is Nil!28629) (filter!490 (t!208732 l!3055) p!1945)))))

(assert (=> d!708362 (= (size!22284 (filter!490 (t!208732 l!3055) p!1945)) lt!881021)))

(declare-fun b!2460865 () Bool)

(assert (=> b!2460865 (= e!1560749 0)))

(declare-fun b!2460866 () Bool)

(assert (=> b!2460866 (= e!1560749 (+ 1 (size!22284 (t!208732 (filter!490 (t!208732 l!3055) p!1945)))))))

(assert (= (and d!708362 c!392758) b!2460865))

(assert (= (and d!708362 (not c!392758)) b!2460866))

(declare-fun m!2830107 () Bool)

(assert (=> b!2460866 m!2830107))

(assert (=> b!2460851 d!708362))

(declare-fun b!2460897 () Bool)

(declare-fun e!1560767 () List!28729)

(declare-fun call!151403 () List!28729)

(assert (=> b!2460897 (= e!1560767 call!151403)))

(declare-fun bm!151398 () Bool)

(assert (=> bm!151398 (= call!151403 (filter!490 (t!208732 (t!208732 l!3055)) p!1945))))

(declare-fun b!2460898 () Bool)

(declare-fun e!1560765 () List!28729)

(assert (=> b!2460898 (= e!1560765 Nil!28629)))

(declare-fun d!708368 () Bool)

(declare-fun e!1560766 () Bool)

(assert (=> d!708368 e!1560766))

(declare-fun res!1042876 () Bool)

(assert (=> d!708368 (=> (not res!1042876) (not e!1560766))))

(declare-fun lt!881029 () List!28729)

(assert (=> d!708368 (= res!1042876 (<= (size!22284 lt!881029) (size!22284 (t!208732 l!3055))))))

(assert (=> d!708368 (= lt!881029 e!1560765)))

(declare-fun c!392771 () Bool)

(assert (=> d!708368 (= c!392771 ((_ is Nil!28629) (t!208732 l!3055)))))

(assert (=> d!708368 (= (filter!490 (t!208732 l!3055) p!1945) lt!881029)))

(declare-fun b!2460899 () Bool)

(assert (=> b!2460899 (= e!1560767 (Cons!28629 (h!34030 (t!208732 l!3055)) call!151403))))

(declare-fun b!2460900 () Bool)

(declare-fun res!1042875 () Bool)

(assert (=> b!2460900 (=> (not res!1042875) (not e!1560766))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3943 (List!28729) (InoxSet B!1885))

(assert (=> b!2460900 (= res!1042875 (= ((_ map implies) (content!3943 lt!881029) (content!3943 (t!208732 l!3055))) ((as const (InoxSet B!1885)) true)))))

(declare-fun b!2460901 () Bool)

(assert (=> b!2460901 (= e!1560765 e!1560767)))

(declare-fun c!392770 () Bool)

(assert (=> b!2460901 (= c!392770 (dynLambda!12286 p!1945 (h!34030 (t!208732 l!3055))))))

(declare-fun b!2460902 () Bool)

(assert (=> b!2460902 (= e!1560766 (forall!5881 lt!881029 p!1945))))

(assert (= (and d!708368 c!392771) b!2460898))

(assert (= (and d!708368 (not c!392771)) b!2460901))

(assert (= (and b!2460901 c!392770) b!2460899))

(assert (= (and b!2460901 (not c!392770)) b!2460897))

(assert (= (or b!2460899 b!2460897) bm!151398))

(assert (= (and d!708368 res!1042876) b!2460900))

(assert (= (and b!2460900 res!1042875) b!2460902))

(declare-fun b_lambda!75315 () Bool)

(assert (=> (not b_lambda!75315) (not b!2460901)))

(declare-fun t!208736 () Bool)

(declare-fun tb!138867 () Bool)

(assert (=> (and start!239910 (= p!1945 p!1945) t!208736) tb!138867))

(declare-fun result!171418 () Bool)

(assert (=> tb!138867 (= result!171418 true)))

(assert (=> b!2460901 t!208736))

(declare-fun b_and!185625 () Bool)

(assert (= b_and!185619 (and (=> t!208736 result!171418) b_and!185625)))

(declare-fun m!2830111 () Bool)

(assert (=> bm!151398 m!2830111))

(declare-fun m!2830113 () Bool)

(assert (=> b!2460902 m!2830113))

(declare-fun m!2830115 () Bool)

(assert (=> b!2460900 m!2830115))

(declare-fun m!2830117 () Bool)

(assert (=> b!2460900 m!2830117))

(declare-fun m!2830119 () Bool)

(assert (=> d!708368 m!2830119))

(assert (=> d!708368 m!2830095))

(declare-fun m!2830121 () Bool)

(assert (=> b!2460901 m!2830121))

(assert (=> b!2460851 d!708368))

(declare-fun d!708372 () Bool)

(declare-fun lt!881030 () Int)

(assert (=> d!708372 (>= lt!881030 0)))

(declare-fun e!1560768 () Int)

(assert (=> d!708372 (= lt!881030 e!1560768)))

(declare-fun c!392772 () Bool)

(assert (=> d!708372 (= c!392772 ((_ is Nil!28629) (t!208732 l!3055)))))

(assert (=> d!708372 (= (size!22284 (t!208732 l!3055)) lt!881030)))

(declare-fun b!2460903 () Bool)

(assert (=> b!2460903 (= e!1560768 0)))

(declare-fun b!2460904 () Bool)

(assert (=> b!2460904 (= e!1560768 (+ 1 (size!22284 (t!208732 (t!208732 l!3055)))))))

(assert (= (and d!708372 c!392772) b!2460903))

(assert (= (and d!708372 (not c!392772)) b!2460904))

(declare-fun m!2830123 () Bool)

(assert (=> b!2460904 m!2830123))

(assert (=> b!2460851 d!708372))

(declare-fun d!708374 () Bool)

(declare-fun res!1042883 () Bool)

(declare-fun e!1560777 () Bool)

(assert (=> d!708374 (=> res!1042883 e!1560777)))

(assert (=> d!708374 (= res!1042883 ((_ is Nil!28629) (t!208732 l!3055)))))

(assert (=> d!708374 (= (forall!5881 (t!208732 l!3055) p!1945) e!1560777)))

(declare-fun b!2460917 () Bool)

(declare-fun e!1560778 () Bool)

(assert (=> b!2460917 (= e!1560777 e!1560778)))

(declare-fun res!1042884 () Bool)

(assert (=> b!2460917 (=> (not res!1042884) (not e!1560778))))

(assert (=> b!2460917 (= res!1042884 (dynLambda!12286 p!1945 (h!34030 (t!208732 l!3055))))))

(declare-fun b!2460918 () Bool)

(assert (=> b!2460918 (= e!1560778 (forall!5881 (t!208732 (t!208732 l!3055)) p!1945))))

(assert (= (and d!708374 (not res!1042883)) b!2460917))

(assert (= (and b!2460917 res!1042884) b!2460918))

(declare-fun b_lambda!75319 () Bool)

(assert (=> (not b_lambda!75319) (not b!2460917)))

(assert (=> b!2460917 t!208736))

(declare-fun b_and!185629 () Bool)

(assert (= b_and!185625 (and (=> t!208736 result!171418) b_and!185629)))

(assert (=> b!2460917 m!2830121))

(declare-fun m!2830137 () Bool)

(assert (=> b!2460918 m!2830137))

(assert (=> b!2460852 d!708374))

(declare-fun d!708382 () Bool)

(assert (=> d!708382 (= (isEmpty!16643 l!3055) ((_ is Nil!28629) l!3055))))

(assert (=> b!2460847 d!708382))

(declare-fun d!708386 () Bool)

(assert (=> d!708386 (= (isEmpty!16643 (t!208732 l!3055)) ((_ is Nil!28629) (t!208732 l!3055)))))

(assert (=> b!2460847 d!708386))

(declare-fun d!708388 () Bool)

(declare-fun e!1560785 () Bool)

(assert (=> d!708388 e!1560785))

(declare-fun res!1042891 () Bool)

(assert (=> d!708388 (=> res!1042891 e!1560785)))

(assert (=> d!708388 (= res!1042891 (isEmpty!16643 (t!208732 l!3055)))))

(declare-fun lt!881040 () Unit!41973)

(declare-fun choose!14563 (List!28729 Int) Unit!41973)

(assert (=> d!708388 (= lt!881040 (choose!14563 (t!208732 l!3055) p!1945))))

(assert (=> d!708388 (not (forall!5881 (t!208732 l!3055) p!1945))))

(assert (=> d!708388 (= (lemmaNotForallFilterShorter!85 (t!208732 l!3055) p!1945) lt!881040)))

(declare-fun b!2460926 () Bool)

(assert (=> b!2460926 (= e!1560785 (< (size!22284 (filter!490 (t!208732 l!3055) p!1945)) (size!22284 (t!208732 l!3055))))))

(assert (= (and d!708388 (not res!1042891)) b!2460926))

(assert (=> d!708388 m!2830099))

(declare-fun m!2830143 () Bool)

(assert (=> d!708388 m!2830143))

(assert (=> d!708388 m!2830081))

(assert (=> b!2460926 m!2830091))

(assert (=> b!2460926 m!2830091))

(assert (=> b!2460926 m!2830093))

(assert (=> b!2460926 m!2830095))

(assert (=> b!2460847 d!708388))

(declare-fun d!708394 () Bool)

(declare-fun res!1042893 () Bool)

(declare-fun e!1560789 () Bool)

(assert (=> d!708394 (=> res!1042893 e!1560789)))

(assert (=> d!708394 (= res!1042893 ((_ is Nil!28629) l!3055))))

(assert (=> d!708394 (= (forall!5881 l!3055 p!1945) e!1560789)))

(declare-fun b!2460933 () Bool)

(declare-fun e!1560790 () Bool)

(assert (=> b!2460933 (= e!1560789 e!1560790)))

(declare-fun res!1042894 () Bool)

(assert (=> b!2460933 (=> (not res!1042894) (not e!1560790))))

(assert (=> b!2460933 (= res!1042894 (dynLambda!12286 p!1945 (h!34030 l!3055)))))

(declare-fun b!2460934 () Bool)

(assert (=> b!2460934 (= e!1560790 (forall!5881 (t!208732 l!3055) p!1945))))

(assert (= (and d!708394 (not res!1042893)) b!2460933))

(assert (= (and b!2460933 res!1042894) b!2460934))

(declare-fun b_lambda!75323 () Bool)

(assert (=> (not b_lambda!75323) (not b!2460933)))

(assert (=> b!2460933 t!208731))

(declare-fun b_and!185633 () Bool)

(assert (= b_and!185629 (and (=> t!208731 result!171414) b_and!185633)))

(assert (=> b!2460933 m!2830079))

(assert (=> b!2460934 m!2830081))

(assert (=> start!239910 d!708394))

(declare-fun d!708398 () Bool)

(declare-fun lt!881042 () Int)

(assert (=> d!708398 (>= lt!881042 0)))

(declare-fun e!1560792 () Int)

(assert (=> d!708398 (= lt!881042 e!1560792)))

(declare-fun c!392780 () Bool)

(assert (=> d!708398 (= c!392780 ((_ is Nil!28629) (filter!490 l!3055 p!1945)))))

(assert (=> d!708398 (= (size!22284 (filter!490 l!3055 p!1945)) lt!881042)))

(declare-fun b!2460937 () Bool)

(assert (=> b!2460937 (= e!1560792 0)))

(declare-fun b!2460938 () Bool)

(assert (=> b!2460938 (= e!1560792 (+ 1 (size!22284 (t!208732 (filter!490 l!3055 p!1945)))))))

(assert (= (and d!708398 c!392780) b!2460937))

(assert (= (and d!708398 (not c!392780)) b!2460938))

(declare-fun m!2830153 () Bool)

(assert (=> b!2460938 m!2830153))

(assert (=> b!2460849 d!708398))

(declare-fun b!2460943 () Bool)

(declare-fun e!1560797 () List!28729)

(declare-fun call!151406 () List!28729)

(assert (=> b!2460943 (= e!1560797 call!151406)))

(declare-fun bm!151401 () Bool)

(assert (=> bm!151401 (= call!151406 (filter!490 (t!208732 l!3055) p!1945))))

(declare-fun b!2460944 () Bool)

(declare-fun e!1560795 () List!28729)

(assert (=> b!2460944 (= e!1560795 Nil!28629)))

(declare-fun d!708400 () Bool)

(declare-fun e!1560796 () Bool)

(assert (=> d!708400 e!1560796))

(declare-fun res!1042896 () Bool)

(assert (=> d!708400 (=> (not res!1042896) (not e!1560796))))

(declare-fun lt!881043 () List!28729)

(assert (=> d!708400 (= res!1042896 (<= (size!22284 lt!881043) (size!22284 l!3055)))))

(assert (=> d!708400 (= lt!881043 e!1560795)))

(declare-fun c!392782 () Bool)

(assert (=> d!708400 (= c!392782 ((_ is Nil!28629) l!3055))))

(assert (=> d!708400 (= (filter!490 l!3055 p!1945) lt!881043)))

(declare-fun b!2460945 () Bool)

(assert (=> b!2460945 (= e!1560797 (Cons!28629 (h!34030 l!3055) call!151406))))

(declare-fun b!2460946 () Bool)

(declare-fun res!1042895 () Bool)

(assert (=> b!2460946 (=> (not res!1042895) (not e!1560796))))

(assert (=> b!2460946 (= res!1042895 (= ((_ map implies) (content!3943 lt!881043) (content!3943 l!3055)) ((as const (InoxSet B!1885)) true)))))

(declare-fun b!2460947 () Bool)

(assert (=> b!2460947 (= e!1560795 e!1560797)))

(declare-fun c!392781 () Bool)

(assert (=> b!2460947 (= c!392781 (dynLambda!12286 p!1945 (h!34030 l!3055)))))

(declare-fun b!2460948 () Bool)

(assert (=> b!2460948 (= e!1560796 (forall!5881 lt!881043 p!1945))))

(assert (= (and d!708400 c!392782) b!2460944))

(assert (= (and d!708400 (not c!392782)) b!2460947))

(assert (= (and b!2460947 c!392781) b!2460945))

(assert (= (and b!2460947 (not c!392781)) b!2460943))

(assert (= (or b!2460945 b!2460943) bm!151401))

(assert (= (and d!708400 res!1042896) b!2460946))

(assert (= (and b!2460946 res!1042895) b!2460948))

(declare-fun b_lambda!75325 () Bool)

(assert (=> (not b_lambda!75325) (not b!2460947)))

(assert (=> b!2460947 t!208731))

(declare-fun b_and!185635 () Bool)

(assert (= b_and!185633 (and (=> t!208731 result!171414) b_and!185635)))

(assert (=> bm!151401 m!2830091))

(declare-fun m!2830155 () Bool)

(assert (=> b!2460948 m!2830155))

(declare-fun m!2830157 () Bool)

(assert (=> b!2460946 m!2830157))

(declare-fun m!2830159 () Bool)

(assert (=> b!2460946 m!2830159))

(declare-fun m!2830161 () Bool)

(assert (=> d!708400 m!2830161))

(assert (=> d!708400 m!2830089))

(assert (=> b!2460947 m!2830079))

(assert (=> b!2460849 d!708400))

(declare-fun d!708402 () Bool)

(declare-fun lt!881044 () Int)

(assert (=> d!708402 (>= lt!881044 0)))

(declare-fun e!1560799 () Int)

(assert (=> d!708402 (= lt!881044 e!1560799)))

(declare-fun c!392783 () Bool)

(assert (=> d!708402 (= c!392783 ((_ is Nil!28629) l!3055))))

(assert (=> d!708402 (= (size!22284 l!3055) lt!881044)))

(declare-fun b!2460950 () Bool)

(assert (=> b!2460950 (= e!1560799 0)))

(declare-fun b!2460951 () Bool)

(assert (=> b!2460951 (= e!1560799 (+ 1 (size!22284 (t!208732 l!3055))))))

(assert (= (and d!708402 c!392783) b!2460950))

(assert (= (and d!708402 (not c!392783)) b!2460951))

(assert (=> b!2460951 m!2830095))

(assert (=> b!2460849 d!708402))

(declare-fun b!2460956 () Bool)

(declare-fun e!1560802 () Bool)

(declare-fun tp!783477 () Bool)

(assert (=> b!2460956 (= e!1560802 (and tp_is_empty!11915 tp!783477))))

(assert (=> b!2460850 (= tp!783470 e!1560802)))

(assert (= (and b!2460850 ((_ is Cons!28629) (t!208732 l!3055))) b!2460956))

(declare-fun b_lambda!75335 () Bool)

(assert (= b_lambda!75319 (or (and start!239910 b_free!70587) b_lambda!75335)))

(declare-fun b_lambda!75337 () Bool)

(assert (= b_lambda!75325 (or (and start!239910 b_free!70587) b_lambda!75337)))

(declare-fun b_lambda!75339 () Bool)

(assert (= b_lambda!75315 (or (and start!239910 b_free!70587) b_lambda!75339)))

(declare-fun b_lambda!75341 () Bool)

(assert (= b_lambda!75323 (or (and start!239910 b_free!70587) b_lambda!75341)))

(check-sat (not b!2460904) (not d!708400) (not b_lambda!75309) b_and!185635 (not bm!151398) (not b_lambda!75337) (not b!2460866) (not b_lambda!75339) (not b!2460900) (not b!2460938) (not b!2460926) (not d!708368) (not b!2460902) (not b!2460918) (not b!2460948) tp_is_empty!11915 (not d!708388) (not b_lambda!75335) (not b!2460946) (not bm!151401) (not b_lambda!75341) (not b_next!71291) (not b!2460934) (not b!2460951) (not b!2460956))
(check-sat b_and!185635 (not b_next!71291))
