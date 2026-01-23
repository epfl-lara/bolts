; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423144 () Bool)

(assert start!423144)

(declare-fun b!4364651 () Bool)

(declare-fun e!2716385 () Bool)

(declare-fun tp!1330569 () Bool)

(assert (=> b!4364651 (= e!2716385 tp!1330569)))

(declare-fun b!4364652 () Bool)

(declare-fun e!2716381 () Bool)

(declare-datatypes ((V!10641 0))(
  ( (V!10642 (val!16587 Int)) )
))
(declare-datatypes ((K!10395 0))(
  ( (K!10396 (val!16588 Int)) )
))
(declare-datatypes ((tuple2!48494 0))(
  ( (tuple2!48495 (_1!27541 K!10395) (_2!27541 V!10641)) )
))
(declare-datatypes ((List!49157 0))(
  ( (Nil!49033) (Cons!49033 (h!54602 tuple2!48494) (t!356077 List!49157)) )
))
(declare-datatypes ((tuple2!48496 0))(
  ( (tuple2!48497 (_1!27542 (_ BitVec 64)) (_2!27542 List!49157)) )
))
(declare-datatypes ((List!49158 0))(
  ( (Nil!49034) (Cons!49034 (h!54603 tuple2!48496) (t!356078 List!49158)) )
))
(declare-datatypes ((ListLongMap!1695 0))(
  ( (ListLongMap!1696 (toList!3045 List!49158)) )
))
(declare-fun lt!1577284 () ListLongMap!1695)

(declare-fun lambda!142379 () Int)

(declare-fun forall!9186 (List!49158 Int) Bool)

(assert (=> b!4364652 (= e!2716381 (forall!9186 (toList!3045 lt!1577284) lambda!142379))))

(declare-fun b!4364653 () Bool)

(declare-fun res!1795222 () Bool)

(declare-fun e!2716386 () Bool)

(assert (=> b!4364653 (=> (not res!1795222) (not e!2716386))))

(declare-fun lm!1707 () ListLongMap!1695)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11297 (ListLongMap!1695 (_ BitVec 64)) Bool)

(assert (=> b!4364653 (= res!1795222 (contains!11297 lm!1707 hash!377))))

(declare-fun b!4364654 () Bool)

(declare-fun tp_is_empty!25361 () Bool)

(declare-fun tp!1330570 () Bool)

(declare-fun e!2716382 () Bool)

(declare-fun tp_is_empty!25363 () Bool)

(assert (=> b!4364654 (= e!2716382 (and tp_is_empty!25361 tp_is_empty!25363 tp!1330570))))

(declare-fun b!4364655 () Bool)

(declare-fun res!1795219 () Bool)

(assert (=> b!4364655 (=> (not res!1795219) (not e!2716386))))

(declare-datatypes ((Hashable!4923 0))(
  ( (HashableExt!4922 (__x!30626 Int)) )
))
(declare-fun hashF!1247 () Hashable!4923)

(declare-fun key!3918 () K!10395)

(declare-fun hash!1665 (Hashable!4923 K!10395) (_ BitVec 64))

(assert (=> b!4364655 (= res!1795219 (= (hash!1665 hashF!1247 key!3918) hash!377))))

(declare-fun b!4364657 () Bool)

(declare-fun res!1795220 () Bool)

(assert (=> b!4364657 (=> (not res!1795220) (not e!2716386))))

(declare-fun allKeysSameHashInMap!635 (ListLongMap!1695 Hashable!4923) Bool)

(assert (=> b!4364657 (= res!1795220 (allKeysSameHashInMap!635 lm!1707 hashF!1247))))

(declare-fun b!4364658 () Bool)

(declare-fun e!2716383 () Bool)

(assert (=> b!4364658 (= e!2716383 (forall!9186 (toList!3045 lm!1707) lambda!142379))))

(declare-datatypes ((ListMap!2289 0))(
  ( (ListMap!2290 (toList!3046 List!49157)) )
))
(declare-fun lt!1577280 () ListMap!2289)

(declare-fun extractMap!590 (List!49158) ListMap!2289)

(assert (=> b!4364658 (= lt!1577280 (extractMap!590 (toList!3045 lt!1577284)))))

(declare-fun b!4364659 () Bool)

(declare-fun res!1795227 () Bool)

(assert (=> b!4364659 (=> (not res!1795227) (not e!2716386))))

(declare-fun newBucket!200 () List!49157)

(declare-fun allKeysSameHash!489 (List!49157 (_ BitVec 64) Hashable!4923) Bool)

(assert (=> b!4364659 (= res!1795227 (allKeysSameHash!489 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4364660 () Bool)

(declare-fun e!2716384 () Bool)

(assert (=> b!4364660 (= e!2716384 e!2716383)))

(declare-fun res!1795224 () Bool)

(assert (=> b!4364660 (=> res!1795224 e!2716383)))

(get-info :version)

(assert (=> b!4364660 (= res!1795224 (or (and ((_ is Cons!49034) (toList!3045 lm!1707)) (= (_1!27542 (h!54603 (toList!3045 lm!1707))) hash!377)) (and ((_ is Cons!49034) (toList!3045 lm!1707)) (not (= (_1!27542 (h!54603 (toList!3045 lm!1707))) hash!377))) ((_ is Nil!49034) (toList!3045 lm!1707))))))

(assert (=> b!4364660 e!2716381))

(declare-fun res!1795226 () Bool)

(assert (=> b!4364660 (=> (not res!1795226) (not e!2716381))))

(assert (=> b!4364660 (= res!1795226 (forall!9186 (toList!3045 lt!1577284) lambda!142379))))

(declare-fun +!712 (ListLongMap!1695 tuple2!48496) ListLongMap!1695)

(assert (=> b!4364660 (= lt!1577284 (+!712 lm!1707 (tuple2!48497 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!72889 0))(
  ( (Unit!72890) )
))
(declare-fun lt!1577278 () Unit!72889)

(declare-fun addValidProp!185 (ListLongMap!1695 Int (_ BitVec 64) List!49157) Unit!72889)

(assert (=> b!4364660 (= lt!1577278 (addValidProp!185 lm!1707 lambda!142379 hash!377 newBucket!200))))

(assert (=> b!4364660 (forall!9186 (toList!3045 lm!1707) lambda!142379)))

(declare-fun b!4364661 () Bool)

(declare-fun res!1795221 () Bool)

(assert (=> b!4364661 (=> (not res!1795221) (not e!2716386))))

(declare-fun contains!11298 (ListMap!2289 K!10395) Bool)

(assert (=> b!4364661 (= res!1795221 (contains!11298 (extractMap!590 (toList!3045 lm!1707)) key!3918))))

(declare-fun b!4364662 () Bool)

(declare-fun res!1795223 () Bool)

(assert (=> b!4364662 (=> res!1795223 e!2716384)))

(declare-fun noDuplicateKeys!531 (List!49157) Bool)

(assert (=> b!4364662 (= res!1795223 (not (noDuplicateKeys!531 newBucket!200)))))

(declare-fun res!1795225 () Bool)

(assert (=> start!423144 (=> (not res!1795225) (not e!2716386))))

(assert (=> start!423144 (= res!1795225 (forall!9186 (toList!3045 lm!1707) lambda!142379))))

(assert (=> start!423144 e!2716386))

(assert (=> start!423144 e!2716382))

(assert (=> start!423144 true))

(declare-fun inv!64581 (ListLongMap!1695) Bool)

(assert (=> start!423144 (and (inv!64581 lm!1707) e!2716385)))

(assert (=> start!423144 tp_is_empty!25361))

(assert (=> start!423144 tp_is_empty!25363))

(declare-fun b!4364656 () Bool)

(assert (=> b!4364656 (= e!2716386 (not e!2716384))))

(declare-fun res!1795218 () Bool)

(assert (=> b!4364656 (=> res!1795218 e!2716384)))

(declare-fun lt!1577283 () List!49157)

(declare-fun newValue!99 () V!10641)

(declare-fun removePairForKey!501 (List!49157 K!10395) List!49157)

(assert (=> b!4364656 (= res!1795218 (not (= newBucket!200 (Cons!49033 (tuple2!48495 key!3918 newValue!99) (removePairForKey!501 lt!1577283 key!3918)))))))

(declare-fun lt!1577282 () Unit!72889)

(declare-fun lt!1577281 () tuple2!48496)

(declare-fun forallContained!1827 (List!49158 Int tuple2!48496) Unit!72889)

(assert (=> b!4364656 (= lt!1577282 (forallContained!1827 (toList!3045 lm!1707) lambda!142379 lt!1577281))))

(declare-fun contains!11299 (List!49158 tuple2!48496) Bool)

(assert (=> b!4364656 (contains!11299 (toList!3045 lm!1707) lt!1577281)))

(assert (=> b!4364656 (= lt!1577281 (tuple2!48497 hash!377 lt!1577283))))

(declare-fun lt!1577279 () Unit!72889)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!378 (List!49158 (_ BitVec 64) List!49157) Unit!72889)

(assert (=> b!4364656 (= lt!1577279 (lemmaGetValueByKeyImpliesContainsTuple!378 (toList!3045 lm!1707) hash!377 lt!1577283))))

(declare-fun apply!11383 (ListLongMap!1695 (_ BitVec 64)) List!49157)

(assert (=> b!4364656 (= lt!1577283 (apply!11383 lm!1707 hash!377))))

(assert (= (and start!423144 res!1795225) b!4364657))

(assert (= (and b!4364657 res!1795220) b!4364655))

(assert (= (and b!4364655 res!1795219) b!4364659))

(assert (= (and b!4364659 res!1795227) b!4364661))

(assert (= (and b!4364661 res!1795221) b!4364653))

(assert (= (and b!4364653 res!1795222) b!4364656))

(assert (= (and b!4364656 (not res!1795218)) b!4364662))

(assert (= (and b!4364662 (not res!1795223)) b!4364660))

(assert (= (and b!4364660 res!1795226) b!4364652))

(assert (= (and b!4364660 (not res!1795224)) b!4364658))

(assert (= (and start!423144 ((_ is Cons!49033) newBucket!200)) b!4364654))

(assert (= start!423144 b!4364651))

(declare-fun m!4986435 () Bool)

(assert (=> b!4364657 m!4986435))

(declare-fun m!4986437 () Bool)

(assert (=> b!4364658 m!4986437))

(declare-fun m!4986439 () Bool)

(assert (=> b!4364658 m!4986439))

(assert (=> start!423144 m!4986437))

(declare-fun m!4986441 () Bool)

(assert (=> start!423144 m!4986441))

(declare-fun m!4986443 () Bool)

(assert (=> b!4364653 m!4986443))

(declare-fun m!4986445 () Bool)

(assert (=> b!4364652 m!4986445))

(assert (=> b!4364660 m!4986445))

(declare-fun m!4986447 () Bool)

(assert (=> b!4364660 m!4986447))

(declare-fun m!4986449 () Bool)

(assert (=> b!4364660 m!4986449))

(assert (=> b!4364660 m!4986437))

(declare-fun m!4986451 () Bool)

(assert (=> b!4364661 m!4986451))

(assert (=> b!4364661 m!4986451))

(declare-fun m!4986453 () Bool)

(assert (=> b!4364661 m!4986453))

(declare-fun m!4986455 () Bool)

(assert (=> b!4364655 m!4986455))

(declare-fun m!4986457 () Bool)

(assert (=> b!4364656 m!4986457))

(declare-fun m!4986459 () Bool)

(assert (=> b!4364656 m!4986459))

(declare-fun m!4986461 () Bool)

(assert (=> b!4364656 m!4986461))

(declare-fun m!4986463 () Bool)

(assert (=> b!4364656 m!4986463))

(declare-fun m!4986465 () Bool)

(assert (=> b!4364656 m!4986465))

(declare-fun m!4986467 () Bool)

(assert (=> b!4364662 m!4986467))

(declare-fun m!4986469 () Bool)

(assert (=> b!4364659 m!4986469))

(check-sat (not b!4364652) tp_is_empty!25361 (not b!4364656) (not b!4364660) (not b!4364659) (not b!4364654) (not b!4364655) (not start!423144) (not b!4364657) (not b!4364662) (not b!4364653) (not b!4364651) (not b!4364661) tp_is_empty!25363 (not b!4364658))
(check-sat)
