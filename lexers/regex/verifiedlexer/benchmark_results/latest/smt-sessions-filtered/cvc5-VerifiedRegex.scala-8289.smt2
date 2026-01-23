; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!430234 () Bool)

(assert start!430234)

(declare-fun b!4417340 () Bool)

(declare-fun e!2750575 () Bool)

(declare-fun e!2750572 () Bool)

(assert (=> b!4417340 (= e!2750575 (not e!2750572))))

(declare-fun res!1825005 () Bool)

(assert (=> b!4417340 (=> res!1825005 e!2750572)))

(declare-datatypes ((V!11094 0))(
  ( (V!11095 (val!16949 Int)) )
))
(declare-datatypes ((K!10848 0))(
  ( (K!10849 (val!16950 Int)) )
))
(declare-datatypes ((tuple2!49218 0))(
  ( (tuple2!49219 (_1!27903 K!10848) (_2!27903 V!11094)) )
))
(declare-datatypes ((List!49608 0))(
  ( (Nil!49484) (Cons!49484 (h!55149 tuple2!49218) (t!356546 List!49608)) )
))
(declare-datatypes ((tuple2!49220 0))(
  ( (tuple2!49221 (_1!27904 (_ BitVec 64)) (_2!27904 List!49608)) )
))
(declare-datatypes ((List!49609 0))(
  ( (Nil!49485) (Cons!49485 (h!55150 tuple2!49220) (t!356547 List!49609)) )
))
(declare-datatypes ((ListLongMap!2057 0))(
  ( (ListLongMap!2058 (toList!3407 List!49609)) )
))
(declare-fun lt!1618870 () ListLongMap!2057)

(declare-fun lambda!152271 () Int)

(declare-fun forall!9496 (List!49609 Int) Bool)

(assert (=> b!4417340 (= res!1825005 (not (forall!9496 (toList!3407 lt!1618870) lambda!152271)))))

(assert (=> b!4417340 (forall!9496 (toList!3407 lt!1618870) lambda!152271)))

(declare-fun newBucket!194 () List!49608)

(declare-fun lm!1616 () ListLongMap!2057)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun +!1014 (ListLongMap!2057 tuple2!49220) ListLongMap!2057)

(assert (=> b!4417340 (= lt!1618870 (+!1014 lm!1616 (tuple2!49221 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!81008 0))(
  ( (Unit!81009) )
))
(declare-fun lt!1618869 () Unit!81008)

(declare-fun addValidProp!354 (ListLongMap!2057 Int (_ BitVec 64) List!49608) Unit!81008)

(assert (=> b!4417340 (= lt!1618869 (addValidProp!354 lm!1616 lambda!152271 hash!366 newBucket!194))))

(declare-fun b!4417341 () Bool)

(declare-fun res!1825001 () Bool)

(declare-fun e!2750573 () Bool)

(assert (=> b!4417341 (=> (not res!1825001) (not e!2750573))))

(declare-fun key!3717 () K!10848)

(declare-datatypes ((Hashable!5104 0))(
  ( (HashableExt!5103 (__x!30807 Int)) )
))
(declare-fun hashF!1220 () Hashable!5104)

(declare-fun hash!2028 (Hashable!5104 K!10848) (_ BitVec 64))

(assert (=> b!4417341 (= res!1825001 (= (hash!2028 hashF!1220 key!3717) hash!366))))

(declare-fun b!4417342 () Bool)

(declare-fun res!1825006 () Bool)

(assert (=> b!4417342 (=> (not res!1825006) (not e!2750573))))

(declare-fun allKeysSameHashInMap!816 (ListLongMap!2057 Hashable!5104) Bool)

(assert (=> b!4417342 (= res!1825006 (allKeysSameHashInMap!816 lm!1616 hashF!1220))))

(declare-fun b!4417343 () Bool)

(declare-fun e!2750576 () Bool)

(declare-fun tp!1332739 () Bool)

(assert (=> b!4417343 (= e!2750576 tp!1332739)))

(declare-fun b!4417344 () Bool)

(declare-fun res!1824994 () Bool)

(assert (=> b!4417344 (=> (not res!1824994) (not e!2750573))))

(declare-fun allKeysSameHash!670 (List!49608 (_ BitVec 64) Hashable!5104) Bool)

(assert (=> b!4417344 (= res!1824994 (allKeysSameHash!670 newBucket!194 hash!366 hashF!1220))))

(declare-fun newValue!93 () V!11094)

(declare-fun e!2750574 () Bool)

(declare-fun b!4417345 () Bool)

(declare-fun lt!1618868 () Bool)

(assert (=> b!4417345 (= e!2750574 (and (not lt!1618868) (= newBucket!194 (Cons!49484 (tuple2!49219 key!3717 newValue!93) Nil!49484))))))

(declare-fun b!4417346 () Bool)

(declare-fun res!1825007 () Bool)

(assert (=> b!4417346 (=> res!1825007 e!2750572)))

(declare-datatypes ((ListMap!2651 0))(
  ( (ListMap!2652 (toList!3408 List!49608)) )
))
(declare-fun contains!11947 (ListMap!2651 K!10848) Bool)

(declare-fun extractMap!771 (List!49609) ListMap!2651)

(declare-fun tail!7194 (ListLongMap!2057) ListLongMap!2057)

(assert (=> b!4417346 (= res!1825007 (not (contains!11947 (extractMap!771 (toList!3407 (tail!7194 lm!1616))) key!3717)))))

(declare-fun b!4417347 () Bool)

(declare-fun res!1825004 () Bool)

(assert (=> b!4417347 (=> res!1825004 e!2750572)))

(assert (=> b!4417347 (= res!1825004 (not (forall!9496 (toList!3407 lm!1616) lambda!152271)))))

(declare-fun b!4417348 () Bool)

(declare-fun res!1825002 () Bool)

(assert (=> b!4417348 (=> res!1825002 e!2750572)))

(declare-fun tail!7195 (List!49609) List!49609)

(assert (=> b!4417348 (= res!1825002 (not (contains!11947 (extractMap!771 (tail!7195 (toList!3407 lm!1616))) key!3717)))))

(declare-fun b!4417349 () Bool)

(declare-fun res!1825008 () Bool)

(assert (=> b!4417349 (=> res!1825008 e!2750572)))

(assert (=> b!4417349 (= res!1825008 (or (and (is-Cons!49485 (toList!3407 lm!1616)) (= (_1!27904 (h!55150 (toList!3407 lm!1616))) hash!366)) (not (is-Cons!49485 (toList!3407 lm!1616))) (= (_1!27904 (h!55150 (toList!3407 lm!1616))) hash!366)))))

(declare-fun b!4417351 () Bool)

(declare-fun res!1824998 () Bool)

(assert (=> b!4417351 (=> (not res!1824998) (not e!2750575))))

(declare-fun noDuplicateKeys!710 (List!49608) Bool)

(assert (=> b!4417351 (= res!1824998 (noDuplicateKeys!710 newBucket!194))))

(declare-fun b!4417350 () Bool)

(assert (=> b!4417350 (= e!2750572 (forall!9496 (toList!3407 lm!1616) lambda!152271))))

(declare-fun res!1824996 () Bool)

(assert (=> start!430234 (=> (not res!1824996) (not e!2750573))))

(assert (=> start!430234 (= res!1824996 (forall!9496 (toList!3407 lm!1616) lambda!152271))))

(assert (=> start!430234 e!2750573))

(declare-fun tp_is_empty!26085 () Bool)

(assert (=> start!430234 tp_is_empty!26085))

(declare-fun tp_is_empty!26087 () Bool)

(assert (=> start!430234 tp_is_empty!26087))

(declare-fun e!2750577 () Bool)

(assert (=> start!430234 e!2750577))

(declare-fun inv!65035 (ListLongMap!2057) Bool)

(assert (=> start!430234 (and (inv!65035 lm!1616) e!2750576)))

(assert (=> start!430234 true))

(declare-fun b!4417352 () Bool)

(declare-fun res!1824999 () Bool)

(assert (=> b!4417352 (=> (not res!1824999) (not e!2750573))))

(assert (=> b!4417352 (= res!1824999 (not (contains!11947 (extractMap!771 (toList!3407 lm!1616)) key!3717)))))

(declare-fun b!4417353 () Bool)

(declare-fun res!1825000 () Bool)

(assert (=> b!4417353 (=> res!1825000 e!2750572)))

(declare-fun isEmpty!28304 (List!49609) Bool)

(assert (=> b!4417353 (= res!1825000 (isEmpty!28304 (toList!3407 lm!1616)))))

(declare-fun b!4417354 () Bool)

(declare-fun e!2750571 () Bool)

(declare-fun apply!11562 (ListLongMap!2057 (_ BitVec 64)) List!49608)

(assert (=> b!4417354 (= e!2750571 (= newBucket!194 (Cons!49484 (tuple2!49219 key!3717 newValue!93) (apply!11562 lm!1616 hash!366))))))

(declare-fun b!4417355 () Bool)

(declare-fun res!1825009 () Bool)

(assert (=> b!4417355 (=> (not res!1825009) (not e!2750575))))

(assert (=> b!4417355 (= res!1825009 (forall!9496 (toList!3407 lm!1616) lambda!152271))))

(declare-fun b!4417356 () Bool)

(assert (=> b!4417356 (= e!2750573 e!2750575)))

(declare-fun res!1824997 () Bool)

(assert (=> b!4417356 (=> (not res!1824997) (not e!2750575))))

(assert (=> b!4417356 (= res!1824997 e!2750574)))

(declare-fun res!1825003 () Bool)

(assert (=> b!4417356 (=> res!1825003 e!2750574)))

(assert (=> b!4417356 (= res!1825003 e!2750571)))

(declare-fun res!1824995 () Bool)

(assert (=> b!4417356 (=> (not res!1824995) (not e!2750571))))

(assert (=> b!4417356 (= res!1824995 lt!1618868)))

(declare-fun contains!11948 (ListLongMap!2057 (_ BitVec 64)) Bool)

(assert (=> b!4417356 (= lt!1618868 (contains!11948 lm!1616 hash!366))))

(declare-fun b!4417357 () Bool)

(declare-fun tp!1332740 () Bool)

(assert (=> b!4417357 (= e!2750577 (and tp_is_empty!26087 tp_is_empty!26085 tp!1332740))))

(assert (= (and start!430234 res!1824996) b!4417342))

(assert (= (and b!4417342 res!1825006) b!4417341))

(assert (= (and b!4417341 res!1825001) b!4417344))

(assert (= (and b!4417344 res!1824994) b!4417352))

(assert (= (and b!4417352 res!1824999) b!4417356))

(assert (= (and b!4417356 res!1824995) b!4417354))

(assert (= (and b!4417356 (not res!1825003)) b!4417345))

(assert (= (and b!4417356 res!1824997) b!4417351))

(assert (= (and b!4417351 res!1824998) b!4417355))

(assert (= (and b!4417355 res!1825009) b!4417340))

(assert (= (and b!4417340 (not res!1825005)) b!4417349))

(assert (= (and b!4417349 (not res!1825008)) b!4417348))

(assert (= (and b!4417348 (not res!1825002)) b!4417347))

(assert (= (and b!4417347 (not res!1825004)) b!4417353))

(assert (= (and b!4417353 (not res!1825000)) b!4417346))

(assert (= (and b!4417346 (not res!1825007)) b!4417350))

(assert (= (and start!430234 (is-Cons!49484 newBucket!194)) b!4417357))

(assert (= start!430234 b!4417343))

(declare-fun m!5093671 () Bool)

(assert (=> b!4417346 m!5093671))

(declare-fun m!5093673 () Bool)

(assert (=> b!4417346 m!5093673))

(assert (=> b!4417346 m!5093673))

(declare-fun m!5093675 () Bool)

(assert (=> b!4417346 m!5093675))

(declare-fun m!5093677 () Bool)

(assert (=> b!4417354 m!5093677))

(declare-fun m!5093679 () Bool)

(assert (=> start!430234 m!5093679))

(declare-fun m!5093681 () Bool)

(assert (=> start!430234 m!5093681))

(declare-fun m!5093683 () Bool)

(assert (=> b!4417348 m!5093683))

(assert (=> b!4417348 m!5093683))

(declare-fun m!5093685 () Bool)

(assert (=> b!4417348 m!5093685))

(assert (=> b!4417348 m!5093685))

(declare-fun m!5093687 () Bool)

(assert (=> b!4417348 m!5093687))

(assert (=> b!4417355 m!5093679))

(declare-fun m!5093689 () Bool)

(assert (=> b!4417340 m!5093689))

(assert (=> b!4417340 m!5093689))

(declare-fun m!5093691 () Bool)

(assert (=> b!4417340 m!5093691))

(declare-fun m!5093693 () Bool)

(assert (=> b!4417340 m!5093693))

(declare-fun m!5093695 () Bool)

(assert (=> b!4417352 m!5093695))

(assert (=> b!4417352 m!5093695))

(declare-fun m!5093697 () Bool)

(assert (=> b!4417352 m!5093697))

(declare-fun m!5093699 () Bool)

(assert (=> b!4417351 m!5093699))

(declare-fun m!5093701 () Bool)

(assert (=> b!4417341 m!5093701))

(declare-fun m!5093703 () Bool)

(assert (=> b!4417344 m!5093703))

(declare-fun m!5093705 () Bool)

(assert (=> b!4417353 m!5093705))

(assert (=> b!4417350 m!5093679))

(declare-fun m!5093707 () Bool)

(assert (=> b!4417342 m!5093707))

(declare-fun m!5093709 () Bool)

(assert (=> b!4417356 m!5093709))

(assert (=> b!4417347 m!5093679))

(push 1)

(assert (not start!430234))

(assert tp_is_empty!26085)

(assert (not b!4417344))

(assert (not b!4417346))

(assert (not b!4417343))

(assert (not b!4417347))

(assert (not b!4417340))

(assert (not b!4417350))

(assert (not b!4417348))

(assert (not b!4417354))

(assert (not b!4417351))

(assert tp_is_empty!26087)

(assert (not b!4417342))

(assert (not b!4417355))

(assert (not b!4417357))

(assert (not b!4417356))

(assert (not b!4417353))

(assert (not b!4417341))

(assert (not b!4417352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

