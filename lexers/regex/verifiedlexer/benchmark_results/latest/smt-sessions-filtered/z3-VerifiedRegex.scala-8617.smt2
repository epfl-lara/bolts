; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!459672 () Bool)

(assert start!459672)

(declare-fun b!4603221 () Bool)

(declare-fun res!1925866 () Bool)

(declare-fun e!2871323 () Bool)

(assert (=> b!4603221 (=> res!1925866 e!2871323)))

(declare-datatypes ((K!12490 0))(
  ( (K!12491 (val!18263 Int)) )
))
(declare-datatypes ((V!12736 0))(
  ( (V!12737 (val!18264 Int)) )
))
(declare-datatypes ((tuple2!51794 0))(
  ( (tuple2!51795 (_1!29191 K!12490) (_2!29191 V!12736)) )
))
(declare-datatypes ((List!51248 0))(
  ( (Nil!51124) (Cons!51124 (h!57098 tuple2!51794) (t!358242 List!51248)) )
))
(declare-fun newBucket!178 () List!51248)

(declare-fun noDuplicateKeys!1336 (List!51248) Bool)

(assert (=> b!4603221 (= res!1925866 (not (noDuplicateKeys!1336 newBucket!178)))))

(declare-fun res!1925867 () Bool)

(declare-fun e!2871321 () Bool)

(assert (=> start!459672 (=> (not res!1925867) (not e!2871321))))

(declare-datatypes ((tuple2!51796 0))(
  ( (tuple2!51797 (_1!29192 (_ BitVec 64)) (_2!29192 List!51248)) )
))
(declare-datatypes ((List!51249 0))(
  ( (Nil!51125) (Cons!51125 (h!57099 tuple2!51796) (t!358243 List!51249)) )
))
(declare-datatypes ((ListLongMap!3319 0))(
  ( (ListLongMap!3320 (toList!4687 List!51249)) )
))
(declare-fun lm!1477 () ListLongMap!3319)

(declare-fun lambda!187006 () Int)

(declare-fun forall!10632 (List!51249 Int) Bool)

(assert (=> start!459672 (= res!1925867 (forall!10632 (toList!4687 lm!1477) lambda!187006))))

(assert (=> start!459672 e!2871321))

(assert (=> start!459672 true))

(declare-fun e!2871322 () Bool)

(declare-fun inv!66674 (ListLongMap!3319) Bool)

(assert (=> start!459672 (and (inv!66674 lm!1477) e!2871322)))

(declare-fun tp_is_empty!28637 () Bool)

(assert (=> start!459672 tp_is_empty!28637))

(declare-fun e!2871325 () Bool)

(assert (=> start!459672 e!2871325))

(declare-fun b!4603222 () Bool)

(declare-fun res!1925871 () Bool)

(declare-fun e!2871324 () Bool)

(assert (=> b!4603222 (=> res!1925871 e!2871324)))

(declare-fun lt!1761866 () tuple2!51796)

(declare-fun contains!14095 (List!51249 tuple2!51796) Bool)

(assert (=> b!4603222 (= res!1925871 (not (contains!14095 (t!358243 (toList!4687 lm!1477)) lt!1761866)))))

(declare-fun b!4603223 () Bool)

(declare-fun res!1925874 () Bool)

(assert (=> b!4603223 (=> (not res!1925874) (not e!2871321))))

(declare-fun key!3287 () K!12490)

(declare-datatypes ((ListMap!3949 0))(
  ( (ListMap!3950 (toList!4688 List!51248)) )
))
(declare-fun contains!14096 (ListMap!3949 K!12490) Bool)

(declare-fun extractMap!1396 (List!51249) ListMap!3949)

(assert (=> b!4603223 (= res!1925874 (contains!14096 (extractMap!1396 (toList!4687 lm!1477)) key!3287))))

(declare-fun b!4603224 () Bool)

(declare-fun res!1925876 () Bool)

(assert (=> b!4603224 (=> res!1925876 e!2871324)))

(declare-fun lt!1761865 () List!51248)

(declare-fun containsKey!2192 (List!51248 K!12490) Bool)

(assert (=> b!4603224 (= res!1925876 (containsKey!2192 lt!1761865 key!3287))))

(declare-fun b!4603225 () Bool)

(declare-fun tp!1340638 () Bool)

(assert (=> b!4603225 (= e!2871322 tp!1340638)))

(declare-fun b!4603226 () Bool)

(declare-fun res!1925869 () Bool)

(assert (=> b!4603226 (=> res!1925869 e!2871323)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4603226 (= res!1925869 (or ((_ is Nil!51125) (toList!4687 lm!1477)) (= (_1!29192 (h!57099 (toList!4687 lm!1477))) hash!344)))))

(declare-fun b!4603227 () Bool)

(declare-fun res!1925868 () Bool)

(declare-fun e!2871326 () Bool)

(assert (=> b!4603227 (=> (not res!1925868) (not e!2871326))))

(declare-datatypes ((Hashable!5735 0))(
  ( (HashableExt!5734 (__x!31438 Int)) )
))
(declare-fun hashF!1107 () Hashable!5735)

(declare-fun allKeysSameHash!1192 (List!51248 (_ BitVec 64) Hashable!5735) Bool)

(assert (=> b!4603227 (= res!1925868 (allKeysSameHash!1192 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4603228 () Bool)

(assert (=> b!4603228 (= e!2871323 e!2871324)))

(declare-fun res!1925873 () Bool)

(assert (=> b!4603228 (=> res!1925873 e!2871324)))

(declare-fun lt!1761871 () ListLongMap!3319)

(declare-fun contains!14097 (ListLongMap!3319 (_ BitVec 64)) Bool)

(assert (=> b!4603228 (= res!1925873 (not (contains!14097 lt!1761871 hash!344)))))

(declare-fun tail!7979 (ListLongMap!3319) ListLongMap!3319)

(assert (=> b!4603228 (= lt!1761871 (tail!7979 lm!1477))))

(declare-fun b!4603229 () Bool)

(assert (=> b!4603229 (= e!2871321 e!2871326)))

(declare-fun res!1925872 () Bool)

(assert (=> b!4603229 (=> (not res!1925872) (not e!2871326))))

(declare-fun lt!1761869 () (_ BitVec 64))

(assert (=> b!4603229 (= res!1925872 (= lt!1761869 hash!344))))

(declare-fun hash!3257 (Hashable!5735 K!12490) (_ BitVec 64))

(assert (=> b!4603229 (= lt!1761869 (hash!3257 hashF!1107 key!3287))))

(declare-fun b!4603230 () Bool)

(declare-fun res!1925865 () Bool)

(assert (=> b!4603230 (=> (not res!1925865) (not e!2871321))))

(declare-fun allKeysSameHashInMap!1447 (ListLongMap!3319 Hashable!5735) Bool)

(assert (=> b!4603230 (= res!1925865 (allKeysSameHashInMap!1447 lm!1477 hashF!1107))))

(declare-fun b!4603231 () Bool)

(declare-fun res!1925870 () Bool)

(assert (=> b!4603231 (=> res!1925870 e!2871324)))

(declare-fun apply!12073 (ListLongMap!3319 (_ BitVec 64)) List!51248)

(assert (=> b!4603231 (= res!1925870 (not (= (apply!12073 lt!1761871 hash!344) lt!1761865)))))

(declare-fun tp_is_empty!28639 () Bool)

(declare-fun tp!1340639 () Bool)

(declare-fun b!4603232 () Bool)

(assert (=> b!4603232 (= e!2871325 (and tp_is_empty!28637 tp_is_empty!28639 tp!1340639))))

(declare-fun b!4603233 () Bool)

(assert (=> b!4603233 (= e!2871324 (forall!10632 (toList!4687 lm!1477) lambda!187006))))

(declare-fun b!4603234 () Bool)

(assert (=> b!4603234 (= e!2871326 (not e!2871323))))

(declare-fun res!1925875 () Bool)

(assert (=> b!4603234 (=> res!1925875 e!2871323)))

(declare-fun removePairForKey!961 (List!51248 K!12490) List!51248)

(assert (=> b!4603234 (= res!1925875 (not (= newBucket!178 (removePairForKey!961 lt!1761865 key!3287))))))

(declare-datatypes ((Unit!108807 0))(
  ( (Unit!108808) )
))
(declare-fun lt!1761870 () Unit!108807)

(declare-fun forallContained!2881 (List!51249 Int tuple2!51796) Unit!108807)

(assert (=> b!4603234 (= lt!1761870 (forallContained!2881 (toList!4687 lm!1477) lambda!187006 lt!1761866))))

(assert (=> b!4603234 (contains!14095 (toList!4687 lm!1477) lt!1761866)))

(assert (=> b!4603234 (= lt!1761866 (tuple2!51797 hash!344 lt!1761865))))

(declare-fun lt!1761867 () Unit!108807)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!846 (List!51249 (_ BitVec 64) List!51248) Unit!108807)

(assert (=> b!4603234 (= lt!1761867 (lemmaGetValueByKeyImpliesContainsTuple!846 (toList!4687 lm!1477) hash!344 lt!1761865))))

(assert (=> b!4603234 (= lt!1761865 (apply!12073 lm!1477 hash!344))))

(assert (=> b!4603234 (contains!14097 lm!1477 lt!1761869)))

(declare-fun lt!1761868 () Unit!108807)

(declare-fun lemmaInGenMapThenLongMapContainsHash!410 (ListLongMap!3319 K!12490 Hashable!5735) Unit!108807)

(assert (=> b!4603234 (= lt!1761868 (lemmaInGenMapThenLongMapContainsHash!410 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!459672 res!1925867) b!4603230))

(assert (= (and b!4603230 res!1925865) b!4603223))

(assert (= (and b!4603223 res!1925874) b!4603229))

(assert (= (and b!4603229 res!1925872) b!4603227))

(assert (= (and b!4603227 res!1925868) b!4603234))

(assert (= (and b!4603234 (not res!1925875)) b!4603221))

(assert (= (and b!4603221 (not res!1925866)) b!4603226))

(assert (= (and b!4603226 (not res!1925869)) b!4603228))

(assert (= (and b!4603228 (not res!1925873)) b!4603231))

(assert (= (and b!4603231 (not res!1925870)) b!4603222))

(assert (= (and b!4603222 (not res!1925871)) b!4603224))

(assert (= (and b!4603224 (not res!1925876)) b!4603233))

(assert (= start!459672 b!4603225))

(assert (= (and start!459672 ((_ is Cons!51124) newBucket!178)) b!4603232))

(declare-fun m!5432337 () Bool)

(assert (=> b!4603227 m!5432337))

(declare-fun m!5432339 () Bool)

(assert (=> start!459672 m!5432339))

(declare-fun m!5432341 () Bool)

(assert (=> start!459672 m!5432341))

(declare-fun m!5432343 () Bool)

(assert (=> b!4603229 m!5432343))

(declare-fun m!5432345 () Bool)

(assert (=> b!4603221 m!5432345))

(declare-fun m!5432347 () Bool)

(assert (=> b!4603234 m!5432347))

(declare-fun m!5432349 () Bool)

(assert (=> b!4603234 m!5432349))

(declare-fun m!5432351 () Bool)

(assert (=> b!4603234 m!5432351))

(declare-fun m!5432353 () Bool)

(assert (=> b!4603234 m!5432353))

(declare-fun m!5432355 () Bool)

(assert (=> b!4603234 m!5432355))

(declare-fun m!5432357 () Bool)

(assert (=> b!4603234 m!5432357))

(declare-fun m!5432359 () Bool)

(assert (=> b!4603234 m!5432359))

(declare-fun m!5432361 () Bool)

(assert (=> b!4603230 m!5432361))

(declare-fun m!5432363 () Bool)

(assert (=> b!4603231 m!5432363))

(declare-fun m!5432365 () Bool)

(assert (=> b!4603223 m!5432365))

(assert (=> b!4603223 m!5432365))

(declare-fun m!5432367 () Bool)

(assert (=> b!4603223 m!5432367))

(declare-fun m!5432369 () Bool)

(assert (=> b!4603222 m!5432369))

(declare-fun m!5432371 () Bool)

(assert (=> b!4603224 m!5432371))

(assert (=> b!4603233 m!5432339))

(declare-fun m!5432373 () Bool)

(assert (=> b!4603228 m!5432373))

(declare-fun m!5432375 () Bool)

(assert (=> b!4603228 m!5432375))

(check-sat (not b!4603234) (not b!4603222) (not start!459672) (not b!4603221) (not b!4603223) (not b!4603227) (not b!4603231) (not b!4603228) tp_is_empty!28637 (not b!4603225) (not b!4603229) (not b!4603232) (not b!4603233) tp_is_empty!28639 (not b!4603224) (not b!4603230))
(check-sat)
