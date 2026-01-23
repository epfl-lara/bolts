; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200608 () Bool)

(assert start!200608)

(declare-fun b_free!56807 () Bool)

(declare-fun b_next!57511 () Bool)

(assert (=> start!200608 (= b_free!56807 (not b_next!57511))))

(declare-fun tp!604716 () Bool)

(declare-fun b_and!162595 () Bool)

(assert (=> start!200608 (= tp!604716 b_and!162595)))

(declare-fun res!892827 () Bool)

(declare-fun e!1285947 () Bool)

(assert (=> start!200608 (=> (not res!892827) (not e!1285947))))

(declare-datatypes ((T!35934 0))(
  ( (T!35935 (val!6466 Int)) )
))
(declare-datatypes ((List!22349 0))(
  ( (Nil!22267) (Cons!22267 (h!27668 T!35934) (t!191250 List!22349)) )
))
(declare-datatypes ((IArray!14923 0))(
  ( (IArray!14924 (innerList!7519 List!22349)) )
))
(declare-datatypes ((Conc!7459 0))(
  ( (Node!7459 (left!17725 Conc!7459) (right!18055 Conc!7459) (csize!15148 Int) (cheight!7670 Int)) (Leaf!10930 (xs!10361 IArray!14923) (csize!15149 Int)) (Empty!7459) )
))
(declare-fun t!4319 () Conc!7459)

(declare-fun isBalanced!2337 (Conc!7459) Bool)

(assert (=> start!200608 (= res!892827 (isBalanced!2337 t!4319))))

(assert (=> start!200608 e!1285947))

(declare-fun e!1285945 () Bool)

(declare-fun inv!29527 (Conc!7459) Bool)

(assert (=> start!200608 (and (inv!29527 t!4319) e!1285945)))

(assert (=> start!200608 tp!604716))

(declare-fun b!2036260 () Bool)

(declare-fun tp!604715 () Bool)

(declare-fun tp!604713 () Bool)

(assert (=> b!2036260 (= e!1285945 (and (inv!29527 (left!17725 t!4319)) tp!604715 (inv!29527 (right!18055 t!4319)) tp!604713))))

(declare-fun b!2036261 () Bool)

(declare-fun res!892826 () Bool)

(assert (=> b!2036261 (=> (not res!892826) (not e!1285947))))

(get-info :version)

(assert (=> b!2036261 (= res!892826 ((_ is Empty!7459) t!4319))))

(declare-fun b!2036262 () Bool)

(declare-fun e!1285946 () Bool)

(declare-fun inv!29528 (IArray!14923) Bool)

(assert (=> b!2036262 (= e!1285945 (and (inv!29528 (xs!10361 t!4319)) e!1285946))))

(declare-fun b!2036263 () Bool)

(declare-fun lt!764794 () List!22349)

(declare-fun p!1489 () Int)

(declare-fun filter!456 (List!22349 Int) List!22349)

(assert (=> b!2036263 (= e!1285947 (not (= lt!764794 (filter!456 lt!764794 p!1489))))))

(declare-fun list!9117 (Conc!7459) List!22349)

(assert (=> b!2036263 (= lt!764794 (list!9117 t!4319))))

(declare-fun b!2036264 () Bool)

(declare-fun tp!604714 () Bool)

(assert (=> b!2036264 (= e!1285946 tp!604714)))

(assert (= (and start!200608 res!892827) b!2036261))

(assert (= (and b!2036261 res!892826) b!2036263))

(assert (= (and start!200608 ((_ is Node!7459) t!4319)) b!2036260))

(assert (= b!2036262 b!2036264))

(assert (= (and start!200608 ((_ is Leaf!10930) t!4319)) b!2036262))

(declare-fun m!2479003 () Bool)

(assert (=> start!200608 m!2479003))

(declare-fun m!2479005 () Bool)

(assert (=> start!200608 m!2479005))

(declare-fun m!2479007 () Bool)

(assert (=> b!2036260 m!2479007))

(declare-fun m!2479009 () Bool)

(assert (=> b!2036260 m!2479009))

(declare-fun m!2479011 () Bool)

(assert (=> b!2036262 m!2479011))

(declare-fun m!2479013 () Bool)

(assert (=> b!2036263 m!2479013))

(declare-fun m!2479015 () Bool)

(assert (=> b!2036263 m!2479015))

(check-sat b_and!162595 (not b!2036262) (not b!2036260) (not b!2036264) (not b!2036263) (not b_next!57511) (not start!200608))
(check-sat b_and!162595 (not b_next!57511))
(get-model)

(declare-fun d!623217 () Bool)

(declare-fun size!17404 (List!22349) Int)

(assert (=> d!623217 (= (inv!29528 (xs!10361 t!4319)) (<= (size!17404 (innerList!7519 (xs!10361 t!4319))) 2147483647))))

(declare-fun bs!421341 () Bool)

(assert (= bs!421341 d!623217))

(declare-fun m!2479017 () Bool)

(assert (=> bs!421341 m!2479017))

(assert (=> b!2036262 d!623217))

(declare-fun b!2036301 () Bool)

(declare-fun res!892848 () Bool)

(declare-fun e!1285966 () Bool)

(assert (=> b!2036301 (=> (not res!892848) (not e!1285966))))

(assert (=> b!2036301 (= res!892848 (isBalanced!2337 (right!18055 t!4319)))))

(declare-fun b!2036302 () Bool)

(declare-fun res!892852 () Bool)

(assert (=> b!2036302 (=> (not res!892852) (not e!1285966))))

(assert (=> b!2036302 (= res!892852 (isBalanced!2337 (left!17725 t!4319)))))

(declare-fun b!2036303 () Bool)

(declare-fun res!892851 () Bool)

(assert (=> b!2036303 (=> (not res!892851) (not e!1285966))))

(declare-fun isEmpty!13916 (Conc!7459) Bool)

(assert (=> b!2036303 (= res!892851 (not (isEmpty!13916 (left!17725 t!4319))))))

(declare-fun d!623219 () Bool)

(declare-fun res!892849 () Bool)

(declare-fun e!1285967 () Bool)

(assert (=> d!623219 (=> res!892849 e!1285967)))

(assert (=> d!623219 (= res!892849 (not ((_ is Node!7459) t!4319)))))

(assert (=> d!623219 (= (isBalanced!2337 t!4319) e!1285967)))

(declare-fun b!2036304 () Bool)

(assert (=> b!2036304 (= e!1285967 e!1285966)))

(declare-fun res!892853 () Bool)

(assert (=> b!2036304 (=> (not res!892853) (not e!1285966))))

(declare-fun height!1158 (Conc!7459) Int)

(assert (=> b!2036304 (= res!892853 (<= (- 1) (- (height!1158 (left!17725 t!4319)) (height!1158 (right!18055 t!4319)))))))

(declare-fun b!2036305 () Bool)

(declare-fun res!892850 () Bool)

(assert (=> b!2036305 (=> (not res!892850) (not e!1285966))))

(assert (=> b!2036305 (= res!892850 (<= (- (height!1158 (left!17725 t!4319)) (height!1158 (right!18055 t!4319))) 1))))

(declare-fun b!2036306 () Bool)

(assert (=> b!2036306 (= e!1285966 (not (isEmpty!13916 (right!18055 t!4319))))))

(assert (= (and d!623219 (not res!892849)) b!2036304))

(assert (= (and b!2036304 res!892853) b!2036305))

(assert (= (and b!2036305 res!892850) b!2036302))

(assert (= (and b!2036302 res!892852) b!2036301))

(assert (= (and b!2036301 res!892848) b!2036303))

(assert (= (and b!2036303 res!892851) b!2036306))

(declare-fun m!2479027 () Bool)

(assert (=> b!2036302 m!2479027))

(declare-fun m!2479029 () Bool)

(assert (=> b!2036301 m!2479029))

(declare-fun m!2479031 () Bool)

(assert (=> b!2036305 m!2479031))

(declare-fun m!2479033 () Bool)

(assert (=> b!2036305 m!2479033))

(declare-fun m!2479035 () Bool)

(assert (=> b!2036303 m!2479035))

(declare-fun m!2479037 () Bool)

(assert (=> b!2036306 m!2479037))

(assert (=> b!2036304 m!2479031))

(assert (=> b!2036304 m!2479033))

(assert (=> start!200608 d!623219))

(declare-fun d!623225 () Bool)

(declare-fun c!329776 () Bool)

(assert (=> d!623225 (= c!329776 ((_ is Node!7459) t!4319))))

(declare-fun e!1285975 () Bool)

(assert (=> d!623225 (= (inv!29527 t!4319) e!1285975)))

(declare-fun b!2036319 () Bool)

(declare-fun inv!29531 (Conc!7459) Bool)

(assert (=> b!2036319 (= e!1285975 (inv!29531 t!4319))))

(declare-fun b!2036320 () Bool)

(declare-fun e!1285976 () Bool)

(assert (=> b!2036320 (= e!1285975 e!1285976)))

(declare-fun res!892858 () Bool)

(assert (=> b!2036320 (= res!892858 (not ((_ is Leaf!10930) t!4319)))))

(assert (=> b!2036320 (=> res!892858 e!1285976)))

(declare-fun b!2036321 () Bool)

(declare-fun inv!29532 (Conc!7459) Bool)

(assert (=> b!2036321 (= e!1285976 (inv!29532 t!4319))))

(assert (= (and d!623225 c!329776) b!2036319))

(assert (= (and d!623225 (not c!329776)) b!2036320))

(assert (= (and b!2036320 (not res!892858)) b!2036321))

(declare-fun m!2479053 () Bool)

(assert (=> b!2036319 m!2479053))

(declare-fun m!2479055 () Bool)

(assert (=> b!2036321 m!2479055))

(assert (=> start!200608 d!623225))

(declare-fun d!623229 () Bool)

(declare-fun c!329777 () Bool)

(assert (=> d!623229 (= c!329777 ((_ is Node!7459) (left!17725 t!4319)))))

(declare-fun e!1285977 () Bool)

(assert (=> d!623229 (= (inv!29527 (left!17725 t!4319)) e!1285977)))

(declare-fun b!2036322 () Bool)

(assert (=> b!2036322 (= e!1285977 (inv!29531 (left!17725 t!4319)))))

(declare-fun b!2036323 () Bool)

(declare-fun e!1285978 () Bool)

(assert (=> b!2036323 (= e!1285977 e!1285978)))

(declare-fun res!892859 () Bool)

(assert (=> b!2036323 (= res!892859 (not ((_ is Leaf!10930) (left!17725 t!4319))))))

(assert (=> b!2036323 (=> res!892859 e!1285978)))

(declare-fun b!2036324 () Bool)

(assert (=> b!2036324 (= e!1285978 (inv!29532 (left!17725 t!4319)))))

(assert (= (and d!623229 c!329777) b!2036322))

(assert (= (and d!623229 (not c!329777)) b!2036323))

(assert (= (and b!2036323 (not res!892859)) b!2036324))

(declare-fun m!2479057 () Bool)

(assert (=> b!2036322 m!2479057))

(declare-fun m!2479059 () Bool)

(assert (=> b!2036324 m!2479059))

(assert (=> b!2036260 d!623229))

(declare-fun d!623231 () Bool)

(declare-fun c!329780 () Bool)

(assert (=> d!623231 (= c!329780 ((_ is Node!7459) (right!18055 t!4319)))))

(declare-fun e!1285981 () Bool)

(assert (=> d!623231 (= (inv!29527 (right!18055 t!4319)) e!1285981)))

(declare-fun b!2036329 () Bool)

(assert (=> b!2036329 (= e!1285981 (inv!29531 (right!18055 t!4319)))))

(declare-fun b!2036330 () Bool)

(declare-fun e!1285982 () Bool)

(assert (=> b!2036330 (= e!1285981 e!1285982)))

(declare-fun res!892860 () Bool)

(assert (=> b!2036330 (= res!892860 (not ((_ is Leaf!10930) (right!18055 t!4319))))))

(assert (=> b!2036330 (=> res!892860 e!1285982)))

(declare-fun b!2036331 () Bool)

(assert (=> b!2036331 (= e!1285982 (inv!29532 (right!18055 t!4319)))))

(assert (= (and d!623231 c!329780) b!2036329))

(assert (= (and d!623231 (not c!329780)) b!2036330))

(assert (= (and b!2036330 (not res!892860)) b!2036331))

(declare-fun m!2479061 () Bool)

(assert (=> b!2036329 m!2479061))

(declare-fun m!2479063 () Bool)

(assert (=> b!2036331 m!2479063))

(assert (=> b!2036260 d!623231))

(declare-fun b!2036364 () Bool)

(declare-fun res!892878 () Bool)

(declare-fun e!1285999 () Bool)

(assert (=> b!2036364 (=> (not res!892878) (not e!1285999))))

(declare-fun lt!764800 () List!22349)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3301 (List!22349) (InoxSet T!35934))

(assert (=> b!2036364 (= res!892878 (= ((_ map implies) (content!3301 lt!764800) (content!3301 lt!764794)) ((as const (InoxSet T!35934)) true)))))

(declare-fun b!2036365 () Bool)

(declare-fun e!1285998 () List!22349)

(declare-fun call!124932 () List!22349)

(assert (=> b!2036365 (= e!1285998 call!124932)))

(declare-fun b!2036366 () Bool)

(declare-fun e!1285997 () List!22349)

(assert (=> b!2036366 (= e!1285997 Nil!22267)))

(declare-fun b!2036367 () Bool)

(assert (=> b!2036367 (= e!1285998 (Cons!22267 (h!27668 lt!764794) call!124932))))

(declare-fun b!2036368 () Bool)

(assert (=> b!2036368 (= e!1285997 e!1285998)))

(declare-fun c!329790 () Bool)

(declare-fun dynLambda!11098 (Int T!35934) Bool)

(assert (=> b!2036368 (= c!329790 (dynLambda!11098 p!1489 (h!27668 lt!764794)))))

(declare-fun b!2036369 () Bool)

(declare-fun forall!4748 (List!22349 Int) Bool)

(assert (=> b!2036369 (= e!1285999 (forall!4748 lt!764800 p!1489))))

(declare-fun d!623233 () Bool)

(assert (=> d!623233 e!1285999))

(declare-fun res!892877 () Bool)

(assert (=> d!623233 (=> (not res!892877) (not e!1285999))))

(assert (=> d!623233 (= res!892877 (<= (size!17404 lt!764800) (size!17404 lt!764794)))))

(assert (=> d!623233 (= lt!764800 e!1285997)))

(declare-fun c!329789 () Bool)

(assert (=> d!623233 (= c!329789 ((_ is Nil!22267) lt!764794))))

(assert (=> d!623233 (= (filter!456 lt!764794 p!1489) lt!764800)))

(declare-fun bm!124927 () Bool)

(assert (=> bm!124927 (= call!124932 (filter!456 (t!191250 lt!764794) p!1489))))

(assert (= (and d!623233 c!329789) b!2036366))

(assert (= (and d!623233 (not c!329789)) b!2036368))

(assert (= (and b!2036368 c!329790) b!2036367))

(assert (= (and b!2036368 (not c!329790)) b!2036365))

(assert (= (or b!2036367 b!2036365) bm!124927))

(assert (= (and d!623233 res!892877) b!2036364))

(assert (= (and b!2036364 res!892878) b!2036369))

(declare-fun b_lambda!68751 () Bool)

(assert (=> (not b_lambda!68751) (not b!2036368)))

(declare-fun t!191257 () Bool)

(declare-fun tb!128831 () Bool)

(assert (=> (and start!200608 (= p!1489 p!1489) t!191257) tb!128831))

(declare-fun result!154094 () Bool)

(assert (=> tb!128831 (= result!154094 true)))

(assert (=> b!2036368 t!191257))

(declare-fun b_and!162599 () Bool)

(assert (= b_and!162595 (and (=> t!191257 result!154094) b_and!162599)))

(declare-fun m!2479073 () Bool)

(assert (=> bm!124927 m!2479073))

(declare-fun m!2479075 () Bool)

(assert (=> b!2036369 m!2479075))

(declare-fun m!2479077 () Bool)

(assert (=> b!2036364 m!2479077))

(declare-fun m!2479079 () Bool)

(assert (=> b!2036364 m!2479079))

(declare-fun m!2479081 () Bool)

(assert (=> b!2036368 m!2479081))

(declare-fun m!2479083 () Bool)

(assert (=> d!623233 m!2479083))

(declare-fun m!2479085 () Bool)

(assert (=> d!623233 m!2479085))

(assert (=> b!2036263 d!623233))

(declare-fun b!2036395 () Bool)

(declare-fun e!1286012 () List!22349)

(assert (=> b!2036395 (= e!1286012 Nil!22267)))

(declare-fun b!2036396 () Bool)

(declare-fun e!1286013 () List!22349)

(assert (=> b!2036396 (= e!1286012 e!1286013)))

(declare-fun c!329797 () Bool)

(assert (=> b!2036396 (= c!329797 ((_ is Leaf!10930) t!4319))))

(declare-fun b!2036397 () Bool)

(declare-fun list!9119 (IArray!14923) List!22349)

(assert (=> b!2036397 (= e!1286013 (list!9119 (xs!10361 t!4319)))))

(declare-fun b!2036398 () Bool)

(declare-fun ++!6043 (List!22349 List!22349) List!22349)

(assert (=> b!2036398 (= e!1286013 (++!6043 (list!9117 (left!17725 t!4319)) (list!9117 (right!18055 t!4319))))))

(declare-fun d!623237 () Bool)

(declare-fun c!329796 () Bool)

(assert (=> d!623237 (= c!329796 ((_ is Empty!7459) t!4319))))

(assert (=> d!623237 (= (list!9117 t!4319) e!1286012)))

(assert (= (and d!623237 c!329796) b!2036395))

(assert (= (and d!623237 (not c!329796)) b!2036396))

(assert (= (and b!2036396 c!329797) b!2036397))

(assert (= (and b!2036396 (not c!329797)) b!2036398))

(declare-fun m!2479105 () Bool)

(assert (=> b!2036397 m!2479105))

(declare-fun m!2479107 () Bool)

(assert (=> b!2036398 m!2479107))

(declare-fun m!2479109 () Bool)

(assert (=> b!2036398 m!2479109))

(assert (=> b!2036398 m!2479107))

(assert (=> b!2036398 m!2479109))

(declare-fun m!2479111 () Bool)

(assert (=> b!2036398 m!2479111))

(assert (=> b!2036263 d!623237))

(declare-fun e!1286026 () Bool)

(declare-fun tp!604740 () Bool)

(declare-fun b!2036418 () Bool)

(declare-fun tp!604738 () Bool)

(assert (=> b!2036418 (= e!1286026 (and (inv!29527 (left!17725 (left!17725 t!4319))) tp!604738 (inv!29527 (right!18055 (left!17725 t!4319))) tp!604740))))

(declare-fun b!2036420 () Bool)

(declare-fun e!1286025 () Bool)

(declare-fun tp!604739 () Bool)

(assert (=> b!2036420 (= e!1286025 tp!604739)))

(declare-fun b!2036419 () Bool)

(assert (=> b!2036419 (= e!1286026 (and (inv!29528 (xs!10361 (left!17725 t!4319))) e!1286025))))

(assert (=> b!2036260 (= tp!604715 (and (inv!29527 (left!17725 t!4319)) e!1286026))))

(assert (= (and b!2036260 ((_ is Node!7459) (left!17725 t!4319))) b!2036418))

(assert (= b!2036419 b!2036420))

(assert (= (and b!2036260 ((_ is Leaf!10930) (left!17725 t!4319))) b!2036419))

(declare-fun m!2479125 () Bool)

(assert (=> b!2036418 m!2479125))

(declare-fun m!2479127 () Bool)

(assert (=> b!2036418 m!2479127))

(declare-fun m!2479129 () Bool)

(assert (=> b!2036419 m!2479129))

(assert (=> b!2036260 m!2479007))

(declare-fun b!2036421 () Bool)

(declare-fun tp!604741 () Bool)

(declare-fun tp!604743 () Bool)

(declare-fun e!1286028 () Bool)

(assert (=> b!2036421 (= e!1286028 (and (inv!29527 (left!17725 (right!18055 t!4319))) tp!604741 (inv!29527 (right!18055 (right!18055 t!4319))) tp!604743))))

(declare-fun b!2036423 () Bool)

(declare-fun e!1286027 () Bool)

(declare-fun tp!604742 () Bool)

(assert (=> b!2036423 (= e!1286027 tp!604742)))

(declare-fun b!2036422 () Bool)

(assert (=> b!2036422 (= e!1286028 (and (inv!29528 (xs!10361 (right!18055 t!4319))) e!1286027))))

(assert (=> b!2036260 (= tp!604713 (and (inv!29527 (right!18055 t!4319)) e!1286028))))

(assert (= (and b!2036260 ((_ is Node!7459) (right!18055 t!4319))) b!2036421))

(assert (= b!2036422 b!2036423))

(assert (= (and b!2036260 ((_ is Leaf!10930) (right!18055 t!4319))) b!2036422))

(declare-fun m!2479131 () Bool)

(assert (=> b!2036421 m!2479131))

(declare-fun m!2479133 () Bool)

(assert (=> b!2036421 m!2479133))

(declare-fun m!2479135 () Bool)

(assert (=> b!2036422 m!2479135))

(assert (=> b!2036260 m!2479009))

(declare-fun b!2036428 () Bool)

(declare-fun e!1286031 () Bool)

(declare-fun tp_is_empty!9257 () Bool)

(declare-fun tp!604746 () Bool)

(assert (=> b!2036428 (= e!1286031 (and tp_is_empty!9257 tp!604746))))

(assert (=> b!2036264 (= tp!604714 e!1286031)))

(assert (= (and b!2036264 ((_ is Cons!22267) (innerList!7519 (xs!10361 t!4319)))) b!2036428))

(declare-fun b_lambda!68755 () Bool)

(assert (= b_lambda!68751 (or (and start!200608 b_free!56807) b_lambda!68755)))

(check-sat tp_is_empty!9257 (not b!2036398) (not b!2036364) (not b!2036305) (not d!623217) (not b!2036397) b_and!162599 (not b_next!57511) (not b!2036420) (not d!623233) (not b!2036419) (not b!2036331) (not b!2036418) (not b!2036319) (not b!2036260) (not b!2036321) (not b!2036329) (not b!2036423) (not b_lambda!68755) (not b!2036428) (not b!2036421) (not b!2036322) (not b!2036422) (not bm!124927) (not b!2036306) (not b!2036304) (not b!2036369) (not b!2036302) (not b!2036301) (not b!2036324) (not b!2036303))
(check-sat b_and!162599 (not b_next!57511))
