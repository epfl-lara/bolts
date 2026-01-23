; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754640 () Bool)

(assert start!754640)

(declare-fun res!3170305 () Bool)

(declare-fun e!4723287 () Bool)

(assert (=> start!754640 (=> (not res!3170305) (not e!4723287))))

(declare-datatypes ((B!4077 0))(
  ( (B!4078 (val!32428 Int)) )
))
(declare-datatypes ((List!74940 0))(
  ( (Nil!74816) (Cons!74816 (h!81264 B!4077) (t!390683 List!74940)) )
))
(declare-fun p!2009 () List!74940)

(declare-fun l!3435 () List!74940)

(declare-fun isPrefix!6763 (List!74940 List!74940) Bool)

(assert (=> start!754640 (= res!3170305 (isPrefix!6763 p!2009 l!3435))))

(assert (=> start!754640 e!4723287))

(declare-fun e!4723288 () Bool)

(assert (=> start!754640 e!4723288))

(declare-fun e!4723286 () Bool)

(assert (=> start!754640 e!4723286))

(declare-fun b!8018279 () Bool)

(declare-fun e!4723289 () Bool)

(assert (=> b!8018279 (= e!4723287 e!4723289)))

(declare-fun res!3170304 () Bool)

(assert (=> b!8018279 (=> (not res!3170304) (not e!4723289))))

(declare-fun lt!2719233 () List!74940)

(assert (=> b!8018279 (= res!3170304 (isPrefix!6763 (t!390683 p!2009) lt!2719233))))

(declare-fun tail!15904 (List!74940) List!74940)

(assert (=> b!8018279 (= lt!2719233 (tail!15904 l!3435))))

(declare-fun b!8018280 () Bool)

(declare-fun res!3170303 () Bool)

(assert (=> b!8018280 (=> (not res!3170303) (not e!4723287))))

(get-info :version)

(assert (=> b!8018280 (= res!3170303 ((_ is Cons!74816) p!2009))))

(declare-fun b!8018281 () Bool)

(declare-fun tp_is_empty!53965 () Bool)

(declare-fun tp!2400050 () Bool)

(assert (=> b!8018281 (= e!4723286 (and tp_is_empty!53965 tp!2400050))))

(declare-fun b!8018282 () Bool)

(declare-fun tp!2400049 () Bool)

(assert (=> b!8018282 (= e!4723288 (and tp_is_empty!53965 tp!2400049))))

(declare-fun b!8018283 () Bool)

(declare-fun res!3170306 () Bool)

(assert (=> b!8018283 (=> (not res!3170306) (not e!4723287))))

(declare-fun size!43607 (List!74940) Int)

(assert (=> b!8018283 (= res!3170306 (< (size!43607 p!2009) (size!43607 l!3435)))))

(declare-fun b!8018284 () Bool)

(assert (=> b!8018284 (= e!4723289 false)))

(declare-fun lt!2719232 () Int)

(assert (=> b!8018284 (= lt!2719232 (size!43607 lt!2719233))))

(declare-fun lt!2719231 () Int)

(assert (=> b!8018284 (= lt!2719231 (size!43607 (t!390683 p!2009)))))

(assert (= (and start!754640 res!3170305) b!8018283))

(assert (= (and b!8018283 res!3170306) b!8018280))

(assert (= (and b!8018280 res!3170303) b!8018279))

(assert (= (and b!8018279 res!3170304) b!8018284))

(assert (= (and start!754640 ((_ is Cons!74816) p!2009)) b!8018282))

(assert (= (and start!754640 ((_ is Cons!74816) l!3435)) b!8018281))

(declare-fun m!8381240 () Bool)

(assert (=> start!754640 m!8381240))

(declare-fun m!8381242 () Bool)

(assert (=> b!8018279 m!8381242))

(declare-fun m!8381244 () Bool)

(assert (=> b!8018279 m!8381244))

(declare-fun m!8381246 () Bool)

(assert (=> b!8018283 m!8381246))

(declare-fun m!8381248 () Bool)

(assert (=> b!8018283 m!8381248))

(declare-fun m!8381250 () Bool)

(assert (=> b!8018284 m!8381250))

(declare-fun m!8381252 () Bool)

(assert (=> b!8018284 m!8381252))

(check-sat (not b!8018283) tp_is_empty!53965 (not b!8018281) (not b!8018284) (not b!8018282) (not start!754640) (not b!8018279))
(check-sat)
