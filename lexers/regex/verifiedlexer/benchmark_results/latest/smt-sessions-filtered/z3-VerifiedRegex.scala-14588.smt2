; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755788 () Bool)

(assert start!755788)

(declare-fun lt!2720933 () Int)

(declare-fun e!4728399 () Bool)

(declare-datatypes ((B!4349 0))(
  ( (B!4350 (val!32574 Int)) )
))
(declare-fun e!9294 () B!4349)

(declare-datatypes ((List!75090 0))(
  ( (Nil!74964) (Cons!74964 (h!81412 B!4349) (t!390846 List!75090)) )
))
(declare-fun l!3127 () List!75090)

(declare-fun b!8026363 () Bool)

(declare-fun getIndex!914 (List!75090 B!4349) Int)

(assert (=> b!8026363 (= e!4728399 (not (= (getIndex!914 l!3127 e!9294) (+ 1 lt!2720933))))))

(declare-fun lt!2720934 () Int)

(assert (=> b!8026363 (= lt!2720933 (+ 1 lt!2720934))))

(declare-fun lt!2720932 () List!75090)

(assert (=> b!8026363 (= lt!2720933 (getIndex!914 lt!2720932 e!9294))))

(declare-fun tail!16011 (List!75090) List!75090)

(assert (=> b!8026363 (= lt!2720934 (getIndex!914 (tail!16011 lt!2720932) e!9294))))

(declare-datatypes ((Unit!170944 0))(
  ( (Unit!170945) )
))
(declare-fun lt!2720931 () Unit!170944)

(declare-fun lemmaNotHeadSoGetIndexTailIsMinusOne!28 (List!75090 B!4349) Unit!170944)

(assert (=> b!8026363 (= lt!2720931 (lemmaNotHeadSoGetIndexTailIsMinusOne!28 lt!2720932 e!9294))))

(declare-fun b!8026364 () Bool)

(declare-fun res!3174085 () Bool)

(declare-fun e!4728397 () Bool)

(assert (=> b!8026364 (=> (not res!3174085) (not e!4728397))))

(declare-fun head!16470 (List!75090) B!4349)

(assert (=> b!8026364 (= res!3174085 (not (= (head!16470 l!3127) e!9294)))))

(declare-fun res!3174087 () Bool)

(assert (=> start!755788 (=> (not res!3174087) (not e!4728397))))

(declare-fun contains!20928 (List!75090 B!4349) Bool)

(assert (=> start!755788 (= res!3174087 (contains!20928 l!3127 e!9294))))

(assert (=> start!755788 e!4728397))

(declare-fun e!4728398 () Bool)

(assert (=> start!755788 e!4728398))

(declare-fun tp_is_empty!54253 () Bool)

(assert (=> start!755788 tp_is_empty!54253))

(declare-fun b!8026365 () Bool)

(assert (=> b!8026365 (= e!4728397 e!4728399)))

(declare-fun res!3174086 () Bool)

(assert (=> b!8026365 (=> (not res!3174086) (not e!4728399))))

(assert (=> b!8026365 (= res!3174086 (not (= (head!16470 lt!2720932) e!9294)))))

(assert (=> b!8026365 (= lt!2720932 (tail!16011 l!3127))))

(declare-fun b!8026366 () Bool)

(declare-fun res!3174084 () Bool)

(assert (=> b!8026366 (=> (not res!3174084) (not e!4728399))))

(assert (=> b!8026366 (= res!3174084 (contains!20928 lt!2720932 e!9294))))

(declare-fun b!8026367 () Bool)

(declare-fun tp!2402033 () Bool)

(assert (=> b!8026367 (= e!4728398 (and tp_is_empty!54253 tp!2402033))))

(assert (= (and start!755788 res!3174087) b!8026364))

(assert (= (and b!8026364 res!3174085) b!8026365))

(assert (= (and b!8026365 res!3174086) b!8026366))

(assert (= (and b!8026366 res!3174084) b!8026363))

(get-info :version)

(assert (= (and start!755788 ((_ is Cons!74964) l!3127)) b!8026367))

(declare-fun m!8388794 () Bool)

(assert (=> b!8026363 m!8388794))

(declare-fun m!8388796 () Bool)

(assert (=> b!8026363 m!8388796))

(declare-fun m!8388798 () Bool)

(assert (=> b!8026363 m!8388798))

(declare-fun m!8388800 () Bool)

(assert (=> b!8026363 m!8388800))

(assert (=> b!8026363 m!8388796))

(declare-fun m!8388802 () Bool)

(assert (=> b!8026363 m!8388802))

(declare-fun m!8388804 () Bool)

(assert (=> start!755788 m!8388804))

(declare-fun m!8388806 () Bool)

(assert (=> b!8026365 m!8388806))

(declare-fun m!8388808 () Bool)

(assert (=> b!8026365 m!8388808))

(declare-fun m!8388810 () Bool)

(assert (=> b!8026364 m!8388810))

(declare-fun m!8388812 () Bool)

(assert (=> b!8026366 m!8388812))

(check-sat (not b!8026367) (not b!8026366) tp_is_empty!54253 (not b!8026364) (not start!755788) (not b!8026363) (not b!8026365))
(check-sat)
(get-model)

(declare-fun d!2393485 () Bool)

(assert (=> d!2393485 (= (tail!16011 lt!2720932) (t!390846 lt!2720932))))

(assert (=> b!8026363 d!2393485))

(declare-fun b!8026393 () Bool)

(declare-fun e!4728415 () Int)

(assert (=> b!8026393 (= e!4728415 (- 1))))

(declare-fun b!8026392 () Bool)

(assert (=> b!8026392 (= e!4728415 (+ 1 (getIndex!914 (t!390846 (tail!16011 lt!2720932)) e!9294)))))

(declare-fun d!2393487 () Bool)

(declare-fun lt!2720942 () Int)

(assert (=> d!2393487 (>= lt!2720942 0)))

(declare-fun e!4728414 () Int)

(assert (=> d!2393487 (= lt!2720942 e!4728414)))

(declare-fun c!1472718 () Bool)

(assert (=> d!2393487 (= c!1472718 (and ((_ is Cons!74964) (tail!16011 lt!2720932)) (= (h!81412 (tail!16011 lt!2720932)) e!9294)))))

(assert (=> d!2393487 (contains!20928 (tail!16011 lt!2720932) e!9294)))

(assert (=> d!2393487 (= (getIndex!914 (tail!16011 lt!2720932) e!9294) lt!2720942)))

(declare-fun b!8026389 () Bool)

(assert (=> b!8026389 (= e!4728414 0)))

(declare-fun b!8026391 () Bool)

(assert (=> b!8026391 (= e!4728414 e!4728415)))

(declare-fun c!1472717 () Bool)

(assert (=> b!8026391 (= c!1472717 (and ((_ is Cons!74964) (tail!16011 lt!2720932)) (not (= (h!81412 (tail!16011 lt!2720932)) e!9294))))))

(assert (= (and d!2393487 c!1472718) b!8026389))

(assert (= (and d!2393487 (not c!1472718)) b!8026391))

(assert (= (and b!8026391 c!1472717) b!8026392))

(assert (= (and b!8026391 (not c!1472717)) b!8026393))

(declare-fun m!8388820 () Bool)

(assert (=> b!8026392 m!8388820))

(assert (=> d!2393487 m!8388796))

(declare-fun m!8388822 () Bool)

(assert (=> d!2393487 m!8388822))

(assert (=> b!8026363 d!2393487))

(declare-fun d!2393497 () Bool)

(assert (=> d!2393497 (= (getIndex!914 lt!2720932 e!9294) (+ (getIndex!914 (tail!16011 lt!2720932) e!9294) 1))))

(declare-fun lt!2720948 () Unit!170944)

(declare-fun choose!60450 (List!75090 B!4349) Unit!170944)

(assert (=> d!2393497 (= lt!2720948 (choose!60450 lt!2720932 e!9294))))

(assert (=> d!2393497 (contains!20928 lt!2720932 e!9294)))

(assert (=> d!2393497 (= (lemmaNotHeadSoGetIndexTailIsMinusOne!28 lt!2720932 e!9294) lt!2720948)))

(declare-fun bs!1971321 () Bool)

(assert (= bs!1971321 d!2393497))

(declare-fun m!8388832 () Bool)

(assert (=> bs!1971321 m!8388832))

(assert (=> bs!1971321 m!8388798))

(assert (=> bs!1971321 m!8388796))

(assert (=> bs!1971321 m!8388802))

(assert (=> bs!1971321 m!8388812))

(assert (=> bs!1971321 m!8388796))

(assert (=> b!8026363 d!2393497))

(declare-fun b!8026409 () Bool)

(declare-fun e!4728426 () Int)

(assert (=> b!8026409 (= e!4728426 (- 1))))

(declare-fun b!8026408 () Bool)

(assert (=> b!8026408 (= e!4728426 (+ 1 (getIndex!914 (t!390846 lt!2720932) e!9294)))))

(declare-fun d!2393507 () Bool)

(declare-fun lt!2720949 () Int)

(assert (=> d!2393507 (>= lt!2720949 0)))

(declare-fun e!4728425 () Int)

(assert (=> d!2393507 (= lt!2720949 e!4728425)))

(declare-fun c!1472728 () Bool)

(assert (=> d!2393507 (= c!1472728 (and ((_ is Cons!74964) lt!2720932) (= (h!81412 lt!2720932) e!9294)))))

(assert (=> d!2393507 (contains!20928 lt!2720932 e!9294)))

(assert (=> d!2393507 (= (getIndex!914 lt!2720932 e!9294) lt!2720949)))

(declare-fun b!8026406 () Bool)

(assert (=> b!8026406 (= e!4728425 0)))

(declare-fun b!8026407 () Bool)

(assert (=> b!8026407 (= e!4728425 e!4728426)))

(declare-fun c!1472727 () Bool)

(assert (=> b!8026407 (= c!1472727 (and ((_ is Cons!74964) lt!2720932) (not (= (h!81412 lt!2720932) e!9294))))))

(assert (= (and d!2393507 c!1472728) b!8026406))

(assert (= (and d!2393507 (not c!1472728)) b!8026407))

(assert (= (and b!8026407 c!1472727) b!8026408))

(assert (= (and b!8026407 (not c!1472727)) b!8026409))

(declare-fun m!8388834 () Bool)

(assert (=> b!8026408 m!8388834))

(assert (=> d!2393507 m!8388812))

(assert (=> b!8026363 d!2393507))

(declare-fun b!8026413 () Bool)

(declare-fun e!4728428 () Int)

(assert (=> b!8026413 (= e!4728428 (- 1))))

(declare-fun b!8026412 () Bool)

(assert (=> b!8026412 (= e!4728428 (+ 1 (getIndex!914 (t!390846 l!3127) e!9294)))))

(declare-fun d!2393509 () Bool)

(declare-fun lt!2720950 () Int)

(assert (=> d!2393509 (>= lt!2720950 0)))

(declare-fun e!4728427 () Int)

(assert (=> d!2393509 (= lt!2720950 e!4728427)))

(declare-fun c!1472730 () Bool)

(assert (=> d!2393509 (= c!1472730 (and ((_ is Cons!74964) l!3127) (= (h!81412 l!3127) e!9294)))))

(assert (=> d!2393509 (contains!20928 l!3127 e!9294)))

(assert (=> d!2393509 (= (getIndex!914 l!3127 e!9294) lt!2720950)))

(declare-fun b!8026410 () Bool)

(assert (=> b!8026410 (= e!4728427 0)))

(declare-fun b!8026411 () Bool)

(assert (=> b!8026411 (= e!4728427 e!4728428)))

(declare-fun c!1472729 () Bool)

(assert (=> b!8026411 (= c!1472729 (and ((_ is Cons!74964) l!3127) (not (= (h!81412 l!3127) e!9294))))))

(assert (= (and d!2393509 c!1472730) b!8026410))

(assert (= (and d!2393509 (not c!1472730)) b!8026411))

(assert (= (and b!8026411 c!1472729) b!8026412))

(assert (= (and b!8026411 (not c!1472729)) b!8026413))

(declare-fun m!8388836 () Bool)

(assert (=> b!8026412 m!8388836))

(assert (=> d!2393509 m!8388804))

(assert (=> b!8026363 d!2393509))

(declare-fun d!2393511 () Bool)

(declare-fun lt!2720957 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15983 (List!75090) (InoxSet B!4349))

(assert (=> d!2393511 (= lt!2720957 (select (content!15983 l!3127) e!9294))))

(declare-fun e!4728440 () Bool)

(assert (=> d!2393511 (= lt!2720957 e!4728440)))

(declare-fun res!3174100 () Bool)

(assert (=> d!2393511 (=> (not res!3174100) (not e!4728440))))

(assert (=> d!2393511 (= res!3174100 ((_ is Cons!74964) l!3127))))

(assert (=> d!2393511 (= (contains!20928 l!3127 e!9294) lt!2720957)))

(declare-fun b!8026425 () Bool)

(declare-fun e!4728439 () Bool)

(assert (=> b!8026425 (= e!4728440 e!4728439)))

(declare-fun res!3174101 () Bool)

(assert (=> b!8026425 (=> res!3174101 e!4728439)))

(assert (=> b!8026425 (= res!3174101 (= (h!81412 l!3127) e!9294))))

(declare-fun b!8026426 () Bool)

(assert (=> b!8026426 (= e!4728439 (contains!20928 (t!390846 l!3127) e!9294))))

(assert (= (and d!2393511 res!3174100) b!8026425))

(assert (= (and b!8026425 (not res!3174101)) b!8026426))

(declare-fun m!8388846 () Bool)

(assert (=> d!2393511 m!8388846))

(declare-fun m!8388848 () Bool)

(assert (=> d!2393511 m!8388848))

(declare-fun m!8388850 () Bool)

(assert (=> b!8026426 m!8388850))

(assert (=> start!755788 d!2393511))

(declare-fun d!2393515 () Bool)

(declare-fun lt!2720958 () Bool)

(assert (=> d!2393515 (= lt!2720958 (select (content!15983 lt!2720932) e!9294))))

(declare-fun e!4728442 () Bool)

(assert (=> d!2393515 (= lt!2720958 e!4728442)))

(declare-fun res!3174102 () Bool)

(assert (=> d!2393515 (=> (not res!3174102) (not e!4728442))))

(assert (=> d!2393515 (= res!3174102 ((_ is Cons!74964) lt!2720932))))

(assert (=> d!2393515 (= (contains!20928 lt!2720932 e!9294) lt!2720958)))

(declare-fun b!8026427 () Bool)

(declare-fun e!4728441 () Bool)

(assert (=> b!8026427 (= e!4728442 e!4728441)))

(declare-fun res!3174103 () Bool)

(assert (=> b!8026427 (=> res!3174103 e!4728441)))

(assert (=> b!8026427 (= res!3174103 (= (h!81412 lt!2720932) e!9294))))

(declare-fun b!8026428 () Bool)

(assert (=> b!8026428 (= e!4728441 (contains!20928 (t!390846 lt!2720932) e!9294))))

(assert (= (and d!2393515 res!3174102) b!8026427))

(assert (= (and b!8026427 (not res!3174103)) b!8026428))

(declare-fun m!8388852 () Bool)

(assert (=> d!2393515 m!8388852))

(declare-fun m!8388854 () Bool)

(assert (=> d!2393515 m!8388854))

(declare-fun m!8388856 () Bool)

(assert (=> b!8026428 m!8388856))

(assert (=> b!8026366 d!2393515))

(declare-fun d!2393517 () Bool)

(assert (=> d!2393517 (= (head!16470 l!3127) (h!81412 l!3127))))

(assert (=> b!8026364 d!2393517))

(declare-fun d!2393519 () Bool)

(assert (=> d!2393519 (= (head!16470 lt!2720932) (h!81412 lt!2720932))))

(assert (=> b!8026365 d!2393519))

(declare-fun d!2393521 () Bool)

(assert (=> d!2393521 (= (tail!16011 l!3127) (t!390846 l!3127))))

(assert (=> b!8026365 d!2393521))

(declare-fun b!8026433 () Bool)

(declare-fun e!4728445 () Bool)

(declare-fun tp!2402039 () Bool)

(assert (=> b!8026433 (= e!4728445 (and tp_is_empty!54253 tp!2402039))))

(assert (=> b!8026367 (= tp!2402033 e!4728445)))

(assert (= (and b!8026367 ((_ is Cons!74964) (t!390846 l!3127))) b!8026433))

(check-sat (not d!2393507) (not d!2393515) (not d!2393511) (not b!8026426) (not b!8026408) (not d!2393497) (not b!8026392) (not d!2393487) (not d!2393509) tp_is_empty!54253 (not b!8026428) (not b!8026412) (not b!8026433))
(check-sat)
