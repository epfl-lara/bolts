; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758046 () Bool)

(assert start!758046)

(declare-fun b!8049364 () Bool)

(declare-fun e!4742808 () Bool)

(declare-datatypes ((K!22723 0))(
  ( (K!22724 (val!32851 Int)) )
))
(declare-datatypes ((V!22977 0))(
  ( (V!22978 (val!32852 Int)) )
))
(declare-datatypes ((tuple2!70816 0))(
  ( (tuple2!70817 (_1!38711 K!22723) (_2!38711 V!22977)) )
))
(declare-datatypes ((List!75617 0))(
  ( (Nil!75491) (Cons!75491 (h!81939 tuple2!70816) (t!391389 List!75617)) )
))
(declare-fun l!14636 () List!75617)

(declare-fun key!6222 () K!22723)

(declare-fun containsKey!4798 (List!75617 K!22723) Bool)

(assert (=> b!8049364 (= e!4742808 (not (containsKey!4798 l!14636 key!6222)))))

(declare-fun b!8049365 () Bool)

(declare-fun res!3182137 () Bool)

(declare-fun e!4742807 () Bool)

(assert (=> b!8049365 (=> (not res!3182137) (not e!4742807))))

(get-info :version)

(assert (=> b!8049365 (= res!3182137 (not ((_ is Nil!75491) l!14636)))))

(declare-fun b!8049366 () Bool)

(declare-fun res!3182136 () Bool)

(declare-fun e!4742809 () Bool)

(assert (=> b!8049366 (=> (not res!3182136) (not e!4742809))))

(declare-datatypes ((ListMap!7219 0))(
  ( (ListMap!7220 (toList!11884 List!75617)) )
))
(declare-fun acc!1298 () ListMap!7219)

(declare-fun contains!21118 (ListMap!7219 K!22723) Bool)

(declare-fun addToMapMapFromBucket!1951 (List!75617 ListMap!7219) ListMap!7219)

(assert (=> b!8049366 (= res!3182136 (contains!21118 (addToMapMapFromBucket!1951 l!14636 acc!1298) key!6222))))

(declare-fun res!3182131 () Bool)

(assert (=> start!758046 (=> (not res!3182131) (not e!4742809))))

(declare-fun noDuplicateKeys!2670 (List!75617) Bool)

(assert (=> start!758046 (= res!3182131 (noDuplicateKeys!2670 l!14636))))

(assert (=> start!758046 e!4742809))

(declare-fun e!4742806 () Bool)

(assert (=> start!758046 e!4742806))

(declare-fun e!4742812 () Bool)

(declare-fun inv!97212 (ListMap!7219) Bool)

(assert (=> start!758046 (and (inv!97212 acc!1298) e!4742812)))

(declare-fun tp_is_empty!54755 () Bool)

(assert (=> start!758046 tp_is_empty!54755))

(declare-fun tp_is_empty!54757 () Bool)

(assert (=> start!758046 tp_is_empty!54757))

(declare-fun b!8049367 () Bool)

(assert (=> b!8049367 (= e!4742807 false)))

(declare-fun lt!2723586 () ListMap!7219)

(declare-fun +!2636 (ListMap!7219 tuple2!70816) ListMap!7219)

(assert (=> b!8049367 (= lt!2723586 (addToMapMapFromBucket!1951 (t!391389 l!14636) (+!2636 acc!1298 (h!81939 l!14636))))))

(declare-fun b!8049368 () Bool)

(declare-fun res!3182138 () Bool)

(assert (=> b!8049368 (=> (not res!3182138) (not e!4742808))))

(declare-fun value!3131 () V!22977)

(declare-fun apply!14397 (ListMap!7219 K!22723) V!22977)

(assert (=> b!8049368 (= res!3182138 (= (apply!14397 acc!1298 key!6222) value!3131))))

(declare-fun b!8049369 () Bool)

(declare-fun e!4742810 () Bool)

(declare-fun lt!2723585 () Bool)

(assert (=> b!8049369 (= e!4742810 (not lt!2723585))))

(declare-fun b!8049370 () Bool)

(assert (=> b!8049370 (= e!4742809 e!4742807)))

(declare-fun res!3182132 () Bool)

(assert (=> b!8049370 (=> (not res!3182132) (not e!4742807))))

(declare-fun e!4742811 () Bool)

(assert (=> b!8049370 (= res!3182132 e!4742811)))

(declare-fun res!3182133 () Bool)

(assert (=> b!8049370 (=> res!3182133 e!4742811)))

(assert (=> b!8049370 (= res!3182133 e!4742808)))

(declare-fun res!3182135 () Bool)

(assert (=> b!8049370 (=> (not res!3182135) (not e!4742808))))

(assert (=> b!8049370 (= res!3182135 lt!2723585)))

(assert (=> b!8049370 (= lt!2723585 (contains!21118 acc!1298 key!6222))))

(declare-fun b!8049371 () Bool)

(declare-fun res!3182134 () Bool)

(assert (=> b!8049371 (=> (not res!3182134) (not e!4742810))))

(declare-fun contains!21119 (List!75617 tuple2!70816) Bool)

(assert (=> b!8049371 (= res!3182134 (contains!21119 l!14636 (tuple2!70817 key!6222 value!3131)))))

(declare-fun b!8049372 () Bool)

(assert (=> b!8049372 (= e!4742811 e!4742810)))

(declare-fun res!3182130 () Bool)

(assert (=> b!8049372 (=> (not res!3182130) (not e!4742810))))

(assert (=> b!8049372 (= res!3182130 (containsKey!4798 l!14636 key!6222))))

(declare-fun b!8049373 () Bool)

(declare-fun tp!2413445 () Bool)

(assert (=> b!8049373 (= e!4742812 tp!2413445)))

(declare-fun tp!2413444 () Bool)

(declare-fun b!8049374 () Bool)

(assert (=> b!8049374 (= e!4742806 (and tp_is_empty!54755 tp_is_empty!54757 tp!2413444))))

(assert (= (and start!758046 res!3182131) b!8049366))

(assert (= (and b!8049366 res!3182136) b!8049370))

(assert (= (and b!8049370 res!3182135) b!8049368))

(assert (= (and b!8049368 res!3182138) b!8049364))

(assert (= (and b!8049370 (not res!3182133)) b!8049372))

(assert (= (and b!8049372 res!3182130) b!8049371))

(assert (= (and b!8049371 res!3182134) b!8049369))

(assert (= (and b!8049370 res!3182132) b!8049365))

(assert (= (and b!8049365 res!3182137) b!8049367))

(assert (= (and start!758046 ((_ is Cons!75491) l!14636)) b!8049374))

(assert (= start!758046 b!8049373))

(declare-fun m!8400416 () Bool)

(assert (=> b!8049366 m!8400416))

(assert (=> b!8049366 m!8400416))

(declare-fun m!8400418 () Bool)

(assert (=> b!8049366 m!8400418))

(declare-fun m!8400420 () Bool)

(assert (=> b!8049372 m!8400420))

(assert (=> b!8049364 m!8400420))

(declare-fun m!8400422 () Bool)

(assert (=> b!8049368 m!8400422))

(declare-fun m!8400424 () Bool)

(assert (=> start!758046 m!8400424))

(declare-fun m!8400426 () Bool)

(assert (=> start!758046 m!8400426))

(declare-fun m!8400428 () Bool)

(assert (=> b!8049367 m!8400428))

(assert (=> b!8049367 m!8400428))

(declare-fun m!8400430 () Bool)

(assert (=> b!8049367 m!8400430))

(declare-fun m!8400432 () Bool)

(assert (=> b!8049370 m!8400432))

(declare-fun m!8400434 () Bool)

(assert (=> b!8049371 m!8400434))

(check-sat (not b!8049373) (not start!758046) (not b!8049374) (not b!8049368) (not b!8049371) (not b!8049370) (not b!8049367) tp_is_empty!54755 (not b!8049364) tp_is_empty!54757 (not b!8049366) (not b!8049372))
(check-sat)
