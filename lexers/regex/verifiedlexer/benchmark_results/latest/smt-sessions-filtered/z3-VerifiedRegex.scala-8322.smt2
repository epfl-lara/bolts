; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!432504 () Bool)

(assert start!432504)

(declare-datatypes ((V!11261 0))(
  ( (V!11262 (val!17083 Int)) )
))
(declare-fun newValue!93 () V!11261)

(declare-datatypes ((K!11015 0))(
  ( (K!11016 (val!17084 Int)) )
))
(declare-fun key!3717 () K!11015)

(declare-fun lt!1629068 () Bool)

(declare-datatypes ((tuple2!49486 0))(
  ( (tuple2!49487 (_1!28037 K!11015) (_2!28037 V!11261)) )
))
(declare-datatypes ((List!49773 0))(
  ( (Nil!49649) (Cons!49649 (h!55346 tuple2!49486) (t!356711 List!49773)) )
))
(declare-fun newBucket!194 () List!49773)

(declare-fun b!4429844 () Bool)

(declare-fun e!2758267 () Bool)

(assert (=> b!4429844 (= e!2758267 (and (not lt!1629068) (= newBucket!194 (Cons!49649 (tuple2!49487 key!3717 newValue!93) Nil!49649))))))

(declare-fun b!4429845 () Bool)

(declare-fun e!2758265 () Bool)

(declare-fun e!2758263 () Bool)

(assert (=> b!4429845 (= e!2758265 (not e!2758263))))

(declare-fun res!1832238 () Bool)

(assert (=> b!4429845 (=> res!1832238 e!2758263)))

(declare-datatypes ((tuple2!49488 0))(
  ( (tuple2!49489 (_1!28038 (_ BitVec 64)) (_2!28038 List!49773)) )
))
(declare-datatypes ((List!49774 0))(
  ( (Nil!49650) (Cons!49650 (h!55347 tuple2!49488) (t!356712 List!49774)) )
))
(declare-datatypes ((ListLongMap!2191 0))(
  ( (ListLongMap!2192 (toList!3541 List!49774)) )
))
(declare-fun lt!1629069 () ListLongMap!2191)

(declare-fun lambda!155024 () Int)

(declare-fun forall!9604 (List!49774 Int) Bool)

(assert (=> b!4429845 (= res!1832238 (not (forall!9604 (toList!3541 lt!1629069) lambda!155024)))))

(assert (=> b!4429845 (forall!9604 (toList!3541 lt!1629069) lambda!155024)))

(declare-fun lm!1616 () ListLongMap!2191)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun +!1133 (ListLongMap!2191 tuple2!49488) ListLongMap!2191)

(assert (=> b!4429845 (= lt!1629069 (+!1133 lm!1616 (tuple2!49489 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!82619 0))(
  ( (Unit!82620) )
))
(declare-fun lt!1629067 () Unit!82619)

(declare-fun addValidProp!421 (ListLongMap!2191 Int (_ BitVec 64) List!49773) Unit!82619)

(assert (=> b!4429845 (= lt!1629067 (addValidProp!421 lm!1616 lambda!155024 hash!366 newBucket!194))))

(declare-fun b!4429846 () Bool)

(declare-fun res!1832239 () Bool)

(declare-fun e!2758262 () Bool)

(assert (=> b!4429846 (=> (not res!1832239) (not e!2758262))))

(declare-datatypes ((Hashable!5171 0))(
  ( (HashableExt!5170 (__x!30874 Int)) )
))
(declare-fun hashF!1220 () Hashable!5171)

(declare-fun hash!2190 (Hashable!5171 K!11015) (_ BitVec 64))

(assert (=> b!4429846 (= res!1832239 (= (hash!2190 hashF!1220 key!3717) hash!366))))

(declare-fun b!4429847 () Bool)

(declare-fun res!1832242 () Bool)

(assert (=> b!4429847 (=> (not res!1832242) (not e!2758265))))

(declare-fun noDuplicateKeys!777 (List!49773) Bool)

(assert (=> b!4429847 (= res!1832242 (noDuplicateKeys!777 newBucket!194))))

(declare-fun b!4429848 () Bool)

(declare-fun res!1832237 () Bool)

(assert (=> b!4429848 (=> (not res!1832237) (not e!2758265))))

(assert (=> b!4429848 (= res!1832237 (forall!9604 (toList!3541 lm!1616) lambda!155024))))

(declare-fun b!4429849 () Bool)

(declare-fun res!1832236 () Bool)

(assert (=> b!4429849 (=> (not res!1832236) (not e!2758262))))

(declare-fun allKeysSameHash!737 (List!49773 (_ BitVec 64) Hashable!5171) Bool)

(assert (=> b!4429849 (= res!1832236 (allKeysSameHash!737 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4429850 () Bool)

(assert (=> b!4429850 (= e!2758263 (forall!9604 (toList!3541 lt!1629069) lambda!155024))))

(declare-fun b!4429851 () Bool)

(declare-fun res!1832245 () Bool)

(assert (=> b!4429851 (=> (not res!1832245) (not e!2758262))))

(declare-datatypes ((ListMap!2785 0))(
  ( (ListMap!2786 (toList!3542 List!49773)) )
))
(declare-fun contains!12174 (ListMap!2785 K!11015) Bool)

(declare-fun extractMap!838 (List!49774) ListMap!2785)

(assert (=> b!4429851 (= res!1832245 (not (contains!12174 (extractMap!838 (toList!3541 lm!1616)) key!3717)))))

(declare-fun res!1832241 () Bool)

(assert (=> start!432504 (=> (not res!1832241) (not e!2758262))))

(assert (=> start!432504 (= res!1832241 (forall!9604 (toList!3541 lm!1616) lambda!155024))))

(assert (=> start!432504 e!2758262))

(declare-fun tp_is_empty!26353 () Bool)

(assert (=> start!432504 tp_is_empty!26353))

(declare-fun tp_is_empty!26355 () Bool)

(assert (=> start!432504 tp_is_empty!26355))

(declare-fun e!2758266 () Bool)

(assert (=> start!432504 e!2758266))

(declare-fun e!2758268 () Bool)

(declare-fun inv!65201 (ListLongMap!2191) Bool)

(assert (=> start!432504 (and (inv!65201 lm!1616) e!2758268)))

(assert (=> start!432504 true))

(declare-fun tp!1333477 () Bool)

(declare-fun b!4429852 () Bool)

(assert (=> b!4429852 (= e!2758266 (and tp_is_empty!26355 tp_is_empty!26353 tp!1333477))))

(declare-fun b!4429853 () Bool)

(declare-fun res!1832243 () Bool)

(assert (=> b!4429853 (=> res!1832243 e!2758263)))

(get-info :version)

(assert (=> b!4429853 (= res!1832243 (or (and ((_ is Cons!49650) (toList!3541 lm!1616)) (= (_1!28038 (h!55347 (toList!3541 lm!1616))) hash!366)) (and ((_ is Cons!49650) (toList!3541 lm!1616)) (not (= (_1!28038 (h!55347 (toList!3541 lm!1616))) hash!366))) ((_ is Nil!49650) (toList!3541 lm!1616))))))

(declare-fun b!4429854 () Bool)

(declare-fun res!1832234 () Bool)

(assert (=> b!4429854 (=> (not res!1832234) (not e!2758262))))

(declare-fun allKeysSameHashInMap!883 (ListLongMap!2191 Hashable!5171) Bool)

(assert (=> b!4429854 (= res!1832234 (allKeysSameHashInMap!883 lm!1616 hashF!1220))))

(declare-fun b!4429855 () Bool)

(declare-fun tp!1333478 () Bool)

(assert (=> b!4429855 (= e!2758268 tp!1333478)))

(declare-fun b!4429856 () Bool)

(assert (=> b!4429856 (= e!2758262 e!2758265)))

(declare-fun res!1832235 () Bool)

(assert (=> b!4429856 (=> (not res!1832235) (not e!2758265))))

(assert (=> b!4429856 (= res!1832235 e!2758267)))

(declare-fun res!1832244 () Bool)

(assert (=> b!4429856 (=> res!1832244 e!2758267)))

(declare-fun e!2758264 () Bool)

(assert (=> b!4429856 (= res!1832244 e!2758264)))

(declare-fun res!1832240 () Bool)

(assert (=> b!4429856 (=> (not res!1832240) (not e!2758264))))

(assert (=> b!4429856 (= res!1832240 lt!1629068)))

(declare-fun contains!12175 (ListLongMap!2191 (_ BitVec 64)) Bool)

(assert (=> b!4429856 (= lt!1629068 (contains!12175 lm!1616 hash!366))))

(declare-fun b!4429857 () Bool)

(declare-fun apply!11629 (ListLongMap!2191 (_ BitVec 64)) List!49773)

(assert (=> b!4429857 (= e!2758264 (= newBucket!194 (Cons!49649 (tuple2!49487 key!3717 newValue!93) (apply!11629 lm!1616 hash!366))))))

(assert (= (and start!432504 res!1832241) b!4429854))

(assert (= (and b!4429854 res!1832234) b!4429846))

(assert (= (and b!4429846 res!1832239) b!4429849))

(assert (= (and b!4429849 res!1832236) b!4429851))

(assert (= (and b!4429851 res!1832245) b!4429856))

(assert (= (and b!4429856 res!1832240) b!4429857))

(assert (= (and b!4429856 (not res!1832244)) b!4429844))

(assert (= (and b!4429856 res!1832235) b!4429847))

(assert (= (and b!4429847 res!1832242) b!4429848))

(assert (= (and b!4429848 res!1832237) b!4429845))

(assert (= (and b!4429845 (not res!1832238)) b!4429853))

(assert (= (and b!4429853 (not res!1832243)) b!4429850))

(assert (= (and start!432504 ((_ is Cons!49649) newBucket!194)) b!4429852))

(assert (= start!432504 b!4429855))

(declare-fun m!5114033 () Bool)

(assert (=> b!4429857 m!5114033))

(declare-fun m!5114035 () Bool)

(assert (=> b!4429851 m!5114035))

(assert (=> b!4429851 m!5114035))

(declare-fun m!5114037 () Bool)

(assert (=> b!4429851 m!5114037))

(declare-fun m!5114039 () Bool)

(assert (=> b!4429849 m!5114039))

(declare-fun m!5114041 () Bool)

(assert (=> b!4429854 m!5114041))

(declare-fun m!5114043 () Bool)

(assert (=> b!4429856 m!5114043))

(declare-fun m!5114045 () Bool)

(assert (=> b!4429850 m!5114045))

(declare-fun m!5114047 () Bool)

(assert (=> b!4429847 m!5114047))

(declare-fun m!5114049 () Bool)

(assert (=> b!4429848 m!5114049))

(assert (=> b!4429845 m!5114045))

(assert (=> b!4429845 m!5114045))

(declare-fun m!5114051 () Bool)

(assert (=> b!4429845 m!5114051))

(declare-fun m!5114053 () Bool)

(assert (=> b!4429845 m!5114053))

(declare-fun m!5114055 () Bool)

(assert (=> b!4429846 m!5114055))

(assert (=> start!432504 m!5114049))

(declare-fun m!5114057 () Bool)

(assert (=> start!432504 m!5114057))

(check-sat (not b!4429852) (not b!4429855) (not b!4429845) (not b!4429857) (not b!4429856) tp_is_empty!26355 (not b!4429846) (not b!4429854) (not b!4429851) (not b!4429850) (not start!432504) (not b!4429848) (not b!4429849) (not b!4429847) tp_is_empty!26353)
(check-sat)
