; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228958 () Bool)

(assert start!228958)

(declare-fun b!2319846 () Bool)

(declare-fun e!1486982 () Bool)

(declare-fun e!1486983 () Bool)

(assert (=> b!2319846 (= e!1486982 e!1486983)))

(declare-fun res!991057 () Bool)

(assert (=> b!2319846 (=> (not res!991057) (not e!1486983))))

(declare-fun lt!860233 () Int)

(assert (=> b!2319846 (= res!991057 (and (<= lt!860233 512) (= lt!860233 0)))))

(declare-datatypes ((T!43838 0))(
  ( (T!43839 (val!7970 Int)) )
))
(declare-datatypes ((List!27756 0))(
  ( (Nil!27658) (Cons!27658 (h!33059 T!43838) (t!207402 List!27756)) )
))
(declare-datatypes ((IArray!18131 0))(
  ( (IArray!18132 (innerList!9123 List!27756)) )
))
(declare-fun arr!18 () IArray!18131)

(declare-fun size!21906 (IArray!18131) Int)

(assert (=> b!2319846 (= lt!860233 (size!21906 arr!18))))

(declare-fun b!2319847 () Bool)

(declare-fun e!1486980 () Bool)

(declare-datatypes ((Conc!9063 0))(
  ( (Node!9063 (left!20991 Conc!9063) (right!21321 Conc!9063) (csize!18356 Int) (cheight!9274 Int)) (Leaf!13304 (xs!12023 IArray!18131) (csize!18357 Int)) (Empty!9063) )
))
(declare-fun acc!252 () Conc!9063)

(declare-fun e!1486979 () Bool)

(declare-fun inv!37588 (IArray!18131) Bool)

(assert (=> b!2319847 (= e!1486980 (and (inv!37588 (xs!12023 acc!252)) e!1486979))))

(declare-fun res!991058 () Bool)

(assert (=> start!228958 (=> (not res!991058) (not e!1486982))))

(declare-fun isBalanced!2757 (Conc!9063) Bool)

(assert (=> start!228958 (= res!991058 (isBalanced!2757 acc!252))))

(assert (=> start!228958 e!1486982))

(declare-fun inv!37589 (Conc!9063) Bool)

(assert (=> start!228958 (and (inv!37589 acc!252) e!1486980)))

(declare-fun e!1486981 () Bool)

(assert (=> start!228958 (and (inv!37588 arr!18) e!1486981)))

(declare-fun b!2319848 () Bool)

(declare-fun tp!736258 () Bool)

(assert (=> b!2319848 (= e!1486979 tp!736258)))

(declare-fun tp!736256 () Bool)

(declare-fun b!2319849 () Bool)

(declare-fun tp!736259 () Bool)

(assert (=> b!2319849 (= e!1486980 (and (inv!37589 (left!20991 acc!252)) tp!736256 (inv!37589 (right!21321 acc!252)) tp!736259))))

(declare-fun b!2319850 () Bool)

(declare-fun lt!860232 () List!27756)

(declare-fun ++!6814 (List!27756 List!27756) List!27756)

(declare-fun list!10996 (IArray!18131) List!27756)

(assert (=> b!2319850 (= e!1486983 (not (= lt!860232 (++!6814 lt!860232 (list!10996 arr!18)))))))

(declare-fun list!10997 (Conc!9063) List!27756)

(assert (=> b!2319850 (= lt!860232 (list!10997 acc!252))))

(declare-fun b!2319851 () Bool)

(declare-fun tp!736257 () Bool)

(assert (=> b!2319851 (= e!1486981 tp!736257)))

(assert (= (and start!228958 res!991058) b!2319846))

(assert (= (and b!2319846 res!991057) b!2319850))

(get-info :version)

(assert (= (and start!228958 ((_ is Node!9063) acc!252)) b!2319849))

(assert (= b!2319847 b!2319848))

(assert (= (and start!228958 ((_ is Leaf!13304) acc!252)) b!2319847))

(assert (= start!228958 b!2319851))

(declare-fun m!2748483 () Bool)

(assert (=> start!228958 m!2748483))

(declare-fun m!2748485 () Bool)

(assert (=> start!228958 m!2748485))

(declare-fun m!2748487 () Bool)

(assert (=> start!228958 m!2748487))

(declare-fun m!2748489 () Bool)

(assert (=> b!2319849 m!2748489))

(declare-fun m!2748491 () Bool)

(assert (=> b!2319849 m!2748491))

(declare-fun m!2748493 () Bool)

(assert (=> b!2319847 m!2748493))

(declare-fun m!2748495 () Bool)

(assert (=> b!2319850 m!2748495))

(assert (=> b!2319850 m!2748495))

(declare-fun m!2748497 () Bool)

(assert (=> b!2319850 m!2748497))

(declare-fun m!2748499 () Bool)

(assert (=> b!2319850 m!2748499))

(declare-fun m!2748501 () Bool)

(assert (=> b!2319846 m!2748501))

(check-sat (not b!2319849) (not b!2319846) (not b!2319851) (not b!2319848) (not b!2319847) (not b!2319850) (not start!228958))
(check-sat)
(get-model)

(declare-fun d!685909 () Bool)

(declare-fun lt!860239 () Int)

(declare-fun size!21908 (List!27756) Int)

(assert (=> d!685909 (= lt!860239 (size!21908 (list!10996 arr!18)))))

(declare-fun choose!13588 (IArray!18131) Int)

(assert (=> d!685909 (= lt!860239 (choose!13588 arr!18))))

(assert (=> d!685909 (= (size!21906 arr!18) lt!860239)))

(declare-fun bs!458971 () Bool)

(assert (= bs!458971 d!685909))

(assert (=> bs!458971 m!2748495))

(assert (=> bs!458971 m!2748495))

(declare-fun m!2748507 () Bool)

(assert (=> bs!458971 m!2748507))

(declare-fun m!2748509 () Bool)

(assert (=> bs!458971 m!2748509))

(assert (=> b!2319846 d!685909))

(declare-fun b!2319876 () Bool)

(declare-fun e!1486996 () Bool)

(declare-fun e!1486997 () Bool)

(assert (=> b!2319876 (= e!1486996 e!1486997)))

(declare-fun res!991075 () Bool)

(assert (=> b!2319876 (=> (not res!991075) (not e!1486997))))

(declare-fun height!1323 (Conc!9063) Int)

(assert (=> b!2319876 (= res!991075 (<= (- 1) (- (height!1323 (left!20991 acc!252)) (height!1323 (right!21321 acc!252)))))))

(declare-fun b!2319877 () Bool)

(declare-fun res!991076 () Bool)

(assert (=> b!2319877 (=> (not res!991076) (not e!1486997))))

(assert (=> b!2319877 (= res!991076 (<= (- (height!1323 (left!20991 acc!252)) (height!1323 (right!21321 acc!252))) 1))))

(declare-fun d!685915 () Bool)

(declare-fun res!991078 () Bool)

(assert (=> d!685915 (=> res!991078 e!1486996)))

(assert (=> d!685915 (= res!991078 (not ((_ is Node!9063) acc!252)))))

(assert (=> d!685915 (= (isBalanced!2757 acc!252) e!1486996)))

(declare-fun b!2319878 () Bool)

(declare-fun res!991080 () Bool)

(assert (=> b!2319878 (=> (not res!991080) (not e!1486997))))

(assert (=> b!2319878 (= res!991080 (isBalanced!2757 (left!20991 acc!252)))))

(declare-fun b!2319879 () Bool)

(declare-fun res!991079 () Bool)

(assert (=> b!2319879 (=> (not res!991079) (not e!1486997))))

(assert (=> b!2319879 (= res!991079 (isBalanced!2757 (right!21321 acc!252)))))

(declare-fun b!2319880 () Bool)

(declare-fun res!991077 () Bool)

(assert (=> b!2319880 (=> (not res!991077) (not e!1486997))))

(declare-fun isEmpty!15781 (Conc!9063) Bool)

(assert (=> b!2319880 (= res!991077 (not (isEmpty!15781 (left!20991 acc!252))))))

(declare-fun b!2319881 () Bool)

(assert (=> b!2319881 (= e!1486997 (not (isEmpty!15781 (right!21321 acc!252))))))

(assert (= (and d!685915 (not res!991078)) b!2319876))

(assert (= (and b!2319876 res!991075) b!2319877))

(assert (= (and b!2319877 res!991076) b!2319878))

(assert (= (and b!2319878 res!991080) b!2319879))

(assert (= (and b!2319879 res!991079) b!2319880))

(assert (= (and b!2319880 res!991077) b!2319881))

(declare-fun m!2748519 () Bool)

(assert (=> b!2319876 m!2748519))

(declare-fun m!2748521 () Bool)

(assert (=> b!2319876 m!2748521))

(declare-fun m!2748523 () Bool)

(assert (=> b!2319881 m!2748523))

(declare-fun m!2748525 () Bool)

(assert (=> b!2319878 m!2748525))

(declare-fun m!2748527 () Bool)

(assert (=> b!2319880 m!2748527))

(assert (=> b!2319877 m!2748519))

(assert (=> b!2319877 m!2748521))

(declare-fun m!2748529 () Bool)

(assert (=> b!2319879 m!2748529))

(assert (=> start!228958 d!685915))

(declare-fun d!685921 () Bool)

(declare-fun c!367922 () Bool)

(assert (=> d!685921 (= c!367922 ((_ is Node!9063) acc!252))))

(declare-fun e!1487008 () Bool)

(assert (=> d!685921 (= (inv!37589 acc!252) e!1487008)))

(declare-fun b!2319906 () Bool)

(declare-fun inv!37592 (Conc!9063) Bool)

(assert (=> b!2319906 (= e!1487008 (inv!37592 acc!252))))

(declare-fun b!2319907 () Bool)

(declare-fun e!1487009 () Bool)

(assert (=> b!2319907 (= e!1487008 e!1487009)))

(declare-fun res!991101 () Bool)

(assert (=> b!2319907 (= res!991101 (not ((_ is Leaf!13304) acc!252)))))

(assert (=> b!2319907 (=> res!991101 e!1487009)))

(declare-fun b!2319908 () Bool)

(declare-fun inv!37593 (Conc!9063) Bool)

(assert (=> b!2319908 (= e!1487009 (inv!37593 acc!252))))

(assert (= (and d!685921 c!367922) b!2319906))

(assert (= (and d!685921 (not c!367922)) b!2319907))

(assert (= (and b!2319907 (not res!991101)) b!2319908))

(declare-fun m!2748543 () Bool)

(assert (=> b!2319906 m!2748543))

(declare-fun m!2748545 () Bool)

(assert (=> b!2319908 m!2748545))

(assert (=> start!228958 d!685921))

(declare-fun d!685925 () Bool)

(assert (=> d!685925 (= (inv!37588 arr!18) (<= (size!21908 (innerList!9123 arr!18)) 2147483647))))

(declare-fun bs!458972 () Bool)

(assert (= bs!458972 d!685925))

(declare-fun m!2748551 () Bool)

(assert (=> bs!458972 m!2748551))

(assert (=> start!228958 d!685925))

(declare-fun d!685929 () Bool)

(assert (=> d!685929 (= (inv!37588 (xs!12023 acc!252)) (<= (size!21908 (innerList!9123 (xs!12023 acc!252))) 2147483647))))

(declare-fun bs!458973 () Bool)

(assert (= bs!458973 d!685929))

(declare-fun m!2748553 () Bool)

(assert (=> bs!458973 m!2748553))

(assert (=> b!2319847 d!685929))

(declare-fun d!685931 () Bool)

(declare-fun c!367924 () Bool)

(assert (=> d!685931 (= c!367924 ((_ is Node!9063) (left!20991 acc!252)))))

(declare-fun e!1487012 () Bool)

(assert (=> d!685931 (= (inv!37589 (left!20991 acc!252)) e!1487012)))

(declare-fun b!2319912 () Bool)

(assert (=> b!2319912 (= e!1487012 (inv!37592 (left!20991 acc!252)))))

(declare-fun b!2319913 () Bool)

(declare-fun e!1487013 () Bool)

(assert (=> b!2319913 (= e!1487012 e!1487013)))

(declare-fun res!991103 () Bool)

(assert (=> b!2319913 (= res!991103 (not ((_ is Leaf!13304) (left!20991 acc!252))))))

(assert (=> b!2319913 (=> res!991103 e!1487013)))

(declare-fun b!2319914 () Bool)

(assert (=> b!2319914 (= e!1487013 (inv!37593 (left!20991 acc!252)))))

(assert (= (and d!685931 c!367924) b!2319912))

(assert (= (and d!685931 (not c!367924)) b!2319913))

(assert (= (and b!2319913 (not res!991103)) b!2319914))

(declare-fun m!2748559 () Bool)

(assert (=> b!2319912 m!2748559))

(declare-fun m!2748561 () Bool)

(assert (=> b!2319914 m!2748561))

(assert (=> b!2319849 d!685931))

(declare-fun d!685937 () Bool)

(declare-fun c!367925 () Bool)

(assert (=> d!685937 (= c!367925 ((_ is Node!9063) (right!21321 acc!252)))))

(declare-fun e!1487014 () Bool)

(assert (=> d!685937 (= (inv!37589 (right!21321 acc!252)) e!1487014)))

(declare-fun b!2319915 () Bool)

(assert (=> b!2319915 (= e!1487014 (inv!37592 (right!21321 acc!252)))))

(declare-fun b!2319916 () Bool)

(declare-fun e!1487015 () Bool)

(assert (=> b!2319916 (= e!1487014 e!1487015)))

(declare-fun res!991104 () Bool)

(assert (=> b!2319916 (= res!991104 (not ((_ is Leaf!13304) (right!21321 acc!252))))))

(assert (=> b!2319916 (=> res!991104 e!1487015)))

(declare-fun b!2319917 () Bool)

(assert (=> b!2319917 (= e!1487015 (inv!37593 (right!21321 acc!252)))))

(assert (= (and d!685937 c!367925) b!2319915))

(assert (= (and d!685937 (not c!367925)) b!2319916))

(assert (= (and b!2319916 (not res!991104)) b!2319917))

(declare-fun m!2748563 () Bool)

(assert (=> b!2319915 m!2748563))

(declare-fun m!2748565 () Bool)

(assert (=> b!2319917 m!2748565))

(assert (=> b!2319849 d!685937))

(declare-fun e!1487027 () Bool)

(declare-fun b!2319941 () Bool)

(declare-fun lt!860245 () List!27756)

(assert (=> b!2319941 (= e!1487027 (or (not (= (list!10996 arr!18) Nil!27658)) (= lt!860245 lt!860232)))))

(declare-fun b!2319940 () Bool)

(declare-fun res!991116 () Bool)

(assert (=> b!2319940 (=> (not res!991116) (not e!1487027))))

(assert (=> b!2319940 (= res!991116 (= (size!21908 lt!860245) (+ (size!21908 lt!860232) (size!21908 (list!10996 arr!18)))))))

(declare-fun b!2319939 () Bool)

(declare-fun e!1487026 () List!27756)

(assert (=> b!2319939 (= e!1487026 (Cons!27658 (h!33059 lt!860232) (++!6814 (t!207402 lt!860232) (list!10996 arr!18))))))

(declare-fun b!2319938 () Bool)

(assert (=> b!2319938 (= e!1487026 (list!10996 arr!18))))

(declare-fun d!685939 () Bool)

(assert (=> d!685939 e!1487027))

(declare-fun res!991115 () Bool)

(assert (=> d!685939 (=> (not res!991115) (not e!1487027))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3737 (List!27756) (InoxSet T!43838))

(assert (=> d!685939 (= res!991115 (= (content!3737 lt!860245) ((_ map or) (content!3737 lt!860232) (content!3737 (list!10996 arr!18)))))))

(assert (=> d!685939 (= lt!860245 e!1487026)))

(declare-fun c!367931 () Bool)

(assert (=> d!685939 (= c!367931 ((_ is Nil!27658) lt!860232))))

(assert (=> d!685939 (= (++!6814 lt!860232 (list!10996 arr!18)) lt!860245)))

(assert (= (and d!685939 c!367931) b!2319938))

(assert (= (and d!685939 (not c!367931)) b!2319939))

(assert (= (and d!685939 res!991115) b!2319940))

(assert (= (and b!2319940 res!991116) b!2319941))

(declare-fun m!2748579 () Bool)

(assert (=> b!2319940 m!2748579))

(declare-fun m!2748581 () Bool)

(assert (=> b!2319940 m!2748581))

(assert (=> b!2319940 m!2748495))

(assert (=> b!2319940 m!2748507))

(assert (=> b!2319939 m!2748495))

(declare-fun m!2748583 () Bool)

(assert (=> b!2319939 m!2748583))

(declare-fun m!2748585 () Bool)

(assert (=> d!685939 m!2748585))

(declare-fun m!2748587 () Bool)

(assert (=> d!685939 m!2748587))

(assert (=> d!685939 m!2748495))

(declare-fun m!2748589 () Bool)

(assert (=> d!685939 m!2748589))

(assert (=> b!2319850 d!685939))

(declare-fun d!685945 () Bool)

(assert (=> d!685945 (= (list!10996 arr!18) (innerList!9123 arr!18))))

(assert (=> b!2319850 d!685945))

(declare-fun b!2319966 () Bool)

(declare-fun e!1487040 () List!27756)

(assert (=> b!2319966 (= e!1487040 Nil!27658)))

(declare-fun b!2319967 () Bool)

(declare-fun e!1487041 () List!27756)

(assert (=> b!2319967 (= e!1487040 e!1487041)))

(declare-fun c!367943 () Bool)

(assert (=> b!2319967 (= c!367943 ((_ is Leaf!13304) acc!252))))

(declare-fun b!2319969 () Bool)

(assert (=> b!2319969 (= e!1487041 (++!6814 (list!10997 (left!20991 acc!252)) (list!10997 (right!21321 acc!252))))))

(declare-fun d!685947 () Bool)

(declare-fun c!367942 () Bool)

(assert (=> d!685947 (= c!367942 ((_ is Empty!9063) acc!252))))

(assert (=> d!685947 (= (list!10997 acc!252) e!1487040)))

(declare-fun b!2319968 () Bool)

(assert (=> b!2319968 (= e!1487041 (list!10996 (xs!12023 acc!252)))))

(assert (= (and d!685947 c!367942) b!2319966))

(assert (= (and d!685947 (not c!367942)) b!2319967))

(assert (= (and b!2319967 c!367943) b!2319968))

(assert (= (and b!2319967 (not c!367943)) b!2319969))

(declare-fun m!2748599 () Bool)

(assert (=> b!2319969 m!2748599))

(declare-fun m!2748601 () Bool)

(assert (=> b!2319969 m!2748601))

(assert (=> b!2319969 m!2748599))

(assert (=> b!2319969 m!2748601))

(declare-fun m!2748603 () Bool)

(assert (=> b!2319969 m!2748603))

(declare-fun m!2748605 () Bool)

(assert (=> b!2319968 m!2748605))

(assert (=> b!2319850 d!685947))

(declare-fun b!2319983 () Bool)

(declare-fun e!1487049 () Bool)

(declare-fun tp_is_empty!10813 () Bool)

(declare-fun tp!736271 () Bool)

(assert (=> b!2319983 (= e!1487049 (and tp_is_empty!10813 tp!736271))))

(assert (=> b!2319851 (= tp!736257 e!1487049)))

(assert (= (and b!2319851 ((_ is Cons!27658) (innerList!9123 arr!18))) b!2319983))

(declare-fun tp!736286 () Bool)

(declare-fun e!1487059 () Bool)

(declare-fun b!2319998 () Bool)

(declare-fun tp!736285 () Bool)

(assert (=> b!2319998 (= e!1487059 (and (inv!37589 (left!20991 (left!20991 acc!252))) tp!736285 (inv!37589 (right!21321 (left!20991 acc!252))) tp!736286))))

(declare-fun b!2320000 () Bool)

(declare-fun e!1487058 () Bool)

(declare-fun tp!736284 () Bool)

(assert (=> b!2320000 (= e!1487058 tp!736284)))

(declare-fun b!2319999 () Bool)

(assert (=> b!2319999 (= e!1487059 (and (inv!37588 (xs!12023 (left!20991 acc!252))) e!1487058))))

(assert (=> b!2319849 (= tp!736256 (and (inv!37589 (left!20991 acc!252)) e!1487059))))

(assert (= (and b!2319849 ((_ is Node!9063) (left!20991 acc!252))) b!2319998))

(assert (= b!2319999 b!2320000))

(assert (= (and b!2319849 ((_ is Leaf!13304) (left!20991 acc!252))) b!2319999))

(declare-fun m!2748619 () Bool)

(assert (=> b!2319998 m!2748619))

(declare-fun m!2748621 () Bool)

(assert (=> b!2319998 m!2748621))

(declare-fun m!2748623 () Bool)

(assert (=> b!2319999 m!2748623))

(assert (=> b!2319849 m!2748489))

(declare-fun e!1487062 () Bool)

(declare-fun tp!736289 () Bool)

(declare-fun tp!736290 () Bool)

(declare-fun b!2320002 () Bool)

(assert (=> b!2320002 (= e!1487062 (and (inv!37589 (left!20991 (right!21321 acc!252))) tp!736289 (inv!37589 (right!21321 (right!21321 acc!252))) tp!736290))))

(declare-fun b!2320004 () Bool)

(declare-fun e!1487061 () Bool)

(declare-fun tp!736288 () Bool)

(assert (=> b!2320004 (= e!1487061 tp!736288)))

(declare-fun b!2320003 () Bool)

(assert (=> b!2320003 (= e!1487062 (and (inv!37588 (xs!12023 (right!21321 acc!252))) e!1487061))))

(assert (=> b!2319849 (= tp!736259 (and (inv!37589 (right!21321 acc!252)) e!1487062))))

(assert (= (and b!2319849 ((_ is Node!9063) (right!21321 acc!252))) b!2320002))

(assert (= b!2320003 b!2320004))

(assert (= (and b!2319849 ((_ is Leaf!13304) (right!21321 acc!252))) b!2320003))

(declare-fun m!2748625 () Bool)

(assert (=> b!2320002 m!2748625))

(declare-fun m!2748627 () Bool)

(assert (=> b!2320002 m!2748627))

(declare-fun m!2748629 () Bool)

(assert (=> b!2320003 m!2748629))

(assert (=> b!2319849 m!2748491))

(declare-fun b!2320005 () Bool)

(declare-fun e!1487063 () Bool)

(declare-fun tp!736291 () Bool)

(assert (=> b!2320005 (= e!1487063 (and tp_is_empty!10813 tp!736291))))

(assert (=> b!2319848 (= tp!736258 e!1487063)))

(assert (= (and b!2319848 ((_ is Cons!27658) (innerList!9123 (xs!12023 acc!252)))) b!2320005))

(check-sat (not d!685939) (not b!2319969) (not b!2319849) (not b!2319917) (not b!2319914) (not d!685929) (not b!2319940) (not b!2319912) (not b!2319983) (not b!2320005) (not d!685909) (not b!2319999) (not b!2319968) (not b!2320002) (not b!2319877) (not b!2319939) (not b!2319906) (not b!2319880) (not b!2319879) (not b!2319876) (not b!2319878) (not b!2319915) tp_is_empty!10813 (not d!685925) (not b!2320003) (not b!2319908) (not b!2320004) (not b!2320000) (not b!2319881) (not b!2319998))
(check-sat)
(get-model)

(declare-fun d!685949 () Bool)

(assert (=> d!685949 (= (inv!37588 (xs!12023 (right!21321 acc!252))) (<= (size!21908 (innerList!9123 (xs!12023 (right!21321 acc!252)))) 2147483647))))

(declare-fun bs!458976 () Bool)

(assert (= bs!458976 d!685949))

(declare-fun m!2748631 () Bool)

(assert (=> bs!458976 m!2748631))

(assert (=> b!2320003 d!685949))

(declare-fun b!2320009 () Bool)

(declare-fun e!1487065 () Bool)

(declare-fun lt!860246 () List!27756)

(assert (=> b!2320009 (= e!1487065 (or (not (= (list!10997 (right!21321 acc!252)) Nil!27658)) (= lt!860246 (list!10997 (left!20991 acc!252)))))))

(declare-fun b!2320008 () Bool)

(declare-fun res!991118 () Bool)

(assert (=> b!2320008 (=> (not res!991118) (not e!1487065))))

(assert (=> b!2320008 (= res!991118 (= (size!21908 lt!860246) (+ (size!21908 (list!10997 (left!20991 acc!252))) (size!21908 (list!10997 (right!21321 acc!252))))))))

(declare-fun b!2320007 () Bool)

(declare-fun e!1487064 () List!27756)

(assert (=> b!2320007 (= e!1487064 (Cons!27658 (h!33059 (list!10997 (left!20991 acc!252))) (++!6814 (t!207402 (list!10997 (left!20991 acc!252))) (list!10997 (right!21321 acc!252)))))))

(declare-fun b!2320006 () Bool)

(assert (=> b!2320006 (= e!1487064 (list!10997 (right!21321 acc!252)))))

(declare-fun d!685951 () Bool)

(assert (=> d!685951 e!1487065))

(declare-fun res!991117 () Bool)

(assert (=> d!685951 (=> (not res!991117) (not e!1487065))))

(assert (=> d!685951 (= res!991117 (= (content!3737 lt!860246) ((_ map or) (content!3737 (list!10997 (left!20991 acc!252))) (content!3737 (list!10997 (right!21321 acc!252))))))))

(assert (=> d!685951 (= lt!860246 e!1487064)))

(declare-fun c!367944 () Bool)

(assert (=> d!685951 (= c!367944 ((_ is Nil!27658) (list!10997 (left!20991 acc!252))))))

(assert (=> d!685951 (= (++!6814 (list!10997 (left!20991 acc!252)) (list!10997 (right!21321 acc!252))) lt!860246)))

(assert (= (and d!685951 c!367944) b!2320006))

(assert (= (and d!685951 (not c!367944)) b!2320007))

(assert (= (and d!685951 res!991117) b!2320008))

(assert (= (and b!2320008 res!991118) b!2320009))

(declare-fun m!2748633 () Bool)

(assert (=> b!2320008 m!2748633))

(assert (=> b!2320008 m!2748599))

(declare-fun m!2748635 () Bool)

(assert (=> b!2320008 m!2748635))

(assert (=> b!2320008 m!2748601))

(declare-fun m!2748637 () Bool)

(assert (=> b!2320008 m!2748637))

(assert (=> b!2320007 m!2748601))

(declare-fun m!2748639 () Bool)

(assert (=> b!2320007 m!2748639))

(declare-fun m!2748641 () Bool)

(assert (=> d!685951 m!2748641))

(assert (=> d!685951 m!2748599))

(declare-fun m!2748643 () Bool)

(assert (=> d!685951 m!2748643))

(assert (=> d!685951 m!2748601))

(declare-fun m!2748645 () Bool)

(assert (=> d!685951 m!2748645))

(assert (=> b!2319969 d!685951))

(declare-fun b!2320010 () Bool)

(declare-fun e!1487066 () List!27756)

(assert (=> b!2320010 (= e!1487066 Nil!27658)))

(declare-fun b!2320011 () Bool)

(declare-fun e!1487067 () List!27756)

(assert (=> b!2320011 (= e!1487066 e!1487067)))

(declare-fun c!367946 () Bool)

(assert (=> b!2320011 (= c!367946 ((_ is Leaf!13304) (left!20991 acc!252)))))

(declare-fun b!2320013 () Bool)

(assert (=> b!2320013 (= e!1487067 (++!6814 (list!10997 (left!20991 (left!20991 acc!252))) (list!10997 (right!21321 (left!20991 acc!252)))))))

(declare-fun d!685953 () Bool)

(declare-fun c!367945 () Bool)

(assert (=> d!685953 (= c!367945 ((_ is Empty!9063) (left!20991 acc!252)))))

(assert (=> d!685953 (= (list!10997 (left!20991 acc!252)) e!1487066)))

(declare-fun b!2320012 () Bool)

(assert (=> b!2320012 (= e!1487067 (list!10996 (xs!12023 (left!20991 acc!252))))))

(assert (= (and d!685953 c!367945) b!2320010))

(assert (= (and d!685953 (not c!367945)) b!2320011))

(assert (= (and b!2320011 c!367946) b!2320012))

(assert (= (and b!2320011 (not c!367946)) b!2320013))

(declare-fun m!2748647 () Bool)

(assert (=> b!2320013 m!2748647))

(declare-fun m!2748649 () Bool)

(assert (=> b!2320013 m!2748649))

(assert (=> b!2320013 m!2748647))

(assert (=> b!2320013 m!2748649))

(declare-fun m!2748651 () Bool)

(assert (=> b!2320013 m!2748651))

(declare-fun m!2748653 () Bool)

(assert (=> b!2320012 m!2748653))

(assert (=> b!2319969 d!685953))

(declare-fun b!2320014 () Bool)

(declare-fun e!1487068 () List!27756)

(assert (=> b!2320014 (= e!1487068 Nil!27658)))

(declare-fun b!2320015 () Bool)

(declare-fun e!1487069 () List!27756)

(assert (=> b!2320015 (= e!1487068 e!1487069)))

(declare-fun c!367948 () Bool)

(assert (=> b!2320015 (= c!367948 ((_ is Leaf!13304) (right!21321 acc!252)))))

(declare-fun b!2320017 () Bool)

(assert (=> b!2320017 (= e!1487069 (++!6814 (list!10997 (left!20991 (right!21321 acc!252))) (list!10997 (right!21321 (right!21321 acc!252)))))))

(declare-fun d!685955 () Bool)

(declare-fun c!367947 () Bool)

(assert (=> d!685955 (= c!367947 ((_ is Empty!9063) (right!21321 acc!252)))))

(assert (=> d!685955 (= (list!10997 (right!21321 acc!252)) e!1487068)))

(declare-fun b!2320016 () Bool)

(assert (=> b!2320016 (= e!1487069 (list!10996 (xs!12023 (right!21321 acc!252))))))

(assert (= (and d!685955 c!367947) b!2320014))

(assert (= (and d!685955 (not c!367947)) b!2320015))

(assert (= (and b!2320015 c!367948) b!2320016))

(assert (= (and b!2320015 (not c!367948)) b!2320017))

(declare-fun m!2748655 () Bool)

(assert (=> b!2320017 m!2748655))

(declare-fun m!2748657 () Bool)

(assert (=> b!2320017 m!2748657))

(assert (=> b!2320017 m!2748655))

(assert (=> b!2320017 m!2748657))

(declare-fun m!2748659 () Bool)

(assert (=> b!2320017 m!2748659))

(declare-fun m!2748661 () Bool)

(assert (=> b!2320016 m!2748661))

(assert (=> b!2319969 d!685955))

(declare-fun d!685957 () Bool)

(assert (=> d!685957 (= (list!10996 (xs!12023 acc!252)) (innerList!9123 (xs!12023 acc!252)))))

(assert (=> b!2319968 d!685957))

(declare-fun d!685959 () Bool)

(declare-fun res!991125 () Bool)

(declare-fun e!1487072 () Bool)

(assert (=> d!685959 (=> (not res!991125) (not e!1487072))))

(declare-fun size!21909 (Conc!9063) Int)

(assert (=> d!685959 (= res!991125 (= (csize!18356 (left!20991 acc!252)) (+ (size!21909 (left!20991 (left!20991 acc!252))) (size!21909 (right!21321 (left!20991 acc!252))))))))

(assert (=> d!685959 (= (inv!37592 (left!20991 acc!252)) e!1487072)))

(declare-fun b!2320024 () Bool)

(declare-fun res!991126 () Bool)

(assert (=> b!2320024 (=> (not res!991126) (not e!1487072))))

(assert (=> b!2320024 (= res!991126 (and (not (= (left!20991 (left!20991 acc!252)) Empty!9063)) (not (= (right!21321 (left!20991 acc!252)) Empty!9063))))))

(declare-fun b!2320025 () Bool)

(declare-fun res!991127 () Bool)

(assert (=> b!2320025 (=> (not res!991127) (not e!1487072))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2320025 (= res!991127 (= (cheight!9274 (left!20991 acc!252)) (+ (max!0 (height!1323 (left!20991 (left!20991 acc!252))) (height!1323 (right!21321 (left!20991 acc!252)))) 1)))))

(declare-fun b!2320026 () Bool)

(assert (=> b!2320026 (= e!1487072 (<= 0 (cheight!9274 (left!20991 acc!252))))))

(assert (= (and d!685959 res!991125) b!2320024))

(assert (= (and b!2320024 res!991126) b!2320025))

(assert (= (and b!2320025 res!991127) b!2320026))

(declare-fun m!2748663 () Bool)

(assert (=> d!685959 m!2748663))

(declare-fun m!2748665 () Bool)

(assert (=> d!685959 m!2748665))

(declare-fun m!2748667 () Bool)

(assert (=> b!2320025 m!2748667))

(declare-fun m!2748669 () Bool)

(assert (=> b!2320025 m!2748669))

(assert (=> b!2320025 m!2748667))

(assert (=> b!2320025 m!2748669))

(declare-fun m!2748671 () Bool)

(assert (=> b!2320025 m!2748671))

(assert (=> b!2319912 d!685959))

(declare-fun d!685961 () Bool)

(declare-fun lt!860249 () Bool)

(declare-fun isEmpty!15783 (List!27756) Bool)

(assert (=> d!685961 (= lt!860249 (isEmpty!15783 (list!10997 (right!21321 acc!252))))))

(assert (=> d!685961 (= lt!860249 (= (size!21909 (right!21321 acc!252)) 0))))

(assert (=> d!685961 (= (isEmpty!15781 (right!21321 acc!252)) lt!860249)))

(declare-fun bs!458977 () Bool)

(assert (= bs!458977 d!685961))

(assert (=> bs!458977 m!2748601))

(assert (=> bs!458977 m!2748601))

(declare-fun m!2748673 () Bool)

(assert (=> bs!458977 m!2748673))

(declare-fun m!2748675 () Bool)

(assert (=> bs!458977 m!2748675))

(assert (=> b!2319881 d!685961))

(declare-fun d!685963 () Bool)

(declare-fun lt!860252 () Int)

(assert (=> d!685963 (>= lt!860252 0)))

(declare-fun e!1487075 () Int)

(assert (=> d!685963 (= lt!860252 e!1487075)))

(declare-fun c!367951 () Bool)

(assert (=> d!685963 (= c!367951 ((_ is Nil!27658) (innerList!9123 (xs!12023 acc!252))))))

(assert (=> d!685963 (= (size!21908 (innerList!9123 (xs!12023 acc!252))) lt!860252)))

(declare-fun b!2320031 () Bool)

(assert (=> b!2320031 (= e!1487075 0)))

(declare-fun b!2320032 () Bool)

(assert (=> b!2320032 (= e!1487075 (+ 1 (size!21908 (t!207402 (innerList!9123 (xs!12023 acc!252))))))))

(assert (= (and d!685963 c!367951) b!2320031))

(assert (= (and d!685963 (not c!367951)) b!2320032))

(declare-fun m!2748677 () Bool)

(assert (=> b!2320032 m!2748677))

(assert (=> d!685929 d!685963))

(declare-fun d!685965 () Bool)

(declare-fun lt!860253 () Bool)

(assert (=> d!685965 (= lt!860253 (isEmpty!15783 (list!10997 (left!20991 acc!252))))))

(assert (=> d!685965 (= lt!860253 (= (size!21909 (left!20991 acc!252)) 0))))

(assert (=> d!685965 (= (isEmpty!15781 (left!20991 acc!252)) lt!860253)))

(declare-fun bs!458978 () Bool)

(assert (= bs!458978 d!685965))

(assert (=> bs!458978 m!2748599))

(assert (=> bs!458978 m!2748599))

(declare-fun m!2748679 () Bool)

(assert (=> bs!458978 m!2748679))

(declare-fun m!2748681 () Bool)

(assert (=> bs!458978 m!2748681))

(assert (=> b!2319880 d!685965))

(declare-fun e!1487077 () Bool)

(declare-fun lt!860254 () List!27756)

(declare-fun b!2320036 () Bool)

(assert (=> b!2320036 (= e!1487077 (or (not (= (list!10996 arr!18) Nil!27658)) (= lt!860254 (t!207402 lt!860232))))))

(declare-fun b!2320035 () Bool)

(declare-fun res!991129 () Bool)

(assert (=> b!2320035 (=> (not res!991129) (not e!1487077))))

(assert (=> b!2320035 (= res!991129 (= (size!21908 lt!860254) (+ (size!21908 (t!207402 lt!860232)) (size!21908 (list!10996 arr!18)))))))

(declare-fun b!2320034 () Bool)

(declare-fun e!1487076 () List!27756)

(assert (=> b!2320034 (= e!1487076 (Cons!27658 (h!33059 (t!207402 lt!860232)) (++!6814 (t!207402 (t!207402 lt!860232)) (list!10996 arr!18))))))

(declare-fun b!2320033 () Bool)

(assert (=> b!2320033 (= e!1487076 (list!10996 arr!18))))

(declare-fun d!685967 () Bool)

(assert (=> d!685967 e!1487077))

(declare-fun res!991128 () Bool)

(assert (=> d!685967 (=> (not res!991128) (not e!1487077))))

(assert (=> d!685967 (= res!991128 (= (content!3737 lt!860254) ((_ map or) (content!3737 (t!207402 lt!860232)) (content!3737 (list!10996 arr!18)))))))

(assert (=> d!685967 (= lt!860254 e!1487076)))

(declare-fun c!367952 () Bool)

(assert (=> d!685967 (= c!367952 ((_ is Nil!27658) (t!207402 lt!860232)))))

(assert (=> d!685967 (= (++!6814 (t!207402 lt!860232) (list!10996 arr!18)) lt!860254)))

(assert (= (and d!685967 c!367952) b!2320033))

(assert (= (and d!685967 (not c!367952)) b!2320034))

(assert (= (and d!685967 res!991128) b!2320035))

(assert (= (and b!2320035 res!991129) b!2320036))

(declare-fun m!2748683 () Bool)

(assert (=> b!2320035 m!2748683))

(declare-fun m!2748685 () Bool)

(assert (=> b!2320035 m!2748685))

(assert (=> b!2320035 m!2748495))

(assert (=> b!2320035 m!2748507))

(assert (=> b!2320034 m!2748495))

(declare-fun m!2748687 () Bool)

(assert (=> b!2320034 m!2748687))

(declare-fun m!2748689 () Bool)

(assert (=> d!685967 m!2748689))

(declare-fun m!2748691 () Bool)

(assert (=> d!685967 m!2748691))

(assert (=> d!685967 m!2748495))

(assert (=> d!685967 m!2748589))

(assert (=> b!2319939 d!685967))

(declare-fun d!685969 () Bool)

(declare-fun lt!860255 () Int)

(assert (=> d!685969 (>= lt!860255 0)))

(declare-fun e!1487078 () Int)

(assert (=> d!685969 (= lt!860255 e!1487078)))

(declare-fun c!367953 () Bool)

(assert (=> d!685969 (= c!367953 ((_ is Nil!27658) lt!860245))))

(assert (=> d!685969 (= (size!21908 lt!860245) lt!860255)))

(declare-fun b!2320037 () Bool)

(assert (=> b!2320037 (= e!1487078 0)))

(declare-fun b!2320038 () Bool)

(assert (=> b!2320038 (= e!1487078 (+ 1 (size!21908 (t!207402 lt!860245))))))

(assert (= (and d!685969 c!367953) b!2320037))

(assert (= (and d!685969 (not c!367953)) b!2320038))

(declare-fun m!2748693 () Bool)

(assert (=> b!2320038 m!2748693))

(assert (=> b!2319940 d!685969))

(declare-fun d!685971 () Bool)

(declare-fun lt!860256 () Int)

(assert (=> d!685971 (>= lt!860256 0)))

(declare-fun e!1487079 () Int)

(assert (=> d!685971 (= lt!860256 e!1487079)))

(declare-fun c!367954 () Bool)

(assert (=> d!685971 (= c!367954 ((_ is Nil!27658) lt!860232))))

(assert (=> d!685971 (= (size!21908 lt!860232) lt!860256)))

(declare-fun b!2320039 () Bool)

(assert (=> b!2320039 (= e!1487079 0)))

(declare-fun b!2320040 () Bool)

(assert (=> b!2320040 (= e!1487079 (+ 1 (size!21908 (t!207402 lt!860232))))))

(assert (= (and d!685971 c!367954) b!2320039))

(assert (= (and d!685971 (not c!367954)) b!2320040))

(assert (=> b!2320040 m!2748685))

(assert (=> b!2319940 d!685971))

(declare-fun d!685973 () Bool)

(declare-fun lt!860257 () Int)

(assert (=> d!685973 (>= lt!860257 0)))

(declare-fun e!1487080 () Int)

(assert (=> d!685973 (= lt!860257 e!1487080)))

(declare-fun c!367955 () Bool)

(assert (=> d!685973 (= c!367955 ((_ is Nil!27658) (list!10996 arr!18)))))

(assert (=> d!685973 (= (size!21908 (list!10996 arr!18)) lt!860257)))

(declare-fun b!2320041 () Bool)

(assert (=> b!2320041 (= e!1487080 0)))

(declare-fun b!2320042 () Bool)

(assert (=> b!2320042 (= e!1487080 (+ 1 (size!21908 (t!207402 (list!10996 arr!18)))))))

(assert (= (and d!685973 c!367955) b!2320041))

(assert (= (and d!685973 (not c!367955)) b!2320042))

(declare-fun m!2748695 () Bool)

(assert (=> b!2320042 m!2748695))

(assert (=> b!2319940 d!685973))

(assert (=> b!2319849 d!685931))

(assert (=> b!2319849 d!685937))

(declare-fun d!685975 () Bool)

(declare-fun c!367956 () Bool)

(assert (=> d!685975 (= c!367956 ((_ is Node!9063) (left!20991 (left!20991 acc!252))))))

(declare-fun e!1487081 () Bool)

(assert (=> d!685975 (= (inv!37589 (left!20991 (left!20991 acc!252))) e!1487081)))

(declare-fun b!2320043 () Bool)

(assert (=> b!2320043 (= e!1487081 (inv!37592 (left!20991 (left!20991 acc!252))))))

(declare-fun b!2320044 () Bool)

(declare-fun e!1487082 () Bool)

(assert (=> b!2320044 (= e!1487081 e!1487082)))

(declare-fun res!991130 () Bool)

(assert (=> b!2320044 (= res!991130 (not ((_ is Leaf!13304) (left!20991 (left!20991 acc!252)))))))

(assert (=> b!2320044 (=> res!991130 e!1487082)))

(declare-fun b!2320045 () Bool)

(assert (=> b!2320045 (= e!1487082 (inv!37593 (left!20991 (left!20991 acc!252))))))

(assert (= (and d!685975 c!367956) b!2320043))

(assert (= (and d!685975 (not c!367956)) b!2320044))

(assert (= (and b!2320044 (not res!991130)) b!2320045))

(declare-fun m!2748697 () Bool)

(assert (=> b!2320043 m!2748697))

(declare-fun m!2748699 () Bool)

(assert (=> b!2320045 m!2748699))

(assert (=> b!2319998 d!685975))

(declare-fun d!685977 () Bool)

(declare-fun c!367957 () Bool)

(assert (=> d!685977 (= c!367957 ((_ is Node!9063) (right!21321 (left!20991 acc!252))))))

(declare-fun e!1487083 () Bool)

(assert (=> d!685977 (= (inv!37589 (right!21321 (left!20991 acc!252))) e!1487083)))

(declare-fun b!2320046 () Bool)

(assert (=> b!2320046 (= e!1487083 (inv!37592 (right!21321 (left!20991 acc!252))))))

(declare-fun b!2320047 () Bool)

(declare-fun e!1487084 () Bool)

(assert (=> b!2320047 (= e!1487083 e!1487084)))

(declare-fun res!991131 () Bool)

(assert (=> b!2320047 (= res!991131 (not ((_ is Leaf!13304) (right!21321 (left!20991 acc!252)))))))

(assert (=> b!2320047 (=> res!991131 e!1487084)))

(declare-fun b!2320048 () Bool)

(assert (=> b!2320048 (= e!1487084 (inv!37593 (right!21321 (left!20991 acc!252))))))

(assert (= (and d!685977 c!367957) b!2320046))

(assert (= (and d!685977 (not c!367957)) b!2320047))

(assert (= (and b!2320047 (not res!991131)) b!2320048))

(declare-fun m!2748701 () Bool)

(assert (=> b!2320046 m!2748701))

(declare-fun m!2748703 () Bool)

(assert (=> b!2320048 m!2748703))

(assert (=> b!2319998 d!685977))

(declare-fun d!685979 () Bool)

(declare-fun c!367958 () Bool)

(assert (=> d!685979 (= c!367958 ((_ is Node!9063) (left!20991 (right!21321 acc!252))))))

(declare-fun e!1487085 () Bool)

(assert (=> d!685979 (= (inv!37589 (left!20991 (right!21321 acc!252))) e!1487085)))

(declare-fun b!2320049 () Bool)

(assert (=> b!2320049 (= e!1487085 (inv!37592 (left!20991 (right!21321 acc!252))))))

(declare-fun b!2320050 () Bool)

(declare-fun e!1487086 () Bool)

(assert (=> b!2320050 (= e!1487085 e!1487086)))

(declare-fun res!991132 () Bool)

(assert (=> b!2320050 (= res!991132 (not ((_ is Leaf!13304) (left!20991 (right!21321 acc!252)))))))

(assert (=> b!2320050 (=> res!991132 e!1487086)))

(declare-fun b!2320051 () Bool)

(assert (=> b!2320051 (= e!1487086 (inv!37593 (left!20991 (right!21321 acc!252))))))

(assert (= (and d!685979 c!367958) b!2320049))

(assert (= (and d!685979 (not c!367958)) b!2320050))

(assert (= (and b!2320050 (not res!991132)) b!2320051))

(declare-fun m!2748705 () Bool)

(assert (=> b!2320049 m!2748705))

(declare-fun m!2748707 () Bool)

(assert (=> b!2320051 m!2748707))

(assert (=> b!2320002 d!685979))

(declare-fun d!685981 () Bool)

(declare-fun c!367959 () Bool)

(assert (=> d!685981 (= c!367959 ((_ is Node!9063) (right!21321 (right!21321 acc!252))))))

(declare-fun e!1487087 () Bool)

(assert (=> d!685981 (= (inv!37589 (right!21321 (right!21321 acc!252))) e!1487087)))

(declare-fun b!2320052 () Bool)

(assert (=> b!2320052 (= e!1487087 (inv!37592 (right!21321 (right!21321 acc!252))))))

(declare-fun b!2320053 () Bool)

(declare-fun e!1487088 () Bool)

(assert (=> b!2320053 (= e!1487087 e!1487088)))

(declare-fun res!991133 () Bool)

(assert (=> b!2320053 (= res!991133 (not ((_ is Leaf!13304) (right!21321 (right!21321 acc!252)))))))

(assert (=> b!2320053 (=> res!991133 e!1487088)))

(declare-fun b!2320054 () Bool)

(assert (=> b!2320054 (= e!1487088 (inv!37593 (right!21321 (right!21321 acc!252))))))

(assert (= (and d!685981 c!367959) b!2320052))

(assert (= (and d!685981 (not c!367959)) b!2320053))

(assert (= (and b!2320053 (not res!991133)) b!2320054))

(declare-fun m!2748709 () Bool)

(assert (=> b!2320052 m!2748709))

(declare-fun m!2748711 () Bool)

(assert (=> b!2320054 m!2748711))

(assert (=> b!2320002 d!685981))

(declare-fun d!685983 () Bool)

(declare-fun lt!860258 () Int)

(assert (=> d!685983 (>= lt!860258 0)))

(declare-fun e!1487089 () Int)

(assert (=> d!685983 (= lt!860258 e!1487089)))

(declare-fun c!367960 () Bool)

(assert (=> d!685983 (= c!367960 ((_ is Nil!27658) (innerList!9123 arr!18)))))

(assert (=> d!685983 (= (size!21908 (innerList!9123 arr!18)) lt!860258)))

(declare-fun b!2320055 () Bool)

(assert (=> b!2320055 (= e!1487089 0)))

(declare-fun b!2320056 () Bool)

(assert (=> b!2320056 (= e!1487089 (+ 1 (size!21908 (t!207402 (innerList!9123 arr!18)))))))

(assert (= (and d!685983 c!367960) b!2320055))

(assert (= (and d!685983 (not c!367960)) b!2320056))

(declare-fun m!2748713 () Bool)

(assert (=> b!2320056 m!2748713))

(assert (=> d!685925 d!685983))

(declare-fun d!685985 () Bool)

(assert (=> d!685985 (= (inv!37588 (xs!12023 (left!20991 acc!252))) (<= (size!21908 (innerList!9123 (xs!12023 (left!20991 acc!252)))) 2147483647))))

(declare-fun bs!458979 () Bool)

(assert (= bs!458979 d!685985))

(declare-fun m!2748715 () Bool)

(assert (=> bs!458979 m!2748715))

(assert (=> b!2319999 d!685985))

(declare-fun d!685987 () Bool)

(assert (=> d!685987 (= (height!1323 (left!20991 acc!252)) (ite ((_ is Empty!9063) (left!20991 acc!252)) 0 (ite ((_ is Leaf!13304) (left!20991 acc!252)) 1 (cheight!9274 (left!20991 acc!252)))))))

(assert (=> b!2319877 d!685987))

(declare-fun d!685989 () Bool)

(assert (=> d!685989 (= (height!1323 (right!21321 acc!252)) (ite ((_ is Empty!9063) (right!21321 acc!252)) 0 (ite ((_ is Leaf!13304) (right!21321 acc!252)) 1 (cheight!9274 (right!21321 acc!252)))))))

(assert (=> b!2319877 d!685989))

(declare-fun d!685991 () Bool)

(declare-fun res!991134 () Bool)

(declare-fun e!1487090 () Bool)

(assert (=> d!685991 (=> (not res!991134) (not e!1487090))))

(assert (=> d!685991 (= res!991134 (= (csize!18356 acc!252) (+ (size!21909 (left!20991 acc!252)) (size!21909 (right!21321 acc!252)))))))

(assert (=> d!685991 (= (inv!37592 acc!252) e!1487090)))

(declare-fun b!2320057 () Bool)

(declare-fun res!991135 () Bool)

(assert (=> b!2320057 (=> (not res!991135) (not e!1487090))))

(assert (=> b!2320057 (= res!991135 (and (not (= (left!20991 acc!252) Empty!9063)) (not (= (right!21321 acc!252) Empty!9063))))))

(declare-fun b!2320058 () Bool)

(declare-fun res!991136 () Bool)

(assert (=> b!2320058 (=> (not res!991136) (not e!1487090))))

(assert (=> b!2320058 (= res!991136 (= (cheight!9274 acc!252) (+ (max!0 (height!1323 (left!20991 acc!252)) (height!1323 (right!21321 acc!252))) 1)))))

(declare-fun b!2320059 () Bool)

(assert (=> b!2320059 (= e!1487090 (<= 0 (cheight!9274 acc!252)))))

(assert (= (and d!685991 res!991134) b!2320057))

(assert (= (and b!2320057 res!991135) b!2320058))

(assert (= (and b!2320058 res!991136) b!2320059))

(assert (=> d!685991 m!2748681))

(assert (=> d!685991 m!2748675))

(assert (=> b!2320058 m!2748519))

(assert (=> b!2320058 m!2748521))

(assert (=> b!2320058 m!2748519))

(assert (=> b!2320058 m!2748521))

(declare-fun m!2748717 () Bool)

(assert (=> b!2320058 m!2748717))

(assert (=> b!2319906 d!685991))

(assert (=> b!2319876 d!685987))

(assert (=> b!2319876 d!685989))

(declare-fun d!685993 () Bool)

(declare-fun c!367963 () Bool)

(assert (=> d!685993 (= c!367963 ((_ is Nil!27658) lt!860245))))

(declare-fun e!1487093 () (InoxSet T!43838))

(assert (=> d!685993 (= (content!3737 lt!860245) e!1487093)))

(declare-fun b!2320064 () Bool)

(assert (=> b!2320064 (= e!1487093 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320065 () Bool)

(assert (=> b!2320065 (= e!1487093 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 lt!860245) true) (content!3737 (t!207402 lt!860245))))))

(assert (= (and d!685993 c!367963) b!2320064))

(assert (= (and d!685993 (not c!367963)) b!2320065))

(declare-fun m!2748719 () Bool)

(assert (=> b!2320065 m!2748719))

(declare-fun m!2748721 () Bool)

(assert (=> b!2320065 m!2748721))

(assert (=> d!685939 d!685993))

(declare-fun d!685997 () Bool)

(declare-fun c!367964 () Bool)

(assert (=> d!685997 (= c!367964 ((_ is Nil!27658) lt!860232))))

(declare-fun e!1487096 () (InoxSet T!43838))

(assert (=> d!685997 (= (content!3737 lt!860232) e!1487096)))

(declare-fun b!2320072 () Bool)

(assert (=> b!2320072 (= e!1487096 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320073 () Bool)

(assert (=> b!2320073 (= e!1487096 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 lt!860232) true) (content!3737 (t!207402 lt!860232))))))

(assert (= (and d!685997 c!367964) b!2320072))

(assert (= (and d!685997 (not c!367964)) b!2320073))

(declare-fun m!2748723 () Bool)

(assert (=> b!2320073 m!2748723))

(assert (=> b!2320073 m!2748691))

(assert (=> d!685939 d!685997))

(declare-fun d!685999 () Bool)

(declare-fun c!367965 () Bool)

(assert (=> d!685999 (= c!367965 ((_ is Nil!27658) (list!10996 arr!18)))))

(declare-fun e!1487097 () (InoxSet T!43838))

(assert (=> d!685999 (= (content!3737 (list!10996 arr!18)) e!1487097)))

(declare-fun b!2320074 () Bool)

(assert (=> b!2320074 (= e!1487097 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320075 () Bool)

(assert (=> b!2320075 (= e!1487097 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 (list!10996 arr!18)) true) (content!3737 (t!207402 (list!10996 arr!18)))))))

(assert (= (and d!685999 c!367965) b!2320074))

(assert (= (and d!685999 (not c!367965)) b!2320075))

(declare-fun m!2748725 () Bool)

(assert (=> b!2320075 m!2748725))

(declare-fun m!2748727 () Bool)

(assert (=> b!2320075 m!2748727))

(assert (=> d!685939 d!685999))

(declare-fun b!2320076 () Bool)

(declare-fun e!1487098 () Bool)

(declare-fun e!1487099 () Bool)

(assert (=> b!2320076 (= e!1487098 e!1487099)))

(declare-fun res!991143 () Bool)

(assert (=> b!2320076 (=> (not res!991143) (not e!1487099))))

(assert (=> b!2320076 (= res!991143 (<= (- 1) (- (height!1323 (left!20991 (left!20991 acc!252))) (height!1323 (right!21321 (left!20991 acc!252))))))))

(declare-fun b!2320077 () Bool)

(declare-fun res!991144 () Bool)

(assert (=> b!2320077 (=> (not res!991144) (not e!1487099))))

(assert (=> b!2320077 (= res!991144 (<= (- (height!1323 (left!20991 (left!20991 acc!252))) (height!1323 (right!21321 (left!20991 acc!252)))) 1))))

(declare-fun d!686001 () Bool)

(declare-fun res!991146 () Bool)

(assert (=> d!686001 (=> res!991146 e!1487098)))

(assert (=> d!686001 (= res!991146 (not ((_ is Node!9063) (left!20991 acc!252))))))

(assert (=> d!686001 (= (isBalanced!2757 (left!20991 acc!252)) e!1487098)))

(declare-fun b!2320078 () Bool)

(declare-fun res!991148 () Bool)

(assert (=> b!2320078 (=> (not res!991148) (not e!1487099))))

(assert (=> b!2320078 (= res!991148 (isBalanced!2757 (left!20991 (left!20991 acc!252))))))

(declare-fun b!2320079 () Bool)

(declare-fun res!991147 () Bool)

(assert (=> b!2320079 (=> (not res!991147) (not e!1487099))))

(assert (=> b!2320079 (= res!991147 (isBalanced!2757 (right!21321 (left!20991 acc!252))))))

(declare-fun b!2320080 () Bool)

(declare-fun res!991145 () Bool)

(assert (=> b!2320080 (=> (not res!991145) (not e!1487099))))

(assert (=> b!2320080 (= res!991145 (not (isEmpty!15781 (left!20991 (left!20991 acc!252)))))))

(declare-fun b!2320081 () Bool)

(assert (=> b!2320081 (= e!1487099 (not (isEmpty!15781 (right!21321 (left!20991 acc!252)))))))

(assert (= (and d!686001 (not res!991146)) b!2320076))

(assert (= (and b!2320076 res!991143) b!2320077))

(assert (= (and b!2320077 res!991144) b!2320078))

(assert (= (and b!2320078 res!991148) b!2320079))

(assert (= (and b!2320079 res!991147) b!2320080))

(assert (= (and b!2320080 res!991145) b!2320081))

(assert (=> b!2320076 m!2748667))

(assert (=> b!2320076 m!2748669))

(declare-fun m!2748741 () Bool)

(assert (=> b!2320081 m!2748741))

(declare-fun m!2748743 () Bool)

(assert (=> b!2320078 m!2748743))

(declare-fun m!2748745 () Bool)

(assert (=> b!2320080 m!2748745))

(assert (=> b!2320077 m!2748667))

(assert (=> b!2320077 m!2748669))

(declare-fun m!2748747 () Bool)

(assert (=> b!2320079 m!2748747))

(assert (=> b!2319878 d!686001))

(declare-fun b!2320082 () Bool)

(declare-fun e!1487100 () Bool)

(declare-fun e!1487101 () Bool)

(assert (=> b!2320082 (= e!1487100 e!1487101)))

(declare-fun res!991149 () Bool)

(assert (=> b!2320082 (=> (not res!991149) (not e!1487101))))

(assert (=> b!2320082 (= res!991149 (<= (- 1) (- (height!1323 (left!20991 (right!21321 acc!252))) (height!1323 (right!21321 (right!21321 acc!252))))))))

(declare-fun b!2320083 () Bool)

(declare-fun res!991150 () Bool)

(assert (=> b!2320083 (=> (not res!991150) (not e!1487101))))

(assert (=> b!2320083 (= res!991150 (<= (- (height!1323 (left!20991 (right!21321 acc!252))) (height!1323 (right!21321 (right!21321 acc!252)))) 1))))

(declare-fun d!686005 () Bool)

(declare-fun res!991152 () Bool)

(assert (=> d!686005 (=> res!991152 e!1487100)))

(assert (=> d!686005 (= res!991152 (not ((_ is Node!9063) (right!21321 acc!252))))))

(assert (=> d!686005 (= (isBalanced!2757 (right!21321 acc!252)) e!1487100)))

(declare-fun b!2320084 () Bool)

(declare-fun res!991154 () Bool)

(assert (=> b!2320084 (=> (not res!991154) (not e!1487101))))

(assert (=> b!2320084 (= res!991154 (isBalanced!2757 (left!20991 (right!21321 acc!252))))))

(declare-fun b!2320085 () Bool)

(declare-fun res!991153 () Bool)

(assert (=> b!2320085 (=> (not res!991153) (not e!1487101))))

(assert (=> b!2320085 (= res!991153 (isBalanced!2757 (right!21321 (right!21321 acc!252))))))

(declare-fun b!2320086 () Bool)

(declare-fun res!991151 () Bool)

(assert (=> b!2320086 (=> (not res!991151) (not e!1487101))))

(assert (=> b!2320086 (= res!991151 (not (isEmpty!15781 (left!20991 (right!21321 acc!252)))))))

(declare-fun b!2320087 () Bool)

(assert (=> b!2320087 (= e!1487101 (not (isEmpty!15781 (right!21321 (right!21321 acc!252)))))))

(assert (= (and d!686005 (not res!991152)) b!2320082))

(assert (= (and b!2320082 res!991149) b!2320083))

(assert (= (and b!2320083 res!991150) b!2320084))

(assert (= (and b!2320084 res!991154) b!2320085))

(assert (= (and b!2320085 res!991153) b!2320086))

(assert (= (and b!2320086 res!991151) b!2320087))

(declare-fun m!2748749 () Bool)

(assert (=> b!2320082 m!2748749))

(declare-fun m!2748751 () Bool)

(assert (=> b!2320082 m!2748751))

(declare-fun m!2748753 () Bool)

(assert (=> b!2320087 m!2748753))

(declare-fun m!2748755 () Bool)

(assert (=> b!2320084 m!2748755))

(declare-fun m!2748757 () Bool)

(assert (=> b!2320086 m!2748757))

(assert (=> b!2320083 m!2748749))

(assert (=> b!2320083 m!2748751))

(declare-fun m!2748759 () Bool)

(assert (=> b!2320085 m!2748759))

(assert (=> b!2319879 d!686005))

(declare-fun d!686009 () Bool)

(declare-fun res!991159 () Bool)

(declare-fun e!1487107 () Bool)

(assert (=> d!686009 (=> (not res!991159) (not e!1487107))))

(assert (=> d!686009 (= res!991159 (<= (size!21908 (list!10996 (xs!12023 acc!252))) 512))))

(assert (=> d!686009 (= (inv!37593 acc!252) e!1487107)))

(declare-fun b!2320098 () Bool)

(declare-fun res!991160 () Bool)

(assert (=> b!2320098 (=> (not res!991160) (not e!1487107))))

(assert (=> b!2320098 (= res!991160 (= (csize!18357 acc!252) (size!21908 (list!10996 (xs!12023 acc!252)))))))

(declare-fun b!2320099 () Bool)

(assert (=> b!2320099 (= e!1487107 (and (> (csize!18357 acc!252) 0) (<= (csize!18357 acc!252) 512)))))

(assert (= (and d!686009 res!991159) b!2320098))

(assert (= (and b!2320098 res!991160) b!2320099))

(assert (=> d!686009 m!2748605))

(assert (=> d!686009 m!2748605))

(declare-fun m!2748763 () Bool)

(assert (=> d!686009 m!2748763))

(assert (=> b!2320098 m!2748605))

(assert (=> b!2320098 m!2748605))

(assert (=> b!2320098 m!2748763))

(assert (=> b!2319908 d!686009))

(declare-fun d!686015 () Bool)

(declare-fun res!991161 () Bool)

(declare-fun e!1487108 () Bool)

(assert (=> d!686015 (=> (not res!991161) (not e!1487108))))

(assert (=> d!686015 (= res!991161 (= (csize!18356 (right!21321 acc!252)) (+ (size!21909 (left!20991 (right!21321 acc!252))) (size!21909 (right!21321 (right!21321 acc!252))))))))

(assert (=> d!686015 (= (inv!37592 (right!21321 acc!252)) e!1487108)))

(declare-fun b!2320100 () Bool)

(declare-fun res!991162 () Bool)

(assert (=> b!2320100 (=> (not res!991162) (not e!1487108))))

(assert (=> b!2320100 (= res!991162 (and (not (= (left!20991 (right!21321 acc!252)) Empty!9063)) (not (= (right!21321 (right!21321 acc!252)) Empty!9063))))))

(declare-fun b!2320101 () Bool)

(declare-fun res!991163 () Bool)

(assert (=> b!2320101 (=> (not res!991163) (not e!1487108))))

(assert (=> b!2320101 (= res!991163 (= (cheight!9274 (right!21321 acc!252)) (+ (max!0 (height!1323 (left!20991 (right!21321 acc!252))) (height!1323 (right!21321 (right!21321 acc!252)))) 1)))))

(declare-fun b!2320102 () Bool)

(assert (=> b!2320102 (= e!1487108 (<= 0 (cheight!9274 (right!21321 acc!252))))))

(assert (= (and d!686015 res!991161) b!2320100))

(assert (= (and b!2320100 res!991162) b!2320101))

(assert (= (and b!2320101 res!991163) b!2320102))

(declare-fun m!2748765 () Bool)

(assert (=> d!686015 m!2748765))

(declare-fun m!2748767 () Bool)

(assert (=> d!686015 m!2748767))

(assert (=> b!2320101 m!2748749))

(assert (=> b!2320101 m!2748751))

(assert (=> b!2320101 m!2748749))

(assert (=> b!2320101 m!2748751))

(declare-fun m!2748769 () Bool)

(assert (=> b!2320101 m!2748769))

(assert (=> b!2319915 d!686015))

(assert (=> d!685909 d!685973))

(assert (=> d!685909 d!685945))

(declare-fun d!686017 () Bool)

(declare-fun _$1!10195 () Int)

(assert (=> d!686017 (= _$1!10195 (size!21908 (list!10996 arr!18)))))

(assert (=> d!686017 true))

(assert (=> d!686017 (= (choose!13588 arr!18) _$1!10195)))

(declare-fun bs!458980 () Bool)

(assert (= bs!458980 d!686017))

(assert (=> bs!458980 m!2748495))

(assert (=> bs!458980 m!2748495))

(assert (=> bs!458980 m!2748507))

(assert (=> d!685909 d!686017))

(declare-fun d!686021 () Bool)

(declare-fun res!991164 () Bool)

(declare-fun e!1487113 () Bool)

(assert (=> d!686021 (=> (not res!991164) (not e!1487113))))

(assert (=> d!686021 (= res!991164 (<= (size!21908 (list!10996 (xs!12023 (left!20991 acc!252)))) 512))))

(assert (=> d!686021 (= (inv!37593 (left!20991 acc!252)) e!1487113)))

(declare-fun b!2320111 () Bool)

(declare-fun res!991165 () Bool)

(assert (=> b!2320111 (=> (not res!991165) (not e!1487113))))

(assert (=> b!2320111 (= res!991165 (= (csize!18357 (left!20991 acc!252)) (size!21908 (list!10996 (xs!12023 (left!20991 acc!252))))))))

(declare-fun b!2320112 () Bool)

(assert (=> b!2320112 (= e!1487113 (and (> (csize!18357 (left!20991 acc!252)) 0) (<= (csize!18357 (left!20991 acc!252)) 512)))))

(assert (= (and d!686021 res!991164) b!2320111))

(assert (= (and b!2320111 res!991165) b!2320112))

(assert (=> d!686021 m!2748653))

(assert (=> d!686021 m!2748653))

(declare-fun m!2748779 () Bool)

(assert (=> d!686021 m!2748779))

(assert (=> b!2320111 m!2748653))

(assert (=> b!2320111 m!2748653))

(assert (=> b!2320111 m!2748779))

(assert (=> b!2319914 d!686021))

(declare-fun d!686025 () Bool)

(declare-fun res!991166 () Bool)

(declare-fun e!1487115 () Bool)

(assert (=> d!686025 (=> (not res!991166) (not e!1487115))))

(assert (=> d!686025 (= res!991166 (<= (size!21908 (list!10996 (xs!12023 (right!21321 acc!252)))) 512))))

(assert (=> d!686025 (= (inv!37593 (right!21321 acc!252)) e!1487115)))

(declare-fun b!2320115 () Bool)

(declare-fun res!991167 () Bool)

(assert (=> b!2320115 (=> (not res!991167) (not e!1487115))))

(assert (=> b!2320115 (= res!991167 (= (csize!18357 (right!21321 acc!252)) (size!21908 (list!10996 (xs!12023 (right!21321 acc!252))))))))

(declare-fun b!2320116 () Bool)

(assert (=> b!2320116 (= e!1487115 (and (> (csize!18357 (right!21321 acc!252)) 0) (<= (csize!18357 (right!21321 acc!252)) 512)))))

(assert (= (and d!686025 res!991166) b!2320115))

(assert (= (and b!2320115 res!991167) b!2320116))

(assert (=> d!686025 m!2748661))

(assert (=> d!686025 m!2748661))

(declare-fun m!2748785 () Bool)

(assert (=> d!686025 m!2748785))

(assert (=> b!2320115 m!2748661))

(assert (=> b!2320115 m!2748661))

(assert (=> b!2320115 m!2748785))

(assert (=> b!2319917 d!686025))

(declare-fun b!2320121 () Bool)

(declare-fun e!1487118 () Bool)

(declare-fun tp!736292 () Bool)

(assert (=> b!2320121 (= e!1487118 (and tp_is_empty!10813 tp!736292))))

(assert (=> b!2319983 (= tp!736271 e!1487118)))

(assert (= (and b!2319983 ((_ is Cons!27658) (t!207402 (innerList!9123 arr!18)))) b!2320121))

(declare-fun b!2320122 () Bool)

(declare-fun e!1487119 () Bool)

(declare-fun tp!736293 () Bool)

(assert (=> b!2320122 (= e!1487119 (and tp_is_empty!10813 tp!736293))))

(assert (=> b!2320004 (= tp!736288 e!1487119)))

(assert (= (and b!2320004 ((_ is Cons!27658) (innerList!9123 (xs!12023 (right!21321 acc!252))))) b!2320122))

(declare-fun tp!736295 () Bool)

(declare-fun tp!736296 () Bool)

(declare-fun b!2320123 () Bool)

(declare-fun e!1487121 () Bool)

(assert (=> b!2320123 (= e!1487121 (and (inv!37589 (left!20991 (left!20991 (left!20991 acc!252)))) tp!736295 (inv!37589 (right!21321 (left!20991 (left!20991 acc!252)))) tp!736296))))

(declare-fun b!2320125 () Bool)

(declare-fun e!1487120 () Bool)

(declare-fun tp!736294 () Bool)

(assert (=> b!2320125 (= e!1487120 tp!736294)))

(declare-fun b!2320124 () Bool)

(assert (=> b!2320124 (= e!1487121 (and (inv!37588 (xs!12023 (left!20991 (left!20991 acc!252)))) e!1487120))))

(assert (=> b!2319998 (= tp!736285 (and (inv!37589 (left!20991 (left!20991 acc!252))) e!1487121))))

(assert (= (and b!2319998 ((_ is Node!9063) (left!20991 (left!20991 acc!252)))) b!2320123))

(assert (= b!2320124 b!2320125))

(assert (= (and b!2319998 ((_ is Leaf!13304) (left!20991 (left!20991 acc!252)))) b!2320124))

(declare-fun m!2748801 () Bool)

(assert (=> b!2320123 m!2748801))

(declare-fun m!2748803 () Bool)

(assert (=> b!2320123 m!2748803))

(declare-fun m!2748805 () Bool)

(assert (=> b!2320124 m!2748805))

(assert (=> b!2319998 m!2748619))

(declare-fun tp!736299 () Bool)

(declare-fun e!1487125 () Bool)

(declare-fun b!2320130 () Bool)

(declare-fun tp!736298 () Bool)

(assert (=> b!2320130 (= e!1487125 (and (inv!37589 (left!20991 (right!21321 (left!20991 acc!252)))) tp!736298 (inv!37589 (right!21321 (right!21321 (left!20991 acc!252)))) tp!736299))))

(declare-fun b!2320132 () Bool)

(declare-fun e!1487124 () Bool)

(declare-fun tp!736297 () Bool)

(assert (=> b!2320132 (= e!1487124 tp!736297)))

(declare-fun b!2320131 () Bool)

(assert (=> b!2320131 (= e!1487125 (and (inv!37588 (xs!12023 (right!21321 (left!20991 acc!252)))) e!1487124))))

(assert (=> b!2319998 (= tp!736286 (and (inv!37589 (right!21321 (left!20991 acc!252))) e!1487125))))

(assert (= (and b!2319998 ((_ is Node!9063) (right!21321 (left!20991 acc!252)))) b!2320130))

(assert (= b!2320131 b!2320132))

(assert (= (and b!2319998 ((_ is Leaf!13304) (right!21321 (left!20991 acc!252)))) b!2320131))

(declare-fun m!2748815 () Bool)

(assert (=> b!2320130 m!2748815))

(declare-fun m!2748817 () Bool)

(assert (=> b!2320130 m!2748817))

(declare-fun m!2748819 () Bool)

(assert (=> b!2320131 m!2748819))

(assert (=> b!2319998 m!2748621))

(declare-fun e!1487129 () Bool)

(declare-fun tp!736302 () Bool)

(declare-fun tp!736301 () Bool)

(declare-fun b!2320137 () Bool)

(assert (=> b!2320137 (= e!1487129 (and (inv!37589 (left!20991 (left!20991 (right!21321 acc!252)))) tp!736301 (inv!37589 (right!21321 (left!20991 (right!21321 acc!252)))) tp!736302))))

(declare-fun b!2320139 () Bool)

(declare-fun e!1487128 () Bool)

(declare-fun tp!736300 () Bool)

(assert (=> b!2320139 (= e!1487128 tp!736300)))

(declare-fun b!2320138 () Bool)

(assert (=> b!2320138 (= e!1487129 (and (inv!37588 (xs!12023 (left!20991 (right!21321 acc!252)))) e!1487128))))

(assert (=> b!2320002 (= tp!736289 (and (inv!37589 (left!20991 (right!21321 acc!252))) e!1487129))))

(assert (= (and b!2320002 ((_ is Node!9063) (left!20991 (right!21321 acc!252)))) b!2320137))

(assert (= b!2320138 b!2320139))

(assert (= (and b!2320002 ((_ is Leaf!13304) (left!20991 (right!21321 acc!252)))) b!2320138))

(declare-fun m!2748827 () Bool)

(assert (=> b!2320137 m!2748827))

(declare-fun m!2748829 () Bool)

(assert (=> b!2320137 m!2748829))

(declare-fun m!2748833 () Bool)

(assert (=> b!2320138 m!2748833))

(assert (=> b!2320002 m!2748625))

(declare-fun b!2320140 () Bool)

(declare-fun tp!736305 () Bool)

(declare-fun e!1487131 () Bool)

(declare-fun tp!736304 () Bool)

(assert (=> b!2320140 (= e!1487131 (and (inv!37589 (left!20991 (right!21321 (right!21321 acc!252)))) tp!736304 (inv!37589 (right!21321 (right!21321 (right!21321 acc!252)))) tp!736305))))

(declare-fun b!2320142 () Bool)

(declare-fun e!1487130 () Bool)

(declare-fun tp!736303 () Bool)

(assert (=> b!2320142 (= e!1487130 tp!736303)))

(declare-fun b!2320141 () Bool)

(assert (=> b!2320141 (= e!1487131 (and (inv!37588 (xs!12023 (right!21321 (right!21321 acc!252)))) e!1487130))))

(assert (=> b!2320002 (= tp!736290 (and (inv!37589 (right!21321 (right!21321 acc!252))) e!1487131))))

(assert (= (and b!2320002 ((_ is Node!9063) (right!21321 (right!21321 acc!252)))) b!2320140))

(assert (= b!2320141 b!2320142))

(assert (= (and b!2320002 ((_ is Leaf!13304) (right!21321 (right!21321 acc!252)))) b!2320141))

(declare-fun m!2748835 () Bool)

(assert (=> b!2320140 m!2748835))

(declare-fun m!2748837 () Bool)

(assert (=> b!2320140 m!2748837))

(declare-fun m!2748839 () Bool)

(assert (=> b!2320141 m!2748839))

(assert (=> b!2320002 m!2748627))

(declare-fun b!2320143 () Bool)

(declare-fun e!1487132 () Bool)

(declare-fun tp!736306 () Bool)

(assert (=> b!2320143 (= e!1487132 (and tp_is_empty!10813 tp!736306))))

(assert (=> b!2320000 (= tp!736284 e!1487132)))

(assert (= (and b!2320000 ((_ is Cons!27658) (innerList!9123 (xs!12023 (left!20991 acc!252))))) b!2320143))

(declare-fun b!2320144 () Bool)

(declare-fun e!1487133 () Bool)

(declare-fun tp!736307 () Bool)

(assert (=> b!2320144 (= e!1487133 (and tp_is_empty!10813 tp!736307))))

(assert (=> b!2320005 (= tp!736291 e!1487133)))

(assert (= (and b!2320005 ((_ is Cons!27658) (t!207402 (innerList!9123 (xs!12023 acc!252))))) b!2320144))

(check-sat (not b!2320013) (not b!2320042) (not b!2320056) (not b!2320122) (not b!2320002) (not b!2320140) (not b!2320008) (not b!2320012) (not b!2320115) (not b!2320086) (not b!2320048) (not b!2320054) (not b!2320043) (not b!2320141) (not b!2320098) (not b!2320045) (not b!2320035) (not b!2320017) (not b!2320016) (not b!2320121) (not d!685991) (not b!2320058) (not d!685951) (not d!685965) (not b!2320082) (not b!2320143) (not b!2320144) (not b!2320087) (not b!2320075) (not b!2320049) (not b!2320040) (not b!2320111) (not d!686025) (not b!2320051) (not b!2320137) (not b!2320032) tp_is_empty!10813 (not b!2320081) (not b!2320084) (not b!2320077) (not d!686017) (not b!2320080) (not d!685949) (not b!2320025) (not d!685985) (not b!2320073) (not b!2320079) (not d!686021) (not b!2320046) (not b!2320085) (not d!685959) (not d!686015) (not b!2320132) (not b!2320083) (not b!2320065) (not b!2320038) (not b!2320078) (not b!2320142) (not d!685961) (not b!2320007) (not b!2320123) (not b!2320034) (not b!2319998) (not b!2320131) (not d!685967) (not d!686009) (not b!2320130) (not b!2320138) (not b!2320101) (not b!2320076) (not b!2320139) (not b!2320052) (not b!2320124) (not b!2320125))
(check-sat)
(get-model)

(declare-fun d!686077 () Bool)

(assert (=> d!686077 (= (inv!37588 (xs!12023 (right!21321 (left!20991 acc!252)))) (<= (size!21908 (innerList!9123 (xs!12023 (right!21321 (left!20991 acc!252))))) 2147483647))))

(declare-fun bs!458986 () Bool)

(assert (= bs!458986 d!686077))

(declare-fun m!2748939 () Bool)

(assert (=> bs!458986 m!2748939))

(assert (=> b!2320131 d!686077))

(declare-fun d!686079 () Bool)

(assert (=> d!686079 (= (height!1323 (left!20991 (right!21321 acc!252))) (ite ((_ is Empty!9063) (left!20991 (right!21321 acc!252))) 0 (ite ((_ is Leaf!13304) (left!20991 (right!21321 acc!252))) 1 (cheight!9274 (left!20991 (right!21321 acc!252))))))))

(assert (=> b!2320082 d!686079))

(declare-fun d!686081 () Bool)

(assert (=> d!686081 (= (height!1323 (right!21321 (right!21321 acc!252))) (ite ((_ is Empty!9063) (right!21321 (right!21321 acc!252))) 0 (ite ((_ is Leaf!13304) (right!21321 (right!21321 acc!252))) 1 (cheight!9274 (right!21321 (right!21321 acc!252))))))))

(assert (=> b!2320082 d!686081))

(declare-fun b!2320219 () Bool)

(declare-fun e!1487173 () Bool)

(declare-fun lt!860272 () List!27756)

(assert (=> b!2320219 (= e!1487173 (or (not (= (list!10997 (right!21321 (left!20991 acc!252))) Nil!27658)) (= lt!860272 (list!10997 (left!20991 (left!20991 acc!252))))))))

(declare-fun b!2320218 () Bool)

(declare-fun res!991208 () Bool)

(assert (=> b!2320218 (=> (not res!991208) (not e!1487173))))

(assert (=> b!2320218 (= res!991208 (= (size!21908 lt!860272) (+ (size!21908 (list!10997 (left!20991 (left!20991 acc!252)))) (size!21908 (list!10997 (right!21321 (left!20991 acc!252)))))))))

(declare-fun b!2320217 () Bool)

(declare-fun e!1487172 () List!27756)

(assert (=> b!2320217 (= e!1487172 (Cons!27658 (h!33059 (list!10997 (left!20991 (left!20991 acc!252)))) (++!6814 (t!207402 (list!10997 (left!20991 (left!20991 acc!252)))) (list!10997 (right!21321 (left!20991 acc!252))))))))

(declare-fun b!2320216 () Bool)

(assert (=> b!2320216 (= e!1487172 (list!10997 (right!21321 (left!20991 acc!252))))))

(declare-fun d!686083 () Bool)

(assert (=> d!686083 e!1487173))

(declare-fun res!991207 () Bool)

(assert (=> d!686083 (=> (not res!991207) (not e!1487173))))

(assert (=> d!686083 (= res!991207 (= (content!3737 lt!860272) ((_ map or) (content!3737 (list!10997 (left!20991 (left!20991 acc!252)))) (content!3737 (list!10997 (right!21321 (left!20991 acc!252)))))))))

(assert (=> d!686083 (= lt!860272 e!1487172)))

(declare-fun c!367988 () Bool)

(assert (=> d!686083 (= c!367988 ((_ is Nil!27658) (list!10997 (left!20991 (left!20991 acc!252)))))))

(assert (=> d!686083 (= (++!6814 (list!10997 (left!20991 (left!20991 acc!252))) (list!10997 (right!21321 (left!20991 acc!252)))) lt!860272)))

(assert (= (and d!686083 c!367988) b!2320216))

(assert (= (and d!686083 (not c!367988)) b!2320217))

(assert (= (and d!686083 res!991207) b!2320218))

(assert (= (and b!2320218 res!991208) b!2320219))

(declare-fun m!2748941 () Bool)

(assert (=> b!2320218 m!2748941))

(assert (=> b!2320218 m!2748647))

(declare-fun m!2748943 () Bool)

(assert (=> b!2320218 m!2748943))

(assert (=> b!2320218 m!2748649))

(declare-fun m!2748945 () Bool)

(assert (=> b!2320218 m!2748945))

(assert (=> b!2320217 m!2748649))

(declare-fun m!2748947 () Bool)

(assert (=> b!2320217 m!2748947))

(declare-fun m!2748949 () Bool)

(assert (=> d!686083 m!2748949))

(assert (=> d!686083 m!2748647))

(declare-fun m!2748951 () Bool)

(assert (=> d!686083 m!2748951))

(assert (=> d!686083 m!2748649))

(declare-fun m!2748953 () Bool)

(assert (=> d!686083 m!2748953))

(assert (=> b!2320013 d!686083))

(declare-fun b!2320220 () Bool)

(declare-fun e!1487174 () List!27756)

(assert (=> b!2320220 (= e!1487174 Nil!27658)))

(declare-fun b!2320221 () Bool)

(declare-fun e!1487175 () List!27756)

(assert (=> b!2320221 (= e!1487174 e!1487175)))

(declare-fun c!367990 () Bool)

(assert (=> b!2320221 (= c!367990 ((_ is Leaf!13304) (left!20991 (left!20991 acc!252))))))

(declare-fun b!2320223 () Bool)

(assert (=> b!2320223 (= e!1487175 (++!6814 (list!10997 (left!20991 (left!20991 (left!20991 acc!252)))) (list!10997 (right!21321 (left!20991 (left!20991 acc!252))))))))

(declare-fun d!686085 () Bool)

(declare-fun c!367989 () Bool)

(assert (=> d!686085 (= c!367989 ((_ is Empty!9063) (left!20991 (left!20991 acc!252))))))

(assert (=> d!686085 (= (list!10997 (left!20991 (left!20991 acc!252))) e!1487174)))

(declare-fun b!2320222 () Bool)

(assert (=> b!2320222 (= e!1487175 (list!10996 (xs!12023 (left!20991 (left!20991 acc!252)))))))

(assert (= (and d!686085 c!367989) b!2320220))

(assert (= (and d!686085 (not c!367989)) b!2320221))

(assert (= (and b!2320221 c!367990) b!2320222))

(assert (= (and b!2320221 (not c!367990)) b!2320223))

(declare-fun m!2748955 () Bool)

(assert (=> b!2320223 m!2748955))

(declare-fun m!2748957 () Bool)

(assert (=> b!2320223 m!2748957))

(assert (=> b!2320223 m!2748955))

(assert (=> b!2320223 m!2748957))

(declare-fun m!2748959 () Bool)

(assert (=> b!2320223 m!2748959))

(declare-fun m!2748961 () Bool)

(assert (=> b!2320222 m!2748961))

(assert (=> b!2320013 d!686085))

(declare-fun b!2320224 () Bool)

(declare-fun e!1487176 () List!27756)

(assert (=> b!2320224 (= e!1487176 Nil!27658)))

(declare-fun b!2320225 () Bool)

(declare-fun e!1487177 () List!27756)

(assert (=> b!2320225 (= e!1487176 e!1487177)))

(declare-fun c!367992 () Bool)

(assert (=> b!2320225 (= c!367992 ((_ is Leaf!13304) (right!21321 (left!20991 acc!252))))))

(declare-fun b!2320227 () Bool)

(assert (=> b!2320227 (= e!1487177 (++!6814 (list!10997 (left!20991 (right!21321 (left!20991 acc!252)))) (list!10997 (right!21321 (right!21321 (left!20991 acc!252))))))))

(declare-fun d!686087 () Bool)

(declare-fun c!367991 () Bool)

(assert (=> d!686087 (= c!367991 ((_ is Empty!9063) (right!21321 (left!20991 acc!252))))))

(assert (=> d!686087 (= (list!10997 (right!21321 (left!20991 acc!252))) e!1487176)))

(declare-fun b!2320226 () Bool)

(assert (=> b!2320226 (= e!1487177 (list!10996 (xs!12023 (right!21321 (left!20991 acc!252)))))))

(assert (= (and d!686087 c!367991) b!2320224))

(assert (= (and d!686087 (not c!367991)) b!2320225))

(assert (= (and b!2320225 c!367992) b!2320226))

(assert (= (and b!2320225 (not c!367992)) b!2320227))

(declare-fun m!2748963 () Bool)

(assert (=> b!2320227 m!2748963))

(declare-fun m!2748965 () Bool)

(assert (=> b!2320227 m!2748965))

(assert (=> b!2320227 m!2748963))

(assert (=> b!2320227 m!2748965))

(declare-fun m!2748967 () Bool)

(assert (=> b!2320227 m!2748967))

(declare-fun m!2748969 () Bool)

(assert (=> b!2320226 m!2748969))

(assert (=> b!2320013 d!686087))

(declare-fun d!686089 () Bool)

(assert (=> d!686089 (= (max!0 (height!1323 (left!20991 acc!252)) (height!1323 (right!21321 acc!252))) (ite (< (height!1323 (left!20991 acc!252)) (height!1323 (right!21321 acc!252))) (height!1323 (right!21321 acc!252)) (height!1323 (left!20991 acc!252))))))

(assert (=> b!2320058 d!686089))

(assert (=> b!2320058 d!685987))

(assert (=> b!2320058 d!685989))

(declare-fun d!686091 () Bool)

(declare-fun c!367993 () Bool)

(assert (=> d!686091 (= c!367993 ((_ is Nil!27658) lt!860254))))

(declare-fun e!1487178 () (InoxSet T!43838))

(assert (=> d!686091 (= (content!3737 lt!860254) e!1487178)))

(declare-fun b!2320228 () Bool)

(assert (=> b!2320228 (= e!1487178 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320229 () Bool)

(assert (=> b!2320229 (= e!1487178 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 lt!860254) true) (content!3737 (t!207402 lt!860254))))))

(assert (= (and d!686091 c!367993) b!2320228))

(assert (= (and d!686091 (not c!367993)) b!2320229))

(declare-fun m!2748971 () Bool)

(assert (=> b!2320229 m!2748971))

(declare-fun m!2748973 () Bool)

(assert (=> b!2320229 m!2748973))

(assert (=> d!685967 d!686091))

(declare-fun d!686093 () Bool)

(declare-fun c!367994 () Bool)

(assert (=> d!686093 (= c!367994 ((_ is Nil!27658) (t!207402 lt!860232)))))

(declare-fun e!1487179 () (InoxSet T!43838))

(assert (=> d!686093 (= (content!3737 (t!207402 lt!860232)) e!1487179)))

(declare-fun b!2320230 () Bool)

(assert (=> b!2320230 (= e!1487179 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320231 () Bool)

(assert (=> b!2320231 (= e!1487179 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 (t!207402 lt!860232)) true) (content!3737 (t!207402 (t!207402 lt!860232)))))))

(assert (= (and d!686093 c!367994) b!2320230))

(assert (= (and d!686093 (not c!367994)) b!2320231))

(declare-fun m!2748975 () Bool)

(assert (=> b!2320231 m!2748975))

(declare-fun m!2748977 () Bool)

(assert (=> b!2320231 m!2748977))

(assert (=> d!685967 d!686093))

(assert (=> d!685967 d!685999))

(declare-fun d!686095 () Bool)

(declare-fun lt!860273 () Int)

(assert (=> d!686095 (>= lt!860273 0)))

(declare-fun e!1487180 () Int)

(assert (=> d!686095 (= lt!860273 e!1487180)))

(declare-fun c!367995 () Bool)

(assert (=> d!686095 (= c!367995 ((_ is Nil!27658) (list!10996 (xs!12023 acc!252))))))

(assert (=> d!686095 (= (size!21908 (list!10996 (xs!12023 acc!252))) lt!860273)))

(declare-fun b!2320232 () Bool)

(assert (=> b!2320232 (= e!1487180 0)))

(declare-fun b!2320233 () Bool)

(assert (=> b!2320233 (= e!1487180 (+ 1 (size!21908 (t!207402 (list!10996 (xs!12023 acc!252))))))))

(assert (= (and d!686095 c!367995) b!2320232))

(assert (= (and d!686095 (not c!367995)) b!2320233))

(declare-fun m!2748979 () Bool)

(assert (=> b!2320233 m!2748979))

(assert (=> b!2320098 d!686095))

(assert (=> b!2320098 d!685957))

(declare-fun d!686097 () Bool)

(declare-fun res!991209 () Bool)

(declare-fun e!1487181 () Bool)

(assert (=> d!686097 (=> (not res!991209) (not e!1487181))))

(assert (=> d!686097 (= res!991209 (= (csize!18356 (right!21321 (left!20991 acc!252))) (+ (size!21909 (left!20991 (right!21321 (left!20991 acc!252)))) (size!21909 (right!21321 (right!21321 (left!20991 acc!252)))))))))

(assert (=> d!686097 (= (inv!37592 (right!21321 (left!20991 acc!252))) e!1487181)))

(declare-fun b!2320234 () Bool)

(declare-fun res!991210 () Bool)

(assert (=> b!2320234 (=> (not res!991210) (not e!1487181))))

(assert (=> b!2320234 (= res!991210 (and (not (= (left!20991 (right!21321 (left!20991 acc!252))) Empty!9063)) (not (= (right!21321 (right!21321 (left!20991 acc!252))) Empty!9063))))))

(declare-fun b!2320235 () Bool)

(declare-fun res!991211 () Bool)

(assert (=> b!2320235 (=> (not res!991211) (not e!1487181))))

(assert (=> b!2320235 (= res!991211 (= (cheight!9274 (right!21321 (left!20991 acc!252))) (+ (max!0 (height!1323 (left!20991 (right!21321 (left!20991 acc!252)))) (height!1323 (right!21321 (right!21321 (left!20991 acc!252))))) 1)))))

(declare-fun b!2320236 () Bool)

(assert (=> b!2320236 (= e!1487181 (<= 0 (cheight!9274 (right!21321 (left!20991 acc!252)))))))

(assert (= (and d!686097 res!991209) b!2320234))

(assert (= (and b!2320234 res!991210) b!2320235))

(assert (= (and b!2320235 res!991211) b!2320236))

(declare-fun m!2748981 () Bool)

(assert (=> d!686097 m!2748981))

(declare-fun m!2748983 () Bool)

(assert (=> d!686097 m!2748983))

(declare-fun m!2748985 () Bool)

(assert (=> b!2320235 m!2748985))

(declare-fun m!2748987 () Bool)

(assert (=> b!2320235 m!2748987))

(assert (=> b!2320235 m!2748985))

(assert (=> b!2320235 m!2748987))

(declare-fun m!2748989 () Bool)

(assert (=> b!2320235 m!2748989))

(assert (=> b!2320046 d!686097))

(assert (=> b!2320073 d!686093))

(declare-fun b!2320237 () Bool)

(declare-fun e!1487182 () Bool)

(declare-fun e!1487183 () Bool)

(assert (=> b!2320237 (= e!1487182 e!1487183)))

(declare-fun res!991212 () Bool)

(assert (=> b!2320237 (=> (not res!991212) (not e!1487183))))

(assert (=> b!2320237 (= res!991212 (<= (- 1) (- (height!1323 (left!20991 (left!20991 (right!21321 acc!252)))) (height!1323 (right!21321 (left!20991 (right!21321 acc!252)))))))))

(declare-fun b!2320238 () Bool)

(declare-fun res!991213 () Bool)

(assert (=> b!2320238 (=> (not res!991213) (not e!1487183))))

(assert (=> b!2320238 (= res!991213 (<= (- (height!1323 (left!20991 (left!20991 (right!21321 acc!252)))) (height!1323 (right!21321 (left!20991 (right!21321 acc!252))))) 1))))

(declare-fun d!686099 () Bool)

(declare-fun res!991215 () Bool)

(assert (=> d!686099 (=> res!991215 e!1487182)))

(assert (=> d!686099 (= res!991215 (not ((_ is Node!9063) (left!20991 (right!21321 acc!252)))))))

(assert (=> d!686099 (= (isBalanced!2757 (left!20991 (right!21321 acc!252))) e!1487182)))

(declare-fun b!2320239 () Bool)

(declare-fun res!991217 () Bool)

(assert (=> b!2320239 (=> (not res!991217) (not e!1487183))))

(assert (=> b!2320239 (= res!991217 (isBalanced!2757 (left!20991 (left!20991 (right!21321 acc!252)))))))

(declare-fun b!2320240 () Bool)

(declare-fun res!991216 () Bool)

(assert (=> b!2320240 (=> (not res!991216) (not e!1487183))))

(assert (=> b!2320240 (= res!991216 (isBalanced!2757 (right!21321 (left!20991 (right!21321 acc!252)))))))

(declare-fun b!2320241 () Bool)

(declare-fun res!991214 () Bool)

(assert (=> b!2320241 (=> (not res!991214) (not e!1487183))))

(assert (=> b!2320241 (= res!991214 (not (isEmpty!15781 (left!20991 (left!20991 (right!21321 acc!252))))))))

(declare-fun b!2320242 () Bool)

(assert (=> b!2320242 (= e!1487183 (not (isEmpty!15781 (right!21321 (left!20991 (right!21321 acc!252))))))))

(assert (= (and d!686099 (not res!991215)) b!2320237))

(assert (= (and b!2320237 res!991212) b!2320238))

(assert (= (and b!2320238 res!991213) b!2320239))

(assert (= (and b!2320239 res!991217) b!2320240))

(assert (= (and b!2320240 res!991216) b!2320241))

(assert (= (and b!2320241 res!991214) b!2320242))

(declare-fun m!2748991 () Bool)

(assert (=> b!2320237 m!2748991))

(declare-fun m!2748993 () Bool)

(assert (=> b!2320237 m!2748993))

(declare-fun m!2748995 () Bool)

(assert (=> b!2320242 m!2748995))

(declare-fun m!2748997 () Bool)

(assert (=> b!2320239 m!2748997))

(declare-fun m!2748999 () Bool)

(assert (=> b!2320241 m!2748999))

(assert (=> b!2320238 m!2748991))

(assert (=> b!2320238 m!2748993))

(declare-fun m!2749001 () Bool)

(assert (=> b!2320240 m!2749001))

(assert (=> b!2320084 d!686099))

(declare-fun d!686101 () Bool)

(assert (=> d!686101 (= (isEmpty!15783 (list!10997 (left!20991 acc!252))) ((_ is Nil!27658) (list!10997 (left!20991 acc!252))))))

(assert (=> d!685965 d!686101))

(assert (=> d!685965 d!685953))

(declare-fun d!686103 () Bool)

(declare-fun lt!860276 () Int)

(assert (=> d!686103 (= lt!860276 (size!21908 (list!10997 (left!20991 acc!252))))))

(assert (=> d!686103 (= lt!860276 (ite ((_ is Empty!9063) (left!20991 acc!252)) 0 (ite ((_ is Leaf!13304) (left!20991 acc!252)) (csize!18357 (left!20991 acc!252)) (csize!18356 (left!20991 acc!252)))))))

(assert (=> d!686103 (= (size!21909 (left!20991 acc!252)) lt!860276)))

(declare-fun bs!458987 () Bool)

(assert (= bs!458987 d!686103))

(assert (=> bs!458987 m!2748599))

(assert (=> bs!458987 m!2748599))

(assert (=> bs!458987 m!2748635))

(assert (=> d!685965 d!686103))

(assert (=> d!685991 d!686103))

(declare-fun d!686105 () Bool)

(declare-fun lt!860277 () Int)

(assert (=> d!686105 (= lt!860277 (size!21908 (list!10997 (right!21321 acc!252))))))

(assert (=> d!686105 (= lt!860277 (ite ((_ is Empty!9063) (right!21321 acc!252)) 0 (ite ((_ is Leaf!13304) (right!21321 acc!252)) (csize!18357 (right!21321 acc!252)) (csize!18356 (right!21321 acc!252)))))))

(assert (=> d!686105 (= (size!21909 (right!21321 acc!252)) lt!860277)))

(declare-fun bs!458988 () Bool)

(assert (= bs!458988 d!686105))

(assert (=> bs!458988 m!2748601))

(assert (=> bs!458988 m!2748601))

(assert (=> bs!458988 m!2748637))

(assert (=> d!685991 d!686105))

(declare-fun d!686107 () Bool)

(declare-fun lt!860278 () Int)

(assert (=> d!686107 (>= lt!860278 0)))

(declare-fun e!1487184 () Int)

(assert (=> d!686107 (= lt!860278 e!1487184)))

(declare-fun c!367996 () Bool)

(assert (=> d!686107 (= c!367996 ((_ is Nil!27658) (t!207402 lt!860232)))))

(assert (=> d!686107 (= (size!21908 (t!207402 lt!860232)) lt!860278)))

(declare-fun b!2320243 () Bool)

(assert (=> b!2320243 (= e!1487184 0)))

(declare-fun b!2320244 () Bool)

(assert (=> b!2320244 (= e!1487184 (+ 1 (size!21908 (t!207402 (t!207402 lt!860232)))))))

(assert (= (and d!686107 c!367996) b!2320243))

(assert (= (and d!686107 (not c!367996)) b!2320244))

(declare-fun m!2749003 () Bool)

(assert (=> b!2320244 m!2749003))

(assert (=> b!2320040 d!686107))

(declare-fun d!686109 () Bool)

(assert (=> d!686109 (= (list!10996 (xs!12023 (right!21321 acc!252))) (innerList!9123 (xs!12023 (right!21321 acc!252))))))

(assert (=> b!2320016 d!686109))

(declare-fun d!686111 () Bool)

(declare-fun res!991218 () Bool)

(declare-fun e!1487185 () Bool)

(assert (=> d!686111 (=> (not res!991218) (not e!1487185))))

(assert (=> d!686111 (= res!991218 (= (csize!18356 (left!20991 (right!21321 acc!252))) (+ (size!21909 (left!20991 (left!20991 (right!21321 acc!252)))) (size!21909 (right!21321 (left!20991 (right!21321 acc!252)))))))))

(assert (=> d!686111 (= (inv!37592 (left!20991 (right!21321 acc!252))) e!1487185)))

(declare-fun b!2320245 () Bool)

(declare-fun res!991219 () Bool)

(assert (=> b!2320245 (=> (not res!991219) (not e!1487185))))

(assert (=> b!2320245 (= res!991219 (and (not (= (left!20991 (left!20991 (right!21321 acc!252))) Empty!9063)) (not (= (right!21321 (left!20991 (right!21321 acc!252))) Empty!9063))))))

(declare-fun b!2320246 () Bool)

(declare-fun res!991220 () Bool)

(assert (=> b!2320246 (=> (not res!991220) (not e!1487185))))

(assert (=> b!2320246 (= res!991220 (= (cheight!9274 (left!20991 (right!21321 acc!252))) (+ (max!0 (height!1323 (left!20991 (left!20991 (right!21321 acc!252)))) (height!1323 (right!21321 (left!20991 (right!21321 acc!252))))) 1)))))

(declare-fun b!2320247 () Bool)

(assert (=> b!2320247 (= e!1487185 (<= 0 (cheight!9274 (left!20991 (right!21321 acc!252)))))))

(assert (= (and d!686111 res!991218) b!2320245))

(assert (= (and b!2320245 res!991219) b!2320246))

(assert (= (and b!2320246 res!991220) b!2320247))

(declare-fun m!2749005 () Bool)

(assert (=> d!686111 m!2749005))

(declare-fun m!2749007 () Bool)

(assert (=> d!686111 m!2749007))

(assert (=> b!2320246 m!2748991))

(assert (=> b!2320246 m!2748993))

(assert (=> b!2320246 m!2748991))

(assert (=> b!2320246 m!2748993))

(declare-fun m!2749009 () Bool)

(assert (=> b!2320246 m!2749009))

(assert (=> b!2320049 d!686111))

(declare-fun d!686113 () Bool)

(declare-fun res!991221 () Bool)

(declare-fun e!1487186 () Bool)

(assert (=> d!686113 (=> (not res!991221) (not e!1487186))))

(assert (=> d!686113 (= res!991221 (<= (size!21908 (list!10996 (xs!12023 (left!20991 (right!21321 acc!252))))) 512))))

(assert (=> d!686113 (= (inv!37593 (left!20991 (right!21321 acc!252))) e!1487186)))

(declare-fun b!2320248 () Bool)

(declare-fun res!991222 () Bool)

(assert (=> b!2320248 (=> (not res!991222) (not e!1487186))))

(assert (=> b!2320248 (= res!991222 (= (csize!18357 (left!20991 (right!21321 acc!252))) (size!21908 (list!10996 (xs!12023 (left!20991 (right!21321 acc!252)))))))))

(declare-fun b!2320249 () Bool)

(assert (=> b!2320249 (= e!1487186 (and (> (csize!18357 (left!20991 (right!21321 acc!252))) 0) (<= (csize!18357 (left!20991 (right!21321 acc!252))) 512)))))

(assert (= (and d!686113 res!991221) b!2320248))

(assert (= (and b!2320248 res!991222) b!2320249))

(declare-fun m!2749011 () Bool)

(assert (=> d!686113 m!2749011))

(assert (=> d!686113 m!2749011))

(declare-fun m!2749013 () Bool)

(assert (=> d!686113 m!2749013))

(assert (=> b!2320248 m!2749011))

(assert (=> b!2320248 m!2749011))

(assert (=> b!2320248 m!2749013))

(assert (=> b!2320051 d!686113))

(declare-fun d!686115 () Bool)

(declare-fun lt!860279 () Int)

(assert (=> d!686115 (>= lt!860279 0)))

(declare-fun e!1487187 () Int)

(assert (=> d!686115 (= lt!860279 e!1487187)))

(declare-fun c!367997 () Bool)

(assert (=> d!686115 (= c!367997 ((_ is Nil!27658) lt!860246))))

(assert (=> d!686115 (= (size!21908 lt!860246) lt!860279)))

(declare-fun b!2320250 () Bool)

(assert (=> b!2320250 (= e!1487187 0)))

(declare-fun b!2320251 () Bool)

(assert (=> b!2320251 (= e!1487187 (+ 1 (size!21908 (t!207402 lt!860246))))))

(assert (= (and d!686115 c!367997) b!2320250))

(assert (= (and d!686115 (not c!367997)) b!2320251))

(declare-fun m!2749015 () Bool)

(assert (=> b!2320251 m!2749015))

(assert (=> b!2320008 d!686115))

(declare-fun d!686117 () Bool)

(declare-fun lt!860280 () Int)

(assert (=> d!686117 (>= lt!860280 0)))

(declare-fun e!1487188 () Int)

(assert (=> d!686117 (= lt!860280 e!1487188)))

(declare-fun c!367998 () Bool)

(assert (=> d!686117 (= c!367998 ((_ is Nil!27658) (list!10997 (left!20991 acc!252))))))

(assert (=> d!686117 (= (size!21908 (list!10997 (left!20991 acc!252))) lt!860280)))

(declare-fun b!2320252 () Bool)

(assert (=> b!2320252 (= e!1487188 0)))

(declare-fun b!2320253 () Bool)

(assert (=> b!2320253 (= e!1487188 (+ 1 (size!21908 (t!207402 (list!10997 (left!20991 acc!252))))))))

(assert (= (and d!686117 c!367998) b!2320252))

(assert (= (and d!686117 (not c!367998)) b!2320253))

(declare-fun m!2749017 () Bool)

(assert (=> b!2320253 m!2749017))

(assert (=> b!2320008 d!686117))

(declare-fun d!686119 () Bool)

(declare-fun lt!860281 () Int)

(assert (=> d!686119 (>= lt!860281 0)))

(declare-fun e!1487189 () Int)

(assert (=> d!686119 (= lt!860281 e!1487189)))

(declare-fun c!367999 () Bool)

(assert (=> d!686119 (= c!367999 ((_ is Nil!27658) (list!10997 (right!21321 acc!252))))))

(assert (=> d!686119 (= (size!21908 (list!10997 (right!21321 acc!252))) lt!860281)))

(declare-fun b!2320254 () Bool)

(assert (=> b!2320254 (= e!1487189 0)))

(declare-fun b!2320255 () Bool)

(assert (=> b!2320255 (= e!1487189 (+ 1 (size!21908 (t!207402 (list!10997 (right!21321 acc!252))))))))

(assert (= (and d!686119 c!367999) b!2320254))

(assert (= (and d!686119 (not c!367999)) b!2320255))

(declare-fun m!2749019 () Bool)

(assert (=> b!2320255 m!2749019))

(assert (=> b!2320008 d!686119))

(declare-fun d!686121 () Bool)

(declare-fun res!991223 () Bool)

(declare-fun e!1487190 () Bool)

(assert (=> d!686121 (=> (not res!991223) (not e!1487190))))

(assert (=> d!686121 (= res!991223 (<= (size!21908 (list!10996 (xs!12023 (right!21321 (right!21321 acc!252))))) 512))))

(assert (=> d!686121 (= (inv!37593 (right!21321 (right!21321 acc!252))) e!1487190)))

(declare-fun b!2320256 () Bool)

(declare-fun res!991224 () Bool)

(assert (=> b!2320256 (=> (not res!991224) (not e!1487190))))

(assert (=> b!2320256 (= res!991224 (= (csize!18357 (right!21321 (right!21321 acc!252))) (size!21908 (list!10996 (xs!12023 (right!21321 (right!21321 acc!252)))))))))

(declare-fun b!2320257 () Bool)

(assert (=> b!2320257 (= e!1487190 (and (> (csize!18357 (right!21321 (right!21321 acc!252))) 0) (<= (csize!18357 (right!21321 (right!21321 acc!252))) 512)))))

(assert (= (and d!686121 res!991223) b!2320256))

(assert (= (and b!2320256 res!991224) b!2320257))

(declare-fun m!2749021 () Bool)

(assert (=> d!686121 m!2749021))

(assert (=> d!686121 m!2749021))

(declare-fun m!2749023 () Bool)

(assert (=> d!686121 m!2749023))

(assert (=> b!2320256 m!2749021))

(assert (=> b!2320256 m!2749021))

(assert (=> b!2320256 m!2749023))

(assert (=> b!2320054 d!686121))

(declare-fun d!686123 () Bool)

(assert (=> d!686123 (= (inv!37588 (xs!12023 (left!20991 (right!21321 acc!252)))) (<= (size!21908 (innerList!9123 (xs!12023 (left!20991 (right!21321 acc!252))))) 2147483647))))

(declare-fun bs!458989 () Bool)

(assert (= bs!458989 d!686123))

(declare-fun m!2749025 () Bool)

(assert (=> bs!458989 m!2749025))

(assert (=> b!2320138 d!686123))

(declare-fun d!686125 () Bool)

(assert (=> d!686125 (= (max!0 (height!1323 (left!20991 (left!20991 acc!252))) (height!1323 (right!21321 (left!20991 acc!252)))) (ite (< (height!1323 (left!20991 (left!20991 acc!252))) (height!1323 (right!21321 (left!20991 acc!252)))) (height!1323 (right!21321 (left!20991 acc!252))) (height!1323 (left!20991 (left!20991 acc!252)))))))

(assert (=> b!2320025 d!686125))

(declare-fun d!686127 () Bool)

(assert (=> d!686127 (= (height!1323 (left!20991 (left!20991 acc!252))) (ite ((_ is Empty!9063) (left!20991 (left!20991 acc!252))) 0 (ite ((_ is Leaf!13304) (left!20991 (left!20991 acc!252))) 1 (cheight!9274 (left!20991 (left!20991 acc!252))))))))

(assert (=> b!2320025 d!686127))

(declare-fun d!686129 () Bool)

(assert (=> d!686129 (= (height!1323 (right!21321 (left!20991 acc!252))) (ite ((_ is Empty!9063) (right!21321 (left!20991 acc!252))) 0 (ite ((_ is Leaf!13304) (right!21321 (left!20991 acc!252))) 1 (cheight!9274 (right!21321 (left!20991 acc!252))))))))

(assert (=> b!2320025 d!686129))

(declare-fun d!686131 () Bool)

(declare-fun lt!860282 () Bool)

(assert (=> d!686131 (= lt!860282 (isEmpty!15783 (list!10997 (right!21321 (left!20991 acc!252)))))))

(assert (=> d!686131 (= lt!860282 (= (size!21909 (right!21321 (left!20991 acc!252))) 0))))

(assert (=> d!686131 (= (isEmpty!15781 (right!21321 (left!20991 acc!252))) lt!860282)))

(declare-fun bs!458990 () Bool)

(assert (= bs!458990 d!686131))

(assert (=> bs!458990 m!2748649))

(assert (=> bs!458990 m!2748649))

(declare-fun m!2749027 () Bool)

(assert (=> bs!458990 m!2749027))

(assert (=> bs!458990 m!2748665))

(assert (=> b!2320081 d!686131))

(declare-fun d!686133 () Bool)

(declare-fun lt!860283 () Int)

(assert (=> d!686133 (>= lt!860283 0)))

(declare-fun e!1487191 () Int)

(assert (=> d!686133 (= lt!860283 e!1487191)))

(declare-fun c!368000 () Bool)

(assert (=> d!686133 (= c!368000 ((_ is Nil!27658) lt!860254))))

(assert (=> d!686133 (= (size!21908 lt!860254) lt!860283)))

(declare-fun b!2320258 () Bool)

(assert (=> b!2320258 (= e!1487191 0)))

(declare-fun b!2320259 () Bool)

(assert (=> b!2320259 (= e!1487191 (+ 1 (size!21908 (t!207402 lt!860254))))))

(assert (= (and d!686133 c!368000) b!2320258))

(assert (= (and d!686133 (not c!368000)) b!2320259))

(declare-fun m!2749029 () Bool)

(assert (=> b!2320259 m!2749029))

(assert (=> b!2320035 d!686133))

(assert (=> b!2320035 d!686107))

(assert (=> b!2320035 d!685973))

(declare-fun d!686135 () Bool)

(declare-fun lt!860284 () Int)

(assert (=> d!686135 (>= lt!860284 0)))

(declare-fun e!1487192 () Int)

(assert (=> d!686135 (= lt!860284 e!1487192)))

(declare-fun c!368001 () Bool)

(assert (=> d!686135 (= c!368001 ((_ is Nil!27658) (t!207402 (innerList!9123 (xs!12023 acc!252)))))))

(assert (=> d!686135 (= (size!21908 (t!207402 (innerList!9123 (xs!12023 acc!252)))) lt!860284)))

(declare-fun b!2320260 () Bool)

(assert (=> b!2320260 (= e!1487192 0)))

(declare-fun b!2320261 () Bool)

(assert (=> b!2320261 (= e!1487192 (+ 1 (size!21908 (t!207402 (t!207402 (innerList!9123 (xs!12023 acc!252)))))))))

(assert (= (and d!686135 c!368001) b!2320260))

(assert (= (and d!686135 (not c!368001)) b!2320261))

(declare-fun m!2749031 () Bool)

(assert (=> b!2320261 m!2749031))

(assert (=> b!2320032 d!686135))

(declare-fun d!686137 () Bool)

(declare-fun c!368002 () Bool)

(assert (=> d!686137 (= c!368002 ((_ is Node!9063) (left!20991 (right!21321 (right!21321 acc!252)))))))

(declare-fun e!1487193 () Bool)

(assert (=> d!686137 (= (inv!37589 (left!20991 (right!21321 (right!21321 acc!252)))) e!1487193)))

(declare-fun b!2320262 () Bool)

(assert (=> b!2320262 (= e!1487193 (inv!37592 (left!20991 (right!21321 (right!21321 acc!252)))))))

(declare-fun b!2320263 () Bool)

(declare-fun e!1487194 () Bool)

(assert (=> b!2320263 (= e!1487193 e!1487194)))

(declare-fun res!991225 () Bool)

(assert (=> b!2320263 (= res!991225 (not ((_ is Leaf!13304) (left!20991 (right!21321 (right!21321 acc!252))))))))

(assert (=> b!2320263 (=> res!991225 e!1487194)))

(declare-fun b!2320264 () Bool)

(assert (=> b!2320264 (= e!1487194 (inv!37593 (left!20991 (right!21321 (right!21321 acc!252)))))))

(assert (= (and d!686137 c!368002) b!2320262))

(assert (= (and d!686137 (not c!368002)) b!2320263))

(assert (= (and b!2320263 (not res!991225)) b!2320264))

(declare-fun m!2749033 () Bool)

(assert (=> b!2320262 m!2749033))

(declare-fun m!2749035 () Bool)

(assert (=> b!2320264 m!2749035))

(assert (=> b!2320140 d!686137))

(declare-fun d!686139 () Bool)

(declare-fun c!368003 () Bool)

(assert (=> d!686139 (= c!368003 ((_ is Node!9063) (right!21321 (right!21321 (right!21321 acc!252)))))))

(declare-fun e!1487195 () Bool)

(assert (=> d!686139 (= (inv!37589 (right!21321 (right!21321 (right!21321 acc!252)))) e!1487195)))

(declare-fun b!2320265 () Bool)

(assert (=> b!2320265 (= e!1487195 (inv!37592 (right!21321 (right!21321 (right!21321 acc!252)))))))

(declare-fun b!2320266 () Bool)

(declare-fun e!1487196 () Bool)

(assert (=> b!2320266 (= e!1487195 e!1487196)))

(declare-fun res!991226 () Bool)

(assert (=> b!2320266 (= res!991226 (not ((_ is Leaf!13304) (right!21321 (right!21321 (right!21321 acc!252))))))))

(assert (=> b!2320266 (=> res!991226 e!1487196)))

(declare-fun b!2320267 () Bool)

(assert (=> b!2320267 (= e!1487196 (inv!37593 (right!21321 (right!21321 (right!21321 acc!252)))))))

(assert (= (and d!686139 c!368003) b!2320265))

(assert (= (and d!686139 (not c!368003)) b!2320266))

(assert (= (and b!2320266 (not res!991226)) b!2320267))

(declare-fun m!2749037 () Bool)

(assert (=> b!2320265 m!2749037))

(declare-fun m!2749039 () Bool)

(assert (=> b!2320267 m!2749039))

(assert (=> b!2320140 d!686139))

(declare-fun d!686141 () Bool)

(assert (=> d!686141 (= (max!0 (height!1323 (left!20991 (right!21321 acc!252))) (height!1323 (right!21321 (right!21321 acc!252)))) (ite (< (height!1323 (left!20991 (right!21321 acc!252))) (height!1323 (right!21321 (right!21321 acc!252)))) (height!1323 (right!21321 (right!21321 acc!252))) (height!1323 (left!20991 (right!21321 acc!252)))))))

(assert (=> b!2320101 d!686141))

(assert (=> b!2320101 d!686079))

(assert (=> b!2320101 d!686081))

(declare-fun d!686143 () Bool)

(declare-fun c!368004 () Bool)

(assert (=> d!686143 (= c!368004 ((_ is Node!9063) (left!20991 (left!20991 (left!20991 acc!252)))))))

(declare-fun e!1487197 () Bool)

(assert (=> d!686143 (= (inv!37589 (left!20991 (left!20991 (left!20991 acc!252)))) e!1487197)))

(declare-fun b!2320268 () Bool)

(assert (=> b!2320268 (= e!1487197 (inv!37592 (left!20991 (left!20991 (left!20991 acc!252)))))))

(declare-fun b!2320269 () Bool)

(declare-fun e!1487198 () Bool)

(assert (=> b!2320269 (= e!1487197 e!1487198)))

(declare-fun res!991227 () Bool)

(assert (=> b!2320269 (= res!991227 (not ((_ is Leaf!13304) (left!20991 (left!20991 (left!20991 acc!252))))))))

(assert (=> b!2320269 (=> res!991227 e!1487198)))

(declare-fun b!2320270 () Bool)

(assert (=> b!2320270 (= e!1487198 (inv!37593 (left!20991 (left!20991 (left!20991 acc!252)))))))

(assert (= (and d!686143 c!368004) b!2320268))

(assert (= (and d!686143 (not c!368004)) b!2320269))

(assert (= (and b!2320269 (not res!991227)) b!2320270))

(declare-fun m!2749041 () Bool)

(assert (=> b!2320268 m!2749041))

(declare-fun m!2749043 () Bool)

(assert (=> b!2320270 m!2749043))

(assert (=> b!2320123 d!686143))

(declare-fun d!686145 () Bool)

(declare-fun c!368005 () Bool)

(assert (=> d!686145 (= c!368005 ((_ is Node!9063) (right!21321 (left!20991 (left!20991 acc!252)))))))

(declare-fun e!1487199 () Bool)

(assert (=> d!686145 (= (inv!37589 (right!21321 (left!20991 (left!20991 acc!252)))) e!1487199)))

(declare-fun b!2320271 () Bool)

(assert (=> b!2320271 (= e!1487199 (inv!37592 (right!21321 (left!20991 (left!20991 acc!252)))))))

(declare-fun b!2320272 () Bool)

(declare-fun e!1487200 () Bool)

(assert (=> b!2320272 (= e!1487199 e!1487200)))

(declare-fun res!991228 () Bool)

(assert (=> b!2320272 (= res!991228 (not ((_ is Leaf!13304) (right!21321 (left!20991 (left!20991 acc!252))))))))

(assert (=> b!2320272 (=> res!991228 e!1487200)))

(declare-fun b!2320273 () Bool)

(assert (=> b!2320273 (= e!1487200 (inv!37593 (right!21321 (left!20991 (left!20991 acc!252)))))))

(assert (= (and d!686145 c!368005) b!2320271))

(assert (= (and d!686145 (not c!368005)) b!2320272))

(assert (= (and b!2320272 (not res!991228)) b!2320273))

(declare-fun m!2749045 () Bool)

(assert (=> b!2320271 m!2749045))

(declare-fun m!2749047 () Bool)

(assert (=> b!2320273 m!2749047))

(assert (=> b!2320123 d!686145))

(assert (=> b!2320077 d!686127))

(assert (=> b!2320077 d!686129))

(declare-fun d!686147 () Bool)

(declare-fun lt!860285 () Bool)

(assert (=> d!686147 (= lt!860285 (isEmpty!15783 (list!10997 (right!21321 (right!21321 acc!252)))))))

(assert (=> d!686147 (= lt!860285 (= (size!21909 (right!21321 (right!21321 acc!252))) 0))))

(assert (=> d!686147 (= (isEmpty!15781 (right!21321 (right!21321 acc!252))) lt!860285)))

(declare-fun bs!458991 () Bool)

(assert (= bs!458991 d!686147))

(assert (=> bs!458991 m!2748657))

(assert (=> bs!458991 m!2748657))

(declare-fun m!2749049 () Bool)

(assert (=> bs!458991 m!2749049))

(assert (=> bs!458991 m!2748767))

(assert (=> b!2320087 d!686147))

(declare-fun d!686149 () Bool)

(declare-fun lt!860286 () Int)

(assert (=> d!686149 (= lt!860286 (size!21908 (list!10997 (left!20991 (right!21321 acc!252)))))))

(assert (=> d!686149 (= lt!860286 (ite ((_ is Empty!9063) (left!20991 (right!21321 acc!252))) 0 (ite ((_ is Leaf!13304) (left!20991 (right!21321 acc!252))) (csize!18357 (left!20991 (right!21321 acc!252))) (csize!18356 (left!20991 (right!21321 acc!252))))))))

(assert (=> d!686149 (= (size!21909 (left!20991 (right!21321 acc!252))) lt!860286)))

(declare-fun bs!458992 () Bool)

(assert (= bs!458992 d!686149))

(assert (=> bs!458992 m!2748655))

(assert (=> bs!458992 m!2748655))

(declare-fun m!2749051 () Bool)

(assert (=> bs!458992 m!2749051))

(assert (=> d!686015 d!686149))

(declare-fun d!686151 () Bool)

(declare-fun lt!860287 () Int)

(assert (=> d!686151 (= lt!860287 (size!21908 (list!10997 (right!21321 (right!21321 acc!252)))))))

(assert (=> d!686151 (= lt!860287 (ite ((_ is Empty!9063) (right!21321 (right!21321 acc!252))) 0 (ite ((_ is Leaf!13304) (right!21321 (right!21321 acc!252))) (csize!18357 (right!21321 (right!21321 acc!252))) (csize!18356 (right!21321 (right!21321 acc!252))))))))

(assert (=> d!686151 (= (size!21909 (right!21321 (right!21321 acc!252))) lt!860287)))

(declare-fun bs!458993 () Bool)

(assert (= bs!458993 d!686151))

(assert (=> bs!458993 m!2748657))

(assert (=> bs!458993 m!2748657))

(declare-fun m!2749053 () Bool)

(assert (=> bs!458993 m!2749053))

(assert (=> d!686015 d!686151))

(declare-fun d!686153 () Bool)

(declare-fun lt!860288 () Int)

(assert (=> d!686153 (= lt!860288 (size!21908 (list!10997 (left!20991 (left!20991 acc!252)))))))

(assert (=> d!686153 (= lt!860288 (ite ((_ is Empty!9063) (left!20991 (left!20991 acc!252))) 0 (ite ((_ is Leaf!13304) (left!20991 (left!20991 acc!252))) (csize!18357 (left!20991 (left!20991 acc!252))) (csize!18356 (left!20991 (left!20991 acc!252))))))))

(assert (=> d!686153 (= (size!21909 (left!20991 (left!20991 acc!252))) lt!860288)))

(declare-fun bs!458994 () Bool)

(assert (= bs!458994 d!686153))

(assert (=> bs!458994 m!2748647))

(assert (=> bs!458994 m!2748647))

(assert (=> bs!458994 m!2748943))

(assert (=> d!685959 d!686153))

(declare-fun d!686155 () Bool)

(declare-fun lt!860289 () Int)

(assert (=> d!686155 (= lt!860289 (size!21908 (list!10997 (right!21321 (left!20991 acc!252)))))))

(assert (=> d!686155 (= lt!860289 (ite ((_ is Empty!9063) (right!21321 (left!20991 acc!252))) 0 (ite ((_ is Leaf!13304) (right!21321 (left!20991 acc!252))) (csize!18357 (right!21321 (left!20991 acc!252))) (csize!18356 (right!21321 (left!20991 acc!252))))))))

(assert (=> d!686155 (= (size!21909 (right!21321 (left!20991 acc!252))) lt!860289)))

(declare-fun bs!458995 () Bool)

(assert (= bs!458995 d!686155))

(assert (=> bs!458995 m!2748649))

(assert (=> bs!458995 m!2748649))

(assert (=> bs!458995 m!2748945))

(assert (=> d!685959 d!686155))

(declare-fun d!686157 () Bool)

(declare-fun res!991229 () Bool)

(declare-fun e!1487201 () Bool)

(assert (=> d!686157 (=> (not res!991229) (not e!1487201))))

(assert (=> d!686157 (= res!991229 (= (csize!18356 (right!21321 (right!21321 acc!252))) (+ (size!21909 (left!20991 (right!21321 (right!21321 acc!252)))) (size!21909 (right!21321 (right!21321 (right!21321 acc!252)))))))))

(assert (=> d!686157 (= (inv!37592 (right!21321 (right!21321 acc!252))) e!1487201)))

(declare-fun b!2320274 () Bool)

(declare-fun res!991230 () Bool)

(assert (=> b!2320274 (=> (not res!991230) (not e!1487201))))

(assert (=> b!2320274 (= res!991230 (and (not (= (left!20991 (right!21321 (right!21321 acc!252))) Empty!9063)) (not (= (right!21321 (right!21321 (right!21321 acc!252))) Empty!9063))))))

(declare-fun b!2320275 () Bool)

(declare-fun res!991231 () Bool)

(assert (=> b!2320275 (=> (not res!991231) (not e!1487201))))

(assert (=> b!2320275 (= res!991231 (= (cheight!9274 (right!21321 (right!21321 acc!252))) (+ (max!0 (height!1323 (left!20991 (right!21321 (right!21321 acc!252)))) (height!1323 (right!21321 (right!21321 (right!21321 acc!252))))) 1)))))

(declare-fun b!2320276 () Bool)

(assert (=> b!2320276 (= e!1487201 (<= 0 (cheight!9274 (right!21321 (right!21321 acc!252)))))))

(assert (= (and d!686157 res!991229) b!2320274))

(assert (= (and b!2320274 res!991230) b!2320275))

(assert (= (and b!2320275 res!991231) b!2320276))

(declare-fun m!2749055 () Bool)

(assert (=> d!686157 m!2749055))

(declare-fun m!2749057 () Bool)

(assert (=> d!686157 m!2749057))

(declare-fun m!2749059 () Bool)

(assert (=> b!2320275 m!2749059))

(declare-fun m!2749061 () Bool)

(assert (=> b!2320275 m!2749061))

(assert (=> b!2320275 m!2749059))

(assert (=> b!2320275 m!2749061))

(declare-fun m!2749063 () Bool)

(assert (=> b!2320275 m!2749063))

(assert (=> b!2320052 d!686157))

(declare-fun b!2320277 () Bool)

(declare-fun e!1487202 () Bool)

(declare-fun e!1487203 () Bool)

(assert (=> b!2320277 (= e!1487202 e!1487203)))

(declare-fun res!991232 () Bool)

(assert (=> b!2320277 (=> (not res!991232) (not e!1487203))))

(assert (=> b!2320277 (= res!991232 (<= (- 1) (- (height!1323 (left!20991 (right!21321 (left!20991 acc!252)))) (height!1323 (right!21321 (right!21321 (left!20991 acc!252)))))))))

(declare-fun b!2320278 () Bool)

(declare-fun res!991233 () Bool)

(assert (=> b!2320278 (=> (not res!991233) (not e!1487203))))

(assert (=> b!2320278 (= res!991233 (<= (- (height!1323 (left!20991 (right!21321 (left!20991 acc!252)))) (height!1323 (right!21321 (right!21321 (left!20991 acc!252))))) 1))))

(declare-fun d!686159 () Bool)

(declare-fun res!991235 () Bool)

(assert (=> d!686159 (=> res!991235 e!1487202)))

(assert (=> d!686159 (= res!991235 (not ((_ is Node!9063) (right!21321 (left!20991 acc!252)))))))

(assert (=> d!686159 (= (isBalanced!2757 (right!21321 (left!20991 acc!252))) e!1487202)))

(declare-fun b!2320279 () Bool)

(declare-fun res!991237 () Bool)

(assert (=> b!2320279 (=> (not res!991237) (not e!1487203))))

(assert (=> b!2320279 (= res!991237 (isBalanced!2757 (left!20991 (right!21321 (left!20991 acc!252)))))))

(declare-fun b!2320280 () Bool)

(declare-fun res!991236 () Bool)

(assert (=> b!2320280 (=> (not res!991236) (not e!1487203))))

(assert (=> b!2320280 (= res!991236 (isBalanced!2757 (right!21321 (right!21321 (left!20991 acc!252)))))))

(declare-fun b!2320281 () Bool)

(declare-fun res!991234 () Bool)

(assert (=> b!2320281 (=> (not res!991234) (not e!1487203))))

(assert (=> b!2320281 (= res!991234 (not (isEmpty!15781 (left!20991 (right!21321 (left!20991 acc!252))))))))

(declare-fun b!2320282 () Bool)

(assert (=> b!2320282 (= e!1487203 (not (isEmpty!15781 (right!21321 (right!21321 (left!20991 acc!252))))))))

(assert (= (and d!686159 (not res!991235)) b!2320277))

(assert (= (and b!2320277 res!991232) b!2320278))

(assert (= (and b!2320278 res!991233) b!2320279))

(assert (= (and b!2320279 res!991237) b!2320280))

(assert (= (and b!2320280 res!991236) b!2320281))

(assert (= (and b!2320281 res!991234) b!2320282))

(assert (=> b!2320277 m!2748985))

(assert (=> b!2320277 m!2748987))

(declare-fun m!2749065 () Bool)

(assert (=> b!2320282 m!2749065))

(declare-fun m!2749067 () Bool)

(assert (=> b!2320279 m!2749067))

(declare-fun m!2749069 () Bool)

(assert (=> b!2320281 m!2749069))

(assert (=> b!2320278 m!2748985))

(assert (=> b!2320278 m!2748987))

(declare-fun m!2749071 () Bool)

(assert (=> b!2320280 m!2749071))

(assert (=> b!2320079 d!686159))

(declare-fun d!686161 () Bool)

(declare-fun lt!860290 () Int)

(assert (=> d!686161 (>= lt!860290 0)))

(declare-fun e!1487204 () Int)

(assert (=> d!686161 (= lt!860290 e!1487204)))

(declare-fun c!368006 () Bool)

(assert (=> d!686161 (= c!368006 ((_ is Nil!27658) (t!207402 (innerList!9123 arr!18))))))

(assert (=> d!686161 (= (size!21908 (t!207402 (innerList!9123 arr!18))) lt!860290)))

(declare-fun b!2320283 () Bool)

(assert (=> b!2320283 (= e!1487204 0)))

(declare-fun b!2320284 () Bool)

(assert (=> b!2320284 (= e!1487204 (+ 1 (size!21908 (t!207402 (t!207402 (innerList!9123 arr!18))))))))

(assert (= (and d!686161 c!368006) b!2320283))

(assert (= (and d!686161 (not c!368006)) b!2320284))

(declare-fun m!2749073 () Bool)

(assert (=> b!2320284 m!2749073))

(assert (=> b!2320056 d!686161))

(declare-fun d!686163 () Bool)

(assert (=> d!686163 (= (list!10996 (xs!12023 (left!20991 acc!252))) (innerList!9123 (xs!12023 (left!20991 acc!252))))))

(assert (=> b!2320012 d!686163))

(declare-fun d!686165 () Bool)

(declare-fun c!368007 () Bool)

(assert (=> d!686165 (= c!368007 ((_ is Nil!27658) (t!207402 lt!860245)))))

(declare-fun e!1487205 () (InoxSet T!43838))

(assert (=> d!686165 (= (content!3737 (t!207402 lt!860245)) e!1487205)))

(declare-fun b!2320285 () Bool)

(assert (=> b!2320285 (= e!1487205 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320286 () Bool)

(assert (=> b!2320286 (= e!1487205 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 (t!207402 lt!860245)) true) (content!3737 (t!207402 (t!207402 lt!860245)))))))

(assert (= (and d!686165 c!368007) b!2320285))

(assert (= (and d!686165 (not c!368007)) b!2320286))

(declare-fun m!2749075 () Bool)

(assert (=> b!2320286 m!2749075))

(declare-fun m!2749077 () Bool)

(assert (=> b!2320286 m!2749077))

(assert (=> b!2320065 d!686165))

(declare-fun d!686167 () Bool)

(assert (=> d!686167 (= (isEmpty!15783 (list!10997 (right!21321 acc!252))) ((_ is Nil!27658) (list!10997 (right!21321 acc!252))))))

(assert (=> d!685961 d!686167))

(assert (=> d!685961 d!685955))

(assert (=> d!685961 d!686105))

(assert (=> b!2320083 d!686079))

(assert (=> b!2320083 d!686081))

(assert (=> d!686009 d!686095))

(assert (=> d!686009 d!685957))

(declare-fun d!686169 () Bool)

(declare-fun lt!860291 () Int)

(assert (=> d!686169 (>= lt!860291 0)))

(declare-fun e!1487206 () Int)

(assert (=> d!686169 (= lt!860291 e!1487206)))

(declare-fun c!368008 () Bool)

(assert (=> d!686169 (= c!368008 ((_ is Nil!27658) (innerList!9123 (xs!12023 (left!20991 acc!252)))))))

(assert (=> d!686169 (= (size!21908 (innerList!9123 (xs!12023 (left!20991 acc!252)))) lt!860291)))

(declare-fun b!2320287 () Bool)

(assert (=> b!2320287 (= e!1487206 0)))

(declare-fun b!2320288 () Bool)

(assert (=> b!2320288 (= e!1487206 (+ 1 (size!21908 (t!207402 (innerList!9123 (xs!12023 (left!20991 acc!252)))))))))

(assert (= (and d!686169 c!368008) b!2320287))

(assert (= (and d!686169 (not c!368008)) b!2320288))

(declare-fun m!2749079 () Bool)

(assert (=> b!2320288 m!2749079))

(assert (=> d!685985 d!686169))

(declare-fun d!686171 () Bool)

(declare-fun lt!860292 () Int)

(assert (=> d!686171 (>= lt!860292 0)))

(declare-fun e!1487207 () Int)

(assert (=> d!686171 (= lt!860292 e!1487207)))

(declare-fun c!368009 () Bool)

(assert (=> d!686171 (= c!368009 ((_ is Nil!27658) (innerList!9123 (xs!12023 (right!21321 acc!252)))))))

(assert (=> d!686171 (= (size!21908 (innerList!9123 (xs!12023 (right!21321 acc!252)))) lt!860292)))

(declare-fun b!2320289 () Bool)

(assert (=> b!2320289 (= e!1487207 0)))

(declare-fun b!2320290 () Bool)

(assert (=> b!2320290 (= e!1487207 (+ 1 (size!21908 (t!207402 (innerList!9123 (xs!12023 (right!21321 acc!252)))))))))

(assert (= (and d!686171 c!368009) b!2320289))

(assert (= (and d!686171 (not c!368009)) b!2320290))

(declare-fun m!2749081 () Bool)

(assert (=> b!2320290 m!2749081))

(assert (=> d!685949 d!686171))

(declare-fun b!2320291 () Bool)

(declare-fun e!1487208 () Bool)

(declare-fun e!1487209 () Bool)

(assert (=> b!2320291 (= e!1487208 e!1487209)))

(declare-fun res!991238 () Bool)

(assert (=> b!2320291 (=> (not res!991238) (not e!1487209))))

(assert (=> b!2320291 (= res!991238 (<= (- 1) (- (height!1323 (left!20991 (right!21321 (right!21321 acc!252)))) (height!1323 (right!21321 (right!21321 (right!21321 acc!252)))))))))

(declare-fun b!2320292 () Bool)

(declare-fun res!991239 () Bool)

(assert (=> b!2320292 (=> (not res!991239) (not e!1487209))))

(assert (=> b!2320292 (= res!991239 (<= (- (height!1323 (left!20991 (right!21321 (right!21321 acc!252)))) (height!1323 (right!21321 (right!21321 (right!21321 acc!252))))) 1))))

(declare-fun d!686173 () Bool)

(declare-fun res!991241 () Bool)

(assert (=> d!686173 (=> res!991241 e!1487208)))

(assert (=> d!686173 (= res!991241 (not ((_ is Node!9063) (right!21321 (right!21321 acc!252)))))))

(assert (=> d!686173 (= (isBalanced!2757 (right!21321 (right!21321 acc!252))) e!1487208)))

(declare-fun b!2320293 () Bool)

(declare-fun res!991243 () Bool)

(assert (=> b!2320293 (=> (not res!991243) (not e!1487209))))

(assert (=> b!2320293 (= res!991243 (isBalanced!2757 (left!20991 (right!21321 (right!21321 acc!252)))))))

(declare-fun b!2320294 () Bool)

(declare-fun res!991242 () Bool)

(assert (=> b!2320294 (=> (not res!991242) (not e!1487209))))

(assert (=> b!2320294 (= res!991242 (isBalanced!2757 (right!21321 (right!21321 (right!21321 acc!252)))))))

(declare-fun b!2320295 () Bool)

(declare-fun res!991240 () Bool)

(assert (=> b!2320295 (=> (not res!991240) (not e!1487209))))

(assert (=> b!2320295 (= res!991240 (not (isEmpty!15781 (left!20991 (right!21321 (right!21321 acc!252))))))))

(declare-fun b!2320296 () Bool)

(assert (=> b!2320296 (= e!1487209 (not (isEmpty!15781 (right!21321 (right!21321 (right!21321 acc!252))))))))

(assert (= (and d!686173 (not res!991241)) b!2320291))

(assert (= (and b!2320291 res!991238) b!2320292))

(assert (= (and b!2320292 res!991239) b!2320293))

(assert (= (and b!2320293 res!991243) b!2320294))

(assert (= (and b!2320294 res!991242) b!2320295))

(assert (= (and b!2320295 res!991240) b!2320296))

(assert (=> b!2320291 m!2749059))

(assert (=> b!2320291 m!2749061))

(declare-fun m!2749083 () Bool)

(assert (=> b!2320296 m!2749083))

(declare-fun m!2749085 () Bool)

(assert (=> b!2320293 m!2749085))

(declare-fun m!2749087 () Bool)

(assert (=> b!2320295 m!2749087))

(assert (=> b!2320292 m!2749059))

(assert (=> b!2320292 m!2749061))

(declare-fun m!2749089 () Bool)

(assert (=> b!2320294 m!2749089))

(assert (=> b!2320085 d!686173))

(declare-fun d!686175 () Bool)

(declare-fun lt!860293 () Int)

(assert (=> d!686175 (>= lt!860293 0)))

(declare-fun e!1487210 () Int)

(assert (=> d!686175 (= lt!860293 e!1487210)))

(declare-fun c!368010 () Bool)

(assert (=> d!686175 (= c!368010 ((_ is Nil!27658) (t!207402 (list!10996 arr!18))))))

(assert (=> d!686175 (= (size!21908 (t!207402 (list!10996 arr!18))) lt!860293)))

(declare-fun b!2320297 () Bool)

(assert (=> b!2320297 (= e!1487210 0)))

(declare-fun b!2320298 () Bool)

(assert (=> b!2320298 (= e!1487210 (+ 1 (size!21908 (t!207402 (t!207402 (list!10996 arr!18))))))))

(assert (= (and d!686175 c!368010) b!2320297))

(assert (= (and d!686175 (not c!368010)) b!2320298))

(declare-fun m!2749091 () Bool)

(assert (=> b!2320298 m!2749091))

(assert (=> b!2320042 d!686175))

(declare-fun b!2320302 () Bool)

(declare-fun e!1487212 () Bool)

(declare-fun lt!860294 () List!27756)

(assert (=> b!2320302 (= e!1487212 (or (not (= (list!10997 (right!21321 acc!252)) Nil!27658)) (= lt!860294 (t!207402 (list!10997 (left!20991 acc!252))))))))

(declare-fun b!2320301 () Bool)

(declare-fun res!991245 () Bool)

(assert (=> b!2320301 (=> (not res!991245) (not e!1487212))))

(assert (=> b!2320301 (= res!991245 (= (size!21908 lt!860294) (+ (size!21908 (t!207402 (list!10997 (left!20991 acc!252)))) (size!21908 (list!10997 (right!21321 acc!252))))))))

(declare-fun b!2320300 () Bool)

(declare-fun e!1487211 () List!27756)

(assert (=> b!2320300 (= e!1487211 (Cons!27658 (h!33059 (t!207402 (list!10997 (left!20991 acc!252)))) (++!6814 (t!207402 (t!207402 (list!10997 (left!20991 acc!252)))) (list!10997 (right!21321 acc!252)))))))

(declare-fun b!2320299 () Bool)

(assert (=> b!2320299 (= e!1487211 (list!10997 (right!21321 acc!252)))))

(declare-fun d!686177 () Bool)

(assert (=> d!686177 e!1487212))

(declare-fun res!991244 () Bool)

(assert (=> d!686177 (=> (not res!991244) (not e!1487212))))

(assert (=> d!686177 (= res!991244 (= (content!3737 lt!860294) ((_ map or) (content!3737 (t!207402 (list!10997 (left!20991 acc!252)))) (content!3737 (list!10997 (right!21321 acc!252))))))))

(assert (=> d!686177 (= lt!860294 e!1487211)))

(declare-fun c!368011 () Bool)

(assert (=> d!686177 (= c!368011 ((_ is Nil!27658) (t!207402 (list!10997 (left!20991 acc!252)))))))

(assert (=> d!686177 (= (++!6814 (t!207402 (list!10997 (left!20991 acc!252))) (list!10997 (right!21321 acc!252))) lt!860294)))

(assert (= (and d!686177 c!368011) b!2320299))

(assert (= (and d!686177 (not c!368011)) b!2320300))

(assert (= (and d!686177 res!991244) b!2320301))

(assert (= (and b!2320301 res!991245) b!2320302))

(declare-fun m!2749093 () Bool)

(assert (=> b!2320301 m!2749093))

(assert (=> b!2320301 m!2749017))

(assert (=> b!2320301 m!2748601))

(assert (=> b!2320301 m!2748637))

(assert (=> b!2320300 m!2748601))

(declare-fun m!2749095 () Bool)

(assert (=> b!2320300 m!2749095))

(declare-fun m!2749097 () Bool)

(assert (=> d!686177 m!2749097))

(declare-fun m!2749099 () Bool)

(assert (=> d!686177 m!2749099))

(assert (=> d!686177 m!2748601))

(assert (=> d!686177 m!2748645))

(assert (=> b!2320007 d!686177))

(declare-fun d!686179 () Bool)

(declare-fun lt!860295 () Int)

(assert (=> d!686179 (>= lt!860295 0)))

(declare-fun e!1487213 () Int)

(assert (=> d!686179 (= lt!860295 e!1487213)))

(declare-fun c!368012 () Bool)

(assert (=> d!686179 (= c!368012 ((_ is Nil!27658) (list!10996 (xs!12023 (left!20991 acc!252)))))))

(assert (=> d!686179 (= (size!21908 (list!10996 (xs!12023 (left!20991 acc!252)))) lt!860295)))

(declare-fun b!2320303 () Bool)

(assert (=> b!2320303 (= e!1487213 0)))

(declare-fun b!2320304 () Bool)

(assert (=> b!2320304 (= e!1487213 (+ 1 (size!21908 (t!207402 (list!10996 (xs!12023 (left!20991 acc!252)))))))))

(assert (= (and d!686179 c!368012) b!2320303))

(assert (= (and d!686179 (not c!368012)) b!2320304))

(declare-fun m!2749101 () Bool)

(assert (=> b!2320304 m!2749101))

(assert (=> b!2320111 d!686179))

(assert (=> b!2320111 d!686163))

(declare-fun b!2320308 () Bool)

(declare-fun e!1487215 () Bool)

(declare-fun lt!860296 () List!27756)

(assert (=> b!2320308 (= e!1487215 (or (not (= (list!10997 (right!21321 (right!21321 acc!252))) Nil!27658)) (= lt!860296 (list!10997 (left!20991 (right!21321 acc!252))))))))

(declare-fun b!2320307 () Bool)

(declare-fun res!991247 () Bool)

(assert (=> b!2320307 (=> (not res!991247) (not e!1487215))))

(assert (=> b!2320307 (= res!991247 (= (size!21908 lt!860296) (+ (size!21908 (list!10997 (left!20991 (right!21321 acc!252)))) (size!21908 (list!10997 (right!21321 (right!21321 acc!252)))))))))

(declare-fun b!2320306 () Bool)

(declare-fun e!1487214 () List!27756)

(assert (=> b!2320306 (= e!1487214 (Cons!27658 (h!33059 (list!10997 (left!20991 (right!21321 acc!252)))) (++!6814 (t!207402 (list!10997 (left!20991 (right!21321 acc!252)))) (list!10997 (right!21321 (right!21321 acc!252))))))))

(declare-fun b!2320305 () Bool)

(assert (=> b!2320305 (= e!1487214 (list!10997 (right!21321 (right!21321 acc!252))))))

(declare-fun d!686181 () Bool)

(assert (=> d!686181 e!1487215))

(declare-fun res!991246 () Bool)

(assert (=> d!686181 (=> (not res!991246) (not e!1487215))))

(assert (=> d!686181 (= res!991246 (= (content!3737 lt!860296) ((_ map or) (content!3737 (list!10997 (left!20991 (right!21321 acc!252)))) (content!3737 (list!10997 (right!21321 (right!21321 acc!252)))))))))

(assert (=> d!686181 (= lt!860296 e!1487214)))

(declare-fun c!368013 () Bool)

(assert (=> d!686181 (= c!368013 ((_ is Nil!27658) (list!10997 (left!20991 (right!21321 acc!252)))))))

(assert (=> d!686181 (= (++!6814 (list!10997 (left!20991 (right!21321 acc!252))) (list!10997 (right!21321 (right!21321 acc!252)))) lt!860296)))

(assert (= (and d!686181 c!368013) b!2320305))

(assert (= (and d!686181 (not c!368013)) b!2320306))

(assert (= (and d!686181 res!991246) b!2320307))

(assert (= (and b!2320307 res!991247) b!2320308))

(declare-fun m!2749103 () Bool)

(assert (=> b!2320307 m!2749103))

(assert (=> b!2320307 m!2748655))

(assert (=> b!2320307 m!2749051))

(assert (=> b!2320307 m!2748657))

(assert (=> b!2320307 m!2749053))

(assert (=> b!2320306 m!2748657))

(declare-fun m!2749105 () Bool)

(assert (=> b!2320306 m!2749105))

(declare-fun m!2749107 () Bool)

(assert (=> d!686181 m!2749107))

(assert (=> d!686181 m!2748655))

(declare-fun m!2749109 () Bool)

(assert (=> d!686181 m!2749109))

(assert (=> d!686181 m!2748657))

(declare-fun m!2749111 () Bool)

(assert (=> d!686181 m!2749111))

(assert (=> b!2320017 d!686181))

(declare-fun b!2320309 () Bool)

(declare-fun e!1487216 () List!27756)

(assert (=> b!2320309 (= e!1487216 Nil!27658)))

(declare-fun b!2320310 () Bool)

(declare-fun e!1487217 () List!27756)

(assert (=> b!2320310 (= e!1487216 e!1487217)))

(declare-fun c!368015 () Bool)

(assert (=> b!2320310 (= c!368015 ((_ is Leaf!13304) (left!20991 (right!21321 acc!252))))))

(declare-fun b!2320312 () Bool)

(assert (=> b!2320312 (= e!1487217 (++!6814 (list!10997 (left!20991 (left!20991 (right!21321 acc!252)))) (list!10997 (right!21321 (left!20991 (right!21321 acc!252))))))))

(declare-fun d!686185 () Bool)

(declare-fun c!368014 () Bool)

(assert (=> d!686185 (= c!368014 ((_ is Empty!9063) (left!20991 (right!21321 acc!252))))))

(assert (=> d!686185 (= (list!10997 (left!20991 (right!21321 acc!252))) e!1487216)))

(declare-fun b!2320311 () Bool)

(assert (=> b!2320311 (= e!1487217 (list!10996 (xs!12023 (left!20991 (right!21321 acc!252)))))))

(assert (= (and d!686185 c!368014) b!2320309))

(assert (= (and d!686185 (not c!368014)) b!2320310))

(assert (= (and b!2320310 c!368015) b!2320311))

(assert (= (and b!2320310 (not c!368015)) b!2320312))

(declare-fun m!2749113 () Bool)

(assert (=> b!2320312 m!2749113))

(declare-fun m!2749115 () Bool)

(assert (=> b!2320312 m!2749115))

(assert (=> b!2320312 m!2749113))

(assert (=> b!2320312 m!2749115))

(declare-fun m!2749117 () Bool)

(assert (=> b!2320312 m!2749117))

(assert (=> b!2320311 m!2749011))

(assert (=> b!2320017 d!686185))

(declare-fun b!2320313 () Bool)

(declare-fun e!1487218 () List!27756)

(assert (=> b!2320313 (= e!1487218 Nil!27658)))

(declare-fun b!2320314 () Bool)

(declare-fun e!1487219 () List!27756)

(assert (=> b!2320314 (= e!1487218 e!1487219)))

(declare-fun c!368017 () Bool)

(assert (=> b!2320314 (= c!368017 ((_ is Leaf!13304) (right!21321 (right!21321 acc!252))))))

(declare-fun b!2320316 () Bool)

(assert (=> b!2320316 (= e!1487219 (++!6814 (list!10997 (left!20991 (right!21321 (right!21321 acc!252)))) (list!10997 (right!21321 (right!21321 (right!21321 acc!252))))))))

(declare-fun d!686187 () Bool)

(declare-fun c!368016 () Bool)

(assert (=> d!686187 (= c!368016 ((_ is Empty!9063) (right!21321 (right!21321 acc!252))))))

(assert (=> d!686187 (= (list!10997 (right!21321 (right!21321 acc!252))) e!1487218)))

(declare-fun b!2320315 () Bool)

(assert (=> b!2320315 (= e!1487219 (list!10996 (xs!12023 (right!21321 (right!21321 acc!252)))))))

(assert (= (and d!686187 c!368016) b!2320313))

(assert (= (and d!686187 (not c!368016)) b!2320314))

(assert (= (and b!2320314 c!368017) b!2320315))

(assert (= (and b!2320314 (not c!368017)) b!2320316))

(declare-fun m!2749119 () Bool)

(assert (=> b!2320316 m!2749119))

(declare-fun m!2749121 () Bool)

(assert (=> b!2320316 m!2749121))

(assert (=> b!2320316 m!2749119))

(assert (=> b!2320316 m!2749121))

(declare-fun m!2749123 () Bool)

(assert (=> b!2320316 m!2749123))

(assert (=> b!2320315 m!2749021))

(assert (=> b!2320017 d!686187))

(assert (=> b!2319998 d!685975))

(assert (=> b!2319998 d!685977))

(assert (=> b!2320002 d!685979))

(assert (=> b!2320002 d!685981))

(declare-fun d!686189 () Bool)

(declare-fun c!368018 () Bool)

(assert (=> d!686189 (= c!368018 ((_ is Node!9063) (left!20991 (right!21321 (left!20991 acc!252)))))))

(declare-fun e!1487220 () Bool)

(assert (=> d!686189 (= (inv!37589 (left!20991 (right!21321 (left!20991 acc!252)))) e!1487220)))

(declare-fun b!2320317 () Bool)

(assert (=> b!2320317 (= e!1487220 (inv!37592 (left!20991 (right!21321 (left!20991 acc!252)))))))

(declare-fun b!2320318 () Bool)

(declare-fun e!1487221 () Bool)

(assert (=> b!2320318 (= e!1487220 e!1487221)))

(declare-fun res!991248 () Bool)

(assert (=> b!2320318 (= res!991248 (not ((_ is Leaf!13304) (left!20991 (right!21321 (left!20991 acc!252))))))))

(assert (=> b!2320318 (=> res!991248 e!1487221)))

(declare-fun b!2320319 () Bool)

(assert (=> b!2320319 (= e!1487221 (inv!37593 (left!20991 (right!21321 (left!20991 acc!252)))))))

(assert (= (and d!686189 c!368018) b!2320317))

(assert (= (and d!686189 (not c!368018)) b!2320318))

(assert (= (and b!2320318 (not res!991248)) b!2320319))

(declare-fun m!2749125 () Bool)

(assert (=> b!2320317 m!2749125))

(declare-fun m!2749127 () Bool)

(assert (=> b!2320319 m!2749127))

(assert (=> b!2320130 d!686189))

(declare-fun d!686193 () Bool)

(declare-fun c!368019 () Bool)

(assert (=> d!686193 (= c!368019 ((_ is Node!9063) (right!21321 (right!21321 (left!20991 acc!252)))))))

(declare-fun e!1487222 () Bool)

(assert (=> d!686193 (= (inv!37589 (right!21321 (right!21321 (left!20991 acc!252)))) e!1487222)))

(declare-fun b!2320320 () Bool)

(assert (=> b!2320320 (= e!1487222 (inv!37592 (right!21321 (right!21321 (left!20991 acc!252)))))))

(declare-fun b!2320321 () Bool)

(declare-fun e!1487223 () Bool)

(assert (=> b!2320321 (= e!1487222 e!1487223)))

(declare-fun res!991249 () Bool)

(assert (=> b!2320321 (= res!991249 (not ((_ is Leaf!13304) (right!21321 (right!21321 (left!20991 acc!252))))))))

(assert (=> b!2320321 (=> res!991249 e!1487223)))

(declare-fun b!2320322 () Bool)

(assert (=> b!2320322 (= e!1487223 (inv!37593 (right!21321 (right!21321 (left!20991 acc!252)))))))

(assert (= (and d!686193 c!368019) b!2320320))

(assert (= (and d!686193 (not c!368019)) b!2320321))

(assert (= (and b!2320321 (not res!991249)) b!2320322))

(declare-fun m!2749129 () Bool)

(assert (=> b!2320320 m!2749129))

(declare-fun m!2749131 () Bool)

(assert (=> b!2320322 m!2749131))

(assert (=> b!2320130 d!686193))

(declare-fun d!686199 () Bool)

(declare-fun lt!860297 () Int)

(assert (=> d!686199 (>= lt!860297 0)))

(declare-fun e!1487225 () Int)

(assert (=> d!686199 (= lt!860297 e!1487225)))

(declare-fun c!368021 () Bool)

(assert (=> d!686199 (= c!368021 ((_ is Nil!27658) (list!10996 (xs!12023 (right!21321 acc!252)))))))

(assert (=> d!686199 (= (size!21908 (list!10996 (xs!12023 (right!21321 acc!252)))) lt!860297)))

(declare-fun b!2320325 () Bool)

(assert (=> b!2320325 (= e!1487225 0)))

(declare-fun b!2320326 () Bool)

(assert (=> b!2320326 (= e!1487225 (+ 1 (size!21908 (t!207402 (list!10996 (xs!12023 (right!21321 acc!252)))))))))

(assert (= (and d!686199 c!368021) b!2320325))

(assert (= (and d!686199 (not c!368021)) b!2320326))

(declare-fun m!2749133 () Bool)

(assert (=> b!2320326 m!2749133))

(assert (=> b!2320115 d!686199))

(assert (=> b!2320115 d!686109))

(declare-fun lt!860298 () List!27756)

(declare-fun b!2320330 () Bool)

(declare-fun e!1487227 () Bool)

(assert (=> b!2320330 (= e!1487227 (or (not (= (list!10996 arr!18) Nil!27658)) (= lt!860298 (t!207402 (t!207402 lt!860232)))))))

(declare-fun b!2320329 () Bool)

(declare-fun res!991251 () Bool)

(assert (=> b!2320329 (=> (not res!991251) (not e!1487227))))

(assert (=> b!2320329 (= res!991251 (= (size!21908 lt!860298) (+ (size!21908 (t!207402 (t!207402 lt!860232))) (size!21908 (list!10996 arr!18)))))))

(declare-fun b!2320328 () Bool)

(declare-fun e!1487226 () List!27756)

(assert (=> b!2320328 (= e!1487226 (Cons!27658 (h!33059 (t!207402 (t!207402 lt!860232))) (++!6814 (t!207402 (t!207402 (t!207402 lt!860232))) (list!10996 arr!18))))))

(declare-fun b!2320327 () Bool)

(assert (=> b!2320327 (= e!1487226 (list!10996 arr!18))))

(declare-fun d!686201 () Bool)

(assert (=> d!686201 e!1487227))

(declare-fun res!991250 () Bool)

(assert (=> d!686201 (=> (not res!991250) (not e!1487227))))

(assert (=> d!686201 (= res!991250 (= (content!3737 lt!860298) ((_ map or) (content!3737 (t!207402 (t!207402 lt!860232))) (content!3737 (list!10996 arr!18)))))))

(assert (=> d!686201 (= lt!860298 e!1487226)))

(declare-fun c!368022 () Bool)

(assert (=> d!686201 (= c!368022 ((_ is Nil!27658) (t!207402 (t!207402 lt!860232))))))

(assert (=> d!686201 (= (++!6814 (t!207402 (t!207402 lt!860232)) (list!10996 arr!18)) lt!860298)))

(assert (= (and d!686201 c!368022) b!2320327))

(assert (= (and d!686201 (not c!368022)) b!2320328))

(assert (= (and d!686201 res!991250) b!2320329))

(assert (= (and b!2320329 res!991251) b!2320330))

(declare-fun m!2749139 () Bool)

(assert (=> b!2320329 m!2749139))

(assert (=> b!2320329 m!2749003))

(assert (=> b!2320329 m!2748495))

(assert (=> b!2320329 m!2748507))

(assert (=> b!2320328 m!2748495))

(declare-fun m!2749141 () Bool)

(assert (=> b!2320328 m!2749141))

(declare-fun m!2749143 () Bool)

(assert (=> d!686201 m!2749143))

(assert (=> d!686201 m!2748977))

(assert (=> d!686201 m!2748495))

(assert (=> d!686201 m!2748589))

(assert (=> b!2320034 d!686201))

(declare-fun d!686205 () Bool)

(declare-fun lt!860300 () Bool)

(assert (=> d!686205 (= lt!860300 (isEmpty!15783 (list!10997 (left!20991 (left!20991 acc!252)))))))

(assert (=> d!686205 (= lt!860300 (= (size!21909 (left!20991 (left!20991 acc!252))) 0))))

(assert (=> d!686205 (= (isEmpty!15781 (left!20991 (left!20991 acc!252))) lt!860300)))

(declare-fun bs!458996 () Bool)

(assert (= bs!458996 d!686205))

(assert (=> bs!458996 m!2748647))

(assert (=> bs!458996 m!2748647))

(declare-fun m!2749145 () Bool)

(assert (=> bs!458996 m!2749145))

(assert (=> bs!458996 m!2748663))

(assert (=> b!2320080 d!686205))

(assert (=> d!686017 d!685973))

(assert (=> d!686017 d!685945))

(declare-fun d!686207 () Bool)

(declare-fun res!991254 () Bool)

(declare-fun e!1487230 () Bool)

(assert (=> d!686207 (=> (not res!991254) (not e!1487230))))

(assert (=> d!686207 (= res!991254 (= (csize!18356 (left!20991 (left!20991 acc!252))) (+ (size!21909 (left!20991 (left!20991 (left!20991 acc!252)))) (size!21909 (right!21321 (left!20991 (left!20991 acc!252)))))))))

(assert (=> d!686207 (= (inv!37592 (left!20991 (left!20991 acc!252))) e!1487230)))

(declare-fun b!2320335 () Bool)

(declare-fun res!991255 () Bool)

(assert (=> b!2320335 (=> (not res!991255) (not e!1487230))))

(assert (=> b!2320335 (= res!991255 (and (not (= (left!20991 (left!20991 (left!20991 acc!252))) Empty!9063)) (not (= (right!21321 (left!20991 (left!20991 acc!252))) Empty!9063))))))

(declare-fun b!2320336 () Bool)

(declare-fun res!991256 () Bool)

(assert (=> b!2320336 (=> (not res!991256) (not e!1487230))))

(assert (=> b!2320336 (= res!991256 (= (cheight!9274 (left!20991 (left!20991 acc!252))) (+ (max!0 (height!1323 (left!20991 (left!20991 (left!20991 acc!252)))) (height!1323 (right!21321 (left!20991 (left!20991 acc!252))))) 1)))))

(declare-fun b!2320337 () Bool)

(assert (=> b!2320337 (= e!1487230 (<= 0 (cheight!9274 (left!20991 (left!20991 acc!252)))))))

(assert (= (and d!686207 res!991254) b!2320335))

(assert (= (and b!2320335 res!991255) b!2320336))

(assert (= (and b!2320336 res!991256) b!2320337))

(declare-fun m!2749161 () Bool)

(assert (=> d!686207 m!2749161))

(declare-fun m!2749163 () Bool)

(assert (=> d!686207 m!2749163))

(declare-fun m!2749165 () Bool)

(assert (=> b!2320336 m!2749165))

(declare-fun m!2749167 () Bool)

(assert (=> b!2320336 m!2749167))

(assert (=> b!2320336 m!2749165))

(assert (=> b!2320336 m!2749167))

(declare-fun m!2749169 () Bool)

(assert (=> b!2320336 m!2749169))

(assert (=> b!2320043 d!686207))

(declare-fun d!686211 () Bool)

(declare-fun c!368026 () Bool)

(assert (=> d!686211 (= c!368026 ((_ is Nil!27658) (t!207402 (list!10996 arr!18))))))

(declare-fun e!1487233 () (InoxSet T!43838))

(assert (=> d!686211 (= (content!3737 (t!207402 (list!10996 arr!18))) e!1487233)))

(declare-fun b!2320342 () Bool)

(assert (=> b!2320342 (= e!1487233 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320343 () Bool)

(assert (=> b!2320343 (= e!1487233 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 (t!207402 (list!10996 arr!18))) true) (content!3737 (t!207402 (t!207402 (list!10996 arr!18))))))))

(assert (= (and d!686211 c!368026) b!2320342))

(assert (= (and d!686211 (not c!368026)) b!2320343))

(declare-fun m!2749171 () Bool)

(assert (=> b!2320343 m!2749171))

(declare-fun m!2749173 () Bool)

(assert (=> b!2320343 m!2749173))

(assert (=> b!2320075 d!686211))

(assert (=> d!686025 d!686199))

(assert (=> d!686025 d!686109))

(declare-fun d!686213 () Bool)

(assert (=> d!686213 (= (inv!37588 (xs!12023 (right!21321 (right!21321 acc!252)))) (<= (size!21908 (innerList!9123 (xs!12023 (right!21321 (right!21321 acc!252))))) 2147483647))))

(declare-fun bs!458997 () Bool)

(assert (= bs!458997 d!686213))

(declare-fun m!2749179 () Bool)

(assert (=> bs!458997 m!2749179))

(assert (=> b!2320141 d!686213))

(declare-fun d!686215 () Bool)

(assert (=> d!686215 (= (inv!37588 (xs!12023 (left!20991 (left!20991 acc!252)))) (<= (size!21908 (innerList!9123 (xs!12023 (left!20991 (left!20991 acc!252))))) 2147483647))))

(declare-fun bs!458998 () Bool)

(assert (= bs!458998 d!686215))

(declare-fun m!2749185 () Bool)

(assert (=> bs!458998 m!2749185))

(assert (=> b!2320124 d!686215))

(declare-fun d!686219 () Bool)

(declare-fun res!991257 () Bool)

(declare-fun e!1487236 () Bool)

(assert (=> d!686219 (=> (not res!991257) (not e!1487236))))

(assert (=> d!686219 (= res!991257 (<= (size!21908 (list!10996 (xs!12023 (left!20991 (left!20991 acc!252))))) 512))))

(assert (=> d!686219 (= (inv!37593 (left!20991 (left!20991 acc!252))) e!1487236)))

(declare-fun b!2320347 () Bool)

(declare-fun res!991258 () Bool)

(assert (=> b!2320347 (=> (not res!991258) (not e!1487236))))

(assert (=> b!2320347 (= res!991258 (= (csize!18357 (left!20991 (left!20991 acc!252))) (size!21908 (list!10996 (xs!12023 (left!20991 (left!20991 acc!252)))))))))

(declare-fun b!2320349 () Bool)

(assert (=> b!2320349 (= e!1487236 (and (> (csize!18357 (left!20991 (left!20991 acc!252))) 0) (<= (csize!18357 (left!20991 (left!20991 acc!252))) 512)))))

(assert (= (and d!686219 res!991257) b!2320347))

(assert (= (and b!2320347 res!991258) b!2320349))

(assert (=> d!686219 m!2748961))

(assert (=> d!686219 m!2748961))

(declare-fun m!2749187 () Bool)

(assert (=> d!686219 m!2749187))

(assert (=> b!2320347 m!2748961))

(assert (=> b!2320347 m!2748961))

(assert (=> b!2320347 m!2749187))

(assert (=> b!2320045 d!686219))

(declare-fun d!686221 () Bool)

(declare-fun lt!860301 () Bool)

(assert (=> d!686221 (= lt!860301 (isEmpty!15783 (list!10997 (left!20991 (right!21321 acc!252)))))))

(assert (=> d!686221 (= lt!860301 (= (size!21909 (left!20991 (right!21321 acc!252))) 0))))

(assert (=> d!686221 (= (isEmpty!15781 (left!20991 (right!21321 acc!252))) lt!860301)))

(declare-fun bs!458999 () Bool)

(assert (= bs!458999 d!686221))

(assert (=> bs!458999 m!2748655))

(assert (=> bs!458999 m!2748655))

(declare-fun m!2749197 () Bool)

(assert (=> bs!458999 m!2749197))

(assert (=> bs!458999 m!2748765))

(assert (=> b!2320086 d!686221))

(declare-fun d!686225 () Bool)

(declare-fun res!991261 () Bool)

(declare-fun e!1487239 () Bool)

(assert (=> d!686225 (=> (not res!991261) (not e!1487239))))

(assert (=> d!686225 (= res!991261 (<= (size!21908 (list!10996 (xs!12023 (right!21321 (left!20991 acc!252))))) 512))))

(assert (=> d!686225 (= (inv!37593 (right!21321 (left!20991 acc!252))) e!1487239)))

(declare-fun b!2320354 () Bool)

(declare-fun res!991262 () Bool)

(assert (=> b!2320354 (=> (not res!991262) (not e!1487239))))

(assert (=> b!2320354 (= res!991262 (= (csize!18357 (right!21321 (left!20991 acc!252))) (size!21908 (list!10996 (xs!12023 (right!21321 (left!20991 acc!252)))))))))

(declare-fun b!2320355 () Bool)

(assert (=> b!2320355 (= e!1487239 (and (> (csize!18357 (right!21321 (left!20991 acc!252))) 0) (<= (csize!18357 (right!21321 (left!20991 acc!252))) 512)))))

(assert (= (and d!686225 res!991261) b!2320354))

(assert (= (and b!2320354 res!991262) b!2320355))

(assert (=> d!686225 m!2748969))

(assert (=> d!686225 m!2748969))

(declare-fun m!2749199 () Bool)

(assert (=> d!686225 m!2749199))

(assert (=> b!2320354 m!2748969))

(assert (=> b!2320354 m!2748969))

(assert (=> b!2320354 m!2749199))

(assert (=> b!2320048 d!686225))

(assert (=> b!2320076 d!686127))

(assert (=> b!2320076 d!686129))

(declare-fun b!2320356 () Bool)

(declare-fun e!1487240 () Bool)

(declare-fun e!1487241 () Bool)

(assert (=> b!2320356 (= e!1487240 e!1487241)))

(declare-fun res!991263 () Bool)

(assert (=> b!2320356 (=> (not res!991263) (not e!1487241))))

(assert (=> b!2320356 (= res!991263 (<= (- 1) (- (height!1323 (left!20991 (left!20991 (left!20991 acc!252)))) (height!1323 (right!21321 (left!20991 (left!20991 acc!252)))))))))

(declare-fun b!2320357 () Bool)

(declare-fun res!991264 () Bool)

(assert (=> b!2320357 (=> (not res!991264) (not e!1487241))))

(assert (=> b!2320357 (= res!991264 (<= (- (height!1323 (left!20991 (left!20991 (left!20991 acc!252)))) (height!1323 (right!21321 (left!20991 (left!20991 acc!252))))) 1))))

(declare-fun d!686227 () Bool)

(declare-fun res!991266 () Bool)

(assert (=> d!686227 (=> res!991266 e!1487240)))

(assert (=> d!686227 (= res!991266 (not ((_ is Node!9063) (left!20991 (left!20991 acc!252)))))))

(assert (=> d!686227 (= (isBalanced!2757 (left!20991 (left!20991 acc!252))) e!1487240)))

(declare-fun b!2320358 () Bool)

(declare-fun res!991268 () Bool)

(assert (=> b!2320358 (=> (not res!991268) (not e!1487241))))

(assert (=> b!2320358 (= res!991268 (isBalanced!2757 (left!20991 (left!20991 (left!20991 acc!252)))))))

(declare-fun b!2320359 () Bool)

(declare-fun res!991267 () Bool)

(assert (=> b!2320359 (=> (not res!991267) (not e!1487241))))

(assert (=> b!2320359 (= res!991267 (isBalanced!2757 (right!21321 (left!20991 (left!20991 acc!252)))))))

(declare-fun b!2320360 () Bool)

(declare-fun res!991265 () Bool)

(assert (=> b!2320360 (=> (not res!991265) (not e!1487241))))

(assert (=> b!2320360 (= res!991265 (not (isEmpty!15781 (left!20991 (left!20991 (left!20991 acc!252))))))))

(declare-fun b!2320361 () Bool)

(assert (=> b!2320361 (= e!1487241 (not (isEmpty!15781 (right!21321 (left!20991 (left!20991 acc!252))))))))

(assert (= (and d!686227 (not res!991266)) b!2320356))

(assert (= (and b!2320356 res!991263) b!2320357))

(assert (= (and b!2320357 res!991264) b!2320358))

(assert (= (and b!2320358 res!991268) b!2320359))

(assert (= (and b!2320359 res!991267) b!2320360))

(assert (= (and b!2320360 res!991265) b!2320361))

(assert (=> b!2320356 m!2749165))

(assert (=> b!2320356 m!2749167))

(declare-fun m!2749211 () Bool)

(assert (=> b!2320361 m!2749211))

(declare-fun m!2749213 () Bool)

(assert (=> b!2320358 m!2749213))

(declare-fun m!2749217 () Bool)

(assert (=> b!2320360 m!2749217))

(assert (=> b!2320357 m!2749165))

(assert (=> b!2320357 m!2749167))

(declare-fun m!2749219 () Bool)

(assert (=> b!2320359 m!2749219))

(assert (=> b!2320078 d!686227))

(declare-fun d!686231 () Bool)

(declare-fun c!368031 () Bool)

(assert (=> d!686231 (= c!368031 ((_ is Nil!27658) lt!860246))))

(declare-fun e!1487243 () (InoxSet T!43838))

(assert (=> d!686231 (= (content!3737 lt!860246) e!1487243)))

(declare-fun b!2320364 () Bool)

(assert (=> b!2320364 (= e!1487243 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320365 () Bool)

(assert (=> b!2320365 (= e!1487243 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 lt!860246) true) (content!3737 (t!207402 lt!860246))))))

(assert (= (and d!686231 c!368031) b!2320364))

(assert (= (and d!686231 (not c!368031)) b!2320365))

(declare-fun m!2749223 () Bool)

(assert (=> b!2320365 m!2749223))

(declare-fun m!2749225 () Bool)

(assert (=> b!2320365 m!2749225))

(assert (=> d!685951 d!686231))

(declare-fun d!686235 () Bool)

(declare-fun c!368033 () Bool)

(assert (=> d!686235 (= c!368033 ((_ is Nil!27658) (list!10997 (left!20991 acc!252))))))

(declare-fun e!1487245 () (InoxSet T!43838))

(assert (=> d!686235 (= (content!3737 (list!10997 (left!20991 acc!252))) e!1487245)))

(declare-fun b!2320368 () Bool)

(assert (=> b!2320368 (= e!1487245 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320369 () Bool)

(assert (=> b!2320369 (= e!1487245 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 (list!10997 (left!20991 acc!252))) true) (content!3737 (t!207402 (list!10997 (left!20991 acc!252))))))))

(assert (= (and d!686235 c!368033) b!2320368))

(assert (= (and d!686235 (not c!368033)) b!2320369))

(declare-fun m!2749231 () Bool)

(assert (=> b!2320369 m!2749231))

(assert (=> b!2320369 m!2749099))

(assert (=> d!685951 d!686235))

(declare-fun d!686239 () Bool)

(declare-fun c!368035 () Bool)

(assert (=> d!686239 (= c!368035 ((_ is Nil!27658) (list!10997 (right!21321 acc!252))))))

(declare-fun e!1487247 () (InoxSet T!43838))

(assert (=> d!686239 (= (content!3737 (list!10997 (right!21321 acc!252))) e!1487247)))

(declare-fun b!2320372 () Bool)

(assert (=> b!2320372 (= e!1487247 ((as const (Array T!43838 Bool)) false))))

(declare-fun b!2320373 () Bool)

(assert (=> b!2320373 (= e!1487247 ((_ map or) (store ((as const (Array T!43838 Bool)) false) (h!33059 (list!10997 (right!21321 acc!252))) true) (content!3737 (t!207402 (list!10997 (right!21321 acc!252))))))))

(assert (= (and d!686239 c!368035) b!2320372))

(assert (= (and d!686239 (not c!368035)) b!2320373))

(declare-fun m!2749237 () Bool)

(assert (=> b!2320373 m!2749237))

(declare-fun m!2749239 () Bool)

(assert (=> b!2320373 m!2749239))

(assert (=> d!685951 d!686239))

(assert (=> d!686021 d!686179))

(assert (=> d!686021 d!686163))

(declare-fun d!686243 () Bool)

(declare-fun c!368037 () Bool)

(assert (=> d!686243 (= c!368037 ((_ is Node!9063) (left!20991 (left!20991 (right!21321 acc!252)))))))

(declare-fun e!1487250 () Bool)

(assert (=> d!686243 (= (inv!37589 (left!20991 (left!20991 (right!21321 acc!252)))) e!1487250)))

(declare-fun b!2320377 () Bool)

(assert (=> b!2320377 (= e!1487250 (inv!37592 (left!20991 (left!20991 (right!21321 acc!252)))))))

(declare-fun b!2320378 () Bool)

(declare-fun e!1487251 () Bool)

(assert (=> b!2320378 (= e!1487250 e!1487251)))

(declare-fun res!991270 () Bool)

(assert (=> b!2320378 (= res!991270 (not ((_ is Leaf!13304) (left!20991 (left!20991 (right!21321 acc!252))))))))

(assert (=> b!2320378 (=> res!991270 e!1487251)))

(declare-fun b!2320379 () Bool)

(assert (=> b!2320379 (= e!1487251 (inv!37593 (left!20991 (left!20991 (right!21321 acc!252)))))))

(assert (= (and d!686243 c!368037) b!2320377))

(assert (= (and d!686243 (not c!368037)) b!2320378))

(assert (= (and b!2320378 (not res!991270)) b!2320379))

(declare-fun m!2749243 () Bool)

(assert (=> b!2320377 m!2749243))

(declare-fun m!2749247 () Bool)

(assert (=> b!2320379 m!2749247))

(assert (=> b!2320137 d!686243))

(declare-fun d!686247 () Bool)

(declare-fun c!368039 () Bool)

(assert (=> d!686247 (= c!368039 ((_ is Node!9063) (right!21321 (left!20991 (right!21321 acc!252)))))))

(declare-fun e!1487253 () Bool)

(assert (=> d!686247 (= (inv!37589 (right!21321 (left!20991 (right!21321 acc!252)))) e!1487253)))

(declare-fun b!2320381 () Bool)

(assert (=> b!2320381 (= e!1487253 (inv!37592 (right!21321 (left!20991 (right!21321 acc!252)))))))

(declare-fun b!2320383 () Bool)

(declare-fun e!1487255 () Bool)

(assert (=> b!2320383 (= e!1487253 e!1487255)))

(declare-fun res!991272 () Bool)

(assert (=> b!2320383 (= res!991272 (not ((_ is Leaf!13304) (right!21321 (left!20991 (right!21321 acc!252))))))))

(assert (=> b!2320383 (=> res!991272 e!1487255)))

(declare-fun b!2320385 () Bool)

(assert (=> b!2320385 (= e!1487255 (inv!37593 (right!21321 (left!20991 (right!21321 acc!252)))))))

(assert (= (and d!686247 c!368039) b!2320381))

(assert (= (and d!686247 (not c!368039)) b!2320383))

(assert (= (and b!2320383 (not res!991272)) b!2320385))

(declare-fun m!2749249 () Bool)

(assert (=> b!2320381 m!2749249))

(declare-fun m!2749251 () Bool)

(assert (=> b!2320385 m!2749251))

(assert (=> b!2320137 d!686247))

(declare-fun d!686249 () Bool)

(declare-fun lt!860303 () Int)

(assert (=> d!686249 (>= lt!860303 0)))

(declare-fun e!1487256 () Int)

(assert (=> d!686249 (= lt!860303 e!1487256)))

(declare-fun c!368040 () Bool)

(assert (=> d!686249 (= c!368040 ((_ is Nil!27658) (t!207402 lt!860245)))))

(assert (=> d!686249 (= (size!21908 (t!207402 lt!860245)) lt!860303)))

(declare-fun b!2320386 () Bool)

(assert (=> b!2320386 (= e!1487256 0)))

(declare-fun b!2320387 () Bool)

(assert (=> b!2320387 (= e!1487256 (+ 1 (size!21908 (t!207402 (t!207402 lt!860245)))))))

(assert (= (and d!686249 c!368040) b!2320386))

(assert (= (and d!686249 (not c!368040)) b!2320387))

(declare-fun m!2749257 () Bool)

(assert (=> b!2320387 m!2749257))

(assert (=> b!2320038 d!686249))

(declare-fun b!2320390 () Bool)

(declare-fun e!1487258 () Bool)

(declare-fun tp!736324 () Bool)

(assert (=> b!2320390 (= e!1487258 (and tp_is_empty!10813 tp!736324))))

(assert (=> b!2320122 (= tp!736293 e!1487258)))

(assert (= (and b!2320122 ((_ is Cons!27658) (t!207402 (innerList!9123 (xs!12023 (right!21321 acc!252)))))) b!2320390))

(declare-fun tp!736326 () Bool)

(declare-fun b!2320391 () Bool)

(declare-fun e!1487260 () Bool)

(declare-fun tp!736327 () Bool)

(assert (=> b!2320391 (= e!1487260 (and (inv!37589 (left!20991 (left!20991 (right!21321 (right!21321 acc!252))))) tp!736326 (inv!37589 (right!21321 (left!20991 (right!21321 (right!21321 acc!252))))) tp!736327))))

(declare-fun b!2320395 () Bool)

(declare-fun e!1487259 () Bool)

(declare-fun tp!736325 () Bool)

(assert (=> b!2320395 (= e!1487259 tp!736325)))

(declare-fun b!2320393 () Bool)

(assert (=> b!2320393 (= e!1487260 (and (inv!37588 (xs!12023 (left!20991 (right!21321 (right!21321 acc!252))))) e!1487259))))

(assert (=> b!2320140 (= tp!736304 (and (inv!37589 (left!20991 (right!21321 (right!21321 acc!252)))) e!1487260))))

(assert (= (and b!2320140 ((_ is Node!9063) (left!20991 (right!21321 (right!21321 acc!252))))) b!2320391))

(assert (= b!2320393 b!2320395))

(assert (= (and b!2320140 ((_ is Leaf!13304) (left!20991 (right!21321 (right!21321 acc!252))))) b!2320393))

(declare-fun m!2749263 () Bool)

(assert (=> b!2320391 m!2749263))

(declare-fun m!2749265 () Bool)

(assert (=> b!2320391 m!2749265))

(declare-fun m!2749267 () Bool)

(assert (=> b!2320393 m!2749267))

(assert (=> b!2320140 m!2748835))

(declare-fun b!2320402 () Bool)

(declare-fun tp!736330 () Bool)

(declare-fun tp!736329 () Bool)

(declare-fun e!1487265 () Bool)

(assert (=> b!2320402 (= e!1487265 (and (inv!37589 (left!20991 (right!21321 (right!21321 (right!21321 acc!252))))) tp!736329 (inv!37589 (right!21321 (right!21321 (right!21321 (right!21321 acc!252))))) tp!736330))))

(declare-fun b!2320404 () Bool)

(declare-fun e!1487264 () Bool)

(declare-fun tp!736328 () Bool)

(assert (=> b!2320404 (= e!1487264 tp!736328)))

(declare-fun b!2320403 () Bool)

(assert (=> b!2320403 (= e!1487265 (and (inv!37588 (xs!12023 (right!21321 (right!21321 (right!21321 acc!252))))) e!1487264))))

(assert (=> b!2320140 (= tp!736305 (and (inv!37589 (right!21321 (right!21321 (right!21321 acc!252)))) e!1487265))))

(assert (= (and b!2320140 ((_ is Node!9063) (right!21321 (right!21321 (right!21321 acc!252))))) b!2320402))

(assert (= b!2320403 b!2320404))

(assert (= (and b!2320140 ((_ is Leaf!13304) (right!21321 (right!21321 (right!21321 acc!252))))) b!2320403))

(declare-fun m!2749269 () Bool)

(assert (=> b!2320402 m!2749269))

(declare-fun m!2749271 () Bool)

(assert (=> b!2320402 m!2749271))

(declare-fun m!2749273 () Bool)

(assert (=> b!2320403 m!2749273))

(assert (=> b!2320140 m!2748837))

(declare-fun b!2320405 () Bool)

(declare-fun e!1487266 () Bool)

(declare-fun tp!736331 () Bool)

(assert (=> b!2320405 (= e!1487266 (and tp_is_empty!10813 tp!736331))))

(assert (=> b!2320132 (= tp!736297 e!1487266)))

(assert (= (and b!2320132 ((_ is Cons!27658) (innerList!9123 (xs!12023 (right!21321 (left!20991 acc!252)))))) b!2320405))

(declare-fun b!2320406 () Bool)

(declare-fun e!1487267 () Bool)

(declare-fun tp!736332 () Bool)

(assert (=> b!2320406 (= e!1487267 (and tp_is_empty!10813 tp!736332))))

(assert (=> b!2320139 (= tp!736300 e!1487267)))

(assert (= (and b!2320139 ((_ is Cons!27658) (innerList!9123 (xs!12023 (left!20991 (right!21321 acc!252)))))) b!2320406))

(declare-fun e!1487269 () Bool)

(declare-fun tp!736335 () Bool)

(declare-fun b!2320407 () Bool)

(declare-fun tp!736334 () Bool)

(assert (=> b!2320407 (= e!1487269 (and (inv!37589 (left!20991 (left!20991 (left!20991 (left!20991 acc!252))))) tp!736334 (inv!37589 (right!21321 (left!20991 (left!20991 (left!20991 acc!252))))) tp!736335))))

(declare-fun b!2320409 () Bool)

(declare-fun e!1487268 () Bool)

(declare-fun tp!736333 () Bool)

(assert (=> b!2320409 (= e!1487268 tp!736333)))

(declare-fun b!2320408 () Bool)

(assert (=> b!2320408 (= e!1487269 (and (inv!37588 (xs!12023 (left!20991 (left!20991 (left!20991 acc!252))))) e!1487268))))

(assert (=> b!2320123 (= tp!736295 (and (inv!37589 (left!20991 (left!20991 (left!20991 acc!252)))) e!1487269))))

(assert (= (and b!2320123 ((_ is Node!9063) (left!20991 (left!20991 (left!20991 acc!252))))) b!2320407))

(assert (= b!2320408 b!2320409))

(assert (= (and b!2320123 ((_ is Leaf!13304) (left!20991 (left!20991 (left!20991 acc!252))))) b!2320408))

(declare-fun m!2749283 () Bool)

(assert (=> b!2320407 m!2749283))

(declare-fun m!2749287 () Bool)

(assert (=> b!2320407 m!2749287))

(declare-fun m!2749289 () Bool)

(assert (=> b!2320408 m!2749289))

(assert (=> b!2320123 m!2748801))

(declare-fun tp!736337 () Bool)

(declare-fun b!2320410 () Bool)

(declare-fun tp!736338 () Bool)

(declare-fun e!1487271 () Bool)

(assert (=> b!2320410 (= e!1487271 (and (inv!37589 (left!20991 (right!21321 (left!20991 (left!20991 acc!252))))) tp!736337 (inv!37589 (right!21321 (right!21321 (left!20991 (left!20991 acc!252))))) tp!736338))))

(declare-fun b!2320412 () Bool)

(declare-fun e!1487270 () Bool)

(declare-fun tp!736336 () Bool)

(assert (=> b!2320412 (= e!1487270 tp!736336)))

(declare-fun b!2320411 () Bool)

(assert (=> b!2320411 (= e!1487271 (and (inv!37588 (xs!12023 (right!21321 (left!20991 (left!20991 acc!252))))) e!1487270))))

(assert (=> b!2320123 (= tp!736296 (and (inv!37589 (right!21321 (left!20991 (left!20991 acc!252)))) e!1487271))))

(assert (= (and b!2320123 ((_ is Node!9063) (right!21321 (left!20991 (left!20991 acc!252))))) b!2320410))

(assert (= b!2320411 b!2320412))

(assert (= (and b!2320123 ((_ is Leaf!13304) (right!21321 (left!20991 (left!20991 acc!252))))) b!2320411))

(declare-fun m!2749293 () Bool)

(assert (=> b!2320410 m!2749293))

(declare-fun m!2749295 () Bool)

(assert (=> b!2320410 m!2749295))

(declare-fun m!2749297 () Bool)

(assert (=> b!2320411 m!2749297))

(assert (=> b!2320123 m!2748803))

(declare-fun b!2320413 () Bool)

(declare-fun e!1487272 () Bool)

(declare-fun tp!736339 () Bool)

(assert (=> b!2320413 (= e!1487272 (and tp_is_empty!10813 tp!736339))))

(assert (=> b!2320143 (= tp!736306 e!1487272)))

(assert (= (and b!2320143 ((_ is Cons!27658) (t!207402 (innerList!9123 (xs!12023 (left!20991 acc!252)))))) b!2320413))

(declare-fun b!2320414 () Bool)

(declare-fun e!1487273 () Bool)

(declare-fun tp!736340 () Bool)

(assert (=> b!2320414 (= e!1487273 (and tp_is_empty!10813 tp!736340))))

(assert (=> b!2320142 (= tp!736303 e!1487273)))

(assert (= (and b!2320142 ((_ is Cons!27658) (innerList!9123 (xs!12023 (right!21321 (right!21321 acc!252)))))) b!2320414))

(declare-fun b!2320415 () Bool)

(declare-fun e!1487274 () Bool)

(declare-fun tp!736341 () Bool)

(assert (=> b!2320415 (= e!1487274 (and tp_is_empty!10813 tp!736341))))

(assert (=> b!2320121 (= tp!736292 e!1487274)))

(assert (= (and b!2320121 ((_ is Cons!27658) (t!207402 (t!207402 (innerList!9123 arr!18))))) b!2320415))

(declare-fun b!2320416 () Bool)

(declare-fun e!1487275 () Bool)

(declare-fun tp!736342 () Bool)

(assert (=> b!2320416 (= e!1487275 (and tp_is_empty!10813 tp!736342))))

(assert (=> b!2320125 (= tp!736294 e!1487275)))

(assert (= (and b!2320125 ((_ is Cons!27658) (innerList!9123 (xs!12023 (left!20991 (left!20991 acc!252)))))) b!2320416))

(declare-fun b!2320417 () Bool)

(declare-fun e!1487276 () Bool)

(declare-fun tp!736343 () Bool)

(assert (=> b!2320417 (= e!1487276 (and tp_is_empty!10813 tp!736343))))

(assert (=> b!2320144 (= tp!736307 e!1487276)))

(assert (= (and b!2320144 ((_ is Cons!27658) (t!207402 (t!207402 (innerList!9123 (xs!12023 acc!252)))))) b!2320417))

(declare-fun b!2320418 () Bool)

(declare-fun e!1487278 () Bool)

(declare-fun tp!736346 () Bool)

(declare-fun tp!736345 () Bool)

(assert (=> b!2320418 (= e!1487278 (and (inv!37589 (left!20991 (left!20991 (right!21321 (left!20991 acc!252))))) tp!736345 (inv!37589 (right!21321 (left!20991 (right!21321 (left!20991 acc!252))))) tp!736346))))

(declare-fun b!2320420 () Bool)

(declare-fun e!1487277 () Bool)

(declare-fun tp!736344 () Bool)

(assert (=> b!2320420 (= e!1487277 tp!736344)))

(declare-fun b!2320419 () Bool)

(assert (=> b!2320419 (= e!1487278 (and (inv!37588 (xs!12023 (left!20991 (right!21321 (left!20991 acc!252))))) e!1487277))))

(assert (=> b!2320130 (= tp!736298 (and (inv!37589 (left!20991 (right!21321 (left!20991 acc!252)))) e!1487278))))

(assert (= (and b!2320130 ((_ is Node!9063) (left!20991 (right!21321 (left!20991 acc!252))))) b!2320418))

(assert (= b!2320419 b!2320420))

(assert (= (and b!2320130 ((_ is Leaf!13304) (left!20991 (right!21321 (left!20991 acc!252))))) b!2320419))

(declare-fun m!2749299 () Bool)

(assert (=> b!2320418 m!2749299))

(declare-fun m!2749301 () Bool)

(assert (=> b!2320418 m!2749301))

(declare-fun m!2749303 () Bool)

(assert (=> b!2320419 m!2749303))

(assert (=> b!2320130 m!2748815))

(declare-fun b!2320421 () Bool)

(declare-fun e!1487280 () Bool)

(declare-fun tp!736349 () Bool)

(declare-fun tp!736348 () Bool)

(assert (=> b!2320421 (= e!1487280 (and (inv!37589 (left!20991 (right!21321 (right!21321 (left!20991 acc!252))))) tp!736348 (inv!37589 (right!21321 (right!21321 (right!21321 (left!20991 acc!252))))) tp!736349))))

(declare-fun b!2320423 () Bool)

(declare-fun e!1487279 () Bool)

(declare-fun tp!736347 () Bool)

(assert (=> b!2320423 (= e!1487279 tp!736347)))

(declare-fun b!2320422 () Bool)

(assert (=> b!2320422 (= e!1487280 (and (inv!37588 (xs!12023 (right!21321 (right!21321 (left!20991 acc!252))))) e!1487279))))

(assert (=> b!2320130 (= tp!736299 (and (inv!37589 (right!21321 (right!21321 (left!20991 acc!252)))) e!1487280))))

(assert (= (and b!2320130 ((_ is Node!9063) (right!21321 (right!21321 (left!20991 acc!252))))) b!2320421))

(assert (= b!2320422 b!2320423))

(assert (= (and b!2320130 ((_ is Leaf!13304) (right!21321 (right!21321 (left!20991 acc!252))))) b!2320422))

(declare-fun m!2749305 () Bool)

(assert (=> b!2320421 m!2749305))

(declare-fun m!2749307 () Bool)

(assert (=> b!2320421 m!2749307))

(declare-fun m!2749309 () Bool)

(assert (=> b!2320422 m!2749309))

(assert (=> b!2320130 m!2748817))

(declare-fun e!1487282 () Bool)

(declare-fun tp!736351 () Bool)

(declare-fun tp!736352 () Bool)

(declare-fun b!2320424 () Bool)

(assert (=> b!2320424 (= e!1487282 (and (inv!37589 (left!20991 (left!20991 (left!20991 (right!21321 acc!252))))) tp!736351 (inv!37589 (right!21321 (left!20991 (left!20991 (right!21321 acc!252))))) tp!736352))))

(declare-fun b!2320426 () Bool)

(declare-fun e!1487281 () Bool)

(declare-fun tp!736350 () Bool)

(assert (=> b!2320426 (= e!1487281 tp!736350)))

(declare-fun b!2320425 () Bool)

(assert (=> b!2320425 (= e!1487282 (and (inv!37588 (xs!12023 (left!20991 (left!20991 (right!21321 acc!252))))) e!1487281))))

(assert (=> b!2320137 (= tp!736301 (and (inv!37589 (left!20991 (left!20991 (right!21321 acc!252)))) e!1487282))))

(assert (= (and b!2320137 ((_ is Node!9063) (left!20991 (left!20991 (right!21321 acc!252))))) b!2320424))

(assert (= b!2320425 b!2320426))

(assert (= (and b!2320137 ((_ is Leaf!13304) (left!20991 (left!20991 (right!21321 acc!252))))) b!2320425))

(declare-fun m!2749311 () Bool)

(assert (=> b!2320424 m!2749311))

(declare-fun m!2749313 () Bool)

(assert (=> b!2320424 m!2749313))

(declare-fun m!2749315 () Bool)

(assert (=> b!2320425 m!2749315))

(assert (=> b!2320137 m!2748827))

(declare-fun e!1487284 () Bool)

(declare-fun b!2320427 () Bool)

(declare-fun tp!736355 () Bool)

(declare-fun tp!736354 () Bool)

(assert (=> b!2320427 (= e!1487284 (and (inv!37589 (left!20991 (right!21321 (left!20991 (right!21321 acc!252))))) tp!736354 (inv!37589 (right!21321 (right!21321 (left!20991 (right!21321 acc!252))))) tp!736355))))

(declare-fun b!2320429 () Bool)

(declare-fun e!1487283 () Bool)

(declare-fun tp!736353 () Bool)

(assert (=> b!2320429 (= e!1487283 tp!736353)))

(declare-fun b!2320428 () Bool)

(assert (=> b!2320428 (= e!1487284 (and (inv!37588 (xs!12023 (right!21321 (left!20991 (right!21321 acc!252))))) e!1487283))))

(assert (=> b!2320137 (= tp!736302 (and (inv!37589 (right!21321 (left!20991 (right!21321 acc!252)))) e!1487284))))

(assert (= (and b!2320137 ((_ is Node!9063) (right!21321 (left!20991 (right!21321 acc!252))))) b!2320427))

(assert (= b!2320428 b!2320429))

(assert (= (and b!2320137 ((_ is Leaf!13304) (right!21321 (left!20991 (right!21321 acc!252))))) b!2320428))

(declare-fun m!2749317 () Bool)

(assert (=> b!2320427 m!2749317))

(declare-fun m!2749319 () Bool)

(assert (=> b!2320427 m!2749319))

(declare-fun m!2749321 () Bool)

(assert (=> b!2320428 m!2749321))

(assert (=> b!2320137 m!2748829))

(check-sat (not b!2320262) (not b!2320428) (not b!2320357) (not b!2320298) (not d!686225) (not b!2320315) (not b!2320417) (not b!2320294) (not b!2320288) (not b!2320405) (not b!2320140) (not b!2320223) (not b!2320419) (not b!2320273) (not d!686111) (not b!2320307) (not b!2320421) (not b!2320281) (not b!2320326) (not d!686215) (not b!2320240) (not b!2320422) (not b!2320407) (not b!2320304) (not b!2320319) (not b!2320231) (not b!2320410) (not b!2320358) (not b!2320233) (not b!2320427) (not b!2320306) (not b!2320280) (not b!2320385) (not d!686151) (not d!686205) (not b!2320316) (not b!2320415) (not b!2320373) (not d!686219) (not b!2320413) (not b!2320239) (not b!2320359) (not d!686213) (not d!686157) (not d!686105) (not d!686207) (not b!2320311) (not b!2320271) (not b!2320328) (not b!2320264) (not b!2320270) (not b!2320406) (not b!2320390) (not d!686149) (not b!2320244) (not b!2320300) (not b!2320387) (not b!2320343) (not b!2320295) (not b!2320301) (not b!2320137) (not b!2320425) (not b!2320423) (not b!2320320) (not d!686097) (not b!2320336) tp_is_empty!10813 (not b!2320235) (not d!686201) (not b!2320237) (not d!686177) (not b!2320329) (not b!2320354) (not d!686077) (not b!2320278) (not b!2320361) (not b!2320251) (not d!686103) (not b!2320426) (not b!2320290) (not b!2320408) (not b!2320226) (not b!2320420) (not b!2320229) (not b!2320282) (not b!2320347) (not b!2320424) (not b!2320248) (not b!2320360) (not b!2320292) (not b!2320412) (not b!2320322) (not b!2320265) (not b!2320418) (not b!2320312) (not b!2320403) (not b!2320238) (not d!686083) (not b!2320284) (not d!686155) (not b!2320416) (not b!2320409) (not b!2320259) (not b!2320293) (not d!686221) (not b!2320268) (not b!2320227) (not b!2320241) (not b!2320218) (not b!2320275) (not b!2320255) (not d!686147) (not b!2320391) (not b!2320123) (not b!2320253) (not b!2320429) (not b!2320317) (not b!2320267) (not b!2320296) (not b!2320411) (not b!2320286) (not b!2320277) (not b!2320393) (not b!2320130) (not b!2320379) (not b!2320242) (not b!2320279) (not d!686121) (not b!2320395) (not b!2320377) (not d!686181) (not d!686153) (not b!2320256) (not b!2320261) (not b!2320365) (not b!2320222) (not b!2320217) (not b!2320356) (not b!2320246) (not b!2320291) (not d!686113) (not b!2320404) (not b!2320414) (not d!686131) (not d!686123) (not b!2320381) (not b!2320369) (not b!2320402))
(check-sat)
