; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!434340 () Bool)

(assert start!434340)

(declare-fun e!2764619 () Bool)

(declare-fun tp_is_empty!26555 () Bool)

(declare-fun tp!1334070 () Bool)

(declare-fun tp_is_empty!26553 () Bool)

(declare-fun b!4440047 () Bool)

(assert (=> b!4440047 (= e!2764619 (and tp_is_empty!26555 tp_is_empty!26553 tp!1334070))))

(declare-fun b!4440048 () Bool)

(declare-fun e!2764621 () Bool)

(declare-fun e!2764620 () Bool)

(assert (=> b!4440048 (= e!2764621 e!2764620)))

(declare-fun res!1838233 () Bool)

(assert (=> b!4440048 (=> (not res!1838233) (not e!2764620))))

(declare-fun e!2764624 () Bool)

(assert (=> b!4440048 (= res!1838233 e!2764624)))

(declare-fun res!1838237 () Bool)

(assert (=> b!4440048 (=> res!1838237 e!2764624)))

(declare-fun e!2764622 () Bool)

(assert (=> b!4440048 (= res!1838237 e!2764622)))

(declare-fun res!1838230 () Bool)

(assert (=> b!4440048 (=> (not res!1838230) (not e!2764622))))

(declare-fun lt!1636239 () Bool)

(assert (=> b!4440048 (= res!1838230 lt!1636239)))

(declare-datatypes ((V!11386 0))(
  ( (V!11387 (val!17183 Int)) )
))
(declare-datatypes ((K!11140 0))(
  ( (K!11141 (val!17184 Int)) )
))
(declare-datatypes ((tuple2!49686 0))(
  ( (tuple2!49687 (_1!28137 K!11140) (_2!28137 V!11386)) )
))
(declare-datatypes ((List!49896 0))(
  ( (Nil!49772) (Cons!49772 (h!55493 tuple2!49686) (t!356838 List!49896)) )
))
(declare-datatypes ((tuple2!49688 0))(
  ( (tuple2!49689 (_1!28138 (_ BitVec 64)) (_2!28138 List!49896)) )
))
(declare-datatypes ((List!49897 0))(
  ( (Nil!49773) (Cons!49773 (h!55494 tuple2!49688) (t!356839 List!49897)) )
))
(declare-datatypes ((ListLongMap!2291 0))(
  ( (ListLongMap!2292 (toList!3641 List!49897)) )
))
(declare-fun lm!1616 () ListLongMap!2291)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12338 (ListLongMap!2291 (_ BitVec 64)) Bool)

(assert (=> b!4440048 (= lt!1636239 (contains!12338 lm!1616 hash!366))))

(declare-fun b!4440049 () Bool)

(declare-fun res!1838235 () Bool)

(declare-fun e!2764618 () Bool)

(assert (=> b!4440049 (=> res!1838235 e!2764618)))

(get-info :version)

(assert (=> b!4440049 (= res!1838235 (or (and ((_ is Cons!49773) (toList!3641 lm!1616)) (= (_1!28138 (h!55494 (toList!3641 lm!1616))) hash!366)) (not ((_ is Cons!49773) (toList!3641 lm!1616))) (= (_1!28138 (h!55494 (toList!3641 lm!1616))) hash!366)))))

(declare-fun b!4440050 () Bool)

(declare-fun res!1838236 () Bool)

(assert (=> b!4440050 (=> (not res!1838236) (not e!2764621))))

(declare-fun key!3717 () K!11140)

(declare-datatypes ((Hashable!5221 0))(
  ( (HashableExt!5220 (__x!30924 Int)) )
))
(declare-fun hashF!1220 () Hashable!5221)

(declare-fun hash!2277 (Hashable!5221 K!11140) (_ BitVec 64))

(assert (=> b!4440050 (= res!1838236 (= (hash!2277 hashF!1220 key!3717) hash!366))))

(declare-fun b!4440051 () Bool)

(declare-fun e!2764623 () Bool)

(declare-fun tp!1334069 () Bool)

(assert (=> b!4440051 (= e!2764623 tp!1334069)))

(declare-fun b!4440052 () Bool)

(declare-fun res!1838231 () Bool)

(assert (=> b!4440052 (=> res!1838231 e!2764618)))

(declare-datatypes ((ListMap!2885 0))(
  ( (ListMap!2886 (toList!3642 List!49896)) )
))
(declare-fun contains!12339 (ListMap!2885 K!11140) Bool)

(declare-fun extractMap!888 (List!49897) ListMap!2885)

(declare-fun tail!7359 (List!49897) List!49897)

(assert (=> b!4440052 (= res!1838231 (not (contains!12339 (extractMap!888 (tail!7359 (toList!3641 lm!1616))) key!3717)))))

(declare-fun b!4440053 () Bool)

(assert (=> b!4440053 (= e!2764620 (not e!2764618))))

(declare-fun res!1838226 () Bool)

(assert (=> b!4440053 (=> res!1838226 e!2764618)))

(declare-fun lt!1636238 () ListLongMap!2291)

(declare-fun lambda!157110 () Int)

(declare-fun forall!9690 (List!49897 Int) Bool)

(assert (=> b!4440053 (= res!1838226 (not (forall!9690 (toList!3641 lt!1636238) lambda!157110)))))

(assert (=> b!4440053 (forall!9690 (toList!3641 lt!1636238) lambda!157110)))

(declare-fun newBucket!194 () List!49896)

(declare-fun +!1209 (ListLongMap!2291 tuple2!49688) ListLongMap!2291)

(assert (=> b!4440053 (= lt!1636238 (+!1209 lm!1616 (tuple2!49689 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!83854 0))(
  ( (Unit!83855) )
))
(declare-fun lt!1636237 () Unit!83854)

(declare-fun addValidProp!465 (ListLongMap!2291 Int (_ BitVec 64) List!49896) Unit!83854)

(assert (=> b!4440053 (= lt!1636237 (addValidProp!465 lm!1616 lambda!157110 hash!366 newBucket!194))))

(declare-fun b!4440054 () Bool)

(declare-fun res!1838227 () Bool)

(assert (=> b!4440054 (=> (not res!1838227) (not e!2764620))))

(assert (=> b!4440054 (= res!1838227 (forall!9690 (toList!3641 lm!1616) lambda!157110))))

(declare-fun b!4440055 () Bool)

(declare-fun res!1838225 () Bool)

(assert (=> b!4440055 (=> (not res!1838225) (not e!2764621))))

(assert (=> b!4440055 (= res!1838225 (not (contains!12339 (extractMap!888 (toList!3641 lm!1616)) key!3717)))))

(declare-fun b!4440056 () Bool)

(declare-fun res!1838234 () Bool)

(assert (=> b!4440056 (=> (not res!1838234) (not e!2764620))))

(declare-fun noDuplicateKeys!827 (List!49896) Bool)

(assert (=> b!4440056 (= res!1838234 (noDuplicateKeys!827 newBucket!194))))

(declare-fun b!4440057 () Bool)

(declare-fun res!1838232 () Bool)

(assert (=> b!4440057 (=> (not res!1838232) (not e!2764621))))

(declare-fun allKeysSameHash!787 (List!49896 (_ BitVec 64) Hashable!5221) Bool)

(assert (=> b!4440057 (= res!1838232 (allKeysSameHash!787 newBucket!194 hash!366 hashF!1220))))

(declare-fun res!1838229 () Bool)

(assert (=> start!434340 (=> (not res!1838229) (not e!2764621))))

(assert (=> start!434340 (= res!1838229 (forall!9690 (toList!3641 lm!1616) lambda!157110))))

(assert (=> start!434340 e!2764621))

(assert (=> start!434340 tp_is_empty!26553))

(assert (=> start!434340 tp_is_empty!26555))

(assert (=> start!434340 e!2764619))

(declare-fun inv!65326 (ListLongMap!2291) Bool)

(assert (=> start!434340 (and (inv!65326 lm!1616) e!2764623)))

(assert (=> start!434340 true))

(declare-fun b!4440058 () Bool)

(declare-fun newValue!93 () V!11386)

(declare-fun apply!11679 (ListLongMap!2291 (_ BitVec 64)) List!49896)

(assert (=> b!4440058 (= e!2764622 (= newBucket!194 (Cons!49772 (tuple2!49687 key!3717 newValue!93) (apply!11679 lm!1616 hash!366))))))

(declare-fun b!4440059 () Bool)

(assert (=> b!4440059 (= e!2764624 (and (not lt!1636239) (= newBucket!194 (Cons!49772 (tuple2!49687 key!3717 newValue!93) Nil!49772))))))

(declare-fun b!4440060 () Bool)

(declare-fun res!1838228 () Bool)

(assert (=> b!4440060 (=> (not res!1838228) (not e!2764621))))

(declare-fun allKeysSameHashInMap!933 (ListLongMap!2291 Hashable!5221) Bool)

(assert (=> b!4440060 (= res!1838228 (allKeysSameHashInMap!933 lm!1616 hashF!1220))))

(declare-fun b!4440061 () Bool)

(assert (=> b!4440061 (= e!2764618 true)))

(assert (= (and start!434340 res!1838229) b!4440060))

(assert (= (and b!4440060 res!1838228) b!4440050))

(assert (= (and b!4440050 res!1838236) b!4440057))

(assert (= (and b!4440057 res!1838232) b!4440055))

(assert (= (and b!4440055 res!1838225) b!4440048))

(assert (= (and b!4440048 res!1838230) b!4440058))

(assert (= (and b!4440048 (not res!1838237)) b!4440059))

(assert (= (and b!4440048 res!1838233) b!4440056))

(assert (= (and b!4440056 res!1838234) b!4440054))

(assert (= (and b!4440054 res!1838227) b!4440053))

(assert (= (and b!4440053 (not res!1838226)) b!4440049))

(assert (= (and b!4440049 (not res!1838235)) b!4440052))

(assert (= (and b!4440052 (not res!1838231)) b!4440061))

(assert (= (and start!434340 ((_ is Cons!49772) newBucket!194)) b!4440047))

(assert (= start!434340 b!4440051))

(declare-fun m!5128615 () Bool)

(assert (=> b!4440054 m!5128615))

(declare-fun m!5128617 () Bool)

(assert (=> b!4440050 m!5128617))

(declare-fun m!5128619 () Bool)

(assert (=> b!4440057 m!5128619))

(declare-fun m!5128621 () Bool)

(assert (=> b!4440060 m!5128621))

(declare-fun m!5128623 () Bool)

(assert (=> b!4440048 m!5128623))

(declare-fun m!5128625 () Bool)

(assert (=> b!4440055 m!5128625))

(assert (=> b!4440055 m!5128625))

(declare-fun m!5128627 () Bool)

(assert (=> b!4440055 m!5128627))

(assert (=> start!434340 m!5128615))

(declare-fun m!5128629 () Bool)

(assert (=> start!434340 m!5128629))

(declare-fun m!5128631 () Bool)

(assert (=> b!4440053 m!5128631))

(assert (=> b!4440053 m!5128631))

(declare-fun m!5128633 () Bool)

(assert (=> b!4440053 m!5128633))

(declare-fun m!5128635 () Bool)

(assert (=> b!4440053 m!5128635))

(declare-fun m!5128637 () Bool)

(assert (=> b!4440052 m!5128637))

(assert (=> b!4440052 m!5128637))

(declare-fun m!5128639 () Bool)

(assert (=> b!4440052 m!5128639))

(assert (=> b!4440052 m!5128639))

(declare-fun m!5128641 () Bool)

(assert (=> b!4440052 m!5128641))

(declare-fun m!5128643 () Bool)

(assert (=> b!4440056 m!5128643))

(declare-fun m!5128645 () Bool)

(assert (=> b!4440058 m!5128645))

(check-sat (not b!4440048) (not b!4440047) (not b!4440057) (not b!4440058) (not b!4440053) (not b!4440050) (not b!4440052) tp_is_empty!26553 (not b!4440054) (not start!434340) (not b!4440055) (not b!4440051) tp_is_empty!26555 (not b!4440056) (not b!4440060))
(check-sat)
