; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!434934 () Bool)

(assert start!434934)

(declare-fun b!4443280 () Bool)

(declare-fun res!1840091 () Bool)

(declare-fun e!2766566 () Bool)

(assert (=> b!4443280 (=> (not res!1840091) (not e!2766566))))

(declare-datatypes ((V!11434 0))(
  ( (V!11435 (val!17221 Int)) )
))
(declare-datatypes ((K!11188 0))(
  ( (K!11189 (val!17222 Int)) )
))
(declare-datatypes ((tuple2!49762 0))(
  ( (tuple2!49763 (_1!28175 K!11188) (_2!28175 V!11434)) )
))
(declare-datatypes ((List!49944 0))(
  ( (Nil!49820) (Cons!49820 (h!55553 tuple2!49762) (t!356886 List!49944)) )
))
(declare-datatypes ((tuple2!49764 0))(
  ( (tuple2!49765 (_1!28176 (_ BitVec 64)) (_2!28176 List!49944)) )
))
(declare-datatypes ((List!49945 0))(
  ( (Nil!49821) (Cons!49821 (h!55554 tuple2!49764) (t!356887 List!49945)) )
))
(declare-datatypes ((ListLongMap!2329 0))(
  ( (ListLongMap!2330 (toList!3679 List!49945)) )
))
(declare-fun lm!1616 () ListLongMap!2329)

(declare-datatypes ((Hashable!5240 0))(
  ( (HashableExt!5239 (__x!30943 Int)) )
))
(declare-fun hashF!1220 () Hashable!5240)

(declare-fun allKeysSameHashInMap!952 (ListLongMap!2329 Hashable!5240) Bool)

(assert (=> b!4443280 (= res!1840091 (allKeysSameHashInMap!952 lm!1616 hashF!1220))))

(declare-fun b!4443281 () Bool)

(declare-fun e!2766576 () Bool)

(declare-fun e!2766572 () Bool)

(assert (=> b!4443281 (= e!2766576 e!2766572)))

(declare-fun res!1840088 () Bool)

(assert (=> b!4443281 (=> res!1840088 e!2766572)))

(declare-fun lt!1638066 () ListLongMap!2329)

(declare-fun lambda!157741 () Int)

(declare-fun forall!9723 (List!49945 Int) Bool)

(assert (=> b!4443281 (= res!1840088 (not (forall!9723 (toList!3679 lt!1638066) lambda!157741)))))

(declare-fun tail!7392 (ListLongMap!2329) ListLongMap!2329)

(assert (=> b!4443281 (= lt!1638066 (tail!7392 lm!1616))))

(declare-datatypes ((Unit!84102 0))(
  ( (Unit!84103) )
))
(declare-fun lt!1638069 () Unit!84102)

(declare-fun e!2766571 () Unit!84102)

(assert (=> b!4443281 (= lt!1638069 e!2766571)))

(declare-fun c!756172 () Bool)

(declare-fun key!3717 () K!11188)

(declare-datatypes ((ListMap!2923 0))(
  ( (ListMap!2924 (toList!3680 List!49944)) )
))
(declare-fun contains!12396 (ListMap!2923 K!11188) Bool)

(declare-fun extractMap!907 (List!49945) ListMap!2923)

(declare-fun tail!7393 (List!49945) List!49945)

(assert (=> b!4443281 (= c!756172 (contains!12396 (extractMap!907 (tail!7393 (toList!3679 lm!1616))) key!3717))))

(declare-fun b!4443282 () Bool)

(declare-fun res!1840089 () Bool)

(declare-fun e!2766567 () Bool)

(assert (=> b!4443282 (=> (not res!1840089) (not e!2766567))))

(assert (=> b!4443282 (= res!1840089 (forall!9723 (toList!3679 lm!1616) lambda!157741))))

(declare-fun b!4443283 () Bool)

(declare-fun e!2766574 () Bool)

(assert (=> b!4443283 (= e!2766572 e!2766574)))

(declare-fun res!1840103 () Bool)

(assert (=> b!4443283 (=> res!1840103 e!2766574)))

(declare-fun e!2766570 () Bool)

(assert (=> b!4443283 (= res!1840103 e!2766570)))

(declare-fun res!1840095 () Bool)

(assert (=> b!4443283 (=> (not res!1840095) (not e!2766570))))

(declare-fun e!2766575 () Bool)

(assert (=> b!4443283 (= res!1840095 e!2766575)))

(declare-fun res!1840099 () Bool)

(assert (=> b!4443283 (=> res!1840099 e!2766575)))

(declare-fun lt!1638065 () Bool)

(assert (=> b!4443283 (= res!1840099 (not lt!1638065))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12397 (ListLongMap!2329 (_ BitVec 64)) Bool)

(assert (=> b!4443283 (= lt!1638065 (contains!12397 lt!1638066 hash!366))))

(declare-fun b!4443284 () Bool)

(declare-fun res!1840096 () Bool)

(assert (=> b!4443284 (=> res!1840096 e!2766576)))

(assert (=> b!4443284 (= res!1840096 (or (and (is-Cons!49821 (toList!3679 lm!1616)) (= (_1!28176 (h!55554 (toList!3679 lm!1616))) hash!366)) (not (is-Cons!49821 (toList!3679 lm!1616))) (= (_1!28176 (h!55554 (toList!3679 lm!1616))) hash!366)))))

(declare-fun b!4443285 () Bool)

(declare-fun res!1840104 () Bool)

(assert (=> b!4443285 (=> (not res!1840104) (not e!2766566))))

(declare-fun newBucket!194 () List!49944)

(declare-fun allKeysSameHash!806 (List!49944 (_ BitVec 64) Hashable!5240) Bool)

(assert (=> b!4443285 (= res!1840104 (allKeysSameHash!806 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4443286 () Bool)

(declare-fun size!35887 (List!49945) Int)

(assert (=> b!4443286 (= e!2766574 (< (size!35887 (toList!3679 lt!1638066)) (size!35887 (toList!3679 lm!1616))))))

(declare-fun e!2766565 () Bool)

(declare-fun tp_is_empty!26629 () Bool)

(declare-fun tp!1334307 () Bool)

(declare-fun b!4443287 () Bool)

(declare-fun tp_is_empty!26631 () Bool)

(assert (=> b!4443287 (= e!2766565 (and tp_is_empty!26631 tp_is_empty!26629 tp!1334307))))

(declare-fun b!4443288 () Bool)

(assert (=> b!4443288 (= e!2766567 (not e!2766576))))

(declare-fun res!1840092 () Bool)

(assert (=> b!4443288 (=> res!1840092 e!2766576)))

(declare-fun lt!1638064 () ListLongMap!2329)

(assert (=> b!4443288 (= res!1840092 (not (forall!9723 (toList!3679 lt!1638064) lambda!157741)))))

(assert (=> b!4443288 (forall!9723 (toList!3679 lt!1638064) lambda!157741)))

(declare-fun +!1231 (ListLongMap!2329 tuple2!49764) ListLongMap!2329)

(assert (=> b!4443288 (= lt!1638064 (+!1231 lm!1616 (tuple2!49765 hash!366 newBucket!194)))))

(declare-fun lt!1638067 () Unit!84102)

(declare-fun addValidProp!484 (ListLongMap!2329 Int (_ BitVec 64) List!49944) Unit!84102)

(assert (=> b!4443288 (= lt!1638067 (addValidProp!484 lm!1616 lambda!157741 hash!366 newBucket!194))))

(declare-fun b!4443289 () Bool)

(declare-fun Unit!84104 () Unit!84102)

(assert (=> b!4443289 (= e!2766571 Unit!84104)))

(declare-fun b!4443291 () Bool)

(declare-fun res!1840101 () Bool)

(assert (=> b!4443291 (=> (not res!1840101) (not e!2766567))))

(declare-fun noDuplicateKeys!846 (List!49944) Bool)

(assert (=> b!4443291 (= res!1840101 (noDuplicateKeys!846 newBucket!194))))

(declare-fun b!4443292 () Bool)

(declare-fun newValue!93 () V!11434)

(declare-fun e!2766573 () Bool)

(declare-fun apply!11698 (ListLongMap!2329 (_ BitVec 64)) List!49944)

(assert (=> b!4443292 (= e!2766573 (= newBucket!194 (Cons!49820 (tuple2!49763 key!3717 newValue!93) (apply!11698 lm!1616 hash!366))))))

(declare-fun b!4443293 () Bool)

(assert (=> b!4443293 (= e!2766566 e!2766567)))

(declare-fun res!1840100 () Bool)

(assert (=> b!4443293 (=> (not res!1840100) (not e!2766567))))

(declare-fun e!2766569 () Bool)

(assert (=> b!4443293 (= res!1840100 e!2766569)))

(declare-fun res!1840102 () Bool)

(assert (=> b!4443293 (=> res!1840102 e!2766569)))

(assert (=> b!4443293 (= res!1840102 e!2766573)))

(declare-fun res!1840097 () Bool)

(assert (=> b!4443293 (=> (not res!1840097) (not e!2766573))))

(declare-fun lt!1638068 () Bool)

(assert (=> b!4443293 (= res!1840097 lt!1638068)))

(assert (=> b!4443293 (= lt!1638068 (contains!12397 lm!1616 hash!366))))

(declare-fun b!4443294 () Bool)

(declare-fun res!1840105 () Bool)

(assert (=> b!4443294 (=> res!1840105 e!2766572)))

(assert (=> b!4443294 (= res!1840105 (not (allKeysSameHashInMap!952 lt!1638066 hashF!1220)))))

(declare-fun b!4443295 () Bool)

(declare-fun res!1840090 () Bool)

(assert (=> b!4443295 (=> res!1840090 e!2766572)))

(assert (=> b!4443295 (= res!1840090 (contains!12396 (extractMap!907 (toList!3679 lt!1638066)) key!3717))))

(declare-fun b!4443296 () Bool)

(assert (=> b!4443296 (= e!2766570 (or lt!1638065 (not (= newBucket!194 (Cons!49820 (tuple2!49763 key!3717 newValue!93) Nil!49820)))))))

(declare-fun b!4443297 () Bool)

(declare-fun res!1840098 () Bool)

(assert (=> b!4443297 (=> (not res!1840098) (not e!2766566))))

(assert (=> b!4443297 (= res!1840098 (not (contains!12396 (extractMap!907 (toList!3679 lm!1616)) key!3717)))))

(declare-fun b!4443298 () Bool)

(declare-fun Unit!84105 () Unit!84102)

(assert (=> b!4443298 (= e!2766571 Unit!84105)))

(declare-fun lt!1638070 () Unit!84102)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!83 (ListLongMap!2329 K!11188 Hashable!5240) Unit!84102)

(assert (=> b!4443298 (= lt!1638070 (lemmaExtractTailMapContainsThenExtractMapDoes!83 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4443298 false))

(declare-fun b!4443299 () Bool)

(assert (=> b!4443299 (= e!2766575 (not (= newBucket!194 (Cons!49820 (tuple2!49763 key!3717 newValue!93) (apply!11698 lt!1638066 hash!366)))))))

(declare-fun res!1840094 () Bool)

(assert (=> start!434934 (=> (not res!1840094) (not e!2766566))))

(assert (=> start!434934 (= res!1840094 (forall!9723 (toList!3679 lm!1616) lambda!157741))))

(assert (=> start!434934 e!2766566))

(assert (=> start!434934 tp_is_empty!26629))

(assert (=> start!434934 tp_is_empty!26631))

(assert (=> start!434934 e!2766565))

(declare-fun e!2766568 () Bool)

(declare-fun inv!65375 (ListLongMap!2329) Bool)

(assert (=> start!434934 (and (inv!65375 lm!1616) e!2766568)))

(assert (=> start!434934 true))

(declare-fun b!4443290 () Bool)

(declare-fun tp!1334308 () Bool)

(assert (=> b!4443290 (= e!2766568 tp!1334308)))

(declare-fun b!4443300 () Bool)

(assert (=> b!4443300 (= e!2766569 (and (not lt!1638068) (= newBucket!194 (Cons!49820 (tuple2!49763 key!3717 newValue!93) Nil!49820))))))

(declare-fun b!4443301 () Bool)

(declare-fun res!1840093 () Bool)

(assert (=> b!4443301 (=> (not res!1840093) (not e!2766566))))

(declare-fun hash!2306 (Hashable!5240 K!11188) (_ BitVec 64))

(assert (=> b!4443301 (= res!1840093 (= (hash!2306 hashF!1220 key!3717) hash!366))))

(assert (= (and start!434934 res!1840094) b!4443280))

(assert (= (and b!4443280 res!1840091) b!4443301))

(assert (= (and b!4443301 res!1840093) b!4443285))

(assert (= (and b!4443285 res!1840104) b!4443297))

(assert (= (and b!4443297 res!1840098) b!4443293))

(assert (= (and b!4443293 res!1840097) b!4443292))

(assert (= (and b!4443293 (not res!1840102)) b!4443300))

(assert (= (and b!4443293 res!1840100) b!4443291))

(assert (= (and b!4443291 res!1840101) b!4443282))

(assert (= (and b!4443282 res!1840089) b!4443288))

(assert (= (and b!4443288 (not res!1840092)) b!4443284))

(assert (= (and b!4443284 (not res!1840096)) b!4443281))

(assert (= (and b!4443281 c!756172) b!4443298))

(assert (= (and b!4443281 (not c!756172)) b!4443289))

(assert (= (and b!4443281 (not res!1840088)) b!4443294))

(assert (= (and b!4443294 (not res!1840105)) b!4443295))

(assert (= (and b!4443295 (not res!1840090)) b!4443283))

(assert (= (and b!4443283 (not res!1840099)) b!4443299))

(assert (= (and b!4443283 res!1840095) b!4443296))

(assert (= (and b!4443283 (not res!1840103)) b!4443286))

(assert (= (and start!434934 (is-Cons!49820 newBucket!194)) b!4443287))

(assert (= start!434934 b!4443290))

(declare-fun m!5132591 () Bool)

(assert (=> b!4443297 m!5132591))

(assert (=> b!4443297 m!5132591))

(declare-fun m!5132593 () Bool)

(assert (=> b!4443297 m!5132593))

(declare-fun m!5132595 () Bool)

(assert (=> b!4443286 m!5132595))

(declare-fun m!5132597 () Bool)

(assert (=> b!4443286 m!5132597))

(declare-fun m!5132599 () Bool)

(assert (=> b!4443299 m!5132599))

(declare-fun m!5132601 () Bool)

(assert (=> b!4443298 m!5132601))

(declare-fun m!5132603 () Bool)

(assert (=> b!4443301 m!5132603))

(declare-fun m!5132605 () Bool)

(assert (=> b!4443295 m!5132605))

(assert (=> b!4443295 m!5132605))

(declare-fun m!5132607 () Bool)

(assert (=> b!4443295 m!5132607))

(declare-fun m!5132609 () Bool)

(assert (=> b!4443294 m!5132609))

(declare-fun m!5132611 () Bool)

(assert (=> b!4443282 m!5132611))

(declare-fun m!5132613 () Bool)

(assert (=> b!4443280 m!5132613))

(assert (=> start!434934 m!5132611))

(declare-fun m!5132615 () Bool)

(assert (=> start!434934 m!5132615))

(declare-fun m!5132617 () Bool)

(assert (=> b!4443288 m!5132617))

(assert (=> b!4443288 m!5132617))

(declare-fun m!5132619 () Bool)

(assert (=> b!4443288 m!5132619))

(declare-fun m!5132621 () Bool)

(assert (=> b!4443288 m!5132621))

(declare-fun m!5132623 () Bool)

(assert (=> b!4443291 m!5132623))

(declare-fun m!5132625 () Bool)

(assert (=> b!4443281 m!5132625))

(declare-fun m!5132627 () Bool)

(assert (=> b!4443281 m!5132627))

(declare-fun m!5132629 () Bool)

(assert (=> b!4443281 m!5132629))

(assert (=> b!4443281 m!5132625))

(assert (=> b!4443281 m!5132627))

(declare-fun m!5132631 () Bool)

(assert (=> b!4443281 m!5132631))

(declare-fun m!5132633 () Bool)

(assert (=> b!4443281 m!5132633))

(declare-fun m!5132635 () Bool)

(assert (=> b!4443292 m!5132635))

(declare-fun m!5132637 () Bool)

(assert (=> b!4443283 m!5132637))

(declare-fun m!5132639 () Bool)

(assert (=> b!4443285 m!5132639))

(declare-fun m!5132641 () Bool)

(assert (=> b!4443293 m!5132641))

(push 1)

(assert (not b!4443282))

(assert (not b!4443292))

(assert (not b!4443293))

(assert (not b!4443285))

(assert (not b!4443287))

(assert (not start!434934))

(assert (not b!4443280))

(assert (not b!4443290))

(assert (not b!4443299))

(assert (not b!4443295))

(assert tp_is_empty!26629)

(assert (not b!4443291))

(assert tp_is_empty!26631)

(assert (not b!4443283))

(assert (not b!4443281))

(assert (not b!4443301))

(assert (not b!4443297))

(assert (not b!4443294))

(assert (not b!4443298))

(assert (not b!4443288))

(assert (not b!4443286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!764871 () Bool)

(declare-fun d!1348954 () Bool)

(assert (= bs!764871 (and d!1348954 start!434934)))

(declare-fun lambda!157755 () Int)

(assert (=> bs!764871 (not (= lambda!157755 lambda!157741))))

(assert (=> d!1348954 true))

(assert (=> d!1348954 (= (allKeysSameHashInMap!952 lt!1638066 hashF!1220) (forall!9723 (toList!3679 lt!1638066) lambda!157755))))

(declare-fun bs!764872 () Bool)

(assert (= bs!764872 d!1348954))

(declare-fun m!5132699 () Bool)

(assert (=> bs!764872 m!5132699))

(assert (=> b!4443294 d!1348954))

(declare-fun d!1348956 () Bool)

(declare-fun e!2766624 () Bool)

(assert (=> d!1348956 e!2766624))

(declare-fun res!1840168 () Bool)

(assert (=> d!1348956 (=> res!1840168 e!2766624)))

(declare-fun lt!1638100 () Bool)

(assert (=> d!1348956 (= res!1840168 (not lt!1638100))))

(declare-fun lt!1638103 () Bool)

(assert (=> d!1348956 (= lt!1638100 lt!1638103)))

(declare-fun lt!1638101 () Unit!84102)

(declare-fun e!2766623 () Unit!84102)

(assert (=> d!1348956 (= lt!1638101 e!2766623)))

(declare-fun c!756178 () Bool)

(assert (=> d!1348956 (= c!756178 lt!1638103)))

(declare-fun containsKey!1261 (List!49945 (_ BitVec 64)) Bool)

(assert (=> d!1348956 (= lt!1638103 (containsKey!1261 (toList!3679 lt!1638066) hash!366))))

(assert (=> d!1348956 (= (contains!12397 lt!1638066 hash!366) lt!1638100)))

(declare-fun b!4443382 () Bool)

(declare-fun lt!1638102 () Unit!84102)

(assert (=> b!4443382 (= e!2766623 lt!1638102)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!708 (List!49945 (_ BitVec 64)) Unit!84102)

(assert (=> b!4443382 (= lt!1638102 (lemmaContainsKeyImpliesGetValueByKeyDefined!708 (toList!3679 lt!1638066) hash!366))))

(declare-datatypes ((Option!10815 0))(
  ( (None!10814) (Some!10814 (v!44050 List!49944)) )
))
(declare-fun isDefined!8105 (Option!10815) Bool)

(declare-fun getValueByKey!801 (List!49945 (_ BitVec 64)) Option!10815)

(assert (=> b!4443382 (isDefined!8105 (getValueByKey!801 (toList!3679 lt!1638066) hash!366))))

(declare-fun b!4443383 () Bool)

(declare-fun Unit!84110 () Unit!84102)

(assert (=> b!4443383 (= e!2766623 Unit!84110)))

(declare-fun b!4443384 () Bool)

(assert (=> b!4443384 (= e!2766624 (isDefined!8105 (getValueByKey!801 (toList!3679 lt!1638066) hash!366)))))

(assert (= (and d!1348956 c!756178) b!4443382))

(assert (= (and d!1348956 (not c!756178)) b!4443383))

(assert (= (and d!1348956 (not res!1840168)) b!4443384))

(declare-fun m!5132701 () Bool)

(assert (=> d!1348956 m!5132701))

(declare-fun m!5132703 () Bool)

(assert (=> b!4443382 m!5132703))

(declare-fun m!5132705 () Bool)

(assert (=> b!4443382 m!5132705))

(assert (=> b!4443382 m!5132705))

(declare-fun m!5132707 () Bool)

(assert (=> b!4443382 m!5132707))

(assert (=> b!4443384 m!5132705))

(assert (=> b!4443384 m!5132705))

(assert (=> b!4443384 m!5132707))

(assert (=> b!4443283 d!1348956))

(declare-fun d!1348958 () Bool)

(declare-fun e!2766626 () Bool)

(assert (=> d!1348958 e!2766626))

(declare-fun res!1840169 () Bool)

(assert (=> d!1348958 (=> res!1840169 e!2766626)))

(declare-fun lt!1638104 () Bool)

(assert (=> d!1348958 (= res!1840169 (not lt!1638104))))

(declare-fun lt!1638107 () Bool)

(assert (=> d!1348958 (= lt!1638104 lt!1638107)))

(declare-fun lt!1638105 () Unit!84102)

(declare-fun e!2766625 () Unit!84102)

(assert (=> d!1348958 (= lt!1638105 e!2766625)))

(declare-fun c!756179 () Bool)

(assert (=> d!1348958 (= c!756179 lt!1638107)))

(assert (=> d!1348958 (= lt!1638107 (containsKey!1261 (toList!3679 lm!1616) hash!366))))

(assert (=> d!1348958 (= (contains!12397 lm!1616 hash!366) lt!1638104)))

(declare-fun b!4443385 () Bool)

(declare-fun lt!1638106 () Unit!84102)

(assert (=> b!4443385 (= e!2766625 lt!1638106)))

(assert (=> b!4443385 (= lt!1638106 (lemmaContainsKeyImpliesGetValueByKeyDefined!708 (toList!3679 lm!1616) hash!366))))

(assert (=> b!4443385 (isDefined!8105 (getValueByKey!801 (toList!3679 lm!1616) hash!366))))

(declare-fun b!4443386 () Bool)

(declare-fun Unit!84111 () Unit!84102)

(assert (=> b!4443386 (= e!2766625 Unit!84111)))

(declare-fun b!4443387 () Bool)

(assert (=> b!4443387 (= e!2766626 (isDefined!8105 (getValueByKey!801 (toList!3679 lm!1616) hash!366)))))

(assert (= (and d!1348958 c!756179) b!4443385))

(assert (= (and d!1348958 (not c!756179)) b!4443386))

(assert (= (and d!1348958 (not res!1840169)) b!4443387))

(declare-fun m!5132709 () Bool)

(assert (=> d!1348958 m!5132709))

(declare-fun m!5132711 () Bool)

(assert (=> b!4443385 m!5132711))

(declare-fun m!5132713 () Bool)

(assert (=> b!4443385 m!5132713))

(assert (=> b!4443385 m!5132713))

(declare-fun m!5132715 () Bool)

(assert (=> b!4443385 m!5132715))

(assert (=> b!4443387 m!5132713))

(assert (=> b!4443387 m!5132713))

(assert (=> b!4443387 m!5132715))

(assert (=> b!4443293 d!1348958))

(declare-fun d!1348960 () Bool)

(declare-fun res!1840174 () Bool)

(declare-fun e!2766631 () Bool)

(assert (=> d!1348960 (=> res!1840174 e!2766631)))

(assert (=> d!1348960 (= res!1840174 (is-Nil!49821 (toList!3679 lm!1616)))))

(assert (=> d!1348960 (= (forall!9723 (toList!3679 lm!1616) lambda!157741) e!2766631)))

(declare-fun b!4443392 () Bool)

(declare-fun e!2766632 () Bool)

(assert (=> b!4443392 (= e!2766631 e!2766632)))

(declare-fun res!1840175 () Bool)

(assert (=> b!4443392 (=> (not res!1840175) (not e!2766632))))

(declare-fun dynLambda!20919 (Int tuple2!49764) Bool)

(assert (=> b!4443392 (= res!1840175 (dynLambda!20919 lambda!157741 (h!55554 (toList!3679 lm!1616))))))

(declare-fun b!4443393 () Bool)

(assert (=> b!4443393 (= e!2766632 (forall!9723 (t!356887 (toList!3679 lm!1616)) lambda!157741))))

(assert (= (and d!1348960 (not res!1840174)) b!4443392))

(assert (= (and b!4443392 res!1840175) b!4443393))

(declare-fun b_lambda!145291 () Bool)

(assert (=> (not b_lambda!145291) (not b!4443392)))

(declare-fun m!5132717 () Bool)

(assert (=> b!4443392 m!5132717))

(declare-fun m!5132719 () Bool)

(assert (=> b!4443393 m!5132719))

(assert (=> b!4443282 d!1348960))

(declare-fun d!1348962 () Bool)

(declare-fun get!16250 (Option!10815) List!49944)

(assert (=> d!1348962 (= (apply!11698 lm!1616 hash!366) (get!16250 (getValueByKey!801 (toList!3679 lm!1616) hash!366)))))

(declare-fun bs!764873 () Bool)

(assert (= bs!764873 d!1348962))

(assert (=> bs!764873 m!5132713))

(assert (=> bs!764873 m!5132713))

(declare-fun m!5132721 () Bool)

(assert (=> bs!764873 m!5132721))

(assert (=> b!4443292 d!1348962))

(declare-fun b!4443421 () Bool)

(declare-datatypes ((List!49948 0))(
  ( (Nil!49824) (Cons!49824 (h!55558 K!11188) (t!356890 List!49948)) )
))
(declare-fun e!2766652 () List!49948)

(declare-fun getKeysList!296 (List!49944) List!49948)

(assert (=> b!4443421 (= e!2766652 (getKeysList!296 (toList!3680 (extractMap!907 (toList!3679 lm!1616)))))))

(declare-fun b!4443422 () Bool)

(declare-fun e!2766655 () Unit!84102)

(declare-fun e!2766654 () Unit!84102)

(assert (=> b!4443422 (= e!2766655 e!2766654)))

(declare-fun c!756188 () Bool)

(declare-fun call!309125 () Bool)

(assert (=> b!4443422 (= c!756188 call!309125)))

(declare-fun b!4443423 () Bool)

(declare-fun Unit!84112 () Unit!84102)

(assert (=> b!4443423 (= e!2766654 Unit!84112)))

(declare-fun bm!309120 () Bool)

(declare-fun contains!12400 (List!49948 K!11188) Bool)

(assert (=> bm!309120 (= call!309125 (contains!12400 e!2766652 key!3717))))

(declare-fun c!756187 () Bool)

(declare-fun c!756186 () Bool)

(assert (=> bm!309120 (= c!756187 c!756186)))

(declare-fun b!4443424 () Bool)

(declare-fun e!2766650 () Bool)

(declare-fun e!2766651 () Bool)

(assert (=> b!4443424 (= e!2766650 e!2766651)))

(declare-fun res!1840190 () Bool)

(assert (=> b!4443424 (=> (not res!1840190) (not e!2766651))))

(declare-datatypes ((Option!10816 0))(
  ( (None!10815) (Some!10815 (v!44051 V!11434)) )
))
(declare-fun isDefined!8106 (Option!10816) Bool)

(declare-fun getValueByKey!802 (List!49944 K!11188) Option!10816)

(assert (=> b!4443424 (= res!1840190 (isDefined!8106 (getValueByKey!802 (toList!3680 (extractMap!907 (toList!3679 lm!1616))) key!3717)))))

(declare-fun b!4443425 () Bool)

(declare-fun lt!1638144 () Unit!84102)

(assert (=> b!4443425 (= e!2766655 lt!1638144)))

(declare-fun lt!1638139 () Unit!84102)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!709 (List!49944 K!11188) Unit!84102)

(assert (=> b!4443425 (= lt!1638139 (lemmaContainsKeyImpliesGetValueByKeyDefined!709 (toList!3680 (extractMap!907 (toList!3679 lm!1616))) key!3717))))

(assert (=> b!4443425 (isDefined!8106 (getValueByKey!802 (toList!3680 (extractMap!907 (toList!3679 lm!1616))) key!3717))))

(declare-fun lt!1638138 () Unit!84102)

(assert (=> b!4443425 (= lt!1638138 lt!1638139)))

(declare-fun lemmaInListThenGetKeysListContains!293 (List!49944 K!11188) Unit!84102)

(assert (=> b!4443425 (= lt!1638144 (lemmaInListThenGetKeysListContains!293 (toList!3680 (extractMap!907 (toList!3679 lm!1616))) key!3717))))

(assert (=> b!4443425 call!309125))

(declare-fun b!4443426 () Bool)

(declare-fun keys!17074 (ListMap!2923) List!49948)

(assert (=> b!4443426 (= e!2766651 (contains!12400 (keys!17074 (extractMap!907 (toList!3679 lm!1616))) key!3717))))

(declare-fun b!4443427 () Bool)

(assert (=> b!4443427 (= e!2766652 (keys!17074 (extractMap!907 (toList!3679 lm!1616))))))

(declare-fun d!1348964 () Bool)

(assert (=> d!1348964 e!2766650))

(declare-fun res!1840192 () Bool)

(assert (=> d!1348964 (=> res!1840192 e!2766650)))

(declare-fun e!2766653 () Bool)

(assert (=> d!1348964 (= res!1840192 e!2766653)))

(declare-fun res!1840191 () Bool)

(assert (=> d!1348964 (=> (not res!1840191) (not e!2766653))))

(declare-fun lt!1638145 () Bool)

(assert (=> d!1348964 (= res!1840191 (not lt!1638145))))

(declare-fun lt!1638142 () Bool)

(assert (=> d!1348964 (= lt!1638145 lt!1638142)))

(declare-fun lt!1638140 () Unit!84102)

(assert (=> d!1348964 (= lt!1638140 e!2766655)))

(assert (=> d!1348964 (= c!756186 lt!1638142)))

(declare-fun containsKey!1262 (List!49944 K!11188) Bool)

(assert (=> d!1348964 (= lt!1638142 (containsKey!1262 (toList!3680 (extractMap!907 (toList!3679 lm!1616))) key!3717))))

(assert (=> d!1348964 (= (contains!12396 (extractMap!907 (toList!3679 lm!1616)) key!3717) lt!1638145)))

(declare-fun b!4443428 () Bool)

(assert (=> b!4443428 (= e!2766653 (not (contains!12400 (keys!17074 (extractMap!907 (toList!3679 lm!1616))) key!3717)))))

(declare-fun b!4443429 () Bool)

(assert (=> b!4443429 false))

(declare-fun lt!1638141 () Unit!84102)

(declare-fun lt!1638143 () Unit!84102)

(assert (=> b!4443429 (= lt!1638141 lt!1638143)))

(assert (=> b!4443429 (containsKey!1262 (toList!3680 (extractMap!907 (toList!3679 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!294 (List!49944 K!11188) Unit!84102)

(assert (=> b!4443429 (= lt!1638143 (lemmaInGetKeysListThenContainsKey!294 (toList!3680 (extractMap!907 (toList!3679 lm!1616))) key!3717))))

(declare-fun Unit!84113 () Unit!84102)

(assert (=> b!4443429 (= e!2766654 Unit!84113)))

(assert (= (and d!1348964 c!756186) b!4443425))

(assert (= (and d!1348964 (not c!756186)) b!4443422))

(assert (= (and b!4443422 c!756188) b!4443429))

(assert (= (and b!4443422 (not c!756188)) b!4443423))

(assert (= (or b!4443425 b!4443422) bm!309120))

(assert (= (and bm!309120 c!756187) b!4443421))

(assert (= (and bm!309120 (not c!756187)) b!4443427))

(assert (= (and d!1348964 res!1840191) b!4443428))

(assert (= (and d!1348964 (not res!1840192)) b!4443424))

(assert (= (and b!4443424 res!1840190) b!4443426))

(declare-fun m!5132735 () Bool)

(assert (=> b!4443429 m!5132735))

(declare-fun m!5132737 () Bool)

(assert (=> b!4443429 m!5132737))

(assert (=> b!4443427 m!5132591))

(declare-fun m!5132739 () Bool)

(assert (=> b!4443427 m!5132739))

(declare-fun m!5132741 () Bool)

(assert (=> b!4443421 m!5132741))

(assert (=> d!1348964 m!5132735))

(declare-fun m!5132743 () Bool)

(assert (=> b!4443425 m!5132743))

(declare-fun m!5132745 () Bool)

(assert (=> b!4443425 m!5132745))

(assert (=> b!4443425 m!5132745))

(declare-fun m!5132747 () Bool)

(assert (=> b!4443425 m!5132747))

(declare-fun m!5132749 () Bool)

(assert (=> b!4443425 m!5132749))

(assert (=> b!4443428 m!5132591))

(assert (=> b!4443428 m!5132739))

(assert (=> b!4443428 m!5132739))

(declare-fun m!5132751 () Bool)

(assert (=> b!4443428 m!5132751))

(declare-fun m!5132753 () Bool)

(assert (=> bm!309120 m!5132753))

(assert (=> b!4443426 m!5132591))

(assert (=> b!4443426 m!5132739))

(assert (=> b!4443426 m!5132739))

(assert (=> b!4443426 m!5132751))

(assert (=> b!4443424 m!5132745))

(assert (=> b!4443424 m!5132745))

(assert (=> b!4443424 m!5132747))

(assert (=> b!4443297 d!1348964))

(declare-fun bs!764874 () Bool)

(declare-fun d!1348968 () Bool)

(assert (= bs!764874 (and d!1348968 start!434934)))

(declare-fun lambda!157758 () Int)

(assert (=> bs!764874 (= lambda!157758 lambda!157741)))

(declare-fun bs!764875 () Bool)

(assert (= bs!764875 (and d!1348968 d!1348954)))

(assert (=> bs!764875 (not (= lambda!157758 lambda!157755))))

(declare-fun lt!1638149 () ListMap!2923)

(declare-fun invariantList!849 (List!49944) Bool)

(assert (=> d!1348968 (invariantList!849 (toList!3680 lt!1638149))))

(declare-fun e!2766659 () ListMap!2923)

(assert (=> d!1348968 (= lt!1638149 e!2766659)))

(declare-fun c!756191 () Bool)

(assert (=> d!1348968 (= c!756191 (is-Cons!49821 (toList!3679 lm!1616)))))

(assert (=> d!1348968 (forall!9723 (toList!3679 lm!1616) lambda!157758)))

(assert (=> d!1348968 (= (extractMap!907 (toList!3679 lm!1616)) lt!1638149)))

(declare-fun b!4443435 () Bool)

(declare-fun addToMapMapFromBucket!452 (List!49944 ListMap!2923) ListMap!2923)

(assert (=> b!4443435 (= e!2766659 (addToMapMapFromBucket!452 (_2!28176 (h!55554 (toList!3679 lm!1616))) (extractMap!907 (t!356887 (toList!3679 lm!1616)))))))

(declare-fun b!4443436 () Bool)

(assert (=> b!4443436 (= e!2766659 (ListMap!2924 Nil!49820))))

(assert (= (and d!1348968 c!756191) b!4443435))

(assert (= (and d!1348968 (not c!756191)) b!4443436))

(declare-fun m!5132761 () Bool)

(assert (=> d!1348968 m!5132761))

(declare-fun m!5132763 () Bool)

(assert (=> d!1348968 m!5132763))

(declare-fun m!5132765 () Bool)

(assert (=> b!4443435 m!5132765))

(assert (=> b!4443435 m!5132765))

(declare-fun m!5132767 () Bool)

(assert (=> b!4443435 m!5132767))

(assert (=> b!4443297 d!1348968))

(declare-fun d!1348972 () Bool)

(declare-fun lt!1638152 () Int)

(assert (=> d!1348972 (>= lt!1638152 0)))

(declare-fun e!2766662 () Int)

(assert (=> d!1348972 (= lt!1638152 e!2766662)))

(declare-fun c!756194 () Bool)

(assert (=> d!1348972 (= c!756194 (is-Nil!49821 (toList!3679 lt!1638066)))))

(assert (=> d!1348972 (= (size!35887 (toList!3679 lt!1638066)) lt!1638152)))

(declare-fun b!4443441 () Bool)

(assert (=> b!4443441 (= e!2766662 0)))

(declare-fun b!4443442 () Bool)

(assert (=> b!4443442 (= e!2766662 (+ 1 (size!35887 (t!356887 (toList!3679 lt!1638066)))))))

(assert (= (and d!1348972 c!756194) b!4443441))

(assert (= (and d!1348972 (not c!756194)) b!4443442))

(declare-fun m!5132769 () Bool)

(assert (=> b!4443442 m!5132769))

(assert (=> b!4443286 d!1348972))

(declare-fun d!1348974 () Bool)

(declare-fun lt!1638153 () Int)

(assert (=> d!1348974 (>= lt!1638153 0)))

(declare-fun e!2766663 () Int)

(assert (=> d!1348974 (= lt!1638153 e!2766663)))

(declare-fun c!756195 () Bool)

(assert (=> d!1348974 (= c!756195 (is-Nil!49821 (toList!3679 lm!1616)))))

(assert (=> d!1348974 (= (size!35887 (toList!3679 lm!1616)) lt!1638153)))

(declare-fun b!4443443 () Bool)

(assert (=> b!4443443 (= e!2766663 0)))

(declare-fun b!4443444 () Bool)

(assert (=> b!4443444 (= e!2766663 (+ 1 (size!35887 (t!356887 (toList!3679 lm!1616)))))))

(assert (= (and d!1348974 c!756195) b!4443443))

(assert (= (and d!1348974 (not c!756195)) b!4443444))

(declare-fun m!5132771 () Bool)

(assert (=> b!4443444 m!5132771))

(assert (=> b!4443286 d!1348974))

(declare-fun d!1348976 () Bool)

(assert (=> d!1348976 true))

(assert (=> d!1348976 true))

(declare-fun lambda!157761 () Int)

(declare-fun forall!9725 (List!49944 Int) Bool)

(assert (=> d!1348976 (= (allKeysSameHash!806 newBucket!194 hash!366 hashF!1220) (forall!9725 newBucket!194 lambda!157761))))

(declare-fun bs!764876 () Bool)

(assert (= bs!764876 d!1348976))

(declare-fun m!5132773 () Bool)

(assert (=> bs!764876 m!5132773))

(assert (=> b!4443285 d!1348976))

(declare-fun b!4443449 () Bool)

(declare-fun e!2766666 () List!49948)

(assert (=> b!4443449 (= e!2766666 (getKeysList!296 (toList!3680 (extractMap!907 (toList!3679 lt!1638066)))))))

(declare-fun b!4443450 () Bool)

(declare-fun e!2766669 () Unit!84102)

(declare-fun e!2766668 () Unit!84102)

(assert (=> b!4443450 (= e!2766669 e!2766668)))

(declare-fun c!756198 () Bool)

(declare-fun call!309126 () Bool)

(assert (=> b!4443450 (= c!756198 call!309126)))

(declare-fun b!4443451 () Bool)

(declare-fun Unit!84114 () Unit!84102)

(assert (=> b!4443451 (= e!2766668 Unit!84114)))

(declare-fun bm!309121 () Bool)

(assert (=> bm!309121 (= call!309126 (contains!12400 e!2766666 key!3717))))

(declare-fun c!756197 () Bool)

(declare-fun c!756196 () Bool)

(assert (=> bm!309121 (= c!756197 c!756196)))

(declare-fun b!4443452 () Bool)

(declare-fun e!2766664 () Bool)

(declare-fun e!2766665 () Bool)

(assert (=> b!4443452 (= e!2766664 e!2766665)))

(declare-fun res!1840194 () Bool)

(assert (=> b!4443452 (=> (not res!1840194) (not e!2766665))))

(assert (=> b!4443452 (= res!1840194 (isDefined!8106 (getValueByKey!802 (toList!3680 (extractMap!907 (toList!3679 lt!1638066))) key!3717)))))

(declare-fun b!4443453 () Bool)

(declare-fun lt!1638160 () Unit!84102)

(assert (=> b!4443453 (= e!2766669 lt!1638160)))

(declare-fun lt!1638155 () Unit!84102)

(assert (=> b!4443453 (= lt!1638155 (lemmaContainsKeyImpliesGetValueByKeyDefined!709 (toList!3680 (extractMap!907 (toList!3679 lt!1638066))) key!3717))))

(assert (=> b!4443453 (isDefined!8106 (getValueByKey!802 (toList!3680 (extractMap!907 (toList!3679 lt!1638066))) key!3717))))

(declare-fun lt!1638154 () Unit!84102)

(assert (=> b!4443453 (= lt!1638154 lt!1638155)))

(assert (=> b!4443453 (= lt!1638160 (lemmaInListThenGetKeysListContains!293 (toList!3680 (extractMap!907 (toList!3679 lt!1638066))) key!3717))))

(assert (=> b!4443453 call!309126))

(declare-fun b!4443454 () Bool)

(assert (=> b!4443454 (= e!2766665 (contains!12400 (keys!17074 (extractMap!907 (toList!3679 lt!1638066))) key!3717))))

(declare-fun b!4443455 () Bool)

(assert (=> b!4443455 (= e!2766666 (keys!17074 (extractMap!907 (toList!3679 lt!1638066))))))

(declare-fun d!1348978 () Bool)

(assert (=> d!1348978 e!2766664))

(declare-fun res!1840196 () Bool)

(assert (=> d!1348978 (=> res!1840196 e!2766664)))

(declare-fun e!2766667 () Bool)

(assert (=> d!1348978 (= res!1840196 e!2766667)))

(declare-fun res!1840195 () Bool)

(assert (=> d!1348978 (=> (not res!1840195) (not e!2766667))))

(declare-fun lt!1638161 () Bool)

(assert (=> d!1348978 (= res!1840195 (not lt!1638161))))

(declare-fun lt!1638158 () Bool)

(assert (=> d!1348978 (= lt!1638161 lt!1638158)))

(declare-fun lt!1638156 () Unit!84102)

(assert (=> d!1348978 (= lt!1638156 e!2766669)))

(assert (=> d!1348978 (= c!756196 lt!1638158)))

(assert (=> d!1348978 (= lt!1638158 (containsKey!1262 (toList!3680 (extractMap!907 (toList!3679 lt!1638066))) key!3717))))

(assert (=> d!1348978 (= (contains!12396 (extractMap!907 (toList!3679 lt!1638066)) key!3717) lt!1638161)))

(declare-fun b!4443456 () Bool)

(assert (=> b!4443456 (= e!2766667 (not (contains!12400 (keys!17074 (extractMap!907 (toList!3679 lt!1638066))) key!3717)))))

(declare-fun b!4443457 () Bool)

(assert (=> b!4443457 false))

(declare-fun lt!1638157 () Unit!84102)

(declare-fun lt!1638159 () Unit!84102)

(assert (=> b!4443457 (= lt!1638157 lt!1638159)))

(assert (=> b!4443457 (containsKey!1262 (toList!3680 (extractMap!907 (toList!3679 lt!1638066))) key!3717)))

(assert (=> b!4443457 (= lt!1638159 (lemmaInGetKeysListThenContainsKey!294 (toList!3680 (extractMap!907 (toList!3679 lt!1638066))) key!3717))))

(declare-fun Unit!84115 () Unit!84102)

(assert (=> b!4443457 (= e!2766668 Unit!84115)))

(assert (= (and d!1348978 c!756196) b!4443453))

(assert (= (and d!1348978 (not c!756196)) b!4443450))

(assert (= (and b!4443450 c!756198) b!4443457))

(assert (= (and b!4443450 (not c!756198)) b!4443451))

(assert (= (or b!4443453 b!4443450) bm!309121))

(assert (= (and bm!309121 c!756197) b!4443449))

(assert (= (and bm!309121 (not c!756197)) b!4443455))

(assert (= (and d!1348978 res!1840195) b!4443456))

(assert (= (and d!1348978 (not res!1840196)) b!4443452))

(assert (= (and b!4443452 res!1840194) b!4443454))

(declare-fun m!5132775 () Bool)

(assert (=> b!4443457 m!5132775))

(declare-fun m!5132777 () Bool)

(assert (=> b!4443457 m!5132777))

(assert (=> b!4443455 m!5132605))

(declare-fun m!5132779 () Bool)

(assert (=> b!4443455 m!5132779))

(declare-fun m!5132781 () Bool)

(assert (=> b!4443449 m!5132781))

(assert (=> d!1348978 m!5132775))

(declare-fun m!5132783 () Bool)

(assert (=> b!4443453 m!5132783))

(declare-fun m!5132785 () Bool)

(assert (=> b!4443453 m!5132785))

(assert (=> b!4443453 m!5132785))

(declare-fun m!5132787 () Bool)

(assert (=> b!4443453 m!5132787))

(declare-fun m!5132789 () Bool)

(assert (=> b!4443453 m!5132789))

(assert (=> b!4443456 m!5132605))

(assert (=> b!4443456 m!5132779))

(assert (=> b!4443456 m!5132779))

(declare-fun m!5132791 () Bool)

(assert (=> b!4443456 m!5132791))

(declare-fun m!5132793 () Bool)

(assert (=> bm!309121 m!5132793))

(assert (=> b!4443454 m!5132605))

(assert (=> b!4443454 m!5132779))

(assert (=> b!4443454 m!5132779))

(assert (=> b!4443454 m!5132791))

(assert (=> b!4443452 m!5132785))

(assert (=> b!4443452 m!5132785))

(assert (=> b!4443452 m!5132787))

(assert (=> b!4443295 d!1348978))

(declare-fun bs!764877 () Bool)

(declare-fun d!1348980 () Bool)

(assert (= bs!764877 (and d!1348980 start!434934)))

(declare-fun lambda!157762 () Int)

(assert (=> bs!764877 (= lambda!157762 lambda!157741)))

(declare-fun bs!764878 () Bool)

(assert (= bs!764878 (and d!1348980 d!1348954)))

(assert (=> bs!764878 (not (= lambda!157762 lambda!157755))))

(declare-fun bs!764879 () Bool)

(assert (= bs!764879 (and d!1348980 d!1348968)))

(assert (=> bs!764879 (= lambda!157762 lambda!157758)))

(declare-fun lt!1638162 () ListMap!2923)

(assert (=> d!1348980 (invariantList!849 (toList!3680 lt!1638162))))

(declare-fun e!2766670 () ListMap!2923)

(assert (=> d!1348980 (= lt!1638162 e!2766670)))

(declare-fun c!756199 () Bool)

(assert (=> d!1348980 (= c!756199 (is-Cons!49821 (toList!3679 lt!1638066)))))

(assert (=> d!1348980 (forall!9723 (toList!3679 lt!1638066) lambda!157762)))

(assert (=> d!1348980 (= (extractMap!907 (toList!3679 lt!1638066)) lt!1638162)))

(declare-fun b!4443458 () Bool)

(assert (=> b!4443458 (= e!2766670 (addToMapMapFromBucket!452 (_2!28176 (h!55554 (toList!3679 lt!1638066))) (extractMap!907 (t!356887 (toList!3679 lt!1638066)))))))

(declare-fun b!4443459 () Bool)

(assert (=> b!4443459 (= e!2766670 (ListMap!2924 Nil!49820))))

(assert (= (and d!1348980 c!756199) b!4443458))

(assert (= (and d!1348980 (not c!756199)) b!4443459))

(declare-fun m!5132795 () Bool)

(assert (=> d!1348980 m!5132795))

(declare-fun m!5132797 () Bool)

(assert (=> d!1348980 m!5132797))

(declare-fun m!5132799 () Bool)

(assert (=> b!4443458 m!5132799))

(assert (=> b!4443458 m!5132799))

(declare-fun m!5132801 () Bool)

(assert (=> b!4443458 m!5132801))

(assert (=> b!4443295 d!1348980))

(assert (=> start!434934 d!1348960))

(declare-fun d!1348982 () Bool)

(declare-fun isStrictlySorted!275 (List!49945) Bool)

(assert (=> d!1348982 (= (inv!65375 lm!1616) (isStrictlySorted!275 (toList!3679 lm!1616)))))

(declare-fun bs!764880 () Bool)

(assert (= bs!764880 d!1348982))

(declare-fun m!5132803 () Bool)

(assert (=> bs!764880 m!5132803))

(assert (=> start!434934 d!1348982))

(declare-fun d!1348984 () Bool)

(assert (=> d!1348984 (= (apply!11698 lt!1638066 hash!366) (get!16250 (getValueByKey!801 (toList!3679 lt!1638066) hash!366)))))

(declare-fun bs!764881 () Bool)

(assert (= bs!764881 d!1348984))

(assert (=> bs!764881 m!5132705))

(assert (=> bs!764881 m!5132705))

(declare-fun m!5132805 () Bool)

(assert (=> bs!764881 m!5132805))

(assert (=> b!4443299 d!1348984))

(declare-fun d!1348986 () Bool)

(declare-fun res!1840197 () Bool)

(declare-fun e!2766671 () Bool)

(assert (=> d!1348986 (=> res!1840197 e!2766671)))

(assert (=> d!1348986 (= res!1840197 (is-Nil!49821 (toList!3679 lt!1638064)))))

(assert (=> d!1348986 (= (forall!9723 (toList!3679 lt!1638064) lambda!157741) e!2766671)))

(declare-fun b!4443460 () Bool)

(declare-fun e!2766672 () Bool)

(assert (=> b!4443460 (= e!2766671 e!2766672)))

(declare-fun res!1840198 () Bool)

(assert (=> b!4443460 (=> (not res!1840198) (not e!2766672))))

(assert (=> b!4443460 (= res!1840198 (dynLambda!20919 lambda!157741 (h!55554 (toList!3679 lt!1638064))))))

(declare-fun b!4443461 () Bool)

(assert (=> b!4443461 (= e!2766672 (forall!9723 (t!356887 (toList!3679 lt!1638064)) lambda!157741))))

(assert (= (and d!1348986 (not res!1840197)) b!4443460))

(assert (= (and b!4443460 res!1840198) b!4443461))

(declare-fun b_lambda!145295 () Bool)

(assert (=> (not b_lambda!145295) (not b!4443460)))

(declare-fun m!5132807 () Bool)

(assert (=> b!4443460 m!5132807))

(declare-fun m!5132809 () Bool)

(assert (=> b!4443461 m!5132809))

(assert (=> b!4443288 d!1348986))

(declare-fun d!1348988 () Bool)

(declare-fun e!2766675 () Bool)

(assert (=> d!1348988 e!2766675))

(declare-fun res!1840203 () Bool)

(assert (=> d!1348988 (=> (not res!1840203) (not e!2766675))))

(declare-fun lt!1638171 () ListLongMap!2329)

(assert (=> d!1348988 (= res!1840203 (contains!12397 lt!1638171 (_1!28176 (tuple2!49765 hash!366 newBucket!194))))))

(declare-fun lt!1638174 () List!49945)

(assert (=> d!1348988 (= lt!1638171 (ListLongMap!2330 lt!1638174))))

(declare-fun lt!1638172 () Unit!84102)

(declare-fun lt!1638173 () Unit!84102)

(assert (=> d!1348988 (= lt!1638172 lt!1638173)))

(assert (=> d!1348988 (= (getValueByKey!801 lt!1638174 (_1!28176 (tuple2!49765 hash!366 newBucket!194))) (Some!10814 (_2!28176 (tuple2!49765 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!519 (List!49945 (_ BitVec 64) List!49944) Unit!84102)

(assert (=> d!1348988 (= lt!1638173 (lemmaContainsTupThenGetReturnValue!519 lt!1638174 (_1!28176 (tuple2!49765 hash!366 newBucket!194)) (_2!28176 (tuple2!49765 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!303 (List!49945 (_ BitVec 64) List!49944) List!49945)

(assert (=> d!1348988 (= lt!1638174 (insertStrictlySorted!303 (toList!3679 lm!1616) (_1!28176 (tuple2!49765 hash!366 newBucket!194)) (_2!28176 (tuple2!49765 hash!366 newBucket!194))))))

(assert (=> d!1348988 (= (+!1231 lm!1616 (tuple2!49765 hash!366 newBucket!194)) lt!1638171)))

(declare-fun b!4443466 () Bool)

(declare-fun res!1840204 () Bool)

(assert (=> b!4443466 (=> (not res!1840204) (not e!2766675))))

(assert (=> b!4443466 (= res!1840204 (= (getValueByKey!801 (toList!3679 lt!1638171) (_1!28176 (tuple2!49765 hash!366 newBucket!194))) (Some!10814 (_2!28176 (tuple2!49765 hash!366 newBucket!194)))))))

(declare-fun b!4443467 () Bool)

(declare-fun contains!12401 (List!49945 tuple2!49764) Bool)

(assert (=> b!4443467 (= e!2766675 (contains!12401 (toList!3679 lt!1638171) (tuple2!49765 hash!366 newBucket!194)))))

(assert (= (and d!1348988 res!1840203) b!4443466))

(assert (= (and b!4443466 res!1840204) b!4443467))

(declare-fun m!5132811 () Bool)

(assert (=> d!1348988 m!5132811))

(declare-fun m!5132813 () Bool)

(assert (=> d!1348988 m!5132813))

(declare-fun m!5132815 () Bool)

(assert (=> d!1348988 m!5132815))

(declare-fun m!5132817 () Bool)

(assert (=> d!1348988 m!5132817))

(declare-fun m!5132819 () Bool)

(assert (=> b!4443466 m!5132819))

(declare-fun m!5132821 () Bool)

(assert (=> b!4443467 m!5132821))

(assert (=> b!4443288 d!1348988))

(declare-fun d!1348990 () Bool)

(assert (=> d!1348990 (forall!9723 (toList!3679 (+!1231 lm!1616 (tuple2!49765 hash!366 newBucket!194))) lambda!157741)))

(declare-fun lt!1638177 () Unit!84102)

(declare-fun choose!28235 (ListLongMap!2329 Int (_ BitVec 64) List!49944) Unit!84102)

(assert (=> d!1348990 (= lt!1638177 (choose!28235 lm!1616 lambda!157741 hash!366 newBucket!194))))

(declare-fun e!2766678 () Bool)

(assert (=> d!1348990 e!2766678))

(declare-fun res!1840207 () Bool)

(assert (=> d!1348990 (=> (not res!1840207) (not e!2766678))))

(assert (=> d!1348990 (= res!1840207 (forall!9723 (toList!3679 lm!1616) lambda!157741))))

(assert (=> d!1348990 (= (addValidProp!484 lm!1616 lambda!157741 hash!366 newBucket!194) lt!1638177)))

(declare-fun b!4443471 () Bool)

(assert (=> b!4443471 (= e!2766678 (dynLambda!20919 lambda!157741 (tuple2!49765 hash!366 newBucket!194)))))

(assert (= (and d!1348990 res!1840207) b!4443471))

(declare-fun b_lambda!145297 () Bool)

(assert (=> (not b_lambda!145297) (not b!4443471)))

(assert (=> d!1348990 m!5132619))

(declare-fun m!5132823 () Bool)

(assert (=> d!1348990 m!5132823))

(declare-fun m!5132825 () Bool)

(assert (=> d!1348990 m!5132825))

(assert (=> d!1348990 m!5132611))

(declare-fun m!5132827 () Bool)

(assert (=> b!4443471 m!5132827))

(assert (=> b!4443288 d!1348990))

(declare-fun bs!764882 () Bool)

(declare-fun d!1348992 () Bool)

(assert (= bs!764882 (and d!1348992 start!434934)))

(declare-fun lambda!157765 () Int)

(assert (=> bs!764882 (= lambda!157765 lambda!157741)))

(declare-fun bs!764883 () Bool)

(assert (= bs!764883 (and d!1348992 d!1348954)))

(assert (=> bs!764883 (not (= lambda!157765 lambda!157755))))

(declare-fun bs!764884 () Bool)

(assert (= bs!764884 (and d!1348992 d!1348968)))

(assert (=> bs!764884 (= lambda!157765 lambda!157758)))

(declare-fun bs!764885 () Bool)

(assert (= bs!764885 (and d!1348992 d!1348980)))

(assert (=> bs!764885 (= lambda!157765 lambda!157762)))

(assert (=> d!1348992 (contains!12396 (extractMap!907 (toList!3679 lm!1616)) key!3717)))

(declare-fun lt!1638196 () Unit!84102)

(declare-fun choose!28236 (ListLongMap!2329 K!11188 Hashable!5240) Unit!84102)

(assert (=> d!1348992 (= lt!1638196 (choose!28236 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1348992 (forall!9723 (toList!3679 lm!1616) lambda!157765)))

(assert (=> d!1348992 (= (lemmaExtractTailMapContainsThenExtractMapDoes!83 lm!1616 key!3717 hashF!1220) lt!1638196)))

(declare-fun bs!764886 () Bool)

(assert (= bs!764886 d!1348992))

(assert (=> bs!764886 m!5132591))

(assert (=> bs!764886 m!5132591))

(assert (=> bs!764886 m!5132593))

(declare-fun m!5132829 () Bool)

(assert (=> bs!764886 m!5132829))

(declare-fun m!5132831 () Bool)

(assert (=> bs!764886 m!5132831))

(assert (=> b!4443298 d!1348992))

(declare-fun d!1348994 () Bool)

(declare-fun res!1840214 () Bool)

(declare-fun e!2766691 () Bool)

(assert (=> d!1348994 (=> res!1840214 e!2766691)))

(assert (=> d!1348994 (= res!1840214 (is-Nil!49821 (toList!3679 lt!1638066)))))

(assert (=> d!1348994 (= (forall!9723 (toList!3679 lt!1638066) lambda!157741) e!2766691)))

(declare-fun b!4443490 () Bool)

(declare-fun e!2766692 () Bool)

(assert (=> b!4443490 (= e!2766691 e!2766692)))

(declare-fun res!1840215 () Bool)

(assert (=> b!4443490 (=> (not res!1840215) (not e!2766692))))

(assert (=> b!4443490 (= res!1840215 (dynLambda!20919 lambda!157741 (h!55554 (toList!3679 lt!1638066))))))

(declare-fun b!4443491 () Bool)

(assert (=> b!4443491 (= e!2766692 (forall!9723 (t!356887 (toList!3679 lt!1638066)) lambda!157741))))

(assert (= (and d!1348994 (not res!1840214)) b!4443490))

(assert (= (and b!4443490 res!1840215) b!4443491))

(declare-fun b_lambda!145299 () Bool)

(assert (=> (not b_lambda!145299) (not b!4443490)))

(declare-fun m!5132833 () Bool)

(assert (=> b!4443490 m!5132833))

(declare-fun m!5132835 () Bool)

(assert (=> b!4443491 m!5132835))

(assert (=> b!4443281 d!1348994))

(declare-fun d!1348996 () Bool)

(assert (=> d!1348996 (= (tail!7392 lm!1616) (ListLongMap!2330 (tail!7393 (toList!3679 lm!1616))))))

(declare-fun bs!764887 () Bool)

(assert (= bs!764887 d!1348996))

(assert (=> bs!764887 m!5132625))

(assert (=> b!4443281 d!1348996))

(declare-fun bs!764888 () Bool)

(declare-fun d!1348998 () Bool)

(assert (= bs!764888 (and d!1348998 d!1348992)))

(declare-fun lambda!157766 () Int)

(assert (=> bs!764888 (= lambda!157766 lambda!157765)))

(declare-fun bs!764889 () Bool)

(assert (= bs!764889 (and d!1348998 d!1348980)))

(assert (=> bs!764889 (= lambda!157766 lambda!157762)))

(declare-fun bs!764890 () Bool)

(assert (= bs!764890 (and d!1348998 d!1348968)))

(assert (=> bs!764890 (= lambda!157766 lambda!157758)))

(declare-fun bs!764891 () Bool)

(assert (= bs!764891 (and d!1348998 start!434934)))

(assert (=> bs!764891 (= lambda!157766 lambda!157741)))

(declare-fun bs!764892 () Bool)

(assert (= bs!764892 (and d!1348998 d!1348954)))

(assert (=> bs!764892 (not (= lambda!157766 lambda!157755))))

(declare-fun lt!1638205 () ListMap!2923)

(assert (=> d!1348998 (invariantList!849 (toList!3680 lt!1638205))))

(declare-fun e!2766699 () ListMap!2923)

(assert (=> d!1348998 (= lt!1638205 e!2766699)))

(declare-fun c!756209 () Bool)

(assert (=> d!1348998 (= c!756209 (is-Cons!49821 (tail!7393 (toList!3679 lm!1616))))))

(assert (=> d!1348998 (forall!9723 (tail!7393 (toList!3679 lm!1616)) lambda!157766)))

(assert (=> d!1348998 (= (extractMap!907 (tail!7393 (toList!3679 lm!1616))) lt!1638205)))

(declare-fun b!4443501 () Bool)

(assert (=> b!4443501 (= e!2766699 (addToMapMapFromBucket!452 (_2!28176 (h!55554 (tail!7393 (toList!3679 lm!1616)))) (extractMap!907 (t!356887 (tail!7393 (toList!3679 lm!1616))))))))

(declare-fun b!4443502 () Bool)

(assert (=> b!4443502 (= e!2766699 (ListMap!2924 Nil!49820))))

(assert (= (and d!1348998 c!756209) b!4443501))

(assert (= (and d!1348998 (not c!756209)) b!4443502))

(declare-fun m!5132837 () Bool)

(assert (=> d!1348998 m!5132837))

(assert (=> d!1348998 m!5132625))

(declare-fun m!5132839 () Bool)

(assert (=> d!1348998 m!5132839))

(declare-fun m!5132841 () Bool)

(assert (=> b!4443501 m!5132841))

(assert (=> b!4443501 m!5132841))

(declare-fun m!5132843 () Bool)

(assert (=> b!4443501 m!5132843))

(assert (=> b!4443281 d!1348998))

(declare-fun d!1349000 () Bool)

(assert (=> d!1349000 (= (tail!7393 (toList!3679 lm!1616)) (t!356887 (toList!3679 lm!1616)))))

(assert (=> b!4443281 d!1349000))

(declare-fun b!4443503 () Bool)

(declare-fun e!2766702 () List!49948)

(assert (=> b!4443503 (= e!2766702 (getKeysList!296 (toList!3680 (extractMap!907 (tail!7393 (toList!3679 lm!1616))))))))

(declare-fun b!4443504 () Bool)

(declare-fun e!2766705 () Unit!84102)

(declare-fun e!2766704 () Unit!84102)

(assert (=> b!4443504 (= e!2766705 e!2766704)))

(declare-fun c!756212 () Bool)

(declare-fun call!309130 () Bool)

(assert (=> b!4443504 (= c!756212 call!309130)))

(declare-fun b!4443505 () Bool)

(declare-fun Unit!84116 () Unit!84102)

(assert (=> b!4443505 (= e!2766704 Unit!84116)))

(declare-fun bm!309125 () Bool)

(assert (=> bm!309125 (= call!309130 (contains!12400 e!2766702 key!3717))))

(declare-fun c!756211 () Bool)

(declare-fun c!756210 () Bool)

(assert (=> bm!309125 (= c!756211 c!756210)))

(declare-fun b!4443506 () Bool)

(declare-fun e!2766700 () Bool)

(declare-fun e!2766701 () Bool)

(assert (=> b!4443506 (= e!2766700 e!2766701)))

(declare-fun res!1840219 () Bool)

(assert (=> b!4443506 (=> (not res!1840219) (not e!2766701))))

(assert (=> b!4443506 (= res!1840219 (isDefined!8106 (getValueByKey!802 (toList!3680 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))) key!3717)))))

(declare-fun b!4443507 () Bool)

(declare-fun lt!1638212 () Unit!84102)

(assert (=> b!4443507 (= e!2766705 lt!1638212)))

(declare-fun lt!1638207 () Unit!84102)

(assert (=> b!4443507 (= lt!1638207 (lemmaContainsKeyImpliesGetValueByKeyDefined!709 (toList!3680 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))) key!3717))))

(assert (=> b!4443507 (isDefined!8106 (getValueByKey!802 (toList!3680 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))) key!3717))))

(declare-fun lt!1638206 () Unit!84102)

(assert (=> b!4443507 (= lt!1638206 lt!1638207)))

(assert (=> b!4443507 (= lt!1638212 (lemmaInListThenGetKeysListContains!293 (toList!3680 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))) key!3717))))

(assert (=> b!4443507 call!309130))

(declare-fun b!4443508 () Bool)

(assert (=> b!4443508 (= e!2766701 (contains!12400 (keys!17074 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))) key!3717))))

(declare-fun b!4443509 () Bool)

(assert (=> b!4443509 (= e!2766702 (keys!17074 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))))))

(declare-fun d!1349002 () Bool)

(assert (=> d!1349002 e!2766700))

(declare-fun res!1840221 () Bool)

(assert (=> d!1349002 (=> res!1840221 e!2766700)))

(declare-fun e!2766703 () Bool)

(assert (=> d!1349002 (= res!1840221 e!2766703)))

(declare-fun res!1840220 () Bool)

(assert (=> d!1349002 (=> (not res!1840220) (not e!2766703))))

(declare-fun lt!1638213 () Bool)

(assert (=> d!1349002 (= res!1840220 (not lt!1638213))))

(declare-fun lt!1638210 () Bool)

(assert (=> d!1349002 (= lt!1638213 lt!1638210)))

(declare-fun lt!1638208 () Unit!84102)

(assert (=> d!1349002 (= lt!1638208 e!2766705)))

(assert (=> d!1349002 (= c!756210 lt!1638210)))

(assert (=> d!1349002 (= lt!1638210 (containsKey!1262 (toList!3680 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))) key!3717))))

(assert (=> d!1349002 (= (contains!12396 (extractMap!907 (tail!7393 (toList!3679 lm!1616))) key!3717) lt!1638213)))

(declare-fun b!4443510 () Bool)

(assert (=> b!4443510 (= e!2766703 (not (contains!12400 (keys!17074 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))) key!3717)))))

(declare-fun b!4443511 () Bool)

(assert (=> b!4443511 false))

(declare-fun lt!1638209 () Unit!84102)

(declare-fun lt!1638211 () Unit!84102)

(assert (=> b!4443511 (= lt!1638209 lt!1638211)))

(assert (=> b!4443511 (containsKey!1262 (toList!3680 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))) key!3717)))

(assert (=> b!4443511 (= lt!1638211 (lemmaInGetKeysListThenContainsKey!294 (toList!3680 (extractMap!907 (tail!7393 (toList!3679 lm!1616)))) key!3717))))

(declare-fun Unit!84117 () Unit!84102)

(assert (=> b!4443511 (= e!2766704 Unit!84117)))

(assert (= (and d!1349002 c!756210) b!4443507))

(assert (= (and d!1349002 (not c!756210)) b!4443504))

(assert (= (and b!4443504 c!756212) b!4443511))

(assert (= (and b!4443504 (not c!756212)) b!4443505))

(assert (= (or b!4443507 b!4443504) bm!309125))

(assert (= (and bm!309125 c!756211) b!4443503))

(assert (= (and bm!309125 (not c!756211)) b!4443509))

(assert (= (and d!1349002 res!1840220) b!4443510))

(assert (= (and d!1349002 (not res!1840221)) b!4443506))

(assert (= (and b!4443506 res!1840219) b!4443508))

(declare-fun m!5132865 () Bool)

(assert (=> b!4443511 m!5132865))

(declare-fun m!5132867 () Bool)

(assert (=> b!4443511 m!5132867))

(assert (=> b!4443509 m!5132627))

(declare-fun m!5132869 () Bool)

(assert (=> b!4443509 m!5132869))

(declare-fun m!5132871 () Bool)

(assert (=> b!4443503 m!5132871))

(assert (=> d!1349002 m!5132865))

(declare-fun m!5132873 () Bool)

(assert (=> b!4443507 m!5132873))

(declare-fun m!5132875 () Bool)

(assert (=> b!4443507 m!5132875))

(assert (=> b!4443507 m!5132875))

(declare-fun m!5132877 () Bool)

(assert (=> b!4443507 m!5132877))

(declare-fun m!5132879 () Bool)

(assert (=> b!4443507 m!5132879))

(assert (=> b!4443510 m!5132627))

(assert (=> b!4443510 m!5132869))

(assert (=> b!4443510 m!5132869))

(declare-fun m!5132881 () Bool)

(assert (=> b!4443510 m!5132881))

(declare-fun m!5132883 () Bool)

(assert (=> bm!309125 m!5132883))

(assert (=> b!4443508 m!5132627))

(assert (=> b!4443508 m!5132869))

(assert (=> b!4443508 m!5132869))

(assert (=> b!4443508 m!5132881))

(assert (=> b!4443506 m!5132875))

(assert (=> b!4443506 m!5132875))

(assert (=> b!4443506 m!5132877))

(assert (=> b!4443281 d!1349002))

(declare-fun d!1349006 () Bool)

(declare-fun res!1840226 () Bool)

(declare-fun e!2766710 () Bool)

(assert (=> d!1349006 (=> res!1840226 e!2766710)))

(assert (=> d!1349006 (= res!1840226 (not (is-Cons!49820 newBucket!194)))))

(assert (=> d!1349006 (= (noDuplicateKeys!846 newBucket!194) e!2766710)))

(declare-fun b!4443516 () Bool)

(declare-fun e!2766711 () Bool)

(assert (=> b!4443516 (= e!2766710 e!2766711)))

(declare-fun res!1840227 () Bool)

(assert (=> b!4443516 (=> (not res!1840227) (not e!2766711))))

(declare-fun containsKey!1263 (List!49944 K!11188) Bool)

(assert (=> b!4443516 (= res!1840227 (not (containsKey!1263 (t!356886 newBucket!194) (_1!28175 (h!55553 newBucket!194)))))))

(declare-fun b!4443517 () Bool)

(assert (=> b!4443517 (= e!2766711 (noDuplicateKeys!846 (t!356886 newBucket!194)))))

(assert (= (and d!1349006 (not res!1840226)) b!4443516))

(assert (= (and b!4443516 res!1840227) b!4443517))

(declare-fun m!5132885 () Bool)

(assert (=> b!4443516 m!5132885))

(declare-fun m!5132887 () Bool)

(assert (=> b!4443517 m!5132887))

(assert (=> b!4443291 d!1349006))

(declare-fun bs!764893 () Bool)

(declare-fun d!1349008 () Bool)

(assert (= bs!764893 (and d!1349008 d!1348992)))

(declare-fun lambda!157767 () Int)

(assert (=> bs!764893 (not (= lambda!157767 lambda!157765))))

(declare-fun bs!764894 () Bool)

(assert (= bs!764894 (and d!1349008 d!1348998)))

(assert (=> bs!764894 (not (= lambda!157767 lambda!157766))))

(declare-fun bs!764895 () Bool)

(assert (= bs!764895 (and d!1349008 d!1348980)))

(assert (=> bs!764895 (not (= lambda!157767 lambda!157762))))

(declare-fun bs!764896 () Bool)

(assert (= bs!764896 (and d!1349008 d!1348968)))

(assert (=> bs!764896 (not (= lambda!157767 lambda!157758))))

(declare-fun bs!764897 () Bool)

(assert (= bs!764897 (and d!1349008 start!434934)))

(assert (=> bs!764897 (not (= lambda!157767 lambda!157741))))

(declare-fun bs!764898 () Bool)

(assert (= bs!764898 (and d!1349008 d!1348954)))

(assert (=> bs!764898 (= lambda!157767 lambda!157755)))

(assert (=> d!1349008 true))

(assert (=> d!1349008 (= (allKeysSameHashInMap!952 lm!1616 hashF!1220) (forall!9723 (toList!3679 lm!1616) lambda!157767))))

(declare-fun bs!764899 () Bool)

(assert (= bs!764899 d!1349008))

(declare-fun m!5132889 () Bool)

(assert (=> bs!764899 m!5132889))

(assert (=> b!4443280 d!1349008))

(declare-fun d!1349010 () Bool)

(declare-fun hash!2308 (Hashable!5240 K!11188) (_ BitVec 64))

(assert (=> d!1349010 (= (hash!2306 hashF!1220 key!3717) (hash!2308 hashF!1220 key!3717))))

(declare-fun bs!764900 () Bool)

(assert (= bs!764900 d!1349010))

(declare-fun m!5132891 () Bool)

(assert (=> bs!764900 m!5132891))

(assert (=> b!4443301 d!1349010))

(declare-fun b!4443522 () Bool)

(declare-fun tp!1334317 () Bool)

(declare-fun e!2766714 () Bool)

(assert (=> b!4443522 (= e!2766714 (and tp_is_empty!26631 tp_is_empty!26629 tp!1334317))))

(assert (=> b!4443287 (= tp!1334307 e!2766714)))

(assert (= (and b!4443287 (is-Cons!49820 (t!356886 newBucket!194))) b!4443522))

(declare-fun b!4443527 () Bool)

(declare-fun e!2766717 () Bool)

(declare-fun tp!1334322 () Bool)

(declare-fun tp!1334323 () Bool)

(assert (=> b!4443527 (= e!2766717 (and tp!1334322 tp!1334323))))

(assert (=> b!4443290 (= tp!1334308 e!2766717)))

(assert (= (and b!4443290 (is-Cons!49821 (toList!3679 lm!1616))) b!4443527))

(declare-fun b_lambda!145301 () Bool)

(assert (= b_lambda!145299 (or start!434934 b_lambda!145301)))

(declare-fun bs!764901 () Bool)

(declare-fun d!1349012 () Bool)

(assert (= bs!764901 (and d!1349012 start!434934)))

(assert (=> bs!764901 (= (dynLambda!20919 lambda!157741 (h!55554 (toList!3679 lt!1638066))) (noDuplicateKeys!846 (_2!28176 (h!55554 (toList!3679 lt!1638066)))))))

(declare-fun m!5132893 () Bool)

(assert (=> bs!764901 m!5132893))

(assert (=> b!4443490 d!1349012))

(declare-fun b_lambda!145303 () Bool)

(assert (= b_lambda!145297 (or start!434934 b_lambda!145303)))

(declare-fun bs!764902 () Bool)

(declare-fun d!1349014 () Bool)

(assert (= bs!764902 (and d!1349014 start!434934)))

(assert (=> bs!764902 (= (dynLambda!20919 lambda!157741 (tuple2!49765 hash!366 newBucket!194)) (noDuplicateKeys!846 (_2!28176 (tuple2!49765 hash!366 newBucket!194))))))

(declare-fun m!5132895 () Bool)

(assert (=> bs!764902 m!5132895))

(assert (=> b!4443471 d!1349014))

(declare-fun b_lambda!145305 () Bool)

(assert (= b_lambda!145291 (or start!434934 b_lambda!145305)))

(declare-fun bs!764903 () Bool)

(declare-fun d!1349016 () Bool)

(assert (= bs!764903 (and d!1349016 start!434934)))

(assert (=> bs!764903 (= (dynLambda!20919 lambda!157741 (h!55554 (toList!3679 lm!1616))) (noDuplicateKeys!846 (_2!28176 (h!55554 (toList!3679 lm!1616)))))))

(declare-fun m!5132897 () Bool)

(assert (=> bs!764903 m!5132897))

(assert (=> b!4443392 d!1349016))

(declare-fun b_lambda!145307 () Bool)

(assert (= b_lambda!145295 (or start!434934 b_lambda!145307)))

(declare-fun bs!764904 () Bool)

(declare-fun d!1349018 () Bool)

(assert (= bs!764904 (and d!1349018 start!434934)))

(assert (=> bs!764904 (= (dynLambda!20919 lambda!157741 (h!55554 (toList!3679 lt!1638064))) (noDuplicateKeys!846 (_2!28176 (h!55554 (toList!3679 lt!1638064)))))))

(declare-fun m!5132899 () Bool)

(assert (=> bs!764904 m!5132899))

(assert (=> b!4443460 d!1349018))

(push 1)

(assert (not b!4443453))

(assert (not b!4443517))

(assert (not d!1348992))

(assert (not d!1348978))

(assert (not d!1348964))

(assert (not b!4443522))

(assert (not b!4443466))

(assert (not d!1348958))

(assert (not bm!309125))

(assert tp_is_empty!26631)

(assert (not d!1348990))

(assert (not b!4443426))

(assert (not b!4443516))

(assert (not d!1348998))

(assert (not bs!764901))

(assert (not b_lambda!145305))

(assert (not b!4443449))

(assert (not b!4443527))

(assert (not b!4443508))

(assert (not bs!764904))

(assert (not b!4443452))

(assert (not d!1348976))

(assert (not d!1348982))

(assert (not b!4443387))

(assert (not d!1348984))

(assert (not b!4443454))

(assert (not b!4443421))

(assert (not b!4443458))

(assert tp_is_empty!26629)

(assert (not d!1348980))

(assert (not b!4443382))

(assert (not b!4443384))

(assert (not b!4443461))

(assert (not b!4443503))

(assert (not b!4443510))

(assert (not b!4443501))

(assert (not b!4443442))

(assert (not b!4443509))

(assert (not d!1348988))

(assert (not d!1349002))

(assert (not b!4443456))

(assert (not b!4443506))

(assert (not b!4443427))

(assert (not b!4443385))

(assert (not b!4443457))

(assert (not d!1348962))

(assert (not d!1348954))

(assert (not d!1348956))

(assert (not bm!309121))

(assert (not b!4443444))

(assert (not b!4443455))

(assert (not bs!764902))

(assert (not b!4443467))

(assert (not b_lambda!145303))

(assert (not d!1348968))

(assert (not b!4443511))

(assert (not b_lambda!145301))

(assert (not bs!764903))

(assert (not b!4443491))

(assert (not b!4443435))

(assert (not b!4443507))

(assert (not d!1349008))

(assert (not b!4443424))

(assert (not b!4443425))

(assert (not b!4443428))

(assert (not b!4443393))

(assert (not b!4443429))

(assert (not bm!309120))

(assert (not b_lambda!145307))

(assert (not d!1348996))

(assert (not d!1349010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

