; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85308 () Bool)

(assert start!85308)

(declare-fun res!663655 () Bool)

(declare-fun e!560188 () Bool)

(assert (=> start!85308 (=> (not res!663655) (not e!560188))))

(declare-datatypes ((List!21022 0))(
  ( (Nil!21019) (Cons!21018 (h!22180 (_ BitVec 64)) (t!30031 List!21022)) )
))
(declare-fun l!3519 () List!21022)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5779 (List!21022 (_ BitVec 64)) Bool)

(assert (=> start!85308 (= res!663655 (not (contains!5779 l!3519 e!29)))))

(assert (=> start!85308 e!560188))

(assert (=> start!85308 true))

(declare-fun b!992783 () Bool)

(declare-fun e!560187 () Bool)

(assert (=> b!992783 (= e!560188 e!560187)))

(declare-fun res!663653 () Bool)

(assert (=> b!992783 (=> (not res!663653) (not e!560187))))

(declare-datatypes ((tuple2!15084 0))(
  ( (tuple2!15085 (_1!7552 (_ BitVec 64)) (_2!7552 List!21022)) )
))
(declare-datatypes ((Option!555 0))(
  ( (Some!554 (v!14376 tuple2!15084)) (None!553) )
))
(declare-fun lt!440304 () Option!555)

(declare-fun isEmpty!764 (Option!555) Bool)

(assert (=> b!992783 (= res!663653 (not (isEmpty!764 lt!440304)))))

(declare-fun unapply!31 (List!21022) Option!555)

(assert (=> b!992783 (= lt!440304 (unapply!31 l!3519))))

(declare-fun b!992784 () Bool)

(declare-fun e!560189 () Bool)

(assert (=> b!992784 (= e!560187 e!560189)))

(declare-fun res!663654 () Bool)

(assert (=> b!992784 (=> (not res!663654) (not e!560189))))

(declare-fun lt!440303 () tuple2!15084)

(assert (=> b!992784 (= res!663654 (not (contains!5779 (_2!7552 lt!440303) e!29)))))

(declare-fun get!15729 (Option!555) tuple2!15084)

(assert (=> b!992784 (= lt!440303 (get!15729 lt!440304))))

(declare-fun b!992785 () Bool)

(declare-fun ListPrimitiveSize!94 (List!21022) Int)

(assert (=> b!992785 (= e!560189 (>= (ListPrimitiveSize!94 (_2!7552 lt!440303)) (ListPrimitiveSize!94 l!3519)))))

(assert (= (and start!85308 res!663655) b!992783))

(assert (= (and b!992783 res!663653) b!992784))

(assert (= (and b!992784 res!663654) b!992785))

(declare-fun m!920609 () Bool)

(assert (=> start!85308 m!920609))

(declare-fun m!920611 () Bool)

(assert (=> b!992783 m!920611))

(declare-fun m!920613 () Bool)

(assert (=> b!992783 m!920613))

(declare-fun m!920615 () Bool)

(assert (=> b!992784 m!920615))

(declare-fun m!920617 () Bool)

(assert (=> b!992784 m!920617))

(declare-fun m!920619 () Bool)

(assert (=> b!992785 m!920619))

(declare-fun m!920621 () Bool)

(assert (=> b!992785 m!920621))

(push 1)

(assert (not b!992783))

(assert (not b!992784))

(assert (not start!85308))

(assert (not b!992785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118285 () Bool)

(assert (=> d!118285 (= (isEmpty!764 lt!440304) (not (is-Some!554 lt!440304)))))

(assert (=> b!992783 d!118285))

(declare-fun d!118287 () Bool)

(assert (=> d!118287 (= (unapply!31 l!3519) (ite (is-Nil!21019 l!3519) None!553 (Some!554 (tuple2!15085 (h!22180 l!3519) (t!30031 l!3519)))))))

(assert (=> b!992783 d!118287))

(declare-fun d!118293 () Bool)

(declare-fun lt!440325 () Bool)

(declare-fun content!462 (List!21022) (Set (_ BitVec 64)))

(assert (=> d!118293 (= lt!440325 (set.member e!29 (content!462 (_2!7552 lt!440303))))))

(declare-fun e!560221 () Bool)

(assert (=> d!118293 (= lt!440325 e!560221)))

(declare-fun res!663683 () Bool)

(assert (=> d!118293 (=> (not res!663683) (not e!560221))))

(assert (=> d!118293 (= res!663683 (is-Cons!21018 (_2!7552 lt!440303)))))

(assert (=> d!118293 (= (contains!5779 (_2!7552 lt!440303) e!29) lt!440325)))

(declare-fun b!992820 () Bool)

(declare-fun e!560220 () Bool)

(assert (=> b!992820 (= e!560221 e!560220)))

(declare-fun res!663682 () Bool)

(assert (=> b!992820 (=> res!663682 e!560220)))

(assert (=> b!992820 (= res!663682 (= (h!22180 (_2!7552 lt!440303)) e!29))))

(declare-fun b!992821 () Bool)

(assert (=> b!992821 (= e!560220 (contains!5779 (t!30031 (_2!7552 lt!440303)) e!29))))

(assert (= (and d!118293 res!663683) b!992820))

(assert (= (and b!992820 (not res!663682)) b!992821))

(declare-fun m!920655 () Bool)

(assert (=> d!118293 m!920655))

(declare-fun m!920657 () Bool)

(assert (=> d!118293 m!920657))

(declare-fun m!920659 () Bool)

(assert (=> b!992821 m!920659))

(assert (=> b!992784 d!118293))

(declare-fun d!118305 () Bool)

(assert (=> d!118305 (= (get!15729 lt!440304) (v!14376 lt!440304))))

(assert (=> b!992784 d!118305))

(declare-fun d!118307 () Bool)

(declare-fun lt!440326 () Bool)

(assert (=> d!118307 (= lt!440326 (set.member e!29 (content!462 l!3519)))))

(declare-fun e!560225 () Bool)

(assert (=> d!118307 (= lt!440326 e!560225)))

(declare-fun res!663686 () Bool)

(assert (=> d!118307 (=> (not res!663686) (not e!560225))))

(assert (=> d!118307 (= res!663686 (is-Cons!21018 l!3519))))

(assert (=> d!118307 (= (contains!5779 l!3519 e!29) lt!440326)))

(declare-fun b!992822 () Bool)

(declare-fun e!560224 () Bool)

(assert (=> b!992822 (= e!560225 e!560224)))

(declare-fun res!663684 () Bool)

(assert (=> b!992822 (=> res!663684 e!560224)))

(assert (=> b!992822 (= res!663684 (= (h!22180 l!3519) e!29))))

(declare-fun b!992824 () Bool)

(assert (=> b!992824 (= e!560224 (contains!5779 (t!30031 l!3519) e!29))))

(assert (= (and d!118307 res!663686) b!992822))

(assert (= (and b!992822 (not res!663684)) b!992824))

(declare-fun m!920661 () Bool)

(assert (=> d!118307 m!920661))

(declare-fun m!920665 () Bool)

(assert (=> d!118307 m!920665))

(declare-fun m!920669 () Bool)

(assert (=> b!992824 m!920669))

(assert (=> start!85308 d!118307))

(declare-fun d!118309 () Bool)

(declare-fun lt!440337 () Int)

(assert (=> d!118309 (>= lt!440337 0)))

(declare-fun e!560240 () Int)

(assert (=> d!118309 (= lt!440337 e!560240)))

(declare-fun c!100710 () Bool)

(assert (=> d!118309 (= c!100710 (is-Nil!21019 (_2!7552 lt!440303)))))

(assert (=> d!118309 (= (ListPrimitiveSize!94 (_2!7552 lt!440303)) lt!440337)))

(declare-fun b!992844 () Bool)

(assert (=> b!992844 (= e!560240 0)))

(declare-fun b!992845 () Bool)

(assert (=> b!992845 (= e!560240 (+ 1 (ListPrimitiveSize!94 (t!30031 (_2!7552 lt!440303)))))))

(assert (= (and d!118309 c!100710) b!992844))

(assert (= (and d!118309 (not c!100710)) b!992845))

(declare-fun m!920691 () Bool)

(assert (=> b!992845 m!920691))

(assert (=> b!992785 d!118309))

(declare-fun d!118321 () Bool)

(declare-fun lt!440338 () Int)

(assert (=> d!118321 (>= lt!440338 0)))

(declare-fun e!560241 () Int)

(assert (=> d!118321 (= lt!440338 e!560241)))

(declare-fun c!100711 () Bool)

(assert (=> d!118321 (= c!100711 (is-Nil!21019 l!3519))))

(assert (=> d!118321 (= (ListPrimitiveSize!94 l!3519) lt!440338)))

(declare-fun b!992846 () Bool)

(assert (=> b!992846 (= e!560241 0)))

(declare-fun b!992847 () Bool)

(assert (=> b!992847 (= e!560241 (+ 1 (ListPrimitiveSize!94 (t!30031 l!3519))))))

(assert (= (and d!118321 c!100711) b!992846))

(assert (= (and d!118321 (not c!100711)) b!992847))

(declare-fun m!920693 () Bool)

(assert (=> b!992847 m!920693))

(assert (=> b!992785 d!118321))

(push 1)

