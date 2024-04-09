; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85228 () Bool)

(assert start!85228)

(declare-fun res!663541 () Bool)

(declare-fun e!560066 () Bool)

(assert (=> start!85228 (=> (not res!663541) (not e!560066))))

(declare-datatypes ((List!21012 0))(
  ( (Nil!21009) (Cons!21008 (h!22170 (_ BitVec 64)) (t!30021 List!21012)) )
))
(declare-fun l!3519 () List!21012)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5769 (List!21012 (_ BitVec 64)) Bool)

(assert (=> start!85228 (= res!663541 (not (contains!5769 l!3519 e!29)))))

(assert (=> start!85228 e!560066))

(assert (=> start!85228 true))

(declare-fun b!992652 () Bool)

(declare-fun e!560065 () Bool)

(assert (=> b!992652 (= e!560066 e!560065)))

(declare-fun res!663540 () Bool)

(assert (=> b!992652 (=> (not res!663540) (not e!560065))))

(declare-datatypes ((tuple2!15070 0))(
  ( (tuple2!15071 (_1!7545 (_ BitVec 64)) (_2!7545 List!21012)) )
))
(declare-datatypes ((Option!548 0))(
  ( (Some!547 (v!14360 tuple2!15070)) (None!546) )
))
(declare-fun lt!440232 () Option!548)

(declare-fun isEmpty!757 (Option!548) Bool)

(assert (=> b!992652 (= res!663540 (not (isEmpty!757 lt!440232)))))

(declare-fun unapply!24 (List!21012) Option!548)

(assert (=> b!992652 (= lt!440232 (unapply!24 l!3519))))

(declare-fun b!992653 () Bool)

(declare-fun isDefined!392 (Option!548) Bool)

(assert (=> b!992653 (= e!560065 (not (isDefined!392 lt!440232)))))

(assert (= (and start!85228 res!663541) b!992652))

(assert (= (and b!992652 res!663540) b!992653))

(declare-fun m!920451 () Bool)

(assert (=> start!85228 m!920451))

(declare-fun m!920453 () Bool)

(assert (=> b!992652 m!920453))

(declare-fun m!920455 () Bool)

(assert (=> b!992652 m!920455))

(declare-fun m!920457 () Bool)

(assert (=> b!992653 m!920457))

(push 1)

(assert (not b!992652))

(assert (not b!992653))

(assert (not start!85228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118213 () Bool)

(assert (=> d!118213 (= (isEmpty!757 lt!440232) (not (is-Some!547 lt!440232)))))

(assert (=> b!992652 d!118213))

(declare-fun d!118219 () Bool)

(assert (=> d!118219 (= (unapply!24 l!3519) (ite (is-Nil!21009 l!3519) None!546 (Some!547 (tuple2!15071 (h!22170 l!3519) (t!30021 l!3519)))))))

(assert (=> b!992652 d!118219))

(declare-fun d!118225 () Bool)

(assert (=> d!118225 (= (isDefined!392 lt!440232) (not (isEmpty!757 lt!440232)))))

(declare-fun bs!28230 () Bool)

(assert (= bs!28230 d!118225))

(assert (=> bs!28230 m!920453))

(assert (=> b!992653 d!118225))

(declare-fun d!118229 () Bool)

(declare-fun lt!440239 () Bool)

(declare-fun content!455 (List!21012) (Set (_ BitVec 64)))

(assert (=> d!118229 (= lt!440239 (member e!29 (content!455 l!3519)))))

(declare-fun e!560080 () Bool)

(assert (=> d!118229 (= lt!440239 e!560080)))

(declare-fun res!663554 () Bool)

(assert (=> d!118229 (=> (not res!663554) (not e!560080))))

(assert (=> d!118229 (= res!663554 (is-Cons!21008 l!3519))))

(assert (=> d!118229 (= (contains!5769 l!3519 e!29) lt!440239)))

(declare-fun b!992666 () Bool)

(declare-fun e!560079 () Bool)

(assert (=> b!992666 (= e!560080 e!560079)))

(declare-fun res!663555 () Bool)

(assert (=> b!992666 (=> res!663555 e!560079)))

(assert (=> b!992666 (= res!663555 (= (h!22170 l!3519) e!29))))

(declare-fun b!992667 () Bool)

(assert (=> b!992667 (= e!560079 (contains!5769 (t!30021 l!3519) e!29))))

(assert (= (and d!118229 res!663554) b!992666))

(assert (= (and b!992666 (not res!663555)) b!992667))

(declare-fun m!920459 () Bool)

(assert (=> d!118229 m!920459))

(declare-fun m!920463 () Bool)

(assert (=> d!118229 m!920463))

(declare-fun m!920469 () Bool)

(assert (=> b!992667 m!920469))

(assert (=> start!85228 d!118229))

(push 1)

