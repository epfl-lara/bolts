; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!433330 () Bool)

(assert start!433330)

(declare-datatypes ((V!11299 0))(
  ( (V!11300 (val!17113 Int)) )
))
(declare-fun newValue!93 () V!11299)

(declare-datatypes ((K!11053 0))(
  ( (K!11054 (val!17114 Int)) )
))
(declare-fun key!3717 () K!11053)

(declare-datatypes ((tuple2!49546 0))(
  ( (tuple2!49547 (_1!28067 K!11053) (_2!28067 V!11299)) )
))
(declare-datatypes ((List!49811 0))(
  ( (Nil!49687) (Cons!49687 (h!55392 tuple2!49546) (t!356753 List!49811)) )
))
(declare-fun newBucket!194 () List!49811)

(declare-fun b!4433874 () Bool)

(declare-datatypes ((tuple2!49548 0))(
  ( (tuple2!49549 (_1!28068 (_ BitVec 64)) (_2!28068 List!49811)) )
))
(declare-datatypes ((List!49812 0))(
  ( (Nil!49688) (Cons!49688 (h!55393 tuple2!49548) (t!356754 List!49812)) )
))
(declare-datatypes ((ListLongMap!2221 0))(
  ( (ListLongMap!2222 (toList!3571 List!49812)) )
))
(declare-fun lm!1616 () ListLongMap!2221)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun e!2760894 () Bool)

(declare-fun apply!11644 (ListLongMap!2221 (_ BitVec 64)) List!49811)

(assert (=> b!4433874 (= e!2760894 (= newBucket!194 (Cons!49687 (tuple2!49547 key!3717 newValue!93) (apply!11644 lm!1616 hash!366))))))

(declare-fun b!4433875 () Bool)

(declare-fun res!1834594 () Bool)

(assert (=> b!4433875 (=> res!1834594 e!2760894)))

(declare-fun lt!1631328 () ListLongMap!2221)

(declare-fun lt!1631331 () tuple2!49548)

(declare-fun head!9257 (List!49812) tuple2!49548)

(assert (=> b!4433875 (= res!1834594 (not (= (head!9257 (toList!3571 lt!1631328)) lt!1631331)))))

(declare-fun b!4433876 () Bool)

(declare-fun res!1834603 () Bool)

(declare-fun e!2760897 () Bool)

(assert (=> b!4433876 (=> (not res!1834603) (not e!2760897))))

(declare-fun lambda!155789 () Int)

(declare-fun forall!9635 (List!49812 Int) Bool)

(assert (=> b!4433876 (= res!1834603 (forall!9635 (toList!3571 lm!1616) lambda!155789))))

(declare-fun e!2760895 () Bool)

(declare-fun b!4433877 () Bool)

(assert (=> b!4433877 (= e!2760895 (= newBucket!194 (Cons!49687 (tuple2!49547 key!3717 newValue!93) (apply!11644 lm!1616 hash!366))))))

(declare-fun b!4433878 () Bool)

(declare-fun e!2760896 () Bool)

(declare-fun tp!1333692 () Bool)

(assert (=> b!4433878 (= e!2760896 tp!1333692)))

(declare-fun b!4433879 () Bool)

(declare-fun res!1834601 () Bool)

(assert (=> b!4433879 (=> res!1834601 e!2760894)))

(declare-datatypes ((ListMap!2815 0))(
  ( (ListMap!2816 (toList!3572 List!49811)) )
))
(declare-fun extractMap!853 (List!49812) ListMap!2815)

(declare-fun addToMapMapFromBucket!417 (List!49811 ListMap!2815) ListMap!2815)

(assert (=> b!4433879 (= res!1834601 (not (= (extractMap!853 (toList!3571 lt!1631328)) (addToMapMapFromBucket!417 newBucket!194 (extractMap!853 (t!356754 (toList!3571 lm!1616)))))))))

(declare-fun b!4433880 () Bool)

(declare-fun res!1834596 () Bool)

(assert (=> b!4433880 (=> res!1834596 e!2760894)))

(declare-fun tail!7320 (List!49812) List!49812)

(assert (=> b!4433880 (= res!1834596 (not (= (tail!7320 (toList!3571 lt!1631328)) (t!356754 (toList!3571 lm!1616)))))))

(declare-fun res!1834599 () Bool)

(declare-fun e!2760893 () Bool)

(assert (=> start!433330 (=> (not res!1834599) (not e!2760893))))

(assert (=> start!433330 (= res!1834599 (forall!9635 (toList!3571 lm!1616) lambda!155789))))

(assert (=> start!433330 e!2760893))

(declare-fun tp_is_empty!26413 () Bool)

(assert (=> start!433330 tp_is_empty!26413))

(declare-fun tp_is_empty!26415 () Bool)

(assert (=> start!433330 tp_is_empty!26415))

(declare-fun e!2760899 () Bool)

(assert (=> start!433330 e!2760899))

(declare-fun inv!65240 (ListLongMap!2221) Bool)

(assert (=> start!433330 (and (inv!65240 lm!1616) e!2760896)))

(assert (=> start!433330 true))

(declare-fun b!4433881 () Bool)

(assert (=> b!4433881 (= e!2760893 e!2760897)))

(declare-fun res!1834600 () Bool)

(assert (=> b!4433881 (=> (not res!1834600) (not e!2760897))))

(declare-fun e!2760898 () Bool)

(assert (=> b!4433881 (= res!1834600 e!2760898)))

(declare-fun res!1834602 () Bool)

(assert (=> b!4433881 (=> res!1834602 e!2760898)))

(assert (=> b!4433881 (= res!1834602 e!2760895)))

(declare-fun res!1834606 () Bool)

(assert (=> b!4433881 (=> (not res!1834606) (not e!2760895))))

(declare-fun lt!1631329 () Bool)

(assert (=> b!4433881 (= res!1834606 (not lt!1631329))))

(declare-fun lt!1631332 () Bool)

(assert (=> b!4433881 (= lt!1631329 (not lt!1631332))))

(declare-fun contains!12226 (ListLongMap!2221 (_ BitVec 64)) Bool)

(assert (=> b!4433881 (= lt!1631332 (contains!12226 lm!1616 hash!366))))

(declare-fun b!4433882 () Bool)

(assert (=> b!4433882 (= e!2760897 (not e!2760894))))

(declare-fun res!1834604 () Bool)

(assert (=> b!4433882 (=> res!1834604 e!2760894)))

(assert (=> b!4433882 (= res!1834604 (not (forall!9635 (toList!3571 lt!1631328) lambda!155789)))))

(assert (=> b!4433882 (forall!9635 (toList!3571 lt!1631328) lambda!155789)))

(declare-fun +!1154 (ListLongMap!2221 tuple2!49548) ListLongMap!2221)

(assert (=> b!4433882 (= lt!1631328 (+!1154 lm!1616 lt!1631331))))

(assert (=> b!4433882 (= lt!1631331 (tuple2!49549 hash!366 newBucket!194))))

(declare-datatypes ((Unit!83017 0))(
  ( (Unit!83018) )
))
(declare-fun lt!1631330 () Unit!83017)

(declare-fun addValidProp!434 (ListLongMap!2221 Int (_ BitVec 64) List!49811) Unit!83017)

(assert (=> b!4433882 (= lt!1631330 (addValidProp!434 lm!1616 lambda!155789 hash!366 newBucket!194))))

(declare-fun b!4433883 () Bool)

(declare-fun res!1834595 () Bool)

(assert (=> b!4433883 (=> (not res!1834595) (not e!2760893))))

(declare-datatypes ((Hashable!5186 0))(
  ( (HashableExt!5185 (__x!30889 Int)) )
))
(declare-fun hashF!1220 () Hashable!5186)

(declare-fun allKeysSameHashInMap!898 (ListLongMap!2221 Hashable!5186) Bool)

(assert (=> b!4433883 (= res!1834595 (allKeysSameHashInMap!898 lm!1616 hashF!1220))))

(declare-fun b!4433884 () Bool)

(declare-fun tp!1333691 () Bool)

(assert (=> b!4433884 (= e!2760899 (and tp_is_empty!26415 tp_is_empty!26413 tp!1333691))))

(declare-fun b!4433885 () Bool)

(declare-fun res!1834592 () Bool)

(assert (=> b!4433885 (=> (not res!1834592) (not e!2760897))))

(declare-fun noDuplicateKeys!792 (List!49811) Bool)

(assert (=> b!4433885 (= res!1834592 (noDuplicateKeys!792 newBucket!194))))

(declare-fun b!4433886 () Bool)

(assert (=> b!4433886 (= e!2760898 (and (not lt!1631332) (= newBucket!194 (Cons!49687 (tuple2!49547 key!3717 newValue!93) Nil!49687))))))

(declare-fun b!4433887 () Bool)

(declare-fun res!1834593 () Bool)

(assert (=> b!4433887 (=> (not res!1834593) (not e!2760893))))

(declare-fun hash!2213 (Hashable!5186 K!11053) (_ BitVec 64))

(assert (=> b!4433887 (= res!1834593 (= (hash!2213 hashF!1220 key!3717) hash!366))))

(declare-fun b!4433888 () Bool)

(declare-fun res!1834598 () Bool)

(assert (=> b!4433888 (=> res!1834598 e!2760894)))

(assert (=> b!4433888 (= res!1834598 (or (not (is-Cons!49688 (toList!3571 lm!1616))) (not (= (_1!28068 (h!55393 (toList!3571 lm!1616))) hash!366)) lt!1631329))))

(declare-fun b!4433889 () Bool)

(declare-fun res!1834597 () Bool)

(assert (=> b!4433889 (=> (not res!1834597) (not e!2760893))))

(declare-fun contains!12227 (ListMap!2815 K!11053) Bool)

(assert (=> b!4433889 (= res!1834597 (not (contains!12227 (extractMap!853 (toList!3571 lm!1616)) key!3717)))))

(declare-fun b!4433890 () Bool)

(declare-fun res!1834605 () Bool)

(assert (=> b!4433890 (=> (not res!1834605) (not e!2760893))))

(declare-fun allKeysSameHash!752 (List!49811 (_ BitVec 64) Hashable!5186) Bool)

(assert (=> b!4433890 (= res!1834605 (allKeysSameHash!752 newBucket!194 hash!366 hashF!1220))))

(assert (= (and start!433330 res!1834599) b!4433883))

(assert (= (and b!4433883 res!1834595) b!4433887))

(assert (= (and b!4433887 res!1834593) b!4433890))

(assert (= (and b!4433890 res!1834605) b!4433889))

(assert (= (and b!4433889 res!1834597) b!4433881))

(assert (= (and b!4433881 res!1834606) b!4433877))

(assert (= (and b!4433881 (not res!1834602)) b!4433886))

(assert (= (and b!4433881 res!1834600) b!4433885))

(assert (= (and b!4433885 res!1834592) b!4433876))

(assert (= (and b!4433876 res!1834603) b!4433882))

(assert (= (and b!4433882 (not res!1834604)) b!4433888))

(assert (= (and b!4433888 (not res!1834598)) b!4433875))

(assert (= (and b!4433875 (not res!1834594)) b!4433880))

(assert (= (and b!4433880 (not res!1834596)) b!4433879))

(assert (= (and b!4433879 (not res!1834601)) b!4433874))

(assert (= (and start!433330 (is-Cons!49687 newBucket!194)) b!4433884))

(assert (= start!433330 b!4433878))

(declare-fun m!5119387 () Bool)

(assert (=> b!4433887 m!5119387))

(declare-fun m!5119389 () Bool)

(assert (=> b!4433876 m!5119389))

(declare-fun m!5119391 () Bool)

(assert (=> b!4433880 m!5119391))

(declare-fun m!5119393 () Bool)

(assert (=> b!4433881 m!5119393))

(declare-fun m!5119395 () Bool)

(assert (=> b!4433877 m!5119395))

(declare-fun m!5119397 () Bool)

(assert (=> b!4433883 m!5119397))

(assert (=> b!4433874 m!5119395))

(declare-fun m!5119399 () Bool)

(assert (=> b!4433882 m!5119399))

(assert (=> b!4433882 m!5119399))

(declare-fun m!5119401 () Bool)

(assert (=> b!4433882 m!5119401))

(declare-fun m!5119403 () Bool)

(assert (=> b!4433882 m!5119403))

(declare-fun m!5119405 () Bool)

(assert (=> b!4433875 m!5119405))

(declare-fun m!5119407 () Bool)

(assert (=> b!4433890 m!5119407))

(declare-fun m!5119409 () Bool)

(assert (=> b!4433879 m!5119409))

(declare-fun m!5119411 () Bool)

(assert (=> b!4433879 m!5119411))

(assert (=> b!4433879 m!5119411))

(declare-fun m!5119413 () Bool)

(assert (=> b!4433879 m!5119413))

(assert (=> start!433330 m!5119389))

(declare-fun m!5119415 () Bool)

(assert (=> start!433330 m!5119415))

(declare-fun m!5119417 () Bool)

(assert (=> b!4433889 m!5119417))

(assert (=> b!4433889 m!5119417))

(declare-fun m!5119419 () Bool)

(assert (=> b!4433889 m!5119419))

(declare-fun m!5119421 () Bool)

(assert (=> b!4433885 m!5119421))

(push 1)

(assert (not b!4433887))

(assert (not b!4433877))

(assert (not b!4433883))

(assert (not b!4433884))

(assert (not b!4433874))

(assert (not start!433330))

(assert (not b!4433875))

(assert tp_is_empty!26413)

(assert (not b!4433876))

(assert (not b!4433881))

(assert (not b!4433879))

(assert (not b!4433878))

(assert (not b!4433889))

(assert tp_is_empty!26415)

(assert (not b!4433890))

(assert (not b!4433882))

(assert (not b!4433880))

(assert (not b!4433885))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

