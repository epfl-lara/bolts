; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85282 () Bool)

(assert start!85282)

(declare-fun res!663621 () Bool)

(declare-fun e!560156 () Bool)

(assert (=> start!85282 (=> (not res!663621) (not e!560156))))

(declare-datatypes ((List!21021 0))(
  ( (Nil!21018) (Cons!21017 (h!22179 (_ BitVec 64)) (t!30030 List!21021)) )
))
(declare-fun l!3519 () List!21021)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5778 (List!21021 (_ BitVec 64)) Bool)

(assert (=> start!85282 (= res!663621 (not (contains!5778 l!3519 e!29)))))

(assert (=> start!85282 e!560156))

(assert (=> start!85282 true))

(declare-fun b!992751 () Bool)

(declare-fun e!560155 () Bool)

(assert (=> b!992751 (= e!560156 e!560155)))

(declare-fun res!663622 () Bool)

(assert (=> b!992751 (=> (not res!663622) (not e!560155))))

(declare-datatypes ((tuple2!15082 0))(
  ( (tuple2!15083 (_1!7551 (_ BitVec 64)) (_2!7551 List!21021)) )
))
(declare-datatypes ((Option!554 0))(
  ( (Some!553 (v!14372 tuple2!15082)) (None!552) )
))
(declare-fun lt!440286 () Option!554)

(declare-fun isEmpty!763 (Option!554) Bool)

(assert (=> b!992751 (= res!663622 (not (isEmpty!763 lt!440286)))))

(declare-fun unapply!30 (List!21021) Option!554)

(assert (=> b!992751 (= lt!440286 (unapply!30 l!3519))))

(declare-fun b!992752 () Bool)

(declare-fun get!15726 (Option!554) tuple2!15082)

(assert (=> b!992752 (= e!560155 (contains!5778 (_2!7551 (get!15726 lt!440286)) e!29))))

(assert (= (and start!85282 res!663621) b!992751))

(assert (= (and b!992751 res!663622) b!992752))

(declare-fun m!920563 () Bool)

(assert (=> start!85282 m!920563))

(declare-fun m!920565 () Bool)

(assert (=> b!992751 m!920565))

(declare-fun m!920567 () Bool)

(assert (=> b!992751 m!920567))

(declare-fun m!920569 () Bool)

(assert (=> b!992752 m!920569))

(declare-fun m!920571 () Bool)

(assert (=> b!992752 m!920571))

(push 1)

(assert (not b!992751))

(assert (not b!992752))

(assert (not start!85282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118255 () Bool)

(assert (=> d!118255 (= (isEmpty!763 lt!440286) (not (is-Some!553 lt!440286)))))

(assert (=> b!992751 d!118255))

(declare-fun d!118261 () Bool)

(assert (=> d!118261 (= (unapply!30 l!3519) (ite (is-Nil!21018 l!3519) None!552 (Some!553 (tuple2!15083 (h!22179 l!3519) (t!30030 l!3519)))))))

(assert (=> b!992751 d!118261))

(declare-fun d!118267 () Bool)

(declare-fun lt!440295 () Bool)

(declare-fun content!461 (List!21021) (Set (_ BitVec 64)))

(assert (=> d!118267 (= lt!440295 (member e!29 (content!461 (_2!7551 (get!15726 lt!440286)))))))

(declare-fun e!560174 () Bool)

(assert (=> d!118267 (= lt!440295 e!560174)))

(declare-fun res!663639 () Bool)

(assert (=> d!118267 (=> (not res!663639) (not e!560174))))

(assert (=> d!118267 (= res!663639 (is-Cons!21017 (_2!7551 (get!15726 lt!440286))))))

(assert (=> d!118267 (= (contains!5778 (_2!7551 (get!15726 lt!440286)) e!29) lt!440295)))

(declare-fun b!992769 () Bool)

(declare-fun e!560173 () Bool)

(assert (=> b!992769 (= e!560174 e!560173)))

(declare-fun res!663640 () Bool)

(assert (=> b!992769 (=> res!663640 e!560173)))

(assert (=> b!992769 (= res!663640 (= (h!22179 (_2!7551 (get!15726 lt!440286))) e!29))))

(declare-fun b!992770 () Bool)

(assert (=> b!992770 (= e!560173 (contains!5778 (t!30030 (_2!7551 (get!15726 lt!440286))) e!29))))

(assert (= (and d!118267 res!663639) b!992769))

(assert (= (and b!992769 (not res!663640)) b!992770))

(declare-fun m!920585 () Bool)

(assert (=> d!118267 m!920585))

(declare-fun m!920587 () Bool)

(assert (=> d!118267 m!920587))

(declare-fun m!920589 () Bool)

(assert (=> b!992770 m!920589))

(assert (=> b!992752 d!118267))

(declare-fun d!118273 () Bool)

(assert (=> d!118273 (= (get!15726 lt!440286) (v!14372 lt!440286))))

(assert (=> b!992752 d!118273))

(declare-fun d!118279 () Bool)

(declare-fun lt!440298 () Bool)

(assert (=> d!118279 (= lt!440298 (member e!29 (content!461 l!3519)))))

(declare-fun e!560180 () Bool)

(assert (=> d!118279 (= lt!440298 e!560180)))

(declare-fun res!663645 () Bool)

(assert (=> d!118279 (=> (not res!663645) (not e!560180))))

(assert (=> d!118279 (= res!663645 (is-Cons!21017 l!3519))))

(assert (=> d!118279 (= (contains!5778 l!3519 e!29) lt!440298)))

(declare-fun b!992775 () Bool)

(declare-fun e!560179 () Bool)

(assert (=> b!992775 (= e!560180 e!560179)))

(declare-fun res!663646 () Bool)

(assert (=> b!992775 (=> res!663646 e!560179)))

(assert (=> b!992775 (= res!663646 (= (h!22179 l!3519) e!29))))

