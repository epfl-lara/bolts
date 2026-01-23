; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430178 () Bool)

(assert start!430178)

(declare-fun b!4417039 () Bool)

(declare-datatypes ((V!11086 0))(
  ( (V!11087 (val!16943 Int)) )
))
(declare-fun newValue!93 () V!11086)

(declare-datatypes ((K!10840 0))(
  ( (K!10841 (val!16944 Int)) )
))
(declare-fun key!3717 () K!10840)

(declare-datatypes ((tuple2!49206 0))(
  ( (tuple2!49207 (_1!27897 K!10840) (_2!27897 V!11086)) )
))
(declare-datatypes ((List!49601 0))(
  ( (Nil!49477) (Cons!49477 (h!55140 tuple2!49206) (t!356539 List!49601)) )
))
(declare-fun newBucket!194 () List!49601)

(declare-fun e!2750399 () Bool)

(declare-fun lt!1618735 () Bool)

(assert (=> b!4417039 (= e!2750399 (and (not lt!1618735) (= newBucket!194 (Cons!49477 (tuple2!49207 key!3717 newValue!93) Nil!49477))))))

(declare-fun b!4417040 () Bool)

(declare-fun e!2750403 () Bool)

(declare-fun tp!1332703 () Bool)

(assert (=> b!4417040 (= e!2750403 tp!1332703)))

(declare-fun b!4417042 () Bool)

(declare-fun e!2750402 () Bool)

(declare-datatypes ((tuple2!49208 0))(
  ( (tuple2!49209 (_1!27898 (_ BitVec 64)) (_2!27898 List!49601)) )
))
(declare-datatypes ((List!49602 0))(
  ( (Nil!49478) (Cons!49478 (h!55141 tuple2!49208) (t!356540 List!49602)) )
))
(declare-datatypes ((ListLongMap!2051 0))(
  ( (ListLongMap!2052 (toList!3401 List!49602)) )
))
(declare-fun lm!1616 () ListLongMap!2051)

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4417042 (= e!2750402 (or (and ((_ is Cons!49478) (toList!3401 lm!1616)) (= (_1!27898 (h!55141 (toList!3401 lm!1616))) hash!366)) (not ((_ is Cons!49478) (toList!3401 lm!1616))) (= (_1!27898 (h!55141 (toList!3401 lm!1616))) hash!366) (not (= (toList!3401 lm!1616) Nil!49478))))))

(declare-fun b!4417043 () Bool)

(declare-fun res!1824806 () Bool)

(declare-fun e!2750398 () Bool)

(assert (=> b!4417043 (=> (not res!1824806) (not e!2750398))))

(declare-datatypes ((Hashable!5101 0))(
  ( (HashableExt!5100 (__x!30804 Int)) )
))
(declare-fun hashF!1220 () Hashable!5101)

(declare-fun hash!2024 (Hashable!5101 K!10840) (_ BitVec 64))

(assert (=> b!4417043 (= res!1824806 (= (hash!2024 hashF!1220 key!3717) hash!366))))

(declare-fun b!4417044 () Bool)

(declare-fun res!1824813 () Bool)

(declare-fun e!2750404 () Bool)

(assert (=> b!4417044 (=> (not res!1824813) (not e!2750404))))

(declare-fun lambda!152218 () Int)

(declare-fun forall!9492 (List!49602 Int) Bool)

(assert (=> b!4417044 (= res!1824813 (forall!9492 (toList!3401 lm!1616) lambda!152218))))

(declare-fun b!4417045 () Bool)

(assert (=> b!4417045 (= e!2750404 (not e!2750402))))

(declare-fun res!1824814 () Bool)

(assert (=> b!4417045 (=> res!1824814 e!2750402)))

(declare-fun lt!1618733 () ListLongMap!2051)

(assert (=> b!4417045 (= res!1824814 (not (forall!9492 (toList!3401 lt!1618733) lambda!152218)))))

(assert (=> b!4417045 (forall!9492 (toList!3401 lt!1618733) lambda!152218)))

(declare-fun +!1011 (ListLongMap!2051 tuple2!49208) ListLongMap!2051)

(assert (=> b!4417045 (= lt!1618733 (+!1011 lm!1616 (tuple2!49209 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!80999 0))(
  ( (Unit!81000) )
))
(declare-fun lt!1618734 () Unit!80999)

(declare-fun addValidProp!351 (ListLongMap!2051 Int (_ BitVec 64) List!49601) Unit!80999)

(assert (=> b!4417045 (= lt!1618734 (addValidProp!351 lm!1616 lambda!152218 hash!366 newBucket!194))))

(declare-fun b!4417046 () Bool)

(declare-fun res!1824809 () Bool)

(assert (=> b!4417046 (=> (not res!1824809) (not e!2750398))))

(declare-fun allKeysSameHash!667 (List!49601 (_ BitVec 64) Hashable!5101) Bool)

(assert (=> b!4417046 (= res!1824809 (allKeysSameHash!667 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4417047 () Bool)

(assert (=> b!4417047 (= e!2750398 e!2750404)))

(declare-fun res!1824808 () Bool)

(assert (=> b!4417047 (=> (not res!1824808) (not e!2750404))))

(assert (=> b!4417047 (= res!1824808 e!2750399)))

(declare-fun res!1824805 () Bool)

(assert (=> b!4417047 (=> res!1824805 e!2750399)))

(declare-fun e!2750401 () Bool)

(assert (=> b!4417047 (= res!1824805 e!2750401)))

(declare-fun res!1824811 () Bool)

(assert (=> b!4417047 (=> (not res!1824811) (not e!2750401))))

(assert (=> b!4417047 (= res!1824811 lt!1618735)))

(declare-fun contains!11939 (ListLongMap!2051 (_ BitVec 64)) Bool)

(assert (=> b!4417047 (= lt!1618735 (contains!11939 lm!1616 hash!366))))

(declare-fun b!4417048 () Bool)

(declare-fun res!1824810 () Bool)

(assert (=> b!4417048 (=> (not res!1824810) (not e!2750398))))

(declare-datatypes ((ListMap!2645 0))(
  ( (ListMap!2646 (toList!3402 List!49601)) )
))
(declare-fun contains!11940 (ListMap!2645 K!10840) Bool)

(declare-fun extractMap!768 (List!49602) ListMap!2645)

(assert (=> b!4417048 (= res!1824810 (not (contains!11940 (extractMap!768 (toList!3401 lm!1616)) key!3717)))))

(declare-fun b!4417049 () Bool)

(declare-fun apply!11559 (ListLongMap!2051 (_ BitVec 64)) List!49601)

(assert (=> b!4417049 (= e!2750401 (= newBucket!194 (Cons!49477 (tuple2!49207 key!3717 newValue!93) (apply!11559 lm!1616 hash!366))))))

(declare-fun b!4417050 () Bool)

(declare-fun res!1824812 () Bool)

(assert (=> b!4417050 (=> (not res!1824812) (not e!2750398))))

(declare-fun allKeysSameHashInMap!813 (ListLongMap!2051 Hashable!5101) Bool)

(assert (=> b!4417050 (= res!1824812 (allKeysSameHashInMap!813 lm!1616 hashF!1220))))

(declare-fun b!4417051 () Bool)

(declare-fun res!1824807 () Bool)

(assert (=> b!4417051 (=> (not res!1824807) (not e!2750404))))

(declare-fun noDuplicateKeys!707 (List!49601) Bool)

(assert (=> b!4417051 (= res!1824807 (noDuplicateKeys!707 newBucket!194))))

(declare-fun res!1824815 () Bool)

(assert (=> start!430178 (=> (not res!1824815) (not e!2750398))))

(assert (=> start!430178 (= res!1824815 (forall!9492 (toList!3401 lm!1616) lambda!152218))))

(assert (=> start!430178 e!2750398))

(declare-fun tp_is_empty!26073 () Bool)

(assert (=> start!430178 tp_is_empty!26073))

(declare-fun tp_is_empty!26075 () Bool)

(assert (=> start!430178 tp_is_empty!26075))

(declare-fun e!2750400 () Bool)

(assert (=> start!430178 e!2750400))

(declare-fun inv!65026 (ListLongMap!2051) Bool)

(assert (=> start!430178 (and (inv!65026 lm!1616) e!2750403)))

(assert (=> start!430178 true))

(declare-fun tp!1332704 () Bool)

(declare-fun b!4417041 () Bool)

(assert (=> b!4417041 (= e!2750400 (and tp_is_empty!26075 tp_is_empty!26073 tp!1332704))))

(assert (= (and start!430178 res!1824815) b!4417050))

(assert (= (and b!4417050 res!1824812) b!4417043))

(assert (= (and b!4417043 res!1824806) b!4417046))

(assert (= (and b!4417046 res!1824809) b!4417048))

(assert (= (and b!4417048 res!1824810) b!4417047))

(assert (= (and b!4417047 res!1824811) b!4417049))

(assert (= (and b!4417047 (not res!1824805)) b!4417039))

(assert (= (and b!4417047 res!1824808) b!4417051))

(assert (= (and b!4417051 res!1824807) b!4417044))

(assert (= (and b!4417044 res!1824813) b!4417045))

(assert (= (and b!4417045 (not res!1824814)) b!4417042))

(assert (= (and start!430178 ((_ is Cons!49477) newBucket!194)) b!4417041))

(assert (= start!430178 b!4417040))

(declare-fun m!5093427 () Bool)

(assert (=> b!4417045 m!5093427))

(assert (=> b!4417045 m!5093427))

(declare-fun m!5093429 () Bool)

(assert (=> b!4417045 m!5093429))

(declare-fun m!5093431 () Bool)

(assert (=> b!4417045 m!5093431))

(declare-fun m!5093433 () Bool)

(assert (=> b!4417047 m!5093433))

(declare-fun m!5093435 () Bool)

(assert (=> b!4417049 m!5093435))

(declare-fun m!5093437 () Bool)

(assert (=> b!4417046 m!5093437))

(declare-fun m!5093439 () Bool)

(assert (=> b!4417051 m!5093439))

(declare-fun m!5093441 () Bool)

(assert (=> b!4417044 m!5093441))

(declare-fun m!5093443 () Bool)

(assert (=> b!4417043 m!5093443))

(declare-fun m!5093445 () Bool)

(assert (=> b!4417048 m!5093445))

(assert (=> b!4417048 m!5093445))

(declare-fun m!5093447 () Bool)

(assert (=> b!4417048 m!5093447))

(declare-fun m!5093449 () Bool)

(assert (=> b!4417050 m!5093449))

(assert (=> start!430178 m!5093441))

(declare-fun m!5093451 () Bool)

(assert (=> start!430178 m!5093451))

(check-sat (not b!4417044) (not b!4417041) (not b!4417045) (not b!4417048) tp_is_empty!26073 (not b!4417049) (not b!4417043) (not start!430178) (not b!4417051) (not b!4417047) tp_is_empty!26075 (not b!4417050) (not b!4417040) (not b!4417046))
(check-sat)
