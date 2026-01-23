; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758050 () Bool)

(assert start!758050)

(declare-fun b!8049435 () Bool)

(declare-fun res!3182198 () Bool)

(declare-fun e!4742858 () Bool)

(assert (=> b!8049435 (=> (not res!3182198) (not e!4742858))))

(declare-datatypes ((V!22982 0))(
  ( (V!22983 (val!32855 Int)) )
))
(declare-fun value!3131 () V!22982)

(declare-datatypes ((K!22728 0))(
  ( (K!22729 (val!32856 Int)) )
))
(declare-datatypes ((tuple2!70820 0))(
  ( (tuple2!70821 (_1!38713 K!22728) (_2!38713 V!22982)) )
))
(declare-datatypes ((List!75619 0))(
  ( (Nil!75493) (Cons!75493 (h!81941 tuple2!70820) (t!391391 List!75619)) )
))
(declare-fun l!14636 () List!75619)

(declare-fun key!6222 () K!22728)

(declare-fun contains!21122 (List!75619 tuple2!70820) Bool)

(assert (=> b!8049435 (= res!3182198 (contains!21122 l!14636 (tuple2!70821 key!6222 value!3131)))))

(declare-fun b!8049437 () Bool)

(declare-fun e!4742856 () Bool)

(declare-fun e!4742855 () Bool)

(assert (=> b!8049437 (= e!4742856 e!4742855)))

(declare-fun res!3182196 () Bool)

(assert (=> b!8049437 (=> (not res!3182196) (not e!4742855))))

(declare-fun e!4742857 () Bool)

(assert (=> b!8049437 (= res!3182196 e!4742857)))

(declare-fun res!3182192 () Bool)

(assert (=> b!8049437 (=> res!3182192 e!4742857)))

(declare-fun e!4742853 () Bool)

(assert (=> b!8049437 (= res!3182192 e!4742853)))

(declare-fun res!3182193 () Bool)

(assert (=> b!8049437 (=> (not res!3182193) (not e!4742853))))

(declare-fun lt!2723614 () Bool)

(assert (=> b!8049437 (= res!3182193 (not lt!2723614))))

(declare-fun lt!2723612 () Bool)

(assert (=> b!8049437 (= lt!2723614 (not lt!2723612))))

(declare-datatypes ((ListMap!7223 0))(
  ( (ListMap!7224 (toList!11886 List!75619)) )
))
(declare-fun acc!1298 () ListMap!7223)

(declare-fun contains!21123 (ListMap!7223 K!22728) Bool)

(assert (=> b!8049437 (= lt!2723612 (contains!21123 acc!1298 key!6222))))

(declare-fun b!8049438 () Bool)

(declare-fun e!4742860 () Bool)

(assert (=> b!8049438 (= e!4742860 (not true))))

(declare-fun lt!2723616 () ListMap!7223)

(assert (=> b!8049438 (contains!21123 lt!2723616 key!6222)))

(declare-datatypes ((Unit!171268 0))(
  ( (Unit!171269) )
))
(declare-fun lt!2723613 () Unit!171268)

(declare-fun addStillContains!31 (ListMap!7223 K!22728 V!22982 K!22728) Unit!171268)

(assert (=> b!8049438 (= lt!2723613 (addStillContains!31 acc!1298 (_1!38713 (h!81941 l!14636)) (_2!38713 (h!81941 l!14636)) key!6222))))

(declare-fun b!8049439 () Bool)

(declare-fun res!3182191 () Bool)

(assert (=> b!8049439 (=> (not res!3182191) (not e!4742853))))

(declare-fun apply!14399 (ListMap!7223 K!22728) V!22982)

(assert (=> b!8049439 (= res!3182191 (= (apply!14399 acc!1298 key!6222) value!3131))))

(declare-fun b!8049440 () Bool)

(assert (=> b!8049440 (= e!4742857 e!4742858)))

(declare-fun res!3182194 () Bool)

(assert (=> b!8049440 (=> (not res!3182194) (not e!4742858))))

(declare-fun containsKey!4800 (List!75619 K!22728) Bool)

(assert (=> b!8049440 (= res!3182194 (containsKey!4800 l!14636 key!6222))))

(declare-fun b!8049441 () Bool)

(assert (=> b!8049441 (= e!4742858 (not lt!2723612))))

(declare-fun tp_is_empty!54763 () Bool)

(declare-fun tp!2413457 () Bool)

(declare-fun tp_is_empty!54765 () Bool)

(declare-fun e!4742854 () Bool)

(declare-fun b!8049442 () Bool)

(assert (=> b!8049442 (= e!4742854 (and tp_is_empty!54763 tp_is_empty!54765 tp!2413457))))

(declare-fun b!8049443 () Bool)

(assert (=> b!8049443 (= e!4742855 e!4742860)))

(declare-fun res!3182197 () Bool)

(assert (=> b!8049443 (=> (not res!3182197) (not e!4742860))))

(assert (=> b!8049443 (= res!3182197 (and (not (= (_1!38713 (h!81941 l!14636)) key!6222)) (not lt!2723614)))))

(declare-fun lt!2723615 () ListMap!7223)

(declare-fun addToMapMapFromBucket!1953 (List!75619 ListMap!7223) ListMap!7223)

(assert (=> b!8049443 (= lt!2723615 (addToMapMapFromBucket!1953 (t!391391 l!14636) lt!2723616))))

(declare-fun +!2638 (ListMap!7223 tuple2!70820) ListMap!7223)

(assert (=> b!8049443 (= lt!2723616 (+!2638 acc!1298 (h!81941 l!14636)))))

(declare-fun b!8049444 () Bool)

(declare-fun res!3182195 () Bool)

(assert (=> b!8049444 (=> (not res!3182195) (not e!4742855))))

(get-info :version)

(assert (=> b!8049444 (= res!3182195 (not ((_ is Nil!75493) l!14636)))))

(declare-fun res!3182190 () Bool)

(assert (=> start!758050 (=> (not res!3182190) (not e!4742856))))

(declare-fun noDuplicateKeys!2672 (List!75619) Bool)

(assert (=> start!758050 (= res!3182190 (noDuplicateKeys!2672 l!14636))))

(assert (=> start!758050 e!4742856))

(assert (=> start!758050 e!4742854))

(declare-fun e!4742859 () Bool)

(declare-fun inv!97217 (ListMap!7223) Bool)

(assert (=> start!758050 (and (inv!97217 acc!1298) e!4742859)))

(assert (=> start!758050 tp_is_empty!54763))

(assert (=> start!758050 tp_is_empty!54765))

(declare-fun b!8049436 () Bool)

(declare-fun tp!2413456 () Bool)

(assert (=> b!8049436 (= e!4742859 tp!2413456)))

(declare-fun b!8049445 () Bool)

(assert (=> b!8049445 (= e!4742853 (not (containsKey!4800 l!14636 key!6222)))))

(declare-fun b!8049446 () Bool)

(declare-fun res!3182189 () Bool)

(assert (=> b!8049446 (=> (not res!3182189) (not e!4742856))))

(assert (=> b!8049446 (= res!3182189 (contains!21123 (addToMapMapFromBucket!1953 l!14636 acc!1298) key!6222))))

(assert (= (and start!758050 res!3182190) b!8049446))

(assert (= (and b!8049446 res!3182189) b!8049437))

(assert (= (and b!8049437 res!3182193) b!8049439))

(assert (= (and b!8049439 res!3182191) b!8049445))

(assert (= (and b!8049437 (not res!3182192)) b!8049440))

(assert (= (and b!8049440 res!3182194) b!8049435))

(assert (= (and b!8049435 res!3182198) b!8049441))

(assert (= (and b!8049437 res!3182196) b!8049444))

(assert (= (and b!8049444 res!3182195) b!8049443))

(assert (= (and b!8049443 res!3182197) b!8049438))

(assert (= (and start!758050 ((_ is Cons!75493) l!14636)) b!8049442))

(assert (= start!758050 b!8049436))

(declare-fun m!8400460 () Bool)

(assert (=> b!8049437 m!8400460))

(declare-fun m!8400462 () Bool)

(assert (=> b!8049446 m!8400462))

(assert (=> b!8049446 m!8400462))

(declare-fun m!8400464 () Bool)

(assert (=> b!8049446 m!8400464))

(declare-fun m!8400466 () Bool)

(assert (=> b!8049443 m!8400466))

(declare-fun m!8400468 () Bool)

(assert (=> b!8049443 m!8400468))

(declare-fun m!8400470 () Bool)

(assert (=> b!8049438 m!8400470))

(declare-fun m!8400472 () Bool)

(assert (=> b!8049438 m!8400472))

(declare-fun m!8400474 () Bool)

(assert (=> start!758050 m!8400474))

(declare-fun m!8400476 () Bool)

(assert (=> start!758050 m!8400476))

(declare-fun m!8400478 () Bool)

(assert (=> b!8049445 m!8400478))

(declare-fun m!8400480 () Bool)

(assert (=> b!8049435 m!8400480))

(assert (=> b!8049440 m!8400478))

(declare-fun m!8400482 () Bool)

(assert (=> b!8049439 m!8400482))

(check-sat (not b!8049437) (not b!8049435) (not b!8049442) tp_is_empty!54763 (not b!8049438) tp_is_empty!54765 (not b!8049445) (not b!8049443) (not b!8049439) (not start!758050) (not b!8049436) (not b!8049446) (not b!8049440))
(check-sat)
