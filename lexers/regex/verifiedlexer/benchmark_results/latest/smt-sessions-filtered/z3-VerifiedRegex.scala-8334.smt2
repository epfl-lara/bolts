; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!433412 () Bool)

(assert start!433412)

(declare-fun b!4434617 () Bool)

(declare-fun e!2761307 () Bool)

(declare-fun e!2761310 () Bool)

(assert (=> b!4434617 (= e!2761307 (not e!2761310))))

(declare-fun res!1835164 () Bool)

(assert (=> b!4434617 (=> res!1835164 e!2761310)))

(declare-datatypes ((V!11321 0))(
  ( (V!11322 (val!17131 Int)) )
))
(declare-datatypes ((K!11075 0))(
  ( (K!11076 (val!17132 Int)) )
))
(declare-datatypes ((tuple2!49582 0))(
  ( (tuple2!49583 (_1!28085 K!11075) (_2!28085 V!11321)) )
))
(declare-datatypes ((List!49831 0))(
  ( (Nil!49707) (Cons!49707 (h!55414 tuple2!49582) (t!356773 List!49831)) )
))
(declare-datatypes ((tuple2!49584 0))(
  ( (tuple2!49585 (_1!28086 (_ BitVec 64)) (_2!28086 List!49831)) )
))
(declare-datatypes ((List!49832 0))(
  ( (Nil!49708) (Cons!49708 (h!55415 tuple2!49584) (t!356774 List!49832)) )
))
(declare-datatypes ((ListLongMap!2239 0))(
  ( (ListLongMap!2240 (toList!3589 List!49832)) )
))
(declare-fun lt!1631945 () ListLongMap!2239)

(declare-fun lambda!155964 () Int)

(declare-fun forall!9646 (List!49832 Int) Bool)

(assert (=> b!4434617 (= res!1835164 (not (forall!9646 (toList!3589 lt!1631945) lambda!155964)))))

(assert (=> b!4434617 (forall!9646 (toList!3589 lt!1631945) lambda!155964)))

(declare-fun lm!1616 () ListLongMap!2239)

(declare-fun lt!1631949 () tuple2!49584)

(declare-fun +!1170 (ListLongMap!2239 tuple2!49584) ListLongMap!2239)

(assert (=> b!4434617 (= lt!1631945 (+!1170 lm!1616 lt!1631949))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun newBucket!194 () List!49831)

(assert (=> b!4434617 (= lt!1631949 (tuple2!49585 hash!366 newBucket!194))))

(declare-datatypes ((Unit!83085 0))(
  ( (Unit!83086) )
))
(declare-fun lt!1631942 () Unit!83085)

(declare-fun addValidProp!443 (ListLongMap!2239 Int (_ BitVec 64) List!49831) Unit!83085)

(assert (=> b!4434617 (= lt!1631942 (addValidProp!443 lm!1616 lambda!155964 hash!366 newBucket!194))))

(declare-fun tp_is_empty!26451 () Bool)

(declare-fun e!2761305 () Bool)

(declare-fun tp_is_empty!26449 () Bool)

(declare-fun b!4434618 () Bool)

(declare-fun tp!1333763 () Bool)

(assert (=> b!4434618 (= e!2761305 (and tp_is_empty!26451 tp_is_empty!26449 tp!1333763))))

(declare-fun b!4434619 () Bool)

(declare-fun e!2761301 () Bool)

(declare-fun e!2761306 () Bool)

(assert (=> b!4434619 (= e!2761301 e!2761306)))

(declare-fun res!1835174 () Bool)

(assert (=> b!4434619 (=> (not res!1835174) (not e!2761306))))

(declare-datatypes ((ListMap!2833 0))(
  ( (ListMap!2834 (toList!3590 List!49831)) )
))
(declare-fun lt!1631947 () ListMap!2833)

(declare-fun key!3717 () K!11075)

(declare-fun contains!12250 (ListMap!2833 K!11075) Bool)

(assert (=> b!4434619 (= res!1835174 (not (contains!12250 lt!1631947 key!3717)))))

(declare-fun extractMap!862 (List!49832) ListMap!2833)

(assert (=> b!4434619 (= lt!1631947 (extractMap!862 (toList!3589 lm!1616)))))

(declare-fun newValue!93 () V!11321)

(declare-fun e!2761312 () Bool)

(declare-fun b!4434620 () Bool)

(declare-fun apply!11653 (ListLongMap!2239 (_ BitVec 64)) List!49831)

(assert (=> b!4434620 (= e!2761312 (= newBucket!194 (Cons!49707 (tuple2!49583 key!3717 newValue!93) (apply!11653 lm!1616 hash!366))))))

(declare-fun b!4434621 () Bool)

(declare-fun res!1835168 () Bool)

(assert (=> b!4434621 (=> res!1835168 e!2761310)))

(declare-fun lt!1631941 () Bool)

(get-info :version)

(assert (=> b!4434621 (= res!1835168 (or (not ((_ is Cons!49708) (toList!3589 lm!1616))) (not (= (_1!28086 (h!55415 (toList!3589 lm!1616))) hash!366)) lt!1631941))))

(declare-fun res!1835166 () Bool)

(assert (=> start!433412 (=> (not res!1835166) (not e!2761301))))

(assert (=> start!433412 (= res!1835166 (forall!9646 (toList!3589 lm!1616) lambda!155964))))

(assert (=> start!433412 e!2761301))

(assert (=> start!433412 tp_is_empty!26449))

(assert (=> start!433412 tp_is_empty!26451))

(assert (=> start!433412 e!2761305))

(declare-fun e!2761304 () Bool)

(declare-fun inv!65261 (ListLongMap!2239) Bool)

(assert (=> start!433412 (and (inv!65261 lm!1616) e!2761304)))

(assert (=> start!433412 true))

(declare-fun b!4434622 () Bool)

(declare-fun res!1835162 () Bool)

(assert (=> b!4434622 (=> (not res!1835162) (not e!2761307))))

(assert (=> b!4434622 (= res!1835162 (forall!9646 (toList!3589 lm!1616) lambda!155964))))

(declare-fun b!4434623 () Bool)

(declare-fun e!2761308 () Bool)

(assert (=> b!4434623 (= e!2761310 e!2761308)))

(declare-fun res!1835169 () Bool)

(assert (=> b!4434623 (=> res!1835169 e!2761308)))

(declare-fun lt!1631946 () ListMap!2833)

(declare-fun lt!1631948 () ListMap!2833)

(assert (=> b!4434623 (= res!1835169 (not (= lt!1631946 lt!1631948)))))

(declare-fun lt!1631951 () ListMap!2833)

(declare-fun addToMapMapFromBucket!426 (List!49831 ListMap!2833) ListMap!2833)

(assert (=> b!4434623 (= lt!1631948 (addToMapMapFromBucket!426 newBucket!194 lt!1631951))))

(assert (=> b!4434623 (= lt!1631946 (extractMap!862 (toList!3589 lt!1631945)))))

(assert (=> b!4434623 (= lt!1631951 (extractMap!862 (t!356774 (toList!3589 lm!1616))))))

(declare-fun e!2761311 () Bool)

(declare-fun lt!1631950 () tuple2!49582)

(declare-fun b!4434624 () Bool)

(declare-fun eq!435 (ListMap!2833 ListMap!2833) Bool)

(declare-fun +!1171 (ListMap!2833 tuple2!49582) ListMap!2833)

(assert (=> b!4434624 (= e!2761311 (eq!435 lt!1631946 (+!1171 lt!1631947 lt!1631950)))))

(declare-fun b!4434625 () Bool)

(declare-fun res!1835170 () Bool)

(assert (=> b!4434625 (=> (not res!1835170) (not e!2761307))))

(declare-fun noDuplicateKeys!801 (List!49831) Bool)

(assert (=> b!4434625 (= res!1835170 (noDuplicateKeys!801 newBucket!194))))

(declare-fun b!4434626 () Bool)

(declare-fun res!1835176 () Bool)

(assert (=> b!4434626 (=> res!1835176 e!2761311)))

(declare-fun lt!1631943 () ListMap!2833)

(assert (=> b!4434626 (= res!1835176 (not (eq!435 lt!1631946 lt!1631943)))))

(declare-fun b!4434627 () Bool)

(declare-fun res!1835161 () Bool)

(assert (=> b!4434627 (=> (not res!1835161) (not e!2761301))))

(declare-datatypes ((Hashable!5195 0))(
  ( (HashableExt!5194 (__x!30898 Int)) )
))
(declare-fun hashF!1220 () Hashable!5195)

(declare-fun allKeysSameHash!761 (List!49831 (_ BitVec 64) Hashable!5195) Bool)

(assert (=> b!4434627 (= res!1835161 (allKeysSameHash!761 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4434628 () Bool)

(assert (=> b!4434628 (= e!2761306 e!2761307)))

(declare-fun res!1835172 () Bool)

(assert (=> b!4434628 (=> (not res!1835172) (not e!2761307))))

(declare-fun e!2761309 () Bool)

(assert (=> b!4434628 (= res!1835172 e!2761309)))

(declare-fun res!1835173 () Bool)

(assert (=> b!4434628 (=> res!1835173 e!2761309)))

(assert (=> b!4434628 (= res!1835173 e!2761312)))

(declare-fun res!1835167 () Bool)

(assert (=> b!4434628 (=> (not res!1835167) (not e!2761312))))

(assert (=> b!4434628 (= res!1835167 (not lt!1631941))))

(declare-fun lt!1631944 () Bool)

(assert (=> b!4434628 (= lt!1631941 (not lt!1631944))))

(declare-fun contains!12251 (ListLongMap!2239 (_ BitVec 64)) Bool)

(assert (=> b!4434628 (= lt!1631944 (contains!12251 lm!1616 hash!366))))

(declare-fun b!4434629 () Bool)

(assert (=> b!4434629 (= e!2761309 (and (not lt!1631944) (= newBucket!194 (Cons!49707 (tuple2!49583 key!3717 newValue!93) Nil!49707))))))

(declare-fun b!4434630 () Bool)

(declare-fun e!2761302 () Bool)

(assert (=> b!4434630 (= e!2761302 e!2761311)))

(declare-fun res!1835165 () Bool)

(assert (=> b!4434630 (=> res!1835165 e!2761311)))

(assert (=> b!4434630 (= res!1835165 (not (eq!435 lt!1631948 lt!1631943)))))

(declare-fun lt!1631940 () ListMap!2833)

(assert (=> b!4434630 (eq!435 lt!1631940 lt!1631943)))

(declare-fun lt!1631939 () List!49831)

(assert (=> b!4434630 (= lt!1631943 (+!1171 (addToMapMapFromBucket!426 lt!1631939 lt!1631951) lt!1631950))))

(declare-fun lt!1631938 () Unit!83085)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!206 (ListMap!2833 K!11075 V!11321 List!49831) Unit!83085)

(assert (=> b!4434630 (= lt!1631938 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!206 lt!1631951 key!3717 newValue!93 lt!1631939))))

(declare-fun b!4434631 () Bool)

(declare-fun res!1835159 () Bool)

(assert (=> b!4434631 (=> res!1835159 e!2761310)))

(declare-fun head!9266 (List!49832) tuple2!49584)

(assert (=> b!4434631 (= res!1835159 (not (= (head!9266 (toList!3589 lt!1631945)) lt!1631949)))))

(declare-fun b!4434632 () Bool)

(declare-fun tp!1333764 () Bool)

(assert (=> b!4434632 (= e!2761304 tp!1333764)))

(declare-fun b!4434633 () Bool)

(declare-fun res!1835171 () Bool)

(assert (=> b!4434633 (=> (not res!1835171) (not e!2761301))))

(declare-fun hash!2224 (Hashable!5195 K!11075) (_ BitVec 64))

(assert (=> b!4434633 (= res!1835171 (= (hash!2224 hashF!1220 key!3717) hash!366))))

(declare-fun b!4434634 () Bool)

(declare-fun e!2761303 () Bool)

(assert (=> b!4434634 (= e!2761303 e!2761302)))

(declare-fun res!1835163 () Bool)

(assert (=> b!4434634 (=> res!1835163 e!2761302)))

(assert (=> b!4434634 (= res!1835163 (not (= lt!1631948 lt!1631940)))))

(assert (=> b!4434634 (= lt!1631940 (addToMapMapFromBucket!426 lt!1631939 (+!1171 lt!1631951 lt!1631950)))))

(declare-fun b!4434635 () Bool)

(declare-fun res!1835160 () Bool)

(assert (=> b!4434635 (=> res!1835160 e!2761310)))

(declare-fun tail!7329 (List!49832) List!49832)

(assert (=> b!4434635 (= res!1835160 (not (= (tail!7329 (toList!3589 lt!1631945)) (t!356774 (toList!3589 lm!1616)))))))

(declare-fun b!4434636 () Bool)

(declare-fun res!1835177 () Bool)

(assert (=> b!4434636 (=> (not res!1835177) (not e!2761301))))

(declare-fun allKeysSameHashInMap!907 (ListLongMap!2239 Hashable!5195) Bool)

(assert (=> b!4434636 (= res!1835177 (allKeysSameHashInMap!907 lm!1616 hashF!1220))))

(declare-fun b!4434637 () Bool)

(assert (=> b!4434637 (= e!2761308 e!2761303)))

(declare-fun res!1835175 () Bool)

(assert (=> b!4434637 (=> res!1835175 e!2761303)))

(assert (=> b!4434637 (= res!1835175 (not (= newBucket!194 (Cons!49707 lt!1631950 lt!1631939))))))

(assert (=> b!4434637 (= lt!1631939 (apply!11653 lm!1616 hash!366))))

(assert (=> b!4434637 (= lt!1631950 (tuple2!49583 key!3717 newValue!93))))

(assert (= (and start!433412 res!1835166) b!4434636))

(assert (= (and b!4434636 res!1835177) b!4434633))

(assert (= (and b!4434633 res!1835171) b!4434627))

(assert (= (and b!4434627 res!1835161) b!4434619))

(assert (= (and b!4434619 res!1835174) b!4434628))

(assert (= (and b!4434628 res!1835167) b!4434620))

(assert (= (and b!4434628 (not res!1835173)) b!4434629))

(assert (= (and b!4434628 res!1835172) b!4434625))

(assert (= (and b!4434625 res!1835170) b!4434622))

(assert (= (and b!4434622 res!1835162) b!4434617))

(assert (= (and b!4434617 (not res!1835164)) b!4434621))

(assert (= (and b!4434621 (not res!1835168)) b!4434631))

(assert (= (and b!4434631 (not res!1835159)) b!4434635))

(assert (= (and b!4434635 (not res!1835160)) b!4434623))

(assert (= (and b!4434623 (not res!1835169)) b!4434637))

(assert (= (and b!4434637 (not res!1835175)) b!4434634))

(assert (= (and b!4434634 (not res!1835163)) b!4434630))

(assert (= (and b!4434630 (not res!1835165)) b!4434626))

(assert (= (and b!4434626 (not res!1835176)) b!4434624))

(assert (= (and start!433412 ((_ is Cons!49707) newBucket!194)) b!4434618))

(assert (= start!433412 b!4434632))

(declare-fun m!5120159 () Bool)

(assert (=> b!4434636 m!5120159))

(declare-fun m!5120161 () Bool)

(assert (=> start!433412 m!5120161))

(declare-fun m!5120163 () Bool)

(assert (=> start!433412 m!5120163))

(declare-fun m!5120165 () Bool)

(assert (=> b!4434623 m!5120165))

(declare-fun m!5120167 () Bool)

(assert (=> b!4434623 m!5120167))

(declare-fun m!5120169 () Bool)

(assert (=> b!4434623 m!5120169))

(declare-fun m!5120171 () Bool)

(assert (=> b!4434619 m!5120171))

(declare-fun m!5120173 () Bool)

(assert (=> b!4434619 m!5120173))

(declare-fun m!5120175 () Bool)

(assert (=> b!4434631 m!5120175))

(declare-fun m!5120177 () Bool)

(assert (=> b!4434628 m!5120177))

(declare-fun m!5120179 () Bool)

(assert (=> b!4434637 m!5120179))

(assert (=> b!4434620 m!5120179))

(declare-fun m!5120181 () Bool)

(assert (=> b!4434627 m!5120181))

(declare-fun m!5120183 () Bool)

(assert (=> b!4434626 m!5120183))

(declare-fun m!5120185 () Bool)

(assert (=> b!4434633 m!5120185))

(declare-fun m!5120187 () Bool)

(assert (=> b!4434625 m!5120187))

(assert (=> b!4434622 m!5120161))

(declare-fun m!5120189 () Bool)

(assert (=> b!4434634 m!5120189))

(assert (=> b!4434634 m!5120189))

(declare-fun m!5120191 () Bool)

(assert (=> b!4434634 m!5120191))

(declare-fun m!5120193 () Bool)

(assert (=> b!4434624 m!5120193))

(assert (=> b!4434624 m!5120193))

(declare-fun m!5120195 () Bool)

(assert (=> b!4434624 m!5120195))

(declare-fun m!5120197 () Bool)

(assert (=> b!4434630 m!5120197))

(declare-fun m!5120199 () Bool)

(assert (=> b!4434630 m!5120199))

(assert (=> b!4434630 m!5120199))

(declare-fun m!5120201 () Bool)

(assert (=> b!4434630 m!5120201))

(declare-fun m!5120203 () Bool)

(assert (=> b!4434630 m!5120203))

(declare-fun m!5120205 () Bool)

(assert (=> b!4434630 m!5120205))

(declare-fun m!5120207 () Bool)

(assert (=> b!4434617 m!5120207))

(assert (=> b!4434617 m!5120207))

(declare-fun m!5120209 () Bool)

(assert (=> b!4434617 m!5120209))

(declare-fun m!5120211 () Bool)

(assert (=> b!4434617 m!5120211))

(declare-fun m!5120213 () Bool)

(assert (=> b!4434635 m!5120213))

(check-sat (not b!4434624) (not start!433412) (not b!4434632) (not b!4434617) (not b!4434635) tp_is_empty!26449 (not b!4434623) (not b!4434636) (not b!4434627) (not b!4434626) (not b!4434634) (not b!4434633) (not b!4434622) (not b!4434637) tp_is_empty!26451 (not b!4434618) (not b!4434628) (not b!4434631) (not b!4434620) (not b!4434619) (not b!4434625) (not b!4434630))
(check-sat)
(get-model)

(declare-fun d!1345521 () Bool)

(assert (=> d!1345521 (= (head!9266 (toList!3589 lt!1631945)) (h!55415 (toList!3589 lt!1631945)))))

(assert (=> b!4434631 d!1345521))

(declare-fun d!1345525 () Bool)

(declare-fun hash!2225 (Hashable!5195 K!11075) (_ BitVec 64))

(assert (=> d!1345525 (= (hash!2224 hashF!1220 key!3717) (hash!2225 hashF!1220 key!3717))))

(declare-fun bs!761032 () Bool)

(assert (= bs!761032 d!1345525))

(declare-fun m!5120221 () Bool)

(assert (=> bs!761032 m!5120221))

(assert (=> b!4434633 d!1345525))

(declare-fun d!1345527 () Bool)

(declare-fun res!1835188 () Bool)

(declare-fun e!2761323 () Bool)

(assert (=> d!1345527 (=> res!1835188 e!2761323)))

(assert (=> d!1345527 (= res!1835188 ((_ is Nil!49708) (toList!3589 lm!1616)))))

(assert (=> d!1345527 (= (forall!9646 (toList!3589 lm!1616) lambda!155964) e!2761323)))

(declare-fun b!4434650 () Bool)

(declare-fun e!2761324 () Bool)

(assert (=> b!4434650 (= e!2761323 e!2761324)))

(declare-fun res!1835189 () Bool)

(assert (=> b!4434650 (=> (not res!1835189) (not e!2761324))))

(declare-fun dynLambda!20886 (Int tuple2!49584) Bool)

(assert (=> b!4434650 (= res!1835189 (dynLambda!20886 lambda!155964 (h!55415 (toList!3589 lm!1616))))))

(declare-fun b!4434651 () Bool)

(assert (=> b!4434651 (= e!2761324 (forall!9646 (t!356774 (toList!3589 lm!1616)) lambda!155964))))

(assert (= (and d!1345527 (not res!1835188)) b!4434650))

(assert (= (and b!4434650 res!1835189) b!4434651))

(declare-fun b_lambda!144291 () Bool)

(assert (=> (not b_lambda!144291) (not b!4434650)))

(declare-fun m!5120223 () Bool)

(assert (=> b!4434650 m!5120223))

(declare-fun m!5120225 () Bool)

(assert (=> b!4434651 m!5120225))

(assert (=> start!433412 d!1345527))

(declare-fun d!1345529 () Bool)

(declare-fun isStrictlySorted!254 (List!49832) Bool)

(assert (=> d!1345529 (= (inv!65261 lm!1616) (isStrictlySorted!254 (toList!3589 lm!1616)))))

(declare-fun bs!761033 () Bool)

(assert (= bs!761033 d!1345529))

(declare-fun m!5120227 () Bool)

(assert (=> bs!761033 m!5120227))

(assert (=> start!433412 d!1345529))

(assert (=> b!4434622 d!1345527))

(declare-fun d!1345531 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7990 (List!49831) (InoxSet tuple2!49582))

(assert (=> d!1345531 (= (eq!435 lt!1631946 (+!1171 lt!1631947 lt!1631950)) (= (content!7990 (toList!3590 lt!1631946)) (content!7990 (toList!3590 (+!1171 lt!1631947 lt!1631950)))))))

(declare-fun bs!761034 () Bool)

(assert (= bs!761034 d!1345531))

(declare-fun m!5120229 () Bool)

(assert (=> bs!761034 m!5120229))

(declare-fun m!5120231 () Bool)

(assert (=> bs!761034 m!5120231))

(assert (=> b!4434624 d!1345531))

(declare-fun d!1345533 () Bool)

(declare-fun e!2761327 () Bool)

(assert (=> d!1345533 e!2761327))

(declare-fun res!1835195 () Bool)

(assert (=> d!1345533 (=> (not res!1835195) (not e!2761327))))

(declare-fun lt!1631963 () ListMap!2833)

(assert (=> d!1345533 (= res!1835195 (contains!12250 lt!1631963 (_1!28085 lt!1631950)))))

(declare-fun lt!1631962 () List!49831)

(assert (=> d!1345533 (= lt!1631963 (ListMap!2834 lt!1631962))))

(declare-fun lt!1631961 () Unit!83085)

(declare-fun lt!1631960 () Unit!83085)

(assert (=> d!1345533 (= lt!1631961 lt!1631960)))

(declare-datatypes ((Option!10769 0))(
  ( (None!10768) (Some!10768 (v!43978 V!11321)) )
))
(declare-fun getValueByKey!755 (List!49831 K!11075) Option!10769)

(assert (=> d!1345533 (= (getValueByKey!755 lt!1631962 (_1!28085 lt!1631950)) (Some!10768 (_2!28085 lt!1631950)))))

(declare-fun lemmaContainsTupThenGetReturnValue!488 (List!49831 K!11075 V!11321) Unit!83085)

(assert (=> d!1345533 (= lt!1631960 (lemmaContainsTupThenGetReturnValue!488 lt!1631962 (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun insertNoDuplicatedKeys!215 (List!49831 K!11075 V!11321) List!49831)

(assert (=> d!1345533 (= lt!1631962 (insertNoDuplicatedKeys!215 (toList!3590 lt!1631947) (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(assert (=> d!1345533 (= (+!1171 lt!1631947 lt!1631950) lt!1631963)))

(declare-fun b!4434656 () Bool)

(declare-fun res!1835194 () Bool)

(assert (=> b!4434656 (=> (not res!1835194) (not e!2761327))))

(assert (=> b!4434656 (= res!1835194 (= (getValueByKey!755 (toList!3590 lt!1631963) (_1!28085 lt!1631950)) (Some!10768 (_2!28085 lt!1631950))))))

(declare-fun b!4434657 () Bool)

(declare-fun contains!12255 (List!49831 tuple2!49582) Bool)

(assert (=> b!4434657 (= e!2761327 (contains!12255 (toList!3590 lt!1631963) lt!1631950))))

(assert (= (and d!1345533 res!1835195) b!4434656))

(assert (= (and b!4434656 res!1835194) b!4434657))

(declare-fun m!5120233 () Bool)

(assert (=> d!1345533 m!5120233))

(declare-fun m!5120235 () Bool)

(assert (=> d!1345533 m!5120235))

(declare-fun m!5120237 () Bool)

(assert (=> d!1345533 m!5120237))

(declare-fun m!5120239 () Bool)

(assert (=> d!1345533 m!5120239))

(declare-fun m!5120241 () Bool)

(assert (=> b!4434656 m!5120241))

(declare-fun m!5120243 () Bool)

(assert (=> b!4434657 m!5120243))

(assert (=> b!4434624 d!1345533))

(declare-fun b!4434763 () Bool)

(assert (=> b!4434763 true))

(declare-fun bs!761058 () Bool)

(declare-fun b!4434762 () Bool)

(assert (= bs!761058 (and b!4434762 b!4434763)))

(declare-fun lambda!156039 () Int)

(declare-fun lambda!156037 () Int)

(assert (=> bs!761058 (= lambda!156039 lambda!156037)))

(assert (=> b!4434762 true))

(declare-fun lambda!156040 () Int)

(declare-fun lt!1632187 () ListMap!2833)

(assert (=> bs!761058 (= (= lt!1632187 lt!1631951) (= lambda!156040 lambda!156037))))

(assert (=> b!4434762 (= (= lt!1632187 lt!1631951) (= lambda!156040 lambda!156039))))

(assert (=> b!4434762 true))

(declare-fun bs!761067 () Bool)

(declare-fun d!1345535 () Bool)

(assert (= bs!761067 (and d!1345535 b!4434763)))

(declare-fun lambda!156041 () Int)

(declare-fun lt!1632174 () ListMap!2833)

(assert (=> bs!761067 (= (= lt!1632174 lt!1631951) (= lambda!156041 lambda!156037))))

(declare-fun bs!761068 () Bool)

(assert (= bs!761068 (and d!1345535 b!4434762)))

(assert (=> bs!761068 (= (= lt!1632174 lt!1631951) (= lambda!156041 lambda!156039))))

(assert (=> bs!761068 (= (= lt!1632174 lt!1632187) (= lambda!156041 lambda!156040))))

(assert (=> d!1345535 true))

(declare-fun b!4434760 () Bool)

(declare-fun e!2761393 () Bool)

(declare-fun forall!9648 (List!49831 Int) Bool)

(assert (=> b!4434760 (= e!2761393 (forall!9648 (toList!3590 lt!1631951) lambda!156040))))

(declare-fun bm!308543 () Bool)

(declare-fun call!308549 () Bool)

(declare-fun lt!1632170 () ListMap!2833)

(declare-fun c!754739 () Bool)

(assert (=> bm!308543 (= call!308549 (forall!9648 (ite c!754739 (toList!3590 lt!1631951) (toList!3590 lt!1632170)) (ite c!754739 lambda!156037 lambda!156040)))))

(declare-fun bm!308544 () Bool)

(declare-fun call!308550 () Unit!83085)

(declare-fun lemmaContainsAllItsOwnKeys!195 (ListMap!2833) Unit!83085)

(assert (=> bm!308544 (= call!308550 (lemmaContainsAllItsOwnKeys!195 lt!1631951))))

(declare-fun b!4434761 () Bool)

(declare-fun e!2761394 () Bool)

(declare-fun invariantList!827 (List!49831) Bool)

(assert (=> b!4434761 (= e!2761394 (invariantList!827 (toList!3590 lt!1632174)))))

(assert (=> d!1345535 e!2761394))

(declare-fun res!1835255 () Bool)

(assert (=> d!1345535 (=> (not res!1835255) (not e!2761394))))

(assert (=> d!1345535 (= res!1835255 (forall!9648 newBucket!194 lambda!156041))))

(declare-fun e!2761392 () ListMap!2833)

(assert (=> d!1345535 (= lt!1632174 e!2761392)))

(assert (=> d!1345535 (= c!754739 ((_ is Nil!49707) newBucket!194))))

(assert (=> d!1345535 (noDuplicateKeys!801 newBucket!194)))

(assert (=> d!1345535 (= (addToMapMapFromBucket!426 newBucket!194 lt!1631951) lt!1632174)))

(assert (=> b!4434762 (= e!2761392 lt!1632187)))

(assert (=> b!4434762 (= lt!1632170 (+!1171 lt!1631951 (h!55414 newBucket!194)))))

(assert (=> b!4434762 (= lt!1632187 (addToMapMapFromBucket!426 (t!356773 newBucket!194) (+!1171 lt!1631951 (h!55414 newBucket!194))))))

(declare-fun lt!1632169 () Unit!83085)

(assert (=> b!4434762 (= lt!1632169 call!308550)))

(declare-fun call!308548 () Bool)

(assert (=> b!4434762 call!308548))

(declare-fun lt!1632182 () Unit!83085)

(assert (=> b!4434762 (= lt!1632182 lt!1632169)))

(assert (=> b!4434762 (forall!9648 (toList!3590 lt!1632170) lambda!156040)))

(declare-fun lt!1632167 () Unit!83085)

(declare-fun Unit!83110 () Unit!83085)

(assert (=> b!4434762 (= lt!1632167 Unit!83110)))

(assert (=> b!4434762 (forall!9648 (t!356773 newBucket!194) lambda!156040)))

(declare-fun lt!1632185 () Unit!83085)

(declare-fun Unit!83111 () Unit!83085)

(assert (=> b!4434762 (= lt!1632185 Unit!83111)))

(declare-fun lt!1632179 () Unit!83085)

(declare-fun Unit!83112 () Unit!83085)

(assert (=> b!4434762 (= lt!1632179 Unit!83112)))

(declare-fun lt!1632172 () Unit!83085)

(declare-fun forallContained!2125 (List!49831 Int tuple2!49582) Unit!83085)

(assert (=> b!4434762 (= lt!1632172 (forallContained!2125 (toList!3590 lt!1632170) lambda!156040 (h!55414 newBucket!194)))))

(assert (=> b!4434762 (contains!12250 lt!1632170 (_1!28085 (h!55414 newBucket!194)))))

(declare-fun lt!1632181 () Unit!83085)

(declare-fun Unit!83114 () Unit!83085)

(assert (=> b!4434762 (= lt!1632181 Unit!83114)))

(assert (=> b!4434762 (contains!12250 lt!1632187 (_1!28085 (h!55414 newBucket!194)))))

(declare-fun lt!1632176 () Unit!83085)

(declare-fun Unit!83115 () Unit!83085)

(assert (=> b!4434762 (= lt!1632176 Unit!83115)))

(assert (=> b!4434762 (forall!9648 newBucket!194 lambda!156040)))

(declare-fun lt!1632171 () Unit!83085)

(declare-fun Unit!83116 () Unit!83085)

(assert (=> b!4434762 (= lt!1632171 Unit!83116)))

(assert (=> b!4434762 call!308549))

(declare-fun lt!1632177 () Unit!83085)

(declare-fun Unit!83117 () Unit!83085)

(assert (=> b!4434762 (= lt!1632177 Unit!83117)))

(declare-fun lt!1632184 () Unit!83085)

(declare-fun Unit!83118 () Unit!83085)

(assert (=> b!4434762 (= lt!1632184 Unit!83118)))

(declare-fun lt!1632178 () Unit!83085)

(declare-fun addForallContainsKeyThenBeforeAdding!195 (ListMap!2833 ListMap!2833 K!11075 V!11321) Unit!83085)

(assert (=> b!4434762 (= lt!1632178 (addForallContainsKeyThenBeforeAdding!195 lt!1631951 lt!1632187 (_1!28085 (h!55414 newBucket!194)) (_2!28085 (h!55414 newBucket!194))))))

(assert (=> b!4434762 (forall!9648 (toList!3590 lt!1631951) lambda!156040)))

(declare-fun lt!1632186 () Unit!83085)

(assert (=> b!4434762 (= lt!1632186 lt!1632178)))

(assert (=> b!4434762 (forall!9648 (toList!3590 lt!1631951) lambda!156040)))

(declare-fun lt!1632168 () Unit!83085)

(declare-fun Unit!83119 () Unit!83085)

(assert (=> b!4434762 (= lt!1632168 Unit!83119)))

(declare-fun res!1835253 () Bool)

(assert (=> b!4434762 (= res!1835253 (forall!9648 newBucket!194 lambda!156040))))

(assert (=> b!4434762 (=> (not res!1835253) (not e!2761393))))

(assert (=> b!4434762 e!2761393))

(declare-fun lt!1632183 () Unit!83085)

(declare-fun Unit!83120 () Unit!83085)

(assert (=> b!4434762 (= lt!1632183 Unit!83120)))

(declare-fun bm!308545 () Bool)

(assert (=> bm!308545 (= call!308548 (forall!9648 (toList!3590 lt!1631951) (ite c!754739 lambda!156037 lambda!156039)))))

(assert (=> b!4434763 (= e!2761392 lt!1631951)))

(declare-fun lt!1632180 () Unit!83085)

(assert (=> b!4434763 (= lt!1632180 call!308550)))

(assert (=> b!4434763 call!308548))

(declare-fun lt!1632175 () Unit!83085)

(assert (=> b!4434763 (= lt!1632175 lt!1632180)))

(assert (=> b!4434763 call!308549))

(declare-fun lt!1632173 () Unit!83085)

(declare-fun Unit!83121 () Unit!83085)

(assert (=> b!4434763 (= lt!1632173 Unit!83121)))

(declare-fun b!4434764 () Bool)

(declare-fun res!1835254 () Bool)

(assert (=> b!4434764 (=> (not res!1835254) (not e!2761394))))

(assert (=> b!4434764 (= res!1835254 (forall!9648 (toList!3590 lt!1631951) lambda!156041))))

(assert (= (and d!1345535 c!754739) b!4434763))

(assert (= (and d!1345535 (not c!754739)) b!4434762))

(assert (= (and b!4434762 res!1835253) b!4434760))

(assert (= (or b!4434763 b!4434762) bm!308544))

(assert (= (or b!4434763 b!4434762) bm!308545))

(assert (= (or b!4434763 b!4434762) bm!308543))

(assert (= (and d!1345535 res!1835255) b!4434764))

(assert (= (and b!4434764 res!1835254) b!4434761))

(declare-fun m!5120433 () Bool)

(assert (=> bm!308543 m!5120433))

(declare-fun m!5120435 () Bool)

(assert (=> bm!308545 m!5120435))

(declare-fun m!5120437 () Bool)

(assert (=> b!4434761 m!5120437))

(declare-fun m!5120439 () Bool)

(assert (=> b!4434762 m!5120439))

(declare-fun m!5120441 () Bool)

(assert (=> b!4434762 m!5120441))

(declare-fun m!5120443 () Bool)

(assert (=> b!4434762 m!5120443))

(declare-fun m!5120445 () Bool)

(assert (=> b!4434762 m!5120445))

(declare-fun m!5120447 () Bool)

(assert (=> b!4434762 m!5120447))

(declare-fun m!5120449 () Bool)

(assert (=> b!4434762 m!5120449))

(declare-fun m!5120451 () Bool)

(assert (=> b!4434762 m!5120451))

(assert (=> b!4434762 m!5120449))

(declare-fun m!5120453 () Bool)

(assert (=> b!4434762 m!5120453))

(declare-fun m!5120455 () Bool)

(assert (=> b!4434762 m!5120455))

(assert (=> b!4434762 m!5120451))

(assert (=> b!4434762 m!5120439))

(declare-fun m!5120457 () Bool)

(assert (=> b!4434762 m!5120457))

(declare-fun m!5120459 () Bool)

(assert (=> b!4434764 m!5120459))

(assert (=> b!4434760 m!5120451))

(declare-fun m!5120461 () Bool)

(assert (=> bm!308544 m!5120461))

(declare-fun m!5120463 () Bool)

(assert (=> d!1345535 m!5120463))

(assert (=> d!1345535 m!5120187))

(assert (=> b!4434623 d!1345535))

(declare-fun bs!761104 () Bool)

(declare-fun d!1345579 () Bool)

(assert (= bs!761104 (and d!1345579 start!433412)))

(declare-fun lambda!156050 () Int)

(assert (=> bs!761104 (= lambda!156050 lambda!155964)))

(declare-fun lt!1632213 () ListMap!2833)

(assert (=> d!1345579 (invariantList!827 (toList!3590 lt!1632213))))

(declare-fun e!2761408 () ListMap!2833)

(assert (=> d!1345579 (= lt!1632213 e!2761408)))

(declare-fun c!754745 () Bool)

(assert (=> d!1345579 (= c!754745 ((_ is Cons!49708) (toList!3589 lt!1631945)))))

(assert (=> d!1345579 (forall!9646 (toList!3589 lt!1631945) lambda!156050)))

(assert (=> d!1345579 (= (extractMap!862 (toList!3589 lt!1631945)) lt!1632213)))

(declare-fun b!4434794 () Bool)

(assert (=> b!4434794 (= e!2761408 (addToMapMapFromBucket!426 (_2!28086 (h!55415 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))))))

(declare-fun b!4434795 () Bool)

(assert (=> b!4434795 (= e!2761408 (ListMap!2834 Nil!49707))))

(assert (= (and d!1345579 c!754745) b!4434794))

(assert (= (and d!1345579 (not c!754745)) b!4434795))

(declare-fun m!5120517 () Bool)

(assert (=> d!1345579 m!5120517))

(declare-fun m!5120519 () Bool)

(assert (=> d!1345579 m!5120519))

(declare-fun m!5120521 () Bool)

(assert (=> b!4434794 m!5120521))

(assert (=> b!4434794 m!5120521))

(declare-fun m!5120523 () Bool)

(assert (=> b!4434794 m!5120523))

(assert (=> b!4434623 d!1345579))

(declare-fun bs!761105 () Bool)

(declare-fun d!1345595 () Bool)

(assert (= bs!761105 (and d!1345595 start!433412)))

(declare-fun lambda!156051 () Int)

(assert (=> bs!761105 (= lambda!156051 lambda!155964)))

(declare-fun bs!761106 () Bool)

(assert (= bs!761106 (and d!1345595 d!1345579)))

(assert (=> bs!761106 (= lambda!156051 lambda!156050)))

(declare-fun lt!1632214 () ListMap!2833)

(assert (=> d!1345595 (invariantList!827 (toList!3590 lt!1632214))))

(declare-fun e!2761409 () ListMap!2833)

(assert (=> d!1345595 (= lt!1632214 e!2761409)))

(declare-fun c!754746 () Bool)

(assert (=> d!1345595 (= c!754746 ((_ is Cons!49708) (t!356774 (toList!3589 lm!1616))))))

(assert (=> d!1345595 (forall!9646 (t!356774 (toList!3589 lm!1616)) lambda!156051)))

(assert (=> d!1345595 (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632214)))

(declare-fun b!4434796 () Bool)

(assert (=> b!4434796 (= e!2761409 (addToMapMapFromBucket!426 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))))))

(declare-fun b!4434797 () Bool)

(assert (=> b!4434797 (= e!2761409 (ListMap!2834 Nil!49707))))

(assert (= (and d!1345595 c!754746) b!4434796))

(assert (= (and d!1345595 (not c!754746)) b!4434797))

(declare-fun m!5120525 () Bool)

(assert (=> d!1345595 m!5120525))

(declare-fun m!5120527 () Bool)

(assert (=> d!1345595 m!5120527))

(declare-fun m!5120529 () Bool)

(assert (=> b!4434796 m!5120529))

(assert (=> b!4434796 m!5120529))

(declare-fun m!5120531 () Bool)

(assert (=> b!4434796 m!5120531))

(assert (=> b!4434623 d!1345595))

(declare-fun bs!761107 () Bool)

(declare-fun b!4434801 () Bool)

(assert (= bs!761107 (and b!4434801 b!4434763)))

(declare-fun lambda!156052 () Int)

(assert (=> bs!761107 (= (= (+!1171 lt!1631951 lt!1631950) lt!1631951) (= lambda!156052 lambda!156037))))

(declare-fun bs!761108 () Bool)

(assert (= bs!761108 (and b!4434801 b!4434762)))

(assert (=> bs!761108 (= (= (+!1171 lt!1631951 lt!1631950) lt!1631951) (= lambda!156052 lambda!156039))))

(assert (=> bs!761108 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632187) (= lambda!156052 lambda!156040))))

(declare-fun bs!761109 () Bool)

(assert (= bs!761109 (and b!4434801 d!1345535)))

(assert (=> bs!761109 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632174) (= lambda!156052 lambda!156041))))

(assert (=> b!4434801 true))

(declare-fun bs!761110 () Bool)

(declare-fun b!4434800 () Bool)

(assert (= bs!761110 (and b!4434800 d!1345535)))

(declare-fun lambda!156053 () Int)

(assert (=> bs!761110 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632174) (= lambda!156053 lambda!156041))))

(declare-fun bs!761111 () Bool)

(assert (= bs!761111 (and b!4434800 b!4434762)))

(assert (=> bs!761111 (= (= (+!1171 lt!1631951 lt!1631950) lt!1631951) (= lambda!156053 lambda!156039))))

(assert (=> bs!761111 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632187) (= lambda!156053 lambda!156040))))

(declare-fun bs!761112 () Bool)

(assert (= bs!761112 (and b!4434800 b!4434801)))

(assert (=> bs!761112 (= lambda!156053 lambda!156052)))

(declare-fun bs!761113 () Bool)

(assert (= bs!761113 (and b!4434800 b!4434763)))

(assert (=> bs!761113 (= (= (+!1171 lt!1631951 lt!1631950) lt!1631951) (= lambda!156053 lambda!156037))))

(assert (=> b!4434800 true))

(declare-fun lambda!156054 () Int)

(declare-fun lt!1632235 () ListMap!2833)

(assert (=> b!4434800 (= (= lt!1632235 (+!1171 lt!1631951 lt!1631950)) (= lambda!156054 lambda!156053))))

(assert (=> bs!761110 (= (= lt!1632235 lt!1632174) (= lambda!156054 lambda!156041))))

(assert (=> bs!761111 (= (= lt!1632235 lt!1631951) (= lambda!156054 lambda!156039))))

(assert (=> bs!761111 (= (= lt!1632235 lt!1632187) (= lambda!156054 lambda!156040))))

(assert (=> bs!761112 (= (= lt!1632235 (+!1171 lt!1631951 lt!1631950)) (= lambda!156054 lambda!156052))))

(assert (=> bs!761113 (= (= lt!1632235 lt!1631951) (= lambda!156054 lambda!156037))))

(assert (=> b!4434800 true))

(declare-fun bs!761114 () Bool)

(declare-fun d!1345597 () Bool)

(assert (= bs!761114 (and d!1345597 b!4434800)))

(declare-fun lt!1632222 () ListMap!2833)

(declare-fun lambda!156055 () Int)

(assert (=> bs!761114 (= (= lt!1632222 (+!1171 lt!1631951 lt!1631950)) (= lambda!156055 lambda!156053))))

(declare-fun bs!761115 () Bool)

(assert (= bs!761115 (and d!1345597 d!1345535)))

(assert (=> bs!761115 (= (= lt!1632222 lt!1632174) (= lambda!156055 lambda!156041))))

(assert (=> bs!761114 (= (= lt!1632222 lt!1632235) (= lambda!156055 lambda!156054))))

(declare-fun bs!761116 () Bool)

(assert (= bs!761116 (and d!1345597 b!4434762)))

(assert (=> bs!761116 (= (= lt!1632222 lt!1631951) (= lambda!156055 lambda!156039))))

(assert (=> bs!761116 (= (= lt!1632222 lt!1632187) (= lambda!156055 lambda!156040))))

(declare-fun bs!761117 () Bool)

(assert (= bs!761117 (and d!1345597 b!4434801)))

(assert (=> bs!761117 (= (= lt!1632222 (+!1171 lt!1631951 lt!1631950)) (= lambda!156055 lambda!156052))))

(declare-fun bs!761118 () Bool)

(assert (= bs!761118 (and d!1345597 b!4434763)))

(assert (=> bs!761118 (= (= lt!1632222 lt!1631951) (= lambda!156055 lambda!156037))))

(assert (=> d!1345597 true))

(declare-fun e!2761411 () Bool)

(declare-fun b!4434798 () Bool)

(assert (=> b!4434798 (= e!2761411 (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) lambda!156054))))

(declare-fun c!754747 () Bool)

(declare-fun call!308555 () Bool)

(declare-fun lt!1632218 () ListMap!2833)

(declare-fun bm!308549 () Bool)

(assert (=> bm!308549 (= call!308555 (forall!9648 (ite c!754747 (toList!3590 (+!1171 lt!1631951 lt!1631950)) (toList!3590 lt!1632218)) (ite c!754747 lambda!156052 lambda!156054)))))

(declare-fun bm!308550 () Bool)

(declare-fun call!308556 () Unit!83085)

(assert (=> bm!308550 (= call!308556 (lemmaContainsAllItsOwnKeys!195 (+!1171 lt!1631951 lt!1631950)))))

(declare-fun b!4434799 () Bool)

(declare-fun e!2761412 () Bool)

(assert (=> b!4434799 (= e!2761412 (invariantList!827 (toList!3590 lt!1632222)))))

(assert (=> d!1345597 e!2761412))

(declare-fun res!1835261 () Bool)

(assert (=> d!1345597 (=> (not res!1835261) (not e!2761412))))

(assert (=> d!1345597 (= res!1835261 (forall!9648 lt!1631939 lambda!156055))))

(declare-fun e!2761410 () ListMap!2833)

(assert (=> d!1345597 (= lt!1632222 e!2761410)))

(assert (=> d!1345597 (= c!754747 ((_ is Nil!49707) lt!1631939))))

(assert (=> d!1345597 (noDuplicateKeys!801 lt!1631939)))

(assert (=> d!1345597 (= (addToMapMapFromBucket!426 lt!1631939 (+!1171 lt!1631951 lt!1631950)) lt!1632222)))

(assert (=> b!4434800 (= e!2761410 lt!1632235)))

(assert (=> b!4434800 (= lt!1632218 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)))))

(assert (=> b!4434800 (= lt!1632235 (addToMapMapFromBucket!426 (t!356773 lt!1631939) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))))))

(declare-fun lt!1632217 () Unit!83085)

(assert (=> b!4434800 (= lt!1632217 call!308556)))

(declare-fun call!308554 () Bool)

(assert (=> b!4434800 call!308554))

(declare-fun lt!1632230 () Unit!83085)

(assert (=> b!4434800 (= lt!1632230 lt!1632217)))

(assert (=> b!4434800 (forall!9648 (toList!3590 lt!1632218) lambda!156054)))

(declare-fun lt!1632215 () Unit!83085)

(declare-fun Unit!83123 () Unit!83085)

(assert (=> b!4434800 (= lt!1632215 Unit!83123)))

(assert (=> b!4434800 (forall!9648 (t!356773 lt!1631939) lambda!156054)))

(declare-fun lt!1632233 () Unit!83085)

(declare-fun Unit!83124 () Unit!83085)

(assert (=> b!4434800 (= lt!1632233 Unit!83124)))

(declare-fun lt!1632227 () Unit!83085)

(declare-fun Unit!83125 () Unit!83085)

(assert (=> b!4434800 (= lt!1632227 Unit!83125)))

(declare-fun lt!1632220 () Unit!83085)

(assert (=> b!4434800 (= lt!1632220 (forallContained!2125 (toList!3590 lt!1632218) lambda!156054 (h!55414 lt!1631939)))))

(assert (=> b!4434800 (contains!12250 lt!1632218 (_1!28085 (h!55414 lt!1631939)))))

(declare-fun lt!1632229 () Unit!83085)

(declare-fun Unit!83126 () Unit!83085)

(assert (=> b!4434800 (= lt!1632229 Unit!83126)))

(assert (=> b!4434800 (contains!12250 lt!1632235 (_1!28085 (h!55414 lt!1631939)))))

(declare-fun lt!1632224 () Unit!83085)

(declare-fun Unit!83127 () Unit!83085)

(assert (=> b!4434800 (= lt!1632224 Unit!83127)))

(assert (=> b!4434800 (forall!9648 lt!1631939 lambda!156054)))

(declare-fun lt!1632219 () Unit!83085)

(declare-fun Unit!83128 () Unit!83085)

(assert (=> b!4434800 (= lt!1632219 Unit!83128)))

(assert (=> b!4434800 call!308555))

(declare-fun lt!1632225 () Unit!83085)

(declare-fun Unit!83129 () Unit!83085)

(assert (=> b!4434800 (= lt!1632225 Unit!83129)))

(declare-fun lt!1632232 () Unit!83085)

(declare-fun Unit!83130 () Unit!83085)

(assert (=> b!4434800 (= lt!1632232 Unit!83130)))

(declare-fun lt!1632226 () Unit!83085)

(assert (=> b!4434800 (= lt!1632226 (addForallContainsKeyThenBeforeAdding!195 (+!1171 lt!1631951 lt!1631950) lt!1632235 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))))

(assert (=> b!4434800 (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) lambda!156054)))

(declare-fun lt!1632234 () Unit!83085)

(assert (=> b!4434800 (= lt!1632234 lt!1632226)))

(assert (=> b!4434800 (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) lambda!156054)))

(declare-fun lt!1632216 () Unit!83085)

(declare-fun Unit!83131 () Unit!83085)

(assert (=> b!4434800 (= lt!1632216 Unit!83131)))

(declare-fun res!1835259 () Bool)

(assert (=> b!4434800 (= res!1835259 (forall!9648 lt!1631939 lambda!156054))))

(assert (=> b!4434800 (=> (not res!1835259) (not e!2761411))))

(assert (=> b!4434800 e!2761411))

(declare-fun lt!1632231 () Unit!83085)

(declare-fun Unit!83132 () Unit!83085)

(assert (=> b!4434800 (= lt!1632231 Unit!83132)))

(declare-fun bm!308551 () Bool)

(assert (=> bm!308551 (= call!308554 (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) (ite c!754747 lambda!156052 lambda!156053)))))

(assert (=> b!4434801 (= e!2761410 (+!1171 lt!1631951 lt!1631950))))

(declare-fun lt!1632228 () Unit!83085)

(assert (=> b!4434801 (= lt!1632228 call!308556)))

(assert (=> b!4434801 call!308554))

(declare-fun lt!1632223 () Unit!83085)

(assert (=> b!4434801 (= lt!1632223 lt!1632228)))

(assert (=> b!4434801 call!308555))

(declare-fun lt!1632221 () Unit!83085)

(declare-fun Unit!83133 () Unit!83085)

(assert (=> b!4434801 (= lt!1632221 Unit!83133)))

(declare-fun b!4434802 () Bool)

(declare-fun res!1835260 () Bool)

(assert (=> b!4434802 (=> (not res!1835260) (not e!2761412))))

(assert (=> b!4434802 (= res!1835260 (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) lambda!156055))))

(assert (= (and d!1345597 c!754747) b!4434801))

(assert (= (and d!1345597 (not c!754747)) b!4434800))

(assert (= (and b!4434800 res!1835259) b!4434798))

(assert (= (or b!4434801 b!4434800) bm!308550))

(assert (= (or b!4434801 b!4434800) bm!308551))

(assert (= (or b!4434801 b!4434800) bm!308549))

(assert (= (and d!1345597 res!1835261) b!4434802))

(assert (= (and b!4434802 res!1835260) b!4434799))

(declare-fun m!5120533 () Bool)

(assert (=> bm!308549 m!5120533))

(declare-fun m!5120535 () Bool)

(assert (=> bm!308551 m!5120535))

(declare-fun m!5120537 () Bool)

(assert (=> b!4434799 m!5120537))

(declare-fun m!5120539 () Bool)

(assert (=> b!4434800 m!5120539))

(declare-fun m!5120541 () Bool)

(assert (=> b!4434800 m!5120541))

(assert (=> b!4434800 m!5120189))

(declare-fun m!5120543 () Bool)

(assert (=> b!4434800 m!5120543))

(declare-fun m!5120545 () Bool)

(assert (=> b!4434800 m!5120545))

(declare-fun m!5120547 () Bool)

(assert (=> b!4434800 m!5120547))

(declare-fun m!5120549 () Bool)

(assert (=> b!4434800 m!5120549))

(declare-fun m!5120551 () Bool)

(assert (=> b!4434800 m!5120551))

(assert (=> b!4434800 m!5120549))

(declare-fun m!5120553 () Bool)

(assert (=> b!4434800 m!5120553))

(declare-fun m!5120555 () Bool)

(assert (=> b!4434800 m!5120555))

(assert (=> b!4434800 m!5120551))

(assert (=> b!4434800 m!5120189))

(assert (=> b!4434800 m!5120539))

(declare-fun m!5120557 () Bool)

(assert (=> b!4434800 m!5120557))

(declare-fun m!5120559 () Bool)

(assert (=> b!4434802 m!5120559))

(assert (=> b!4434798 m!5120551))

(assert (=> bm!308550 m!5120189))

(declare-fun m!5120561 () Bool)

(assert (=> bm!308550 m!5120561))

(declare-fun m!5120563 () Bool)

(assert (=> d!1345597 m!5120563))

(declare-fun m!5120565 () Bool)

(assert (=> d!1345597 m!5120565))

(assert (=> b!4434634 d!1345597))

(declare-fun d!1345599 () Bool)

(declare-fun e!2761413 () Bool)

(assert (=> d!1345599 e!2761413))

(declare-fun res!1835263 () Bool)

(assert (=> d!1345599 (=> (not res!1835263) (not e!2761413))))

(declare-fun lt!1632239 () ListMap!2833)

(assert (=> d!1345599 (= res!1835263 (contains!12250 lt!1632239 (_1!28085 lt!1631950)))))

(declare-fun lt!1632238 () List!49831)

(assert (=> d!1345599 (= lt!1632239 (ListMap!2834 lt!1632238))))

(declare-fun lt!1632237 () Unit!83085)

(declare-fun lt!1632236 () Unit!83085)

(assert (=> d!1345599 (= lt!1632237 lt!1632236)))

(assert (=> d!1345599 (= (getValueByKey!755 lt!1632238 (_1!28085 lt!1631950)) (Some!10768 (_2!28085 lt!1631950)))))

(assert (=> d!1345599 (= lt!1632236 (lemmaContainsTupThenGetReturnValue!488 lt!1632238 (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(assert (=> d!1345599 (= lt!1632238 (insertNoDuplicatedKeys!215 (toList!3590 lt!1631951) (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(assert (=> d!1345599 (= (+!1171 lt!1631951 lt!1631950) lt!1632239)))

(declare-fun b!4434803 () Bool)

(declare-fun res!1835262 () Bool)

(assert (=> b!4434803 (=> (not res!1835262) (not e!2761413))))

(assert (=> b!4434803 (= res!1835262 (= (getValueByKey!755 (toList!3590 lt!1632239) (_1!28085 lt!1631950)) (Some!10768 (_2!28085 lt!1631950))))))

(declare-fun b!4434804 () Bool)

(assert (=> b!4434804 (= e!2761413 (contains!12255 (toList!3590 lt!1632239) lt!1631950))))

(assert (= (and d!1345599 res!1835263) b!4434803))

(assert (= (and b!4434803 res!1835262) b!4434804))

(declare-fun m!5120567 () Bool)

(assert (=> d!1345599 m!5120567))

(declare-fun m!5120569 () Bool)

(assert (=> d!1345599 m!5120569))

(declare-fun m!5120571 () Bool)

(assert (=> d!1345599 m!5120571))

(declare-fun m!5120573 () Bool)

(assert (=> d!1345599 m!5120573))

(declare-fun m!5120575 () Bool)

(assert (=> b!4434803 m!5120575))

(declare-fun m!5120577 () Bool)

(assert (=> b!4434804 m!5120577))

(assert (=> b!4434634 d!1345599))

(declare-fun d!1345601 () Bool)

(declare-fun res!1835268 () Bool)

(declare-fun e!2761418 () Bool)

(assert (=> d!1345601 (=> res!1835268 e!2761418)))

(assert (=> d!1345601 (= res!1835268 (not ((_ is Cons!49707) newBucket!194)))))

(assert (=> d!1345601 (= (noDuplicateKeys!801 newBucket!194) e!2761418)))

(declare-fun b!4434809 () Bool)

(declare-fun e!2761419 () Bool)

(assert (=> b!4434809 (= e!2761418 e!2761419)))

(declare-fun res!1835269 () Bool)

(assert (=> b!4434809 (=> (not res!1835269) (not e!2761419))))

(declare-fun containsKey!1192 (List!49831 K!11075) Bool)

(assert (=> b!4434809 (= res!1835269 (not (containsKey!1192 (t!356773 newBucket!194) (_1!28085 (h!55414 newBucket!194)))))))

(declare-fun b!4434810 () Bool)

(assert (=> b!4434810 (= e!2761419 (noDuplicateKeys!801 (t!356773 newBucket!194)))))

(assert (= (and d!1345601 (not res!1835268)) b!4434809))

(assert (= (and b!4434809 res!1835269) b!4434810))

(declare-fun m!5120579 () Bool)

(assert (=> b!4434809 m!5120579))

(declare-fun m!5120581 () Bool)

(assert (=> b!4434810 m!5120581))

(assert (=> b!4434625 d!1345601))

(declare-fun bs!761119 () Bool)

(declare-fun d!1345603 () Bool)

(assert (= bs!761119 (and d!1345603 start!433412)))

(declare-fun lambda!156058 () Int)

(assert (=> bs!761119 (not (= lambda!156058 lambda!155964))))

(declare-fun bs!761120 () Bool)

(assert (= bs!761120 (and d!1345603 d!1345579)))

(assert (=> bs!761120 (not (= lambda!156058 lambda!156050))))

(declare-fun bs!761121 () Bool)

(assert (= bs!761121 (and d!1345603 d!1345595)))

(assert (=> bs!761121 (not (= lambda!156058 lambda!156051))))

(assert (=> d!1345603 true))

(assert (=> d!1345603 (= (allKeysSameHashInMap!907 lm!1616 hashF!1220) (forall!9646 (toList!3589 lm!1616) lambda!156058))))

(declare-fun bs!761122 () Bool)

(assert (= bs!761122 d!1345603))

(declare-fun m!5120583 () Bool)

(assert (=> bs!761122 m!5120583))

(assert (=> b!4434636 d!1345603))

(declare-fun d!1345605 () Bool)

(assert (=> d!1345605 (= (tail!7329 (toList!3589 lt!1631945)) (t!356774 (toList!3589 lt!1631945)))))

(assert (=> b!4434635 d!1345605))

(declare-fun d!1345607 () Bool)

(declare-datatypes ((Option!10770 0))(
  ( (None!10769) (Some!10769 (v!43979 List!49831)) )
))
(declare-fun get!16207 (Option!10770) List!49831)

(declare-fun getValueByKey!756 (List!49832 (_ BitVec 64)) Option!10770)

(assert (=> d!1345607 (= (apply!11653 lm!1616 hash!366) (get!16207 (getValueByKey!756 (toList!3589 lm!1616) hash!366)))))

(declare-fun bs!761123 () Bool)

(assert (= bs!761123 d!1345607))

(declare-fun m!5120585 () Bool)

(assert (=> bs!761123 m!5120585))

(assert (=> bs!761123 m!5120585))

(declare-fun m!5120587 () Bool)

(assert (=> bs!761123 m!5120587))

(assert (=> b!4434637 d!1345607))

(declare-fun d!1345609 () Bool)

(assert (=> d!1345609 (= (eq!435 lt!1631946 lt!1631943) (= (content!7990 (toList!3590 lt!1631946)) (content!7990 (toList!3590 lt!1631943))))))

(declare-fun bs!761124 () Bool)

(assert (= bs!761124 d!1345609))

(assert (=> bs!761124 m!5120229))

(declare-fun m!5120589 () Bool)

(assert (=> bs!761124 m!5120589))

(assert (=> b!4434626 d!1345609))

(declare-fun d!1345611 () Bool)

(declare-fun res!1835270 () Bool)

(declare-fun e!2761420 () Bool)

(assert (=> d!1345611 (=> res!1835270 e!2761420)))

(assert (=> d!1345611 (= res!1835270 ((_ is Nil!49708) (toList!3589 lt!1631945)))))

(assert (=> d!1345611 (= (forall!9646 (toList!3589 lt!1631945) lambda!155964) e!2761420)))

(declare-fun b!4434813 () Bool)

(declare-fun e!2761421 () Bool)

(assert (=> b!4434813 (= e!2761420 e!2761421)))

(declare-fun res!1835271 () Bool)

(assert (=> b!4434813 (=> (not res!1835271) (not e!2761421))))

(assert (=> b!4434813 (= res!1835271 (dynLambda!20886 lambda!155964 (h!55415 (toList!3589 lt!1631945))))))

(declare-fun b!4434814 () Bool)

(assert (=> b!4434814 (= e!2761421 (forall!9646 (t!356774 (toList!3589 lt!1631945)) lambda!155964))))

(assert (= (and d!1345611 (not res!1835270)) b!4434813))

(assert (= (and b!4434813 res!1835271) b!4434814))

(declare-fun b_lambda!144305 () Bool)

(assert (=> (not b_lambda!144305) (not b!4434813)))

(declare-fun m!5120591 () Bool)

(assert (=> b!4434813 m!5120591))

(declare-fun m!5120593 () Bool)

(assert (=> b!4434814 m!5120593))

(assert (=> b!4434617 d!1345611))

(declare-fun d!1345613 () Bool)

(declare-fun e!2761424 () Bool)

(assert (=> d!1345613 e!2761424))

(declare-fun res!1835277 () Bool)

(assert (=> d!1345613 (=> (not res!1835277) (not e!2761424))))

(declare-fun lt!1632248 () ListLongMap!2239)

(assert (=> d!1345613 (= res!1835277 (contains!12251 lt!1632248 (_1!28086 lt!1631949)))))

(declare-fun lt!1632249 () List!49832)

(assert (=> d!1345613 (= lt!1632248 (ListLongMap!2240 lt!1632249))))

(declare-fun lt!1632251 () Unit!83085)

(declare-fun lt!1632250 () Unit!83085)

(assert (=> d!1345613 (= lt!1632251 lt!1632250)))

(assert (=> d!1345613 (= (getValueByKey!756 lt!1632249 (_1!28086 lt!1631949)) (Some!10769 (_2!28086 lt!1631949)))))

(declare-fun lemmaContainsTupThenGetReturnValue!489 (List!49832 (_ BitVec 64) List!49831) Unit!83085)

(assert (=> d!1345613 (= lt!1632250 (lemmaContainsTupThenGetReturnValue!489 lt!1632249 (_1!28086 lt!1631949) (_2!28086 lt!1631949)))))

(declare-fun insertStrictlySorted!282 (List!49832 (_ BitVec 64) List!49831) List!49832)

(assert (=> d!1345613 (= lt!1632249 (insertStrictlySorted!282 (toList!3589 lm!1616) (_1!28086 lt!1631949) (_2!28086 lt!1631949)))))

(assert (=> d!1345613 (= (+!1170 lm!1616 lt!1631949) lt!1632248)))

(declare-fun b!4434819 () Bool)

(declare-fun res!1835276 () Bool)

(assert (=> b!4434819 (=> (not res!1835276) (not e!2761424))))

(assert (=> b!4434819 (= res!1835276 (= (getValueByKey!756 (toList!3589 lt!1632248) (_1!28086 lt!1631949)) (Some!10769 (_2!28086 lt!1631949))))))

(declare-fun b!4434820 () Bool)

(declare-fun contains!12256 (List!49832 tuple2!49584) Bool)

(assert (=> b!4434820 (= e!2761424 (contains!12256 (toList!3589 lt!1632248) lt!1631949))))

(assert (= (and d!1345613 res!1835277) b!4434819))

(assert (= (and b!4434819 res!1835276) b!4434820))

(declare-fun m!5120595 () Bool)

(assert (=> d!1345613 m!5120595))

(declare-fun m!5120597 () Bool)

(assert (=> d!1345613 m!5120597))

(declare-fun m!5120599 () Bool)

(assert (=> d!1345613 m!5120599))

(declare-fun m!5120601 () Bool)

(assert (=> d!1345613 m!5120601))

(declare-fun m!5120603 () Bool)

(assert (=> b!4434819 m!5120603))

(declare-fun m!5120605 () Bool)

(assert (=> b!4434820 m!5120605))

(assert (=> b!4434617 d!1345613))

(declare-fun d!1345615 () Bool)

(assert (=> d!1345615 (forall!9646 (toList!3589 (+!1170 lm!1616 (tuple2!49585 hash!366 newBucket!194))) lambda!155964)))

(declare-fun lt!1632254 () Unit!83085)

(declare-fun choose!28116 (ListLongMap!2239 Int (_ BitVec 64) List!49831) Unit!83085)

(assert (=> d!1345615 (= lt!1632254 (choose!28116 lm!1616 lambda!155964 hash!366 newBucket!194))))

(declare-fun e!2761427 () Bool)

(assert (=> d!1345615 e!2761427))

(declare-fun res!1835280 () Bool)

(assert (=> d!1345615 (=> (not res!1835280) (not e!2761427))))

(assert (=> d!1345615 (= res!1835280 (forall!9646 (toList!3589 lm!1616) lambda!155964))))

(assert (=> d!1345615 (= (addValidProp!443 lm!1616 lambda!155964 hash!366 newBucket!194) lt!1632254)))

(declare-fun b!4434824 () Bool)

(assert (=> b!4434824 (= e!2761427 (dynLambda!20886 lambda!155964 (tuple2!49585 hash!366 newBucket!194)))))

(assert (= (and d!1345615 res!1835280) b!4434824))

(declare-fun b_lambda!144307 () Bool)

(assert (=> (not b_lambda!144307) (not b!4434824)))

(declare-fun m!5120607 () Bool)

(assert (=> d!1345615 m!5120607))

(declare-fun m!5120609 () Bool)

(assert (=> d!1345615 m!5120609))

(declare-fun m!5120611 () Bool)

(assert (=> d!1345615 m!5120611))

(assert (=> d!1345615 m!5120161))

(declare-fun m!5120613 () Bool)

(assert (=> b!4434824 m!5120613))

(assert (=> b!4434617 d!1345615))

(declare-fun d!1345617 () Bool)

(declare-fun e!2761432 () Bool)

(assert (=> d!1345617 e!2761432))

(declare-fun res!1835283 () Bool)

(assert (=> d!1345617 (=> res!1835283 e!2761432)))

(declare-fun lt!1632263 () Bool)

(assert (=> d!1345617 (= res!1835283 (not lt!1632263))))

(declare-fun lt!1632265 () Bool)

(assert (=> d!1345617 (= lt!1632263 lt!1632265)))

(declare-fun lt!1632266 () Unit!83085)

(declare-fun e!2761433 () Unit!83085)

(assert (=> d!1345617 (= lt!1632266 e!2761433)))

(declare-fun c!754750 () Bool)

(assert (=> d!1345617 (= c!754750 lt!1632265)))

(declare-fun containsKey!1193 (List!49832 (_ BitVec 64)) Bool)

(assert (=> d!1345617 (= lt!1632265 (containsKey!1193 (toList!3589 lm!1616) hash!366))))

(assert (=> d!1345617 (= (contains!12251 lm!1616 hash!366) lt!1632263)))

(declare-fun b!4434831 () Bool)

(declare-fun lt!1632264 () Unit!83085)

(assert (=> b!4434831 (= e!2761433 lt!1632264)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!664 (List!49832 (_ BitVec 64)) Unit!83085)

(assert (=> b!4434831 (= lt!1632264 (lemmaContainsKeyImpliesGetValueByKeyDefined!664 (toList!3589 lm!1616) hash!366))))

(declare-fun isDefined!8061 (Option!10770) Bool)

(assert (=> b!4434831 (isDefined!8061 (getValueByKey!756 (toList!3589 lm!1616) hash!366))))

(declare-fun b!4434832 () Bool)

(declare-fun Unit!83145 () Unit!83085)

(assert (=> b!4434832 (= e!2761433 Unit!83145)))

(declare-fun b!4434833 () Bool)

(assert (=> b!4434833 (= e!2761432 (isDefined!8061 (getValueByKey!756 (toList!3589 lm!1616) hash!366)))))

(assert (= (and d!1345617 c!754750) b!4434831))

(assert (= (and d!1345617 (not c!754750)) b!4434832))

(assert (= (and d!1345617 (not res!1835283)) b!4434833))

(declare-fun m!5120615 () Bool)

(assert (=> d!1345617 m!5120615))

(declare-fun m!5120617 () Bool)

(assert (=> b!4434831 m!5120617))

(assert (=> b!4434831 m!5120585))

(assert (=> b!4434831 m!5120585))

(declare-fun m!5120619 () Bool)

(assert (=> b!4434831 m!5120619))

(assert (=> b!4434833 m!5120585))

(assert (=> b!4434833 m!5120585))

(assert (=> b!4434833 m!5120619))

(assert (=> b!4434628 d!1345617))

(declare-fun bs!761125 () Bool)

(declare-fun d!1345619 () Bool)

(assert (= bs!761125 (and d!1345619 b!4434800)))

(declare-fun lambda!156061 () Int)

(assert (=> bs!761125 (not (= lambda!156061 lambda!156053))))

(declare-fun bs!761126 () Bool)

(assert (= bs!761126 (and d!1345619 d!1345535)))

(assert (=> bs!761126 (not (= lambda!156061 lambda!156041))))

(declare-fun bs!761127 () Bool)

(assert (= bs!761127 (and d!1345619 d!1345597)))

(assert (=> bs!761127 (not (= lambda!156061 lambda!156055))))

(assert (=> bs!761125 (not (= lambda!156061 lambda!156054))))

(declare-fun bs!761128 () Bool)

(assert (= bs!761128 (and d!1345619 b!4434762)))

(assert (=> bs!761128 (not (= lambda!156061 lambda!156039))))

(assert (=> bs!761128 (not (= lambda!156061 lambda!156040))))

(declare-fun bs!761129 () Bool)

(assert (= bs!761129 (and d!1345619 b!4434801)))

(assert (=> bs!761129 (not (= lambda!156061 lambda!156052))))

(declare-fun bs!761130 () Bool)

(assert (= bs!761130 (and d!1345619 b!4434763)))

(assert (=> bs!761130 (not (= lambda!156061 lambda!156037))))

(assert (=> d!1345619 true))

(assert (=> d!1345619 true))

(assert (=> d!1345619 (= (allKeysSameHash!761 newBucket!194 hash!366 hashF!1220) (forall!9648 newBucket!194 lambda!156061))))

(declare-fun bs!761131 () Bool)

(assert (= bs!761131 d!1345619))

(declare-fun m!5120621 () Bool)

(assert (=> bs!761131 m!5120621))

(assert (=> b!4434627 d!1345619))

(assert (=> b!4434620 d!1345607))

(declare-fun b!4434856 () Bool)

(assert (=> b!4434856 false))

(declare-fun lt!1632284 () Unit!83085)

(declare-fun lt!1632287 () Unit!83085)

(assert (=> b!4434856 (= lt!1632284 lt!1632287)))

(declare-fun containsKey!1194 (List!49831 K!11075) Bool)

(assert (=> b!4434856 (containsKey!1194 (toList!3590 lt!1631947) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!272 (List!49831 K!11075) Unit!83085)

(assert (=> b!4434856 (= lt!1632287 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1631947) key!3717))))

(declare-fun e!2761446 () Unit!83085)

(declare-fun Unit!83146 () Unit!83085)

(assert (=> b!4434856 (= e!2761446 Unit!83146)))

(declare-fun b!4434857 () Bool)

(declare-datatypes ((List!49834 0))(
  ( (Nil!49710) (Cons!49710 (h!55419 K!11075) (t!356776 List!49834)) )
))
(declare-fun e!2761448 () List!49834)

(declare-fun getKeysList!274 (List!49831) List!49834)

(assert (=> b!4434857 (= e!2761448 (getKeysList!274 (toList!3590 lt!1631947)))))

(declare-fun b!4434858 () Bool)

(declare-fun e!2761449 () Bool)

(declare-fun contains!12257 (List!49834 K!11075) Bool)

(declare-fun keys!17006 (ListMap!2833) List!49834)

(assert (=> b!4434858 (= e!2761449 (contains!12257 (keys!17006 lt!1631947) key!3717))))

(declare-fun d!1345621 () Bool)

(declare-fun e!2761447 () Bool)

(assert (=> d!1345621 e!2761447))

(declare-fun res!1835291 () Bool)

(assert (=> d!1345621 (=> res!1835291 e!2761447)))

(declare-fun e!2761450 () Bool)

(assert (=> d!1345621 (= res!1835291 e!2761450)))

(declare-fun res!1835292 () Bool)

(assert (=> d!1345621 (=> (not res!1835292) (not e!2761450))))

(declare-fun lt!1632283 () Bool)

(assert (=> d!1345621 (= res!1835292 (not lt!1632283))))

(declare-fun lt!1632286 () Bool)

(assert (=> d!1345621 (= lt!1632283 lt!1632286)))

(declare-fun lt!1632290 () Unit!83085)

(declare-fun e!2761451 () Unit!83085)

(assert (=> d!1345621 (= lt!1632290 e!2761451)))

(declare-fun c!754757 () Bool)

(assert (=> d!1345621 (= c!754757 lt!1632286)))

(assert (=> d!1345621 (= lt!1632286 (containsKey!1194 (toList!3590 lt!1631947) key!3717))))

(assert (=> d!1345621 (= (contains!12250 lt!1631947 key!3717) lt!1632283)))

(declare-fun b!4434859 () Bool)

(declare-fun lt!1632289 () Unit!83085)

(assert (=> b!4434859 (= e!2761451 lt!1632289)))

(declare-fun lt!1632288 () Unit!83085)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!665 (List!49831 K!11075) Unit!83085)

(assert (=> b!4434859 (= lt!1632288 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1631947) key!3717))))

(declare-fun isDefined!8062 (Option!10769) Bool)

(assert (=> b!4434859 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1631947) key!3717))))

(declare-fun lt!1632285 () Unit!83085)

(assert (=> b!4434859 (= lt!1632285 lt!1632288)))

(declare-fun lemmaInListThenGetKeysListContains!271 (List!49831 K!11075) Unit!83085)

(assert (=> b!4434859 (= lt!1632289 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1631947) key!3717))))

(declare-fun call!308559 () Bool)

(assert (=> b!4434859 call!308559))

(declare-fun bm!308554 () Bool)

(assert (=> bm!308554 (= call!308559 (contains!12257 e!2761448 key!3717))))

(declare-fun c!754758 () Bool)

(assert (=> bm!308554 (= c!754758 c!754757)))

(declare-fun b!4434860 () Bool)

(assert (=> b!4434860 (= e!2761447 e!2761449)))

(declare-fun res!1835290 () Bool)

(assert (=> b!4434860 (=> (not res!1835290) (not e!2761449))))

(assert (=> b!4434860 (= res!1835290 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1631947) key!3717)))))

(declare-fun b!4434861 () Bool)

(assert (=> b!4434861 (= e!2761451 e!2761446)))

(declare-fun c!754759 () Bool)

(assert (=> b!4434861 (= c!754759 call!308559)))

(declare-fun b!4434862 () Bool)

(declare-fun Unit!83147 () Unit!83085)

(assert (=> b!4434862 (= e!2761446 Unit!83147)))

(declare-fun b!4434863 () Bool)

(assert (=> b!4434863 (= e!2761450 (not (contains!12257 (keys!17006 lt!1631947) key!3717)))))

(declare-fun b!4434864 () Bool)

(assert (=> b!4434864 (= e!2761448 (keys!17006 lt!1631947))))

(assert (= (and d!1345621 c!754757) b!4434859))

(assert (= (and d!1345621 (not c!754757)) b!4434861))

(assert (= (and b!4434861 c!754759) b!4434856))

(assert (= (and b!4434861 (not c!754759)) b!4434862))

(assert (= (or b!4434859 b!4434861) bm!308554))

(assert (= (and bm!308554 c!754758) b!4434857))

(assert (= (and bm!308554 (not c!754758)) b!4434864))

(assert (= (and d!1345621 res!1835292) b!4434863))

(assert (= (and d!1345621 (not res!1835291)) b!4434860))

(assert (= (and b!4434860 res!1835290) b!4434858))

(declare-fun m!5120623 () Bool)

(assert (=> b!4434856 m!5120623))

(declare-fun m!5120625 () Bool)

(assert (=> b!4434856 m!5120625))

(declare-fun m!5120627 () Bool)

(assert (=> b!4434863 m!5120627))

(assert (=> b!4434863 m!5120627))

(declare-fun m!5120629 () Bool)

(assert (=> b!4434863 m!5120629))

(assert (=> d!1345621 m!5120623))

(assert (=> b!4434858 m!5120627))

(assert (=> b!4434858 m!5120627))

(assert (=> b!4434858 m!5120629))

(assert (=> b!4434864 m!5120627))

(declare-fun m!5120631 () Bool)

(assert (=> b!4434859 m!5120631))

(declare-fun m!5120633 () Bool)

(assert (=> b!4434859 m!5120633))

(assert (=> b!4434859 m!5120633))

(declare-fun m!5120635 () Bool)

(assert (=> b!4434859 m!5120635))

(declare-fun m!5120637 () Bool)

(assert (=> b!4434859 m!5120637))

(declare-fun m!5120639 () Bool)

(assert (=> bm!308554 m!5120639))

(assert (=> b!4434860 m!5120633))

(assert (=> b!4434860 m!5120633))

(assert (=> b!4434860 m!5120635))

(declare-fun m!5120641 () Bool)

(assert (=> b!4434857 m!5120641))

(assert (=> b!4434619 d!1345621))

(declare-fun bs!761132 () Bool)

(declare-fun d!1345623 () Bool)

(assert (= bs!761132 (and d!1345623 start!433412)))

(declare-fun lambda!156062 () Int)

(assert (=> bs!761132 (= lambda!156062 lambda!155964)))

(declare-fun bs!761133 () Bool)

(assert (= bs!761133 (and d!1345623 d!1345579)))

(assert (=> bs!761133 (= lambda!156062 lambda!156050)))

(declare-fun bs!761134 () Bool)

(assert (= bs!761134 (and d!1345623 d!1345595)))

(assert (=> bs!761134 (= lambda!156062 lambda!156051)))

(declare-fun bs!761135 () Bool)

(assert (= bs!761135 (and d!1345623 d!1345603)))

(assert (=> bs!761135 (not (= lambda!156062 lambda!156058))))

(declare-fun lt!1632291 () ListMap!2833)

(assert (=> d!1345623 (invariantList!827 (toList!3590 lt!1632291))))

(declare-fun e!2761452 () ListMap!2833)

(assert (=> d!1345623 (= lt!1632291 e!2761452)))

(declare-fun c!754760 () Bool)

(assert (=> d!1345623 (= c!754760 ((_ is Cons!49708) (toList!3589 lm!1616)))))

(assert (=> d!1345623 (forall!9646 (toList!3589 lm!1616) lambda!156062)))

(assert (=> d!1345623 (= (extractMap!862 (toList!3589 lm!1616)) lt!1632291)))

(declare-fun b!4434865 () Bool)

(assert (=> b!4434865 (= e!2761452 (addToMapMapFromBucket!426 (_2!28086 (h!55415 (toList!3589 lm!1616))) (extractMap!862 (t!356774 (toList!3589 lm!1616)))))))

(declare-fun b!4434866 () Bool)

(assert (=> b!4434866 (= e!2761452 (ListMap!2834 Nil!49707))))

(assert (= (and d!1345623 c!754760) b!4434865))

(assert (= (and d!1345623 (not c!754760)) b!4434866))

(declare-fun m!5120643 () Bool)

(assert (=> d!1345623 m!5120643))

(declare-fun m!5120645 () Bool)

(assert (=> d!1345623 m!5120645))

(assert (=> b!4434865 m!5120169))

(assert (=> b!4434865 m!5120169))

(declare-fun m!5120647 () Bool)

(assert (=> b!4434865 m!5120647))

(assert (=> b!4434619 d!1345623))

(declare-fun d!1345625 () Bool)

(declare-fun e!2761453 () Bool)

(assert (=> d!1345625 e!2761453))

(declare-fun res!1835294 () Bool)

(assert (=> d!1345625 (=> (not res!1835294) (not e!2761453))))

(declare-fun lt!1632295 () ListMap!2833)

(assert (=> d!1345625 (= res!1835294 (contains!12250 lt!1632295 (_1!28085 lt!1631950)))))

(declare-fun lt!1632294 () List!49831)

(assert (=> d!1345625 (= lt!1632295 (ListMap!2834 lt!1632294))))

(declare-fun lt!1632293 () Unit!83085)

(declare-fun lt!1632292 () Unit!83085)

(assert (=> d!1345625 (= lt!1632293 lt!1632292)))

(assert (=> d!1345625 (= (getValueByKey!755 lt!1632294 (_1!28085 lt!1631950)) (Some!10768 (_2!28085 lt!1631950)))))

(assert (=> d!1345625 (= lt!1632292 (lemmaContainsTupThenGetReturnValue!488 lt!1632294 (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(assert (=> d!1345625 (= lt!1632294 (insertNoDuplicatedKeys!215 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)) (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(assert (=> d!1345625 (= (+!1171 (addToMapMapFromBucket!426 lt!1631939 lt!1631951) lt!1631950) lt!1632295)))

(declare-fun b!4434867 () Bool)

(declare-fun res!1835293 () Bool)

(assert (=> b!4434867 (=> (not res!1835293) (not e!2761453))))

(assert (=> b!4434867 (= res!1835293 (= (getValueByKey!755 (toList!3590 lt!1632295) (_1!28085 lt!1631950)) (Some!10768 (_2!28085 lt!1631950))))))

(declare-fun b!4434868 () Bool)

(assert (=> b!4434868 (= e!2761453 (contains!12255 (toList!3590 lt!1632295) lt!1631950))))

(assert (= (and d!1345625 res!1835294) b!4434867))

(assert (= (and b!4434867 res!1835293) b!4434868))

(declare-fun m!5120649 () Bool)

(assert (=> d!1345625 m!5120649))

(declare-fun m!5120651 () Bool)

(assert (=> d!1345625 m!5120651))

(declare-fun m!5120653 () Bool)

(assert (=> d!1345625 m!5120653))

(declare-fun m!5120655 () Bool)

(assert (=> d!1345625 m!5120655))

(declare-fun m!5120657 () Bool)

(assert (=> b!4434867 m!5120657))

(declare-fun m!5120659 () Bool)

(assert (=> b!4434868 m!5120659))

(assert (=> b!4434630 d!1345625))

(declare-fun d!1345627 () Bool)

(assert (=> d!1345627 (eq!435 (addToMapMapFromBucket!426 lt!1631939 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (+!1171 (addToMapMapFromBucket!426 lt!1631939 lt!1631951) (tuple2!49583 key!3717 newValue!93)))))

(declare-fun lt!1632298 () Unit!83085)

(declare-fun choose!28117 (ListMap!2833 K!11075 V!11321 List!49831) Unit!83085)

(assert (=> d!1345627 (= lt!1632298 (choose!28117 lt!1631951 key!3717 newValue!93 lt!1631939))))

(assert (=> d!1345627 (not (containsKey!1192 lt!1631939 key!3717))))

(assert (=> d!1345627 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!206 lt!1631951 key!3717 newValue!93 lt!1631939) lt!1632298)))

(declare-fun bs!761136 () Bool)

(assert (= bs!761136 d!1345627))

(assert (=> bs!761136 m!5120199))

(declare-fun m!5120661 () Bool)

(assert (=> bs!761136 m!5120661))

(declare-fun m!5120663 () Bool)

(assert (=> bs!761136 m!5120663))

(declare-fun m!5120665 () Bool)

(assert (=> bs!761136 m!5120665))

(assert (=> bs!761136 m!5120661))

(declare-fun m!5120667 () Bool)

(assert (=> bs!761136 m!5120667))

(declare-fun m!5120669 () Bool)

(assert (=> bs!761136 m!5120669))

(declare-fun m!5120671 () Bool)

(assert (=> bs!761136 m!5120671))

(assert (=> bs!761136 m!5120665))

(assert (=> bs!761136 m!5120671))

(assert (=> bs!761136 m!5120199))

(assert (=> b!4434630 d!1345627))

(declare-fun d!1345629 () Bool)

(assert (=> d!1345629 (= (eq!435 lt!1631948 lt!1631943) (= (content!7990 (toList!3590 lt!1631948)) (content!7990 (toList!3590 lt!1631943))))))

(declare-fun bs!761137 () Bool)

(assert (= bs!761137 d!1345629))

(declare-fun m!5120673 () Bool)

(assert (=> bs!761137 m!5120673))

(assert (=> bs!761137 m!5120589))

(assert (=> b!4434630 d!1345629))

(declare-fun d!1345631 () Bool)

(assert (=> d!1345631 (= (eq!435 lt!1631940 lt!1631943) (= (content!7990 (toList!3590 lt!1631940)) (content!7990 (toList!3590 lt!1631943))))))

(declare-fun bs!761138 () Bool)

(assert (= bs!761138 d!1345631))

(declare-fun m!5120675 () Bool)

(assert (=> bs!761138 m!5120675))

(assert (=> bs!761138 m!5120589))

(assert (=> b!4434630 d!1345631))

(declare-fun bs!761139 () Bool)

(declare-fun b!4434872 () Bool)

(assert (= bs!761139 (and b!4434872 b!4434800)))

(declare-fun lambda!156063 () Int)

(assert (=> bs!761139 (= (= lt!1631951 (+!1171 lt!1631951 lt!1631950)) (= lambda!156063 lambda!156053))))

(declare-fun bs!761140 () Bool)

(assert (= bs!761140 (and b!4434872 d!1345535)))

(assert (=> bs!761140 (= (= lt!1631951 lt!1632174) (= lambda!156063 lambda!156041))))

(declare-fun bs!761141 () Bool)

(assert (= bs!761141 (and b!4434872 d!1345597)))

(assert (=> bs!761141 (= (= lt!1631951 lt!1632222) (= lambda!156063 lambda!156055))))

(declare-fun bs!761142 () Bool)

(assert (= bs!761142 (and b!4434872 d!1345619)))

(assert (=> bs!761142 (not (= lambda!156063 lambda!156061))))

(assert (=> bs!761139 (= (= lt!1631951 lt!1632235) (= lambda!156063 lambda!156054))))

(declare-fun bs!761143 () Bool)

(assert (= bs!761143 (and b!4434872 b!4434762)))

(assert (=> bs!761143 (= lambda!156063 lambda!156039)))

(assert (=> bs!761143 (= (= lt!1631951 lt!1632187) (= lambda!156063 lambda!156040))))

(declare-fun bs!761144 () Bool)

(assert (= bs!761144 (and b!4434872 b!4434801)))

(assert (=> bs!761144 (= (= lt!1631951 (+!1171 lt!1631951 lt!1631950)) (= lambda!156063 lambda!156052))))

(declare-fun bs!761145 () Bool)

(assert (= bs!761145 (and b!4434872 b!4434763)))

(assert (=> bs!761145 (= lambda!156063 lambda!156037)))

(assert (=> b!4434872 true))

(declare-fun bs!761146 () Bool)

(declare-fun b!4434871 () Bool)

(assert (= bs!761146 (and b!4434871 b!4434800)))

(declare-fun lambda!156064 () Int)

(assert (=> bs!761146 (= (= lt!1631951 (+!1171 lt!1631951 lt!1631950)) (= lambda!156064 lambda!156053))))

(declare-fun bs!761147 () Bool)

(assert (= bs!761147 (and b!4434871 d!1345535)))

(assert (=> bs!761147 (= (= lt!1631951 lt!1632174) (= lambda!156064 lambda!156041))))

(declare-fun bs!761148 () Bool)

(assert (= bs!761148 (and b!4434871 d!1345619)))

(assert (=> bs!761148 (not (= lambda!156064 lambda!156061))))

(assert (=> bs!761146 (= (= lt!1631951 lt!1632235) (= lambda!156064 lambda!156054))))

(declare-fun bs!761149 () Bool)

(assert (= bs!761149 (and b!4434871 b!4434762)))

(assert (=> bs!761149 (= lambda!156064 lambda!156039)))

(assert (=> bs!761149 (= (= lt!1631951 lt!1632187) (= lambda!156064 lambda!156040))))

(declare-fun bs!761150 () Bool)

(assert (= bs!761150 (and b!4434871 b!4434801)))

(assert (=> bs!761150 (= (= lt!1631951 (+!1171 lt!1631951 lt!1631950)) (= lambda!156064 lambda!156052))))

(declare-fun bs!761151 () Bool)

(assert (= bs!761151 (and b!4434871 b!4434763)))

(assert (=> bs!761151 (= lambda!156064 lambda!156037)))

(declare-fun bs!761152 () Bool)

(assert (= bs!761152 (and b!4434871 d!1345597)))

(assert (=> bs!761152 (= (= lt!1631951 lt!1632222) (= lambda!156064 lambda!156055))))

(declare-fun bs!761153 () Bool)

(assert (= bs!761153 (and b!4434871 b!4434872)))

(assert (=> bs!761153 (= lambda!156064 lambda!156063)))

(assert (=> b!4434871 true))

(declare-fun lambda!156065 () Int)

(declare-fun lt!1632319 () ListMap!2833)

(assert (=> bs!761146 (= (= lt!1632319 (+!1171 lt!1631951 lt!1631950)) (= lambda!156065 lambda!156053))))

(assert (=> bs!761147 (= (= lt!1632319 lt!1632174) (= lambda!156065 lambda!156041))))

(assert (=> bs!761148 (not (= lambda!156065 lambda!156061))))

(assert (=> bs!761146 (= (= lt!1632319 lt!1632235) (= lambda!156065 lambda!156054))))

(assert (=> b!4434871 (= (= lt!1632319 lt!1631951) (= lambda!156065 lambda!156064))))

(assert (=> bs!761149 (= (= lt!1632319 lt!1631951) (= lambda!156065 lambda!156039))))

(assert (=> bs!761149 (= (= lt!1632319 lt!1632187) (= lambda!156065 lambda!156040))))

(assert (=> bs!761150 (= (= lt!1632319 (+!1171 lt!1631951 lt!1631950)) (= lambda!156065 lambda!156052))))

(assert (=> bs!761151 (= (= lt!1632319 lt!1631951) (= lambda!156065 lambda!156037))))

(assert (=> bs!761152 (= (= lt!1632319 lt!1632222) (= lambda!156065 lambda!156055))))

(assert (=> bs!761153 (= (= lt!1632319 lt!1631951) (= lambda!156065 lambda!156063))))

(assert (=> b!4434871 true))

(declare-fun bs!761154 () Bool)

(declare-fun d!1345633 () Bool)

(assert (= bs!761154 (and d!1345633 b!4434800)))

(declare-fun lt!1632306 () ListMap!2833)

(declare-fun lambda!156066 () Int)

(assert (=> bs!761154 (= (= lt!1632306 (+!1171 lt!1631951 lt!1631950)) (= lambda!156066 lambda!156053))))

(declare-fun bs!761155 () Bool)

(assert (= bs!761155 (and d!1345633 d!1345535)))

(assert (=> bs!761155 (= (= lt!1632306 lt!1632174) (= lambda!156066 lambda!156041))))

(declare-fun bs!761156 () Bool)

(assert (= bs!761156 (and d!1345633 d!1345619)))

(assert (=> bs!761156 (not (= lambda!156066 lambda!156061))))

(declare-fun bs!761157 () Bool)

(assert (= bs!761157 (and d!1345633 b!4434871)))

(assert (=> bs!761157 (= (= lt!1632306 lt!1631951) (= lambda!156066 lambda!156064))))

(declare-fun bs!761158 () Bool)

(assert (= bs!761158 (and d!1345633 b!4434762)))

(assert (=> bs!761158 (= (= lt!1632306 lt!1631951) (= lambda!156066 lambda!156039))))

(assert (=> bs!761158 (= (= lt!1632306 lt!1632187) (= lambda!156066 lambda!156040))))

(declare-fun bs!761159 () Bool)

(assert (= bs!761159 (and d!1345633 b!4434801)))

(assert (=> bs!761159 (= (= lt!1632306 (+!1171 lt!1631951 lt!1631950)) (= lambda!156066 lambda!156052))))

(declare-fun bs!761160 () Bool)

(assert (= bs!761160 (and d!1345633 b!4434763)))

(assert (=> bs!761160 (= (= lt!1632306 lt!1631951) (= lambda!156066 lambda!156037))))

(declare-fun bs!761161 () Bool)

(assert (= bs!761161 (and d!1345633 d!1345597)))

(assert (=> bs!761161 (= (= lt!1632306 lt!1632222) (= lambda!156066 lambda!156055))))

(declare-fun bs!761162 () Bool)

(assert (= bs!761162 (and d!1345633 b!4434872)))

(assert (=> bs!761162 (= (= lt!1632306 lt!1631951) (= lambda!156066 lambda!156063))))

(assert (=> bs!761157 (= (= lt!1632306 lt!1632319) (= lambda!156066 lambda!156065))))

(assert (=> bs!761154 (= (= lt!1632306 lt!1632235) (= lambda!156066 lambda!156054))))

(assert (=> d!1345633 true))

(declare-fun b!4434869 () Bool)

(declare-fun e!2761455 () Bool)

(assert (=> b!4434869 (= e!2761455 (forall!9648 (toList!3590 lt!1631951) lambda!156065))))

(declare-fun bm!308555 () Bool)

(declare-fun call!308561 () Bool)

(declare-fun lt!1632302 () ListMap!2833)

(declare-fun c!754761 () Bool)

(assert (=> bm!308555 (= call!308561 (forall!9648 (ite c!754761 (toList!3590 lt!1631951) (toList!3590 lt!1632302)) (ite c!754761 lambda!156063 lambda!156065)))))

(declare-fun bm!308556 () Bool)

(declare-fun call!308562 () Unit!83085)

(assert (=> bm!308556 (= call!308562 (lemmaContainsAllItsOwnKeys!195 lt!1631951))))

(declare-fun b!4434870 () Bool)

(declare-fun e!2761456 () Bool)

(assert (=> b!4434870 (= e!2761456 (invariantList!827 (toList!3590 lt!1632306)))))

(assert (=> d!1345633 e!2761456))

(declare-fun res!1835297 () Bool)

(assert (=> d!1345633 (=> (not res!1835297) (not e!2761456))))

(assert (=> d!1345633 (= res!1835297 (forall!9648 lt!1631939 lambda!156066))))

(declare-fun e!2761454 () ListMap!2833)

(assert (=> d!1345633 (= lt!1632306 e!2761454)))

(assert (=> d!1345633 (= c!754761 ((_ is Nil!49707) lt!1631939))))

(assert (=> d!1345633 (noDuplicateKeys!801 lt!1631939)))

(assert (=> d!1345633 (= (addToMapMapFromBucket!426 lt!1631939 lt!1631951) lt!1632306)))

(assert (=> b!4434871 (= e!2761454 lt!1632319)))

(assert (=> b!4434871 (= lt!1632302 (+!1171 lt!1631951 (h!55414 lt!1631939)))))

(assert (=> b!4434871 (= lt!1632319 (addToMapMapFromBucket!426 (t!356773 lt!1631939) (+!1171 lt!1631951 (h!55414 lt!1631939))))))

(declare-fun lt!1632301 () Unit!83085)

(assert (=> b!4434871 (= lt!1632301 call!308562)))

(declare-fun call!308560 () Bool)

(assert (=> b!4434871 call!308560))

(declare-fun lt!1632314 () Unit!83085)

(assert (=> b!4434871 (= lt!1632314 lt!1632301)))

(assert (=> b!4434871 (forall!9648 (toList!3590 lt!1632302) lambda!156065)))

(declare-fun lt!1632299 () Unit!83085)

(declare-fun Unit!83148 () Unit!83085)

(assert (=> b!4434871 (= lt!1632299 Unit!83148)))

(assert (=> b!4434871 (forall!9648 (t!356773 lt!1631939) lambda!156065)))

(declare-fun lt!1632317 () Unit!83085)

(declare-fun Unit!83149 () Unit!83085)

(assert (=> b!4434871 (= lt!1632317 Unit!83149)))

(declare-fun lt!1632311 () Unit!83085)

(declare-fun Unit!83150 () Unit!83085)

(assert (=> b!4434871 (= lt!1632311 Unit!83150)))

(declare-fun lt!1632304 () Unit!83085)

(assert (=> b!4434871 (= lt!1632304 (forallContained!2125 (toList!3590 lt!1632302) lambda!156065 (h!55414 lt!1631939)))))

(assert (=> b!4434871 (contains!12250 lt!1632302 (_1!28085 (h!55414 lt!1631939)))))

(declare-fun lt!1632313 () Unit!83085)

(declare-fun Unit!83151 () Unit!83085)

(assert (=> b!4434871 (= lt!1632313 Unit!83151)))

(assert (=> b!4434871 (contains!12250 lt!1632319 (_1!28085 (h!55414 lt!1631939)))))

(declare-fun lt!1632308 () Unit!83085)

(declare-fun Unit!83152 () Unit!83085)

(assert (=> b!4434871 (= lt!1632308 Unit!83152)))

(assert (=> b!4434871 (forall!9648 lt!1631939 lambda!156065)))

(declare-fun lt!1632303 () Unit!83085)

(declare-fun Unit!83153 () Unit!83085)

(assert (=> b!4434871 (= lt!1632303 Unit!83153)))

(assert (=> b!4434871 call!308561))

(declare-fun lt!1632309 () Unit!83085)

(declare-fun Unit!83154 () Unit!83085)

(assert (=> b!4434871 (= lt!1632309 Unit!83154)))

(declare-fun lt!1632316 () Unit!83085)

(declare-fun Unit!83155 () Unit!83085)

(assert (=> b!4434871 (= lt!1632316 Unit!83155)))

(declare-fun lt!1632310 () Unit!83085)

(assert (=> b!4434871 (= lt!1632310 (addForallContainsKeyThenBeforeAdding!195 lt!1631951 lt!1632319 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))))

(assert (=> b!4434871 (forall!9648 (toList!3590 lt!1631951) lambda!156065)))

(declare-fun lt!1632318 () Unit!83085)

(assert (=> b!4434871 (= lt!1632318 lt!1632310)))

(assert (=> b!4434871 (forall!9648 (toList!3590 lt!1631951) lambda!156065)))

(declare-fun lt!1632300 () Unit!83085)

(declare-fun Unit!83156 () Unit!83085)

(assert (=> b!4434871 (= lt!1632300 Unit!83156)))

(declare-fun res!1835295 () Bool)

(assert (=> b!4434871 (= res!1835295 (forall!9648 lt!1631939 lambda!156065))))

(assert (=> b!4434871 (=> (not res!1835295) (not e!2761455))))

(assert (=> b!4434871 e!2761455))

(declare-fun lt!1632315 () Unit!83085)

(declare-fun Unit!83157 () Unit!83085)

(assert (=> b!4434871 (= lt!1632315 Unit!83157)))

(declare-fun bm!308557 () Bool)

(assert (=> bm!308557 (= call!308560 (forall!9648 (toList!3590 lt!1631951) (ite c!754761 lambda!156063 lambda!156064)))))

(assert (=> b!4434872 (= e!2761454 lt!1631951)))

(declare-fun lt!1632312 () Unit!83085)

(assert (=> b!4434872 (= lt!1632312 call!308562)))

(assert (=> b!4434872 call!308560))

(declare-fun lt!1632307 () Unit!83085)

(assert (=> b!4434872 (= lt!1632307 lt!1632312)))

(assert (=> b!4434872 call!308561))

(declare-fun lt!1632305 () Unit!83085)

(declare-fun Unit!83158 () Unit!83085)

(assert (=> b!4434872 (= lt!1632305 Unit!83158)))

(declare-fun b!4434873 () Bool)

(declare-fun res!1835296 () Bool)

(assert (=> b!4434873 (=> (not res!1835296) (not e!2761456))))

(assert (=> b!4434873 (= res!1835296 (forall!9648 (toList!3590 lt!1631951) lambda!156066))))

(assert (= (and d!1345633 c!754761) b!4434872))

(assert (= (and d!1345633 (not c!754761)) b!4434871))

(assert (= (and b!4434871 res!1835295) b!4434869))

(assert (= (or b!4434872 b!4434871) bm!308556))

(assert (= (or b!4434872 b!4434871) bm!308557))

(assert (= (or b!4434872 b!4434871) bm!308555))

(assert (= (and d!1345633 res!1835297) b!4434873))

(assert (= (and b!4434873 res!1835296) b!4434870))

(declare-fun m!5120677 () Bool)

(assert (=> bm!308555 m!5120677))

(declare-fun m!5120679 () Bool)

(assert (=> bm!308557 m!5120679))

(declare-fun m!5120681 () Bool)

(assert (=> b!4434870 m!5120681))

(declare-fun m!5120683 () Bool)

(assert (=> b!4434871 m!5120683))

(declare-fun m!5120685 () Bool)

(assert (=> b!4434871 m!5120685))

(declare-fun m!5120687 () Bool)

(assert (=> b!4434871 m!5120687))

(declare-fun m!5120689 () Bool)

(assert (=> b!4434871 m!5120689))

(declare-fun m!5120691 () Bool)

(assert (=> b!4434871 m!5120691))

(declare-fun m!5120693 () Bool)

(assert (=> b!4434871 m!5120693))

(declare-fun m!5120695 () Bool)

(assert (=> b!4434871 m!5120695))

(assert (=> b!4434871 m!5120693))

(declare-fun m!5120697 () Bool)

(assert (=> b!4434871 m!5120697))

(declare-fun m!5120699 () Bool)

(assert (=> b!4434871 m!5120699))

(assert (=> b!4434871 m!5120695))

(assert (=> b!4434871 m!5120683))

(declare-fun m!5120701 () Bool)

(assert (=> b!4434871 m!5120701))

(declare-fun m!5120703 () Bool)

(assert (=> b!4434873 m!5120703))

(assert (=> b!4434869 m!5120695))

(assert (=> bm!308556 m!5120461))

(declare-fun m!5120705 () Bool)

(assert (=> d!1345633 m!5120705))

(assert (=> d!1345633 m!5120565))

(assert (=> b!4434630 d!1345633))

(declare-fun b!4434878 () Bool)

(declare-fun e!2761459 () Bool)

(declare-fun tp!1333778 () Bool)

(declare-fun tp!1333779 () Bool)

(assert (=> b!4434878 (= e!2761459 (and tp!1333778 tp!1333779))))

(assert (=> b!4434632 (= tp!1333764 e!2761459)))

(assert (= (and b!4434632 ((_ is Cons!49708) (toList!3589 lm!1616))) b!4434878))

(declare-fun e!2761462 () Bool)

(declare-fun b!4434883 () Bool)

(declare-fun tp!1333782 () Bool)

(assert (=> b!4434883 (= e!2761462 (and tp_is_empty!26451 tp_is_empty!26449 tp!1333782))))

(assert (=> b!4434618 (= tp!1333763 e!2761462)))

(assert (= (and b!4434618 ((_ is Cons!49707) (t!356773 newBucket!194))) b!4434883))

(declare-fun b_lambda!144309 () Bool)

(assert (= b_lambda!144307 (or start!433412 b_lambda!144309)))

(declare-fun bs!761163 () Bool)

(declare-fun d!1345635 () Bool)

(assert (= bs!761163 (and d!1345635 start!433412)))

(assert (=> bs!761163 (= (dynLambda!20886 lambda!155964 (tuple2!49585 hash!366 newBucket!194)) (noDuplicateKeys!801 (_2!28086 (tuple2!49585 hash!366 newBucket!194))))))

(declare-fun m!5120707 () Bool)

(assert (=> bs!761163 m!5120707))

(assert (=> b!4434824 d!1345635))

(declare-fun b_lambda!144311 () Bool)

(assert (= b_lambda!144305 (or start!433412 b_lambda!144311)))

(declare-fun bs!761164 () Bool)

(declare-fun d!1345637 () Bool)

(assert (= bs!761164 (and d!1345637 start!433412)))

(assert (=> bs!761164 (= (dynLambda!20886 lambda!155964 (h!55415 (toList!3589 lt!1631945))) (noDuplicateKeys!801 (_2!28086 (h!55415 (toList!3589 lt!1631945)))))))

(declare-fun m!5120709 () Bool)

(assert (=> bs!761164 m!5120709))

(assert (=> b!4434813 d!1345637))

(declare-fun b_lambda!144313 () Bool)

(assert (= b_lambda!144291 (or start!433412 b_lambda!144313)))

(declare-fun bs!761165 () Bool)

(declare-fun d!1345639 () Bool)

(assert (= bs!761165 (and d!1345639 start!433412)))

(assert (=> bs!761165 (= (dynLambda!20886 lambda!155964 (h!55415 (toList!3589 lm!1616))) (noDuplicateKeys!801 (_2!28086 (h!55415 (toList!3589 lm!1616)))))))

(declare-fun m!5120711 () Bool)

(assert (=> bs!761165 m!5120711))

(assert (=> b!4434650 d!1345639))

(check-sat (not d!1345627) (not b!4434809) (not b!4434857) (not d!1345629) tp_is_empty!26449 (not b!4434833) (not d!1345625) (not b!4434870) (not bm!308554) (not b!4434856) (not b!4434831) (not b!4434798) (not d!1345599) (not d!1345597) (not b!4434761) (not b!4434814) (not b!4434762) (not b!4434860) (not b!4434799) (not b!4434859) (not bm!308551) (not d!1345529) (not bs!761163) (not b!4434858) (not d!1345579) (not b!4434760) (not d!1345531) tp_is_empty!26451 (not b!4434804) (not b_lambda!144313) (not b_lambda!144311) (not b!4434869) (not b!4434878) (not b!4434803) (not bm!308544) (not b!4434873) (not d!1345609) (not b!4434864) (not d!1345633) (not d!1345619) (not b!4434820) (not d!1345623) (not b_lambda!144309) (not bs!761165) (not bm!308550) (not b!4434868) (not b!4434794) (not bs!761164) (not b!4434656) (not bm!308556) (not d!1345621) (not d!1345525) (not d!1345535) (not d!1345607) (not d!1345631) (not b!4434764) (not b!4434871) (not b!4434651) (not b!4434883) (not d!1345615) (not bm!308557) (not d!1345613) (not d!1345595) (not d!1345617) (not b!4434863) (not bm!308543) (not d!1345603) (not b!4434867) (not bm!308555) (not b!4434800) (not b!4434819) (not bm!308549) (not b!4434657) (not bm!308545) (not b!4434810) (not d!1345533) (not b!4434865) (not b!4434796) (not b!4434802))
(check-sat)
(get-model)

(declare-fun b!4434895 () Bool)

(declare-fun e!2761468 () Option!10769)

(assert (=> b!4434895 (= e!2761468 None!10768)))

(declare-fun b!4434893 () Bool)

(declare-fun e!2761467 () Option!10769)

(assert (=> b!4434893 (= e!2761467 e!2761468)))

(declare-fun c!754767 () Bool)

(assert (=> b!4434893 (= c!754767 (and ((_ is Cons!49707) (toList!3590 lt!1631963)) (not (= (_1!28085 (h!55414 (toList!3590 lt!1631963))) (_1!28085 lt!1631950)))))))

(declare-fun b!4434892 () Bool)

(assert (=> b!4434892 (= e!2761467 (Some!10768 (_2!28085 (h!55414 (toList!3590 lt!1631963)))))))

(declare-fun d!1345641 () Bool)

(declare-fun c!754766 () Bool)

(assert (=> d!1345641 (= c!754766 (and ((_ is Cons!49707) (toList!3590 lt!1631963)) (= (_1!28085 (h!55414 (toList!3590 lt!1631963))) (_1!28085 lt!1631950))))))

(assert (=> d!1345641 (= (getValueByKey!755 (toList!3590 lt!1631963) (_1!28085 lt!1631950)) e!2761467)))

(declare-fun b!4434894 () Bool)

(assert (=> b!4434894 (= e!2761468 (getValueByKey!755 (t!356773 (toList!3590 lt!1631963)) (_1!28085 lt!1631950)))))

(assert (= (and d!1345641 c!754766) b!4434892))

(assert (= (and d!1345641 (not c!754766)) b!4434893))

(assert (= (and b!4434893 c!754767) b!4434894))

(assert (= (and b!4434893 (not c!754767)) b!4434895))

(declare-fun m!5120713 () Bool)

(assert (=> b!4434894 m!5120713))

(assert (=> b!4434656 d!1345641))

(declare-fun d!1345643 () Bool)

(declare-fun res!1835298 () Bool)

(declare-fun e!2761469 () Bool)

(assert (=> d!1345643 (=> res!1835298 e!2761469)))

(assert (=> d!1345643 (= res!1835298 (not ((_ is Cons!49707) (_2!28086 (h!55415 (toList!3589 lm!1616))))))))

(assert (=> d!1345643 (= (noDuplicateKeys!801 (_2!28086 (h!55415 (toList!3589 lm!1616)))) e!2761469)))

(declare-fun b!4434896 () Bool)

(declare-fun e!2761470 () Bool)

(assert (=> b!4434896 (= e!2761469 e!2761470)))

(declare-fun res!1835299 () Bool)

(assert (=> b!4434896 (=> (not res!1835299) (not e!2761470))))

(assert (=> b!4434896 (= res!1835299 (not (containsKey!1192 (t!356773 (_2!28086 (h!55415 (toList!3589 lm!1616)))) (_1!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lm!1616))))))))))

(declare-fun b!4434897 () Bool)

(assert (=> b!4434897 (= e!2761470 (noDuplicateKeys!801 (t!356773 (_2!28086 (h!55415 (toList!3589 lm!1616))))))))

(assert (= (and d!1345643 (not res!1835298)) b!4434896))

(assert (= (and b!4434896 res!1835299) b!4434897))

(declare-fun m!5120715 () Bool)

(assert (=> b!4434896 m!5120715))

(declare-fun m!5120717 () Bool)

(assert (=> b!4434897 m!5120717))

(assert (=> bs!761165 d!1345643))

(declare-fun d!1345645 () Bool)

(declare-fun res!1835300 () Bool)

(declare-fun e!2761471 () Bool)

(assert (=> d!1345645 (=> res!1835300 e!2761471)))

(assert (=> d!1345645 (= res!1835300 ((_ is Nil!49708) (toList!3589 (+!1170 lm!1616 (tuple2!49585 hash!366 newBucket!194)))))))

(assert (=> d!1345645 (= (forall!9646 (toList!3589 (+!1170 lm!1616 (tuple2!49585 hash!366 newBucket!194))) lambda!155964) e!2761471)))

(declare-fun b!4434898 () Bool)

(declare-fun e!2761472 () Bool)

(assert (=> b!4434898 (= e!2761471 e!2761472)))

(declare-fun res!1835301 () Bool)

(assert (=> b!4434898 (=> (not res!1835301) (not e!2761472))))

(assert (=> b!4434898 (= res!1835301 (dynLambda!20886 lambda!155964 (h!55415 (toList!3589 (+!1170 lm!1616 (tuple2!49585 hash!366 newBucket!194))))))))

(declare-fun b!4434899 () Bool)

(assert (=> b!4434899 (= e!2761472 (forall!9646 (t!356774 (toList!3589 (+!1170 lm!1616 (tuple2!49585 hash!366 newBucket!194)))) lambda!155964))))

(assert (= (and d!1345645 (not res!1835300)) b!4434898))

(assert (= (and b!4434898 res!1835301) b!4434899))

(declare-fun b_lambda!144315 () Bool)

(assert (=> (not b_lambda!144315) (not b!4434898)))

(declare-fun m!5120719 () Bool)

(assert (=> b!4434898 m!5120719))

(declare-fun m!5120721 () Bool)

(assert (=> b!4434899 m!5120721))

(assert (=> d!1345615 d!1345645))

(declare-fun d!1345647 () Bool)

(declare-fun e!2761473 () Bool)

(assert (=> d!1345647 e!2761473))

(declare-fun res!1835303 () Bool)

(assert (=> d!1345647 (=> (not res!1835303) (not e!2761473))))

(declare-fun lt!1632320 () ListLongMap!2239)

(assert (=> d!1345647 (= res!1835303 (contains!12251 lt!1632320 (_1!28086 (tuple2!49585 hash!366 newBucket!194))))))

(declare-fun lt!1632321 () List!49832)

(assert (=> d!1345647 (= lt!1632320 (ListLongMap!2240 lt!1632321))))

(declare-fun lt!1632323 () Unit!83085)

(declare-fun lt!1632322 () Unit!83085)

(assert (=> d!1345647 (= lt!1632323 lt!1632322)))

(assert (=> d!1345647 (= (getValueByKey!756 lt!1632321 (_1!28086 (tuple2!49585 hash!366 newBucket!194))) (Some!10769 (_2!28086 (tuple2!49585 hash!366 newBucket!194))))))

(assert (=> d!1345647 (= lt!1632322 (lemmaContainsTupThenGetReturnValue!489 lt!1632321 (_1!28086 (tuple2!49585 hash!366 newBucket!194)) (_2!28086 (tuple2!49585 hash!366 newBucket!194))))))

(assert (=> d!1345647 (= lt!1632321 (insertStrictlySorted!282 (toList!3589 lm!1616) (_1!28086 (tuple2!49585 hash!366 newBucket!194)) (_2!28086 (tuple2!49585 hash!366 newBucket!194))))))

(assert (=> d!1345647 (= (+!1170 lm!1616 (tuple2!49585 hash!366 newBucket!194)) lt!1632320)))

(declare-fun b!4434900 () Bool)

(declare-fun res!1835302 () Bool)

(assert (=> b!4434900 (=> (not res!1835302) (not e!2761473))))

(assert (=> b!4434900 (= res!1835302 (= (getValueByKey!756 (toList!3589 lt!1632320) (_1!28086 (tuple2!49585 hash!366 newBucket!194))) (Some!10769 (_2!28086 (tuple2!49585 hash!366 newBucket!194)))))))

(declare-fun b!4434901 () Bool)

(assert (=> b!4434901 (= e!2761473 (contains!12256 (toList!3589 lt!1632320) (tuple2!49585 hash!366 newBucket!194)))))

(assert (= (and d!1345647 res!1835303) b!4434900))

(assert (= (and b!4434900 res!1835302) b!4434901))

(declare-fun m!5120723 () Bool)

(assert (=> d!1345647 m!5120723))

(declare-fun m!5120725 () Bool)

(assert (=> d!1345647 m!5120725))

(declare-fun m!5120727 () Bool)

(assert (=> d!1345647 m!5120727))

(declare-fun m!5120729 () Bool)

(assert (=> d!1345647 m!5120729))

(declare-fun m!5120731 () Bool)

(assert (=> b!4434900 m!5120731))

(declare-fun m!5120733 () Bool)

(assert (=> b!4434901 m!5120733))

(assert (=> d!1345615 d!1345647))

(declare-fun d!1345649 () Bool)

(assert (=> d!1345649 (forall!9646 (toList!3589 (+!1170 lm!1616 (tuple2!49585 hash!366 newBucket!194))) lambda!155964)))

(assert (=> d!1345649 true))

(declare-fun _$31!421 () Unit!83085)

(assert (=> d!1345649 (= (choose!28116 lm!1616 lambda!155964 hash!366 newBucket!194) _$31!421)))

(declare-fun bs!761166 () Bool)

(assert (= bs!761166 d!1345649))

(assert (=> bs!761166 m!5120607))

(assert (=> bs!761166 m!5120609))

(assert (=> d!1345615 d!1345649))

(assert (=> d!1345615 d!1345527))

(declare-fun b!4434903 () Bool)

(assert (=> b!4434903 false))

(declare-fun lt!1632325 () Unit!83085)

(declare-fun lt!1632328 () Unit!83085)

(assert (=> b!4434903 (= lt!1632325 lt!1632328)))

(assert (=> b!4434903 (containsKey!1194 (toList!3590 lt!1632239) (_1!28085 lt!1631950))))

(assert (=> b!4434903 (= lt!1632328 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1632239) (_1!28085 lt!1631950)))))

(declare-fun e!2761474 () Unit!83085)

(declare-fun Unit!83159 () Unit!83085)

(assert (=> b!4434903 (= e!2761474 Unit!83159)))

(declare-fun b!4434904 () Bool)

(declare-fun e!2761476 () List!49834)

(assert (=> b!4434904 (= e!2761476 (getKeysList!274 (toList!3590 lt!1632239)))))

(declare-fun b!4434905 () Bool)

(declare-fun e!2761477 () Bool)

(assert (=> b!4434905 (= e!2761477 (contains!12257 (keys!17006 lt!1632239) (_1!28085 lt!1631950)))))

(declare-fun d!1345651 () Bool)

(declare-fun e!2761475 () Bool)

(assert (=> d!1345651 e!2761475))

(declare-fun res!1835305 () Bool)

(assert (=> d!1345651 (=> res!1835305 e!2761475)))

(declare-fun e!2761478 () Bool)

(assert (=> d!1345651 (= res!1835305 e!2761478)))

(declare-fun res!1835306 () Bool)

(assert (=> d!1345651 (=> (not res!1835306) (not e!2761478))))

(declare-fun lt!1632324 () Bool)

(assert (=> d!1345651 (= res!1835306 (not lt!1632324))))

(declare-fun lt!1632327 () Bool)

(assert (=> d!1345651 (= lt!1632324 lt!1632327)))

(declare-fun lt!1632331 () Unit!83085)

(declare-fun e!2761479 () Unit!83085)

(assert (=> d!1345651 (= lt!1632331 e!2761479)))

(declare-fun c!754768 () Bool)

(assert (=> d!1345651 (= c!754768 lt!1632327)))

(assert (=> d!1345651 (= lt!1632327 (containsKey!1194 (toList!3590 lt!1632239) (_1!28085 lt!1631950)))))

(assert (=> d!1345651 (= (contains!12250 lt!1632239 (_1!28085 lt!1631950)) lt!1632324)))

(declare-fun b!4434906 () Bool)

(declare-fun lt!1632330 () Unit!83085)

(assert (=> b!4434906 (= e!2761479 lt!1632330)))

(declare-fun lt!1632329 () Unit!83085)

(assert (=> b!4434906 (= lt!1632329 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1632239) (_1!28085 lt!1631950)))))

(assert (=> b!4434906 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632239) (_1!28085 lt!1631950)))))

(declare-fun lt!1632326 () Unit!83085)

(assert (=> b!4434906 (= lt!1632326 lt!1632329)))

(assert (=> b!4434906 (= lt!1632330 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1632239) (_1!28085 lt!1631950)))))

(declare-fun call!308563 () Bool)

(assert (=> b!4434906 call!308563))

(declare-fun bm!308558 () Bool)

(assert (=> bm!308558 (= call!308563 (contains!12257 e!2761476 (_1!28085 lt!1631950)))))

(declare-fun c!754769 () Bool)

(assert (=> bm!308558 (= c!754769 c!754768)))

(declare-fun b!4434907 () Bool)

(assert (=> b!4434907 (= e!2761475 e!2761477)))

(declare-fun res!1835304 () Bool)

(assert (=> b!4434907 (=> (not res!1835304) (not e!2761477))))

(assert (=> b!4434907 (= res!1835304 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632239) (_1!28085 lt!1631950))))))

(declare-fun b!4434908 () Bool)

(assert (=> b!4434908 (= e!2761479 e!2761474)))

(declare-fun c!754770 () Bool)

(assert (=> b!4434908 (= c!754770 call!308563)))

(declare-fun b!4434909 () Bool)

(declare-fun Unit!83160 () Unit!83085)

(assert (=> b!4434909 (= e!2761474 Unit!83160)))

(declare-fun b!4434910 () Bool)

(assert (=> b!4434910 (= e!2761478 (not (contains!12257 (keys!17006 lt!1632239) (_1!28085 lt!1631950))))))

(declare-fun b!4434911 () Bool)

(assert (=> b!4434911 (= e!2761476 (keys!17006 lt!1632239))))

(assert (= (and d!1345651 c!754768) b!4434906))

(assert (= (and d!1345651 (not c!754768)) b!4434908))

(assert (= (and b!4434908 c!754770) b!4434903))

(assert (= (and b!4434908 (not c!754770)) b!4434909))

(assert (= (or b!4434906 b!4434908) bm!308558))

(assert (= (and bm!308558 c!754769) b!4434904))

(assert (= (and bm!308558 (not c!754769)) b!4434911))

(assert (= (and d!1345651 res!1835306) b!4434910))

(assert (= (and d!1345651 (not res!1835305)) b!4434907))

(assert (= (and b!4434907 res!1835304) b!4434905))

(declare-fun m!5120735 () Bool)

(assert (=> b!4434903 m!5120735))

(declare-fun m!5120737 () Bool)

(assert (=> b!4434903 m!5120737))

(declare-fun m!5120739 () Bool)

(assert (=> b!4434910 m!5120739))

(assert (=> b!4434910 m!5120739))

(declare-fun m!5120741 () Bool)

(assert (=> b!4434910 m!5120741))

(assert (=> d!1345651 m!5120735))

(assert (=> b!4434905 m!5120739))

(assert (=> b!4434905 m!5120739))

(assert (=> b!4434905 m!5120741))

(assert (=> b!4434911 m!5120739))

(declare-fun m!5120743 () Bool)

(assert (=> b!4434906 m!5120743))

(assert (=> b!4434906 m!5120575))

(assert (=> b!4434906 m!5120575))

(declare-fun m!5120745 () Bool)

(assert (=> b!4434906 m!5120745))

(declare-fun m!5120747 () Bool)

(assert (=> b!4434906 m!5120747))

(declare-fun m!5120749 () Bool)

(assert (=> bm!308558 m!5120749))

(assert (=> b!4434907 m!5120575))

(assert (=> b!4434907 m!5120575))

(assert (=> b!4434907 m!5120745))

(declare-fun m!5120751 () Bool)

(assert (=> b!4434904 m!5120751))

(assert (=> d!1345599 d!1345651))

(declare-fun b!4434915 () Bool)

(declare-fun e!2761481 () Option!10769)

(assert (=> b!4434915 (= e!2761481 None!10768)))

(declare-fun b!4434913 () Bool)

(declare-fun e!2761480 () Option!10769)

(assert (=> b!4434913 (= e!2761480 e!2761481)))

(declare-fun c!754772 () Bool)

(assert (=> b!4434913 (= c!754772 (and ((_ is Cons!49707) lt!1632238) (not (= (_1!28085 (h!55414 lt!1632238)) (_1!28085 lt!1631950)))))))

(declare-fun b!4434912 () Bool)

(assert (=> b!4434912 (= e!2761480 (Some!10768 (_2!28085 (h!55414 lt!1632238))))))

(declare-fun d!1345653 () Bool)

(declare-fun c!754771 () Bool)

(assert (=> d!1345653 (= c!754771 (and ((_ is Cons!49707) lt!1632238) (= (_1!28085 (h!55414 lt!1632238)) (_1!28085 lt!1631950))))))

(assert (=> d!1345653 (= (getValueByKey!755 lt!1632238 (_1!28085 lt!1631950)) e!2761480)))

(declare-fun b!4434914 () Bool)

(assert (=> b!4434914 (= e!2761481 (getValueByKey!755 (t!356773 lt!1632238) (_1!28085 lt!1631950)))))

(assert (= (and d!1345653 c!754771) b!4434912))

(assert (= (and d!1345653 (not c!754771)) b!4434913))

(assert (= (and b!4434913 c!754772) b!4434914))

(assert (= (and b!4434913 (not c!754772)) b!4434915))

(declare-fun m!5120753 () Bool)

(assert (=> b!4434914 m!5120753))

(assert (=> d!1345599 d!1345653))

(declare-fun d!1345655 () Bool)

(assert (=> d!1345655 (= (getValueByKey!755 lt!1632238 (_1!28085 lt!1631950)) (Some!10768 (_2!28085 lt!1631950)))))

(declare-fun lt!1632334 () Unit!83085)

(declare-fun choose!28118 (List!49831 K!11075 V!11321) Unit!83085)

(assert (=> d!1345655 (= lt!1632334 (choose!28118 lt!1632238 (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun e!2761484 () Bool)

(assert (=> d!1345655 e!2761484))

(declare-fun res!1835311 () Bool)

(assert (=> d!1345655 (=> (not res!1835311) (not e!2761484))))

(assert (=> d!1345655 (= res!1835311 (invariantList!827 lt!1632238))))

(assert (=> d!1345655 (= (lemmaContainsTupThenGetReturnValue!488 lt!1632238 (_1!28085 lt!1631950) (_2!28085 lt!1631950)) lt!1632334)))

(declare-fun b!4434920 () Bool)

(declare-fun res!1835312 () Bool)

(assert (=> b!4434920 (=> (not res!1835312) (not e!2761484))))

(assert (=> b!4434920 (= res!1835312 (containsKey!1194 lt!1632238 (_1!28085 lt!1631950)))))

(declare-fun b!4434921 () Bool)

(assert (=> b!4434921 (= e!2761484 (contains!12255 lt!1632238 (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950))))))

(assert (= (and d!1345655 res!1835311) b!4434920))

(assert (= (and b!4434920 res!1835312) b!4434921))

(assert (=> d!1345655 m!5120569))

(declare-fun m!5120755 () Bool)

(assert (=> d!1345655 m!5120755))

(declare-fun m!5120757 () Bool)

(assert (=> d!1345655 m!5120757))

(declare-fun m!5120759 () Bool)

(assert (=> b!4434920 m!5120759))

(declare-fun m!5120761 () Bool)

(assert (=> b!4434921 m!5120761))

(assert (=> d!1345599 d!1345655))

(declare-fun b!4434950 () Bool)

(declare-fun e!2761499 () List!49831)

(assert (=> b!4434950 (= e!2761499 Nil!49707)))

(declare-fun b!4434951 () Bool)

(declare-fun res!1835324 () Bool)

(declare-fun e!2761500 () Bool)

(assert (=> b!4434951 (=> (not res!1835324) (not e!2761500))))

(declare-fun lt!1632357 () List!49831)

(assert (=> b!4434951 (= res!1835324 (contains!12255 lt!1632357 (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950))))))

(declare-fun b!4434952 () Bool)

(declare-fun e!2761503 () List!49831)

(declare-fun lt!1632358 () List!49831)

(assert (=> b!4434952 (= e!2761503 lt!1632358)))

(declare-fun call!308572 () List!49831)

(assert (=> b!4434952 (= lt!1632358 call!308572)))

(declare-fun c!754787 () Bool)

(assert (=> b!4434952 (= c!754787 (containsKey!1194 (insertNoDuplicatedKeys!215 (t!356773 (toList!3590 lt!1631951)) (_1!28085 lt!1631950) (_2!28085 lt!1631950)) (_1!28085 (h!55414 (toList!3590 lt!1631951)))))))

(declare-fun lt!1632362 () Unit!83085)

(declare-fun e!2761504 () Unit!83085)

(assert (=> b!4434952 (= lt!1632362 e!2761504)))

(declare-fun b!4434953 () Bool)

(declare-fun c!754783 () Bool)

(assert (=> b!4434953 (= c!754783 ((_ is Cons!49707) (toList!3590 lt!1631951)))))

(declare-fun e!2761502 () List!49831)

(assert (=> b!4434953 (= e!2761502 e!2761503)))

(declare-fun b!4434954 () Bool)

(declare-fun e!2761505 () List!49831)

(assert (=> b!4434954 (= e!2761505 e!2761502)))

(declare-fun res!1835321 () Bool)

(assert (=> b!4434954 (= res!1835321 ((_ is Cons!49707) (toList!3590 lt!1631951)))))

(declare-fun e!2761501 () Bool)

(assert (=> b!4434954 (=> (not res!1835321) (not e!2761501))))

(declare-fun c!754784 () Bool)

(assert (=> b!4434954 (= c!754784 e!2761501)))

(declare-fun b!4434955 () Bool)

(assert (=> b!4434955 false))

(declare-fun lt!1632367 () Unit!83085)

(declare-fun lt!1632365 () Unit!83085)

(assert (=> b!4434955 (= lt!1632367 lt!1632365)))

(assert (=> b!4434955 (containsKey!1194 (t!356773 (toList!3590 lt!1631951)) (_1!28085 (h!55414 (toList!3590 lt!1631951))))))

(assert (=> b!4434955 (= lt!1632365 (lemmaInGetKeysListThenContainsKey!272 (t!356773 (toList!3590 lt!1631951)) (_1!28085 (h!55414 (toList!3590 lt!1631951)))))))

(declare-fun lt!1632363 () Unit!83085)

(declare-fun lt!1632360 () Unit!83085)

(assert (=> b!4434955 (= lt!1632363 lt!1632360)))

(declare-fun call!308575 () List!49834)

(assert (=> b!4434955 (contains!12257 call!308575 (_1!28085 (h!55414 (toList!3590 lt!1631951))))))

(declare-fun lt!1632364 () List!49831)

(assert (=> b!4434955 (= lt!1632360 (lemmaInListThenGetKeysListContains!271 lt!1632364 (_1!28085 (h!55414 (toList!3590 lt!1631951)))))))

(assert (=> b!4434955 (= lt!1632364 (insertNoDuplicatedKeys!215 (t!356773 (toList!3590 lt!1631951)) (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun Unit!83161 () Unit!83085)

(assert (=> b!4434955 (= e!2761504 Unit!83161)))

(declare-fun b!4434956 () Bool)

(declare-fun content!7991 (List!49834) (InoxSet K!11075))

(assert (=> b!4434956 (= e!2761500 (= (content!7991 (getKeysList!274 lt!1632357)) ((_ map or) (content!7991 (getKeysList!274 (toList!3590 lt!1631951))) (store ((as const (Array K!11075 Bool)) false) (_1!28085 lt!1631950) true))))))

(declare-fun b!4434957 () Bool)

(assert (=> b!4434957 (= e!2761499 (insertNoDuplicatedKeys!215 (t!356773 (toList!3590 lt!1631951)) (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun b!4434958 () Bool)

(declare-fun call!308574 () List!49831)

(assert (=> b!4434958 (= e!2761505 call!308574)))

(declare-fun lt!1632361 () List!49834)

(assert (=> b!4434958 (= lt!1632361 call!308575)))

(declare-fun lt!1632366 () Unit!83085)

(declare-fun lemmaSubseqRefl!102 (List!49834) Unit!83085)

(assert (=> b!4434958 (= lt!1632366 (lemmaSubseqRefl!102 lt!1632361))))

(declare-fun subseq!618 (List!49834 List!49834) Bool)

(assert (=> b!4434958 (subseq!618 lt!1632361 lt!1632361)))

(declare-fun lt!1632359 () Unit!83085)

(assert (=> b!4434958 (= lt!1632359 lt!1632366)))

(declare-fun b!4434959 () Bool)

(declare-fun Unit!83162 () Unit!83085)

(assert (=> b!4434959 (= e!2761504 Unit!83162)))

(declare-fun b!4434961 () Bool)

(declare-fun call!308573 () List!49831)

(assert (=> b!4434961 (= e!2761502 call!308573)))

(declare-fun bm!308567 () Bool)

(assert (=> bm!308567 (= call!308572 call!308573)))

(declare-fun c!754785 () Bool)

(assert (=> bm!308567 (= c!754785 c!754783)))

(declare-fun c!754786 () Bool)

(declare-fun bm!308568 () Bool)

(assert (=> bm!308568 (= call!308575 (getKeysList!274 (ite c!754786 (toList!3590 lt!1631951) lt!1632364)))))

(declare-fun b!4434962 () Bool)

(assert (=> b!4434962 (= e!2761501 (not (containsKey!1194 (toList!3590 lt!1631951) (_1!28085 lt!1631950))))))

(declare-fun bm!308569 () Bool)

(assert (=> bm!308569 (= call!308573 call!308574)))

(declare-fun b!4434960 () Bool)

(assert (=> b!4434960 (= e!2761503 call!308572)))

(declare-fun d!1345657 () Bool)

(assert (=> d!1345657 e!2761500))

(declare-fun res!1835323 () Bool)

(assert (=> d!1345657 (=> (not res!1835323) (not e!2761500))))

(assert (=> d!1345657 (= res!1835323 (invariantList!827 lt!1632357))))

(assert (=> d!1345657 (= lt!1632357 e!2761505)))

(assert (=> d!1345657 (= c!754786 (and ((_ is Cons!49707) (toList!3590 lt!1631951)) (= (_1!28085 (h!55414 (toList!3590 lt!1631951))) (_1!28085 lt!1631950))))))

(assert (=> d!1345657 (invariantList!827 (toList!3590 lt!1631951))))

(assert (=> d!1345657 (= (insertNoDuplicatedKeys!215 (toList!3590 lt!1631951) (_1!28085 lt!1631950) (_2!28085 lt!1631950)) lt!1632357)))

(declare-fun bm!308570 () Bool)

(declare-fun $colon$colon!802 (List!49831 tuple2!49582) List!49831)

(assert (=> bm!308570 (= call!308574 ($colon$colon!802 (ite c!754786 (t!356773 (toList!3590 lt!1631951)) (ite c!754784 (toList!3590 lt!1631951) e!2761499)) (ite (or c!754786 c!754784) (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950)) (ite c!754783 (h!55414 (toList!3590 lt!1631951)) (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950))))))))

(declare-fun b!4434963 () Bool)

(declare-fun res!1835322 () Bool)

(assert (=> b!4434963 (=> (not res!1835322) (not e!2761500))))

(assert (=> b!4434963 (= res!1835322 (containsKey!1194 lt!1632357 (_1!28085 lt!1631950)))))

(assert (= (and d!1345657 c!754786) b!4434958))

(assert (= (and d!1345657 (not c!754786)) b!4434954))

(assert (= (and b!4434954 res!1835321) b!4434962))

(assert (= (and b!4434954 c!754784) b!4434961))

(assert (= (and b!4434954 (not c!754784)) b!4434953))

(assert (= (and b!4434953 c!754783) b!4434952))

(assert (= (and b!4434953 (not c!754783)) b!4434960))

(assert (= (and b!4434952 c!754787) b!4434955))

(assert (= (and b!4434952 (not c!754787)) b!4434959))

(assert (= (or b!4434952 b!4434960) bm!308567))

(assert (= (and bm!308567 c!754785) b!4434957))

(assert (= (and bm!308567 (not c!754785)) b!4434950))

(assert (= (or b!4434961 bm!308567) bm!308569))

(assert (= (or b!4434958 b!4434955) bm!308568))

(assert (= (or b!4434958 bm!308569) bm!308570))

(assert (= (and d!1345657 res!1835323) b!4434963))

(assert (= (and b!4434963 res!1835322) b!4434951))

(assert (= (and b!4434951 res!1835324) b!4434956))

(declare-fun m!5120763 () Bool)

(assert (=> bm!308568 m!5120763))

(declare-fun m!5120765 () Bool)

(assert (=> b!4434962 m!5120765))

(declare-fun m!5120767 () Bool)

(assert (=> b!4434955 m!5120767))

(declare-fun m!5120769 () Bool)

(assert (=> b!4434955 m!5120769))

(declare-fun m!5120771 () Bool)

(assert (=> b!4434955 m!5120771))

(declare-fun m!5120773 () Bool)

(assert (=> b!4434955 m!5120773))

(declare-fun m!5120775 () Bool)

(assert (=> b!4434955 m!5120775))

(declare-fun m!5120777 () Bool)

(assert (=> b!4434951 m!5120777))

(declare-fun m!5120779 () Bool)

(assert (=> b!4434956 m!5120779))

(declare-fun m!5120781 () Bool)

(assert (=> b!4434956 m!5120781))

(assert (=> b!4434956 m!5120779))

(declare-fun m!5120783 () Bool)

(assert (=> b!4434956 m!5120783))

(declare-fun m!5120785 () Bool)

(assert (=> b!4434956 m!5120785))

(assert (=> b!4434956 m!5120783))

(declare-fun m!5120787 () Bool)

(assert (=> b!4434956 m!5120787))

(declare-fun m!5120789 () Bool)

(assert (=> d!1345657 m!5120789))

(declare-fun m!5120791 () Bool)

(assert (=> d!1345657 m!5120791))

(declare-fun m!5120793 () Bool)

(assert (=> b!4434958 m!5120793))

(declare-fun m!5120795 () Bool)

(assert (=> b!4434958 m!5120795))

(assert (=> b!4434952 m!5120775))

(assert (=> b!4434952 m!5120775))

(declare-fun m!5120797 () Bool)

(assert (=> b!4434952 m!5120797))

(declare-fun m!5120799 () Bool)

(assert (=> b!4434963 m!5120799))

(assert (=> b!4434957 m!5120775))

(declare-fun m!5120801 () Bool)

(assert (=> bm!308570 m!5120801))

(assert (=> d!1345599 d!1345657))

(declare-fun d!1345659 () Bool)

(declare-fun res!1835325 () Bool)

(declare-fun e!2761506 () Bool)

(assert (=> d!1345659 (=> res!1835325 e!2761506)))

(assert (=> d!1345659 (= res!1835325 ((_ is Nil!49708) (t!356774 (toList!3589 lm!1616))))))

(assert (=> d!1345659 (= (forall!9646 (t!356774 (toList!3589 lm!1616)) lambda!155964) e!2761506)))

(declare-fun b!4434964 () Bool)

(declare-fun e!2761507 () Bool)

(assert (=> b!4434964 (= e!2761506 e!2761507)))

(declare-fun res!1835326 () Bool)

(assert (=> b!4434964 (=> (not res!1835326) (not e!2761507))))

(assert (=> b!4434964 (= res!1835326 (dynLambda!20886 lambda!155964 (h!55415 (t!356774 (toList!3589 lm!1616)))))))

(declare-fun b!4434965 () Bool)

(assert (=> b!4434965 (= e!2761507 (forall!9646 (t!356774 (t!356774 (toList!3589 lm!1616))) lambda!155964))))

(assert (= (and d!1345659 (not res!1835325)) b!4434964))

(assert (= (and b!4434964 res!1835326) b!4434965))

(declare-fun b_lambda!144317 () Bool)

(assert (=> (not b_lambda!144317) (not b!4434964)))

(declare-fun m!5120803 () Bool)

(assert (=> b!4434964 m!5120803))

(declare-fun m!5120805 () Bool)

(assert (=> b!4434965 m!5120805))

(assert (=> b!4434651 d!1345659))

(declare-fun d!1345661 () Bool)

(declare-fun res!1835327 () Bool)

(declare-fun e!2761508 () Bool)

(assert (=> d!1345661 (=> res!1835327 e!2761508)))

(assert (=> d!1345661 (= res!1835327 (not ((_ is Cons!49707) (t!356773 newBucket!194))))))

(assert (=> d!1345661 (= (noDuplicateKeys!801 (t!356773 newBucket!194)) e!2761508)))

(declare-fun b!4434966 () Bool)

(declare-fun e!2761509 () Bool)

(assert (=> b!4434966 (= e!2761508 e!2761509)))

(declare-fun res!1835328 () Bool)

(assert (=> b!4434966 (=> (not res!1835328) (not e!2761509))))

(assert (=> b!4434966 (= res!1835328 (not (containsKey!1192 (t!356773 (t!356773 newBucket!194)) (_1!28085 (h!55414 (t!356773 newBucket!194))))))))

(declare-fun b!4434967 () Bool)

(assert (=> b!4434967 (= e!2761509 (noDuplicateKeys!801 (t!356773 (t!356773 newBucket!194))))))

(assert (= (and d!1345661 (not res!1835327)) b!4434966))

(assert (= (and b!4434966 res!1835328) b!4434967))

(declare-fun m!5120807 () Bool)

(assert (=> b!4434966 m!5120807))

(declare-fun m!5120809 () Bool)

(assert (=> b!4434967 m!5120809))

(assert (=> b!4434810 d!1345661))

(declare-fun d!1345665 () Bool)

(declare-fun res!1835333 () Bool)

(declare-fun e!2761514 () Bool)

(assert (=> d!1345665 (=> res!1835333 e!2761514)))

(assert (=> d!1345665 (= res!1835333 ((_ is Nil!49707) (ite c!754747 (toList!3590 (+!1171 lt!1631951 lt!1631950)) (toList!3590 lt!1632218))))))

(assert (=> d!1345665 (= (forall!9648 (ite c!754747 (toList!3590 (+!1171 lt!1631951 lt!1631950)) (toList!3590 lt!1632218)) (ite c!754747 lambda!156052 lambda!156054)) e!2761514)))

(declare-fun b!4434972 () Bool)

(declare-fun e!2761515 () Bool)

(assert (=> b!4434972 (= e!2761514 e!2761515)))

(declare-fun res!1835334 () Bool)

(assert (=> b!4434972 (=> (not res!1835334) (not e!2761515))))

(declare-fun dynLambda!20887 (Int tuple2!49582) Bool)

(assert (=> b!4434972 (= res!1835334 (dynLambda!20887 (ite c!754747 lambda!156052 lambda!156054) (h!55414 (ite c!754747 (toList!3590 (+!1171 lt!1631951 lt!1631950)) (toList!3590 lt!1632218)))))))

(declare-fun b!4434973 () Bool)

(assert (=> b!4434973 (= e!2761515 (forall!9648 (t!356773 (ite c!754747 (toList!3590 (+!1171 lt!1631951 lt!1631950)) (toList!3590 lt!1632218))) (ite c!754747 lambda!156052 lambda!156054)))))

(assert (= (and d!1345665 (not res!1835333)) b!4434972))

(assert (= (and b!4434972 res!1835334) b!4434973))

(declare-fun b_lambda!144319 () Bool)

(assert (=> (not b_lambda!144319) (not b!4434972)))

(declare-fun m!5120811 () Bool)

(assert (=> b!4434972 m!5120811))

(declare-fun m!5120813 () Bool)

(assert (=> b!4434973 m!5120813))

(assert (=> bm!308549 d!1345665))

(declare-fun b!4434986 () Bool)

(declare-fun e!2761524 () Option!10770)

(assert (=> b!4434986 (= e!2761524 (Some!10769 (_2!28086 (h!55415 (toList!3589 lt!1632248)))))))

(declare-fun d!1345667 () Bool)

(declare-fun c!754792 () Bool)

(assert (=> d!1345667 (= c!754792 (and ((_ is Cons!49708) (toList!3589 lt!1632248)) (= (_1!28086 (h!55415 (toList!3589 lt!1632248))) (_1!28086 lt!1631949))))))

(assert (=> d!1345667 (= (getValueByKey!756 (toList!3589 lt!1632248) (_1!28086 lt!1631949)) e!2761524)))

(declare-fun b!4434989 () Bool)

(declare-fun e!2761525 () Option!10770)

(assert (=> b!4434989 (= e!2761525 None!10769)))

(declare-fun b!4434987 () Bool)

(assert (=> b!4434987 (= e!2761524 e!2761525)))

(declare-fun c!754793 () Bool)

(assert (=> b!4434987 (= c!754793 (and ((_ is Cons!49708) (toList!3589 lt!1632248)) (not (= (_1!28086 (h!55415 (toList!3589 lt!1632248))) (_1!28086 lt!1631949)))))))

(declare-fun b!4434988 () Bool)

(assert (=> b!4434988 (= e!2761525 (getValueByKey!756 (t!356774 (toList!3589 lt!1632248)) (_1!28086 lt!1631949)))))

(assert (= (and d!1345667 c!754792) b!4434986))

(assert (= (and d!1345667 (not c!754792)) b!4434987))

(assert (= (and b!4434987 c!754793) b!4434988))

(assert (= (and b!4434987 (not c!754793)) b!4434989))

(declare-fun m!5120815 () Bool)

(assert (=> b!4434988 m!5120815))

(assert (=> b!4434819 d!1345667))

(declare-fun b!4435029 () Bool)

(assert (=> b!4435029 true))

(declare-fun bs!761170 () Bool)

(declare-fun b!4435031 () Bool)

(assert (= bs!761170 (and b!4435031 b!4435029)))

(declare-fun lambda!156076 () Int)

(declare-fun lambda!156075 () Int)

(assert (=> bs!761170 (= (= (Cons!49707 (h!55414 (toList!3590 lt!1631947)) (t!356773 (toList!3590 lt!1631947))) (t!356773 (toList!3590 lt!1631947))) (= lambda!156076 lambda!156075))))

(assert (=> b!4435031 true))

(declare-fun bs!761171 () Bool)

(declare-fun b!4435027 () Bool)

(assert (= bs!761171 (and b!4435027 b!4435029)))

(declare-fun lambda!156077 () Int)

(assert (=> bs!761171 (= (= (toList!3590 lt!1631947) (t!356773 (toList!3590 lt!1631947))) (= lambda!156077 lambda!156075))))

(declare-fun bs!761172 () Bool)

(assert (= bs!761172 (and b!4435027 b!4435031)))

(assert (=> bs!761172 (= (= (toList!3590 lt!1631947) (Cons!49707 (h!55414 (toList!3590 lt!1631947)) (t!356773 (toList!3590 lt!1631947)))) (= lambda!156077 lambda!156076))))

(assert (=> b!4435027 true))

(declare-fun b!4435026 () Bool)

(declare-fun res!1835349 () Bool)

(declare-fun e!2761546 () Bool)

(assert (=> b!4435026 (=> (not res!1835349) (not e!2761546))))

(declare-fun lt!1632392 () List!49834)

(declare-fun length!194 (List!49834) Int)

(declare-fun length!195 (List!49831) Int)

(assert (=> b!4435026 (= res!1835349 (= (length!194 lt!1632392) (length!195 (toList!3590 lt!1631947))))))

(declare-fun res!1835347 () Bool)

(assert (=> b!4435027 (=> (not res!1835347) (not e!2761546))))

(declare-fun forall!9649 (List!49834 Int) Bool)

(assert (=> b!4435027 (= res!1835347 (forall!9649 lt!1632392 lambda!156077))))

(declare-fun b!4435028 () Bool)

(declare-fun e!2761544 () Unit!83085)

(declare-fun Unit!83163 () Unit!83085)

(assert (=> b!4435028 (= e!2761544 Unit!83163)))

(assert (=> b!4435029 false))

(declare-fun lt!1632395 () Unit!83085)

(declare-fun forallContained!2126 (List!49834 Int K!11075) Unit!83085)

(assert (=> b!4435029 (= lt!1632395 (forallContained!2126 (getKeysList!274 (t!356773 (toList!3590 lt!1631947))) lambda!156075 (_1!28085 (h!55414 (toList!3590 lt!1631947)))))))

(declare-fun Unit!83164 () Unit!83085)

(assert (=> b!4435029 (= e!2761544 Unit!83164)))

(declare-fun b!4435030 () Bool)

(assert (=> b!4435030 false))

(declare-fun e!2761547 () Unit!83085)

(declare-fun Unit!83165 () Unit!83085)

(assert (=> b!4435030 (= e!2761547 Unit!83165)))

(declare-fun d!1345669 () Bool)

(assert (=> d!1345669 e!2761546))

(declare-fun res!1835348 () Bool)

(assert (=> d!1345669 (=> (not res!1835348) (not e!2761546))))

(declare-fun noDuplicate!669 (List!49834) Bool)

(assert (=> d!1345669 (= res!1835348 (noDuplicate!669 lt!1632392))))

(declare-fun e!2761545 () List!49834)

(assert (=> d!1345669 (= lt!1632392 e!2761545)))

(declare-fun c!754809 () Bool)

(assert (=> d!1345669 (= c!754809 ((_ is Cons!49707) (toList!3590 lt!1631947)))))

(assert (=> d!1345669 (invariantList!827 (toList!3590 lt!1631947))))

(assert (=> d!1345669 (= (getKeysList!274 (toList!3590 lt!1631947)) lt!1632392)))

(assert (=> b!4435031 (= e!2761545 (Cons!49710 (_1!28085 (h!55414 (toList!3590 lt!1631947))) (getKeysList!274 (t!356773 (toList!3590 lt!1631947)))))))

(declare-fun c!754810 () Bool)

(assert (=> b!4435031 (= c!754810 (containsKey!1194 (t!356773 (toList!3590 lt!1631947)) (_1!28085 (h!55414 (toList!3590 lt!1631947)))))))

(declare-fun lt!1632396 () Unit!83085)

(assert (=> b!4435031 (= lt!1632396 e!2761547)))

(declare-fun c!754808 () Bool)

(assert (=> b!4435031 (= c!754808 (contains!12257 (getKeysList!274 (t!356773 (toList!3590 lt!1631947))) (_1!28085 (h!55414 (toList!3590 lt!1631947)))))))

(declare-fun lt!1632393 () Unit!83085)

(assert (=> b!4435031 (= lt!1632393 e!2761544)))

(declare-fun lt!1632394 () List!49834)

(assert (=> b!4435031 (= lt!1632394 (getKeysList!274 (t!356773 (toList!3590 lt!1631947))))))

(declare-fun lt!1632391 () Unit!83085)

(declare-fun lemmaForallContainsAddHeadPreserves!91 (List!49831 List!49834 tuple2!49582) Unit!83085)

(assert (=> b!4435031 (= lt!1632391 (lemmaForallContainsAddHeadPreserves!91 (t!356773 (toList!3590 lt!1631947)) lt!1632394 (h!55414 (toList!3590 lt!1631947))))))

(assert (=> b!4435031 (forall!9649 lt!1632394 lambda!156076)))

(declare-fun lt!1632397 () Unit!83085)

(assert (=> b!4435031 (= lt!1632397 lt!1632391)))

(declare-fun b!4435032 () Bool)

(declare-fun Unit!83166 () Unit!83085)

(assert (=> b!4435032 (= e!2761547 Unit!83166)))

(declare-fun b!4435033 () Bool)

(assert (=> b!4435033 (= e!2761545 Nil!49710)))

(declare-fun b!4435034 () Bool)

(declare-fun lambda!156078 () Int)

(declare-fun map!10867 (List!49831 Int) List!49834)

(assert (=> b!4435034 (= e!2761546 (= (content!7991 lt!1632392) (content!7991 (map!10867 (toList!3590 lt!1631947) lambda!156078))))))

(assert (= (and d!1345669 c!754809) b!4435031))

(assert (= (and d!1345669 (not c!754809)) b!4435033))

(assert (= (and b!4435031 c!754810) b!4435030))

(assert (= (and b!4435031 (not c!754810)) b!4435032))

(assert (= (and b!4435031 c!754808) b!4435029))

(assert (= (and b!4435031 (not c!754808)) b!4435028))

(assert (= (and d!1345669 res!1835348) b!4435026))

(assert (= (and b!4435026 res!1835349) b!4435027))

(assert (= (and b!4435027 res!1835347) b!4435034))

(declare-fun m!5120835 () Bool)

(assert (=> b!4435034 m!5120835))

(declare-fun m!5120837 () Bool)

(assert (=> b!4435034 m!5120837))

(assert (=> b!4435034 m!5120837))

(declare-fun m!5120839 () Bool)

(assert (=> b!4435034 m!5120839))

(declare-fun m!5120841 () Bool)

(assert (=> b!4435026 m!5120841))

(declare-fun m!5120843 () Bool)

(assert (=> b!4435026 m!5120843))

(declare-fun m!5120845 () Bool)

(assert (=> b!4435029 m!5120845))

(assert (=> b!4435029 m!5120845))

(declare-fun m!5120847 () Bool)

(assert (=> b!4435029 m!5120847))

(declare-fun m!5120849 () Bool)

(assert (=> b!4435027 m!5120849))

(declare-fun m!5120851 () Bool)

(assert (=> b!4435031 m!5120851))

(declare-fun m!5120853 () Bool)

(assert (=> b!4435031 m!5120853))

(assert (=> b!4435031 m!5120845))

(declare-fun m!5120855 () Bool)

(assert (=> b!4435031 m!5120855))

(declare-fun m!5120857 () Bool)

(assert (=> b!4435031 m!5120857))

(assert (=> b!4435031 m!5120845))

(declare-fun m!5120859 () Bool)

(assert (=> d!1345669 m!5120859))

(declare-fun m!5120861 () Bool)

(assert (=> d!1345669 m!5120861))

(assert (=> b!4434857 d!1345669))

(declare-fun d!1345683 () Bool)

(declare-fun lt!1632400 () Bool)

(declare-fun content!7993 (List!49832) (InoxSet tuple2!49584))

(assert (=> d!1345683 (= lt!1632400 (select (content!7993 (toList!3589 lt!1632248)) lt!1631949))))

(declare-fun e!2761560 () Bool)

(assert (=> d!1345683 (= lt!1632400 e!2761560)))

(declare-fun res!1835359 () Bool)

(assert (=> d!1345683 (=> (not res!1835359) (not e!2761560))))

(assert (=> d!1345683 (= res!1835359 ((_ is Cons!49708) (toList!3589 lt!1632248)))))

(assert (=> d!1345683 (= (contains!12256 (toList!3589 lt!1632248) lt!1631949) lt!1632400)))

(declare-fun b!4435053 () Bool)

(declare-fun e!2761561 () Bool)

(assert (=> b!4435053 (= e!2761560 e!2761561)))

(declare-fun res!1835358 () Bool)

(assert (=> b!4435053 (=> res!1835358 e!2761561)))

(assert (=> b!4435053 (= res!1835358 (= (h!55415 (toList!3589 lt!1632248)) lt!1631949))))

(declare-fun b!4435054 () Bool)

(assert (=> b!4435054 (= e!2761561 (contains!12256 (t!356774 (toList!3589 lt!1632248)) lt!1631949))))

(assert (= (and d!1345683 res!1835359) b!4435053))

(assert (= (and b!4435053 (not res!1835358)) b!4435054))

(declare-fun m!5120865 () Bool)

(assert (=> d!1345683 m!5120865))

(declare-fun m!5120867 () Bool)

(assert (=> d!1345683 m!5120867))

(declare-fun m!5120869 () Bool)

(assert (=> b!4435054 m!5120869))

(assert (=> b!4434820 d!1345683))

(declare-fun d!1345687 () Bool)

(declare-fun lt!1632403 () Bool)

(assert (=> d!1345687 (= lt!1632403 (select (content!7991 (keys!17006 lt!1631947)) key!3717))))

(declare-fun e!2761570 () Bool)

(assert (=> d!1345687 (= lt!1632403 e!2761570)))

(declare-fun res!1835368 () Bool)

(assert (=> d!1345687 (=> (not res!1835368) (not e!2761570))))

(assert (=> d!1345687 (= res!1835368 ((_ is Cons!49710) (keys!17006 lt!1631947)))))

(assert (=> d!1345687 (= (contains!12257 (keys!17006 lt!1631947) key!3717) lt!1632403)))

(declare-fun b!4435063 () Bool)

(declare-fun e!2761571 () Bool)

(assert (=> b!4435063 (= e!2761570 e!2761571)))

(declare-fun res!1835369 () Bool)

(assert (=> b!4435063 (=> res!1835369 e!2761571)))

(assert (=> b!4435063 (= res!1835369 (= (h!55419 (keys!17006 lt!1631947)) key!3717))))

(declare-fun b!4435064 () Bool)

(assert (=> b!4435064 (= e!2761571 (contains!12257 (t!356776 (keys!17006 lt!1631947)) key!3717))))

(assert (= (and d!1345687 res!1835368) b!4435063))

(assert (= (and b!4435063 (not res!1835369)) b!4435064))

(assert (=> d!1345687 m!5120627))

(declare-fun m!5120879 () Bool)

(assert (=> d!1345687 m!5120879))

(declare-fun m!5120881 () Bool)

(assert (=> d!1345687 m!5120881))

(declare-fun m!5120883 () Bool)

(assert (=> b!4435064 m!5120883))

(assert (=> b!4434858 d!1345687))

(declare-fun bs!761173 () Bool)

(declare-fun b!4435076 () Bool)

(assert (= bs!761173 (and b!4435076 b!4435029)))

(declare-fun lambda!156083 () Int)

(assert (=> bs!761173 (= (= (toList!3590 lt!1631947) (t!356773 (toList!3590 lt!1631947))) (= lambda!156083 lambda!156075))))

(declare-fun bs!761174 () Bool)

(assert (= bs!761174 (and b!4435076 b!4435031)))

(assert (=> bs!761174 (= (= (toList!3590 lt!1631947) (Cons!49707 (h!55414 (toList!3590 lt!1631947)) (t!356773 (toList!3590 lt!1631947)))) (= lambda!156083 lambda!156076))))

(declare-fun bs!761175 () Bool)

(assert (= bs!761175 (and b!4435076 b!4435027)))

(assert (=> bs!761175 (= lambda!156083 lambda!156077)))

(assert (=> b!4435076 true))

(declare-fun bs!761176 () Bool)

(declare-fun b!4435077 () Bool)

(assert (= bs!761176 (and b!4435077 b!4435034)))

(declare-fun lambda!156084 () Int)

(assert (=> bs!761176 (= lambda!156084 lambda!156078)))

(declare-fun d!1345693 () Bool)

(declare-fun e!2761578 () Bool)

(assert (=> d!1345693 e!2761578))

(declare-fun res!1835381 () Bool)

(assert (=> d!1345693 (=> (not res!1835381) (not e!2761578))))

(declare-fun lt!1632406 () List!49834)

(assert (=> d!1345693 (= res!1835381 (noDuplicate!669 lt!1632406))))

(assert (=> d!1345693 (= lt!1632406 (getKeysList!274 (toList!3590 lt!1631947)))))

(assert (=> d!1345693 (= (keys!17006 lt!1631947) lt!1632406)))

(declare-fun b!4435075 () Bool)

(declare-fun res!1835380 () Bool)

(assert (=> b!4435075 (=> (not res!1835380) (not e!2761578))))

(assert (=> b!4435075 (= res!1835380 (= (length!194 lt!1632406) (length!195 (toList!3590 lt!1631947))))))

(declare-fun res!1835382 () Bool)

(assert (=> b!4435076 (=> (not res!1835382) (not e!2761578))))

(assert (=> b!4435076 (= res!1835382 (forall!9649 lt!1632406 lambda!156083))))

(assert (=> b!4435077 (= e!2761578 (= (content!7991 lt!1632406) (content!7991 (map!10867 (toList!3590 lt!1631947) lambda!156084))))))

(assert (= (and d!1345693 res!1835381) b!4435075))

(assert (= (and b!4435075 res!1835380) b!4435076))

(assert (= (and b!4435076 res!1835382) b!4435077))

(declare-fun m!5120893 () Bool)

(assert (=> d!1345693 m!5120893))

(assert (=> d!1345693 m!5120641))

(declare-fun m!5120895 () Bool)

(assert (=> b!4435075 m!5120895))

(assert (=> b!4435075 m!5120843))

(declare-fun m!5120897 () Bool)

(assert (=> b!4435076 m!5120897))

(declare-fun m!5120899 () Bool)

(assert (=> b!4435077 m!5120899))

(declare-fun m!5120901 () Bool)

(assert (=> b!4435077 m!5120901))

(assert (=> b!4435077 m!5120901))

(declare-fun m!5120903 () Bool)

(assert (=> b!4435077 m!5120903))

(assert (=> b!4434858 d!1345693))

(declare-fun d!1345699 () Bool)

(declare-fun res!1835393 () Bool)

(declare-fun e!2761585 () Bool)

(assert (=> d!1345699 (=> res!1835393 e!2761585)))

(assert (=> d!1345699 (= res!1835393 (and ((_ is Cons!49708) (toList!3589 lm!1616)) (= (_1!28086 (h!55415 (toList!3589 lm!1616))) hash!366)))))

(assert (=> d!1345699 (= (containsKey!1193 (toList!3589 lm!1616) hash!366) e!2761585)))

(declare-fun b!4435090 () Bool)

(declare-fun e!2761586 () Bool)

(assert (=> b!4435090 (= e!2761585 e!2761586)))

(declare-fun res!1835394 () Bool)

(assert (=> b!4435090 (=> (not res!1835394) (not e!2761586))))

(assert (=> b!4435090 (= res!1835394 (and (or (not ((_ is Cons!49708) (toList!3589 lm!1616))) (bvsle (_1!28086 (h!55415 (toList!3589 lm!1616))) hash!366)) ((_ is Cons!49708) (toList!3589 lm!1616)) (bvslt (_1!28086 (h!55415 (toList!3589 lm!1616))) hash!366)))))

(declare-fun b!4435091 () Bool)

(assert (=> b!4435091 (= e!2761586 (containsKey!1193 (t!356774 (toList!3589 lm!1616)) hash!366))))

(assert (= (and d!1345699 (not res!1835393)) b!4435090))

(assert (= (and b!4435090 res!1835394) b!4435091))

(declare-fun m!5120905 () Bool)

(assert (=> b!4435091 m!5120905))

(assert (=> d!1345617 d!1345699))

(declare-fun b!4435092 () Bool)

(assert (=> b!4435092 false))

(declare-fun lt!1632410 () Unit!83085)

(declare-fun lt!1632413 () Unit!83085)

(assert (=> b!4435092 (= lt!1632410 lt!1632413)))

(assert (=> b!4435092 (containsKey!1194 (toList!3590 lt!1632235) (_1!28085 (h!55414 lt!1631939)))))

(assert (=> b!4435092 (= lt!1632413 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1632235) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun e!2761587 () Unit!83085)

(declare-fun Unit!83167 () Unit!83085)

(assert (=> b!4435092 (= e!2761587 Unit!83167)))

(declare-fun b!4435093 () Bool)

(declare-fun e!2761589 () List!49834)

(assert (=> b!4435093 (= e!2761589 (getKeysList!274 (toList!3590 lt!1632235)))))

(declare-fun b!4435094 () Bool)

(declare-fun e!2761590 () Bool)

(assert (=> b!4435094 (= e!2761590 (contains!12257 (keys!17006 lt!1632235) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun d!1345701 () Bool)

(declare-fun e!2761588 () Bool)

(assert (=> d!1345701 e!2761588))

(declare-fun res!1835396 () Bool)

(assert (=> d!1345701 (=> res!1835396 e!2761588)))

(declare-fun e!2761591 () Bool)

(assert (=> d!1345701 (= res!1835396 e!2761591)))

(declare-fun res!1835397 () Bool)

(assert (=> d!1345701 (=> (not res!1835397) (not e!2761591))))

(declare-fun lt!1632409 () Bool)

(assert (=> d!1345701 (= res!1835397 (not lt!1632409))))

(declare-fun lt!1632412 () Bool)

(assert (=> d!1345701 (= lt!1632409 lt!1632412)))

(declare-fun lt!1632416 () Unit!83085)

(declare-fun e!2761592 () Unit!83085)

(assert (=> d!1345701 (= lt!1632416 e!2761592)))

(declare-fun c!754815 () Bool)

(assert (=> d!1345701 (= c!754815 lt!1632412)))

(assert (=> d!1345701 (= lt!1632412 (containsKey!1194 (toList!3590 lt!1632235) (_1!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345701 (= (contains!12250 lt!1632235 (_1!28085 (h!55414 lt!1631939))) lt!1632409)))

(declare-fun b!4435095 () Bool)

(declare-fun lt!1632415 () Unit!83085)

(assert (=> b!4435095 (= e!2761592 lt!1632415)))

(declare-fun lt!1632414 () Unit!83085)

(assert (=> b!4435095 (= lt!1632414 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1632235) (_1!28085 (h!55414 lt!1631939))))))

(assert (=> b!4435095 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632235) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun lt!1632411 () Unit!83085)

(assert (=> b!4435095 (= lt!1632411 lt!1632414)))

(assert (=> b!4435095 (= lt!1632415 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1632235) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun call!308576 () Bool)

(assert (=> b!4435095 call!308576))

(declare-fun bm!308571 () Bool)

(assert (=> bm!308571 (= call!308576 (contains!12257 e!2761589 (_1!28085 (h!55414 lt!1631939))))))

(declare-fun c!754816 () Bool)

(assert (=> bm!308571 (= c!754816 c!754815)))

(declare-fun b!4435096 () Bool)

(assert (=> b!4435096 (= e!2761588 e!2761590)))

(declare-fun res!1835395 () Bool)

(assert (=> b!4435096 (=> (not res!1835395) (not e!2761590))))

(assert (=> b!4435096 (= res!1835395 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632235) (_1!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435097 () Bool)

(assert (=> b!4435097 (= e!2761592 e!2761587)))

(declare-fun c!754817 () Bool)

(assert (=> b!4435097 (= c!754817 call!308576)))

(declare-fun b!4435098 () Bool)

(declare-fun Unit!83168 () Unit!83085)

(assert (=> b!4435098 (= e!2761587 Unit!83168)))

(declare-fun b!4435099 () Bool)

(assert (=> b!4435099 (= e!2761591 (not (contains!12257 (keys!17006 lt!1632235) (_1!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435100 () Bool)

(assert (=> b!4435100 (= e!2761589 (keys!17006 lt!1632235))))

(assert (= (and d!1345701 c!754815) b!4435095))

(assert (= (and d!1345701 (not c!754815)) b!4435097))

(assert (= (and b!4435097 c!754817) b!4435092))

(assert (= (and b!4435097 (not c!754817)) b!4435098))

(assert (= (or b!4435095 b!4435097) bm!308571))

(assert (= (and bm!308571 c!754816) b!4435093))

(assert (= (and bm!308571 (not c!754816)) b!4435100))

(assert (= (and d!1345701 res!1835397) b!4435099))

(assert (= (and d!1345701 (not res!1835396)) b!4435096))

(assert (= (and b!4435096 res!1835395) b!4435094))

(declare-fun m!5120907 () Bool)

(assert (=> b!4435092 m!5120907))

(declare-fun m!5120909 () Bool)

(assert (=> b!4435092 m!5120909))

(declare-fun m!5120911 () Bool)

(assert (=> b!4435099 m!5120911))

(assert (=> b!4435099 m!5120911))

(declare-fun m!5120913 () Bool)

(assert (=> b!4435099 m!5120913))

(assert (=> d!1345701 m!5120907))

(assert (=> b!4435094 m!5120911))

(assert (=> b!4435094 m!5120911))

(assert (=> b!4435094 m!5120913))

(assert (=> b!4435100 m!5120911))

(declare-fun m!5120915 () Bool)

(assert (=> b!4435095 m!5120915))

(declare-fun m!5120917 () Bool)

(assert (=> b!4435095 m!5120917))

(assert (=> b!4435095 m!5120917))

(declare-fun m!5120919 () Bool)

(assert (=> b!4435095 m!5120919))

(declare-fun m!5120921 () Bool)

(assert (=> b!4435095 m!5120921))

(declare-fun m!5120923 () Bool)

(assert (=> bm!308571 m!5120923))

(assert (=> b!4435096 m!5120917))

(assert (=> b!4435096 m!5120917))

(assert (=> b!4435096 m!5120919))

(declare-fun m!5120925 () Bool)

(assert (=> b!4435093 m!5120925))

(assert (=> b!4434800 d!1345701))

(declare-fun bs!761177 () Bool)

(declare-fun b!4435104 () Bool)

(assert (= bs!761177 (and b!4435104 b!4434800)))

(declare-fun lambda!156089 () Int)

(assert (=> bs!761177 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156089 lambda!156053))))

(declare-fun bs!761178 () Bool)

(assert (= bs!761178 (and b!4435104 d!1345535)))

(assert (=> bs!761178 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632174) (= lambda!156089 lambda!156041))))

(declare-fun bs!761179 () Bool)

(assert (= bs!761179 (and b!4435104 d!1345619)))

(assert (=> bs!761179 (not (= lambda!156089 lambda!156061))))

(declare-fun bs!761180 () Bool)

(assert (= bs!761180 (and b!4435104 b!4434871)))

(assert (=> bs!761180 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1631951) (= lambda!156089 lambda!156064))))

(declare-fun bs!761181 () Bool)

(assert (= bs!761181 (and b!4435104 b!4434762)))

(assert (=> bs!761181 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1631951) (= lambda!156089 lambda!156039))))

(assert (=> bs!761181 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632187) (= lambda!156089 lambda!156040))))

(declare-fun bs!761182 () Bool)

(assert (= bs!761182 (and b!4435104 b!4434801)))

(assert (=> bs!761182 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156089 lambda!156052))))

(declare-fun bs!761183 () Bool)

(assert (= bs!761183 (and b!4435104 b!4434763)))

(assert (=> bs!761183 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1631951) (= lambda!156089 lambda!156037))))

(declare-fun bs!761184 () Bool)

(assert (= bs!761184 (and b!4435104 d!1345633)))

(assert (=> bs!761184 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632306) (= lambda!156089 lambda!156066))))

(declare-fun bs!761185 () Bool)

(assert (= bs!761185 (and b!4435104 d!1345597)))

(assert (=> bs!761185 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632222) (= lambda!156089 lambda!156055))))

(declare-fun bs!761186 () Bool)

(assert (= bs!761186 (and b!4435104 b!4434872)))

(assert (=> bs!761186 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1631951) (= lambda!156089 lambda!156063))))

(assert (=> bs!761180 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632319) (= lambda!156089 lambda!156065))))

(assert (=> bs!761177 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632235) (= lambda!156089 lambda!156054))))

(assert (=> b!4435104 true))

(declare-fun bs!761187 () Bool)

(declare-fun b!4435103 () Bool)

(assert (= bs!761187 (and b!4435103 b!4434800)))

(declare-fun lambda!156092 () Int)

(assert (=> bs!761187 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156092 lambda!156053))))

(declare-fun bs!761188 () Bool)

(assert (= bs!761188 (and b!4435103 d!1345535)))

(assert (=> bs!761188 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632174) (= lambda!156092 lambda!156041))))

(declare-fun bs!761189 () Bool)

(assert (= bs!761189 (and b!4435103 d!1345619)))

(assert (=> bs!761189 (not (= lambda!156092 lambda!156061))))

(declare-fun bs!761190 () Bool)

(assert (= bs!761190 (and b!4435103 b!4434871)))

(assert (=> bs!761190 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1631951) (= lambda!156092 lambda!156064))))

(declare-fun bs!761191 () Bool)

(assert (= bs!761191 (and b!4435103 b!4434762)))

(assert (=> bs!761191 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1631951) (= lambda!156092 lambda!156039))))

(assert (=> bs!761191 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632187) (= lambda!156092 lambda!156040))))

(declare-fun bs!761192 () Bool)

(assert (= bs!761192 (and b!4435103 b!4434801)))

(assert (=> bs!761192 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156092 lambda!156052))))

(declare-fun bs!761193 () Bool)

(assert (= bs!761193 (and b!4435103 b!4434763)))

(assert (=> bs!761193 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1631951) (= lambda!156092 lambda!156037))))

(declare-fun bs!761194 () Bool)

(assert (= bs!761194 (and b!4435103 d!1345633)))

(assert (=> bs!761194 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632306) (= lambda!156092 lambda!156066))))

(declare-fun bs!761195 () Bool)

(assert (= bs!761195 (and b!4435103 d!1345597)))

(assert (=> bs!761195 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632222) (= lambda!156092 lambda!156055))))

(declare-fun bs!761196 () Bool)

(assert (= bs!761196 (and b!4435103 b!4435104)))

(assert (=> bs!761196 (= lambda!156092 lambda!156089)))

(declare-fun bs!761197 () Bool)

(assert (= bs!761197 (and b!4435103 b!4434872)))

(assert (=> bs!761197 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1631951) (= lambda!156092 lambda!156063))))

(assert (=> bs!761190 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632319) (= lambda!156092 lambda!156065))))

(assert (=> bs!761187 (= (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632235) (= lambda!156092 lambda!156054))))

(assert (=> b!4435103 true))

(declare-fun lt!1632437 () ListMap!2833)

(declare-fun lambda!156093 () Int)

(assert (=> bs!761187 (= (= lt!1632437 (+!1171 lt!1631951 lt!1631950)) (= lambda!156093 lambda!156053))))

(assert (=> bs!761188 (= (= lt!1632437 lt!1632174) (= lambda!156093 lambda!156041))))

(assert (=> bs!761189 (not (= lambda!156093 lambda!156061))))

(assert (=> bs!761190 (= (= lt!1632437 lt!1631951) (= lambda!156093 lambda!156064))))

(assert (=> bs!761191 (= (= lt!1632437 lt!1631951) (= lambda!156093 lambda!156039))))

(assert (=> bs!761191 (= (= lt!1632437 lt!1632187) (= lambda!156093 lambda!156040))))

(assert (=> bs!761192 (= (= lt!1632437 (+!1171 lt!1631951 lt!1631950)) (= lambda!156093 lambda!156052))))

(assert (=> bs!761194 (= (= lt!1632437 lt!1632306) (= lambda!156093 lambda!156066))))

(assert (=> bs!761195 (= (= lt!1632437 lt!1632222) (= lambda!156093 lambda!156055))))

(assert (=> bs!761196 (= (= lt!1632437 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156093 lambda!156089))))

(assert (=> bs!761197 (= (= lt!1632437 lt!1631951) (= lambda!156093 lambda!156063))))

(assert (=> bs!761190 (= (= lt!1632437 lt!1632319) (= lambda!156093 lambda!156065))))

(assert (=> bs!761187 (= (= lt!1632437 lt!1632235) (= lambda!156093 lambda!156054))))

(assert (=> bs!761193 (= (= lt!1632437 lt!1631951) (= lambda!156093 lambda!156037))))

(assert (=> b!4435103 (= (= lt!1632437 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156093 lambda!156092))))

(assert (=> b!4435103 true))

(declare-fun bs!761198 () Bool)

(declare-fun d!1345703 () Bool)

(assert (= bs!761198 (and d!1345703 b!4435103)))

(declare-fun lambda!156094 () Int)

(declare-fun lt!1632424 () ListMap!2833)

(assert (=> bs!761198 (= (= lt!1632424 lt!1632437) (= lambda!156094 lambda!156093))))

(declare-fun bs!761199 () Bool)

(assert (= bs!761199 (and d!1345703 b!4434800)))

(assert (=> bs!761199 (= (= lt!1632424 (+!1171 lt!1631951 lt!1631950)) (= lambda!156094 lambda!156053))))

(declare-fun bs!761200 () Bool)

(assert (= bs!761200 (and d!1345703 d!1345535)))

(assert (=> bs!761200 (= (= lt!1632424 lt!1632174) (= lambda!156094 lambda!156041))))

(declare-fun bs!761201 () Bool)

(assert (= bs!761201 (and d!1345703 d!1345619)))

(assert (=> bs!761201 (not (= lambda!156094 lambda!156061))))

(declare-fun bs!761202 () Bool)

(assert (= bs!761202 (and d!1345703 b!4434871)))

(assert (=> bs!761202 (= (= lt!1632424 lt!1631951) (= lambda!156094 lambda!156064))))

(declare-fun bs!761203 () Bool)

(assert (= bs!761203 (and d!1345703 b!4434762)))

(assert (=> bs!761203 (= (= lt!1632424 lt!1631951) (= lambda!156094 lambda!156039))))

(assert (=> bs!761203 (= (= lt!1632424 lt!1632187) (= lambda!156094 lambda!156040))))

(declare-fun bs!761204 () Bool)

(assert (= bs!761204 (and d!1345703 b!4434801)))

(assert (=> bs!761204 (= (= lt!1632424 (+!1171 lt!1631951 lt!1631950)) (= lambda!156094 lambda!156052))))

(declare-fun bs!761205 () Bool)

(assert (= bs!761205 (and d!1345703 d!1345633)))

(assert (=> bs!761205 (= (= lt!1632424 lt!1632306) (= lambda!156094 lambda!156066))))

(declare-fun bs!761206 () Bool)

(assert (= bs!761206 (and d!1345703 d!1345597)))

(assert (=> bs!761206 (= (= lt!1632424 lt!1632222) (= lambda!156094 lambda!156055))))

(declare-fun bs!761207 () Bool)

(assert (= bs!761207 (and d!1345703 b!4435104)))

(assert (=> bs!761207 (= (= lt!1632424 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156094 lambda!156089))))

(declare-fun bs!761208 () Bool)

(assert (= bs!761208 (and d!1345703 b!4434872)))

(assert (=> bs!761208 (= (= lt!1632424 lt!1631951) (= lambda!156094 lambda!156063))))

(assert (=> bs!761202 (= (= lt!1632424 lt!1632319) (= lambda!156094 lambda!156065))))

(assert (=> bs!761199 (= (= lt!1632424 lt!1632235) (= lambda!156094 lambda!156054))))

(declare-fun bs!761209 () Bool)

(assert (= bs!761209 (and d!1345703 b!4434763)))

(assert (=> bs!761209 (= (= lt!1632424 lt!1631951) (= lambda!156094 lambda!156037))))

(assert (=> bs!761198 (= (= lt!1632424 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156094 lambda!156092))))

(assert (=> d!1345703 true))

(declare-fun b!4435101 () Bool)

(declare-fun e!2761594 () Bool)

(assert (=> b!4435101 (= e!2761594 (forall!9648 (toList!3590 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) lambda!156093))))

(declare-fun bm!308572 () Bool)

(declare-fun lt!1632420 () ListMap!2833)

(declare-fun c!754818 () Bool)

(declare-fun call!308578 () Bool)

(assert (=> bm!308572 (= call!308578 (forall!9648 (ite c!754818 (toList!3590 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (toList!3590 lt!1632420)) (ite c!754818 lambda!156089 lambda!156093)))))

(declare-fun call!308579 () Unit!83085)

(declare-fun bm!308573 () Bool)

(assert (=> bm!308573 (= call!308579 (lemmaContainsAllItsOwnKeys!195 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))))))

(declare-fun b!4435102 () Bool)

(declare-fun e!2761595 () Bool)

(assert (=> b!4435102 (= e!2761595 (invariantList!827 (toList!3590 lt!1632424)))))

(assert (=> d!1345703 e!2761595))

(declare-fun res!1835400 () Bool)

(assert (=> d!1345703 (=> (not res!1835400) (not e!2761595))))

(assert (=> d!1345703 (= res!1835400 (forall!9648 (t!356773 lt!1631939) lambda!156094))))

(declare-fun e!2761593 () ListMap!2833)

(assert (=> d!1345703 (= lt!1632424 e!2761593)))

(assert (=> d!1345703 (= c!754818 ((_ is Nil!49707) (t!356773 lt!1631939)))))

(assert (=> d!1345703 (noDuplicateKeys!801 (t!356773 lt!1631939))))

(assert (=> d!1345703 (= (addToMapMapFromBucket!426 (t!356773 lt!1631939) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) lt!1632424)))

(assert (=> b!4435103 (= e!2761593 lt!1632437)))

(assert (=> b!4435103 (= lt!1632420 (+!1171 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) (h!55414 (t!356773 lt!1631939))))))

(assert (=> b!4435103 (= lt!1632437 (addToMapMapFromBucket!426 (t!356773 (t!356773 lt!1631939)) (+!1171 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) (h!55414 (t!356773 lt!1631939)))))))

(declare-fun lt!1632419 () Unit!83085)

(assert (=> b!4435103 (= lt!1632419 call!308579)))

(declare-fun call!308577 () Bool)

(assert (=> b!4435103 call!308577))

(declare-fun lt!1632432 () Unit!83085)

(assert (=> b!4435103 (= lt!1632432 lt!1632419)))

(assert (=> b!4435103 (forall!9648 (toList!3590 lt!1632420) lambda!156093)))

(declare-fun lt!1632417 () Unit!83085)

(declare-fun Unit!83178 () Unit!83085)

(assert (=> b!4435103 (= lt!1632417 Unit!83178)))

(assert (=> b!4435103 (forall!9648 (t!356773 (t!356773 lt!1631939)) lambda!156093)))

(declare-fun lt!1632435 () Unit!83085)

(declare-fun Unit!83179 () Unit!83085)

(assert (=> b!4435103 (= lt!1632435 Unit!83179)))

(declare-fun lt!1632429 () Unit!83085)

(declare-fun Unit!83181 () Unit!83085)

(assert (=> b!4435103 (= lt!1632429 Unit!83181)))

(declare-fun lt!1632422 () Unit!83085)

(assert (=> b!4435103 (= lt!1632422 (forallContained!2125 (toList!3590 lt!1632420) lambda!156093 (h!55414 (t!356773 lt!1631939))))))

(assert (=> b!4435103 (contains!12250 lt!1632420 (_1!28085 (h!55414 (t!356773 lt!1631939))))))

(declare-fun lt!1632431 () Unit!83085)

(declare-fun Unit!83182 () Unit!83085)

(assert (=> b!4435103 (= lt!1632431 Unit!83182)))

(assert (=> b!4435103 (contains!12250 lt!1632437 (_1!28085 (h!55414 (t!356773 lt!1631939))))))

(declare-fun lt!1632426 () Unit!83085)

(declare-fun Unit!83184 () Unit!83085)

(assert (=> b!4435103 (= lt!1632426 Unit!83184)))

(assert (=> b!4435103 (forall!9648 (t!356773 lt!1631939) lambda!156093)))

(declare-fun lt!1632421 () Unit!83085)

(declare-fun Unit!83185 () Unit!83085)

(assert (=> b!4435103 (= lt!1632421 Unit!83185)))

(assert (=> b!4435103 call!308578))

(declare-fun lt!1632427 () Unit!83085)

(declare-fun Unit!83186 () Unit!83085)

(assert (=> b!4435103 (= lt!1632427 Unit!83186)))

(declare-fun lt!1632434 () Unit!83085)

(declare-fun Unit!83187 () Unit!83085)

(assert (=> b!4435103 (= lt!1632434 Unit!83187)))

(declare-fun lt!1632428 () Unit!83085)

(assert (=> b!4435103 (= lt!1632428 (addForallContainsKeyThenBeforeAdding!195 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632437 (_1!28085 (h!55414 (t!356773 lt!1631939))) (_2!28085 (h!55414 (t!356773 lt!1631939)))))))

(assert (=> b!4435103 (forall!9648 (toList!3590 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) lambda!156093)))

(declare-fun lt!1632436 () Unit!83085)

(assert (=> b!4435103 (= lt!1632436 lt!1632428)))

(assert (=> b!4435103 (forall!9648 (toList!3590 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) lambda!156093)))

(declare-fun lt!1632418 () Unit!83085)

(declare-fun Unit!83188 () Unit!83085)

(assert (=> b!4435103 (= lt!1632418 Unit!83188)))

(declare-fun res!1835398 () Bool)

(assert (=> b!4435103 (= res!1835398 (forall!9648 (t!356773 lt!1631939) lambda!156093))))

(assert (=> b!4435103 (=> (not res!1835398) (not e!2761594))))

(assert (=> b!4435103 e!2761594))

(declare-fun lt!1632433 () Unit!83085)

(declare-fun Unit!83189 () Unit!83085)

(assert (=> b!4435103 (= lt!1632433 Unit!83189)))

(declare-fun bm!308574 () Bool)

(assert (=> bm!308574 (= call!308577 (forall!9648 (toList!3590 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (ite c!754818 lambda!156089 lambda!156092)))))

(assert (=> b!4435104 (= e!2761593 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)))))

(declare-fun lt!1632430 () Unit!83085)

(assert (=> b!4435104 (= lt!1632430 call!308579)))

(assert (=> b!4435104 call!308577))

(declare-fun lt!1632425 () Unit!83085)

(assert (=> b!4435104 (= lt!1632425 lt!1632430)))

(assert (=> b!4435104 call!308578))

(declare-fun lt!1632423 () Unit!83085)

(declare-fun Unit!83190 () Unit!83085)

(assert (=> b!4435104 (= lt!1632423 Unit!83190)))

(declare-fun b!4435105 () Bool)

(declare-fun res!1835399 () Bool)

(assert (=> b!4435105 (=> (not res!1835399) (not e!2761595))))

(assert (=> b!4435105 (= res!1835399 (forall!9648 (toList!3590 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) lambda!156094))))

(assert (= (and d!1345703 c!754818) b!4435104))

(assert (= (and d!1345703 (not c!754818)) b!4435103))

(assert (= (and b!4435103 res!1835398) b!4435101))

(assert (= (or b!4435104 b!4435103) bm!308573))

(assert (= (or b!4435104 b!4435103) bm!308574))

(assert (= (or b!4435104 b!4435103) bm!308572))

(assert (= (and d!1345703 res!1835400) b!4435105))

(assert (= (and b!4435105 res!1835399) b!4435102))

(declare-fun m!5120947 () Bool)

(assert (=> bm!308572 m!5120947))

(declare-fun m!5120949 () Bool)

(assert (=> bm!308574 m!5120949))

(declare-fun m!5120951 () Bool)

(assert (=> b!4435102 m!5120951))

(declare-fun m!5120953 () Bool)

(assert (=> b!4435103 m!5120953))

(declare-fun m!5120955 () Bool)

(assert (=> b!4435103 m!5120955))

(assert (=> b!4435103 m!5120539))

(declare-fun m!5120957 () Bool)

(assert (=> b!4435103 m!5120957))

(declare-fun m!5120959 () Bool)

(assert (=> b!4435103 m!5120959))

(declare-fun m!5120961 () Bool)

(assert (=> b!4435103 m!5120961))

(declare-fun m!5120963 () Bool)

(assert (=> b!4435103 m!5120963))

(declare-fun m!5120965 () Bool)

(assert (=> b!4435103 m!5120965))

(assert (=> b!4435103 m!5120963))

(declare-fun m!5120967 () Bool)

(assert (=> b!4435103 m!5120967))

(declare-fun m!5120969 () Bool)

(assert (=> b!4435103 m!5120969))

(assert (=> b!4435103 m!5120965))

(assert (=> b!4435103 m!5120539))

(assert (=> b!4435103 m!5120953))

(declare-fun m!5120971 () Bool)

(assert (=> b!4435103 m!5120971))

(declare-fun m!5120973 () Bool)

(assert (=> b!4435105 m!5120973))

(assert (=> b!4435101 m!5120965))

(assert (=> bm!308573 m!5120539))

(declare-fun m!5120975 () Bool)

(assert (=> bm!308573 m!5120975))

(declare-fun m!5120977 () Bool)

(assert (=> d!1345703 m!5120977))

(declare-fun m!5120979 () Bool)

(assert (=> d!1345703 m!5120979))

(assert (=> b!4434800 d!1345703))

(declare-fun d!1345711 () Bool)

(declare-fun e!2761608 () Bool)

(assert (=> d!1345711 e!2761608))

(declare-fun res!1835416 () Bool)

(assert (=> d!1345711 (=> (not res!1835416) (not e!2761608))))

(declare-fun lt!1632463 () ListMap!2833)

(assert (=> d!1345711 (= res!1835416 (contains!12250 lt!1632463 (_1!28085 (h!55414 lt!1631939))))))

(declare-fun lt!1632462 () List!49831)

(assert (=> d!1345711 (= lt!1632463 (ListMap!2834 lt!1632462))))

(declare-fun lt!1632461 () Unit!83085)

(declare-fun lt!1632460 () Unit!83085)

(assert (=> d!1345711 (= lt!1632461 lt!1632460)))

(assert (=> d!1345711 (= (getValueByKey!755 lt!1632462 (_1!28085 (h!55414 lt!1631939))) (Some!10768 (_2!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345711 (= lt!1632460 (lemmaContainsTupThenGetReturnValue!488 lt!1632462 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345711 (= lt!1632462 (insertNoDuplicatedKeys!215 (toList!3590 (+!1171 lt!1631951 lt!1631950)) (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345711 (= (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939)) lt!1632463)))

(declare-fun b!4435124 () Bool)

(declare-fun res!1835415 () Bool)

(assert (=> b!4435124 (=> (not res!1835415) (not e!2761608))))

(assert (=> b!4435124 (= res!1835415 (= (getValueByKey!755 (toList!3590 lt!1632463) (_1!28085 (h!55414 lt!1631939))) (Some!10768 (_2!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435125 () Bool)

(assert (=> b!4435125 (= e!2761608 (contains!12255 (toList!3590 lt!1632463) (h!55414 lt!1631939)))))

(assert (= (and d!1345711 res!1835416) b!4435124))

(assert (= (and b!4435124 res!1835415) b!4435125))

(declare-fun m!5120981 () Bool)

(assert (=> d!1345711 m!5120981))

(declare-fun m!5120983 () Bool)

(assert (=> d!1345711 m!5120983))

(declare-fun m!5120985 () Bool)

(assert (=> d!1345711 m!5120985))

(declare-fun m!5120987 () Bool)

(assert (=> d!1345711 m!5120987))

(declare-fun m!5120989 () Bool)

(assert (=> b!4435124 m!5120989))

(declare-fun m!5120991 () Bool)

(assert (=> b!4435125 m!5120991))

(assert (=> b!4434800 d!1345711))

(declare-fun d!1345713 () Bool)

(declare-fun res!1835417 () Bool)

(declare-fun e!2761609 () Bool)

(assert (=> d!1345713 (=> res!1835417 e!2761609)))

(assert (=> d!1345713 (= res!1835417 ((_ is Nil!49707) (toList!3590 (+!1171 lt!1631951 lt!1631950))))))

(assert (=> d!1345713 (= (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) lambda!156054) e!2761609)))

(declare-fun b!4435126 () Bool)

(declare-fun e!2761610 () Bool)

(assert (=> b!4435126 (= e!2761609 e!2761610)))

(declare-fun res!1835418 () Bool)

(assert (=> b!4435126 (=> (not res!1835418) (not e!2761610))))

(assert (=> b!4435126 (= res!1835418 (dynLambda!20887 lambda!156054 (h!55414 (toList!3590 (+!1171 lt!1631951 lt!1631950)))))))

(declare-fun b!4435127 () Bool)

(assert (=> b!4435127 (= e!2761610 (forall!9648 (t!356773 (toList!3590 (+!1171 lt!1631951 lt!1631950))) lambda!156054))))

(assert (= (and d!1345713 (not res!1835417)) b!4435126))

(assert (= (and b!4435126 res!1835418) b!4435127))

(declare-fun b_lambda!144327 () Bool)

(assert (=> (not b_lambda!144327) (not b!4435126)))

(declare-fun m!5120993 () Bool)

(assert (=> b!4435126 m!5120993))

(declare-fun m!5120995 () Bool)

(assert (=> b!4435127 m!5120995))

(assert (=> b!4434800 d!1345713))

(declare-fun b!4435128 () Bool)

(assert (=> b!4435128 false))

(declare-fun lt!1632465 () Unit!83085)

(declare-fun lt!1632468 () Unit!83085)

(assert (=> b!4435128 (= lt!1632465 lt!1632468)))

(assert (=> b!4435128 (containsKey!1194 (toList!3590 lt!1632218) (_1!28085 (h!55414 lt!1631939)))))

(assert (=> b!4435128 (= lt!1632468 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1632218) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun e!2761611 () Unit!83085)

(declare-fun Unit!83193 () Unit!83085)

(assert (=> b!4435128 (= e!2761611 Unit!83193)))

(declare-fun b!4435129 () Bool)

(declare-fun e!2761613 () List!49834)

(assert (=> b!4435129 (= e!2761613 (getKeysList!274 (toList!3590 lt!1632218)))))

(declare-fun b!4435130 () Bool)

(declare-fun e!2761614 () Bool)

(assert (=> b!4435130 (= e!2761614 (contains!12257 (keys!17006 lt!1632218) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun d!1345715 () Bool)

(declare-fun e!2761612 () Bool)

(assert (=> d!1345715 e!2761612))

(declare-fun res!1835420 () Bool)

(assert (=> d!1345715 (=> res!1835420 e!2761612)))

(declare-fun e!2761615 () Bool)

(assert (=> d!1345715 (= res!1835420 e!2761615)))

(declare-fun res!1835421 () Bool)

(assert (=> d!1345715 (=> (not res!1835421) (not e!2761615))))

(declare-fun lt!1632464 () Bool)

(assert (=> d!1345715 (= res!1835421 (not lt!1632464))))

(declare-fun lt!1632467 () Bool)

(assert (=> d!1345715 (= lt!1632464 lt!1632467)))

(declare-fun lt!1632471 () Unit!83085)

(declare-fun e!2761616 () Unit!83085)

(assert (=> d!1345715 (= lt!1632471 e!2761616)))

(declare-fun c!754820 () Bool)

(assert (=> d!1345715 (= c!754820 lt!1632467)))

(assert (=> d!1345715 (= lt!1632467 (containsKey!1194 (toList!3590 lt!1632218) (_1!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345715 (= (contains!12250 lt!1632218 (_1!28085 (h!55414 lt!1631939))) lt!1632464)))

(declare-fun b!4435131 () Bool)

(declare-fun lt!1632470 () Unit!83085)

(assert (=> b!4435131 (= e!2761616 lt!1632470)))

(declare-fun lt!1632469 () Unit!83085)

(assert (=> b!4435131 (= lt!1632469 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1632218) (_1!28085 (h!55414 lt!1631939))))))

(assert (=> b!4435131 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632218) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun lt!1632466 () Unit!83085)

(assert (=> b!4435131 (= lt!1632466 lt!1632469)))

(assert (=> b!4435131 (= lt!1632470 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1632218) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun call!308583 () Bool)

(assert (=> b!4435131 call!308583))

(declare-fun bm!308578 () Bool)

(assert (=> bm!308578 (= call!308583 (contains!12257 e!2761613 (_1!28085 (h!55414 lt!1631939))))))

(declare-fun c!754821 () Bool)

(assert (=> bm!308578 (= c!754821 c!754820)))

(declare-fun b!4435132 () Bool)

(assert (=> b!4435132 (= e!2761612 e!2761614)))

(declare-fun res!1835419 () Bool)

(assert (=> b!4435132 (=> (not res!1835419) (not e!2761614))))

(assert (=> b!4435132 (= res!1835419 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632218) (_1!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435133 () Bool)

(assert (=> b!4435133 (= e!2761616 e!2761611)))

(declare-fun c!754822 () Bool)

(assert (=> b!4435133 (= c!754822 call!308583)))

(declare-fun b!4435134 () Bool)

(declare-fun Unit!83194 () Unit!83085)

(assert (=> b!4435134 (= e!2761611 Unit!83194)))

(declare-fun b!4435135 () Bool)

(assert (=> b!4435135 (= e!2761615 (not (contains!12257 (keys!17006 lt!1632218) (_1!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435136 () Bool)

(assert (=> b!4435136 (= e!2761613 (keys!17006 lt!1632218))))

(assert (= (and d!1345715 c!754820) b!4435131))

(assert (= (and d!1345715 (not c!754820)) b!4435133))

(assert (= (and b!4435133 c!754822) b!4435128))

(assert (= (and b!4435133 (not c!754822)) b!4435134))

(assert (= (or b!4435131 b!4435133) bm!308578))

(assert (= (and bm!308578 c!754821) b!4435129))

(assert (= (and bm!308578 (not c!754821)) b!4435136))

(assert (= (and d!1345715 res!1835421) b!4435135))

(assert (= (and d!1345715 (not res!1835420)) b!4435132))

(assert (= (and b!4435132 res!1835419) b!4435130))

(declare-fun m!5120997 () Bool)

(assert (=> b!4435128 m!5120997))

(declare-fun m!5120999 () Bool)

(assert (=> b!4435128 m!5120999))

(declare-fun m!5121001 () Bool)

(assert (=> b!4435135 m!5121001))

(assert (=> b!4435135 m!5121001))

(declare-fun m!5121003 () Bool)

(assert (=> b!4435135 m!5121003))

(assert (=> d!1345715 m!5120997))

(assert (=> b!4435130 m!5121001))

(assert (=> b!4435130 m!5121001))

(assert (=> b!4435130 m!5121003))

(assert (=> b!4435136 m!5121001))

(declare-fun m!5121005 () Bool)

(assert (=> b!4435131 m!5121005))

(declare-fun m!5121007 () Bool)

(assert (=> b!4435131 m!5121007))

(assert (=> b!4435131 m!5121007))

(declare-fun m!5121009 () Bool)

(assert (=> b!4435131 m!5121009))

(declare-fun m!5121011 () Bool)

(assert (=> b!4435131 m!5121011))

(declare-fun m!5121013 () Bool)

(assert (=> bm!308578 m!5121013))

(assert (=> b!4435132 m!5121007))

(assert (=> b!4435132 m!5121007))

(assert (=> b!4435132 m!5121009))

(declare-fun m!5121015 () Bool)

(assert (=> b!4435129 m!5121015))

(assert (=> b!4434800 d!1345715))

(declare-fun d!1345717 () Bool)

(declare-fun res!1835422 () Bool)

(declare-fun e!2761617 () Bool)

(assert (=> d!1345717 (=> res!1835422 e!2761617)))

(assert (=> d!1345717 (= res!1835422 ((_ is Nil!49707) (t!356773 lt!1631939)))))

(assert (=> d!1345717 (= (forall!9648 (t!356773 lt!1631939) lambda!156054) e!2761617)))

(declare-fun b!4435137 () Bool)

(declare-fun e!2761618 () Bool)

(assert (=> b!4435137 (= e!2761617 e!2761618)))

(declare-fun res!1835423 () Bool)

(assert (=> b!4435137 (=> (not res!1835423) (not e!2761618))))

(assert (=> b!4435137 (= res!1835423 (dynLambda!20887 lambda!156054 (h!55414 (t!356773 lt!1631939))))))

(declare-fun b!4435138 () Bool)

(assert (=> b!4435138 (= e!2761618 (forall!9648 (t!356773 (t!356773 lt!1631939)) lambda!156054))))

(assert (= (and d!1345717 (not res!1835422)) b!4435137))

(assert (= (and b!4435137 res!1835423) b!4435138))

(declare-fun b_lambda!144329 () Bool)

(assert (=> (not b_lambda!144329) (not b!4435137)))

(declare-fun m!5121017 () Bool)

(assert (=> b!4435137 m!5121017))

(declare-fun m!5121019 () Bool)

(assert (=> b!4435138 m!5121019))

(assert (=> b!4434800 d!1345717))

(declare-fun d!1345719 () Bool)

(declare-fun res!1835424 () Bool)

(declare-fun e!2761619 () Bool)

(assert (=> d!1345719 (=> res!1835424 e!2761619)))

(assert (=> d!1345719 (= res!1835424 ((_ is Nil!49707) (toList!3590 lt!1632218)))))

(assert (=> d!1345719 (= (forall!9648 (toList!3590 lt!1632218) lambda!156054) e!2761619)))

(declare-fun b!4435139 () Bool)

(declare-fun e!2761620 () Bool)

(assert (=> b!4435139 (= e!2761619 e!2761620)))

(declare-fun res!1835425 () Bool)

(assert (=> b!4435139 (=> (not res!1835425) (not e!2761620))))

(assert (=> b!4435139 (= res!1835425 (dynLambda!20887 lambda!156054 (h!55414 (toList!3590 lt!1632218))))))

(declare-fun b!4435140 () Bool)

(assert (=> b!4435140 (= e!2761620 (forall!9648 (t!356773 (toList!3590 lt!1632218)) lambda!156054))))

(assert (= (and d!1345719 (not res!1835424)) b!4435139))

(assert (= (and b!4435139 res!1835425) b!4435140))

(declare-fun b_lambda!144331 () Bool)

(assert (=> (not b_lambda!144331) (not b!4435139)))

(declare-fun m!5121021 () Bool)

(assert (=> b!4435139 m!5121021))

(declare-fun m!5121023 () Bool)

(assert (=> b!4435140 m!5121023))

(assert (=> b!4434800 d!1345719))

(declare-fun d!1345721 () Bool)

(declare-fun res!1835426 () Bool)

(declare-fun e!2761621 () Bool)

(assert (=> d!1345721 (=> res!1835426 e!2761621)))

(assert (=> d!1345721 (= res!1835426 ((_ is Nil!49707) lt!1631939))))

(assert (=> d!1345721 (= (forall!9648 lt!1631939 lambda!156054) e!2761621)))

(declare-fun b!4435141 () Bool)

(declare-fun e!2761622 () Bool)

(assert (=> b!4435141 (= e!2761621 e!2761622)))

(declare-fun res!1835427 () Bool)

(assert (=> b!4435141 (=> (not res!1835427) (not e!2761622))))

(assert (=> b!4435141 (= res!1835427 (dynLambda!20887 lambda!156054 (h!55414 lt!1631939)))))

(declare-fun b!4435142 () Bool)

(assert (=> b!4435142 (= e!2761622 (forall!9648 (t!356773 lt!1631939) lambda!156054))))

(assert (= (and d!1345721 (not res!1835426)) b!4435141))

(assert (= (and b!4435141 res!1835427) b!4435142))

(declare-fun b_lambda!144333 () Bool)

(assert (=> (not b_lambda!144333) (not b!4435141)))

(declare-fun m!5121025 () Bool)

(assert (=> b!4435141 m!5121025))

(assert (=> b!4435142 m!5120555))

(assert (=> b!4434800 d!1345721))

(declare-fun bs!761243 () Bool)

(declare-fun d!1345723 () Bool)

(assert (= bs!761243 (and d!1345723 b!4435103)))

(declare-fun lambda!156103 () Int)

(assert (=> bs!761243 (= (= lt!1632235 lt!1632437) (= lambda!156103 lambda!156093))))

(declare-fun bs!761244 () Bool)

(assert (= bs!761244 (and d!1345723 b!4434800)))

(assert (=> bs!761244 (= (= lt!1632235 (+!1171 lt!1631951 lt!1631950)) (= lambda!156103 lambda!156053))))

(declare-fun bs!761245 () Bool)

(assert (= bs!761245 (and d!1345723 d!1345535)))

(assert (=> bs!761245 (= (= lt!1632235 lt!1632174) (= lambda!156103 lambda!156041))))

(declare-fun bs!761246 () Bool)

(assert (= bs!761246 (and d!1345723 d!1345619)))

(assert (=> bs!761246 (not (= lambda!156103 lambda!156061))))

(declare-fun bs!761247 () Bool)

(assert (= bs!761247 (and d!1345723 b!4434871)))

(assert (=> bs!761247 (= (= lt!1632235 lt!1631951) (= lambda!156103 lambda!156064))))

(declare-fun bs!761248 () Bool)

(assert (= bs!761248 (and d!1345723 b!4434762)))

(assert (=> bs!761248 (= (= lt!1632235 lt!1631951) (= lambda!156103 lambda!156039))))

(assert (=> bs!761248 (= (= lt!1632235 lt!1632187) (= lambda!156103 lambda!156040))))

(declare-fun bs!761249 () Bool)

(assert (= bs!761249 (and d!1345723 b!4434801)))

(assert (=> bs!761249 (= (= lt!1632235 (+!1171 lt!1631951 lt!1631950)) (= lambda!156103 lambda!156052))))

(declare-fun bs!761250 () Bool)

(assert (= bs!761250 (and d!1345723 d!1345633)))

(assert (=> bs!761250 (= (= lt!1632235 lt!1632306) (= lambda!156103 lambda!156066))))

(declare-fun bs!761251 () Bool)

(assert (= bs!761251 (and d!1345723 d!1345597)))

(assert (=> bs!761251 (= (= lt!1632235 lt!1632222) (= lambda!156103 lambda!156055))))

(declare-fun bs!761252 () Bool)

(assert (= bs!761252 (and d!1345723 d!1345703)))

(assert (=> bs!761252 (= (= lt!1632235 lt!1632424) (= lambda!156103 lambda!156094))))

(declare-fun bs!761253 () Bool)

(assert (= bs!761253 (and d!1345723 b!4435104)))

(assert (=> bs!761253 (= (= lt!1632235 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156103 lambda!156089))))

(declare-fun bs!761254 () Bool)

(assert (= bs!761254 (and d!1345723 b!4434872)))

(assert (=> bs!761254 (= (= lt!1632235 lt!1631951) (= lambda!156103 lambda!156063))))

(assert (=> bs!761247 (= (= lt!1632235 lt!1632319) (= lambda!156103 lambda!156065))))

(assert (=> bs!761244 (= lambda!156103 lambda!156054)))

(declare-fun bs!761255 () Bool)

(assert (= bs!761255 (and d!1345723 b!4434763)))

(assert (=> bs!761255 (= (= lt!1632235 lt!1631951) (= lambda!156103 lambda!156037))))

(assert (=> bs!761243 (= (= lt!1632235 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156103 lambda!156092))))

(assert (=> d!1345723 true))

(assert (=> d!1345723 (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) lambda!156103)))

(declare-fun lt!1632474 () Unit!83085)

(declare-fun choose!28122 (ListMap!2833 ListMap!2833 K!11075 V!11321) Unit!83085)

(assert (=> d!1345723 (= lt!1632474 (choose!28122 (+!1171 lt!1631951 lt!1631950) lt!1632235 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345723 (forall!9648 (toList!3590 (+!1171 (+!1171 lt!1631951 lt!1631950) (tuple2!49583 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))) lambda!156103)))

(assert (=> d!1345723 (= (addForallContainsKeyThenBeforeAdding!195 (+!1171 lt!1631951 lt!1631950) lt!1632235 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))) lt!1632474)))

(declare-fun bs!761256 () Bool)

(assert (= bs!761256 d!1345723))

(declare-fun m!5121027 () Bool)

(assert (=> bs!761256 m!5121027))

(assert (=> bs!761256 m!5120189))

(declare-fun m!5121029 () Bool)

(assert (=> bs!761256 m!5121029))

(assert (=> bs!761256 m!5120189))

(declare-fun m!5121031 () Bool)

(assert (=> bs!761256 m!5121031))

(declare-fun m!5121033 () Bool)

(assert (=> bs!761256 m!5121033))

(assert (=> b!4434800 d!1345723))

(declare-fun d!1345725 () Bool)

(assert (=> d!1345725 (dynLambda!20887 lambda!156054 (h!55414 lt!1631939))))

(declare-fun lt!1632485 () Unit!83085)

(declare-fun choose!28123 (List!49831 Int tuple2!49582) Unit!83085)

(assert (=> d!1345725 (= lt!1632485 (choose!28123 (toList!3590 lt!1632218) lambda!156054 (h!55414 lt!1631939)))))

(declare-fun e!2761631 () Bool)

(assert (=> d!1345725 e!2761631))

(declare-fun res!1835433 () Bool)

(assert (=> d!1345725 (=> (not res!1835433) (not e!2761631))))

(assert (=> d!1345725 (= res!1835433 (forall!9648 (toList!3590 lt!1632218) lambda!156054))))

(assert (=> d!1345725 (= (forallContained!2125 (toList!3590 lt!1632218) lambda!156054 (h!55414 lt!1631939)) lt!1632485)))

(declare-fun b!4435155 () Bool)

(assert (=> b!4435155 (= e!2761631 (contains!12255 (toList!3590 lt!1632218) (h!55414 lt!1631939)))))

(assert (= (and d!1345725 res!1835433) b!4435155))

(declare-fun b_lambda!144335 () Bool)

(assert (=> (not b_lambda!144335) (not d!1345725)))

(assert (=> d!1345725 m!5121025))

(declare-fun m!5121065 () Bool)

(assert (=> d!1345725 m!5121065))

(assert (=> d!1345725 m!5120545))

(declare-fun m!5121067 () Bool)

(assert (=> b!4435155 m!5121067))

(assert (=> b!4434800 d!1345725))

(declare-fun d!1345729 () Bool)

(declare-fun lt!1632488 () Bool)

(assert (=> d!1345729 (= lt!1632488 (select (content!7990 (toList!3590 lt!1632239)) lt!1631950))))

(declare-fun e!2761638 () Bool)

(assert (=> d!1345729 (= lt!1632488 e!2761638)))

(declare-fun res!1835439 () Bool)

(assert (=> d!1345729 (=> (not res!1835439) (not e!2761638))))

(assert (=> d!1345729 (= res!1835439 ((_ is Cons!49707) (toList!3590 lt!1632239)))))

(assert (=> d!1345729 (= (contains!12255 (toList!3590 lt!1632239) lt!1631950) lt!1632488)))

(declare-fun b!4435164 () Bool)

(declare-fun e!2761639 () Bool)

(assert (=> b!4435164 (= e!2761638 e!2761639)))

(declare-fun res!1835438 () Bool)

(assert (=> b!4435164 (=> res!1835438 e!2761639)))

(assert (=> b!4435164 (= res!1835438 (= (h!55414 (toList!3590 lt!1632239)) lt!1631950))))

(declare-fun b!4435165 () Bool)

(assert (=> b!4435165 (= e!2761639 (contains!12255 (t!356773 (toList!3590 lt!1632239)) lt!1631950))))

(assert (= (and d!1345729 res!1835439) b!4435164))

(assert (= (and b!4435164 (not res!1835438)) b!4435165))

(declare-fun m!5121089 () Bool)

(assert (=> d!1345729 m!5121089))

(declare-fun m!5121091 () Bool)

(assert (=> d!1345729 m!5121091))

(declare-fun m!5121093 () Bool)

(assert (=> b!4435165 m!5121093))

(assert (=> b!4434804 d!1345729))

(declare-fun d!1345735 () Bool)

(declare-fun res!1835440 () Bool)

(declare-fun e!2761640 () Bool)

(assert (=> d!1345735 (=> res!1835440 e!2761640)))

(assert (=> d!1345735 (= res!1835440 ((_ is Nil!49707) (ite c!754761 (toList!3590 lt!1631951) (toList!3590 lt!1632302))))))

(assert (=> d!1345735 (= (forall!9648 (ite c!754761 (toList!3590 lt!1631951) (toList!3590 lt!1632302)) (ite c!754761 lambda!156063 lambda!156065)) e!2761640)))

(declare-fun b!4435166 () Bool)

(declare-fun e!2761641 () Bool)

(assert (=> b!4435166 (= e!2761640 e!2761641)))

(declare-fun res!1835441 () Bool)

(assert (=> b!4435166 (=> (not res!1835441) (not e!2761641))))

(assert (=> b!4435166 (= res!1835441 (dynLambda!20887 (ite c!754761 lambda!156063 lambda!156065) (h!55414 (ite c!754761 (toList!3590 lt!1631951) (toList!3590 lt!1632302)))))))

(declare-fun b!4435167 () Bool)

(assert (=> b!4435167 (= e!2761641 (forall!9648 (t!356773 (ite c!754761 (toList!3590 lt!1631951) (toList!3590 lt!1632302))) (ite c!754761 lambda!156063 lambda!156065)))))

(assert (= (and d!1345735 (not res!1835440)) b!4435166))

(assert (= (and b!4435166 res!1835441) b!4435167))

(declare-fun b_lambda!144337 () Bool)

(assert (=> (not b_lambda!144337) (not b!4435166)))

(declare-fun m!5121095 () Bool)

(assert (=> b!4435166 m!5121095))

(declare-fun m!5121097 () Bool)

(assert (=> b!4435167 m!5121097))

(assert (=> bm!308555 d!1345735))

(declare-fun d!1345737 () Bool)

(declare-fun res!1835446 () Bool)

(declare-fun e!2761644 () Bool)

(assert (=> d!1345737 (=> res!1835446 e!2761644)))

(assert (=> d!1345737 (= res!1835446 (not ((_ is Cons!49707) (_2!28086 (tuple2!49585 hash!366 newBucket!194)))))))

(assert (=> d!1345737 (= (noDuplicateKeys!801 (_2!28086 (tuple2!49585 hash!366 newBucket!194))) e!2761644)))

(declare-fun b!4435172 () Bool)

(declare-fun e!2761645 () Bool)

(assert (=> b!4435172 (= e!2761644 e!2761645)))

(declare-fun res!1835447 () Bool)

(assert (=> b!4435172 (=> (not res!1835447) (not e!2761645))))

(assert (=> b!4435172 (= res!1835447 (not (containsKey!1192 (t!356773 (_2!28086 (tuple2!49585 hash!366 newBucket!194))) (_1!28085 (h!55414 (_2!28086 (tuple2!49585 hash!366 newBucket!194)))))))))

(declare-fun b!4435173 () Bool)

(assert (=> b!4435173 (= e!2761645 (noDuplicateKeys!801 (t!356773 (_2!28086 (tuple2!49585 hash!366 newBucket!194)))))))

(assert (= (and d!1345737 (not res!1835446)) b!4435172))

(assert (= (and b!4435172 res!1835447) b!4435173))

(declare-fun m!5121099 () Bool)

(assert (=> b!4435172 m!5121099))

(declare-fun m!5121101 () Bool)

(assert (=> b!4435173 m!5121101))

(assert (=> bs!761163 d!1345737))

(declare-fun d!1345739 () Bool)

(declare-fun lt!1632491 () Bool)

(assert (=> d!1345739 (= lt!1632491 (select (content!7991 e!2761448) key!3717))))

(declare-fun e!2761646 () Bool)

(assert (=> d!1345739 (= lt!1632491 e!2761646)))

(declare-fun res!1835448 () Bool)

(assert (=> d!1345739 (=> (not res!1835448) (not e!2761646))))

(assert (=> d!1345739 (= res!1835448 ((_ is Cons!49710) e!2761448))))

(assert (=> d!1345739 (= (contains!12257 e!2761448 key!3717) lt!1632491)))

(declare-fun b!4435174 () Bool)

(declare-fun e!2761647 () Bool)

(assert (=> b!4435174 (= e!2761646 e!2761647)))

(declare-fun res!1835449 () Bool)

(assert (=> b!4435174 (=> res!1835449 e!2761647)))

(assert (=> b!4435174 (= res!1835449 (= (h!55419 e!2761448) key!3717))))

(declare-fun b!4435175 () Bool)

(assert (=> b!4435175 (= e!2761647 (contains!12257 (t!356776 e!2761448) key!3717))))

(assert (= (and d!1345739 res!1835448) b!4435174))

(assert (= (and b!4435174 (not res!1835449)) b!4435175))

(declare-fun m!5121103 () Bool)

(assert (=> d!1345739 m!5121103))

(declare-fun m!5121105 () Bool)

(assert (=> d!1345739 m!5121105))

(declare-fun m!5121107 () Bool)

(assert (=> b!4435175 m!5121107))

(assert (=> bm!308554 d!1345739))

(declare-fun d!1345741 () Bool)

(declare-fun res!1835450 () Bool)

(declare-fun e!2761648 () Bool)

(assert (=> d!1345741 (=> res!1835450 e!2761648)))

(assert (=> d!1345741 (= res!1835450 ((_ is Nil!49707) (ite c!754739 (toList!3590 lt!1631951) (toList!3590 lt!1632170))))))

(assert (=> d!1345741 (= (forall!9648 (ite c!754739 (toList!3590 lt!1631951) (toList!3590 lt!1632170)) (ite c!754739 lambda!156037 lambda!156040)) e!2761648)))

(declare-fun b!4435176 () Bool)

(declare-fun e!2761649 () Bool)

(assert (=> b!4435176 (= e!2761648 e!2761649)))

(declare-fun res!1835451 () Bool)

(assert (=> b!4435176 (=> (not res!1835451) (not e!2761649))))

(assert (=> b!4435176 (= res!1835451 (dynLambda!20887 (ite c!754739 lambda!156037 lambda!156040) (h!55414 (ite c!754739 (toList!3590 lt!1631951) (toList!3590 lt!1632170)))))))

(declare-fun b!4435177 () Bool)

(assert (=> b!4435177 (= e!2761649 (forall!9648 (t!356773 (ite c!754739 (toList!3590 lt!1631951) (toList!3590 lt!1632170))) (ite c!754739 lambda!156037 lambda!156040)))))

(assert (= (and d!1345741 (not res!1835450)) b!4435176))

(assert (= (and b!4435176 res!1835451) b!4435177))

(declare-fun b_lambda!144339 () Bool)

(assert (=> (not b_lambda!144339) (not b!4435176)))

(declare-fun m!5121117 () Bool)

(assert (=> b!4435176 m!5121117))

(declare-fun m!5121119 () Bool)

(assert (=> b!4435177 m!5121119))

(assert (=> bm!308543 d!1345741))

(declare-fun d!1345745 () Bool)

(declare-fun noDuplicatedKeys!186 (List!49831) Bool)

(assert (=> d!1345745 (= (invariantList!827 (toList!3590 lt!1632306)) (noDuplicatedKeys!186 (toList!3590 lt!1632306)))))

(declare-fun bs!761257 () Bool)

(assert (= bs!761257 d!1345745))

(declare-fun m!5121121 () Bool)

(assert (=> bs!761257 m!5121121))

(assert (=> b!4434870 d!1345745))

(declare-fun d!1345747 () Bool)

(declare-fun res!1835454 () Bool)

(declare-fun e!2761651 () Bool)

(assert (=> d!1345747 (=> res!1835454 e!2761651)))

(assert (=> d!1345747 (= res!1835454 ((_ is Nil!49707) newBucket!194))))

(assert (=> d!1345747 (= (forall!9648 newBucket!194 lambda!156041) e!2761651)))

(declare-fun b!4435180 () Bool)

(declare-fun e!2761652 () Bool)

(assert (=> b!4435180 (= e!2761651 e!2761652)))

(declare-fun res!1835455 () Bool)

(assert (=> b!4435180 (=> (not res!1835455) (not e!2761652))))

(assert (=> b!4435180 (= res!1835455 (dynLambda!20887 lambda!156041 (h!55414 newBucket!194)))))

(declare-fun b!4435181 () Bool)

(assert (=> b!4435181 (= e!2761652 (forall!9648 (t!356773 newBucket!194) lambda!156041))))

(assert (= (and d!1345747 (not res!1835454)) b!4435180))

(assert (= (and b!4435180 res!1835455) b!4435181))

(declare-fun b_lambda!144341 () Bool)

(assert (=> (not b_lambda!144341) (not b!4435180)))

(declare-fun m!5121123 () Bool)

(assert (=> b!4435180 m!5121123))

(declare-fun m!5121125 () Bool)

(assert (=> b!4435181 m!5121125))

(assert (=> d!1345535 d!1345747))

(assert (=> d!1345535 d!1345601))

(declare-fun d!1345749 () Bool)

(assert (=> d!1345749 (= (invariantList!827 (toList!3590 lt!1632174)) (noDuplicatedKeys!186 (toList!3590 lt!1632174)))))

(declare-fun bs!761258 () Bool)

(assert (= bs!761258 d!1345749))

(declare-fun m!5121127 () Bool)

(assert (=> bs!761258 m!5121127))

(assert (=> b!4434761 d!1345749))

(declare-fun d!1345751 () Bool)

(declare-fun res!1835456 () Bool)

(declare-fun e!2761653 () Bool)

(assert (=> d!1345751 (=> res!1835456 e!2761653)))

(assert (=> d!1345751 (= res!1835456 ((_ is Nil!49707) (toList!3590 lt!1631951)))))

(assert (=> d!1345751 (= (forall!9648 (toList!3590 lt!1631951) (ite c!754761 lambda!156063 lambda!156064)) e!2761653)))

(declare-fun b!4435182 () Bool)

(declare-fun e!2761654 () Bool)

(assert (=> b!4435182 (= e!2761653 e!2761654)))

(declare-fun res!1835457 () Bool)

(assert (=> b!4435182 (=> (not res!1835457) (not e!2761654))))

(assert (=> b!4435182 (= res!1835457 (dynLambda!20887 (ite c!754761 lambda!156063 lambda!156064) (h!55414 (toList!3590 lt!1631951))))))

(declare-fun b!4435183 () Bool)

(assert (=> b!4435183 (= e!2761654 (forall!9648 (t!356773 (toList!3590 lt!1631951)) (ite c!754761 lambda!156063 lambda!156064)))))

(assert (= (and d!1345751 (not res!1835456)) b!4435182))

(assert (= (and b!4435182 res!1835457) b!4435183))

(declare-fun b_lambda!144343 () Bool)

(assert (=> (not b_lambda!144343) (not b!4435182)))

(declare-fun m!5121129 () Bool)

(assert (=> b!4435182 m!5121129))

(declare-fun m!5121131 () Bool)

(assert (=> b!4435183 m!5121131))

(assert (=> bm!308557 d!1345751))

(assert (=> b!4434863 d!1345687))

(assert (=> b!4434863 d!1345693))

(declare-fun d!1345753 () Bool)

(declare-fun c!754830 () Bool)

(assert (=> d!1345753 (= c!754830 ((_ is Nil!49707) (toList!3590 lt!1631946)))))

(declare-fun e!2761657 () (InoxSet tuple2!49582))

(assert (=> d!1345753 (= (content!7990 (toList!3590 lt!1631946)) e!2761657)))

(declare-fun b!4435188 () Bool)

(assert (=> b!4435188 (= e!2761657 ((as const (Array tuple2!49582 Bool)) false))))

(declare-fun b!4435189 () Bool)

(assert (=> b!4435189 (= e!2761657 ((_ map or) (store ((as const (Array tuple2!49582 Bool)) false) (h!55414 (toList!3590 lt!1631946)) true) (content!7990 (t!356773 (toList!3590 lt!1631946)))))))

(assert (= (and d!1345753 c!754830) b!4435188))

(assert (= (and d!1345753 (not c!754830)) b!4435189))

(declare-fun m!5121133 () Bool)

(assert (=> b!4435189 m!5121133))

(declare-fun m!5121135 () Bool)

(assert (=> b!4435189 m!5121135))

(assert (=> d!1345609 d!1345753))

(declare-fun d!1345755 () Bool)

(declare-fun c!754831 () Bool)

(assert (=> d!1345755 (= c!754831 ((_ is Nil!49707) (toList!3590 lt!1631943)))))

(declare-fun e!2761658 () (InoxSet tuple2!49582))

(assert (=> d!1345755 (= (content!7990 (toList!3590 lt!1631943)) e!2761658)))

(declare-fun b!4435190 () Bool)

(assert (=> b!4435190 (= e!2761658 ((as const (Array tuple2!49582 Bool)) false))))

(declare-fun b!4435191 () Bool)

(assert (=> b!4435191 (= e!2761658 ((_ map or) (store ((as const (Array tuple2!49582 Bool)) false) (h!55414 (toList!3590 lt!1631943)) true) (content!7990 (t!356773 (toList!3590 lt!1631943)))))))

(assert (= (and d!1345755 c!754831) b!4435190))

(assert (= (and d!1345755 (not c!754831)) b!4435191))

(declare-fun m!5121137 () Bool)

(assert (=> b!4435191 m!5121137))

(declare-fun m!5121139 () Bool)

(assert (=> b!4435191 m!5121139))

(assert (=> d!1345609 d!1345755))

(declare-fun d!1345757 () Bool)

(declare-fun c!754832 () Bool)

(assert (=> d!1345757 (= c!754832 ((_ is Nil!49707) (toList!3590 lt!1631940)))))

(declare-fun e!2761659 () (InoxSet tuple2!49582))

(assert (=> d!1345757 (= (content!7990 (toList!3590 lt!1631940)) e!2761659)))

(declare-fun b!4435192 () Bool)

(assert (=> b!4435192 (= e!2761659 ((as const (Array tuple2!49582 Bool)) false))))

(declare-fun b!4435193 () Bool)

(assert (=> b!4435193 (= e!2761659 ((_ map or) (store ((as const (Array tuple2!49582 Bool)) false) (h!55414 (toList!3590 lt!1631940)) true) (content!7990 (t!356773 (toList!3590 lt!1631940)))))))

(assert (= (and d!1345757 c!754832) b!4435192))

(assert (= (and d!1345757 (not c!754832)) b!4435193))

(declare-fun m!5121141 () Bool)

(assert (=> b!4435193 m!5121141))

(declare-fun m!5121143 () Bool)

(assert (=> b!4435193 m!5121143))

(assert (=> d!1345631 d!1345757))

(assert (=> d!1345631 d!1345755))

(declare-fun d!1345759 () Bool)

(declare-fun res!1835458 () Bool)

(declare-fun e!2761660 () Bool)

(assert (=> d!1345759 (=> res!1835458 e!2761660)))

(assert (=> d!1345759 (= res!1835458 ((_ is Nil!49707) (toList!3590 lt!1631951)))))

(assert (=> d!1345759 (= (forall!9648 (toList!3590 lt!1631951) (ite c!754739 lambda!156037 lambda!156039)) e!2761660)))

(declare-fun b!4435194 () Bool)

(declare-fun e!2761661 () Bool)

(assert (=> b!4435194 (= e!2761660 e!2761661)))

(declare-fun res!1835459 () Bool)

(assert (=> b!4435194 (=> (not res!1835459) (not e!2761661))))

(assert (=> b!4435194 (= res!1835459 (dynLambda!20887 (ite c!754739 lambda!156037 lambda!156039) (h!55414 (toList!3590 lt!1631951))))))

(declare-fun b!4435195 () Bool)

(assert (=> b!4435195 (= e!2761661 (forall!9648 (t!356773 (toList!3590 lt!1631951)) (ite c!754739 lambda!156037 lambda!156039)))))

(assert (= (and d!1345759 (not res!1835458)) b!4435194))

(assert (= (and b!4435194 res!1835459) b!4435195))

(declare-fun b_lambda!144345 () Bool)

(assert (=> (not b_lambda!144345) (not b!4435194)))

(declare-fun m!5121145 () Bool)

(assert (=> b!4435194 m!5121145))

(declare-fun m!5121147 () Bool)

(assert (=> b!4435195 m!5121147))

(assert (=> bm!308545 d!1345759))

(declare-fun d!1345761 () Bool)

(declare-fun choose!28125 (Hashable!5195 K!11075) (_ BitVec 64))

(assert (=> d!1345761 (= (hash!2225 hashF!1220 key!3717) (choose!28125 hashF!1220 key!3717))))

(declare-fun bs!761259 () Bool)

(assert (= bs!761259 d!1345761))

(declare-fun m!5121149 () Bool)

(assert (=> bs!761259 m!5121149))

(assert (=> d!1345525 d!1345761))

(declare-fun d!1345763 () Bool)

(declare-fun res!1835460 () Bool)

(declare-fun e!2761662 () Bool)

(assert (=> d!1345763 (=> res!1835460 e!2761662)))

(assert (=> d!1345763 (= res!1835460 ((_ is Nil!49707) (toList!3590 lt!1631951)))))

(assert (=> d!1345763 (= (forall!9648 (toList!3590 lt!1631951) lambda!156066) e!2761662)))

(declare-fun b!4435196 () Bool)

(declare-fun e!2761663 () Bool)

(assert (=> b!4435196 (= e!2761662 e!2761663)))

(declare-fun res!1835461 () Bool)

(assert (=> b!4435196 (=> (not res!1835461) (not e!2761663))))

(assert (=> b!4435196 (= res!1835461 (dynLambda!20887 lambda!156066 (h!55414 (toList!3590 lt!1631951))))))

(declare-fun b!4435197 () Bool)

(assert (=> b!4435197 (= e!2761663 (forall!9648 (t!356773 (toList!3590 lt!1631951)) lambda!156066))))

(assert (= (and d!1345763 (not res!1835460)) b!4435196))

(assert (= (and b!4435196 res!1835461) b!4435197))

(declare-fun b_lambda!144347 () Bool)

(assert (=> (not b_lambda!144347) (not b!4435196)))

(declare-fun m!5121151 () Bool)

(assert (=> b!4435196 m!5121151))

(declare-fun m!5121153 () Bool)

(assert (=> b!4435197 m!5121153))

(assert (=> b!4434873 d!1345763))

(declare-fun d!1345765 () Bool)

(declare-fun res!1835462 () Bool)

(declare-fun e!2761664 () Bool)

(assert (=> d!1345765 (=> res!1835462 e!2761664)))

(assert (=> d!1345765 (= res!1835462 ((_ is Nil!49707) lt!1631939))))

(assert (=> d!1345765 (= (forall!9648 lt!1631939 lambda!156055) e!2761664)))

(declare-fun b!4435198 () Bool)

(declare-fun e!2761665 () Bool)

(assert (=> b!4435198 (= e!2761664 e!2761665)))

(declare-fun res!1835463 () Bool)

(assert (=> b!4435198 (=> (not res!1835463) (not e!2761665))))

(assert (=> b!4435198 (= res!1835463 (dynLambda!20887 lambda!156055 (h!55414 lt!1631939)))))

(declare-fun b!4435199 () Bool)

(assert (=> b!4435199 (= e!2761665 (forall!9648 (t!356773 lt!1631939) lambda!156055))))

(assert (= (and d!1345765 (not res!1835462)) b!4435198))

(assert (= (and b!4435198 res!1835463) b!4435199))

(declare-fun b_lambda!144349 () Bool)

(assert (=> (not b_lambda!144349) (not b!4435198)))

(declare-fun m!5121155 () Bool)

(assert (=> b!4435198 m!5121155))

(declare-fun m!5121157 () Bool)

(assert (=> b!4435199 m!5121157))

(assert (=> d!1345597 d!1345765))

(declare-fun d!1345767 () Bool)

(declare-fun res!1835464 () Bool)

(declare-fun e!2761666 () Bool)

(assert (=> d!1345767 (=> res!1835464 e!2761666)))

(assert (=> d!1345767 (= res!1835464 (not ((_ is Cons!49707) lt!1631939)))))

(assert (=> d!1345767 (= (noDuplicateKeys!801 lt!1631939) e!2761666)))

(declare-fun b!4435200 () Bool)

(declare-fun e!2761667 () Bool)

(assert (=> b!4435200 (= e!2761666 e!2761667)))

(declare-fun res!1835465 () Bool)

(assert (=> b!4435200 (=> (not res!1835465) (not e!2761667))))

(assert (=> b!4435200 (= res!1835465 (not (containsKey!1192 (t!356773 lt!1631939) (_1!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435201 () Bool)

(assert (=> b!4435201 (= e!2761667 (noDuplicateKeys!801 (t!356773 lt!1631939)))))

(assert (= (and d!1345767 (not res!1835464)) b!4435200))

(assert (= (and b!4435200 res!1835465) b!4435201))

(declare-fun m!5121159 () Bool)

(assert (=> b!4435200 m!5121159))

(assert (=> b!4435201 m!5120979))

(assert (=> d!1345597 d!1345767))

(declare-fun d!1345769 () Bool)

(declare-fun res!1835466 () Bool)

(declare-fun e!2761668 () Bool)

(assert (=> d!1345769 (=> res!1835466 e!2761668)))

(assert (=> d!1345769 (= res!1835466 ((_ is Nil!49707) (toList!3590 lt!1631951)))))

(assert (=> d!1345769 (= (forall!9648 (toList!3590 lt!1631951) lambda!156041) e!2761668)))

(declare-fun b!4435202 () Bool)

(declare-fun e!2761669 () Bool)

(assert (=> b!4435202 (= e!2761668 e!2761669)))

(declare-fun res!1835467 () Bool)

(assert (=> b!4435202 (=> (not res!1835467) (not e!2761669))))

(assert (=> b!4435202 (= res!1835467 (dynLambda!20887 lambda!156041 (h!55414 (toList!3590 lt!1631951))))))

(declare-fun b!4435203 () Bool)

(assert (=> b!4435203 (= e!2761669 (forall!9648 (t!356773 (toList!3590 lt!1631951)) lambda!156041))))

(assert (= (and d!1345769 (not res!1835466)) b!4435202))

(assert (= (and b!4435202 res!1835467) b!4435203))

(declare-fun b_lambda!144351 () Bool)

(assert (=> (not b_lambda!144351) (not b!4435202)))

(declare-fun m!5121161 () Bool)

(assert (=> b!4435202 m!5121161))

(declare-fun m!5121163 () Bool)

(assert (=> b!4435203 m!5121163))

(assert (=> b!4434764 d!1345769))

(declare-fun d!1345771 () Bool)

(assert (=> d!1345771 (= (invariantList!827 (toList!3590 lt!1632214)) (noDuplicatedKeys!186 (toList!3590 lt!1632214)))))

(declare-fun bs!761260 () Bool)

(assert (= bs!761260 d!1345771))

(declare-fun m!5121165 () Bool)

(assert (=> bs!761260 m!5121165))

(assert (=> d!1345595 d!1345771))

(declare-fun d!1345773 () Bool)

(declare-fun res!1835468 () Bool)

(declare-fun e!2761670 () Bool)

(assert (=> d!1345773 (=> res!1835468 e!2761670)))

(assert (=> d!1345773 (= res!1835468 ((_ is Nil!49708) (t!356774 (toList!3589 lm!1616))))))

(assert (=> d!1345773 (= (forall!9646 (t!356774 (toList!3589 lm!1616)) lambda!156051) e!2761670)))

(declare-fun b!4435204 () Bool)

(declare-fun e!2761671 () Bool)

(assert (=> b!4435204 (= e!2761670 e!2761671)))

(declare-fun res!1835469 () Bool)

(assert (=> b!4435204 (=> (not res!1835469) (not e!2761671))))

(assert (=> b!4435204 (= res!1835469 (dynLambda!20886 lambda!156051 (h!55415 (t!356774 (toList!3589 lm!1616)))))))

(declare-fun b!4435205 () Bool)

(assert (=> b!4435205 (= e!2761671 (forall!9646 (t!356774 (t!356774 (toList!3589 lm!1616))) lambda!156051))))

(assert (= (and d!1345773 (not res!1835468)) b!4435204))

(assert (= (and b!4435204 res!1835469) b!4435205))

(declare-fun b_lambda!144353 () Bool)

(assert (=> (not b_lambda!144353) (not b!4435204)))

(declare-fun m!5121167 () Bool)

(assert (=> b!4435204 m!5121167))

(declare-fun m!5121169 () Bool)

(assert (=> b!4435205 m!5121169))

(assert (=> d!1345595 d!1345773))

(declare-fun d!1345775 () Bool)

(declare-fun res!1835470 () Bool)

(declare-fun e!2761672 () Bool)

(assert (=> d!1345775 (=> res!1835470 e!2761672)))

(assert (=> d!1345775 (= res!1835470 ((_ is Nil!49707) newBucket!194))))

(assert (=> d!1345775 (= (forall!9648 newBucket!194 lambda!156061) e!2761672)))

(declare-fun b!4435206 () Bool)

(declare-fun e!2761673 () Bool)

(assert (=> b!4435206 (= e!2761672 e!2761673)))

(declare-fun res!1835471 () Bool)

(assert (=> b!4435206 (=> (not res!1835471) (not e!2761673))))

(assert (=> b!4435206 (= res!1835471 (dynLambda!20887 lambda!156061 (h!55414 newBucket!194)))))

(declare-fun b!4435207 () Bool)

(assert (=> b!4435207 (= e!2761673 (forall!9648 (t!356773 newBucket!194) lambda!156061))))

(assert (= (and d!1345775 (not res!1835470)) b!4435206))

(assert (= (and b!4435206 res!1835471) b!4435207))

(declare-fun b_lambda!144355 () Bool)

(assert (=> (not b_lambda!144355) (not b!4435206)))

(declare-fun m!5121171 () Bool)

(assert (=> b!4435206 m!5121171))

(declare-fun m!5121173 () Bool)

(assert (=> b!4435207 m!5121173))

(assert (=> d!1345619 d!1345775))

(declare-fun d!1345777 () Bool)

(declare-fun res!1835472 () Bool)

(declare-fun e!2761674 () Bool)

(assert (=> d!1345777 (=> res!1835472 e!2761674)))

(assert (=> d!1345777 (= res!1835472 ((_ is Nil!49707) lt!1631939))))

(assert (=> d!1345777 (= (forall!9648 lt!1631939 lambda!156066) e!2761674)))

(declare-fun b!4435208 () Bool)

(declare-fun e!2761675 () Bool)

(assert (=> b!4435208 (= e!2761674 e!2761675)))

(declare-fun res!1835473 () Bool)

(assert (=> b!4435208 (=> (not res!1835473) (not e!2761675))))

(assert (=> b!4435208 (= res!1835473 (dynLambda!20887 lambda!156066 (h!55414 lt!1631939)))))

(declare-fun b!4435209 () Bool)

(assert (=> b!4435209 (= e!2761675 (forall!9648 (t!356773 lt!1631939) lambda!156066))))

(assert (= (and d!1345777 (not res!1835472)) b!4435208))

(assert (= (and b!4435208 res!1835473) b!4435209))

(declare-fun b_lambda!144357 () Bool)

(assert (=> (not b_lambda!144357) (not b!4435208)))

(declare-fun m!5121175 () Bool)

(assert (=> b!4435208 m!5121175))

(declare-fun m!5121177 () Bool)

(assert (=> b!4435209 m!5121177))

(assert (=> d!1345633 d!1345777))

(assert (=> d!1345633 d!1345767))

(assert (=> d!1345531 d!1345753))

(declare-fun d!1345779 () Bool)

(declare-fun c!754833 () Bool)

(assert (=> d!1345779 (= c!754833 ((_ is Nil!49707) (toList!3590 (+!1171 lt!1631947 lt!1631950))))))

(declare-fun e!2761676 () (InoxSet tuple2!49582))

(assert (=> d!1345779 (= (content!7990 (toList!3590 (+!1171 lt!1631947 lt!1631950))) e!2761676)))

(declare-fun b!4435210 () Bool)

(assert (=> b!4435210 (= e!2761676 ((as const (Array tuple2!49582 Bool)) false))))

(declare-fun b!4435211 () Bool)

(assert (=> b!4435211 (= e!2761676 ((_ map or) (store ((as const (Array tuple2!49582 Bool)) false) (h!55414 (toList!3590 (+!1171 lt!1631947 lt!1631950))) true) (content!7990 (t!356773 (toList!3590 (+!1171 lt!1631947 lt!1631950))))))))

(assert (= (and d!1345779 c!754833) b!4435210))

(assert (= (and d!1345779 (not c!754833)) b!4435211))

(declare-fun m!5121179 () Bool)

(assert (=> b!4435211 m!5121179))

(declare-fun m!5121181 () Bool)

(assert (=> b!4435211 m!5121181))

(assert (=> d!1345531 d!1345779))

(declare-fun b!4435212 () Bool)

(assert (=> b!4435212 false))

(declare-fun lt!1632494 () Unit!83085)

(declare-fun lt!1632497 () Unit!83085)

(assert (=> b!4435212 (= lt!1632494 lt!1632497)))

(assert (=> b!4435212 (containsKey!1194 (toList!3590 lt!1632295) (_1!28085 lt!1631950))))

(assert (=> b!4435212 (= lt!1632497 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1632295) (_1!28085 lt!1631950)))))

(declare-fun e!2761677 () Unit!83085)

(declare-fun Unit!83198 () Unit!83085)

(assert (=> b!4435212 (= e!2761677 Unit!83198)))

(declare-fun b!4435213 () Bool)

(declare-fun e!2761679 () List!49834)

(assert (=> b!4435213 (= e!2761679 (getKeysList!274 (toList!3590 lt!1632295)))))

(declare-fun b!4435214 () Bool)

(declare-fun e!2761680 () Bool)

(assert (=> b!4435214 (= e!2761680 (contains!12257 (keys!17006 lt!1632295) (_1!28085 lt!1631950)))))

(declare-fun d!1345781 () Bool)

(declare-fun e!2761678 () Bool)

(assert (=> d!1345781 e!2761678))

(declare-fun res!1835475 () Bool)

(assert (=> d!1345781 (=> res!1835475 e!2761678)))

(declare-fun e!2761681 () Bool)

(assert (=> d!1345781 (= res!1835475 e!2761681)))

(declare-fun res!1835476 () Bool)

(assert (=> d!1345781 (=> (not res!1835476) (not e!2761681))))

(declare-fun lt!1632493 () Bool)

(assert (=> d!1345781 (= res!1835476 (not lt!1632493))))

(declare-fun lt!1632496 () Bool)

(assert (=> d!1345781 (= lt!1632493 lt!1632496)))

(declare-fun lt!1632500 () Unit!83085)

(declare-fun e!2761682 () Unit!83085)

(assert (=> d!1345781 (= lt!1632500 e!2761682)))

(declare-fun c!754834 () Bool)

(assert (=> d!1345781 (= c!754834 lt!1632496)))

(assert (=> d!1345781 (= lt!1632496 (containsKey!1194 (toList!3590 lt!1632295) (_1!28085 lt!1631950)))))

(assert (=> d!1345781 (= (contains!12250 lt!1632295 (_1!28085 lt!1631950)) lt!1632493)))

(declare-fun b!4435215 () Bool)

(declare-fun lt!1632499 () Unit!83085)

(assert (=> b!4435215 (= e!2761682 lt!1632499)))

(declare-fun lt!1632498 () Unit!83085)

(assert (=> b!4435215 (= lt!1632498 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1632295) (_1!28085 lt!1631950)))))

(assert (=> b!4435215 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632295) (_1!28085 lt!1631950)))))

(declare-fun lt!1632495 () Unit!83085)

(assert (=> b!4435215 (= lt!1632495 lt!1632498)))

(assert (=> b!4435215 (= lt!1632499 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1632295) (_1!28085 lt!1631950)))))

(declare-fun call!308585 () Bool)

(assert (=> b!4435215 call!308585))

(declare-fun bm!308580 () Bool)

(assert (=> bm!308580 (= call!308585 (contains!12257 e!2761679 (_1!28085 lt!1631950)))))

(declare-fun c!754835 () Bool)

(assert (=> bm!308580 (= c!754835 c!754834)))

(declare-fun b!4435216 () Bool)

(assert (=> b!4435216 (= e!2761678 e!2761680)))

(declare-fun res!1835474 () Bool)

(assert (=> b!4435216 (=> (not res!1835474) (not e!2761680))))

(assert (=> b!4435216 (= res!1835474 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632295) (_1!28085 lt!1631950))))))

(declare-fun b!4435217 () Bool)

(assert (=> b!4435217 (= e!2761682 e!2761677)))

(declare-fun c!754836 () Bool)

(assert (=> b!4435217 (= c!754836 call!308585)))

(declare-fun b!4435218 () Bool)

(declare-fun Unit!83199 () Unit!83085)

(assert (=> b!4435218 (= e!2761677 Unit!83199)))

(declare-fun b!4435219 () Bool)

(assert (=> b!4435219 (= e!2761681 (not (contains!12257 (keys!17006 lt!1632295) (_1!28085 lt!1631950))))))

(declare-fun b!4435220 () Bool)

(assert (=> b!4435220 (= e!2761679 (keys!17006 lt!1632295))))

(assert (= (and d!1345781 c!754834) b!4435215))

(assert (= (and d!1345781 (not c!754834)) b!4435217))

(assert (= (and b!4435217 c!754836) b!4435212))

(assert (= (and b!4435217 (not c!754836)) b!4435218))

(assert (= (or b!4435215 b!4435217) bm!308580))

(assert (= (and bm!308580 c!754835) b!4435213))

(assert (= (and bm!308580 (not c!754835)) b!4435220))

(assert (= (and d!1345781 res!1835476) b!4435219))

(assert (= (and d!1345781 (not res!1835475)) b!4435216))

(assert (= (and b!4435216 res!1835474) b!4435214))

(declare-fun m!5121183 () Bool)

(assert (=> b!4435212 m!5121183))

(declare-fun m!5121185 () Bool)

(assert (=> b!4435212 m!5121185))

(declare-fun m!5121187 () Bool)

(assert (=> b!4435219 m!5121187))

(assert (=> b!4435219 m!5121187))

(declare-fun m!5121189 () Bool)

(assert (=> b!4435219 m!5121189))

(assert (=> d!1345781 m!5121183))

(assert (=> b!4435214 m!5121187))

(assert (=> b!4435214 m!5121187))

(assert (=> b!4435214 m!5121189))

(assert (=> b!4435220 m!5121187))

(declare-fun m!5121191 () Bool)

(assert (=> b!4435215 m!5121191))

(assert (=> b!4435215 m!5120657))

(assert (=> b!4435215 m!5120657))

(declare-fun m!5121193 () Bool)

(assert (=> b!4435215 m!5121193))

(declare-fun m!5121195 () Bool)

(assert (=> b!4435215 m!5121195))

(declare-fun m!5121197 () Bool)

(assert (=> bm!308580 m!5121197))

(assert (=> b!4435216 m!5120657))

(assert (=> b!4435216 m!5120657))

(assert (=> b!4435216 m!5121193))

(declare-fun m!5121199 () Bool)

(assert (=> b!4435213 m!5121199))

(assert (=> d!1345625 d!1345781))

(declare-fun b!4435224 () Bool)

(declare-fun e!2761684 () Option!10769)

(assert (=> b!4435224 (= e!2761684 None!10768)))

(declare-fun b!4435222 () Bool)

(declare-fun e!2761683 () Option!10769)

(assert (=> b!4435222 (= e!2761683 e!2761684)))

(declare-fun c!754838 () Bool)

(assert (=> b!4435222 (= c!754838 (and ((_ is Cons!49707) lt!1632294) (not (= (_1!28085 (h!55414 lt!1632294)) (_1!28085 lt!1631950)))))))

(declare-fun b!4435221 () Bool)

(assert (=> b!4435221 (= e!2761683 (Some!10768 (_2!28085 (h!55414 lt!1632294))))))

(declare-fun d!1345783 () Bool)

(declare-fun c!754837 () Bool)

(assert (=> d!1345783 (= c!754837 (and ((_ is Cons!49707) lt!1632294) (= (_1!28085 (h!55414 lt!1632294)) (_1!28085 lt!1631950))))))

(assert (=> d!1345783 (= (getValueByKey!755 lt!1632294 (_1!28085 lt!1631950)) e!2761683)))

(declare-fun b!4435223 () Bool)

(assert (=> b!4435223 (= e!2761684 (getValueByKey!755 (t!356773 lt!1632294) (_1!28085 lt!1631950)))))

(assert (= (and d!1345783 c!754837) b!4435221))

(assert (= (and d!1345783 (not c!754837)) b!4435222))

(assert (= (and b!4435222 c!754838) b!4435223))

(assert (= (and b!4435222 (not c!754838)) b!4435224))

(declare-fun m!5121201 () Bool)

(assert (=> b!4435223 m!5121201))

(assert (=> d!1345625 d!1345783))

(declare-fun d!1345785 () Bool)

(assert (=> d!1345785 (= (getValueByKey!755 lt!1632294 (_1!28085 lt!1631950)) (Some!10768 (_2!28085 lt!1631950)))))

(declare-fun lt!1632501 () Unit!83085)

(assert (=> d!1345785 (= lt!1632501 (choose!28118 lt!1632294 (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun e!2761685 () Bool)

(assert (=> d!1345785 e!2761685))

(declare-fun res!1835477 () Bool)

(assert (=> d!1345785 (=> (not res!1835477) (not e!2761685))))

(assert (=> d!1345785 (= res!1835477 (invariantList!827 lt!1632294))))

(assert (=> d!1345785 (= (lemmaContainsTupThenGetReturnValue!488 lt!1632294 (_1!28085 lt!1631950) (_2!28085 lt!1631950)) lt!1632501)))

(declare-fun b!4435225 () Bool)

(declare-fun res!1835478 () Bool)

(assert (=> b!4435225 (=> (not res!1835478) (not e!2761685))))

(assert (=> b!4435225 (= res!1835478 (containsKey!1194 lt!1632294 (_1!28085 lt!1631950)))))

(declare-fun b!4435226 () Bool)

(assert (=> b!4435226 (= e!2761685 (contains!12255 lt!1632294 (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950))))))

(assert (= (and d!1345785 res!1835477) b!4435225))

(assert (= (and b!4435225 res!1835478) b!4435226))

(assert (=> d!1345785 m!5120651))

(declare-fun m!5121203 () Bool)

(assert (=> d!1345785 m!5121203))

(declare-fun m!5121205 () Bool)

(assert (=> d!1345785 m!5121205))

(declare-fun m!5121207 () Bool)

(assert (=> b!4435225 m!5121207))

(declare-fun m!5121209 () Bool)

(assert (=> b!4435226 m!5121209))

(assert (=> d!1345625 d!1345785))

(declare-fun b!4435227 () Bool)

(declare-fun e!2761686 () List!49831)

(assert (=> b!4435227 (= e!2761686 Nil!49707)))

(declare-fun b!4435228 () Bool)

(declare-fun res!1835482 () Bool)

(declare-fun e!2761687 () Bool)

(assert (=> b!4435228 (=> (not res!1835482) (not e!2761687))))

(declare-fun lt!1632502 () List!49831)

(assert (=> b!4435228 (= res!1835482 (contains!12255 lt!1632502 (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950))))))

(declare-fun b!4435229 () Bool)

(declare-fun e!2761690 () List!49831)

(declare-fun lt!1632503 () List!49831)

(assert (=> b!4435229 (= e!2761690 lt!1632503)))

(declare-fun call!308586 () List!49831)

(assert (=> b!4435229 (= lt!1632503 call!308586)))

(declare-fun c!754843 () Bool)

(assert (=> b!4435229 (= c!754843 (containsKey!1194 (insertNoDuplicatedKeys!215 (t!356773 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))) (_1!28085 lt!1631950) (_2!28085 lt!1631950)) (_1!28085 (h!55414 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))))))))

(declare-fun lt!1632507 () Unit!83085)

(declare-fun e!2761691 () Unit!83085)

(assert (=> b!4435229 (= lt!1632507 e!2761691)))

(declare-fun b!4435230 () Bool)

(declare-fun c!754839 () Bool)

(assert (=> b!4435230 (= c!754839 ((_ is Cons!49707) (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))))))

(declare-fun e!2761689 () List!49831)

(assert (=> b!4435230 (= e!2761689 e!2761690)))

(declare-fun b!4435231 () Bool)

(declare-fun e!2761692 () List!49831)

(assert (=> b!4435231 (= e!2761692 e!2761689)))

(declare-fun res!1835479 () Bool)

(assert (=> b!4435231 (= res!1835479 ((_ is Cons!49707) (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))))))

(declare-fun e!2761688 () Bool)

(assert (=> b!4435231 (=> (not res!1835479) (not e!2761688))))

(declare-fun c!754840 () Bool)

(assert (=> b!4435231 (= c!754840 e!2761688)))

(declare-fun b!4435232 () Bool)

(assert (=> b!4435232 false))

(declare-fun lt!1632512 () Unit!83085)

(declare-fun lt!1632510 () Unit!83085)

(assert (=> b!4435232 (= lt!1632512 lt!1632510)))

(assert (=> b!4435232 (containsKey!1194 (t!356773 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))) (_1!28085 (h!55414 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)))))))

(assert (=> b!4435232 (= lt!1632510 (lemmaInGetKeysListThenContainsKey!272 (t!356773 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))) (_1!28085 (h!55414 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))))))))

(declare-fun lt!1632508 () Unit!83085)

(declare-fun lt!1632505 () Unit!83085)

(assert (=> b!4435232 (= lt!1632508 lt!1632505)))

(declare-fun call!308589 () List!49834)

(assert (=> b!4435232 (contains!12257 call!308589 (_1!28085 (h!55414 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)))))))

(declare-fun lt!1632509 () List!49831)

(assert (=> b!4435232 (= lt!1632505 (lemmaInListThenGetKeysListContains!271 lt!1632509 (_1!28085 (h!55414 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))))))))

(assert (=> b!4435232 (= lt!1632509 (insertNoDuplicatedKeys!215 (t!356773 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))) (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun Unit!83200 () Unit!83085)

(assert (=> b!4435232 (= e!2761691 Unit!83200)))

(declare-fun b!4435233 () Bool)

(assert (=> b!4435233 (= e!2761687 (= (content!7991 (getKeysList!274 lt!1632502)) ((_ map or) (content!7991 (getKeysList!274 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)))) (store ((as const (Array K!11075 Bool)) false) (_1!28085 lt!1631950) true))))))

(declare-fun b!4435234 () Bool)

(assert (=> b!4435234 (= e!2761686 (insertNoDuplicatedKeys!215 (t!356773 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))) (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun b!4435235 () Bool)

(declare-fun call!308588 () List!49831)

(assert (=> b!4435235 (= e!2761692 call!308588)))

(declare-fun lt!1632506 () List!49834)

(assert (=> b!4435235 (= lt!1632506 call!308589)))

(declare-fun lt!1632511 () Unit!83085)

(assert (=> b!4435235 (= lt!1632511 (lemmaSubseqRefl!102 lt!1632506))))

(assert (=> b!4435235 (subseq!618 lt!1632506 lt!1632506)))

(declare-fun lt!1632504 () Unit!83085)

(assert (=> b!4435235 (= lt!1632504 lt!1632511)))

(declare-fun b!4435236 () Bool)

(declare-fun Unit!83201 () Unit!83085)

(assert (=> b!4435236 (= e!2761691 Unit!83201)))

(declare-fun b!4435238 () Bool)

(declare-fun call!308587 () List!49831)

(assert (=> b!4435238 (= e!2761689 call!308587)))

(declare-fun bm!308581 () Bool)

(assert (=> bm!308581 (= call!308586 call!308587)))

(declare-fun c!754841 () Bool)

(assert (=> bm!308581 (= c!754841 c!754839)))

(declare-fun bm!308582 () Bool)

(declare-fun c!754842 () Bool)

(assert (=> bm!308582 (= call!308589 (getKeysList!274 (ite c!754842 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)) lt!1632509)))))

(declare-fun b!4435239 () Bool)

(assert (=> b!4435239 (= e!2761688 (not (containsKey!1194 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)) (_1!28085 lt!1631950))))))

(declare-fun bm!308583 () Bool)

(assert (=> bm!308583 (= call!308587 call!308588)))

(declare-fun b!4435237 () Bool)

(assert (=> b!4435237 (= e!2761690 call!308586)))

(declare-fun d!1345787 () Bool)

(assert (=> d!1345787 e!2761687))

(declare-fun res!1835481 () Bool)

(assert (=> d!1345787 (=> (not res!1835481) (not e!2761687))))

(assert (=> d!1345787 (= res!1835481 (invariantList!827 lt!1632502))))

(assert (=> d!1345787 (= lt!1632502 e!2761692)))

(assert (=> d!1345787 (= c!754842 (and ((_ is Cons!49707) (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))) (= (_1!28085 (h!55414 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)))) (_1!28085 lt!1631950))))))

(assert (=> d!1345787 (invariantList!827 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)))))

(assert (=> d!1345787 (= (insertNoDuplicatedKeys!215 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)) (_1!28085 lt!1631950) (_2!28085 lt!1631950)) lt!1632502)))

(declare-fun bm!308584 () Bool)

(assert (=> bm!308584 (= call!308588 ($colon$colon!802 (ite c!754842 (t!356773 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))) (ite c!754840 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)) e!2761686)) (ite (or c!754842 c!754840) (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950)) (ite c!754839 (h!55414 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951))) (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950))))))))

(declare-fun b!4435240 () Bool)

(declare-fun res!1835480 () Bool)

(assert (=> b!4435240 (=> (not res!1835480) (not e!2761687))))

(assert (=> b!4435240 (= res!1835480 (containsKey!1194 lt!1632502 (_1!28085 lt!1631950)))))

(assert (= (and d!1345787 c!754842) b!4435235))

(assert (= (and d!1345787 (not c!754842)) b!4435231))

(assert (= (and b!4435231 res!1835479) b!4435239))

(assert (= (and b!4435231 c!754840) b!4435238))

(assert (= (and b!4435231 (not c!754840)) b!4435230))

(assert (= (and b!4435230 c!754839) b!4435229))

(assert (= (and b!4435230 (not c!754839)) b!4435237))

(assert (= (and b!4435229 c!754843) b!4435232))

(assert (= (and b!4435229 (not c!754843)) b!4435236))

(assert (= (or b!4435229 b!4435237) bm!308581))

(assert (= (and bm!308581 c!754841) b!4435234))

(assert (= (and bm!308581 (not c!754841)) b!4435227))

(assert (= (or b!4435238 bm!308581) bm!308583))

(assert (= (or b!4435235 b!4435232) bm!308582))

(assert (= (or b!4435235 bm!308583) bm!308584))

(assert (= (and d!1345787 res!1835481) b!4435240))

(assert (= (and b!4435240 res!1835480) b!4435228))

(assert (= (and b!4435228 res!1835482) b!4435233))

(declare-fun m!5121211 () Bool)

(assert (=> bm!308582 m!5121211))

(declare-fun m!5121213 () Bool)

(assert (=> b!4435239 m!5121213))

(declare-fun m!5121215 () Bool)

(assert (=> b!4435232 m!5121215))

(declare-fun m!5121217 () Bool)

(assert (=> b!4435232 m!5121217))

(declare-fun m!5121219 () Bool)

(assert (=> b!4435232 m!5121219))

(declare-fun m!5121221 () Bool)

(assert (=> b!4435232 m!5121221))

(declare-fun m!5121223 () Bool)

(assert (=> b!4435232 m!5121223))

(declare-fun m!5121225 () Bool)

(assert (=> b!4435228 m!5121225))

(declare-fun m!5121227 () Bool)

(assert (=> b!4435233 m!5121227))

(declare-fun m!5121229 () Bool)

(assert (=> b!4435233 m!5121229))

(assert (=> b!4435233 m!5121227))

(declare-fun m!5121231 () Bool)

(assert (=> b!4435233 m!5121231))

(assert (=> b!4435233 m!5120785))

(assert (=> b!4435233 m!5121231))

(declare-fun m!5121233 () Bool)

(assert (=> b!4435233 m!5121233))

(declare-fun m!5121235 () Bool)

(assert (=> d!1345787 m!5121235))

(declare-fun m!5121237 () Bool)

(assert (=> d!1345787 m!5121237))

(declare-fun m!5121239 () Bool)

(assert (=> b!4435235 m!5121239))

(declare-fun m!5121241 () Bool)

(assert (=> b!4435235 m!5121241))

(assert (=> b!4435229 m!5121223))

(assert (=> b!4435229 m!5121223))

(declare-fun m!5121243 () Bool)

(assert (=> b!4435229 m!5121243))

(declare-fun m!5121245 () Bool)

(assert (=> b!4435240 m!5121245))

(assert (=> b!4435234 m!5121223))

(declare-fun m!5121247 () Bool)

(assert (=> bm!308584 m!5121247))

(assert (=> d!1345625 d!1345787))

(declare-fun d!1345789 () Bool)

(declare-fun lt!1632513 () Bool)

(assert (=> d!1345789 (= lt!1632513 (select (content!7990 (toList!3590 lt!1631963)) lt!1631950))))

(declare-fun e!2761693 () Bool)

(assert (=> d!1345789 (= lt!1632513 e!2761693)))

(declare-fun res!1835484 () Bool)

(assert (=> d!1345789 (=> (not res!1835484) (not e!2761693))))

(assert (=> d!1345789 (= res!1835484 ((_ is Cons!49707) (toList!3590 lt!1631963)))))

(assert (=> d!1345789 (= (contains!12255 (toList!3590 lt!1631963) lt!1631950) lt!1632513)))

(declare-fun b!4435241 () Bool)

(declare-fun e!2761694 () Bool)

(assert (=> b!4435241 (= e!2761693 e!2761694)))

(declare-fun res!1835483 () Bool)

(assert (=> b!4435241 (=> res!1835483 e!2761694)))

(assert (=> b!4435241 (= res!1835483 (= (h!55414 (toList!3590 lt!1631963)) lt!1631950))))

(declare-fun b!4435242 () Bool)

(assert (=> b!4435242 (= e!2761694 (contains!12255 (t!356773 (toList!3590 lt!1631963)) lt!1631950))))

(assert (= (and d!1345789 res!1835484) b!4435241))

(assert (= (and b!4435241 (not res!1835483)) b!4435242))

(declare-fun m!5121249 () Bool)

(assert (=> d!1345789 m!5121249))

(declare-fun m!5121251 () Bool)

(assert (=> d!1345789 m!5121251))

(declare-fun m!5121253 () Bool)

(assert (=> b!4435242 m!5121253))

(assert (=> b!4434657 d!1345789))

(declare-fun d!1345791 () Bool)

(assert (=> d!1345791 (= (get!16207 (getValueByKey!756 (toList!3589 lm!1616) hash!366)) (v!43979 (getValueByKey!756 (toList!3589 lm!1616) hash!366)))))

(assert (=> d!1345607 d!1345791))

(declare-fun b!4435243 () Bool)

(declare-fun e!2761695 () Option!10770)

(assert (=> b!4435243 (= e!2761695 (Some!10769 (_2!28086 (h!55415 (toList!3589 lm!1616)))))))

(declare-fun d!1345793 () Bool)

(declare-fun c!754844 () Bool)

(assert (=> d!1345793 (= c!754844 (and ((_ is Cons!49708) (toList!3589 lm!1616)) (= (_1!28086 (h!55415 (toList!3589 lm!1616))) hash!366)))))

(assert (=> d!1345793 (= (getValueByKey!756 (toList!3589 lm!1616) hash!366) e!2761695)))

(declare-fun b!4435246 () Bool)

(declare-fun e!2761696 () Option!10770)

(assert (=> b!4435246 (= e!2761696 None!10769)))

(declare-fun b!4435244 () Bool)

(assert (=> b!4435244 (= e!2761695 e!2761696)))

(declare-fun c!754845 () Bool)

(assert (=> b!4435244 (= c!754845 (and ((_ is Cons!49708) (toList!3589 lm!1616)) (not (= (_1!28086 (h!55415 (toList!3589 lm!1616))) hash!366))))))

(declare-fun b!4435245 () Bool)

(assert (=> b!4435245 (= e!2761696 (getValueByKey!756 (t!356774 (toList!3589 lm!1616)) hash!366))))

(assert (= (and d!1345793 c!754844) b!4435243))

(assert (= (and d!1345793 (not c!754844)) b!4435244))

(assert (= (and b!4435244 c!754845) b!4435245))

(assert (= (and b!4435244 (not c!754845)) b!4435246))

(declare-fun m!5121255 () Bool)

(assert (=> b!4435245 m!5121255))

(assert (=> d!1345607 d!1345793))

(declare-fun d!1345795 () Bool)

(declare-fun e!2761697 () Bool)

(assert (=> d!1345795 e!2761697))

(declare-fun res!1835486 () Bool)

(assert (=> d!1345795 (=> (not res!1835486) (not e!2761697))))

(declare-fun lt!1632517 () ListMap!2833)

(assert (=> d!1345795 (= res!1835486 (contains!12250 lt!1632517 (_1!28085 (tuple2!49583 key!3717 newValue!93))))))

(declare-fun lt!1632516 () List!49831)

(assert (=> d!1345795 (= lt!1632517 (ListMap!2834 lt!1632516))))

(declare-fun lt!1632515 () Unit!83085)

(declare-fun lt!1632514 () Unit!83085)

(assert (=> d!1345795 (= lt!1632515 lt!1632514)))

(assert (=> d!1345795 (= (getValueByKey!755 lt!1632516 (_1!28085 (tuple2!49583 key!3717 newValue!93))) (Some!10768 (_2!28085 (tuple2!49583 key!3717 newValue!93))))))

(assert (=> d!1345795 (= lt!1632514 (lemmaContainsTupThenGetReturnValue!488 lt!1632516 (_1!28085 (tuple2!49583 key!3717 newValue!93)) (_2!28085 (tuple2!49583 key!3717 newValue!93))))))

(assert (=> d!1345795 (= lt!1632516 (insertNoDuplicatedKeys!215 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 lt!1631951)) (_1!28085 (tuple2!49583 key!3717 newValue!93)) (_2!28085 (tuple2!49583 key!3717 newValue!93))))))

(assert (=> d!1345795 (= (+!1171 (addToMapMapFromBucket!426 lt!1631939 lt!1631951) (tuple2!49583 key!3717 newValue!93)) lt!1632517)))

(declare-fun b!4435247 () Bool)

(declare-fun res!1835485 () Bool)

(assert (=> b!4435247 (=> (not res!1835485) (not e!2761697))))

(assert (=> b!4435247 (= res!1835485 (= (getValueByKey!755 (toList!3590 lt!1632517) (_1!28085 (tuple2!49583 key!3717 newValue!93))) (Some!10768 (_2!28085 (tuple2!49583 key!3717 newValue!93)))))))

(declare-fun b!4435248 () Bool)

(assert (=> b!4435248 (= e!2761697 (contains!12255 (toList!3590 lt!1632517) (tuple2!49583 key!3717 newValue!93)))))

(assert (= (and d!1345795 res!1835486) b!4435247))

(assert (= (and b!4435247 res!1835485) b!4435248))

(declare-fun m!5121257 () Bool)

(assert (=> d!1345795 m!5121257))

(declare-fun m!5121259 () Bool)

(assert (=> d!1345795 m!5121259))

(declare-fun m!5121261 () Bool)

(assert (=> d!1345795 m!5121261))

(declare-fun m!5121263 () Bool)

(assert (=> d!1345795 m!5121263))

(declare-fun m!5121265 () Bool)

(assert (=> b!4435247 m!5121265))

(declare-fun m!5121267 () Bool)

(assert (=> b!4435248 m!5121267))

(assert (=> d!1345627 d!1345795))

(declare-fun d!1345797 () Bool)

(assert (=> d!1345797 (eq!435 (addToMapMapFromBucket!426 lt!1631939 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (+!1171 (addToMapMapFromBucket!426 lt!1631939 lt!1631951) (tuple2!49583 key!3717 newValue!93)))))

(assert (=> d!1345797 true))

(declare-fun _$15!670 () Unit!83085)

(assert (=> d!1345797 (= (choose!28117 lt!1631951 key!3717 newValue!93 lt!1631939) _$15!670)))

(declare-fun bs!761261 () Bool)

(assert (= bs!761261 d!1345797))

(assert (=> bs!761261 m!5120199))

(assert (=> bs!761261 m!5120661))

(assert (=> bs!761261 m!5120199))

(assert (=> bs!761261 m!5120671))

(assert (=> bs!761261 m!5120665))

(assert (=> bs!761261 m!5120661))

(assert (=> bs!761261 m!5120667))

(assert (=> bs!761261 m!5120671))

(assert (=> bs!761261 m!5120665))

(assert (=> d!1345627 d!1345797))

(declare-fun bs!761262 () Bool)

(declare-fun b!4435280 () Bool)

(assert (= bs!761262 (and b!4435280 b!4435103)))

(declare-fun lambda!156104 () Int)

(assert (=> bs!761262 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632437) (= lambda!156104 lambda!156093))))

(declare-fun bs!761263 () Bool)

(assert (= bs!761263 (and b!4435280 b!4434800)))

(assert (=> bs!761263 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156104 lambda!156053))))

(declare-fun bs!761264 () Bool)

(assert (= bs!761264 (and b!4435280 d!1345535)))

(assert (=> bs!761264 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632174) (= lambda!156104 lambda!156041))))

(declare-fun bs!761265 () Bool)

(assert (= bs!761265 (and b!4435280 d!1345619)))

(assert (=> bs!761265 (not (= lambda!156104 lambda!156061))))

(declare-fun bs!761266 () Bool)

(assert (= bs!761266 (and b!4435280 d!1345723)))

(assert (=> bs!761266 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632235) (= lambda!156104 lambda!156103))))

(declare-fun bs!761267 () Bool)

(assert (= bs!761267 (and b!4435280 b!4434871)))

(assert (=> bs!761267 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1631951) (= lambda!156104 lambda!156064))))

(declare-fun bs!761268 () Bool)

(assert (= bs!761268 (and b!4435280 b!4434762)))

(assert (=> bs!761268 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1631951) (= lambda!156104 lambda!156039))))

(assert (=> bs!761268 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632187) (= lambda!156104 lambda!156040))))

(declare-fun bs!761269 () Bool)

(assert (= bs!761269 (and b!4435280 b!4434801)))

(assert (=> bs!761269 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156104 lambda!156052))))

(declare-fun bs!761270 () Bool)

(assert (= bs!761270 (and b!4435280 d!1345633)))

(assert (=> bs!761270 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632306) (= lambda!156104 lambda!156066))))

(declare-fun bs!761271 () Bool)

(assert (= bs!761271 (and b!4435280 d!1345597)))

(assert (=> bs!761271 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632222) (= lambda!156104 lambda!156055))))

(declare-fun bs!761272 () Bool)

(assert (= bs!761272 (and b!4435280 d!1345703)))

(assert (=> bs!761272 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632424) (= lambda!156104 lambda!156094))))

(declare-fun bs!761273 () Bool)

(assert (= bs!761273 (and b!4435280 b!4435104)))

(assert (=> bs!761273 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156104 lambda!156089))))

(declare-fun bs!761274 () Bool)

(assert (= bs!761274 (and b!4435280 b!4434872)))

(assert (=> bs!761274 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1631951) (= lambda!156104 lambda!156063))))

(assert (=> bs!761267 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632319) (= lambda!156104 lambda!156065))))

(assert (=> bs!761263 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632235) (= lambda!156104 lambda!156054))))

(declare-fun bs!761275 () Bool)

(assert (= bs!761275 (and b!4435280 b!4434763)))

(assert (=> bs!761275 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1631951) (= lambda!156104 lambda!156037))))

(assert (=> bs!761262 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156104 lambda!156092))))

(assert (=> b!4435280 true))

(declare-fun bs!761276 () Bool)

(declare-fun b!4435279 () Bool)

(assert (= bs!761276 (and b!4435279 b!4435103)))

(declare-fun lambda!156105 () Int)

(assert (=> bs!761276 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632437) (= lambda!156105 lambda!156093))))

(declare-fun bs!761277 () Bool)

(assert (= bs!761277 (and b!4435279 b!4434800)))

(assert (=> bs!761277 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156105 lambda!156053))))

(declare-fun bs!761278 () Bool)

(assert (= bs!761278 (and b!4435279 d!1345619)))

(assert (=> bs!761278 (not (= lambda!156105 lambda!156061))))

(declare-fun bs!761279 () Bool)

(assert (= bs!761279 (and b!4435279 d!1345723)))

(assert (=> bs!761279 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632235) (= lambda!156105 lambda!156103))))

(declare-fun bs!761280 () Bool)

(assert (= bs!761280 (and b!4435279 b!4434871)))

(assert (=> bs!761280 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1631951) (= lambda!156105 lambda!156064))))

(declare-fun bs!761281 () Bool)

(assert (= bs!761281 (and b!4435279 b!4434762)))

(assert (=> bs!761281 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1631951) (= lambda!156105 lambda!156039))))

(assert (=> bs!761281 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632187) (= lambda!156105 lambda!156040))))

(declare-fun bs!761282 () Bool)

(assert (= bs!761282 (and b!4435279 b!4434801)))

(assert (=> bs!761282 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156105 lambda!156052))))

(declare-fun bs!761283 () Bool)

(assert (= bs!761283 (and b!4435279 d!1345633)))

(assert (=> bs!761283 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632306) (= lambda!156105 lambda!156066))))

(declare-fun bs!761284 () Bool)

(assert (= bs!761284 (and b!4435279 b!4435280)))

(assert (=> bs!761284 (= lambda!156105 lambda!156104)))

(declare-fun bs!761285 () Bool)

(assert (= bs!761285 (and b!4435279 d!1345535)))

(assert (=> bs!761285 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632174) (= lambda!156105 lambda!156041))))

(declare-fun bs!761286 () Bool)

(assert (= bs!761286 (and b!4435279 d!1345597)))

(assert (=> bs!761286 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632222) (= lambda!156105 lambda!156055))))

(declare-fun bs!761287 () Bool)

(assert (= bs!761287 (and b!4435279 d!1345703)))

(assert (=> bs!761287 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632424) (= lambda!156105 lambda!156094))))

(declare-fun bs!761288 () Bool)

(assert (= bs!761288 (and b!4435279 b!4435104)))

(assert (=> bs!761288 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156105 lambda!156089))))

(declare-fun bs!761289 () Bool)

(assert (= bs!761289 (and b!4435279 b!4434872)))

(assert (=> bs!761289 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1631951) (= lambda!156105 lambda!156063))))

(assert (=> bs!761280 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632319) (= lambda!156105 lambda!156065))))

(assert (=> bs!761277 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632235) (= lambda!156105 lambda!156054))))

(declare-fun bs!761290 () Bool)

(assert (= bs!761290 (and b!4435279 b!4434763)))

(assert (=> bs!761290 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1631951) (= lambda!156105 lambda!156037))))

(assert (=> bs!761276 (= (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156105 lambda!156092))))

(assert (=> b!4435279 true))

(declare-fun lt!1632560 () ListMap!2833)

(declare-fun lambda!156106 () Int)

(assert (=> bs!761276 (= (= lt!1632560 lt!1632437) (= lambda!156106 lambda!156093))))

(assert (=> bs!761277 (= (= lt!1632560 (+!1171 lt!1631951 lt!1631950)) (= lambda!156106 lambda!156053))))

(assert (=> b!4435279 (= (= lt!1632560 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156106 lambda!156105))))

(assert (=> bs!761278 (not (= lambda!156106 lambda!156061))))

(assert (=> bs!761279 (= (= lt!1632560 lt!1632235) (= lambda!156106 lambda!156103))))

(assert (=> bs!761280 (= (= lt!1632560 lt!1631951) (= lambda!156106 lambda!156064))))

(assert (=> bs!761281 (= (= lt!1632560 lt!1631951) (= lambda!156106 lambda!156039))))

(assert (=> bs!761281 (= (= lt!1632560 lt!1632187) (= lambda!156106 lambda!156040))))

(assert (=> bs!761282 (= (= lt!1632560 (+!1171 lt!1631951 lt!1631950)) (= lambda!156106 lambda!156052))))

(assert (=> bs!761283 (= (= lt!1632560 lt!1632306) (= lambda!156106 lambda!156066))))

(assert (=> bs!761284 (= (= lt!1632560 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156106 lambda!156104))))

(assert (=> bs!761285 (= (= lt!1632560 lt!1632174) (= lambda!156106 lambda!156041))))

(assert (=> bs!761286 (= (= lt!1632560 lt!1632222) (= lambda!156106 lambda!156055))))

(assert (=> bs!761287 (= (= lt!1632560 lt!1632424) (= lambda!156106 lambda!156094))))

(assert (=> bs!761288 (= (= lt!1632560 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156106 lambda!156089))))

(assert (=> bs!761289 (= (= lt!1632560 lt!1631951) (= lambda!156106 lambda!156063))))

(assert (=> bs!761280 (= (= lt!1632560 lt!1632319) (= lambda!156106 lambda!156065))))

(assert (=> bs!761277 (= (= lt!1632560 lt!1632235) (= lambda!156106 lambda!156054))))

(assert (=> bs!761290 (= (= lt!1632560 lt!1631951) (= lambda!156106 lambda!156037))))

(assert (=> bs!761276 (= (= lt!1632560 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156106 lambda!156092))))

(assert (=> b!4435279 true))

(declare-fun bs!761292 () Bool)

(declare-fun d!1345799 () Bool)

(assert (= bs!761292 (and d!1345799 b!4435103)))

(declare-fun lt!1632547 () ListMap!2833)

(declare-fun lambda!156107 () Int)

(assert (=> bs!761292 (= (= lt!1632547 lt!1632437) (= lambda!156107 lambda!156093))))

(declare-fun bs!761293 () Bool)

(assert (= bs!761293 (and d!1345799 b!4434800)))

(assert (=> bs!761293 (= (= lt!1632547 (+!1171 lt!1631951 lt!1631950)) (= lambda!156107 lambda!156053))))

(declare-fun bs!761294 () Bool)

(assert (= bs!761294 (and d!1345799 b!4435279)))

(assert (=> bs!761294 (= (= lt!1632547 lt!1632560) (= lambda!156107 lambda!156106))))

(assert (=> bs!761294 (= (= lt!1632547 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156107 lambda!156105))))

(declare-fun bs!761295 () Bool)

(assert (= bs!761295 (and d!1345799 d!1345619)))

(assert (=> bs!761295 (not (= lambda!156107 lambda!156061))))

(declare-fun bs!761296 () Bool)

(assert (= bs!761296 (and d!1345799 d!1345723)))

(assert (=> bs!761296 (= (= lt!1632547 lt!1632235) (= lambda!156107 lambda!156103))))

(declare-fun bs!761297 () Bool)

(assert (= bs!761297 (and d!1345799 b!4434871)))

(assert (=> bs!761297 (= (= lt!1632547 lt!1631951) (= lambda!156107 lambda!156064))))

(declare-fun bs!761298 () Bool)

(assert (= bs!761298 (and d!1345799 b!4434762)))

(assert (=> bs!761298 (= (= lt!1632547 lt!1631951) (= lambda!156107 lambda!156039))))

(assert (=> bs!761298 (= (= lt!1632547 lt!1632187) (= lambda!156107 lambda!156040))))

(declare-fun bs!761299 () Bool)

(assert (= bs!761299 (and d!1345799 b!4434801)))

(assert (=> bs!761299 (= (= lt!1632547 (+!1171 lt!1631951 lt!1631950)) (= lambda!156107 lambda!156052))))

(declare-fun bs!761300 () Bool)

(assert (= bs!761300 (and d!1345799 d!1345633)))

(assert (=> bs!761300 (= (= lt!1632547 lt!1632306) (= lambda!156107 lambda!156066))))

(declare-fun bs!761301 () Bool)

(assert (= bs!761301 (and d!1345799 b!4435280)))

(assert (=> bs!761301 (= (= lt!1632547 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156107 lambda!156104))))

(declare-fun bs!761302 () Bool)

(assert (= bs!761302 (and d!1345799 d!1345535)))

(assert (=> bs!761302 (= (= lt!1632547 lt!1632174) (= lambda!156107 lambda!156041))))

(declare-fun bs!761303 () Bool)

(assert (= bs!761303 (and d!1345799 d!1345597)))

(assert (=> bs!761303 (= (= lt!1632547 lt!1632222) (= lambda!156107 lambda!156055))))

(declare-fun bs!761304 () Bool)

(assert (= bs!761304 (and d!1345799 d!1345703)))

(assert (=> bs!761304 (= (= lt!1632547 lt!1632424) (= lambda!156107 lambda!156094))))

(declare-fun bs!761305 () Bool)

(assert (= bs!761305 (and d!1345799 b!4435104)))

(assert (=> bs!761305 (= (= lt!1632547 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156107 lambda!156089))))

(declare-fun bs!761306 () Bool)

(assert (= bs!761306 (and d!1345799 b!4434872)))

(assert (=> bs!761306 (= (= lt!1632547 lt!1631951) (= lambda!156107 lambda!156063))))

(assert (=> bs!761297 (= (= lt!1632547 lt!1632319) (= lambda!156107 lambda!156065))))

(assert (=> bs!761293 (= (= lt!1632547 lt!1632235) (= lambda!156107 lambda!156054))))

(declare-fun bs!761307 () Bool)

(assert (= bs!761307 (and d!1345799 b!4434763)))

(assert (=> bs!761307 (= (= lt!1632547 lt!1631951) (= lambda!156107 lambda!156037))))

(assert (=> bs!761292 (= (= lt!1632547 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156107 lambda!156092))))

(assert (=> d!1345799 true))

(declare-fun b!4435277 () Bool)

(declare-fun e!2761713 () Bool)

(assert (=> b!4435277 (= e!2761713 (forall!9648 (toList!3590 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) lambda!156106))))

(declare-fun call!308599 () Bool)

(declare-fun lt!1632543 () ListMap!2833)

(declare-fun c!754856 () Bool)

(declare-fun bm!308593 () Bool)

(assert (=> bm!308593 (= call!308599 (forall!9648 (ite c!754856 (toList!3590 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (toList!3590 lt!1632543)) (ite c!754856 lambda!156104 lambda!156106)))))

(declare-fun bm!308594 () Bool)

(declare-fun call!308600 () Unit!83085)

(assert (=> bm!308594 (= call!308600 (lemmaContainsAllItsOwnKeys!195 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))))))

(declare-fun b!4435278 () Bool)

(declare-fun e!2761714 () Bool)

(assert (=> b!4435278 (= e!2761714 (invariantList!827 (toList!3590 lt!1632547)))))

(assert (=> d!1345799 e!2761714))

(declare-fun res!1835497 () Bool)

(assert (=> d!1345799 (=> (not res!1835497) (not e!2761714))))

(assert (=> d!1345799 (= res!1835497 (forall!9648 lt!1631939 lambda!156107))))

(declare-fun e!2761712 () ListMap!2833)

(assert (=> d!1345799 (= lt!1632547 e!2761712)))

(assert (=> d!1345799 (= c!754856 ((_ is Nil!49707) lt!1631939))))

(assert (=> d!1345799 (noDuplicateKeys!801 lt!1631939)))

(assert (=> d!1345799 (= (addToMapMapFromBucket!426 lt!1631939 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) lt!1632547)))

(assert (=> b!4435279 (= e!2761712 lt!1632560)))

(assert (=> b!4435279 (= lt!1632543 (+!1171 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (h!55414 lt!1631939)))))

(assert (=> b!4435279 (= lt!1632560 (addToMapMapFromBucket!426 (t!356773 lt!1631939) (+!1171 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) (h!55414 lt!1631939))))))

(declare-fun lt!1632542 () Unit!83085)

(assert (=> b!4435279 (= lt!1632542 call!308600)))

(declare-fun call!308598 () Bool)

(assert (=> b!4435279 call!308598))

(declare-fun lt!1632555 () Unit!83085)

(assert (=> b!4435279 (= lt!1632555 lt!1632542)))

(assert (=> b!4435279 (forall!9648 (toList!3590 lt!1632543) lambda!156106)))

(declare-fun lt!1632540 () Unit!83085)

(declare-fun Unit!83213 () Unit!83085)

(assert (=> b!4435279 (= lt!1632540 Unit!83213)))

(assert (=> b!4435279 (forall!9648 (t!356773 lt!1631939) lambda!156106)))

(declare-fun lt!1632558 () Unit!83085)

(declare-fun Unit!83214 () Unit!83085)

(assert (=> b!4435279 (= lt!1632558 Unit!83214)))

(declare-fun lt!1632552 () Unit!83085)

(declare-fun Unit!83215 () Unit!83085)

(assert (=> b!4435279 (= lt!1632552 Unit!83215)))

(declare-fun lt!1632545 () Unit!83085)

(assert (=> b!4435279 (= lt!1632545 (forallContained!2125 (toList!3590 lt!1632543) lambda!156106 (h!55414 lt!1631939)))))

(assert (=> b!4435279 (contains!12250 lt!1632543 (_1!28085 (h!55414 lt!1631939)))))

(declare-fun lt!1632554 () Unit!83085)

(declare-fun Unit!83216 () Unit!83085)

(assert (=> b!4435279 (= lt!1632554 Unit!83216)))

(assert (=> b!4435279 (contains!12250 lt!1632560 (_1!28085 (h!55414 lt!1631939)))))

(declare-fun lt!1632549 () Unit!83085)

(declare-fun Unit!83217 () Unit!83085)

(assert (=> b!4435279 (= lt!1632549 Unit!83217)))

(assert (=> b!4435279 (forall!9648 lt!1631939 lambda!156106)))

(declare-fun lt!1632544 () Unit!83085)

(declare-fun Unit!83218 () Unit!83085)

(assert (=> b!4435279 (= lt!1632544 Unit!83218)))

(assert (=> b!4435279 call!308599))

(declare-fun lt!1632550 () Unit!83085)

(declare-fun Unit!83219 () Unit!83085)

(assert (=> b!4435279 (= lt!1632550 Unit!83219)))

(declare-fun lt!1632557 () Unit!83085)

(declare-fun Unit!83220 () Unit!83085)

(assert (=> b!4435279 (= lt!1632557 Unit!83220)))

(declare-fun lt!1632551 () Unit!83085)

(assert (=> b!4435279 (= lt!1632551 (addForallContainsKeyThenBeforeAdding!195 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632560 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))))

(assert (=> b!4435279 (forall!9648 (toList!3590 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) lambda!156106)))

(declare-fun lt!1632559 () Unit!83085)

(assert (=> b!4435279 (= lt!1632559 lt!1632551)))

(assert (=> b!4435279 (forall!9648 (toList!3590 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) lambda!156106)))

(declare-fun lt!1632541 () Unit!83085)

(declare-fun Unit!83221 () Unit!83085)

(assert (=> b!4435279 (= lt!1632541 Unit!83221)))

(declare-fun res!1835495 () Bool)

(assert (=> b!4435279 (= res!1835495 (forall!9648 lt!1631939 lambda!156106))))

(assert (=> b!4435279 (=> (not res!1835495) (not e!2761713))))

(assert (=> b!4435279 e!2761713))

(declare-fun lt!1632556 () Unit!83085)

(declare-fun Unit!83222 () Unit!83085)

(assert (=> b!4435279 (= lt!1632556 Unit!83222)))

(declare-fun bm!308595 () Bool)

(assert (=> bm!308595 (= call!308598 (forall!9648 (toList!3590 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (ite c!754856 lambda!156104 lambda!156105)))))

(assert (=> b!4435280 (= e!2761712 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)))))

(declare-fun lt!1632553 () Unit!83085)

(assert (=> b!4435280 (= lt!1632553 call!308600)))

(assert (=> b!4435280 call!308598))

(declare-fun lt!1632548 () Unit!83085)

(assert (=> b!4435280 (= lt!1632548 lt!1632553)))

(assert (=> b!4435280 call!308599))

(declare-fun lt!1632546 () Unit!83085)

(declare-fun Unit!83223 () Unit!83085)

(assert (=> b!4435280 (= lt!1632546 Unit!83223)))

(declare-fun b!4435281 () Bool)

(declare-fun res!1835496 () Bool)

(assert (=> b!4435281 (=> (not res!1835496) (not e!2761714))))

(assert (=> b!4435281 (= res!1835496 (forall!9648 (toList!3590 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) lambda!156107))))

(assert (= (and d!1345799 c!754856) b!4435280))

(assert (= (and d!1345799 (not c!754856)) b!4435279))

(assert (= (and b!4435279 res!1835495) b!4435277))

(assert (= (or b!4435280 b!4435279) bm!308594))

(assert (= (or b!4435280 b!4435279) bm!308595))

(assert (= (or b!4435280 b!4435279) bm!308593))

(assert (= (and d!1345799 res!1835497) b!4435281))

(assert (= (and b!4435281 res!1835496) b!4435278))

(declare-fun m!5121323 () Bool)

(assert (=> bm!308593 m!5121323))

(declare-fun m!5121325 () Bool)

(assert (=> bm!308595 m!5121325))

(declare-fun m!5121327 () Bool)

(assert (=> b!4435278 m!5121327))

(declare-fun m!5121329 () Bool)

(assert (=> b!4435279 m!5121329))

(declare-fun m!5121331 () Bool)

(assert (=> b!4435279 m!5121331))

(assert (=> b!4435279 m!5120671))

(declare-fun m!5121333 () Bool)

(assert (=> b!4435279 m!5121333))

(declare-fun m!5121335 () Bool)

(assert (=> b!4435279 m!5121335))

(declare-fun m!5121337 () Bool)

(assert (=> b!4435279 m!5121337))

(declare-fun m!5121339 () Bool)

(assert (=> b!4435279 m!5121339))

(declare-fun m!5121341 () Bool)

(assert (=> b!4435279 m!5121341))

(assert (=> b!4435279 m!5121339))

(declare-fun m!5121343 () Bool)

(assert (=> b!4435279 m!5121343))

(declare-fun m!5121345 () Bool)

(assert (=> b!4435279 m!5121345))

(assert (=> b!4435279 m!5121341))

(assert (=> b!4435279 m!5120671))

(assert (=> b!4435279 m!5121329))

(declare-fun m!5121347 () Bool)

(assert (=> b!4435279 m!5121347))

(declare-fun m!5121349 () Bool)

(assert (=> b!4435281 m!5121349))

(assert (=> b!4435277 m!5121341))

(assert (=> bm!308594 m!5120671))

(declare-fun m!5121351 () Bool)

(assert (=> bm!308594 m!5121351))

(declare-fun m!5121353 () Bool)

(assert (=> d!1345799 m!5121353))

(assert (=> d!1345799 m!5120565))

(assert (=> d!1345627 d!1345799))

(declare-fun d!1345811 () Bool)

(declare-fun res!1835518 () Bool)

(declare-fun e!2761744 () Bool)

(assert (=> d!1345811 (=> res!1835518 e!2761744)))

(assert (=> d!1345811 (= res!1835518 (and ((_ is Cons!49707) lt!1631939) (= (_1!28085 (h!55414 lt!1631939)) key!3717)))))

(assert (=> d!1345811 (= (containsKey!1192 lt!1631939 key!3717) e!2761744)))

(declare-fun b!4435324 () Bool)

(declare-fun e!2761745 () Bool)

(assert (=> b!4435324 (= e!2761744 e!2761745)))

(declare-fun res!1835519 () Bool)

(assert (=> b!4435324 (=> (not res!1835519) (not e!2761745))))

(assert (=> b!4435324 (= res!1835519 ((_ is Cons!49707) lt!1631939))))

(declare-fun b!4435325 () Bool)

(assert (=> b!4435325 (= e!2761745 (containsKey!1192 (t!356773 lt!1631939) key!3717))))

(assert (= (and d!1345811 (not res!1835518)) b!4435324))

(assert (= (and b!4435324 res!1835519) b!4435325))

(declare-fun m!5121369 () Bool)

(assert (=> b!4435325 m!5121369))

(assert (=> d!1345627 d!1345811))

(assert (=> d!1345627 d!1345633))

(declare-fun d!1345823 () Bool)

(declare-fun e!2761746 () Bool)

(assert (=> d!1345823 e!2761746))

(declare-fun res!1835521 () Bool)

(assert (=> d!1345823 (=> (not res!1835521) (not e!2761746))))

(declare-fun lt!1632575 () ListMap!2833)

(assert (=> d!1345823 (= res!1835521 (contains!12250 lt!1632575 (_1!28085 (tuple2!49583 key!3717 newValue!93))))))

(declare-fun lt!1632574 () List!49831)

(assert (=> d!1345823 (= lt!1632575 (ListMap!2834 lt!1632574))))

(declare-fun lt!1632573 () Unit!83085)

(declare-fun lt!1632572 () Unit!83085)

(assert (=> d!1345823 (= lt!1632573 lt!1632572)))

(assert (=> d!1345823 (= (getValueByKey!755 lt!1632574 (_1!28085 (tuple2!49583 key!3717 newValue!93))) (Some!10768 (_2!28085 (tuple2!49583 key!3717 newValue!93))))))

(assert (=> d!1345823 (= lt!1632572 (lemmaContainsTupThenGetReturnValue!488 lt!1632574 (_1!28085 (tuple2!49583 key!3717 newValue!93)) (_2!28085 (tuple2!49583 key!3717 newValue!93))))))

(assert (=> d!1345823 (= lt!1632574 (insertNoDuplicatedKeys!215 (toList!3590 lt!1631951) (_1!28085 (tuple2!49583 key!3717 newValue!93)) (_2!28085 (tuple2!49583 key!3717 newValue!93))))))

(assert (=> d!1345823 (= (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93)) lt!1632575)))

(declare-fun b!4435326 () Bool)

(declare-fun res!1835520 () Bool)

(assert (=> b!4435326 (=> (not res!1835520) (not e!2761746))))

(assert (=> b!4435326 (= res!1835520 (= (getValueByKey!755 (toList!3590 lt!1632575) (_1!28085 (tuple2!49583 key!3717 newValue!93))) (Some!10768 (_2!28085 (tuple2!49583 key!3717 newValue!93)))))))

(declare-fun b!4435327 () Bool)

(assert (=> b!4435327 (= e!2761746 (contains!12255 (toList!3590 lt!1632575) (tuple2!49583 key!3717 newValue!93)))))

(assert (= (and d!1345823 res!1835521) b!4435326))

(assert (= (and b!4435326 res!1835520) b!4435327))

(declare-fun m!5121371 () Bool)

(assert (=> d!1345823 m!5121371))

(declare-fun m!5121373 () Bool)

(assert (=> d!1345823 m!5121373))

(declare-fun m!5121375 () Bool)

(assert (=> d!1345823 m!5121375))

(declare-fun m!5121377 () Bool)

(assert (=> d!1345823 m!5121377))

(declare-fun m!5121379 () Bool)

(assert (=> b!4435326 m!5121379))

(declare-fun m!5121381 () Bool)

(assert (=> b!4435327 m!5121381))

(assert (=> d!1345627 d!1345823))

(declare-fun d!1345825 () Bool)

(assert (=> d!1345825 (= (eq!435 (addToMapMapFromBucket!426 lt!1631939 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (+!1171 (addToMapMapFromBucket!426 lt!1631939 lt!1631951) (tuple2!49583 key!3717 newValue!93))) (= (content!7990 (toList!3590 (addToMapMapFromBucket!426 lt!1631939 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))))) (content!7990 (toList!3590 (+!1171 (addToMapMapFromBucket!426 lt!1631939 lt!1631951) (tuple2!49583 key!3717 newValue!93))))))))

(declare-fun bs!761309 () Bool)

(assert (= bs!761309 d!1345825))

(declare-fun m!5121383 () Bool)

(assert (=> bs!761309 m!5121383))

(declare-fun m!5121385 () Bool)

(assert (=> bs!761309 m!5121385))

(assert (=> d!1345627 d!1345825))

(declare-fun d!1345827 () Bool)

(assert (=> d!1345827 (= (invariantList!827 (toList!3590 lt!1632291)) (noDuplicatedKeys!186 (toList!3590 lt!1632291)))))

(declare-fun bs!761310 () Bool)

(assert (= bs!761310 d!1345827))

(declare-fun m!5121387 () Bool)

(assert (=> bs!761310 m!5121387))

(assert (=> d!1345623 d!1345827))

(declare-fun d!1345829 () Bool)

(declare-fun res!1835526 () Bool)

(declare-fun e!2761751 () Bool)

(assert (=> d!1345829 (=> res!1835526 e!2761751)))

(assert (=> d!1345829 (= res!1835526 ((_ is Nil!49708) (toList!3589 lm!1616)))))

(assert (=> d!1345829 (= (forall!9646 (toList!3589 lm!1616) lambda!156062) e!2761751)))

(declare-fun b!4435332 () Bool)

(declare-fun e!2761752 () Bool)

(assert (=> b!4435332 (= e!2761751 e!2761752)))

(declare-fun res!1835527 () Bool)

(assert (=> b!4435332 (=> (not res!1835527) (not e!2761752))))

(assert (=> b!4435332 (= res!1835527 (dynLambda!20886 lambda!156062 (h!55415 (toList!3589 lm!1616))))))

(declare-fun b!4435333 () Bool)

(assert (=> b!4435333 (= e!2761752 (forall!9646 (t!356774 (toList!3589 lm!1616)) lambda!156062))))

(assert (= (and d!1345829 (not res!1835526)) b!4435332))

(assert (= (and b!4435332 res!1835527) b!4435333))

(declare-fun b_lambda!144363 () Bool)

(assert (=> (not b_lambda!144363) (not b!4435332)))

(declare-fun m!5121389 () Bool)

(assert (=> b!4435332 m!5121389))

(declare-fun m!5121391 () Bool)

(assert (=> b!4435333 m!5121391))

(assert (=> d!1345623 d!1345829))

(declare-fun bs!761311 () Bool)

(declare-fun b!4435337 () Bool)

(assert (= bs!761311 (and b!4435337 b!4435103)))

(declare-fun lambda!156108 () Int)

(assert (=> bs!761311 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632437) (= lambda!156108 lambda!156093))))

(declare-fun bs!761312 () Bool)

(assert (= bs!761312 (and b!4435337 b!4434800)))

(assert (=> bs!761312 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156108 lambda!156053))))

(declare-fun bs!761313 () Bool)

(assert (= bs!761313 (and b!4435337 b!4435279)))

(assert (=> bs!761313 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632560) (= lambda!156108 lambda!156106))))

(assert (=> bs!761313 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156108 lambda!156105))))

(declare-fun bs!761314 () Bool)

(assert (= bs!761314 (and b!4435337 d!1345619)))

(assert (=> bs!761314 (not (= lambda!156108 lambda!156061))))

(declare-fun bs!761315 () Bool)

(assert (= bs!761315 (and b!4435337 d!1345723)))

(assert (=> bs!761315 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632235) (= lambda!156108 lambda!156103))))

(declare-fun bs!761316 () Bool)

(assert (= bs!761316 (and b!4435337 b!4434871)))

(assert (=> bs!761316 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1631951) (= lambda!156108 lambda!156064))))

(declare-fun bs!761317 () Bool)

(assert (= bs!761317 (and b!4435337 b!4434762)))

(assert (=> bs!761317 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1631951) (= lambda!156108 lambda!156039))))

(assert (=> bs!761317 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632187) (= lambda!156108 lambda!156040))))

(declare-fun bs!761318 () Bool)

(assert (= bs!761318 (and b!4435337 b!4434801)))

(assert (=> bs!761318 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156108 lambda!156052))))

(declare-fun bs!761319 () Bool)

(assert (= bs!761319 (and b!4435337 d!1345633)))

(assert (=> bs!761319 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632306) (= lambda!156108 lambda!156066))))

(declare-fun bs!761320 () Bool)

(assert (= bs!761320 (and b!4435337 b!4435280)))

(assert (=> bs!761320 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156108 lambda!156104))))

(declare-fun bs!761321 () Bool)

(assert (= bs!761321 (and b!4435337 d!1345535)))

(assert (=> bs!761321 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632174) (= lambda!156108 lambda!156041))))

(declare-fun bs!761322 () Bool)

(assert (= bs!761322 (and b!4435337 d!1345597)))

(assert (=> bs!761322 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632222) (= lambda!156108 lambda!156055))))

(declare-fun bs!761323 () Bool)

(assert (= bs!761323 (and b!4435337 d!1345703)))

(assert (=> bs!761323 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632424) (= lambda!156108 lambda!156094))))

(declare-fun bs!761324 () Bool)

(assert (= bs!761324 (and b!4435337 b!4435104)))

(assert (=> bs!761324 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156108 lambda!156089))))

(declare-fun bs!761325 () Bool)

(assert (= bs!761325 (and b!4435337 b!4434872)))

(assert (=> bs!761325 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1631951) (= lambda!156108 lambda!156063))))

(assert (=> bs!761316 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632319) (= lambda!156108 lambda!156065))))

(assert (=> bs!761312 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632235) (= lambda!156108 lambda!156054))))

(declare-fun bs!761326 () Bool)

(assert (= bs!761326 (and b!4435337 b!4434763)))

(assert (=> bs!761326 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1631951) (= lambda!156108 lambda!156037))))

(declare-fun bs!761327 () Bool)

(assert (= bs!761327 (and b!4435337 d!1345799)))

(assert (=> bs!761327 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632547) (= lambda!156108 lambda!156107))))

(assert (=> bs!761311 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156108 lambda!156092))))

(assert (=> b!4435337 true))

(declare-fun bs!761328 () Bool)

(declare-fun b!4435336 () Bool)

(assert (= bs!761328 (and b!4435336 b!4435103)))

(declare-fun lambda!156109 () Int)

(assert (=> bs!761328 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632437) (= lambda!156109 lambda!156093))))

(declare-fun bs!761329 () Bool)

(assert (= bs!761329 (and b!4435336 b!4435337)))

(assert (=> bs!761329 (= lambda!156109 lambda!156108)))

(declare-fun bs!761330 () Bool)

(assert (= bs!761330 (and b!4435336 b!4434800)))

(assert (=> bs!761330 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156109 lambda!156053))))

(declare-fun bs!761331 () Bool)

(assert (= bs!761331 (and b!4435336 b!4435279)))

(assert (=> bs!761331 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632560) (= lambda!156109 lambda!156106))))

(assert (=> bs!761331 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156109 lambda!156105))))

(declare-fun bs!761332 () Bool)

(assert (= bs!761332 (and b!4435336 d!1345619)))

(assert (=> bs!761332 (not (= lambda!156109 lambda!156061))))

(declare-fun bs!761333 () Bool)

(assert (= bs!761333 (and b!4435336 d!1345723)))

(assert (=> bs!761333 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632235) (= lambda!156109 lambda!156103))))

(declare-fun bs!761334 () Bool)

(assert (= bs!761334 (and b!4435336 b!4434871)))

(assert (=> bs!761334 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1631951) (= lambda!156109 lambda!156064))))

(declare-fun bs!761335 () Bool)

(assert (= bs!761335 (and b!4435336 b!4434762)))

(assert (=> bs!761335 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1631951) (= lambda!156109 lambda!156039))))

(assert (=> bs!761335 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632187) (= lambda!156109 lambda!156040))))

(declare-fun bs!761336 () Bool)

(assert (= bs!761336 (and b!4435336 b!4434801)))

(assert (=> bs!761336 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156109 lambda!156052))))

(declare-fun bs!761337 () Bool)

(assert (= bs!761337 (and b!4435336 d!1345633)))

(assert (=> bs!761337 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632306) (= lambda!156109 lambda!156066))))

(declare-fun bs!761339 () Bool)

(assert (= bs!761339 (and b!4435336 b!4435280)))

(assert (=> bs!761339 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156109 lambda!156104))))

(declare-fun bs!761340 () Bool)

(assert (= bs!761340 (and b!4435336 d!1345535)))

(assert (=> bs!761340 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632174) (= lambda!156109 lambda!156041))))

(declare-fun bs!761341 () Bool)

(assert (= bs!761341 (and b!4435336 d!1345597)))

(assert (=> bs!761341 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632222) (= lambda!156109 lambda!156055))))

(declare-fun bs!761342 () Bool)

(assert (= bs!761342 (and b!4435336 d!1345703)))

(assert (=> bs!761342 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632424) (= lambda!156109 lambda!156094))))

(declare-fun bs!761343 () Bool)

(assert (= bs!761343 (and b!4435336 b!4435104)))

(assert (=> bs!761343 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156109 lambda!156089))))

(declare-fun bs!761344 () Bool)

(assert (= bs!761344 (and b!4435336 b!4434872)))

(assert (=> bs!761344 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1631951) (= lambda!156109 lambda!156063))))

(assert (=> bs!761334 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632319) (= lambda!156109 lambda!156065))))

(assert (=> bs!761330 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632235) (= lambda!156109 lambda!156054))))

(declare-fun bs!761345 () Bool)

(assert (= bs!761345 (and b!4435336 b!4434763)))

(assert (=> bs!761345 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1631951) (= lambda!156109 lambda!156037))))

(declare-fun bs!761346 () Bool)

(assert (= bs!761346 (and b!4435336 d!1345799)))

(assert (=> bs!761346 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632547) (= lambda!156109 lambda!156107))))

(assert (=> bs!761328 (= (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156109 lambda!156092))))

(assert (=> b!4435336 true))

(declare-fun lt!1632598 () ListMap!2833)

(declare-fun lambda!156110 () Int)

(assert (=> bs!761328 (= (= lt!1632598 lt!1632437) (= lambda!156110 lambda!156093))))

(assert (=> bs!761329 (= (= lt!1632598 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156110 lambda!156108))))

(assert (=> bs!761330 (= (= lt!1632598 (+!1171 lt!1631951 lt!1631950)) (= lambda!156110 lambda!156053))))

(assert (=> bs!761331 (= (= lt!1632598 lt!1632560) (= lambda!156110 lambda!156106))))

(assert (=> b!4435336 (= (= lt!1632598 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156110 lambda!156109))))

(assert (=> bs!761331 (= (= lt!1632598 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156110 lambda!156105))))

(assert (=> bs!761332 (not (= lambda!156110 lambda!156061))))

(assert (=> bs!761333 (= (= lt!1632598 lt!1632235) (= lambda!156110 lambda!156103))))

(assert (=> bs!761334 (= (= lt!1632598 lt!1631951) (= lambda!156110 lambda!156064))))

(assert (=> bs!761335 (= (= lt!1632598 lt!1631951) (= lambda!156110 lambda!156039))))

(assert (=> bs!761335 (= (= lt!1632598 lt!1632187) (= lambda!156110 lambda!156040))))

(assert (=> bs!761336 (= (= lt!1632598 (+!1171 lt!1631951 lt!1631950)) (= lambda!156110 lambda!156052))))

(assert (=> bs!761337 (= (= lt!1632598 lt!1632306) (= lambda!156110 lambda!156066))))

(assert (=> bs!761339 (= (= lt!1632598 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156110 lambda!156104))))

(assert (=> bs!761340 (= (= lt!1632598 lt!1632174) (= lambda!156110 lambda!156041))))

(assert (=> bs!761341 (= (= lt!1632598 lt!1632222) (= lambda!156110 lambda!156055))))

(assert (=> bs!761342 (= (= lt!1632598 lt!1632424) (= lambda!156110 lambda!156094))))

(assert (=> bs!761343 (= (= lt!1632598 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156110 lambda!156089))))

(assert (=> bs!761344 (= (= lt!1632598 lt!1631951) (= lambda!156110 lambda!156063))))

(assert (=> bs!761334 (= (= lt!1632598 lt!1632319) (= lambda!156110 lambda!156065))))

(assert (=> bs!761330 (= (= lt!1632598 lt!1632235) (= lambda!156110 lambda!156054))))

(assert (=> bs!761345 (= (= lt!1632598 lt!1631951) (= lambda!156110 lambda!156037))))

(assert (=> bs!761346 (= (= lt!1632598 lt!1632547) (= lambda!156110 lambda!156107))))

(assert (=> bs!761328 (= (= lt!1632598 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156110 lambda!156092))))

(assert (=> b!4435336 true))

(declare-fun bs!761347 () Bool)

(declare-fun d!1345831 () Bool)

(assert (= bs!761347 (and d!1345831 b!4435103)))

(declare-fun lt!1632585 () ListMap!2833)

(declare-fun lambda!156111 () Int)

(assert (=> bs!761347 (= (= lt!1632585 lt!1632437) (= lambda!156111 lambda!156093))))

(declare-fun bs!761348 () Bool)

(assert (= bs!761348 (and d!1345831 b!4435337)))

(assert (=> bs!761348 (= (= lt!1632585 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156111 lambda!156108))))

(declare-fun bs!761349 () Bool)

(assert (= bs!761349 (and d!1345831 b!4435336)))

(assert (=> bs!761349 (= (= lt!1632585 lt!1632598) (= lambda!156111 lambda!156110))))

(declare-fun bs!761350 () Bool)

(assert (= bs!761350 (and d!1345831 b!4434800)))

(assert (=> bs!761350 (= (= lt!1632585 (+!1171 lt!1631951 lt!1631950)) (= lambda!156111 lambda!156053))))

(declare-fun bs!761351 () Bool)

(assert (= bs!761351 (and d!1345831 b!4435279)))

(assert (=> bs!761351 (= (= lt!1632585 lt!1632560) (= lambda!156111 lambda!156106))))

(assert (=> bs!761349 (= (= lt!1632585 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156111 lambda!156109))))

(assert (=> bs!761351 (= (= lt!1632585 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156111 lambda!156105))))

(declare-fun bs!761352 () Bool)

(assert (= bs!761352 (and d!1345831 d!1345619)))

(assert (=> bs!761352 (not (= lambda!156111 lambda!156061))))

(declare-fun bs!761353 () Bool)

(assert (= bs!761353 (and d!1345831 d!1345723)))

(assert (=> bs!761353 (= (= lt!1632585 lt!1632235) (= lambda!156111 lambda!156103))))

(declare-fun bs!761354 () Bool)

(assert (= bs!761354 (and d!1345831 b!4434871)))

(assert (=> bs!761354 (= (= lt!1632585 lt!1631951) (= lambda!156111 lambda!156064))))

(declare-fun bs!761355 () Bool)

(assert (= bs!761355 (and d!1345831 b!4434762)))

(assert (=> bs!761355 (= (= lt!1632585 lt!1631951) (= lambda!156111 lambda!156039))))

(assert (=> bs!761355 (= (= lt!1632585 lt!1632187) (= lambda!156111 lambda!156040))))

(declare-fun bs!761356 () Bool)

(assert (= bs!761356 (and d!1345831 b!4434801)))

(assert (=> bs!761356 (= (= lt!1632585 (+!1171 lt!1631951 lt!1631950)) (= lambda!156111 lambda!156052))))

(declare-fun bs!761357 () Bool)

(assert (= bs!761357 (and d!1345831 d!1345633)))

(assert (=> bs!761357 (= (= lt!1632585 lt!1632306) (= lambda!156111 lambda!156066))))

(declare-fun bs!761358 () Bool)

(assert (= bs!761358 (and d!1345831 b!4435280)))

(assert (=> bs!761358 (= (= lt!1632585 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156111 lambda!156104))))

(declare-fun bs!761359 () Bool)

(assert (= bs!761359 (and d!1345831 d!1345535)))

(assert (=> bs!761359 (= (= lt!1632585 lt!1632174) (= lambda!156111 lambda!156041))))

(declare-fun bs!761360 () Bool)

(assert (= bs!761360 (and d!1345831 d!1345597)))

(assert (=> bs!761360 (= (= lt!1632585 lt!1632222) (= lambda!156111 lambda!156055))))

(declare-fun bs!761361 () Bool)

(assert (= bs!761361 (and d!1345831 d!1345703)))

(assert (=> bs!761361 (= (= lt!1632585 lt!1632424) (= lambda!156111 lambda!156094))))

(declare-fun bs!761362 () Bool)

(assert (= bs!761362 (and d!1345831 b!4435104)))

(assert (=> bs!761362 (= (= lt!1632585 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156111 lambda!156089))))

(declare-fun bs!761363 () Bool)

(assert (= bs!761363 (and d!1345831 b!4434872)))

(assert (=> bs!761363 (= (= lt!1632585 lt!1631951) (= lambda!156111 lambda!156063))))

(assert (=> bs!761354 (= (= lt!1632585 lt!1632319) (= lambda!156111 lambda!156065))))

(assert (=> bs!761350 (= (= lt!1632585 lt!1632235) (= lambda!156111 lambda!156054))))

(declare-fun bs!761364 () Bool)

(assert (= bs!761364 (and d!1345831 b!4434763)))

(assert (=> bs!761364 (= (= lt!1632585 lt!1631951) (= lambda!156111 lambda!156037))))

(declare-fun bs!761365 () Bool)

(assert (= bs!761365 (and d!1345831 d!1345799)))

(assert (=> bs!761365 (= (= lt!1632585 lt!1632547) (= lambda!156111 lambda!156107))))

(assert (=> bs!761347 (= (= lt!1632585 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156111 lambda!156092))))

(assert (=> d!1345831 true))

(declare-fun b!4435334 () Bool)

(declare-fun e!2761754 () Bool)

(assert (=> b!4435334 (= e!2761754 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) lambda!156110))))

(declare-fun bm!308600 () Bool)

(declare-fun lt!1632581 () ListMap!2833)

(declare-fun c!754868 () Bool)

(declare-fun call!308606 () Bool)

(assert (=> bm!308600 (= call!308606 (forall!9648 (ite c!754868 (toList!3590 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (toList!3590 lt!1632581)) (ite c!754868 lambda!156108 lambda!156110)))))

(declare-fun bm!308601 () Bool)

(declare-fun call!308607 () Unit!83085)

(assert (=> bm!308601 (= call!308607 (lemmaContainsAllItsOwnKeys!195 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))))))

(declare-fun b!4435335 () Bool)

(declare-fun e!2761755 () Bool)

(assert (=> b!4435335 (= e!2761755 (invariantList!827 (toList!3590 lt!1632585)))))

(assert (=> d!1345831 e!2761755))

(declare-fun res!1835530 () Bool)

(assert (=> d!1345831 (=> (not res!1835530) (not e!2761755))))

(assert (=> d!1345831 (= res!1835530 (forall!9648 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))) lambda!156111))))

(declare-fun e!2761753 () ListMap!2833)

(assert (=> d!1345831 (= lt!1632585 e!2761753)))

(assert (=> d!1345831 (= c!754868 ((_ is Nil!49707) (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616))))))))

(assert (=> d!1345831 (noDuplicateKeys!801 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))))))

(assert (=> d!1345831 (= (addToMapMapFromBucket!426 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) lt!1632585)))

(assert (=> b!4435336 (= e!2761753 lt!1632598)))

(assert (=> b!4435336 (= lt!1632581 (+!1171 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (h!55414 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))))))))

(assert (=> b!4435336 (= lt!1632598 (addToMapMapFromBucket!426 (t!356773 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616))))) (+!1171 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) (h!55414 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616))))))))))

(declare-fun lt!1632580 () Unit!83085)

(assert (=> b!4435336 (= lt!1632580 call!308607)))

(declare-fun call!308605 () Bool)

(assert (=> b!4435336 call!308605))

(declare-fun lt!1632593 () Unit!83085)

(assert (=> b!4435336 (= lt!1632593 lt!1632580)))

(assert (=> b!4435336 (forall!9648 (toList!3590 lt!1632581) lambda!156110)))

(declare-fun lt!1632578 () Unit!83085)

(declare-fun Unit!83239 () Unit!83085)

(assert (=> b!4435336 (= lt!1632578 Unit!83239)))

(assert (=> b!4435336 (forall!9648 (t!356773 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616))))) lambda!156110)))

(declare-fun lt!1632596 () Unit!83085)

(declare-fun Unit!83240 () Unit!83085)

(assert (=> b!4435336 (= lt!1632596 Unit!83240)))

(declare-fun lt!1632590 () Unit!83085)

(declare-fun Unit!83241 () Unit!83085)

(assert (=> b!4435336 (= lt!1632590 Unit!83241)))

(declare-fun lt!1632583 () Unit!83085)

(assert (=> b!4435336 (= lt!1632583 (forallContained!2125 (toList!3590 lt!1632581) lambda!156110 (h!55414 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))))))))

(assert (=> b!4435336 (contains!12250 lt!1632581 (_1!28085 (h!55414 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))))))))

(declare-fun lt!1632592 () Unit!83085)

(declare-fun Unit!83242 () Unit!83085)

(assert (=> b!4435336 (= lt!1632592 Unit!83242)))

(assert (=> b!4435336 (contains!12250 lt!1632598 (_1!28085 (h!55414 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))))))))

(declare-fun lt!1632587 () Unit!83085)

(declare-fun Unit!83243 () Unit!83085)

(assert (=> b!4435336 (= lt!1632587 Unit!83243)))

(assert (=> b!4435336 (forall!9648 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))) lambda!156110)))

(declare-fun lt!1632582 () Unit!83085)

(declare-fun Unit!83244 () Unit!83085)

(assert (=> b!4435336 (= lt!1632582 Unit!83244)))

(assert (=> b!4435336 call!308606))

(declare-fun lt!1632588 () Unit!83085)

(declare-fun Unit!83245 () Unit!83085)

(assert (=> b!4435336 (= lt!1632588 Unit!83245)))

(declare-fun lt!1632595 () Unit!83085)

(declare-fun Unit!83246 () Unit!83085)

(assert (=> b!4435336 (= lt!1632595 Unit!83246)))

(declare-fun lt!1632589 () Unit!83085)

(assert (=> b!4435336 (= lt!1632589 (addForallContainsKeyThenBeforeAdding!195 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632598 (_1!28085 (h!55414 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))))) (_2!28085 (h!55414 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616))))))))))

(assert (=> b!4435336 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) lambda!156110)))

(declare-fun lt!1632597 () Unit!83085)

(assert (=> b!4435336 (= lt!1632597 lt!1632589)))

(assert (=> b!4435336 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) lambda!156110)))

(declare-fun lt!1632579 () Unit!83085)

(declare-fun Unit!83247 () Unit!83085)

(assert (=> b!4435336 (= lt!1632579 Unit!83247)))

(declare-fun res!1835528 () Bool)

(assert (=> b!4435336 (= res!1835528 (forall!9648 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616)))) lambda!156110))))

(assert (=> b!4435336 (=> (not res!1835528) (not e!2761754))))

(assert (=> b!4435336 e!2761754))

(declare-fun lt!1632594 () Unit!83085)

(declare-fun Unit!83248 () Unit!83085)

(assert (=> b!4435336 (= lt!1632594 Unit!83248)))

(declare-fun bm!308602 () Bool)

(assert (=> bm!308602 (= call!308605 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (ite c!754868 lambda!156108 lambda!156109)))))

(assert (=> b!4435337 (= e!2761753 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))))))

(declare-fun lt!1632591 () Unit!83085)

(assert (=> b!4435337 (= lt!1632591 call!308607)))

(assert (=> b!4435337 call!308605))

(declare-fun lt!1632586 () Unit!83085)

(assert (=> b!4435337 (= lt!1632586 lt!1632591)))

(assert (=> b!4435337 call!308606))

(declare-fun lt!1632584 () Unit!83085)

(declare-fun Unit!83249 () Unit!83085)

(assert (=> b!4435337 (= lt!1632584 Unit!83249)))

(declare-fun b!4435338 () Bool)

(declare-fun res!1835529 () Bool)

(assert (=> b!4435338 (=> (not res!1835529) (not e!2761755))))

(assert (=> b!4435338 (= res!1835529 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) lambda!156111))))

(assert (= (and d!1345831 c!754868) b!4435337))

(assert (= (and d!1345831 (not c!754868)) b!4435336))

(assert (= (and b!4435336 res!1835528) b!4435334))

(assert (= (or b!4435337 b!4435336) bm!308601))

(assert (= (or b!4435337 b!4435336) bm!308602))

(assert (= (or b!4435337 b!4435336) bm!308600))

(assert (= (and d!1345831 res!1835530) b!4435338))

(assert (= (and b!4435338 res!1835529) b!4435335))

(declare-fun m!5121419 () Bool)

(assert (=> bm!308600 m!5121419))

(declare-fun m!5121421 () Bool)

(assert (=> bm!308602 m!5121421))

(declare-fun m!5121423 () Bool)

(assert (=> b!4435335 m!5121423))

(declare-fun m!5121425 () Bool)

(assert (=> b!4435336 m!5121425))

(declare-fun m!5121427 () Bool)

(assert (=> b!4435336 m!5121427))

(assert (=> b!4435336 m!5120529))

(declare-fun m!5121429 () Bool)

(assert (=> b!4435336 m!5121429))

(declare-fun m!5121431 () Bool)

(assert (=> b!4435336 m!5121431))

(declare-fun m!5121433 () Bool)

(assert (=> b!4435336 m!5121433))

(declare-fun m!5121435 () Bool)

(assert (=> b!4435336 m!5121435))

(declare-fun m!5121437 () Bool)

(assert (=> b!4435336 m!5121437))

(assert (=> b!4435336 m!5121435))

(declare-fun m!5121439 () Bool)

(assert (=> b!4435336 m!5121439))

(declare-fun m!5121441 () Bool)

(assert (=> b!4435336 m!5121441))

(assert (=> b!4435336 m!5121437))

(assert (=> b!4435336 m!5120529))

(assert (=> b!4435336 m!5121425))

(declare-fun m!5121443 () Bool)

(assert (=> b!4435336 m!5121443))

(declare-fun m!5121445 () Bool)

(assert (=> b!4435338 m!5121445))

(assert (=> b!4435334 m!5121437))

(assert (=> bm!308601 m!5120529))

(declare-fun m!5121447 () Bool)

(assert (=> bm!308601 m!5121447))

(declare-fun m!5121449 () Bool)

(assert (=> d!1345831 m!5121449))

(declare-fun m!5121451 () Bool)

(assert (=> d!1345831 m!5121451))

(assert (=> b!4434796 d!1345831))

(declare-fun bs!761366 () Bool)

(declare-fun d!1345845 () Bool)

(assert (= bs!761366 (and d!1345845 d!1345623)))

(declare-fun lambda!156112 () Int)

(assert (=> bs!761366 (= lambda!156112 lambda!156062)))

(declare-fun bs!761367 () Bool)

(assert (= bs!761367 (and d!1345845 d!1345603)))

(assert (=> bs!761367 (not (= lambda!156112 lambda!156058))))

(declare-fun bs!761368 () Bool)

(assert (= bs!761368 (and d!1345845 d!1345579)))

(assert (=> bs!761368 (= lambda!156112 lambda!156050)))

(declare-fun bs!761369 () Bool)

(assert (= bs!761369 (and d!1345845 d!1345595)))

(assert (=> bs!761369 (= lambda!156112 lambda!156051)))

(declare-fun bs!761370 () Bool)

(assert (= bs!761370 (and d!1345845 start!433412)))

(assert (=> bs!761370 (= lambda!156112 lambda!155964)))

(declare-fun lt!1632607 () ListMap!2833)

(assert (=> d!1345845 (invariantList!827 (toList!3590 lt!1632607))))

(declare-fun e!2761771 () ListMap!2833)

(assert (=> d!1345845 (= lt!1632607 e!2761771)))

(declare-fun c!754872 () Bool)

(assert (=> d!1345845 (= c!754872 ((_ is Cons!49708) (t!356774 (t!356774 (toList!3589 lm!1616)))))))

(assert (=> d!1345845 (forall!9646 (t!356774 (t!356774 (toList!3589 lm!1616))) lambda!156112)))

(assert (=> d!1345845 (= (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616)))) lt!1632607)))

(declare-fun b!4435360 () Bool)

(assert (=> b!4435360 (= e!2761771 (addToMapMapFromBucket!426 (_2!28086 (h!55415 (t!356774 (t!356774 (toList!3589 lm!1616))))) (extractMap!862 (t!356774 (t!356774 (t!356774 (toList!3589 lm!1616)))))))))

(declare-fun b!4435361 () Bool)

(assert (=> b!4435361 (= e!2761771 (ListMap!2834 Nil!49707))))

(assert (= (and d!1345845 c!754872) b!4435360))

(assert (= (and d!1345845 (not c!754872)) b!4435361))

(declare-fun m!5121453 () Bool)

(assert (=> d!1345845 m!5121453))

(declare-fun m!5121455 () Bool)

(assert (=> d!1345845 m!5121455))

(declare-fun m!5121457 () Bool)

(assert (=> b!4435360 m!5121457))

(assert (=> b!4435360 m!5121457))

(declare-fun m!5121459 () Bool)

(assert (=> b!4435360 m!5121459))

(assert (=> b!4434796 d!1345845))

(declare-fun d!1345847 () Bool)

(declare-fun res!1835546 () Bool)

(declare-fun e!2761772 () Bool)

(assert (=> d!1345847 (=> res!1835546 e!2761772)))

(assert (=> d!1345847 (= res!1835546 (and ((_ is Cons!49707) (t!356773 newBucket!194)) (= (_1!28085 (h!55414 (t!356773 newBucket!194))) (_1!28085 (h!55414 newBucket!194)))))))

(assert (=> d!1345847 (= (containsKey!1192 (t!356773 newBucket!194) (_1!28085 (h!55414 newBucket!194))) e!2761772)))

(declare-fun b!4435362 () Bool)

(declare-fun e!2761773 () Bool)

(assert (=> b!4435362 (= e!2761772 e!2761773)))

(declare-fun res!1835547 () Bool)

(assert (=> b!4435362 (=> (not res!1835547) (not e!2761773))))

(assert (=> b!4435362 (= res!1835547 ((_ is Cons!49707) (t!356773 newBucket!194)))))

(declare-fun b!4435363 () Bool)

(assert (=> b!4435363 (= e!2761773 (containsKey!1192 (t!356773 (t!356773 newBucket!194)) (_1!28085 (h!55414 newBucket!194))))))

(assert (= (and d!1345847 (not res!1835546)) b!4435362))

(assert (= (and b!4435362 res!1835547) b!4435363))

(declare-fun m!5121461 () Bool)

(assert (=> b!4435363 m!5121461))

(assert (=> b!4434809 d!1345847))

(declare-fun d!1345849 () Bool)

(declare-fun res!1835548 () Bool)

(declare-fun e!2761774 () Bool)

(assert (=> d!1345849 (=> res!1835548 e!2761774)))

(assert (=> d!1345849 (= res!1835548 ((_ is Nil!49708) (t!356774 (toList!3589 lt!1631945))))))

(assert (=> d!1345849 (= (forall!9646 (t!356774 (toList!3589 lt!1631945)) lambda!155964) e!2761774)))

(declare-fun b!4435364 () Bool)

(declare-fun e!2761775 () Bool)

(assert (=> b!4435364 (= e!2761774 e!2761775)))

(declare-fun res!1835549 () Bool)

(assert (=> b!4435364 (=> (not res!1835549) (not e!2761775))))

(assert (=> b!4435364 (= res!1835549 (dynLambda!20886 lambda!155964 (h!55415 (t!356774 (toList!3589 lt!1631945)))))))

(declare-fun b!4435365 () Bool)

(assert (=> b!4435365 (= e!2761775 (forall!9646 (t!356774 (t!356774 (toList!3589 lt!1631945))) lambda!155964))))

(assert (= (and d!1345849 (not res!1835548)) b!4435364))

(assert (= (and b!4435364 res!1835549) b!4435365))

(declare-fun b_lambda!144365 () Bool)

(assert (=> (not b_lambda!144365) (not b!4435364)))

(declare-fun m!5121463 () Bool)

(assert (=> b!4435364 m!5121463))

(declare-fun m!5121465 () Bool)

(assert (=> b!4435365 m!5121465))

(assert (=> b!4434814 d!1345849))

(assert (=> b!4434798 d!1345713))

(declare-fun bs!761371 () Bool)

(declare-fun b!4435369 () Bool)

(assert (= bs!761371 (and b!4435369 b!4435103)))

(declare-fun lambda!156113 () Int)

(assert (=> bs!761371 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632437) (= lambda!156113 lambda!156093))))

(declare-fun bs!761372 () Bool)

(assert (= bs!761372 (and b!4435369 b!4435337)))

(assert (=> bs!761372 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156113 lambda!156108))))

(declare-fun bs!761373 () Bool)

(assert (= bs!761373 (and b!4435369 b!4434800)))

(assert (=> bs!761373 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156113 lambda!156053))))

(declare-fun bs!761374 () Bool)

(assert (= bs!761374 (and b!4435369 b!4435279)))

(assert (=> bs!761374 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632560) (= lambda!156113 lambda!156106))))

(declare-fun bs!761375 () Bool)

(assert (= bs!761375 (and b!4435369 b!4435336)))

(assert (=> bs!761375 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156113 lambda!156109))))

(assert (=> bs!761374 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156113 lambda!156105))))

(declare-fun bs!761376 () Bool)

(assert (= bs!761376 (and b!4435369 d!1345619)))

(assert (=> bs!761376 (not (= lambda!156113 lambda!156061))))

(declare-fun bs!761377 () Bool)

(assert (= bs!761377 (and b!4435369 d!1345723)))

(assert (=> bs!761377 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632235) (= lambda!156113 lambda!156103))))

(declare-fun bs!761378 () Bool)

(assert (= bs!761378 (and b!4435369 b!4434871)))

(assert (=> bs!761378 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1631951) (= lambda!156113 lambda!156064))))

(declare-fun bs!761379 () Bool)

(assert (= bs!761379 (and b!4435369 b!4434762)))

(assert (=> bs!761379 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1631951) (= lambda!156113 lambda!156039))))

(assert (=> bs!761379 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632187) (= lambda!156113 lambda!156040))))

(declare-fun bs!761380 () Bool)

(assert (= bs!761380 (and b!4435369 b!4434801)))

(assert (=> bs!761380 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156113 lambda!156052))))

(declare-fun bs!761381 () Bool)

(assert (= bs!761381 (and b!4435369 d!1345633)))

(assert (=> bs!761381 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632306) (= lambda!156113 lambda!156066))))

(assert (=> bs!761375 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632598) (= lambda!156113 lambda!156110))))

(declare-fun bs!761382 () Bool)

(assert (= bs!761382 (and b!4435369 d!1345831)))

(assert (=> bs!761382 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632585) (= lambda!156113 lambda!156111))))

(declare-fun bs!761383 () Bool)

(assert (= bs!761383 (and b!4435369 b!4435280)))

(assert (=> bs!761383 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156113 lambda!156104))))

(declare-fun bs!761384 () Bool)

(assert (= bs!761384 (and b!4435369 d!1345535)))

(assert (=> bs!761384 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632174) (= lambda!156113 lambda!156041))))

(declare-fun bs!761385 () Bool)

(assert (= bs!761385 (and b!4435369 d!1345597)))

(assert (=> bs!761385 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632222) (= lambda!156113 lambda!156055))))

(declare-fun bs!761386 () Bool)

(assert (= bs!761386 (and b!4435369 d!1345703)))

(assert (=> bs!761386 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632424) (= lambda!156113 lambda!156094))))

(declare-fun bs!761387 () Bool)

(assert (= bs!761387 (and b!4435369 b!4435104)))

(assert (=> bs!761387 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156113 lambda!156089))))

(declare-fun bs!761388 () Bool)

(assert (= bs!761388 (and b!4435369 b!4434872)))

(assert (=> bs!761388 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1631951) (= lambda!156113 lambda!156063))))

(assert (=> bs!761378 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632319) (= lambda!156113 lambda!156065))))

(assert (=> bs!761373 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632235) (= lambda!156113 lambda!156054))))

(declare-fun bs!761389 () Bool)

(assert (= bs!761389 (and b!4435369 b!4434763)))

(assert (=> bs!761389 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1631951) (= lambda!156113 lambda!156037))))

(declare-fun bs!761390 () Bool)

(assert (= bs!761390 (and b!4435369 d!1345799)))

(assert (=> bs!761390 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632547) (= lambda!156113 lambda!156107))))

(assert (=> bs!761371 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156113 lambda!156092))))

(assert (=> b!4435369 true))

(declare-fun bs!761391 () Bool)

(declare-fun b!4435368 () Bool)

(assert (= bs!761391 (and b!4435368 b!4435103)))

(declare-fun lambda!156114 () Int)

(assert (=> bs!761391 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632437) (= lambda!156114 lambda!156093))))

(declare-fun bs!761392 () Bool)

(assert (= bs!761392 (and b!4435368 b!4435337)))

(assert (=> bs!761392 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156114 lambda!156108))))

(declare-fun bs!761393 () Bool)

(assert (= bs!761393 (and b!4435368 b!4434800)))

(assert (=> bs!761393 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156114 lambda!156053))))

(declare-fun bs!761394 () Bool)

(assert (= bs!761394 (and b!4435368 b!4435279)))

(assert (=> bs!761394 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632560) (= lambda!156114 lambda!156106))))

(declare-fun bs!761395 () Bool)

(assert (= bs!761395 (and b!4435368 b!4435336)))

(assert (=> bs!761395 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156114 lambda!156109))))

(assert (=> bs!761394 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156114 lambda!156105))))

(declare-fun bs!761396 () Bool)

(assert (= bs!761396 (and b!4435368 d!1345619)))

(assert (=> bs!761396 (not (= lambda!156114 lambda!156061))))

(declare-fun bs!761397 () Bool)

(assert (= bs!761397 (and b!4435368 d!1345723)))

(assert (=> bs!761397 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632235) (= lambda!156114 lambda!156103))))

(declare-fun bs!761398 () Bool)

(assert (= bs!761398 (and b!4435368 b!4434871)))

(assert (=> bs!761398 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1631951) (= lambda!156114 lambda!156064))))

(declare-fun bs!761399 () Bool)

(assert (= bs!761399 (and b!4435368 b!4434762)))

(assert (=> bs!761399 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1631951) (= lambda!156114 lambda!156039))))

(assert (=> bs!761399 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632187) (= lambda!156114 lambda!156040))))

(declare-fun bs!761400 () Bool)

(assert (= bs!761400 (and b!4435368 b!4434801)))

(assert (=> bs!761400 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156114 lambda!156052))))

(declare-fun bs!761401 () Bool)

(assert (= bs!761401 (and b!4435368 d!1345633)))

(assert (=> bs!761401 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632306) (= lambda!156114 lambda!156066))))

(assert (=> bs!761395 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632598) (= lambda!156114 lambda!156110))))

(declare-fun bs!761402 () Bool)

(assert (= bs!761402 (and b!4435368 d!1345831)))

(assert (=> bs!761402 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632585) (= lambda!156114 lambda!156111))))

(declare-fun bs!761403 () Bool)

(assert (= bs!761403 (and b!4435368 b!4435280)))

(assert (=> bs!761403 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156114 lambda!156104))))

(declare-fun bs!761404 () Bool)

(assert (= bs!761404 (and b!4435368 d!1345535)))

(assert (=> bs!761404 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632174) (= lambda!156114 lambda!156041))))

(declare-fun bs!761405 () Bool)

(assert (= bs!761405 (and b!4435368 d!1345597)))

(assert (=> bs!761405 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632222) (= lambda!156114 lambda!156055))))

(declare-fun bs!761406 () Bool)

(assert (= bs!761406 (and b!4435368 d!1345703)))

(assert (=> bs!761406 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632424) (= lambda!156114 lambda!156094))))

(declare-fun bs!761407 () Bool)

(assert (= bs!761407 (and b!4435368 b!4435104)))

(assert (=> bs!761407 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156114 lambda!156089))))

(declare-fun bs!761408 () Bool)

(assert (= bs!761408 (and b!4435368 b!4434872)))

(assert (=> bs!761408 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1631951) (= lambda!156114 lambda!156063))))

(assert (=> bs!761398 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632319) (= lambda!156114 lambda!156065))))

(declare-fun bs!761409 () Bool)

(assert (= bs!761409 (and b!4435368 b!4435369)))

(assert (=> bs!761409 (= lambda!156114 lambda!156113)))

(assert (=> bs!761393 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632235) (= lambda!156114 lambda!156054))))

(declare-fun bs!761410 () Bool)

(assert (= bs!761410 (and b!4435368 b!4434763)))

(assert (=> bs!761410 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1631951) (= lambda!156114 lambda!156037))))

(declare-fun bs!761411 () Bool)

(assert (= bs!761411 (and b!4435368 d!1345799)))

(assert (=> bs!761411 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632547) (= lambda!156114 lambda!156107))))

(assert (=> bs!761391 (= (= (extractMap!862 (t!356774 (toList!3589 lm!1616))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156114 lambda!156092))))

(assert (=> b!4435368 true))

(declare-fun lt!1632628 () ListMap!2833)

(declare-fun lambda!156115 () Int)

(assert (=> bs!761391 (= (= lt!1632628 lt!1632437) (= lambda!156115 lambda!156093))))

(assert (=> bs!761392 (= (= lt!1632628 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156115 lambda!156108))))

(assert (=> bs!761393 (= (= lt!1632628 (+!1171 lt!1631951 lt!1631950)) (= lambda!156115 lambda!156053))))

(assert (=> bs!761394 (= (= lt!1632628 lt!1632560) (= lambda!156115 lambda!156106))))

(assert (=> bs!761395 (= (= lt!1632628 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156115 lambda!156109))))

(assert (=> bs!761394 (= (= lt!1632628 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156115 lambda!156105))))

(assert (=> bs!761396 (not (= lambda!156115 lambda!156061))))

(assert (=> bs!761397 (= (= lt!1632628 lt!1632235) (= lambda!156115 lambda!156103))))

(assert (=> bs!761399 (= (= lt!1632628 lt!1631951) (= lambda!156115 lambda!156039))))

(assert (=> bs!761399 (= (= lt!1632628 lt!1632187) (= lambda!156115 lambda!156040))))

(assert (=> bs!761400 (= (= lt!1632628 (+!1171 lt!1631951 lt!1631950)) (= lambda!156115 lambda!156052))))

(assert (=> bs!761401 (= (= lt!1632628 lt!1632306) (= lambda!156115 lambda!156066))))

(assert (=> bs!761395 (= (= lt!1632628 lt!1632598) (= lambda!156115 lambda!156110))))

(assert (=> bs!761402 (= (= lt!1632628 lt!1632585) (= lambda!156115 lambda!156111))))

(assert (=> bs!761403 (= (= lt!1632628 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156115 lambda!156104))))

(assert (=> bs!761404 (= (= lt!1632628 lt!1632174) (= lambda!156115 lambda!156041))))

(assert (=> bs!761405 (= (= lt!1632628 lt!1632222) (= lambda!156115 lambda!156055))))

(assert (=> bs!761406 (= (= lt!1632628 lt!1632424) (= lambda!156115 lambda!156094))))

(assert (=> bs!761407 (= (= lt!1632628 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156115 lambda!156089))))

(assert (=> bs!761408 (= (= lt!1632628 lt!1631951) (= lambda!156115 lambda!156063))))

(assert (=> bs!761398 (= (= lt!1632628 lt!1632319) (= lambda!156115 lambda!156065))))

(assert (=> bs!761409 (= (= lt!1632628 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156115 lambda!156113))))

(assert (=> bs!761393 (= (= lt!1632628 lt!1632235) (= lambda!156115 lambda!156054))))

(assert (=> bs!761398 (= (= lt!1632628 lt!1631951) (= lambda!156115 lambda!156064))))

(assert (=> b!4435368 (= (= lt!1632628 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156115 lambda!156114))))

(assert (=> bs!761410 (= (= lt!1632628 lt!1631951) (= lambda!156115 lambda!156037))))

(assert (=> bs!761411 (= (= lt!1632628 lt!1632547) (= lambda!156115 lambda!156107))))

(assert (=> bs!761391 (= (= lt!1632628 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156115 lambda!156092))))

(assert (=> b!4435368 true))

(declare-fun bs!761412 () Bool)

(declare-fun d!1345851 () Bool)

(assert (= bs!761412 (and d!1345851 b!4435103)))

(declare-fun lt!1632615 () ListMap!2833)

(declare-fun lambda!156116 () Int)

(assert (=> bs!761412 (= (= lt!1632615 lt!1632437) (= lambda!156116 lambda!156093))))

(declare-fun bs!761413 () Bool)

(assert (= bs!761413 (and d!1345851 b!4435337)))

(assert (=> bs!761413 (= (= lt!1632615 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156116 lambda!156108))))

(declare-fun bs!761414 () Bool)

(assert (= bs!761414 (and d!1345851 b!4435279)))

(assert (=> bs!761414 (= (= lt!1632615 lt!1632560) (= lambda!156116 lambda!156106))))

(declare-fun bs!761415 () Bool)

(assert (= bs!761415 (and d!1345851 b!4435336)))

(assert (=> bs!761415 (= (= lt!1632615 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156116 lambda!156109))))

(assert (=> bs!761414 (= (= lt!1632615 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156116 lambda!156105))))

(declare-fun bs!761416 () Bool)

(assert (= bs!761416 (and d!1345851 d!1345619)))

(assert (=> bs!761416 (not (= lambda!156116 lambda!156061))))

(declare-fun bs!761417 () Bool)

(assert (= bs!761417 (and d!1345851 d!1345723)))

(assert (=> bs!761417 (= (= lt!1632615 lt!1632235) (= lambda!156116 lambda!156103))))

(declare-fun bs!761418 () Bool)

(assert (= bs!761418 (and d!1345851 b!4434762)))

(assert (=> bs!761418 (= (= lt!1632615 lt!1631951) (= lambda!156116 lambda!156039))))

(assert (=> bs!761418 (= (= lt!1632615 lt!1632187) (= lambda!156116 lambda!156040))))

(declare-fun bs!761419 () Bool)

(assert (= bs!761419 (and d!1345851 b!4434801)))

(assert (=> bs!761419 (= (= lt!1632615 (+!1171 lt!1631951 lt!1631950)) (= lambda!156116 lambda!156052))))

(declare-fun bs!761420 () Bool)

(assert (= bs!761420 (and d!1345851 d!1345633)))

(assert (=> bs!761420 (= (= lt!1632615 lt!1632306) (= lambda!156116 lambda!156066))))

(assert (=> bs!761415 (= (= lt!1632615 lt!1632598) (= lambda!156116 lambda!156110))))

(declare-fun bs!761421 () Bool)

(assert (= bs!761421 (and d!1345851 d!1345831)))

(assert (=> bs!761421 (= (= lt!1632615 lt!1632585) (= lambda!156116 lambda!156111))))

(declare-fun bs!761422 () Bool)

(assert (= bs!761422 (and d!1345851 b!4434800)))

(assert (=> bs!761422 (= (= lt!1632615 (+!1171 lt!1631951 lt!1631950)) (= lambda!156116 lambda!156053))))

(declare-fun bs!761423 () Bool)

(assert (= bs!761423 (and d!1345851 b!4435368)))

(assert (=> bs!761423 (= (= lt!1632615 lt!1632628) (= lambda!156116 lambda!156115))))

(declare-fun bs!761424 () Bool)

(assert (= bs!761424 (and d!1345851 b!4435280)))

(assert (=> bs!761424 (= (= lt!1632615 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156116 lambda!156104))))

(declare-fun bs!761425 () Bool)

(assert (= bs!761425 (and d!1345851 d!1345535)))

(assert (=> bs!761425 (= (= lt!1632615 lt!1632174) (= lambda!156116 lambda!156041))))

(declare-fun bs!761426 () Bool)

(assert (= bs!761426 (and d!1345851 d!1345597)))

(assert (=> bs!761426 (= (= lt!1632615 lt!1632222) (= lambda!156116 lambda!156055))))

(declare-fun bs!761427 () Bool)

(assert (= bs!761427 (and d!1345851 d!1345703)))

(assert (=> bs!761427 (= (= lt!1632615 lt!1632424) (= lambda!156116 lambda!156094))))

(declare-fun bs!761428 () Bool)

(assert (= bs!761428 (and d!1345851 b!4435104)))

(assert (=> bs!761428 (= (= lt!1632615 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156116 lambda!156089))))

(declare-fun bs!761429 () Bool)

(assert (= bs!761429 (and d!1345851 b!4434872)))

(assert (=> bs!761429 (= (= lt!1632615 lt!1631951) (= lambda!156116 lambda!156063))))

(declare-fun bs!761430 () Bool)

(assert (= bs!761430 (and d!1345851 b!4434871)))

(assert (=> bs!761430 (= (= lt!1632615 lt!1632319) (= lambda!156116 lambda!156065))))

(declare-fun bs!761431 () Bool)

(assert (= bs!761431 (and d!1345851 b!4435369)))

(assert (=> bs!761431 (= (= lt!1632615 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156116 lambda!156113))))

(assert (=> bs!761422 (= (= lt!1632615 lt!1632235) (= lambda!156116 lambda!156054))))

(assert (=> bs!761430 (= (= lt!1632615 lt!1631951) (= lambda!156116 lambda!156064))))

(assert (=> bs!761423 (= (= lt!1632615 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156116 lambda!156114))))

(declare-fun bs!761432 () Bool)

(assert (= bs!761432 (and d!1345851 b!4434763)))

(assert (=> bs!761432 (= (= lt!1632615 lt!1631951) (= lambda!156116 lambda!156037))))

(declare-fun bs!761433 () Bool)

(assert (= bs!761433 (and d!1345851 d!1345799)))

(assert (=> bs!761433 (= (= lt!1632615 lt!1632547) (= lambda!156116 lambda!156107))))

(assert (=> bs!761412 (= (= lt!1632615 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156116 lambda!156092))))

(assert (=> d!1345851 true))

(declare-fun b!4435366 () Bool)

(declare-fun e!2761777 () Bool)

(assert (=> b!4435366 (= e!2761777 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) lambda!156115))))

(declare-fun c!754873 () Bool)

(declare-fun bm!308603 () Bool)

(declare-fun lt!1632611 () ListMap!2833)

(declare-fun call!308609 () Bool)

(assert (=> bm!308603 (= call!308609 (forall!9648 (ite c!754873 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (toList!3590 lt!1632611)) (ite c!754873 lambda!156113 lambda!156115)))))

(declare-fun bm!308604 () Bool)

(declare-fun call!308610 () Unit!83085)

(assert (=> bm!308604 (= call!308610 (lemmaContainsAllItsOwnKeys!195 (extractMap!862 (t!356774 (toList!3589 lm!1616)))))))

(declare-fun b!4435367 () Bool)

(declare-fun e!2761778 () Bool)

(assert (=> b!4435367 (= e!2761778 (invariantList!827 (toList!3590 lt!1632615)))))

(assert (=> d!1345851 e!2761778))

(declare-fun res!1835552 () Bool)

(assert (=> d!1345851 (=> (not res!1835552) (not e!2761778))))

(assert (=> d!1345851 (= res!1835552 (forall!9648 (_2!28086 (h!55415 (toList!3589 lm!1616))) lambda!156116))))

(declare-fun e!2761776 () ListMap!2833)

(assert (=> d!1345851 (= lt!1632615 e!2761776)))

(assert (=> d!1345851 (= c!754873 ((_ is Nil!49707) (_2!28086 (h!55415 (toList!3589 lm!1616)))))))

(assert (=> d!1345851 (noDuplicateKeys!801 (_2!28086 (h!55415 (toList!3589 lm!1616))))))

(assert (=> d!1345851 (= (addToMapMapFromBucket!426 (_2!28086 (h!55415 (toList!3589 lm!1616))) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) lt!1632615)))

(assert (=> b!4435368 (= e!2761776 lt!1632628)))

(assert (=> b!4435368 (= lt!1632611 (+!1171 (extractMap!862 (t!356774 (toList!3589 lm!1616))) (h!55414 (_2!28086 (h!55415 (toList!3589 lm!1616))))))))

(assert (=> b!4435368 (= lt!1632628 (addToMapMapFromBucket!426 (t!356773 (_2!28086 (h!55415 (toList!3589 lm!1616)))) (+!1171 (extractMap!862 (t!356774 (toList!3589 lm!1616))) (h!55414 (_2!28086 (h!55415 (toList!3589 lm!1616)))))))))

(declare-fun lt!1632610 () Unit!83085)

(assert (=> b!4435368 (= lt!1632610 call!308610)))

(declare-fun call!308608 () Bool)

(assert (=> b!4435368 call!308608))

(declare-fun lt!1632623 () Unit!83085)

(assert (=> b!4435368 (= lt!1632623 lt!1632610)))

(assert (=> b!4435368 (forall!9648 (toList!3590 lt!1632611) lambda!156115)))

(declare-fun lt!1632608 () Unit!83085)

(declare-fun Unit!83252 () Unit!83085)

(assert (=> b!4435368 (= lt!1632608 Unit!83252)))

(assert (=> b!4435368 (forall!9648 (t!356773 (_2!28086 (h!55415 (toList!3589 lm!1616)))) lambda!156115)))

(declare-fun lt!1632626 () Unit!83085)

(declare-fun Unit!83253 () Unit!83085)

(assert (=> b!4435368 (= lt!1632626 Unit!83253)))

(declare-fun lt!1632620 () Unit!83085)

(declare-fun Unit!83254 () Unit!83085)

(assert (=> b!4435368 (= lt!1632620 Unit!83254)))

(declare-fun lt!1632613 () Unit!83085)

(assert (=> b!4435368 (= lt!1632613 (forallContained!2125 (toList!3590 lt!1632611) lambda!156115 (h!55414 (_2!28086 (h!55415 (toList!3589 lm!1616))))))))

(assert (=> b!4435368 (contains!12250 lt!1632611 (_1!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lm!1616))))))))

(declare-fun lt!1632622 () Unit!83085)

(declare-fun Unit!83255 () Unit!83085)

(assert (=> b!4435368 (= lt!1632622 Unit!83255)))

(assert (=> b!4435368 (contains!12250 lt!1632628 (_1!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lm!1616))))))))

(declare-fun lt!1632617 () Unit!83085)

(declare-fun Unit!83256 () Unit!83085)

(assert (=> b!4435368 (= lt!1632617 Unit!83256)))

(assert (=> b!4435368 (forall!9648 (_2!28086 (h!55415 (toList!3589 lm!1616))) lambda!156115)))

(declare-fun lt!1632612 () Unit!83085)

(declare-fun Unit!83257 () Unit!83085)

(assert (=> b!4435368 (= lt!1632612 Unit!83257)))

(assert (=> b!4435368 call!308609))

(declare-fun lt!1632618 () Unit!83085)

(declare-fun Unit!83258 () Unit!83085)

(assert (=> b!4435368 (= lt!1632618 Unit!83258)))

(declare-fun lt!1632625 () Unit!83085)

(declare-fun Unit!83259 () Unit!83085)

(assert (=> b!4435368 (= lt!1632625 Unit!83259)))

(declare-fun lt!1632619 () Unit!83085)

(assert (=> b!4435368 (= lt!1632619 (addForallContainsKeyThenBeforeAdding!195 (extractMap!862 (t!356774 (toList!3589 lm!1616))) lt!1632628 (_1!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lm!1616))))) (_2!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lm!1616)))))))))

(assert (=> b!4435368 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) lambda!156115)))

(declare-fun lt!1632627 () Unit!83085)

(assert (=> b!4435368 (= lt!1632627 lt!1632619)))

(assert (=> b!4435368 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) lambda!156115)))

(declare-fun lt!1632609 () Unit!83085)

(declare-fun Unit!83260 () Unit!83085)

(assert (=> b!4435368 (= lt!1632609 Unit!83260)))

(declare-fun res!1835550 () Bool)

(assert (=> b!4435368 (= res!1835550 (forall!9648 (_2!28086 (h!55415 (toList!3589 lm!1616))) lambda!156115))))

(assert (=> b!4435368 (=> (not res!1835550) (not e!2761777))))

(assert (=> b!4435368 e!2761777))

(declare-fun lt!1632624 () Unit!83085)

(declare-fun Unit!83261 () Unit!83085)

(assert (=> b!4435368 (= lt!1632624 Unit!83261)))

(declare-fun bm!308605 () Bool)

(assert (=> bm!308605 (= call!308608 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (ite c!754873 lambda!156113 lambda!156114)))))

(assert (=> b!4435369 (= e!2761776 (extractMap!862 (t!356774 (toList!3589 lm!1616))))))

(declare-fun lt!1632621 () Unit!83085)

(assert (=> b!4435369 (= lt!1632621 call!308610)))

(assert (=> b!4435369 call!308608))

(declare-fun lt!1632616 () Unit!83085)

(assert (=> b!4435369 (= lt!1632616 lt!1632621)))

(assert (=> b!4435369 call!308609))

(declare-fun lt!1632614 () Unit!83085)

(declare-fun Unit!83262 () Unit!83085)

(assert (=> b!4435369 (= lt!1632614 Unit!83262)))

(declare-fun b!4435370 () Bool)

(declare-fun res!1835551 () Bool)

(assert (=> b!4435370 (=> (not res!1835551) (not e!2761778))))

(assert (=> b!4435370 (= res!1835551 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) lambda!156116))))

(assert (= (and d!1345851 c!754873) b!4435369))

(assert (= (and d!1345851 (not c!754873)) b!4435368))

(assert (= (and b!4435368 res!1835550) b!4435366))

(assert (= (or b!4435369 b!4435368) bm!308604))

(assert (= (or b!4435369 b!4435368) bm!308605))

(assert (= (or b!4435369 b!4435368) bm!308603))

(assert (= (and d!1345851 res!1835552) b!4435370))

(assert (= (and b!4435370 res!1835551) b!4435367))

(declare-fun m!5121509 () Bool)

(assert (=> bm!308603 m!5121509))

(declare-fun m!5121511 () Bool)

(assert (=> bm!308605 m!5121511))

(declare-fun m!5121513 () Bool)

(assert (=> b!4435367 m!5121513))

(declare-fun m!5121515 () Bool)

(assert (=> b!4435368 m!5121515))

(declare-fun m!5121517 () Bool)

(assert (=> b!4435368 m!5121517))

(assert (=> b!4435368 m!5120169))

(declare-fun m!5121519 () Bool)

(assert (=> b!4435368 m!5121519))

(declare-fun m!5121521 () Bool)

(assert (=> b!4435368 m!5121521))

(declare-fun m!5121523 () Bool)

(assert (=> b!4435368 m!5121523))

(declare-fun m!5121525 () Bool)

(assert (=> b!4435368 m!5121525))

(declare-fun m!5121527 () Bool)

(assert (=> b!4435368 m!5121527))

(assert (=> b!4435368 m!5121525))

(declare-fun m!5121529 () Bool)

(assert (=> b!4435368 m!5121529))

(declare-fun m!5121531 () Bool)

(assert (=> b!4435368 m!5121531))

(assert (=> b!4435368 m!5121527))

(assert (=> b!4435368 m!5120169))

(assert (=> b!4435368 m!5121515))

(declare-fun m!5121533 () Bool)

(assert (=> b!4435368 m!5121533))

(declare-fun m!5121535 () Bool)

(assert (=> b!4435370 m!5121535))

(assert (=> b!4435366 m!5121527))

(assert (=> bm!308604 m!5120169))

(declare-fun m!5121537 () Bool)

(assert (=> bm!308604 m!5121537))

(declare-fun m!5121539 () Bool)

(assert (=> d!1345851 m!5121539))

(assert (=> d!1345851 m!5120711))

(assert (=> b!4434865 d!1345851))

(assert (=> b!4434865 d!1345595))

(declare-fun bs!761454 () Bool)

(declare-fun b!4435421 () Bool)

(assert (= bs!761454 (and b!4435421 b!4435337)))

(declare-fun lambda!156119 () Int)

(assert (=> bs!761454 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156119 lambda!156108))))

(declare-fun bs!761456 () Bool)

(assert (= bs!761456 (and b!4435421 b!4435279)))

(assert (=> bs!761456 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632560) (= lambda!156119 lambda!156106))))

(declare-fun bs!761458 () Bool)

(assert (= bs!761458 (and b!4435421 b!4435336)))

(assert (=> bs!761458 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156119 lambda!156109))))

(assert (=> bs!761456 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156119 lambda!156105))))

(declare-fun bs!761460 () Bool)

(assert (= bs!761460 (and b!4435421 d!1345619)))

(assert (=> bs!761460 (not (= lambda!156119 lambda!156061))))

(declare-fun bs!761462 () Bool)

(assert (= bs!761462 (and b!4435421 d!1345723)))

(assert (=> bs!761462 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632235) (= lambda!156119 lambda!156103))))

(declare-fun bs!761464 () Bool)

(assert (= bs!761464 (and b!4435421 b!4434762)))

(assert (=> bs!761464 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1631951) (= lambda!156119 lambda!156039))))

(assert (=> bs!761464 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632187) (= lambda!156119 lambda!156040))))

(declare-fun bs!761466 () Bool)

(assert (= bs!761466 (and b!4435421 b!4434801)))

(assert (=> bs!761466 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156119 lambda!156052))))

(declare-fun bs!761468 () Bool)

(assert (= bs!761468 (and b!4435421 d!1345633)))

(assert (=> bs!761468 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632306) (= lambda!156119 lambda!156066))))

(declare-fun bs!761469 () Bool)

(assert (= bs!761469 (and b!4435421 b!4435103)))

(assert (=> bs!761469 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632437) (= lambda!156119 lambda!156093))))

(declare-fun bs!761470 () Bool)

(assert (= bs!761470 (and b!4435421 d!1345851)))

(assert (=> bs!761470 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632615) (= lambda!156119 lambda!156116))))

(assert (=> bs!761458 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632598) (= lambda!156119 lambda!156110))))

(declare-fun bs!761471 () Bool)

(assert (= bs!761471 (and b!4435421 d!1345831)))

(assert (=> bs!761471 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632585) (= lambda!156119 lambda!156111))))

(declare-fun bs!761472 () Bool)

(assert (= bs!761472 (and b!4435421 b!4434800)))

(assert (=> bs!761472 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156119 lambda!156053))))

(declare-fun bs!761473 () Bool)

(assert (= bs!761473 (and b!4435421 b!4435368)))

(assert (=> bs!761473 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632628) (= lambda!156119 lambda!156115))))

(declare-fun bs!761474 () Bool)

(assert (= bs!761474 (and b!4435421 b!4435280)))

(assert (=> bs!761474 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156119 lambda!156104))))

(declare-fun bs!761475 () Bool)

(assert (= bs!761475 (and b!4435421 d!1345535)))

(assert (=> bs!761475 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632174) (= lambda!156119 lambda!156041))))

(declare-fun bs!761476 () Bool)

(assert (= bs!761476 (and b!4435421 d!1345597)))

(assert (=> bs!761476 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632222) (= lambda!156119 lambda!156055))))

(declare-fun bs!761477 () Bool)

(assert (= bs!761477 (and b!4435421 d!1345703)))

(assert (=> bs!761477 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632424) (= lambda!156119 lambda!156094))))

(declare-fun bs!761478 () Bool)

(assert (= bs!761478 (and b!4435421 b!4435104)))

(assert (=> bs!761478 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156119 lambda!156089))))

(declare-fun bs!761479 () Bool)

(assert (= bs!761479 (and b!4435421 b!4434872)))

(assert (=> bs!761479 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1631951) (= lambda!156119 lambda!156063))))

(declare-fun bs!761480 () Bool)

(assert (= bs!761480 (and b!4435421 b!4434871)))

(assert (=> bs!761480 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632319) (= lambda!156119 lambda!156065))))

(declare-fun bs!761481 () Bool)

(assert (= bs!761481 (and b!4435421 b!4435369)))

(assert (=> bs!761481 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156119 lambda!156113))))

(assert (=> bs!761472 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632235) (= lambda!156119 lambda!156054))))

(assert (=> bs!761480 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1631951) (= lambda!156119 lambda!156064))))

(assert (=> bs!761473 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156119 lambda!156114))))

(declare-fun bs!761482 () Bool)

(assert (= bs!761482 (and b!4435421 b!4434763)))

(assert (=> bs!761482 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1631951) (= lambda!156119 lambda!156037))))

(declare-fun bs!761483 () Bool)

(assert (= bs!761483 (and b!4435421 d!1345799)))

(assert (=> bs!761483 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632547) (= lambda!156119 lambda!156107))))

(assert (=> bs!761469 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156119 lambda!156092))))

(assert (=> b!4435421 true))

(declare-fun bs!761484 () Bool)

(declare-fun b!4435420 () Bool)

(assert (= bs!761484 (and b!4435420 b!4435337)))

(declare-fun lambda!156121 () Int)

(assert (=> bs!761484 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156121 lambda!156108))))

(declare-fun bs!761485 () Bool)

(assert (= bs!761485 (and b!4435420 b!4435279)))

(assert (=> bs!761485 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632560) (= lambda!156121 lambda!156106))))

(declare-fun bs!761486 () Bool)

(assert (= bs!761486 (and b!4435420 b!4435336)))

(assert (=> bs!761486 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156121 lambda!156109))))

(assert (=> bs!761485 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156121 lambda!156105))))

(declare-fun bs!761487 () Bool)

(assert (= bs!761487 (and b!4435420 d!1345619)))

(assert (=> bs!761487 (not (= lambda!156121 lambda!156061))))

(declare-fun bs!761488 () Bool)

(assert (= bs!761488 (and b!4435420 b!4435421)))

(assert (=> bs!761488 (= lambda!156121 lambda!156119)))

(declare-fun bs!761489 () Bool)

(assert (= bs!761489 (and b!4435420 d!1345723)))

(assert (=> bs!761489 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632235) (= lambda!156121 lambda!156103))))

(declare-fun bs!761490 () Bool)

(assert (= bs!761490 (and b!4435420 b!4434762)))

(assert (=> bs!761490 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1631951) (= lambda!156121 lambda!156039))))

(assert (=> bs!761490 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632187) (= lambda!156121 lambda!156040))))

(declare-fun bs!761491 () Bool)

(assert (= bs!761491 (and b!4435420 b!4434801)))

(assert (=> bs!761491 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156121 lambda!156052))))

(declare-fun bs!761493 () Bool)

(assert (= bs!761493 (and b!4435420 d!1345633)))

(assert (=> bs!761493 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632306) (= lambda!156121 lambda!156066))))

(declare-fun bs!761495 () Bool)

(assert (= bs!761495 (and b!4435420 b!4435103)))

(assert (=> bs!761495 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632437) (= lambda!156121 lambda!156093))))

(declare-fun bs!761497 () Bool)

(assert (= bs!761497 (and b!4435420 d!1345851)))

(assert (=> bs!761497 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632615) (= lambda!156121 lambda!156116))))

(assert (=> bs!761486 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632598) (= lambda!156121 lambda!156110))))

(declare-fun bs!761500 () Bool)

(assert (= bs!761500 (and b!4435420 d!1345831)))

(assert (=> bs!761500 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632585) (= lambda!156121 lambda!156111))))

(declare-fun bs!761502 () Bool)

(assert (= bs!761502 (and b!4435420 b!4434800)))

(assert (=> bs!761502 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 lt!1631951 lt!1631950)) (= lambda!156121 lambda!156053))))

(declare-fun bs!761504 () Bool)

(assert (= bs!761504 (and b!4435420 b!4435368)))

(assert (=> bs!761504 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632628) (= lambda!156121 lambda!156115))))

(declare-fun bs!761506 () Bool)

(assert (= bs!761506 (and b!4435420 b!4435280)))

(assert (=> bs!761506 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156121 lambda!156104))))

(declare-fun bs!761507 () Bool)

(assert (= bs!761507 (and b!4435420 d!1345535)))

(assert (=> bs!761507 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632174) (= lambda!156121 lambda!156041))))

(declare-fun bs!761509 () Bool)

(assert (= bs!761509 (and b!4435420 d!1345597)))

(assert (=> bs!761509 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632222) (= lambda!156121 lambda!156055))))

(declare-fun bs!761510 () Bool)

(assert (= bs!761510 (and b!4435420 d!1345703)))

(assert (=> bs!761510 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632424) (= lambda!156121 lambda!156094))))

(declare-fun bs!761511 () Bool)

(assert (= bs!761511 (and b!4435420 b!4435104)))

(assert (=> bs!761511 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156121 lambda!156089))))

(declare-fun bs!761513 () Bool)

(assert (= bs!761513 (and b!4435420 b!4434872)))

(assert (=> bs!761513 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1631951) (= lambda!156121 lambda!156063))))

(declare-fun bs!761515 () Bool)

(assert (= bs!761515 (and b!4435420 b!4434871)))

(assert (=> bs!761515 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632319) (= lambda!156121 lambda!156065))))

(declare-fun bs!761517 () Bool)

(assert (= bs!761517 (and b!4435420 b!4435369)))

(assert (=> bs!761517 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156121 lambda!156113))))

(assert (=> bs!761502 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632235) (= lambda!156121 lambda!156054))))

(assert (=> bs!761515 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1631951) (= lambda!156121 lambda!156064))))

(assert (=> bs!761504 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156121 lambda!156114))))

(declare-fun bs!761521 () Bool)

(assert (= bs!761521 (and b!4435420 b!4434763)))

(assert (=> bs!761521 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1631951) (= lambda!156121 lambda!156037))))

(declare-fun bs!761522 () Bool)

(assert (= bs!761522 (and b!4435420 d!1345799)))

(assert (=> bs!761522 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632547) (= lambda!156121 lambda!156107))))

(assert (=> bs!761495 (= (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156121 lambda!156092))))

(assert (=> b!4435420 true))

(declare-fun lambda!156123 () Int)

(declare-fun lt!1632681 () ListMap!2833)

(assert (=> bs!761484 (= (= lt!1632681 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156123 lambda!156108))))

(assert (=> bs!761485 (= (= lt!1632681 lt!1632560) (= lambda!156123 lambda!156106))))

(assert (=> bs!761486 (= (= lt!1632681 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156123 lambda!156109))))

(assert (=> bs!761485 (= (= lt!1632681 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156123 lambda!156105))))

(assert (=> bs!761487 (not (= lambda!156123 lambda!156061))))

(assert (=> bs!761488 (= (= lt!1632681 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156123 lambda!156119))))

(assert (=> bs!761489 (= (= lt!1632681 lt!1632235) (= lambda!156123 lambda!156103))))

(assert (=> bs!761490 (= (= lt!1632681 lt!1631951) (= lambda!156123 lambda!156039))))

(assert (=> bs!761490 (= (= lt!1632681 lt!1632187) (= lambda!156123 lambda!156040))))

(assert (=> bs!761491 (= (= lt!1632681 (+!1171 lt!1631951 lt!1631950)) (= lambda!156123 lambda!156052))))

(assert (=> bs!761493 (= (= lt!1632681 lt!1632306) (= lambda!156123 lambda!156066))))

(assert (=> bs!761495 (= (= lt!1632681 lt!1632437) (= lambda!156123 lambda!156093))))

(assert (=> bs!761497 (= (= lt!1632681 lt!1632615) (= lambda!156123 lambda!156116))))

(assert (=> bs!761486 (= (= lt!1632681 lt!1632598) (= lambda!156123 lambda!156110))))

(assert (=> bs!761500 (= (= lt!1632681 lt!1632585) (= lambda!156123 lambda!156111))))

(assert (=> bs!761502 (= (= lt!1632681 (+!1171 lt!1631951 lt!1631950)) (= lambda!156123 lambda!156053))))

(assert (=> bs!761504 (= (= lt!1632681 lt!1632628) (= lambda!156123 lambda!156115))))

(assert (=> bs!761506 (= (= lt!1632681 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156123 lambda!156104))))

(assert (=> bs!761507 (= (= lt!1632681 lt!1632174) (= lambda!156123 lambda!156041))))

(assert (=> bs!761509 (= (= lt!1632681 lt!1632222) (= lambda!156123 lambda!156055))))

(assert (=> b!4435420 (= (= lt!1632681 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156123 lambda!156121))))

(assert (=> bs!761510 (= (= lt!1632681 lt!1632424) (= lambda!156123 lambda!156094))))

(assert (=> bs!761511 (= (= lt!1632681 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156123 lambda!156089))))

(assert (=> bs!761513 (= (= lt!1632681 lt!1631951) (= lambda!156123 lambda!156063))))

(assert (=> bs!761515 (= (= lt!1632681 lt!1632319) (= lambda!156123 lambda!156065))))

(assert (=> bs!761517 (= (= lt!1632681 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156123 lambda!156113))))

(assert (=> bs!761502 (= (= lt!1632681 lt!1632235) (= lambda!156123 lambda!156054))))

(assert (=> bs!761515 (= (= lt!1632681 lt!1631951) (= lambda!156123 lambda!156064))))

(assert (=> bs!761504 (= (= lt!1632681 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156123 lambda!156114))))

(assert (=> bs!761521 (= (= lt!1632681 lt!1631951) (= lambda!156123 lambda!156037))))

(assert (=> bs!761522 (= (= lt!1632681 lt!1632547) (= lambda!156123 lambda!156107))))

(assert (=> bs!761495 (= (= lt!1632681 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156123 lambda!156092))))

(assert (=> b!4435420 true))

(declare-fun bs!761524 () Bool)

(declare-fun d!1345865 () Bool)

(assert (= bs!761524 (and d!1345865 b!4435337)))

(declare-fun lambda!156124 () Int)

(declare-fun lt!1632668 () ListMap!2833)

(assert (=> bs!761524 (= (= lt!1632668 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156124 lambda!156108))))

(declare-fun bs!761525 () Bool)

(assert (= bs!761525 (and d!1345865 b!4435279)))

(assert (=> bs!761525 (= (= lt!1632668 lt!1632560) (= lambda!156124 lambda!156106))))

(declare-fun bs!761526 () Bool)

(assert (= bs!761526 (and d!1345865 b!4435336)))

(assert (=> bs!761526 (= (= lt!1632668 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156124 lambda!156109))))

(assert (=> bs!761525 (= (= lt!1632668 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156124 lambda!156105))))

(declare-fun bs!761527 () Bool)

(assert (= bs!761527 (and d!1345865 d!1345619)))

(assert (=> bs!761527 (not (= lambda!156124 lambda!156061))))

(declare-fun bs!761528 () Bool)

(assert (= bs!761528 (and d!1345865 b!4435421)))

(assert (=> bs!761528 (= (= lt!1632668 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156124 lambda!156119))))

(declare-fun bs!761529 () Bool)

(assert (= bs!761529 (and d!1345865 d!1345723)))

(assert (=> bs!761529 (= (= lt!1632668 lt!1632235) (= lambda!156124 lambda!156103))))

(declare-fun bs!761530 () Bool)

(assert (= bs!761530 (and d!1345865 b!4434762)))

(assert (=> bs!761530 (= (= lt!1632668 lt!1632187) (= lambda!156124 lambda!156040))))

(declare-fun bs!761531 () Bool)

(assert (= bs!761531 (and d!1345865 b!4434801)))

(assert (=> bs!761531 (= (= lt!1632668 (+!1171 lt!1631951 lt!1631950)) (= lambda!156124 lambda!156052))))

(declare-fun bs!761532 () Bool)

(assert (= bs!761532 (and d!1345865 d!1345633)))

(assert (=> bs!761532 (= (= lt!1632668 lt!1632306) (= lambda!156124 lambda!156066))))

(declare-fun bs!761533 () Bool)

(assert (= bs!761533 (and d!1345865 b!4435103)))

(assert (=> bs!761533 (= (= lt!1632668 lt!1632437) (= lambda!156124 lambda!156093))))

(declare-fun bs!761534 () Bool)

(assert (= bs!761534 (and d!1345865 d!1345851)))

(assert (=> bs!761534 (= (= lt!1632668 lt!1632615) (= lambda!156124 lambda!156116))))

(assert (=> bs!761526 (= (= lt!1632668 lt!1632598) (= lambda!156124 lambda!156110))))

(declare-fun bs!761535 () Bool)

(assert (= bs!761535 (and d!1345865 d!1345831)))

(assert (=> bs!761535 (= (= lt!1632668 lt!1632585) (= lambda!156124 lambda!156111))))

(declare-fun bs!761536 () Bool)

(assert (= bs!761536 (and d!1345865 b!4434800)))

(assert (=> bs!761536 (= (= lt!1632668 (+!1171 lt!1631951 lt!1631950)) (= lambda!156124 lambda!156053))))

(declare-fun bs!761537 () Bool)

(assert (= bs!761537 (and d!1345865 b!4435368)))

(assert (=> bs!761537 (= (= lt!1632668 lt!1632628) (= lambda!156124 lambda!156115))))

(declare-fun bs!761538 () Bool)

(assert (= bs!761538 (and d!1345865 b!4435280)))

(assert (=> bs!761538 (= (= lt!1632668 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156124 lambda!156104))))

(declare-fun bs!761539 () Bool)

(assert (= bs!761539 (and d!1345865 d!1345535)))

(assert (=> bs!761539 (= (= lt!1632668 lt!1632174) (= lambda!156124 lambda!156041))))

(declare-fun bs!761540 () Bool)

(assert (= bs!761540 (and d!1345865 d!1345597)))

(assert (=> bs!761540 (= (= lt!1632668 lt!1632222) (= lambda!156124 lambda!156055))))

(declare-fun bs!761541 () Bool)

(assert (= bs!761541 (and d!1345865 b!4435420)))

(assert (=> bs!761541 (= (= lt!1632668 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156124 lambda!156121))))

(declare-fun bs!761542 () Bool)

(assert (= bs!761542 (and d!1345865 d!1345703)))

(assert (=> bs!761542 (= (= lt!1632668 lt!1632424) (= lambda!156124 lambda!156094))))

(declare-fun bs!761543 () Bool)

(assert (= bs!761543 (and d!1345865 b!4435104)))

(assert (=> bs!761543 (= (= lt!1632668 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156124 lambda!156089))))

(declare-fun bs!761544 () Bool)

(assert (= bs!761544 (and d!1345865 b!4434872)))

(assert (=> bs!761544 (= (= lt!1632668 lt!1631951) (= lambda!156124 lambda!156063))))

(declare-fun bs!761545 () Bool)

(assert (= bs!761545 (and d!1345865 b!4434871)))

(assert (=> bs!761545 (= (= lt!1632668 lt!1632319) (= lambda!156124 lambda!156065))))

(declare-fun bs!761546 () Bool)

(assert (= bs!761546 (and d!1345865 b!4435369)))

(assert (=> bs!761546 (= (= lt!1632668 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156124 lambda!156113))))

(assert (=> bs!761536 (= (= lt!1632668 lt!1632235) (= lambda!156124 lambda!156054))))

(assert (=> bs!761545 (= (= lt!1632668 lt!1631951) (= lambda!156124 lambda!156064))))

(assert (=> bs!761537 (= (= lt!1632668 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156124 lambda!156114))))

(assert (=> bs!761541 (= (= lt!1632668 lt!1632681) (= lambda!156124 lambda!156123))))

(assert (=> bs!761530 (= (= lt!1632668 lt!1631951) (= lambda!156124 lambda!156039))))

(declare-fun bs!761547 () Bool)

(assert (= bs!761547 (and d!1345865 b!4434763)))

(assert (=> bs!761547 (= (= lt!1632668 lt!1631951) (= lambda!156124 lambda!156037))))

(declare-fun bs!761548 () Bool)

(assert (= bs!761548 (and d!1345865 d!1345799)))

(assert (=> bs!761548 (= (= lt!1632668 lt!1632547) (= lambda!156124 lambda!156107))))

(assert (=> bs!761533 (= (= lt!1632668 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156124 lambda!156092))))

(assert (=> d!1345865 true))

(declare-fun b!4435418 () Bool)

(declare-fun e!2761806 () Bool)

(assert (=> b!4435418 (= e!2761806 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) lambda!156123))))

(declare-fun c!754889 () Bool)

(declare-fun lt!1632664 () ListMap!2833)

(declare-fun bm!308618 () Bool)

(declare-fun call!308624 () Bool)

(assert (=> bm!308618 (= call!308624 (forall!9648 (ite c!754889 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (toList!3590 lt!1632664)) (ite c!754889 lambda!156119 lambda!156123)))))

(declare-fun bm!308619 () Bool)

(declare-fun call!308625 () Unit!83085)

(assert (=> bm!308619 (= call!308625 (lemmaContainsAllItsOwnKeys!195 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))))))

(declare-fun b!4435419 () Bool)

(declare-fun e!2761807 () Bool)

(assert (=> b!4435419 (= e!2761807 (invariantList!827 (toList!3590 lt!1632668)))))

(assert (=> d!1345865 e!2761807))

(declare-fun res!1835572 () Bool)

(assert (=> d!1345865 (=> (not res!1835572) (not e!2761807))))

(assert (=> d!1345865 (= res!1835572 (forall!9648 (_2!28086 (h!55415 (toList!3589 lt!1631945))) lambda!156124))))

(declare-fun e!2761805 () ListMap!2833)

(assert (=> d!1345865 (= lt!1632668 e!2761805)))

(assert (=> d!1345865 (= c!754889 ((_ is Nil!49707) (_2!28086 (h!55415 (toList!3589 lt!1631945)))))))

(assert (=> d!1345865 (noDuplicateKeys!801 (_2!28086 (h!55415 (toList!3589 lt!1631945))))))

(assert (=> d!1345865 (= (addToMapMapFromBucket!426 (_2!28086 (h!55415 (toList!3589 lt!1631945))) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) lt!1632668)))

(assert (=> b!4435420 (= e!2761805 lt!1632681)))

(assert (=> b!4435420 (= lt!1632664 (+!1171 (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (h!55414 (_2!28086 (h!55415 (toList!3589 lt!1631945))))))))

(assert (=> b!4435420 (= lt!1632681 (addToMapMapFromBucket!426 (t!356773 (_2!28086 (h!55415 (toList!3589 lt!1631945)))) (+!1171 (extractMap!862 (t!356774 (toList!3589 lt!1631945))) (h!55414 (_2!28086 (h!55415 (toList!3589 lt!1631945)))))))))

(declare-fun lt!1632663 () Unit!83085)

(assert (=> b!4435420 (= lt!1632663 call!308625)))

(declare-fun call!308623 () Bool)

(assert (=> b!4435420 call!308623))

(declare-fun lt!1632676 () Unit!83085)

(assert (=> b!4435420 (= lt!1632676 lt!1632663)))

(assert (=> b!4435420 (forall!9648 (toList!3590 lt!1632664) lambda!156123)))

(declare-fun lt!1632661 () Unit!83085)

(declare-fun Unit!83274 () Unit!83085)

(assert (=> b!4435420 (= lt!1632661 Unit!83274)))

(assert (=> b!4435420 (forall!9648 (t!356773 (_2!28086 (h!55415 (toList!3589 lt!1631945)))) lambda!156123)))

(declare-fun lt!1632679 () Unit!83085)

(declare-fun Unit!83275 () Unit!83085)

(assert (=> b!4435420 (= lt!1632679 Unit!83275)))

(declare-fun lt!1632673 () Unit!83085)

(declare-fun Unit!83276 () Unit!83085)

(assert (=> b!4435420 (= lt!1632673 Unit!83276)))

(declare-fun lt!1632666 () Unit!83085)

(assert (=> b!4435420 (= lt!1632666 (forallContained!2125 (toList!3590 lt!1632664) lambda!156123 (h!55414 (_2!28086 (h!55415 (toList!3589 lt!1631945))))))))

(assert (=> b!4435420 (contains!12250 lt!1632664 (_1!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lt!1631945))))))))

(declare-fun lt!1632675 () Unit!83085)

(declare-fun Unit!83277 () Unit!83085)

(assert (=> b!4435420 (= lt!1632675 Unit!83277)))

(assert (=> b!4435420 (contains!12250 lt!1632681 (_1!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lt!1631945))))))))

(declare-fun lt!1632670 () Unit!83085)

(declare-fun Unit!83278 () Unit!83085)

(assert (=> b!4435420 (= lt!1632670 Unit!83278)))

(assert (=> b!4435420 (forall!9648 (_2!28086 (h!55415 (toList!3589 lt!1631945))) lambda!156123)))

(declare-fun lt!1632665 () Unit!83085)

(declare-fun Unit!83279 () Unit!83085)

(assert (=> b!4435420 (= lt!1632665 Unit!83279)))

(assert (=> b!4435420 call!308624))

(declare-fun lt!1632671 () Unit!83085)

(declare-fun Unit!83280 () Unit!83085)

(assert (=> b!4435420 (= lt!1632671 Unit!83280)))

(declare-fun lt!1632678 () Unit!83085)

(declare-fun Unit!83281 () Unit!83085)

(assert (=> b!4435420 (= lt!1632678 Unit!83281)))

(declare-fun lt!1632672 () Unit!83085)

(assert (=> b!4435420 (= lt!1632672 (addForallContainsKeyThenBeforeAdding!195 (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632681 (_1!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lt!1631945))))) (_2!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lt!1631945)))))))))

(assert (=> b!4435420 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) lambda!156123)))

(declare-fun lt!1632680 () Unit!83085)

(assert (=> b!4435420 (= lt!1632680 lt!1632672)))

(assert (=> b!4435420 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) lambda!156123)))

(declare-fun lt!1632662 () Unit!83085)

(declare-fun Unit!83282 () Unit!83085)

(assert (=> b!4435420 (= lt!1632662 Unit!83282)))

(declare-fun res!1835570 () Bool)

(assert (=> b!4435420 (= res!1835570 (forall!9648 (_2!28086 (h!55415 (toList!3589 lt!1631945))) lambda!156123))))

(assert (=> b!4435420 (=> (not res!1835570) (not e!2761806))))

(assert (=> b!4435420 e!2761806))

(declare-fun lt!1632677 () Unit!83085)

(declare-fun Unit!83283 () Unit!83085)

(assert (=> b!4435420 (= lt!1632677 Unit!83283)))

(declare-fun bm!308620 () Bool)

(assert (=> bm!308620 (= call!308623 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (ite c!754889 lambda!156119 lambda!156121)))))

(assert (=> b!4435421 (= e!2761805 (extractMap!862 (t!356774 (toList!3589 lt!1631945))))))

(declare-fun lt!1632674 () Unit!83085)

(assert (=> b!4435421 (= lt!1632674 call!308625)))

(assert (=> b!4435421 call!308623))

(declare-fun lt!1632669 () Unit!83085)

(assert (=> b!4435421 (= lt!1632669 lt!1632674)))

(assert (=> b!4435421 call!308624))

(declare-fun lt!1632667 () Unit!83085)

(declare-fun Unit!83284 () Unit!83085)

(assert (=> b!4435421 (= lt!1632667 Unit!83284)))

(declare-fun b!4435422 () Bool)

(declare-fun res!1835571 () Bool)

(assert (=> b!4435422 (=> (not res!1835571) (not e!2761807))))

(assert (=> b!4435422 (= res!1835571 (forall!9648 (toList!3590 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) lambda!156124))))

(assert (= (and d!1345865 c!754889) b!4435421))

(assert (= (and d!1345865 (not c!754889)) b!4435420))

(assert (= (and b!4435420 res!1835570) b!4435418))

(assert (= (or b!4435421 b!4435420) bm!308619))

(assert (= (or b!4435421 b!4435420) bm!308620))

(assert (= (or b!4435421 b!4435420) bm!308618))

(assert (= (and d!1345865 res!1835572) b!4435422))

(assert (= (and b!4435422 res!1835571) b!4435419))

(declare-fun m!5121575 () Bool)

(assert (=> bm!308618 m!5121575))

(declare-fun m!5121577 () Bool)

(assert (=> bm!308620 m!5121577))

(declare-fun m!5121579 () Bool)

(assert (=> b!4435419 m!5121579))

(declare-fun m!5121581 () Bool)

(assert (=> b!4435420 m!5121581))

(declare-fun m!5121583 () Bool)

(assert (=> b!4435420 m!5121583))

(assert (=> b!4435420 m!5120521))

(declare-fun m!5121585 () Bool)

(assert (=> b!4435420 m!5121585))

(declare-fun m!5121587 () Bool)

(assert (=> b!4435420 m!5121587))

(declare-fun m!5121589 () Bool)

(assert (=> b!4435420 m!5121589))

(declare-fun m!5121591 () Bool)

(assert (=> b!4435420 m!5121591))

(declare-fun m!5121593 () Bool)

(assert (=> b!4435420 m!5121593))

(assert (=> b!4435420 m!5121591))

(declare-fun m!5121595 () Bool)

(assert (=> b!4435420 m!5121595))

(declare-fun m!5121597 () Bool)

(assert (=> b!4435420 m!5121597))

(assert (=> b!4435420 m!5121593))

(assert (=> b!4435420 m!5120521))

(assert (=> b!4435420 m!5121581))

(declare-fun m!5121599 () Bool)

(assert (=> b!4435420 m!5121599))

(declare-fun m!5121601 () Bool)

(assert (=> b!4435422 m!5121601))

(assert (=> b!4435418 m!5121593))

(assert (=> bm!308619 m!5120521))

(declare-fun m!5121603 () Bool)

(assert (=> bm!308619 m!5121603))

(declare-fun m!5121605 () Bool)

(assert (=> d!1345865 m!5121605))

(assert (=> d!1345865 m!5120709))

(assert (=> b!4434794 d!1345865))

(declare-fun bs!761549 () Bool)

(declare-fun d!1345871 () Bool)

(assert (= bs!761549 (and d!1345871 d!1345623)))

(declare-fun lambda!156125 () Int)

(assert (=> bs!761549 (= lambda!156125 lambda!156062)))

(declare-fun bs!761550 () Bool)

(assert (= bs!761550 (and d!1345871 d!1345579)))

(assert (=> bs!761550 (= lambda!156125 lambda!156050)))

(declare-fun bs!761551 () Bool)

(assert (= bs!761551 (and d!1345871 d!1345595)))

(assert (=> bs!761551 (= lambda!156125 lambda!156051)))

(declare-fun bs!761552 () Bool)

(assert (= bs!761552 (and d!1345871 start!433412)))

(assert (=> bs!761552 (= lambda!156125 lambda!155964)))

(declare-fun bs!761553 () Bool)

(assert (= bs!761553 (and d!1345871 d!1345845)))

(assert (=> bs!761553 (= lambda!156125 lambda!156112)))

(declare-fun bs!761554 () Bool)

(assert (= bs!761554 (and d!1345871 d!1345603)))

(assert (=> bs!761554 (not (= lambda!156125 lambda!156058))))

(declare-fun lt!1632682 () ListMap!2833)

(assert (=> d!1345871 (invariantList!827 (toList!3590 lt!1632682))))

(declare-fun e!2761808 () ListMap!2833)

(assert (=> d!1345871 (= lt!1632682 e!2761808)))

(declare-fun c!754890 () Bool)

(assert (=> d!1345871 (= c!754890 ((_ is Cons!49708) (t!356774 (toList!3589 lt!1631945))))))

(assert (=> d!1345871 (forall!9646 (t!356774 (toList!3589 lt!1631945)) lambda!156125)))

(assert (=> d!1345871 (= (extractMap!862 (t!356774 (toList!3589 lt!1631945))) lt!1632682)))

(declare-fun b!4435423 () Bool)

(assert (=> b!4435423 (= e!2761808 (addToMapMapFromBucket!426 (_2!28086 (h!55415 (t!356774 (toList!3589 lt!1631945)))) (extractMap!862 (t!356774 (t!356774 (toList!3589 lt!1631945))))))))

(declare-fun b!4435424 () Bool)

(assert (=> b!4435424 (= e!2761808 (ListMap!2834 Nil!49707))))

(assert (= (and d!1345871 c!754890) b!4435423))

(assert (= (and d!1345871 (not c!754890)) b!4435424))

(declare-fun m!5121607 () Bool)

(assert (=> d!1345871 m!5121607))

(declare-fun m!5121609 () Bool)

(assert (=> d!1345871 m!5121609))

(declare-fun m!5121611 () Bool)

(assert (=> b!4435423 m!5121611))

(assert (=> b!4435423 m!5121611))

(declare-fun m!5121613 () Bool)

(assert (=> b!4435423 m!5121613))

(assert (=> b!4434794 d!1345871))

(declare-fun d!1345873 () Bool)

(declare-fun res!1835577 () Bool)

(declare-fun e!2761813 () Bool)

(assert (=> d!1345873 (=> res!1835577 e!2761813)))

(assert (=> d!1345873 (= res!1835577 (and ((_ is Cons!49707) (toList!3590 lt!1631947)) (= (_1!28085 (h!55414 (toList!3590 lt!1631947))) key!3717)))))

(assert (=> d!1345873 (= (containsKey!1194 (toList!3590 lt!1631947) key!3717) e!2761813)))

(declare-fun b!4435429 () Bool)

(declare-fun e!2761814 () Bool)

(assert (=> b!4435429 (= e!2761813 e!2761814)))

(declare-fun res!1835578 () Bool)

(assert (=> b!4435429 (=> (not res!1835578) (not e!2761814))))

(assert (=> b!4435429 (= res!1835578 ((_ is Cons!49707) (toList!3590 lt!1631947)))))

(declare-fun b!4435430 () Bool)

(assert (=> b!4435430 (= e!2761814 (containsKey!1194 (t!356773 (toList!3590 lt!1631947)) key!3717))))

(assert (= (and d!1345873 (not res!1835577)) b!4435429))

(assert (= (and b!4435429 res!1835578) b!4435430))

(declare-fun m!5121615 () Bool)

(assert (=> b!4435430 m!5121615))

(assert (=> b!4434856 d!1345873))

(declare-fun d!1345877 () Bool)

(assert (=> d!1345877 (containsKey!1194 (toList!3590 lt!1631947) key!3717)))

(declare-fun lt!1632685 () Unit!83085)

(declare-fun choose!28129 (List!49831 K!11075) Unit!83085)

(assert (=> d!1345877 (= lt!1632685 (choose!28129 (toList!3590 lt!1631947) key!3717))))

(assert (=> d!1345877 (invariantList!827 (toList!3590 lt!1631947))))

(assert (=> d!1345877 (= (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1631947) key!3717) lt!1632685)))

(declare-fun bs!761556 () Bool)

(assert (= bs!761556 d!1345877))

(assert (=> bs!761556 m!5120623))

(declare-fun m!5121621 () Bool)

(assert (=> bs!761556 m!5121621))

(assert (=> bs!761556 m!5120861))

(assert (=> b!4434856 d!1345877))

(declare-fun b!4435436 () Bool)

(declare-fun e!2761818 () Option!10769)

(assert (=> b!4435436 (= e!2761818 None!10768)))

(declare-fun b!4435434 () Bool)

(declare-fun e!2761817 () Option!10769)

(assert (=> b!4435434 (= e!2761817 e!2761818)))

(declare-fun c!754892 () Bool)

(assert (=> b!4435434 (= c!754892 (and ((_ is Cons!49707) (toList!3590 lt!1632295)) (not (= (_1!28085 (h!55414 (toList!3590 lt!1632295))) (_1!28085 lt!1631950)))))))

(declare-fun b!4435433 () Bool)

(assert (=> b!4435433 (= e!2761817 (Some!10768 (_2!28085 (h!55414 (toList!3590 lt!1632295)))))))

(declare-fun d!1345881 () Bool)

(declare-fun c!754891 () Bool)

(assert (=> d!1345881 (= c!754891 (and ((_ is Cons!49707) (toList!3590 lt!1632295)) (= (_1!28085 (h!55414 (toList!3590 lt!1632295))) (_1!28085 lt!1631950))))))

(assert (=> d!1345881 (= (getValueByKey!755 (toList!3590 lt!1632295) (_1!28085 lt!1631950)) e!2761817)))

(declare-fun b!4435435 () Bool)

(assert (=> b!4435435 (= e!2761818 (getValueByKey!755 (t!356773 (toList!3590 lt!1632295)) (_1!28085 lt!1631950)))))

(assert (= (and d!1345881 c!754891) b!4435433))

(assert (= (and d!1345881 (not c!754891)) b!4435434))

(assert (= (and b!4435434 c!754892) b!4435435))

(assert (= (and b!4435434 (not c!754892)) b!4435436))

(declare-fun m!5121623 () Bool)

(assert (=> b!4435435 m!5121623))

(assert (=> b!4434867 d!1345881))

(declare-fun bs!761557 () Bool)

(declare-fun d!1345883 () Bool)

(assert (= bs!761557 (and d!1345883 d!1345865)))

(declare-fun lambda!156130 () Int)

(assert (=> bs!761557 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632668) (= lambda!156130 lambda!156124))))

(declare-fun bs!761558 () Bool)

(assert (= bs!761558 (and d!1345883 b!4435337)))

(assert (=> bs!761558 (= (= (+!1171 lt!1631951 lt!1631950) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156130 lambda!156108))))

(declare-fun bs!761559 () Bool)

(assert (= bs!761559 (and d!1345883 b!4435279)))

(assert (=> bs!761559 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632560) (= lambda!156130 lambda!156106))))

(declare-fun bs!761560 () Bool)

(assert (= bs!761560 (and d!1345883 b!4435336)))

(assert (=> bs!761560 (= (= (+!1171 lt!1631951 lt!1631950) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156130 lambda!156109))))

(assert (=> bs!761559 (= (= (+!1171 lt!1631951 lt!1631950) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156130 lambda!156105))))

(declare-fun bs!761561 () Bool)

(assert (= bs!761561 (and d!1345883 d!1345619)))

(assert (=> bs!761561 (not (= lambda!156130 lambda!156061))))

(declare-fun bs!761562 () Bool)

(assert (= bs!761562 (and d!1345883 b!4435421)))

(assert (=> bs!761562 (= (= (+!1171 lt!1631951 lt!1631950) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156130 lambda!156119))))

(declare-fun bs!761563 () Bool)

(assert (= bs!761563 (and d!1345883 d!1345723)))

(assert (=> bs!761563 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632235) (= lambda!156130 lambda!156103))))

(declare-fun bs!761564 () Bool)

(assert (= bs!761564 (and d!1345883 b!4434762)))

(assert (=> bs!761564 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632187) (= lambda!156130 lambda!156040))))

(declare-fun bs!761565 () Bool)

(assert (= bs!761565 (and d!1345883 b!4434801)))

(assert (=> bs!761565 (= lambda!156130 lambda!156052)))

(declare-fun bs!761566 () Bool)

(assert (= bs!761566 (and d!1345883 d!1345633)))

(assert (=> bs!761566 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632306) (= lambda!156130 lambda!156066))))

(declare-fun bs!761567 () Bool)

(assert (= bs!761567 (and d!1345883 b!4435103)))

(assert (=> bs!761567 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632437) (= lambda!156130 lambda!156093))))

(declare-fun bs!761568 () Bool)

(assert (= bs!761568 (and d!1345883 d!1345851)))

(assert (=> bs!761568 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632615) (= lambda!156130 lambda!156116))))

(assert (=> bs!761560 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632598) (= lambda!156130 lambda!156110))))

(declare-fun bs!761569 () Bool)

(assert (= bs!761569 (and d!1345883 d!1345831)))

(assert (=> bs!761569 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632585) (= lambda!156130 lambda!156111))))

(declare-fun bs!761570 () Bool)

(assert (= bs!761570 (and d!1345883 b!4434800)))

(assert (=> bs!761570 (= lambda!156130 lambda!156053)))

(declare-fun bs!761571 () Bool)

(assert (= bs!761571 (and d!1345883 b!4435368)))

(assert (=> bs!761571 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632628) (= lambda!156130 lambda!156115))))

(declare-fun bs!761572 () Bool)

(assert (= bs!761572 (and d!1345883 b!4435280)))

(assert (=> bs!761572 (= (= (+!1171 lt!1631951 lt!1631950) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156130 lambda!156104))))

(declare-fun bs!761573 () Bool)

(assert (= bs!761573 (and d!1345883 d!1345535)))

(assert (=> bs!761573 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632174) (= lambda!156130 lambda!156041))))

(declare-fun bs!761575 () Bool)

(assert (= bs!761575 (and d!1345883 d!1345597)))

(assert (=> bs!761575 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632222) (= lambda!156130 lambda!156055))))

(declare-fun bs!761578 () Bool)

(assert (= bs!761578 (and d!1345883 b!4435420)))

(assert (=> bs!761578 (= (= (+!1171 lt!1631951 lt!1631950) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156130 lambda!156121))))

(declare-fun bs!761579 () Bool)

(assert (= bs!761579 (and d!1345883 d!1345703)))

(assert (=> bs!761579 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632424) (= lambda!156130 lambda!156094))))

(declare-fun bs!761581 () Bool)

(assert (= bs!761581 (and d!1345883 b!4435104)))

(assert (=> bs!761581 (= (= (+!1171 lt!1631951 lt!1631950) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156130 lambda!156089))))

(declare-fun bs!761583 () Bool)

(assert (= bs!761583 (and d!1345883 b!4434872)))

(assert (=> bs!761583 (= (= (+!1171 lt!1631951 lt!1631950) lt!1631951) (= lambda!156130 lambda!156063))))

(declare-fun bs!761585 () Bool)

(assert (= bs!761585 (and d!1345883 b!4434871)))

(assert (=> bs!761585 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632319) (= lambda!156130 lambda!156065))))

(declare-fun bs!761587 () Bool)

(assert (= bs!761587 (and d!1345883 b!4435369)))

(assert (=> bs!761587 (= (= (+!1171 lt!1631951 lt!1631950) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156130 lambda!156113))))

(assert (=> bs!761570 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632235) (= lambda!156130 lambda!156054))))

(assert (=> bs!761585 (= (= (+!1171 lt!1631951 lt!1631950) lt!1631951) (= lambda!156130 lambda!156064))))

(assert (=> bs!761571 (= (= (+!1171 lt!1631951 lt!1631950) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156130 lambda!156114))))

(assert (=> bs!761578 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632681) (= lambda!156130 lambda!156123))))

(assert (=> bs!761564 (= (= (+!1171 lt!1631951 lt!1631950) lt!1631951) (= lambda!156130 lambda!156039))))

(declare-fun bs!761591 () Bool)

(assert (= bs!761591 (and d!1345883 b!4434763)))

(assert (=> bs!761591 (= (= (+!1171 lt!1631951 lt!1631950) lt!1631951) (= lambda!156130 lambda!156037))))

(declare-fun bs!761592 () Bool)

(assert (= bs!761592 (and d!1345883 d!1345799)))

(assert (=> bs!761592 (= (= (+!1171 lt!1631951 lt!1631950) lt!1632547) (= lambda!156130 lambda!156107))))

(assert (=> bs!761567 (= (= (+!1171 lt!1631951 lt!1631950) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156130 lambda!156092))))

(assert (=> d!1345883 true))

(assert (=> d!1345883 (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) lambda!156130)))

(declare-fun lt!1632688 () Unit!83085)

(declare-fun choose!28130 (ListMap!2833) Unit!83085)

(assert (=> d!1345883 (= lt!1632688 (choose!28130 (+!1171 lt!1631951 lt!1631950)))))

(assert (=> d!1345883 (= (lemmaContainsAllItsOwnKeys!195 (+!1171 lt!1631951 lt!1631950)) lt!1632688)))

(declare-fun bs!761599 () Bool)

(assert (= bs!761599 d!1345883))

(declare-fun m!5121625 () Bool)

(assert (=> bs!761599 m!5121625))

(assert (=> bs!761599 m!5120189))

(declare-fun m!5121627 () Bool)

(assert (=> bs!761599 m!5121627))

(assert (=> bm!308550 d!1345883))

(declare-fun d!1345885 () Bool)

(assert (=> d!1345885 (= (invariantList!827 (toList!3590 lt!1632222)) (noDuplicatedKeys!186 (toList!3590 lt!1632222)))))

(declare-fun bs!761600 () Bool)

(assert (= bs!761600 d!1345885))

(declare-fun m!5121629 () Bool)

(assert (=> bs!761600 m!5121629))

(assert (=> b!4434799 d!1345885))

(declare-fun d!1345887 () Bool)

(declare-fun lt!1632692 () Bool)

(assert (=> d!1345887 (= lt!1632692 (select (content!7990 (toList!3590 lt!1632295)) lt!1631950))))

(declare-fun e!2761819 () Bool)

(assert (=> d!1345887 (= lt!1632692 e!2761819)))

(declare-fun res!1835582 () Bool)

(assert (=> d!1345887 (=> (not res!1835582) (not e!2761819))))

(assert (=> d!1345887 (= res!1835582 ((_ is Cons!49707) (toList!3590 lt!1632295)))))

(assert (=> d!1345887 (= (contains!12255 (toList!3590 lt!1632295) lt!1631950) lt!1632692)))

(declare-fun b!4435438 () Bool)

(declare-fun e!2761820 () Bool)

(assert (=> b!4435438 (= e!2761819 e!2761820)))

(declare-fun res!1835581 () Bool)

(assert (=> b!4435438 (=> res!1835581 e!2761820)))

(assert (=> b!4435438 (= res!1835581 (= (h!55414 (toList!3590 lt!1632295)) lt!1631950))))

(declare-fun b!4435439 () Bool)

(assert (=> b!4435439 (= e!2761820 (contains!12255 (t!356773 (toList!3590 lt!1632295)) lt!1631950))))

(assert (= (and d!1345887 res!1835582) b!4435438))

(assert (= (and b!4435438 (not res!1835581)) b!4435439))

(declare-fun m!5121631 () Bool)

(assert (=> d!1345887 m!5121631))

(declare-fun m!5121635 () Bool)

(assert (=> d!1345887 m!5121635))

(declare-fun m!5121637 () Bool)

(assert (=> b!4435439 m!5121637))

(assert (=> b!4434868 d!1345887))

(declare-fun d!1345889 () Bool)

(declare-fun res!1835583 () Bool)

(declare-fun e!2761821 () Bool)

(assert (=> d!1345889 (=> res!1835583 e!2761821)))

(assert (=> d!1345889 (= res!1835583 ((_ is Nil!49707) (toList!3590 lt!1631951)))))

(assert (=> d!1345889 (= (forall!9648 (toList!3590 lt!1631951) lambda!156065) e!2761821)))

(declare-fun b!4435440 () Bool)

(declare-fun e!2761822 () Bool)

(assert (=> b!4435440 (= e!2761821 e!2761822)))

(declare-fun res!1835584 () Bool)

(assert (=> b!4435440 (=> (not res!1835584) (not e!2761822))))

(assert (=> b!4435440 (= res!1835584 (dynLambda!20887 lambda!156065 (h!55414 (toList!3590 lt!1631951))))))

(declare-fun b!4435441 () Bool)

(assert (=> b!4435441 (= e!2761822 (forall!9648 (t!356773 (toList!3590 lt!1631951)) lambda!156065))))

(assert (= (and d!1345889 (not res!1835583)) b!4435440))

(assert (= (and b!4435440 res!1835584) b!4435441))

(declare-fun b_lambda!144371 () Bool)

(assert (=> (not b_lambda!144371) (not b!4435440)))

(declare-fun m!5121645 () Bool)

(assert (=> b!4435440 m!5121645))

(declare-fun m!5121647 () Bool)

(assert (=> b!4435441 m!5121647))

(assert (=> b!4434869 d!1345889))

(declare-fun d!1345893 () Bool)

(assert (=> d!1345893 (isDefined!8061 (getValueByKey!756 (toList!3589 lm!1616) hash!366))))

(declare-fun lt!1632716 () Unit!83085)

(declare-fun choose!28131 (List!49832 (_ BitVec 64)) Unit!83085)

(assert (=> d!1345893 (= lt!1632716 (choose!28131 (toList!3589 lm!1616) hash!366))))

(declare-fun e!2761830 () Bool)

(assert (=> d!1345893 e!2761830))

(declare-fun res!1835592 () Bool)

(assert (=> d!1345893 (=> (not res!1835592) (not e!2761830))))

(assert (=> d!1345893 (= res!1835592 (isStrictlySorted!254 (toList!3589 lm!1616)))))

(assert (=> d!1345893 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!664 (toList!3589 lm!1616) hash!366) lt!1632716)))

(declare-fun b!4435451 () Bool)

(assert (=> b!4435451 (= e!2761830 (containsKey!1193 (toList!3589 lm!1616) hash!366))))

(assert (= (and d!1345893 res!1835592) b!4435451))

(assert (=> d!1345893 m!5120585))

(assert (=> d!1345893 m!5120585))

(assert (=> d!1345893 m!5120619))

(declare-fun m!5121653 () Bool)

(assert (=> d!1345893 m!5121653))

(assert (=> d!1345893 m!5120227))

(assert (=> b!4435451 m!5120615))

(assert (=> b!4434831 d!1345893))

(declare-fun d!1345897 () Bool)

(declare-fun isEmpty!28373 (Option!10770) Bool)

(assert (=> d!1345897 (= (isDefined!8061 (getValueByKey!756 (toList!3589 lm!1616) hash!366)) (not (isEmpty!28373 (getValueByKey!756 (toList!3589 lm!1616) hash!366))))))

(declare-fun bs!761628 () Bool)

(assert (= bs!761628 d!1345897))

(assert (=> bs!761628 m!5120585))

(declare-fun m!5121655 () Bool)

(assert (=> bs!761628 m!5121655))

(assert (=> b!4434831 d!1345897))

(assert (=> b!4434831 d!1345793))

(declare-fun d!1345899 () Bool)

(assert (=> d!1345899 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1631947) key!3717))))

(declare-fun lt!1632719 () Unit!83085)

(declare-fun choose!28132 (List!49831 K!11075) Unit!83085)

(assert (=> d!1345899 (= lt!1632719 (choose!28132 (toList!3590 lt!1631947) key!3717))))

(assert (=> d!1345899 (invariantList!827 (toList!3590 lt!1631947))))

(assert (=> d!1345899 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1631947) key!3717) lt!1632719)))

(declare-fun bs!761638 () Bool)

(assert (= bs!761638 d!1345899))

(assert (=> bs!761638 m!5120633))

(assert (=> bs!761638 m!5120633))

(assert (=> bs!761638 m!5120635))

(declare-fun m!5121657 () Bool)

(assert (=> bs!761638 m!5121657))

(assert (=> bs!761638 m!5120861))

(assert (=> b!4434859 d!1345899))

(declare-fun d!1345901 () Bool)

(declare-fun isEmpty!28374 (Option!10769) Bool)

(assert (=> d!1345901 (= (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1631947) key!3717)) (not (isEmpty!28374 (getValueByKey!755 (toList!3590 lt!1631947) key!3717))))))

(declare-fun bs!761639 () Bool)

(assert (= bs!761639 d!1345901))

(assert (=> bs!761639 m!5120633))

(declare-fun m!5121659 () Bool)

(assert (=> bs!761639 m!5121659))

(assert (=> b!4434859 d!1345901))

(declare-fun b!4435455 () Bool)

(declare-fun e!2761832 () Option!10769)

(assert (=> b!4435455 (= e!2761832 None!10768)))

(declare-fun b!4435453 () Bool)

(declare-fun e!2761831 () Option!10769)

(assert (=> b!4435453 (= e!2761831 e!2761832)))

(declare-fun c!754895 () Bool)

(assert (=> b!4435453 (= c!754895 (and ((_ is Cons!49707) (toList!3590 lt!1631947)) (not (= (_1!28085 (h!55414 (toList!3590 lt!1631947))) key!3717))))))

(declare-fun b!4435452 () Bool)

(assert (=> b!4435452 (= e!2761831 (Some!10768 (_2!28085 (h!55414 (toList!3590 lt!1631947)))))))

(declare-fun d!1345903 () Bool)

(declare-fun c!754894 () Bool)

(assert (=> d!1345903 (= c!754894 (and ((_ is Cons!49707) (toList!3590 lt!1631947)) (= (_1!28085 (h!55414 (toList!3590 lt!1631947))) key!3717)))))

(assert (=> d!1345903 (= (getValueByKey!755 (toList!3590 lt!1631947) key!3717) e!2761831)))

(declare-fun b!4435454 () Bool)

(assert (=> b!4435454 (= e!2761832 (getValueByKey!755 (t!356773 (toList!3590 lt!1631947)) key!3717))))

(assert (= (and d!1345903 c!754894) b!4435452))

(assert (= (and d!1345903 (not c!754894)) b!4435453))

(assert (= (and b!4435453 c!754895) b!4435454))

(assert (= (and b!4435453 (not c!754895)) b!4435455))

(declare-fun m!5121661 () Bool)

(assert (=> b!4435454 m!5121661))

(assert (=> b!4434859 d!1345903))

(declare-fun d!1345905 () Bool)

(assert (=> d!1345905 (contains!12257 (getKeysList!274 (toList!3590 lt!1631947)) key!3717)))

(declare-fun lt!1632722 () Unit!83085)

(declare-fun choose!28133 (List!49831 K!11075) Unit!83085)

(assert (=> d!1345905 (= lt!1632722 (choose!28133 (toList!3590 lt!1631947) key!3717))))

(assert (=> d!1345905 (invariantList!827 (toList!3590 lt!1631947))))

(assert (=> d!1345905 (= (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1631947) key!3717) lt!1632722)))

(declare-fun bs!761659 () Bool)

(assert (= bs!761659 d!1345905))

(assert (=> bs!761659 m!5120641))

(assert (=> bs!761659 m!5120641))

(declare-fun m!5121663 () Bool)

(assert (=> bs!761659 m!5121663))

(declare-fun m!5121665 () Bool)

(assert (=> bs!761659 m!5121665))

(assert (=> bs!761659 m!5120861))

(assert (=> b!4434859 d!1345905))

(declare-fun b!4435459 () Bool)

(declare-fun e!2761834 () Option!10769)

(assert (=> b!4435459 (= e!2761834 None!10768)))

(declare-fun b!4435457 () Bool)

(declare-fun e!2761833 () Option!10769)

(assert (=> b!4435457 (= e!2761833 e!2761834)))

(declare-fun c!754897 () Bool)

(assert (=> b!4435457 (= c!754897 (and ((_ is Cons!49707) (toList!3590 lt!1632239)) (not (= (_1!28085 (h!55414 (toList!3590 lt!1632239))) (_1!28085 lt!1631950)))))))

(declare-fun b!4435456 () Bool)

(assert (=> b!4435456 (= e!2761833 (Some!10768 (_2!28085 (h!55414 (toList!3590 lt!1632239)))))))

(declare-fun d!1345907 () Bool)

(declare-fun c!754896 () Bool)

(assert (=> d!1345907 (= c!754896 (and ((_ is Cons!49707) (toList!3590 lt!1632239)) (= (_1!28085 (h!55414 (toList!3590 lt!1632239))) (_1!28085 lt!1631950))))))

(assert (=> d!1345907 (= (getValueByKey!755 (toList!3590 lt!1632239) (_1!28085 lt!1631950)) e!2761833)))

(declare-fun b!4435458 () Bool)

(assert (=> b!4435458 (= e!2761834 (getValueByKey!755 (t!356773 (toList!3590 lt!1632239)) (_1!28085 lt!1631950)))))

(assert (= (and d!1345907 c!754896) b!4435456))

(assert (= (and d!1345907 (not c!754896)) b!4435457))

(assert (= (and b!4435457 c!754897) b!4435458))

(assert (= (and b!4435457 (not c!754897)) b!4435459))

(declare-fun m!5121667 () Bool)

(assert (=> b!4435458 m!5121667))

(assert (=> b!4434803 d!1345907))

(declare-fun d!1345909 () Bool)

(declare-fun c!754898 () Bool)

(assert (=> d!1345909 (= c!754898 ((_ is Nil!49707) (toList!3590 lt!1631948)))))

(declare-fun e!2761835 () (InoxSet tuple2!49582))

(assert (=> d!1345909 (= (content!7990 (toList!3590 lt!1631948)) e!2761835)))

(declare-fun b!4435460 () Bool)

(assert (=> b!4435460 (= e!2761835 ((as const (Array tuple2!49582 Bool)) false))))

(declare-fun b!4435461 () Bool)

(assert (=> b!4435461 (= e!2761835 ((_ map or) (store ((as const (Array tuple2!49582 Bool)) false) (h!55414 (toList!3590 lt!1631948)) true) (content!7990 (t!356773 (toList!3590 lt!1631948)))))))

(assert (= (and d!1345909 c!754898) b!4435460))

(assert (= (and d!1345909 (not c!754898)) b!4435461))

(declare-fun m!5121669 () Bool)

(assert (=> b!4435461 m!5121669))

(declare-fun m!5121671 () Bool)

(assert (=> b!4435461 m!5121671))

(assert (=> d!1345629 d!1345909))

(assert (=> d!1345629 d!1345755))

(declare-fun d!1345911 () Bool)

(declare-fun res!1835593 () Bool)

(declare-fun e!2761836 () Bool)

(assert (=> d!1345911 (=> res!1835593 e!2761836)))

(assert (=> d!1345911 (= res!1835593 ((_ is Nil!49707) (toList!3590 lt!1631951)))))

(assert (=> d!1345911 (= (forall!9648 (toList!3590 lt!1631951) lambda!156040) e!2761836)))

(declare-fun b!4435462 () Bool)

(declare-fun e!2761837 () Bool)

(assert (=> b!4435462 (= e!2761836 e!2761837)))

(declare-fun res!1835594 () Bool)

(assert (=> b!4435462 (=> (not res!1835594) (not e!2761837))))

(assert (=> b!4435462 (= res!1835594 (dynLambda!20887 lambda!156040 (h!55414 (toList!3590 lt!1631951))))))

(declare-fun b!4435463 () Bool)

(assert (=> b!4435463 (= e!2761837 (forall!9648 (t!356773 (toList!3590 lt!1631951)) lambda!156040))))

(assert (= (and d!1345911 (not res!1835593)) b!4435462))

(assert (= (and b!4435462 res!1835594) b!4435463))

(declare-fun b_lambda!144375 () Bool)

(assert (=> (not b_lambda!144375) (not b!4435462)))

(declare-fun m!5121673 () Bool)

(assert (=> b!4435462 m!5121673))

(declare-fun m!5121675 () Bool)

(assert (=> b!4435463 m!5121675))

(assert (=> b!4434760 d!1345911))

(declare-fun d!1345913 () Bool)

(declare-fun res!1835595 () Bool)

(declare-fun e!2761838 () Bool)

(assert (=> d!1345913 (=> res!1835595 e!2761838)))

(assert (=> d!1345913 (= res!1835595 ((_ is Nil!49707) (toList!3590 (+!1171 lt!1631951 lt!1631950))))))

(assert (=> d!1345913 (= (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) (ite c!754747 lambda!156052 lambda!156053)) e!2761838)))

(declare-fun b!4435464 () Bool)

(declare-fun e!2761839 () Bool)

(assert (=> b!4435464 (= e!2761838 e!2761839)))

(declare-fun res!1835596 () Bool)

(assert (=> b!4435464 (=> (not res!1835596) (not e!2761839))))

(assert (=> b!4435464 (= res!1835596 (dynLambda!20887 (ite c!754747 lambda!156052 lambda!156053) (h!55414 (toList!3590 (+!1171 lt!1631951 lt!1631950)))))))

(declare-fun b!4435465 () Bool)

(assert (=> b!4435465 (= e!2761839 (forall!9648 (t!356773 (toList!3590 (+!1171 lt!1631951 lt!1631950))) (ite c!754747 lambda!156052 lambda!156053)))))

(assert (= (and d!1345913 (not res!1835595)) b!4435464))

(assert (= (and b!4435464 res!1835596) b!4435465))

(declare-fun b_lambda!144377 () Bool)

(assert (=> (not b_lambda!144377) (not b!4435464)))

(declare-fun m!5121707 () Bool)

(assert (=> b!4435464 m!5121707))

(declare-fun m!5121709 () Bool)

(assert (=> b!4435465 m!5121709))

(assert (=> bm!308551 d!1345913))

(declare-fun d!1345917 () Bool)

(assert (=> d!1345917 (= (invariantList!827 (toList!3590 lt!1632213)) (noDuplicatedKeys!186 (toList!3590 lt!1632213)))))

(declare-fun bs!761660 () Bool)

(assert (= bs!761660 d!1345917))

(declare-fun m!5121711 () Bool)

(assert (=> bs!761660 m!5121711))

(assert (=> d!1345579 d!1345917))

(declare-fun d!1345919 () Bool)

(declare-fun res!1835599 () Bool)

(declare-fun e!2761841 () Bool)

(assert (=> d!1345919 (=> res!1835599 e!2761841)))

(assert (=> d!1345919 (= res!1835599 ((_ is Nil!49708) (toList!3589 lt!1631945)))))

(assert (=> d!1345919 (= (forall!9646 (toList!3589 lt!1631945) lambda!156050) e!2761841)))

(declare-fun b!4435468 () Bool)

(declare-fun e!2761842 () Bool)

(assert (=> b!4435468 (= e!2761841 e!2761842)))

(declare-fun res!1835600 () Bool)

(assert (=> b!4435468 (=> (not res!1835600) (not e!2761842))))

(assert (=> b!4435468 (= res!1835600 (dynLambda!20886 lambda!156050 (h!55415 (toList!3589 lt!1631945))))))

(declare-fun b!4435469 () Bool)

(assert (=> b!4435469 (= e!2761842 (forall!9646 (t!356774 (toList!3589 lt!1631945)) lambda!156050))))

(assert (= (and d!1345919 (not res!1835599)) b!4435468))

(assert (= (and b!4435468 res!1835600) b!4435469))

(declare-fun b_lambda!144379 () Bool)

(assert (=> (not b_lambda!144379) (not b!4435468)))

(declare-fun m!5121717 () Bool)

(assert (=> b!4435468 m!5121717))

(declare-fun m!5121721 () Bool)

(assert (=> b!4435469 m!5121721))

(assert (=> d!1345579 d!1345919))

(declare-fun d!1345921 () Bool)

(declare-fun res!1835601 () Bool)

(declare-fun e!2761843 () Bool)

(assert (=> d!1345921 (=> res!1835601 e!2761843)))

(assert (=> d!1345921 (= res!1835601 ((_ is Nil!49708) (toList!3589 lm!1616)))))

(assert (=> d!1345921 (= (forall!9646 (toList!3589 lm!1616) lambda!156058) e!2761843)))

(declare-fun b!4435470 () Bool)

(declare-fun e!2761844 () Bool)

(assert (=> b!4435470 (= e!2761843 e!2761844)))

(declare-fun res!1835602 () Bool)

(assert (=> b!4435470 (=> (not res!1835602) (not e!2761844))))

(assert (=> b!4435470 (= res!1835602 (dynLambda!20886 lambda!156058 (h!55415 (toList!3589 lm!1616))))))

(declare-fun b!4435471 () Bool)

(assert (=> b!4435471 (= e!2761844 (forall!9646 (t!356774 (toList!3589 lm!1616)) lambda!156058))))

(assert (= (and d!1345921 (not res!1835601)) b!4435470))

(assert (= (and b!4435470 res!1835602) b!4435471))

(declare-fun b_lambda!144381 () Bool)

(assert (=> (not b_lambda!144381) (not b!4435470)))

(declare-fun m!5121729 () Bool)

(assert (=> b!4435470 m!5121729))

(declare-fun m!5121731 () Bool)

(assert (=> b!4435471 m!5121731))

(assert (=> d!1345603 d!1345921))

(declare-fun bs!761661 () Bool)

(declare-fun d!1345925 () Bool)

(assert (= bs!761661 (and d!1345925 d!1345865)))

(declare-fun lambda!156138 () Int)

(assert (=> bs!761661 (= (= lt!1631951 lt!1632668) (= lambda!156138 lambda!156124))))

(declare-fun bs!761662 () Bool)

(assert (= bs!761662 (and d!1345925 b!4435337)))

(assert (=> bs!761662 (= (= lt!1631951 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156138 lambda!156108))))

(declare-fun bs!761663 () Bool)

(assert (= bs!761663 (and d!1345925 b!4435279)))

(assert (=> bs!761663 (= (= lt!1631951 lt!1632560) (= lambda!156138 lambda!156106))))

(declare-fun bs!761664 () Bool)

(assert (= bs!761664 (and d!1345925 b!4435336)))

(assert (=> bs!761664 (= (= lt!1631951 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156138 lambda!156109))))

(assert (=> bs!761663 (= (= lt!1631951 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156138 lambda!156105))))

(declare-fun bs!761665 () Bool)

(assert (= bs!761665 (and d!1345925 d!1345619)))

(assert (=> bs!761665 (not (= lambda!156138 lambda!156061))))

(declare-fun bs!761666 () Bool)

(assert (= bs!761666 (and d!1345925 b!4435421)))

(assert (=> bs!761666 (= (= lt!1631951 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156138 lambda!156119))))

(declare-fun bs!761667 () Bool)

(assert (= bs!761667 (and d!1345925 d!1345723)))

(assert (=> bs!761667 (= (= lt!1631951 lt!1632235) (= lambda!156138 lambda!156103))))

(declare-fun bs!761668 () Bool)

(assert (= bs!761668 (and d!1345925 d!1345883)))

(assert (=> bs!761668 (= (= lt!1631951 (+!1171 lt!1631951 lt!1631950)) (= lambda!156138 lambda!156130))))

(declare-fun bs!761669 () Bool)

(assert (= bs!761669 (and d!1345925 b!4434762)))

(assert (=> bs!761669 (= (= lt!1631951 lt!1632187) (= lambda!156138 lambda!156040))))

(declare-fun bs!761670 () Bool)

(assert (= bs!761670 (and d!1345925 b!4434801)))

(assert (=> bs!761670 (= (= lt!1631951 (+!1171 lt!1631951 lt!1631950)) (= lambda!156138 lambda!156052))))

(declare-fun bs!761671 () Bool)

(assert (= bs!761671 (and d!1345925 d!1345633)))

(assert (=> bs!761671 (= (= lt!1631951 lt!1632306) (= lambda!156138 lambda!156066))))

(declare-fun bs!761672 () Bool)

(assert (= bs!761672 (and d!1345925 b!4435103)))

(assert (=> bs!761672 (= (= lt!1631951 lt!1632437) (= lambda!156138 lambda!156093))))

(declare-fun bs!761673 () Bool)

(assert (= bs!761673 (and d!1345925 d!1345851)))

(assert (=> bs!761673 (= (= lt!1631951 lt!1632615) (= lambda!156138 lambda!156116))))

(assert (=> bs!761664 (= (= lt!1631951 lt!1632598) (= lambda!156138 lambda!156110))))

(declare-fun bs!761674 () Bool)

(assert (= bs!761674 (and d!1345925 d!1345831)))

(assert (=> bs!761674 (= (= lt!1631951 lt!1632585) (= lambda!156138 lambda!156111))))

(declare-fun bs!761675 () Bool)

(assert (= bs!761675 (and d!1345925 b!4434800)))

(assert (=> bs!761675 (= (= lt!1631951 (+!1171 lt!1631951 lt!1631950)) (= lambda!156138 lambda!156053))))

(declare-fun bs!761676 () Bool)

(assert (= bs!761676 (and d!1345925 b!4435368)))

(assert (=> bs!761676 (= (= lt!1631951 lt!1632628) (= lambda!156138 lambda!156115))))

(declare-fun bs!761677 () Bool)

(assert (= bs!761677 (and d!1345925 b!4435280)))

(assert (=> bs!761677 (= (= lt!1631951 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156138 lambda!156104))))

(declare-fun bs!761678 () Bool)

(assert (= bs!761678 (and d!1345925 d!1345535)))

(assert (=> bs!761678 (= (= lt!1631951 lt!1632174) (= lambda!156138 lambda!156041))))

(declare-fun bs!761679 () Bool)

(assert (= bs!761679 (and d!1345925 d!1345597)))

(assert (=> bs!761679 (= (= lt!1631951 lt!1632222) (= lambda!156138 lambda!156055))))

(declare-fun bs!761680 () Bool)

(assert (= bs!761680 (and d!1345925 b!4435420)))

(assert (=> bs!761680 (= (= lt!1631951 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156138 lambda!156121))))

(declare-fun bs!761681 () Bool)

(assert (= bs!761681 (and d!1345925 d!1345703)))

(assert (=> bs!761681 (= (= lt!1631951 lt!1632424) (= lambda!156138 lambda!156094))))

(declare-fun bs!761682 () Bool)

(assert (= bs!761682 (and d!1345925 b!4435104)))

(assert (=> bs!761682 (= (= lt!1631951 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156138 lambda!156089))))

(declare-fun bs!761683 () Bool)

(assert (= bs!761683 (and d!1345925 b!4434872)))

(assert (=> bs!761683 (= lambda!156138 lambda!156063)))

(declare-fun bs!761684 () Bool)

(assert (= bs!761684 (and d!1345925 b!4434871)))

(assert (=> bs!761684 (= (= lt!1631951 lt!1632319) (= lambda!156138 lambda!156065))))

(declare-fun bs!761685 () Bool)

(assert (= bs!761685 (and d!1345925 b!4435369)))

(assert (=> bs!761685 (= (= lt!1631951 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156138 lambda!156113))))

(assert (=> bs!761675 (= (= lt!1631951 lt!1632235) (= lambda!156138 lambda!156054))))

(assert (=> bs!761684 (= lambda!156138 lambda!156064)))

(assert (=> bs!761676 (= (= lt!1631951 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156138 lambda!156114))))

(assert (=> bs!761680 (= (= lt!1631951 lt!1632681) (= lambda!156138 lambda!156123))))

(assert (=> bs!761669 (= lambda!156138 lambda!156039)))

(declare-fun bs!761686 () Bool)

(assert (= bs!761686 (and d!1345925 b!4434763)))

(assert (=> bs!761686 (= lambda!156138 lambda!156037)))

(declare-fun bs!761687 () Bool)

(assert (= bs!761687 (and d!1345925 d!1345799)))

(assert (=> bs!761687 (= (= lt!1631951 lt!1632547) (= lambda!156138 lambda!156107))))

(assert (=> bs!761672 (= (= lt!1631951 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156138 lambda!156092))))

(assert (=> d!1345925 true))

(assert (=> d!1345925 (forall!9648 (toList!3590 lt!1631951) lambda!156138)))

(declare-fun lt!1632727 () Unit!83085)

(assert (=> d!1345925 (= lt!1632727 (choose!28130 lt!1631951))))

(assert (=> d!1345925 (= (lemmaContainsAllItsOwnKeys!195 lt!1631951) lt!1632727)))

(declare-fun bs!761688 () Bool)

(assert (= bs!761688 d!1345925))

(declare-fun m!5121739 () Bool)

(assert (=> bs!761688 m!5121739))

(declare-fun m!5121741 () Bool)

(assert (=> bs!761688 m!5121741))

(assert (=> bm!308556 d!1345925))

(declare-fun b!4435484 () Bool)

(assert (=> b!4435484 false))

(declare-fun lt!1632740 () Unit!83085)

(declare-fun lt!1632743 () Unit!83085)

(assert (=> b!4435484 (= lt!1632740 lt!1632743)))

(assert (=> b!4435484 (containsKey!1194 (toList!3590 lt!1631963) (_1!28085 lt!1631950))))

(assert (=> b!4435484 (= lt!1632743 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1631963) (_1!28085 lt!1631950)))))

(declare-fun e!2761854 () Unit!83085)

(declare-fun Unit!83292 () Unit!83085)

(assert (=> b!4435484 (= e!2761854 Unit!83292)))

(declare-fun b!4435485 () Bool)

(declare-fun e!2761856 () List!49834)

(assert (=> b!4435485 (= e!2761856 (getKeysList!274 (toList!3590 lt!1631963)))))

(declare-fun b!4435486 () Bool)

(declare-fun e!2761857 () Bool)

(assert (=> b!4435486 (= e!2761857 (contains!12257 (keys!17006 lt!1631963) (_1!28085 lt!1631950)))))

(declare-fun d!1345929 () Bool)

(declare-fun e!2761855 () Bool)

(assert (=> d!1345929 e!2761855))

(declare-fun res!1835610 () Bool)

(assert (=> d!1345929 (=> res!1835610 e!2761855)))

(declare-fun e!2761858 () Bool)

(assert (=> d!1345929 (= res!1835610 e!2761858)))

(declare-fun res!1835611 () Bool)

(assert (=> d!1345929 (=> (not res!1835611) (not e!2761858))))

(declare-fun lt!1632739 () Bool)

(assert (=> d!1345929 (= res!1835611 (not lt!1632739))))

(declare-fun lt!1632742 () Bool)

(assert (=> d!1345929 (= lt!1632739 lt!1632742)))

(declare-fun lt!1632746 () Unit!83085)

(declare-fun e!2761859 () Unit!83085)

(assert (=> d!1345929 (= lt!1632746 e!2761859)))

(declare-fun c!754902 () Bool)

(assert (=> d!1345929 (= c!754902 lt!1632742)))

(assert (=> d!1345929 (= lt!1632742 (containsKey!1194 (toList!3590 lt!1631963) (_1!28085 lt!1631950)))))

(assert (=> d!1345929 (= (contains!12250 lt!1631963 (_1!28085 lt!1631950)) lt!1632739)))

(declare-fun b!4435487 () Bool)

(declare-fun lt!1632745 () Unit!83085)

(assert (=> b!4435487 (= e!2761859 lt!1632745)))

(declare-fun lt!1632744 () Unit!83085)

(assert (=> b!4435487 (= lt!1632744 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1631963) (_1!28085 lt!1631950)))))

(assert (=> b!4435487 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1631963) (_1!28085 lt!1631950)))))

(declare-fun lt!1632741 () Unit!83085)

(assert (=> b!4435487 (= lt!1632741 lt!1632744)))

(assert (=> b!4435487 (= lt!1632745 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1631963) (_1!28085 lt!1631950)))))

(declare-fun call!308630 () Bool)

(assert (=> b!4435487 call!308630))

(declare-fun bm!308625 () Bool)

(assert (=> bm!308625 (= call!308630 (contains!12257 e!2761856 (_1!28085 lt!1631950)))))

(declare-fun c!754903 () Bool)

(assert (=> bm!308625 (= c!754903 c!754902)))

(declare-fun b!4435488 () Bool)

(assert (=> b!4435488 (= e!2761855 e!2761857)))

(declare-fun res!1835609 () Bool)

(assert (=> b!4435488 (=> (not res!1835609) (not e!2761857))))

(assert (=> b!4435488 (= res!1835609 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1631963) (_1!28085 lt!1631950))))))

(declare-fun b!4435489 () Bool)

(assert (=> b!4435489 (= e!2761859 e!2761854)))

(declare-fun c!754904 () Bool)

(assert (=> b!4435489 (= c!754904 call!308630)))

(declare-fun b!4435490 () Bool)

(declare-fun Unit!83294 () Unit!83085)

(assert (=> b!4435490 (= e!2761854 Unit!83294)))

(declare-fun b!4435491 () Bool)

(assert (=> b!4435491 (= e!2761858 (not (contains!12257 (keys!17006 lt!1631963) (_1!28085 lt!1631950))))))

(declare-fun b!4435492 () Bool)

(assert (=> b!4435492 (= e!2761856 (keys!17006 lt!1631963))))

(assert (= (and d!1345929 c!754902) b!4435487))

(assert (= (and d!1345929 (not c!754902)) b!4435489))

(assert (= (and b!4435489 c!754904) b!4435484))

(assert (= (and b!4435489 (not c!754904)) b!4435490))

(assert (= (or b!4435487 b!4435489) bm!308625))

(assert (= (and bm!308625 c!754903) b!4435485))

(assert (= (and bm!308625 (not c!754903)) b!4435492))

(assert (= (and d!1345929 res!1835611) b!4435491))

(assert (= (and d!1345929 (not res!1835610)) b!4435488))

(assert (= (and b!4435488 res!1835609) b!4435486))

(declare-fun m!5121763 () Bool)

(assert (=> b!4435484 m!5121763))

(declare-fun m!5121765 () Bool)

(assert (=> b!4435484 m!5121765))

(declare-fun m!5121767 () Bool)

(assert (=> b!4435491 m!5121767))

(assert (=> b!4435491 m!5121767))

(declare-fun m!5121769 () Bool)

(assert (=> b!4435491 m!5121769))

(assert (=> d!1345929 m!5121763))

(assert (=> b!4435486 m!5121767))

(assert (=> b!4435486 m!5121767))

(assert (=> b!4435486 m!5121769))

(assert (=> b!4435492 m!5121767))

(declare-fun m!5121771 () Bool)

(assert (=> b!4435487 m!5121771))

(assert (=> b!4435487 m!5120241))

(assert (=> b!4435487 m!5120241))

(declare-fun m!5121773 () Bool)

(assert (=> b!4435487 m!5121773))

(declare-fun m!5121775 () Bool)

(assert (=> b!4435487 m!5121775))

(declare-fun m!5121777 () Bool)

(assert (=> bm!308625 m!5121777))

(assert (=> b!4435488 m!5120241))

(assert (=> b!4435488 m!5120241))

(assert (=> b!4435488 m!5121773))

(declare-fun m!5121779 () Bool)

(assert (=> b!4435485 m!5121779))

(assert (=> d!1345533 d!1345929))

(declare-fun b!4435505 () Bool)

(declare-fun e!2761867 () Option!10769)

(assert (=> b!4435505 (= e!2761867 None!10768)))

(declare-fun b!4435503 () Bool)

(declare-fun e!2761866 () Option!10769)

(assert (=> b!4435503 (= e!2761866 e!2761867)))

(declare-fun c!754909 () Bool)

(assert (=> b!4435503 (= c!754909 (and ((_ is Cons!49707) lt!1631962) (not (= (_1!28085 (h!55414 lt!1631962)) (_1!28085 lt!1631950)))))))

(declare-fun b!4435502 () Bool)

(assert (=> b!4435502 (= e!2761866 (Some!10768 (_2!28085 (h!55414 lt!1631962))))))

(declare-fun d!1345933 () Bool)

(declare-fun c!754908 () Bool)

(assert (=> d!1345933 (= c!754908 (and ((_ is Cons!49707) lt!1631962) (= (_1!28085 (h!55414 lt!1631962)) (_1!28085 lt!1631950))))))

(assert (=> d!1345933 (= (getValueByKey!755 lt!1631962 (_1!28085 lt!1631950)) e!2761866)))

(declare-fun b!4435504 () Bool)

(assert (=> b!4435504 (= e!2761867 (getValueByKey!755 (t!356773 lt!1631962) (_1!28085 lt!1631950)))))

(assert (= (and d!1345933 c!754908) b!4435502))

(assert (= (and d!1345933 (not c!754908)) b!4435503))

(assert (= (and b!4435503 c!754909) b!4435504))

(assert (= (and b!4435503 (not c!754909)) b!4435505))

(declare-fun m!5121781 () Bool)

(assert (=> b!4435504 m!5121781))

(assert (=> d!1345533 d!1345933))

(declare-fun d!1345935 () Bool)

(assert (=> d!1345935 (= (getValueByKey!755 lt!1631962 (_1!28085 lt!1631950)) (Some!10768 (_2!28085 lt!1631950)))))

(declare-fun lt!1632755 () Unit!83085)

(assert (=> d!1345935 (= lt!1632755 (choose!28118 lt!1631962 (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun e!2761868 () Bool)

(assert (=> d!1345935 e!2761868))

(declare-fun res!1835615 () Bool)

(assert (=> d!1345935 (=> (not res!1835615) (not e!2761868))))

(assert (=> d!1345935 (= res!1835615 (invariantList!827 lt!1631962))))

(assert (=> d!1345935 (= (lemmaContainsTupThenGetReturnValue!488 lt!1631962 (_1!28085 lt!1631950) (_2!28085 lt!1631950)) lt!1632755)))

(declare-fun b!4435506 () Bool)

(declare-fun res!1835616 () Bool)

(assert (=> b!4435506 (=> (not res!1835616) (not e!2761868))))

(assert (=> b!4435506 (= res!1835616 (containsKey!1194 lt!1631962 (_1!28085 lt!1631950)))))

(declare-fun b!4435507 () Bool)

(assert (=> b!4435507 (= e!2761868 (contains!12255 lt!1631962 (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950))))))

(assert (= (and d!1345935 res!1835615) b!4435506))

(assert (= (and b!4435506 res!1835616) b!4435507))

(assert (=> d!1345935 m!5120235))

(declare-fun m!5121801 () Bool)

(assert (=> d!1345935 m!5121801))

(declare-fun m!5121805 () Bool)

(assert (=> d!1345935 m!5121805))

(declare-fun m!5121807 () Bool)

(assert (=> b!4435506 m!5121807))

(declare-fun m!5121809 () Bool)

(assert (=> b!4435507 m!5121809))

(assert (=> d!1345533 d!1345935))

(declare-fun b!4435510 () Bool)

(declare-fun e!2761871 () List!49831)

(assert (=> b!4435510 (= e!2761871 Nil!49707)))

(declare-fun b!4435511 () Bool)

(declare-fun res!1835622 () Bool)

(declare-fun e!2761872 () Bool)

(assert (=> b!4435511 (=> (not res!1835622) (not e!2761872))))

(declare-fun lt!1632756 () List!49831)

(assert (=> b!4435511 (= res!1835622 (contains!12255 lt!1632756 (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950))))))

(declare-fun b!4435512 () Bool)

(declare-fun e!2761875 () List!49831)

(declare-fun lt!1632757 () List!49831)

(assert (=> b!4435512 (= e!2761875 lt!1632757)))

(declare-fun call!308632 () List!49831)

(assert (=> b!4435512 (= lt!1632757 call!308632)))

(declare-fun c!754914 () Bool)

(assert (=> b!4435512 (= c!754914 (containsKey!1194 (insertNoDuplicatedKeys!215 (t!356773 (toList!3590 lt!1631947)) (_1!28085 lt!1631950) (_2!28085 lt!1631950)) (_1!28085 (h!55414 (toList!3590 lt!1631947)))))))

(declare-fun lt!1632761 () Unit!83085)

(declare-fun e!2761876 () Unit!83085)

(assert (=> b!4435512 (= lt!1632761 e!2761876)))

(declare-fun b!4435513 () Bool)

(declare-fun c!754910 () Bool)

(assert (=> b!4435513 (= c!754910 ((_ is Cons!49707) (toList!3590 lt!1631947)))))

(declare-fun e!2761874 () List!49831)

(assert (=> b!4435513 (= e!2761874 e!2761875)))

(declare-fun b!4435514 () Bool)

(declare-fun e!2761877 () List!49831)

(assert (=> b!4435514 (= e!2761877 e!2761874)))

(declare-fun res!1835619 () Bool)

(assert (=> b!4435514 (= res!1835619 ((_ is Cons!49707) (toList!3590 lt!1631947)))))

(declare-fun e!2761873 () Bool)

(assert (=> b!4435514 (=> (not res!1835619) (not e!2761873))))

(declare-fun c!754911 () Bool)

(assert (=> b!4435514 (= c!754911 e!2761873)))

(declare-fun b!4435515 () Bool)

(assert (=> b!4435515 false))

(declare-fun lt!1632766 () Unit!83085)

(declare-fun lt!1632764 () Unit!83085)

(assert (=> b!4435515 (= lt!1632766 lt!1632764)))

(assert (=> b!4435515 (containsKey!1194 (t!356773 (toList!3590 lt!1631947)) (_1!28085 (h!55414 (toList!3590 lt!1631947))))))

(assert (=> b!4435515 (= lt!1632764 (lemmaInGetKeysListThenContainsKey!272 (t!356773 (toList!3590 lt!1631947)) (_1!28085 (h!55414 (toList!3590 lt!1631947)))))))

(declare-fun lt!1632762 () Unit!83085)

(declare-fun lt!1632759 () Unit!83085)

(assert (=> b!4435515 (= lt!1632762 lt!1632759)))

(declare-fun call!308635 () List!49834)

(assert (=> b!4435515 (contains!12257 call!308635 (_1!28085 (h!55414 (toList!3590 lt!1631947))))))

(declare-fun lt!1632763 () List!49831)

(assert (=> b!4435515 (= lt!1632759 (lemmaInListThenGetKeysListContains!271 lt!1632763 (_1!28085 (h!55414 (toList!3590 lt!1631947)))))))

(assert (=> b!4435515 (= lt!1632763 (insertNoDuplicatedKeys!215 (t!356773 (toList!3590 lt!1631947)) (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun Unit!83295 () Unit!83085)

(assert (=> b!4435515 (= e!2761876 Unit!83295)))

(declare-fun b!4435516 () Bool)

(assert (=> b!4435516 (= e!2761872 (= (content!7991 (getKeysList!274 lt!1632756)) ((_ map or) (content!7991 (getKeysList!274 (toList!3590 lt!1631947))) (store ((as const (Array K!11075 Bool)) false) (_1!28085 lt!1631950) true))))))

(declare-fun b!4435517 () Bool)

(assert (=> b!4435517 (= e!2761871 (insertNoDuplicatedKeys!215 (t!356773 (toList!3590 lt!1631947)) (_1!28085 lt!1631950) (_2!28085 lt!1631950)))))

(declare-fun b!4435518 () Bool)

(declare-fun call!308634 () List!49831)

(assert (=> b!4435518 (= e!2761877 call!308634)))

(declare-fun lt!1632760 () List!49834)

(assert (=> b!4435518 (= lt!1632760 call!308635)))

(declare-fun lt!1632765 () Unit!83085)

(assert (=> b!4435518 (= lt!1632765 (lemmaSubseqRefl!102 lt!1632760))))

(assert (=> b!4435518 (subseq!618 lt!1632760 lt!1632760)))

(declare-fun lt!1632758 () Unit!83085)

(assert (=> b!4435518 (= lt!1632758 lt!1632765)))

(declare-fun b!4435519 () Bool)

(declare-fun Unit!83298 () Unit!83085)

(assert (=> b!4435519 (= e!2761876 Unit!83298)))

(declare-fun b!4435521 () Bool)

(declare-fun call!308633 () List!49831)

(assert (=> b!4435521 (= e!2761874 call!308633)))

(declare-fun bm!308627 () Bool)

(assert (=> bm!308627 (= call!308632 call!308633)))

(declare-fun c!754912 () Bool)

(assert (=> bm!308627 (= c!754912 c!754910)))

(declare-fun c!754913 () Bool)

(declare-fun bm!308628 () Bool)

(assert (=> bm!308628 (= call!308635 (getKeysList!274 (ite c!754913 (toList!3590 lt!1631947) lt!1632763)))))

(declare-fun b!4435522 () Bool)

(assert (=> b!4435522 (= e!2761873 (not (containsKey!1194 (toList!3590 lt!1631947) (_1!28085 lt!1631950))))))

(declare-fun bm!308629 () Bool)

(assert (=> bm!308629 (= call!308633 call!308634)))

(declare-fun b!4435520 () Bool)

(assert (=> b!4435520 (= e!2761875 call!308632)))

(declare-fun d!1345939 () Bool)

(assert (=> d!1345939 e!2761872))

(declare-fun res!1835621 () Bool)

(assert (=> d!1345939 (=> (not res!1835621) (not e!2761872))))

(assert (=> d!1345939 (= res!1835621 (invariantList!827 lt!1632756))))

(assert (=> d!1345939 (= lt!1632756 e!2761877)))

(assert (=> d!1345939 (= c!754913 (and ((_ is Cons!49707) (toList!3590 lt!1631947)) (= (_1!28085 (h!55414 (toList!3590 lt!1631947))) (_1!28085 lt!1631950))))))

(assert (=> d!1345939 (invariantList!827 (toList!3590 lt!1631947))))

(assert (=> d!1345939 (= (insertNoDuplicatedKeys!215 (toList!3590 lt!1631947) (_1!28085 lt!1631950) (_2!28085 lt!1631950)) lt!1632756)))

(declare-fun bm!308630 () Bool)

(assert (=> bm!308630 (= call!308634 ($colon$colon!802 (ite c!754913 (t!356773 (toList!3590 lt!1631947)) (ite c!754911 (toList!3590 lt!1631947) e!2761871)) (ite (or c!754913 c!754911) (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950)) (ite c!754910 (h!55414 (toList!3590 lt!1631947)) (tuple2!49583 (_1!28085 lt!1631950) (_2!28085 lt!1631950))))))))

(declare-fun b!4435523 () Bool)

(declare-fun res!1835620 () Bool)

(assert (=> b!4435523 (=> (not res!1835620) (not e!2761872))))

(assert (=> b!4435523 (= res!1835620 (containsKey!1194 lt!1632756 (_1!28085 lt!1631950)))))

(assert (= (and d!1345939 c!754913) b!4435518))

(assert (= (and d!1345939 (not c!754913)) b!4435514))

(assert (= (and b!4435514 res!1835619) b!4435522))

(assert (= (and b!4435514 c!754911) b!4435521))

(assert (= (and b!4435514 (not c!754911)) b!4435513))

(assert (= (and b!4435513 c!754910) b!4435512))

(assert (= (and b!4435513 (not c!754910)) b!4435520))

(assert (= (and b!4435512 c!754914) b!4435515))

(assert (= (and b!4435512 (not c!754914)) b!4435519))

(assert (= (or b!4435512 b!4435520) bm!308627))

(assert (= (and bm!308627 c!754912) b!4435517))

(assert (= (and bm!308627 (not c!754912)) b!4435510))

(assert (= (or b!4435521 bm!308627) bm!308629))

(assert (= (or b!4435518 b!4435515) bm!308628))

(assert (= (or b!4435518 bm!308629) bm!308630))

(assert (= (and d!1345939 res!1835621) b!4435523))

(assert (= (and b!4435523 res!1835620) b!4435511))

(assert (= (and b!4435511 res!1835622) b!4435516))

(declare-fun m!5121831 () Bool)

(assert (=> bm!308628 m!5121831))

(declare-fun m!5121833 () Bool)

(assert (=> b!4435522 m!5121833))

(assert (=> b!4435515 m!5120857))

(declare-fun m!5121835 () Bool)

(assert (=> b!4435515 m!5121835))

(declare-fun m!5121837 () Bool)

(assert (=> b!4435515 m!5121837))

(declare-fun m!5121839 () Bool)

(assert (=> b!4435515 m!5121839))

(declare-fun m!5121841 () Bool)

(assert (=> b!4435515 m!5121841))

(declare-fun m!5121843 () Bool)

(assert (=> b!4435511 m!5121843))

(declare-fun m!5121847 () Bool)

(assert (=> b!4435516 m!5121847))

(declare-fun m!5121851 () Bool)

(assert (=> b!4435516 m!5121851))

(assert (=> b!4435516 m!5121847))

(assert (=> b!4435516 m!5120641))

(assert (=> b!4435516 m!5120785))

(assert (=> b!4435516 m!5120641))

(declare-fun m!5121853 () Bool)

(assert (=> b!4435516 m!5121853))

(declare-fun m!5121855 () Bool)

(assert (=> d!1345939 m!5121855))

(assert (=> d!1345939 m!5120861))

(declare-fun m!5121857 () Bool)

(assert (=> b!4435518 m!5121857))

(declare-fun m!5121859 () Bool)

(assert (=> b!4435518 m!5121859))

(assert (=> b!4435512 m!5121841))

(assert (=> b!4435512 m!5121841))

(declare-fun m!5121861 () Bool)

(assert (=> b!4435512 m!5121861))

(declare-fun m!5121863 () Bool)

(assert (=> b!4435523 m!5121863))

(assert (=> b!4435517 m!5121841))

(declare-fun m!5121871 () Bool)

(assert (=> bm!308630 m!5121871))

(assert (=> d!1345533 d!1345939))

(assert (=> b!4434860 d!1345901))

(assert (=> b!4434860 d!1345903))

(assert (=> b!4434833 d!1345897))

(assert (=> b!4434833 d!1345793))

(assert (=> bm!308544 d!1345925))

(declare-fun d!1345957 () Bool)

(declare-fun res!1835633 () Bool)

(declare-fun e!2761890 () Bool)

(assert (=> d!1345957 (=> res!1835633 e!2761890)))

(assert (=> d!1345957 (= res!1835633 ((_ is Nil!49707) (toList!3590 (+!1171 lt!1631951 lt!1631950))))))

(assert (=> d!1345957 (= (forall!9648 (toList!3590 (+!1171 lt!1631951 lt!1631950)) lambda!156055) e!2761890)))

(declare-fun b!4435538 () Bool)

(declare-fun e!2761891 () Bool)

(assert (=> b!4435538 (= e!2761890 e!2761891)))

(declare-fun res!1835634 () Bool)

(assert (=> b!4435538 (=> (not res!1835634) (not e!2761891))))

(assert (=> b!4435538 (= res!1835634 (dynLambda!20887 lambda!156055 (h!55414 (toList!3590 (+!1171 lt!1631951 lt!1631950)))))))

(declare-fun b!4435539 () Bool)

(assert (=> b!4435539 (= e!2761891 (forall!9648 (t!356773 (toList!3590 (+!1171 lt!1631951 lt!1631950))) lambda!156055))))

(assert (= (and d!1345957 (not res!1835633)) b!4435538))

(assert (= (and b!4435538 res!1835634) b!4435539))

(declare-fun b_lambda!144393 () Bool)

(assert (=> (not b_lambda!144393) (not b!4435538)))

(declare-fun m!5121879 () Bool)

(assert (=> b!4435538 m!5121879))

(declare-fun m!5121881 () Bool)

(assert (=> b!4435539 m!5121881))

(assert (=> b!4434802 d!1345957))

(declare-fun d!1345961 () Bool)

(declare-fun res!1835641 () Bool)

(declare-fun e!2761898 () Bool)

(assert (=> d!1345961 (=> res!1835641 e!2761898)))

(assert (=> d!1345961 (= res!1835641 (or ((_ is Nil!49708) (toList!3589 lm!1616)) ((_ is Nil!49708) (t!356774 (toList!3589 lm!1616)))))))

(assert (=> d!1345961 (= (isStrictlySorted!254 (toList!3589 lm!1616)) e!2761898)))

(declare-fun b!4435546 () Bool)

(declare-fun e!2761899 () Bool)

(assert (=> b!4435546 (= e!2761898 e!2761899)))

(declare-fun res!1835642 () Bool)

(assert (=> b!4435546 (=> (not res!1835642) (not e!2761899))))

(assert (=> b!4435546 (= res!1835642 (bvslt (_1!28086 (h!55415 (toList!3589 lm!1616))) (_1!28086 (h!55415 (t!356774 (toList!3589 lm!1616))))))))

(declare-fun b!4435547 () Bool)

(assert (=> b!4435547 (= e!2761899 (isStrictlySorted!254 (t!356774 (toList!3589 lm!1616))))))

(assert (= (and d!1345961 (not res!1835641)) b!4435546))

(assert (= (and b!4435546 res!1835642) b!4435547))

(declare-fun m!5121887 () Bool)

(assert (=> b!4435547 m!5121887))

(assert (=> d!1345529 d!1345961))

(declare-fun d!1345965 () Bool)

(declare-fun res!1835643 () Bool)

(declare-fun e!2761900 () Bool)

(assert (=> d!1345965 (=> res!1835643 e!2761900)))

(assert (=> d!1345965 (= res!1835643 ((_ is Nil!49707) (t!356773 lt!1631939)))))

(assert (=> d!1345965 (= (forall!9648 (t!356773 lt!1631939) lambda!156065) e!2761900)))

(declare-fun b!4435548 () Bool)

(declare-fun e!2761901 () Bool)

(assert (=> b!4435548 (= e!2761900 e!2761901)))

(declare-fun res!1835644 () Bool)

(assert (=> b!4435548 (=> (not res!1835644) (not e!2761901))))

(assert (=> b!4435548 (= res!1835644 (dynLambda!20887 lambda!156065 (h!55414 (t!356773 lt!1631939))))))

(declare-fun b!4435549 () Bool)

(assert (=> b!4435549 (= e!2761901 (forall!9648 (t!356773 (t!356773 lt!1631939)) lambda!156065))))

(assert (= (and d!1345965 (not res!1835643)) b!4435548))

(assert (= (and b!4435548 res!1835644) b!4435549))

(declare-fun b_lambda!144397 () Bool)

(assert (=> (not b_lambda!144397) (not b!4435548)))

(declare-fun m!5121889 () Bool)

(assert (=> b!4435548 m!5121889))

(declare-fun m!5121891 () Bool)

(assert (=> b!4435549 m!5121891))

(assert (=> b!4434871 d!1345965))

(declare-fun b!4435550 () Bool)

(assert (=> b!4435550 false))

(declare-fun lt!1632769 () Unit!83085)

(declare-fun lt!1632772 () Unit!83085)

(assert (=> b!4435550 (= lt!1632769 lt!1632772)))

(assert (=> b!4435550 (containsKey!1194 (toList!3590 lt!1632302) (_1!28085 (h!55414 lt!1631939)))))

(assert (=> b!4435550 (= lt!1632772 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1632302) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun e!2761902 () Unit!83085)

(declare-fun Unit!83299 () Unit!83085)

(assert (=> b!4435550 (= e!2761902 Unit!83299)))

(declare-fun b!4435551 () Bool)

(declare-fun e!2761904 () List!49834)

(assert (=> b!4435551 (= e!2761904 (getKeysList!274 (toList!3590 lt!1632302)))))

(declare-fun b!4435552 () Bool)

(declare-fun e!2761905 () Bool)

(assert (=> b!4435552 (= e!2761905 (contains!12257 (keys!17006 lt!1632302) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun d!1345967 () Bool)

(declare-fun e!2761903 () Bool)

(assert (=> d!1345967 e!2761903))

(declare-fun res!1835646 () Bool)

(assert (=> d!1345967 (=> res!1835646 e!2761903)))

(declare-fun e!2761906 () Bool)

(assert (=> d!1345967 (= res!1835646 e!2761906)))

(declare-fun res!1835647 () Bool)

(assert (=> d!1345967 (=> (not res!1835647) (not e!2761906))))

(declare-fun lt!1632768 () Bool)

(assert (=> d!1345967 (= res!1835647 (not lt!1632768))))

(declare-fun lt!1632771 () Bool)

(assert (=> d!1345967 (= lt!1632768 lt!1632771)))

(declare-fun lt!1632775 () Unit!83085)

(declare-fun e!2761907 () Unit!83085)

(assert (=> d!1345967 (= lt!1632775 e!2761907)))

(declare-fun c!754917 () Bool)

(assert (=> d!1345967 (= c!754917 lt!1632771)))

(assert (=> d!1345967 (= lt!1632771 (containsKey!1194 (toList!3590 lt!1632302) (_1!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345967 (= (contains!12250 lt!1632302 (_1!28085 (h!55414 lt!1631939))) lt!1632768)))

(declare-fun b!4435553 () Bool)

(declare-fun lt!1632774 () Unit!83085)

(assert (=> b!4435553 (= e!2761907 lt!1632774)))

(declare-fun lt!1632773 () Unit!83085)

(assert (=> b!4435553 (= lt!1632773 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1632302) (_1!28085 (h!55414 lt!1631939))))))

(assert (=> b!4435553 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632302) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun lt!1632770 () Unit!83085)

(assert (=> b!4435553 (= lt!1632770 lt!1632773)))

(assert (=> b!4435553 (= lt!1632774 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1632302) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun call!308636 () Bool)

(assert (=> b!4435553 call!308636))

(declare-fun bm!308631 () Bool)

(assert (=> bm!308631 (= call!308636 (contains!12257 e!2761904 (_1!28085 (h!55414 lt!1631939))))))

(declare-fun c!754918 () Bool)

(assert (=> bm!308631 (= c!754918 c!754917)))

(declare-fun b!4435554 () Bool)

(assert (=> b!4435554 (= e!2761903 e!2761905)))

(declare-fun res!1835645 () Bool)

(assert (=> b!4435554 (=> (not res!1835645) (not e!2761905))))

(assert (=> b!4435554 (= res!1835645 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632302) (_1!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435555 () Bool)

(assert (=> b!4435555 (= e!2761907 e!2761902)))

(declare-fun c!754919 () Bool)

(assert (=> b!4435555 (= c!754919 call!308636)))

(declare-fun b!4435556 () Bool)

(declare-fun Unit!83300 () Unit!83085)

(assert (=> b!4435556 (= e!2761902 Unit!83300)))

(declare-fun b!4435557 () Bool)

(assert (=> b!4435557 (= e!2761906 (not (contains!12257 (keys!17006 lt!1632302) (_1!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435558 () Bool)

(assert (=> b!4435558 (= e!2761904 (keys!17006 lt!1632302))))

(assert (= (and d!1345967 c!754917) b!4435553))

(assert (= (and d!1345967 (not c!754917)) b!4435555))

(assert (= (and b!4435555 c!754919) b!4435550))

(assert (= (and b!4435555 (not c!754919)) b!4435556))

(assert (= (or b!4435553 b!4435555) bm!308631))

(assert (= (and bm!308631 c!754918) b!4435551))

(assert (= (and bm!308631 (not c!754918)) b!4435558))

(assert (= (and d!1345967 res!1835647) b!4435557))

(assert (= (and d!1345967 (not res!1835646)) b!4435554))

(assert (= (and b!4435554 res!1835645) b!4435552))

(declare-fun m!5121893 () Bool)

(assert (=> b!4435550 m!5121893))

(declare-fun m!5121895 () Bool)

(assert (=> b!4435550 m!5121895))

(declare-fun m!5121897 () Bool)

(assert (=> b!4435557 m!5121897))

(assert (=> b!4435557 m!5121897))

(declare-fun m!5121899 () Bool)

(assert (=> b!4435557 m!5121899))

(assert (=> d!1345967 m!5121893))

(assert (=> b!4435552 m!5121897))

(assert (=> b!4435552 m!5121897))

(assert (=> b!4435552 m!5121899))

(assert (=> b!4435558 m!5121897))

(declare-fun m!5121901 () Bool)

(assert (=> b!4435553 m!5121901))

(declare-fun m!5121903 () Bool)

(assert (=> b!4435553 m!5121903))

(assert (=> b!4435553 m!5121903))

(declare-fun m!5121905 () Bool)

(assert (=> b!4435553 m!5121905))

(declare-fun m!5121907 () Bool)

(assert (=> b!4435553 m!5121907))

(declare-fun m!5121909 () Bool)

(assert (=> bm!308631 m!5121909))

(assert (=> b!4435554 m!5121903))

(assert (=> b!4435554 m!5121903))

(assert (=> b!4435554 m!5121905))

(declare-fun m!5121911 () Bool)

(assert (=> b!4435551 m!5121911))

(assert (=> b!4434871 d!1345967))

(declare-fun b!4435559 () Bool)

(assert (=> b!4435559 false))

(declare-fun lt!1632779 () Unit!83085)

(declare-fun lt!1632782 () Unit!83085)

(assert (=> b!4435559 (= lt!1632779 lt!1632782)))

(assert (=> b!4435559 (containsKey!1194 (toList!3590 lt!1632319) (_1!28085 (h!55414 lt!1631939)))))

(assert (=> b!4435559 (= lt!1632782 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1632319) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun e!2761908 () Unit!83085)

(declare-fun Unit!83301 () Unit!83085)

(assert (=> b!4435559 (= e!2761908 Unit!83301)))

(declare-fun b!4435560 () Bool)

(declare-fun e!2761910 () List!49834)

(assert (=> b!4435560 (= e!2761910 (getKeysList!274 (toList!3590 lt!1632319)))))

(declare-fun b!4435561 () Bool)

(declare-fun e!2761911 () Bool)

(assert (=> b!4435561 (= e!2761911 (contains!12257 (keys!17006 lt!1632319) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun d!1345969 () Bool)

(declare-fun e!2761909 () Bool)

(assert (=> d!1345969 e!2761909))

(declare-fun res!1835649 () Bool)

(assert (=> d!1345969 (=> res!1835649 e!2761909)))

(declare-fun e!2761912 () Bool)

(assert (=> d!1345969 (= res!1835649 e!2761912)))

(declare-fun res!1835650 () Bool)

(assert (=> d!1345969 (=> (not res!1835650) (not e!2761912))))

(declare-fun lt!1632778 () Bool)

(assert (=> d!1345969 (= res!1835650 (not lt!1632778))))

(declare-fun lt!1632781 () Bool)

(assert (=> d!1345969 (= lt!1632778 lt!1632781)))

(declare-fun lt!1632785 () Unit!83085)

(declare-fun e!2761913 () Unit!83085)

(assert (=> d!1345969 (= lt!1632785 e!2761913)))

(declare-fun c!754920 () Bool)

(assert (=> d!1345969 (= c!754920 lt!1632781)))

(assert (=> d!1345969 (= lt!1632781 (containsKey!1194 (toList!3590 lt!1632319) (_1!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345969 (= (contains!12250 lt!1632319 (_1!28085 (h!55414 lt!1631939))) lt!1632778)))

(declare-fun b!4435562 () Bool)

(declare-fun lt!1632784 () Unit!83085)

(assert (=> b!4435562 (= e!2761913 lt!1632784)))

(declare-fun lt!1632783 () Unit!83085)

(assert (=> b!4435562 (= lt!1632783 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1632319) (_1!28085 (h!55414 lt!1631939))))))

(assert (=> b!4435562 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632319) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun lt!1632780 () Unit!83085)

(assert (=> b!4435562 (= lt!1632780 lt!1632783)))

(assert (=> b!4435562 (= lt!1632784 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1632319) (_1!28085 (h!55414 lt!1631939))))))

(declare-fun call!308637 () Bool)

(assert (=> b!4435562 call!308637))

(declare-fun bm!308632 () Bool)

(assert (=> bm!308632 (= call!308637 (contains!12257 e!2761910 (_1!28085 (h!55414 lt!1631939))))))

(declare-fun c!754921 () Bool)

(assert (=> bm!308632 (= c!754921 c!754920)))

(declare-fun b!4435563 () Bool)

(assert (=> b!4435563 (= e!2761909 e!2761911)))

(declare-fun res!1835648 () Bool)

(assert (=> b!4435563 (=> (not res!1835648) (not e!2761911))))

(assert (=> b!4435563 (= res!1835648 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632319) (_1!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435564 () Bool)

(assert (=> b!4435564 (= e!2761913 e!2761908)))

(declare-fun c!754922 () Bool)

(assert (=> b!4435564 (= c!754922 call!308637)))

(declare-fun b!4435565 () Bool)

(declare-fun Unit!83302 () Unit!83085)

(assert (=> b!4435565 (= e!2761908 Unit!83302)))

(declare-fun b!4435566 () Bool)

(assert (=> b!4435566 (= e!2761912 (not (contains!12257 (keys!17006 lt!1632319) (_1!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435567 () Bool)

(assert (=> b!4435567 (= e!2761910 (keys!17006 lt!1632319))))

(assert (= (and d!1345969 c!754920) b!4435562))

(assert (= (and d!1345969 (not c!754920)) b!4435564))

(assert (= (and b!4435564 c!754922) b!4435559))

(assert (= (and b!4435564 (not c!754922)) b!4435565))

(assert (= (or b!4435562 b!4435564) bm!308632))

(assert (= (and bm!308632 c!754921) b!4435560))

(assert (= (and bm!308632 (not c!754921)) b!4435567))

(assert (= (and d!1345969 res!1835650) b!4435566))

(assert (= (and d!1345969 (not res!1835649)) b!4435563))

(assert (= (and b!4435563 res!1835648) b!4435561))

(declare-fun m!5121913 () Bool)

(assert (=> b!4435559 m!5121913))

(declare-fun m!5121915 () Bool)

(assert (=> b!4435559 m!5121915))

(declare-fun m!5121917 () Bool)

(assert (=> b!4435566 m!5121917))

(assert (=> b!4435566 m!5121917))

(declare-fun m!5121919 () Bool)

(assert (=> b!4435566 m!5121919))

(assert (=> d!1345969 m!5121913))

(assert (=> b!4435561 m!5121917))

(assert (=> b!4435561 m!5121917))

(assert (=> b!4435561 m!5121919))

(assert (=> b!4435567 m!5121917))

(declare-fun m!5121921 () Bool)

(assert (=> b!4435562 m!5121921))

(declare-fun m!5121923 () Bool)

(assert (=> b!4435562 m!5121923))

(assert (=> b!4435562 m!5121923))

(declare-fun m!5121925 () Bool)

(assert (=> b!4435562 m!5121925))

(declare-fun m!5121927 () Bool)

(assert (=> b!4435562 m!5121927))

(declare-fun m!5121929 () Bool)

(assert (=> bm!308632 m!5121929))

(assert (=> b!4435563 m!5121923))

(assert (=> b!4435563 m!5121923))

(assert (=> b!4435563 m!5121925))

(declare-fun m!5121931 () Bool)

(assert (=> b!4435560 m!5121931))

(assert (=> b!4434871 d!1345969))

(assert (=> b!4434871 d!1345889))

(declare-fun d!1345971 () Bool)

(declare-fun res!1835651 () Bool)

(declare-fun e!2761914 () Bool)

(assert (=> d!1345971 (=> res!1835651 e!2761914)))

(assert (=> d!1345971 (= res!1835651 ((_ is Nil!49707) lt!1631939))))

(assert (=> d!1345971 (= (forall!9648 lt!1631939 lambda!156065) e!2761914)))

(declare-fun b!4435568 () Bool)

(declare-fun e!2761915 () Bool)

(assert (=> b!4435568 (= e!2761914 e!2761915)))

(declare-fun res!1835652 () Bool)

(assert (=> b!4435568 (=> (not res!1835652) (not e!2761915))))

(assert (=> b!4435568 (= res!1835652 (dynLambda!20887 lambda!156065 (h!55414 lt!1631939)))))

(declare-fun b!4435569 () Bool)

(assert (=> b!4435569 (= e!2761915 (forall!9648 (t!356773 lt!1631939) lambda!156065))))

(assert (= (and d!1345971 (not res!1835651)) b!4435568))

(assert (= (and b!4435568 res!1835652) b!4435569))

(declare-fun b_lambda!144399 () Bool)

(assert (=> (not b_lambda!144399) (not b!4435568)))

(declare-fun m!5121933 () Bool)

(assert (=> b!4435568 m!5121933))

(assert (=> b!4435569 m!5120699))

(assert (=> b!4434871 d!1345971))

(declare-fun bs!761704 () Bool)

(declare-fun b!4435573 () Bool)

(assert (= bs!761704 (and b!4435573 d!1345865)))

(declare-fun lambda!156142 () Int)

(assert (=> bs!761704 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632668) (= lambda!156142 lambda!156124))))

(declare-fun bs!761706 () Bool)

(assert (= bs!761706 (and b!4435573 d!1345925)))

(assert (=> bs!761706 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156142 lambda!156138))))

(declare-fun bs!761708 () Bool)

(assert (= bs!761708 (and b!4435573 b!4435337)))

(assert (=> bs!761708 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156142 lambda!156108))))

(declare-fun bs!761709 () Bool)

(assert (= bs!761709 (and b!4435573 b!4435279)))

(assert (=> bs!761709 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632560) (= lambda!156142 lambda!156106))))

(declare-fun bs!761711 () Bool)

(assert (= bs!761711 (and b!4435573 b!4435336)))

(assert (=> bs!761711 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156142 lambda!156109))))

(assert (=> bs!761709 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156142 lambda!156105))))

(declare-fun bs!761714 () Bool)

(assert (= bs!761714 (and b!4435573 d!1345619)))

(assert (=> bs!761714 (not (= lambda!156142 lambda!156061))))

(declare-fun bs!761716 () Bool)

(assert (= bs!761716 (and b!4435573 b!4435421)))

(assert (=> bs!761716 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156142 lambda!156119))))

(declare-fun bs!761717 () Bool)

(assert (= bs!761717 (and b!4435573 d!1345723)))

(assert (=> bs!761717 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632235) (= lambda!156142 lambda!156103))))

(declare-fun bs!761718 () Bool)

(assert (= bs!761718 (and b!4435573 d!1345883)))

(assert (=> bs!761718 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156142 lambda!156130))))

(declare-fun bs!761719 () Bool)

(assert (= bs!761719 (and b!4435573 b!4434762)))

(assert (=> bs!761719 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632187) (= lambda!156142 lambda!156040))))

(declare-fun bs!761720 () Bool)

(assert (= bs!761720 (and b!4435573 b!4434801)))

(assert (=> bs!761720 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156142 lambda!156052))))

(declare-fun bs!761722 () Bool)

(assert (= bs!761722 (and b!4435573 d!1345633)))

(assert (=> bs!761722 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632306) (= lambda!156142 lambda!156066))))

(declare-fun bs!761723 () Bool)

(assert (= bs!761723 (and b!4435573 b!4435103)))

(assert (=> bs!761723 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632437) (= lambda!156142 lambda!156093))))

(declare-fun bs!761724 () Bool)

(assert (= bs!761724 (and b!4435573 d!1345851)))

(assert (=> bs!761724 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632615) (= lambda!156142 lambda!156116))))

(assert (=> bs!761711 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632598) (= lambda!156142 lambda!156110))))

(declare-fun bs!761725 () Bool)

(assert (= bs!761725 (and b!4435573 d!1345831)))

(assert (=> bs!761725 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632585) (= lambda!156142 lambda!156111))))

(declare-fun bs!761726 () Bool)

(assert (= bs!761726 (and b!4435573 b!4434800)))

(assert (=> bs!761726 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156142 lambda!156053))))

(declare-fun bs!761727 () Bool)

(assert (= bs!761727 (and b!4435573 b!4435368)))

(assert (=> bs!761727 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632628) (= lambda!156142 lambda!156115))))

(declare-fun bs!761728 () Bool)

(assert (= bs!761728 (and b!4435573 b!4435280)))

(assert (=> bs!761728 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156142 lambda!156104))))

(declare-fun bs!761729 () Bool)

(assert (= bs!761729 (and b!4435573 d!1345535)))

(assert (=> bs!761729 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632174) (= lambda!156142 lambda!156041))))

(declare-fun bs!761730 () Bool)

(assert (= bs!761730 (and b!4435573 d!1345597)))

(assert (=> bs!761730 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632222) (= lambda!156142 lambda!156055))))

(declare-fun bs!761731 () Bool)

(assert (= bs!761731 (and b!4435573 b!4435420)))

(assert (=> bs!761731 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156142 lambda!156121))))

(declare-fun bs!761732 () Bool)

(assert (= bs!761732 (and b!4435573 d!1345703)))

(assert (=> bs!761732 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632424) (= lambda!156142 lambda!156094))))

(declare-fun bs!761733 () Bool)

(assert (= bs!761733 (and b!4435573 b!4435104)))

(assert (=> bs!761733 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156142 lambda!156089))))

(declare-fun bs!761734 () Bool)

(assert (= bs!761734 (and b!4435573 b!4434872)))

(assert (=> bs!761734 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156142 lambda!156063))))

(declare-fun bs!761735 () Bool)

(assert (= bs!761735 (and b!4435573 b!4434871)))

(assert (=> bs!761735 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632319) (= lambda!156142 lambda!156065))))

(declare-fun bs!761736 () Bool)

(assert (= bs!761736 (and b!4435573 b!4435369)))

(assert (=> bs!761736 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156142 lambda!156113))))

(assert (=> bs!761726 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632235) (= lambda!156142 lambda!156054))))

(assert (=> bs!761735 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156142 lambda!156064))))

(assert (=> bs!761727 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156142 lambda!156114))))

(assert (=> bs!761731 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632681) (= lambda!156142 lambda!156123))))

(assert (=> bs!761719 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156142 lambda!156039))))

(declare-fun bs!761737 () Bool)

(assert (= bs!761737 (and b!4435573 b!4434763)))

(assert (=> bs!761737 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156142 lambda!156037))))

(declare-fun bs!761738 () Bool)

(assert (= bs!761738 (and b!4435573 d!1345799)))

(assert (=> bs!761738 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632547) (= lambda!156142 lambda!156107))))

(assert (=> bs!761723 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156142 lambda!156092))))

(assert (=> b!4435573 true))

(declare-fun bs!761739 () Bool)

(declare-fun b!4435572 () Bool)

(assert (= bs!761739 (and b!4435572 d!1345865)))

(declare-fun lambda!156143 () Int)

(assert (=> bs!761739 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632668) (= lambda!156143 lambda!156124))))

(declare-fun bs!761740 () Bool)

(assert (= bs!761740 (and b!4435572 d!1345925)))

(assert (=> bs!761740 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156143 lambda!156138))))

(declare-fun bs!761741 () Bool)

(assert (= bs!761741 (and b!4435572 b!4435337)))

(assert (=> bs!761741 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156143 lambda!156108))))

(declare-fun bs!761742 () Bool)

(assert (= bs!761742 (and b!4435572 b!4435279)))

(assert (=> bs!761742 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632560) (= lambda!156143 lambda!156106))))

(declare-fun bs!761743 () Bool)

(assert (= bs!761743 (and b!4435572 b!4435336)))

(assert (=> bs!761743 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156143 lambda!156109))))

(assert (=> bs!761742 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156143 lambda!156105))))

(declare-fun bs!761744 () Bool)

(assert (= bs!761744 (and b!4435572 d!1345619)))

(assert (=> bs!761744 (not (= lambda!156143 lambda!156061))))

(declare-fun bs!761745 () Bool)

(assert (= bs!761745 (and b!4435572 b!4435421)))

(assert (=> bs!761745 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156143 lambda!156119))))

(declare-fun bs!761746 () Bool)

(assert (= bs!761746 (and b!4435572 d!1345723)))

(assert (=> bs!761746 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632235) (= lambda!156143 lambda!156103))))

(declare-fun bs!761747 () Bool)

(assert (= bs!761747 (and b!4435572 d!1345883)))

(assert (=> bs!761747 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156143 lambda!156130))))

(declare-fun bs!761748 () Bool)

(assert (= bs!761748 (and b!4435572 b!4434762)))

(assert (=> bs!761748 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632187) (= lambda!156143 lambda!156040))))

(declare-fun bs!761749 () Bool)

(assert (= bs!761749 (and b!4435572 b!4434801)))

(assert (=> bs!761749 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156143 lambda!156052))))

(declare-fun bs!761750 () Bool)

(assert (= bs!761750 (and b!4435572 d!1345633)))

(assert (=> bs!761750 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632306) (= lambda!156143 lambda!156066))))

(declare-fun bs!761751 () Bool)

(assert (= bs!761751 (and b!4435572 b!4435103)))

(assert (=> bs!761751 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632437) (= lambda!156143 lambda!156093))))

(declare-fun bs!761752 () Bool)

(assert (= bs!761752 (and b!4435572 d!1345851)))

(assert (=> bs!761752 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632615) (= lambda!156143 lambda!156116))))

(assert (=> bs!761743 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632598) (= lambda!156143 lambda!156110))))

(declare-fun bs!761753 () Bool)

(assert (= bs!761753 (and b!4435572 d!1345831)))

(assert (=> bs!761753 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632585) (= lambda!156143 lambda!156111))))

(declare-fun bs!761754 () Bool)

(assert (= bs!761754 (and b!4435572 b!4434800)))

(assert (=> bs!761754 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156143 lambda!156053))))

(declare-fun bs!761755 () Bool)

(assert (= bs!761755 (and b!4435572 b!4435368)))

(assert (=> bs!761755 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632628) (= lambda!156143 lambda!156115))))

(declare-fun bs!761756 () Bool)

(assert (= bs!761756 (and b!4435572 b!4435280)))

(assert (=> bs!761756 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156143 lambda!156104))))

(declare-fun bs!761757 () Bool)

(assert (= bs!761757 (and b!4435572 d!1345535)))

(assert (=> bs!761757 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632174) (= lambda!156143 lambda!156041))))

(declare-fun bs!761758 () Bool)

(assert (= bs!761758 (and b!4435572 d!1345597)))

(assert (=> bs!761758 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632222) (= lambda!156143 lambda!156055))))

(declare-fun bs!761759 () Bool)

(assert (= bs!761759 (and b!4435572 b!4435420)))

(assert (=> bs!761759 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156143 lambda!156121))))

(declare-fun bs!761760 () Bool)

(assert (= bs!761760 (and b!4435572 d!1345703)))

(assert (=> bs!761760 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632424) (= lambda!156143 lambda!156094))))

(declare-fun bs!761761 () Bool)

(assert (= bs!761761 (and b!4435572 b!4435104)))

(assert (=> bs!761761 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156143 lambda!156089))))

(declare-fun bs!761762 () Bool)

(assert (= bs!761762 (and b!4435572 b!4434872)))

(assert (=> bs!761762 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156143 lambda!156063))))

(declare-fun bs!761763 () Bool)

(assert (= bs!761763 (and b!4435572 b!4434871)))

(assert (=> bs!761763 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632319) (= lambda!156143 lambda!156065))))

(declare-fun bs!761764 () Bool)

(assert (= bs!761764 (and b!4435572 b!4435369)))

(assert (=> bs!761764 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156143 lambda!156113))))

(assert (=> bs!761754 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632235) (= lambda!156143 lambda!156054))))

(assert (=> bs!761763 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156143 lambda!156064))))

(assert (=> bs!761755 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156143 lambda!156114))))

(assert (=> bs!761759 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632681) (= lambda!156143 lambda!156123))))

(assert (=> bs!761748 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156143 lambda!156039))))

(declare-fun bs!761765 () Bool)

(assert (= bs!761765 (and b!4435572 b!4435573)))

(assert (=> bs!761765 (= lambda!156143 lambda!156142)))

(declare-fun bs!761766 () Bool)

(assert (= bs!761766 (and b!4435572 b!4434763)))

(assert (=> bs!761766 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1631951) (= lambda!156143 lambda!156037))))

(declare-fun bs!761767 () Bool)

(assert (= bs!761767 (and b!4435572 d!1345799)))

(assert (=> bs!761767 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632547) (= lambda!156143 lambda!156107))))

(assert (=> bs!761751 (= (= (+!1171 lt!1631951 (h!55414 lt!1631939)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156143 lambda!156092))))

(assert (=> b!4435572 true))

(declare-fun lt!1632807 () ListMap!2833)

(declare-fun lambda!156144 () Int)

(assert (=> bs!761739 (= (= lt!1632807 lt!1632668) (= lambda!156144 lambda!156124))))

(assert (=> bs!761740 (= (= lt!1632807 lt!1631951) (= lambda!156144 lambda!156138))))

(assert (=> bs!761741 (= (= lt!1632807 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156144 lambda!156108))))

(assert (=> bs!761742 (= (= lt!1632807 lt!1632560) (= lambda!156144 lambda!156106))))

(assert (=> bs!761742 (= (= lt!1632807 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156144 lambda!156105))))

(assert (=> bs!761744 (not (= lambda!156144 lambda!156061))))

(assert (=> bs!761745 (= (= lt!1632807 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156144 lambda!156119))))

(assert (=> bs!761746 (= (= lt!1632807 lt!1632235) (= lambda!156144 lambda!156103))))

(assert (=> bs!761747 (= (= lt!1632807 (+!1171 lt!1631951 lt!1631950)) (= lambda!156144 lambda!156130))))

(assert (=> bs!761748 (= (= lt!1632807 lt!1632187) (= lambda!156144 lambda!156040))))

(assert (=> bs!761749 (= (= lt!1632807 (+!1171 lt!1631951 lt!1631950)) (= lambda!156144 lambda!156052))))

(assert (=> bs!761750 (= (= lt!1632807 lt!1632306) (= lambda!156144 lambda!156066))))

(assert (=> bs!761751 (= (= lt!1632807 lt!1632437) (= lambda!156144 lambda!156093))))

(assert (=> bs!761752 (= (= lt!1632807 lt!1632615) (= lambda!156144 lambda!156116))))

(assert (=> bs!761743 (= (= lt!1632807 lt!1632598) (= lambda!156144 lambda!156110))))

(assert (=> bs!761753 (= (= lt!1632807 lt!1632585) (= lambda!156144 lambda!156111))))

(assert (=> bs!761754 (= (= lt!1632807 (+!1171 lt!1631951 lt!1631950)) (= lambda!156144 lambda!156053))))

(assert (=> bs!761755 (= (= lt!1632807 lt!1632628) (= lambda!156144 lambda!156115))))

(assert (=> bs!761756 (= (= lt!1632807 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156144 lambda!156104))))

(assert (=> bs!761757 (= (= lt!1632807 lt!1632174) (= lambda!156144 lambda!156041))))

(assert (=> bs!761743 (= (= lt!1632807 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156144 lambda!156109))))

(assert (=> b!4435572 (= (= lt!1632807 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156144 lambda!156143))))

(assert (=> bs!761758 (= (= lt!1632807 lt!1632222) (= lambda!156144 lambda!156055))))

(assert (=> bs!761759 (= (= lt!1632807 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156144 lambda!156121))))

(assert (=> bs!761760 (= (= lt!1632807 lt!1632424) (= lambda!156144 lambda!156094))))

(assert (=> bs!761761 (= (= lt!1632807 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156144 lambda!156089))))

(assert (=> bs!761762 (= (= lt!1632807 lt!1631951) (= lambda!156144 lambda!156063))))

(assert (=> bs!761763 (= (= lt!1632807 lt!1632319) (= lambda!156144 lambda!156065))))

(assert (=> bs!761764 (= (= lt!1632807 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156144 lambda!156113))))

(assert (=> bs!761754 (= (= lt!1632807 lt!1632235) (= lambda!156144 lambda!156054))))

(assert (=> bs!761763 (= (= lt!1632807 lt!1631951) (= lambda!156144 lambda!156064))))

(assert (=> bs!761755 (= (= lt!1632807 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156144 lambda!156114))))

(assert (=> bs!761759 (= (= lt!1632807 lt!1632681) (= lambda!156144 lambda!156123))))

(assert (=> bs!761748 (= (= lt!1632807 lt!1631951) (= lambda!156144 lambda!156039))))

(assert (=> bs!761765 (= (= lt!1632807 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156144 lambda!156142))))

(assert (=> bs!761766 (= (= lt!1632807 lt!1631951) (= lambda!156144 lambda!156037))))

(assert (=> bs!761767 (= (= lt!1632807 lt!1632547) (= lambda!156144 lambda!156107))))

(assert (=> bs!761751 (= (= lt!1632807 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156144 lambda!156092))))

(assert (=> b!4435572 true))

(declare-fun bs!761799 () Bool)

(declare-fun d!1345973 () Bool)

(assert (= bs!761799 (and d!1345973 d!1345865)))

(declare-fun lambda!156147 () Int)

(declare-fun lt!1632794 () ListMap!2833)

(assert (=> bs!761799 (= (= lt!1632794 lt!1632668) (= lambda!156147 lambda!156124))))

(declare-fun bs!761800 () Bool)

(assert (= bs!761800 (and d!1345973 d!1345925)))

(assert (=> bs!761800 (= (= lt!1632794 lt!1631951) (= lambda!156147 lambda!156138))))

(declare-fun bs!761802 () Bool)

(assert (= bs!761802 (and d!1345973 b!4435337)))

(assert (=> bs!761802 (= (= lt!1632794 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156147 lambda!156108))))

(declare-fun bs!761804 () Bool)

(assert (= bs!761804 (and d!1345973 b!4435279)))

(assert (=> bs!761804 (= (= lt!1632794 lt!1632560) (= lambda!156147 lambda!156106))))

(assert (=> bs!761804 (= (= lt!1632794 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156147 lambda!156105))))

(declare-fun bs!761806 () Bool)

(assert (= bs!761806 (and d!1345973 d!1345619)))

(assert (=> bs!761806 (not (= lambda!156147 lambda!156061))))

(declare-fun bs!761808 () Bool)

(assert (= bs!761808 (and d!1345973 b!4435421)))

(assert (=> bs!761808 (= (= lt!1632794 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156147 lambda!156119))))

(declare-fun bs!761810 () Bool)

(assert (= bs!761810 (and d!1345973 d!1345723)))

(assert (=> bs!761810 (= (= lt!1632794 lt!1632235) (= lambda!156147 lambda!156103))))

(declare-fun bs!761812 () Bool)

(assert (= bs!761812 (and d!1345973 d!1345883)))

(assert (=> bs!761812 (= (= lt!1632794 (+!1171 lt!1631951 lt!1631950)) (= lambda!156147 lambda!156130))))

(declare-fun bs!761813 () Bool)

(assert (= bs!761813 (and d!1345973 b!4434762)))

(assert (=> bs!761813 (= (= lt!1632794 lt!1632187) (= lambda!156147 lambda!156040))))

(declare-fun bs!761815 () Bool)

(assert (= bs!761815 (and d!1345973 b!4434801)))

(assert (=> bs!761815 (= (= lt!1632794 (+!1171 lt!1631951 lt!1631950)) (= lambda!156147 lambda!156052))))

(declare-fun bs!761817 () Bool)

(assert (= bs!761817 (and d!1345973 d!1345633)))

(assert (=> bs!761817 (= (= lt!1632794 lt!1632306) (= lambda!156147 lambda!156066))))

(declare-fun bs!761818 () Bool)

(assert (= bs!761818 (and d!1345973 b!4435103)))

(assert (=> bs!761818 (= (= lt!1632794 lt!1632437) (= lambda!156147 lambda!156093))))

(declare-fun bs!761820 () Bool)

(assert (= bs!761820 (and d!1345973 d!1345851)))

(assert (=> bs!761820 (= (= lt!1632794 lt!1632615) (= lambda!156147 lambda!156116))))

(declare-fun bs!761822 () Bool)

(assert (= bs!761822 (and d!1345973 b!4435336)))

(assert (=> bs!761822 (= (= lt!1632794 lt!1632598) (= lambda!156147 lambda!156110))))

(declare-fun bs!761824 () Bool)

(assert (= bs!761824 (and d!1345973 d!1345831)))

(assert (=> bs!761824 (= (= lt!1632794 lt!1632585) (= lambda!156147 lambda!156111))))

(declare-fun bs!761826 () Bool)

(assert (= bs!761826 (and d!1345973 b!4434800)))

(assert (=> bs!761826 (= (= lt!1632794 (+!1171 lt!1631951 lt!1631950)) (= lambda!156147 lambda!156053))))

(declare-fun bs!761827 () Bool)

(assert (= bs!761827 (and d!1345973 b!4435368)))

(assert (=> bs!761827 (= (= lt!1632794 lt!1632628) (= lambda!156147 lambda!156115))))

(declare-fun bs!761828 () Bool)

(assert (= bs!761828 (and d!1345973 b!4435280)))

(assert (=> bs!761828 (= (= lt!1632794 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156147 lambda!156104))))

(declare-fun bs!761829 () Bool)

(assert (= bs!761829 (and d!1345973 d!1345535)))

(assert (=> bs!761829 (= (= lt!1632794 lt!1632174) (= lambda!156147 lambda!156041))))

(assert (=> bs!761822 (= (= lt!1632794 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156147 lambda!156109))))

(declare-fun bs!761830 () Bool)

(assert (= bs!761830 (and d!1345973 b!4435572)))

(assert (=> bs!761830 (= (= lt!1632794 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156147 lambda!156143))))

(declare-fun bs!761831 () Bool)

(assert (= bs!761831 (and d!1345973 d!1345597)))

(assert (=> bs!761831 (= (= lt!1632794 lt!1632222) (= lambda!156147 lambda!156055))))

(declare-fun bs!761832 () Bool)

(assert (= bs!761832 (and d!1345973 b!4435420)))

(assert (=> bs!761832 (= (= lt!1632794 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156147 lambda!156121))))

(declare-fun bs!761833 () Bool)

(assert (= bs!761833 (and d!1345973 d!1345703)))

(assert (=> bs!761833 (= (= lt!1632794 lt!1632424) (= lambda!156147 lambda!156094))))

(declare-fun bs!761834 () Bool)

(assert (= bs!761834 (and d!1345973 b!4435104)))

(assert (=> bs!761834 (= (= lt!1632794 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156147 lambda!156089))))

(declare-fun bs!761835 () Bool)

(assert (= bs!761835 (and d!1345973 b!4434872)))

(assert (=> bs!761835 (= (= lt!1632794 lt!1631951) (= lambda!156147 lambda!156063))))

(assert (=> bs!761830 (= (= lt!1632794 lt!1632807) (= lambda!156147 lambda!156144))))

(declare-fun bs!761836 () Bool)

(assert (= bs!761836 (and d!1345973 b!4434871)))

(assert (=> bs!761836 (= (= lt!1632794 lt!1632319) (= lambda!156147 lambda!156065))))

(declare-fun bs!761837 () Bool)

(assert (= bs!761837 (and d!1345973 b!4435369)))

(assert (=> bs!761837 (= (= lt!1632794 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156147 lambda!156113))))

(assert (=> bs!761826 (= (= lt!1632794 lt!1632235) (= lambda!156147 lambda!156054))))

(assert (=> bs!761836 (= (= lt!1632794 lt!1631951) (= lambda!156147 lambda!156064))))

(assert (=> bs!761827 (= (= lt!1632794 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156147 lambda!156114))))

(assert (=> bs!761832 (= (= lt!1632794 lt!1632681) (= lambda!156147 lambda!156123))))

(assert (=> bs!761813 (= (= lt!1632794 lt!1631951) (= lambda!156147 lambda!156039))))

(declare-fun bs!761838 () Bool)

(assert (= bs!761838 (and d!1345973 b!4435573)))

(assert (=> bs!761838 (= (= lt!1632794 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156147 lambda!156142))))

(declare-fun bs!761839 () Bool)

(assert (= bs!761839 (and d!1345973 b!4434763)))

(assert (=> bs!761839 (= (= lt!1632794 lt!1631951) (= lambda!156147 lambda!156037))))

(declare-fun bs!761840 () Bool)

(assert (= bs!761840 (and d!1345973 d!1345799)))

(assert (=> bs!761840 (= (= lt!1632794 lt!1632547) (= lambda!156147 lambda!156107))))

(assert (=> bs!761818 (= (= lt!1632794 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156147 lambda!156092))))

(assert (=> d!1345973 true))

(declare-fun b!4435570 () Bool)

(declare-fun e!2761917 () Bool)

(assert (=> b!4435570 (= e!2761917 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 lt!1631939))) lambda!156144))))

(declare-fun bm!308633 () Bool)

(declare-fun lt!1632790 () ListMap!2833)

(declare-fun call!308639 () Bool)

(declare-fun c!754923 () Bool)

(assert (=> bm!308633 (= call!308639 (forall!9648 (ite c!754923 (toList!3590 (+!1171 lt!1631951 (h!55414 lt!1631939))) (toList!3590 lt!1632790)) (ite c!754923 lambda!156142 lambda!156144)))))

(declare-fun bm!308634 () Bool)

(declare-fun call!308640 () Unit!83085)

(assert (=> bm!308634 (= call!308640 (lemmaContainsAllItsOwnKeys!195 (+!1171 lt!1631951 (h!55414 lt!1631939))))))

(declare-fun b!4435571 () Bool)

(declare-fun e!2761918 () Bool)

(assert (=> b!4435571 (= e!2761918 (invariantList!827 (toList!3590 lt!1632794)))))

(assert (=> d!1345973 e!2761918))

(declare-fun res!1835655 () Bool)

(assert (=> d!1345973 (=> (not res!1835655) (not e!2761918))))

(assert (=> d!1345973 (= res!1835655 (forall!9648 (t!356773 lt!1631939) lambda!156147))))

(declare-fun e!2761916 () ListMap!2833)

(assert (=> d!1345973 (= lt!1632794 e!2761916)))

(assert (=> d!1345973 (= c!754923 ((_ is Nil!49707) (t!356773 lt!1631939)))))

(assert (=> d!1345973 (noDuplicateKeys!801 (t!356773 lt!1631939))))

(assert (=> d!1345973 (= (addToMapMapFromBucket!426 (t!356773 lt!1631939) (+!1171 lt!1631951 (h!55414 lt!1631939))) lt!1632794)))

(assert (=> b!4435572 (= e!2761916 lt!1632807)))

(assert (=> b!4435572 (= lt!1632790 (+!1171 (+!1171 lt!1631951 (h!55414 lt!1631939)) (h!55414 (t!356773 lt!1631939))))))

(assert (=> b!4435572 (= lt!1632807 (addToMapMapFromBucket!426 (t!356773 (t!356773 lt!1631939)) (+!1171 (+!1171 lt!1631951 (h!55414 lt!1631939)) (h!55414 (t!356773 lt!1631939)))))))

(declare-fun lt!1632789 () Unit!83085)

(assert (=> b!4435572 (= lt!1632789 call!308640)))

(declare-fun call!308638 () Bool)

(assert (=> b!4435572 call!308638))

(declare-fun lt!1632802 () Unit!83085)

(assert (=> b!4435572 (= lt!1632802 lt!1632789)))

(assert (=> b!4435572 (forall!9648 (toList!3590 lt!1632790) lambda!156144)))

(declare-fun lt!1632787 () Unit!83085)

(declare-fun Unit!83314 () Unit!83085)

(assert (=> b!4435572 (= lt!1632787 Unit!83314)))

(assert (=> b!4435572 (forall!9648 (t!356773 (t!356773 lt!1631939)) lambda!156144)))

(declare-fun lt!1632805 () Unit!83085)

(declare-fun Unit!83315 () Unit!83085)

(assert (=> b!4435572 (= lt!1632805 Unit!83315)))

(declare-fun lt!1632799 () Unit!83085)

(declare-fun Unit!83316 () Unit!83085)

(assert (=> b!4435572 (= lt!1632799 Unit!83316)))

(declare-fun lt!1632792 () Unit!83085)

(assert (=> b!4435572 (= lt!1632792 (forallContained!2125 (toList!3590 lt!1632790) lambda!156144 (h!55414 (t!356773 lt!1631939))))))

(assert (=> b!4435572 (contains!12250 lt!1632790 (_1!28085 (h!55414 (t!356773 lt!1631939))))))

(declare-fun lt!1632801 () Unit!83085)

(declare-fun Unit!83317 () Unit!83085)

(assert (=> b!4435572 (= lt!1632801 Unit!83317)))

(assert (=> b!4435572 (contains!12250 lt!1632807 (_1!28085 (h!55414 (t!356773 lt!1631939))))))

(declare-fun lt!1632796 () Unit!83085)

(declare-fun Unit!83318 () Unit!83085)

(assert (=> b!4435572 (= lt!1632796 Unit!83318)))

(assert (=> b!4435572 (forall!9648 (t!356773 lt!1631939) lambda!156144)))

(declare-fun lt!1632791 () Unit!83085)

(declare-fun Unit!83319 () Unit!83085)

(assert (=> b!4435572 (= lt!1632791 Unit!83319)))

(assert (=> b!4435572 call!308639))

(declare-fun lt!1632797 () Unit!83085)

(declare-fun Unit!83320 () Unit!83085)

(assert (=> b!4435572 (= lt!1632797 Unit!83320)))

(declare-fun lt!1632804 () Unit!83085)

(declare-fun Unit!83321 () Unit!83085)

(assert (=> b!4435572 (= lt!1632804 Unit!83321)))

(declare-fun lt!1632798 () Unit!83085)

(assert (=> b!4435572 (= lt!1632798 (addForallContainsKeyThenBeforeAdding!195 (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632807 (_1!28085 (h!55414 (t!356773 lt!1631939))) (_2!28085 (h!55414 (t!356773 lt!1631939)))))))

(assert (=> b!4435572 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 lt!1631939))) lambda!156144)))

(declare-fun lt!1632806 () Unit!83085)

(assert (=> b!4435572 (= lt!1632806 lt!1632798)))

(assert (=> b!4435572 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 lt!1631939))) lambda!156144)))

(declare-fun lt!1632788 () Unit!83085)

(declare-fun Unit!83322 () Unit!83085)

(assert (=> b!4435572 (= lt!1632788 Unit!83322)))

(declare-fun res!1835653 () Bool)

(assert (=> b!4435572 (= res!1835653 (forall!9648 (t!356773 lt!1631939) lambda!156144))))

(assert (=> b!4435572 (=> (not res!1835653) (not e!2761917))))

(assert (=> b!4435572 e!2761917))

(declare-fun lt!1632803 () Unit!83085)

(declare-fun Unit!83323 () Unit!83085)

(assert (=> b!4435572 (= lt!1632803 Unit!83323)))

(declare-fun bm!308635 () Bool)

(assert (=> bm!308635 (= call!308638 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 lt!1631939))) (ite c!754923 lambda!156142 lambda!156143)))))

(assert (=> b!4435573 (= e!2761916 (+!1171 lt!1631951 (h!55414 lt!1631939)))))

(declare-fun lt!1632800 () Unit!83085)

(assert (=> b!4435573 (= lt!1632800 call!308640)))

(assert (=> b!4435573 call!308638))

(declare-fun lt!1632795 () Unit!83085)

(assert (=> b!4435573 (= lt!1632795 lt!1632800)))

(assert (=> b!4435573 call!308639))

(declare-fun lt!1632793 () Unit!83085)

(declare-fun Unit!83324 () Unit!83085)

(assert (=> b!4435573 (= lt!1632793 Unit!83324)))

(declare-fun b!4435574 () Bool)

(declare-fun res!1835654 () Bool)

(assert (=> b!4435574 (=> (not res!1835654) (not e!2761918))))

(assert (=> b!4435574 (= res!1835654 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 lt!1631939))) lambda!156147))))

(assert (= (and d!1345973 c!754923) b!4435573))

(assert (= (and d!1345973 (not c!754923)) b!4435572))

(assert (= (and b!4435572 res!1835653) b!4435570))

(assert (= (or b!4435573 b!4435572) bm!308634))

(assert (= (or b!4435573 b!4435572) bm!308635))

(assert (= (or b!4435573 b!4435572) bm!308633))

(assert (= (and d!1345973 res!1835655) b!4435574))

(assert (= (and b!4435574 res!1835654) b!4435571))

(declare-fun m!5121979 () Bool)

(assert (=> bm!308633 m!5121979))

(declare-fun m!5121981 () Bool)

(assert (=> bm!308635 m!5121981))

(declare-fun m!5121983 () Bool)

(assert (=> b!4435571 m!5121983))

(declare-fun m!5121985 () Bool)

(assert (=> b!4435572 m!5121985))

(declare-fun m!5121987 () Bool)

(assert (=> b!4435572 m!5121987))

(assert (=> b!4435572 m!5120683))

(declare-fun m!5121989 () Bool)

(assert (=> b!4435572 m!5121989))

(declare-fun m!5121991 () Bool)

(assert (=> b!4435572 m!5121991))

(declare-fun m!5121993 () Bool)

(assert (=> b!4435572 m!5121993))

(declare-fun m!5121995 () Bool)

(assert (=> b!4435572 m!5121995))

(declare-fun m!5121997 () Bool)

(assert (=> b!4435572 m!5121997))

(assert (=> b!4435572 m!5121995))

(declare-fun m!5121999 () Bool)

(assert (=> b!4435572 m!5121999))

(declare-fun m!5122001 () Bool)

(assert (=> b!4435572 m!5122001))

(assert (=> b!4435572 m!5121997))

(assert (=> b!4435572 m!5120683))

(assert (=> b!4435572 m!5121985))

(declare-fun m!5122003 () Bool)

(assert (=> b!4435572 m!5122003))

(declare-fun m!5122005 () Bool)

(assert (=> b!4435574 m!5122005))

(assert (=> b!4435570 m!5121997))

(assert (=> bm!308634 m!5120683))

(declare-fun m!5122007 () Bool)

(assert (=> bm!308634 m!5122007))

(declare-fun m!5122009 () Bool)

(assert (=> d!1345973 m!5122009))

(assert (=> d!1345973 m!5120979))

(assert (=> b!4434871 d!1345973))

(declare-fun bs!761852 () Bool)

(declare-fun d!1345987 () Bool)

(assert (= bs!761852 (and d!1345987 d!1345865)))

(declare-fun lambda!156150 () Int)

(assert (=> bs!761852 (= (= lt!1632319 lt!1632668) (= lambda!156150 lambda!156124))))

(declare-fun bs!761855 () Bool)

(assert (= bs!761855 (and d!1345987 d!1345925)))

(assert (=> bs!761855 (= (= lt!1632319 lt!1631951) (= lambda!156150 lambda!156138))))

(declare-fun bs!761856 () Bool)

(assert (= bs!761856 (and d!1345987 b!4435337)))

(assert (=> bs!761856 (= (= lt!1632319 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156150 lambda!156108))))

(declare-fun bs!761858 () Bool)

(assert (= bs!761858 (and d!1345987 d!1345973)))

(assert (=> bs!761858 (= (= lt!1632319 lt!1632794) (= lambda!156150 lambda!156147))))

(declare-fun bs!761860 () Bool)

(assert (= bs!761860 (and d!1345987 b!4435279)))

(assert (=> bs!761860 (= (= lt!1632319 lt!1632560) (= lambda!156150 lambda!156106))))

(assert (=> bs!761860 (= (= lt!1632319 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156150 lambda!156105))))

(declare-fun bs!761863 () Bool)

(assert (= bs!761863 (and d!1345987 d!1345619)))

(assert (=> bs!761863 (not (= lambda!156150 lambda!156061))))

(declare-fun bs!761864 () Bool)

(assert (= bs!761864 (and d!1345987 b!4435421)))

(assert (=> bs!761864 (= (= lt!1632319 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156150 lambda!156119))))

(declare-fun bs!761866 () Bool)

(assert (= bs!761866 (and d!1345987 d!1345723)))

(assert (=> bs!761866 (= (= lt!1632319 lt!1632235) (= lambda!156150 lambda!156103))))

(declare-fun bs!761868 () Bool)

(assert (= bs!761868 (and d!1345987 d!1345883)))

(assert (=> bs!761868 (= (= lt!1632319 (+!1171 lt!1631951 lt!1631950)) (= lambda!156150 lambda!156130))))

(declare-fun bs!761869 () Bool)

(assert (= bs!761869 (and d!1345987 b!4434762)))

(assert (=> bs!761869 (= (= lt!1632319 lt!1632187) (= lambda!156150 lambda!156040))))

(declare-fun bs!761871 () Bool)

(assert (= bs!761871 (and d!1345987 b!4434801)))

(assert (=> bs!761871 (= (= lt!1632319 (+!1171 lt!1631951 lt!1631950)) (= lambda!156150 lambda!156052))))

(declare-fun bs!761872 () Bool)

(assert (= bs!761872 (and d!1345987 d!1345633)))

(assert (=> bs!761872 (= (= lt!1632319 lt!1632306) (= lambda!156150 lambda!156066))))

(declare-fun bs!761873 () Bool)

(assert (= bs!761873 (and d!1345987 b!4435103)))

(assert (=> bs!761873 (= (= lt!1632319 lt!1632437) (= lambda!156150 lambda!156093))))

(declare-fun bs!761875 () Bool)

(assert (= bs!761875 (and d!1345987 d!1345851)))

(assert (=> bs!761875 (= (= lt!1632319 lt!1632615) (= lambda!156150 lambda!156116))))

(declare-fun bs!761877 () Bool)

(assert (= bs!761877 (and d!1345987 b!4435336)))

(assert (=> bs!761877 (= (= lt!1632319 lt!1632598) (= lambda!156150 lambda!156110))))

(declare-fun bs!761879 () Bool)

(assert (= bs!761879 (and d!1345987 d!1345831)))

(assert (=> bs!761879 (= (= lt!1632319 lt!1632585) (= lambda!156150 lambda!156111))))

(declare-fun bs!761880 () Bool)

(assert (= bs!761880 (and d!1345987 b!4434800)))

(assert (=> bs!761880 (= (= lt!1632319 (+!1171 lt!1631951 lt!1631950)) (= lambda!156150 lambda!156053))))

(declare-fun bs!761881 () Bool)

(assert (= bs!761881 (and d!1345987 b!4435368)))

(assert (=> bs!761881 (= (= lt!1632319 lt!1632628) (= lambda!156150 lambda!156115))))

(declare-fun bs!761882 () Bool)

(assert (= bs!761882 (and d!1345987 b!4435280)))

(assert (=> bs!761882 (= (= lt!1632319 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156150 lambda!156104))))

(declare-fun bs!761883 () Bool)

(assert (= bs!761883 (and d!1345987 d!1345535)))

(assert (=> bs!761883 (= (= lt!1632319 lt!1632174) (= lambda!156150 lambda!156041))))

(assert (=> bs!761877 (= (= lt!1632319 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156150 lambda!156109))))

(declare-fun bs!761884 () Bool)

(assert (= bs!761884 (and d!1345987 b!4435572)))

(assert (=> bs!761884 (= (= lt!1632319 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156150 lambda!156143))))

(declare-fun bs!761885 () Bool)

(assert (= bs!761885 (and d!1345987 d!1345597)))

(assert (=> bs!761885 (= (= lt!1632319 lt!1632222) (= lambda!156150 lambda!156055))))

(declare-fun bs!761886 () Bool)

(assert (= bs!761886 (and d!1345987 b!4435420)))

(assert (=> bs!761886 (= (= lt!1632319 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156150 lambda!156121))))

(declare-fun bs!761887 () Bool)

(assert (= bs!761887 (and d!1345987 d!1345703)))

(assert (=> bs!761887 (= (= lt!1632319 lt!1632424) (= lambda!156150 lambda!156094))))

(declare-fun bs!761888 () Bool)

(assert (= bs!761888 (and d!1345987 b!4435104)))

(assert (=> bs!761888 (= (= lt!1632319 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156150 lambda!156089))))

(declare-fun bs!761889 () Bool)

(assert (= bs!761889 (and d!1345987 b!4434872)))

(assert (=> bs!761889 (= (= lt!1632319 lt!1631951) (= lambda!156150 lambda!156063))))

(assert (=> bs!761884 (= (= lt!1632319 lt!1632807) (= lambda!156150 lambda!156144))))

(declare-fun bs!761890 () Bool)

(assert (= bs!761890 (and d!1345987 b!4434871)))

(assert (=> bs!761890 (= lambda!156150 lambda!156065)))

(declare-fun bs!761891 () Bool)

(assert (= bs!761891 (and d!1345987 b!4435369)))

(assert (=> bs!761891 (= (= lt!1632319 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156150 lambda!156113))))

(assert (=> bs!761880 (= (= lt!1632319 lt!1632235) (= lambda!156150 lambda!156054))))

(assert (=> bs!761890 (= (= lt!1632319 lt!1631951) (= lambda!156150 lambda!156064))))

(assert (=> bs!761881 (= (= lt!1632319 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156150 lambda!156114))))

(assert (=> bs!761886 (= (= lt!1632319 lt!1632681) (= lambda!156150 lambda!156123))))

(assert (=> bs!761869 (= (= lt!1632319 lt!1631951) (= lambda!156150 lambda!156039))))

(declare-fun bs!761892 () Bool)

(assert (= bs!761892 (and d!1345987 b!4435573)))

(assert (=> bs!761892 (= (= lt!1632319 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156150 lambda!156142))))

(declare-fun bs!761893 () Bool)

(assert (= bs!761893 (and d!1345987 b!4434763)))

(assert (=> bs!761893 (= (= lt!1632319 lt!1631951) (= lambda!156150 lambda!156037))))

(declare-fun bs!761894 () Bool)

(assert (= bs!761894 (and d!1345987 d!1345799)))

(assert (=> bs!761894 (= (= lt!1632319 lt!1632547) (= lambda!156150 lambda!156107))))

(assert (=> bs!761873 (= (= lt!1632319 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156150 lambda!156092))))

(assert (=> d!1345987 true))

(assert (=> d!1345987 (forall!9648 (toList!3590 lt!1631951) lambda!156150)))

(declare-fun lt!1632841 () Unit!83085)

(assert (=> d!1345987 (= lt!1632841 (choose!28122 lt!1631951 lt!1632319 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345987 (forall!9648 (toList!3590 (+!1171 lt!1631951 (tuple2!49583 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))) lambda!156150)))

(assert (=> d!1345987 (= (addForallContainsKeyThenBeforeAdding!195 lt!1631951 lt!1632319 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))) lt!1632841)))

(declare-fun bs!761895 () Bool)

(assert (= bs!761895 d!1345987))

(declare-fun m!5122041 () Bool)

(assert (=> bs!761895 m!5122041))

(declare-fun m!5122043 () Bool)

(assert (=> bs!761895 m!5122043))

(declare-fun m!5122045 () Bool)

(assert (=> bs!761895 m!5122045))

(declare-fun m!5122047 () Bool)

(assert (=> bs!761895 m!5122047))

(assert (=> b!4434871 d!1345987))

(declare-fun d!1345991 () Bool)

(assert (=> d!1345991 (dynLambda!20887 lambda!156065 (h!55414 lt!1631939))))

(declare-fun lt!1632842 () Unit!83085)

(assert (=> d!1345991 (= lt!1632842 (choose!28123 (toList!3590 lt!1632302) lambda!156065 (h!55414 lt!1631939)))))

(declare-fun e!2761941 () Bool)

(assert (=> d!1345991 e!2761941))

(declare-fun res!1835675 () Bool)

(assert (=> d!1345991 (=> (not res!1835675) (not e!2761941))))

(assert (=> d!1345991 (= res!1835675 (forall!9648 (toList!3590 lt!1632302) lambda!156065))))

(assert (=> d!1345991 (= (forallContained!2125 (toList!3590 lt!1632302) lambda!156065 (h!55414 lt!1631939)) lt!1632842)))

(declare-fun b!4435602 () Bool)

(assert (=> b!4435602 (= e!2761941 (contains!12255 (toList!3590 lt!1632302) (h!55414 lt!1631939)))))

(assert (= (and d!1345991 res!1835675) b!4435602))

(declare-fun b_lambda!144409 () Bool)

(assert (=> (not b_lambda!144409) (not d!1345991)))

(assert (=> d!1345991 m!5121933))

(declare-fun m!5122053 () Bool)

(assert (=> d!1345991 m!5122053))

(assert (=> d!1345991 m!5120689))

(declare-fun m!5122055 () Bool)

(assert (=> b!4435602 m!5122055))

(assert (=> b!4434871 d!1345991))

(declare-fun d!1345995 () Bool)

(declare-fun e!2761942 () Bool)

(assert (=> d!1345995 e!2761942))

(declare-fun res!1835677 () Bool)

(assert (=> d!1345995 (=> (not res!1835677) (not e!2761942))))

(declare-fun lt!1632847 () ListMap!2833)

(assert (=> d!1345995 (= res!1835677 (contains!12250 lt!1632847 (_1!28085 (h!55414 lt!1631939))))))

(declare-fun lt!1632846 () List!49831)

(assert (=> d!1345995 (= lt!1632847 (ListMap!2834 lt!1632846))))

(declare-fun lt!1632845 () Unit!83085)

(declare-fun lt!1632844 () Unit!83085)

(assert (=> d!1345995 (= lt!1632845 lt!1632844)))

(assert (=> d!1345995 (= (getValueByKey!755 lt!1632846 (_1!28085 (h!55414 lt!1631939))) (Some!10768 (_2!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345995 (= lt!1632844 (lemmaContainsTupThenGetReturnValue!488 lt!1632846 (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345995 (= lt!1632846 (insertNoDuplicatedKeys!215 (toList!3590 lt!1631951) (_1!28085 (h!55414 lt!1631939)) (_2!28085 (h!55414 lt!1631939))))))

(assert (=> d!1345995 (= (+!1171 lt!1631951 (h!55414 lt!1631939)) lt!1632847)))

(declare-fun b!4435603 () Bool)

(declare-fun res!1835676 () Bool)

(assert (=> b!4435603 (=> (not res!1835676) (not e!2761942))))

(assert (=> b!4435603 (= res!1835676 (= (getValueByKey!755 (toList!3590 lt!1632847) (_1!28085 (h!55414 lt!1631939))) (Some!10768 (_2!28085 (h!55414 lt!1631939)))))))

(declare-fun b!4435604 () Bool)

(assert (=> b!4435604 (= e!2761942 (contains!12255 (toList!3590 lt!1632847) (h!55414 lt!1631939)))))

(assert (= (and d!1345995 res!1835677) b!4435603))

(assert (= (and b!4435603 res!1835676) b!4435604))

(declare-fun m!5122057 () Bool)

(assert (=> d!1345995 m!5122057))

(declare-fun m!5122059 () Bool)

(assert (=> d!1345995 m!5122059))

(declare-fun m!5122061 () Bool)

(assert (=> d!1345995 m!5122061))

(declare-fun m!5122063 () Bool)

(assert (=> d!1345995 m!5122063))

(declare-fun m!5122065 () Bool)

(assert (=> b!4435603 m!5122065))

(declare-fun m!5122067 () Bool)

(assert (=> b!4435604 m!5122067))

(assert (=> b!4434871 d!1345995))

(declare-fun d!1345997 () Bool)

(declare-fun res!1835678 () Bool)

(declare-fun e!2761943 () Bool)

(assert (=> d!1345997 (=> res!1835678 e!2761943)))

(assert (=> d!1345997 (= res!1835678 ((_ is Nil!49707) (toList!3590 lt!1632302)))))

(assert (=> d!1345997 (= (forall!9648 (toList!3590 lt!1632302) lambda!156065) e!2761943)))

(declare-fun b!4435605 () Bool)

(declare-fun e!2761944 () Bool)

(assert (=> b!4435605 (= e!2761943 e!2761944)))

(declare-fun res!1835679 () Bool)

(assert (=> b!4435605 (=> (not res!1835679) (not e!2761944))))

(assert (=> b!4435605 (= res!1835679 (dynLambda!20887 lambda!156065 (h!55414 (toList!3590 lt!1632302))))))

(declare-fun b!4435606 () Bool)

(assert (=> b!4435606 (= e!2761944 (forall!9648 (t!356773 (toList!3590 lt!1632302)) lambda!156065))))

(assert (= (and d!1345997 (not res!1835678)) b!4435605))

(assert (= (and b!4435605 res!1835679) b!4435606))

(declare-fun b_lambda!144411 () Bool)

(assert (=> (not b_lambda!144411) (not b!4435605)))

(declare-fun m!5122069 () Bool)

(assert (=> b!4435605 m!5122069))

(declare-fun m!5122071 () Bool)

(assert (=> b!4435606 m!5122071))

(assert (=> b!4434871 d!1345997))

(assert (=> d!1345621 d!1345873))

(declare-fun d!1345999 () Bool)

(declare-fun e!2761945 () Bool)

(assert (=> d!1345999 e!2761945))

(declare-fun res!1835680 () Bool)

(assert (=> d!1345999 (=> res!1835680 e!2761945)))

(declare-fun lt!1632848 () Bool)

(assert (=> d!1345999 (= res!1835680 (not lt!1632848))))

(declare-fun lt!1632850 () Bool)

(assert (=> d!1345999 (= lt!1632848 lt!1632850)))

(declare-fun lt!1632851 () Unit!83085)

(declare-fun e!2761946 () Unit!83085)

(assert (=> d!1345999 (= lt!1632851 e!2761946)))

(declare-fun c!754928 () Bool)

(assert (=> d!1345999 (= c!754928 lt!1632850)))

(assert (=> d!1345999 (= lt!1632850 (containsKey!1193 (toList!3589 lt!1632248) (_1!28086 lt!1631949)))))

(assert (=> d!1345999 (= (contains!12251 lt!1632248 (_1!28086 lt!1631949)) lt!1632848)))

(declare-fun b!4435607 () Bool)

(declare-fun lt!1632849 () Unit!83085)

(assert (=> b!4435607 (= e!2761946 lt!1632849)))

(assert (=> b!4435607 (= lt!1632849 (lemmaContainsKeyImpliesGetValueByKeyDefined!664 (toList!3589 lt!1632248) (_1!28086 lt!1631949)))))

(assert (=> b!4435607 (isDefined!8061 (getValueByKey!756 (toList!3589 lt!1632248) (_1!28086 lt!1631949)))))

(declare-fun b!4435608 () Bool)

(declare-fun Unit!83325 () Unit!83085)

(assert (=> b!4435608 (= e!2761946 Unit!83325)))

(declare-fun b!4435609 () Bool)

(assert (=> b!4435609 (= e!2761945 (isDefined!8061 (getValueByKey!756 (toList!3589 lt!1632248) (_1!28086 lt!1631949))))))

(assert (= (and d!1345999 c!754928) b!4435607))

(assert (= (and d!1345999 (not c!754928)) b!4435608))

(assert (= (and d!1345999 (not res!1835680)) b!4435609))

(declare-fun m!5122073 () Bool)

(assert (=> d!1345999 m!5122073))

(declare-fun m!5122075 () Bool)

(assert (=> b!4435607 m!5122075))

(assert (=> b!4435607 m!5120603))

(assert (=> b!4435607 m!5120603))

(declare-fun m!5122077 () Bool)

(assert (=> b!4435607 m!5122077))

(assert (=> b!4435609 m!5120603))

(assert (=> b!4435609 m!5120603))

(assert (=> b!4435609 m!5122077))

(assert (=> d!1345613 d!1345999))

(declare-fun b!4435610 () Bool)

(declare-fun e!2761947 () Option!10770)

(assert (=> b!4435610 (= e!2761947 (Some!10769 (_2!28086 (h!55415 lt!1632249))))))

(declare-fun d!1346001 () Bool)

(declare-fun c!754929 () Bool)

(assert (=> d!1346001 (= c!754929 (and ((_ is Cons!49708) lt!1632249) (= (_1!28086 (h!55415 lt!1632249)) (_1!28086 lt!1631949))))))

(assert (=> d!1346001 (= (getValueByKey!756 lt!1632249 (_1!28086 lt!1631949)) e!2761947)))

(declare-fun b!4435613 () Bool)

(declare-fun e!2761948 () Option!10770)

(assert (=> b!4435613 (= e!2761948 None!10769)))

(declare-fun b!4435611 () Bool)

(assert (=> b!4435611 (= e!2761947 e!2761948)))

(declare-fun c!754930 () Bool)

(assert (=> b!4435611 (= c!754930 (and ((_ is Cons!49708) lt!1632249) (not (= (_1!28086 (h!55415 lt!1632249)) (_1!28086 lt!1631949)))))))

(declare-fun b!4435612 () Bool)

(assert (=> b!4435612 (= e!2761948 (getValueByKey!756 (t!356774 lt!1632249) (_1!28086 lt!1631949)))))

(assert (= (and d!1346001 c!754929) b!4435610))

(assert (= (and d!1346001 (not c!754929)) b!4435611))

(assert (= (and b!4435611 c!754930) b!4435612))

(assert (= (and b!4435611 (not c!754930)) b!4435613))

(declare-fun m!5122079 () Bool)

(assert (=> b!4435612 m!5122079))

(assert (=> d!1345613 d!1346001))

(declare-fun d!1346003 () Bool)

(assert (=> d!1346003 (= (getValueByKey!756 lt!1632249 (_1!28086 lt!1631949)) (Some!10769 (_2!28086 lt!1631949)))))

(declare-fun lt!1632866 () Unit!83085)

(declare-fun choose!28136 (List!49832 (_ BitVec 64) List!49831) Unit!83085)

(assert (=> d!1346003 (= lt!1632866 (choose!28136 lt!1632249 (_1!28086 lt!1631949) (_2!28086 lt!1631949)))))

(declare-fun e!2761966 () Bool)

(assert (=> d!1346003 e!2761966))

(declare-fun res!1835696 () Bool)

(assert (=> d!1346003 (=> (not res!1835696) (not e!2761966))))

(assert (=> d!1346003 (= res!1835696 (isStrictlySorted!254 lt!1632249))))

(assert (=> d!1346003 (= (lemmaContainsTupThenGetReturnValue!489 lt!1632249 (_1!28086 lt!1631949) (_2!28086 lt!1631949)) lt!1632866)))

(declare-fun b!4435639 () Bool)

(declare-fun res!1835697 () Bool)

(assert (=> b!4435639 (=> (not res!1835697) (not e!2761966))))

(assert (=> b!4435639 (= res!1835697 (containsKey!1193 lt!1632249 (_1!28086 lt!1631949)))))

(declare-fun b!4435640 () Bool)

(assert (=> b!4435640 (= e!2761966 (contains!12256 lt!1632249 (tuple2!49585 (_1!28086 lt!1631949) (_2!28086 lt!1631949))))))

(assert (= (and d!1346003 res!1835696) b!4435639))

(assert (= (and b!4435639 res!1835697) b!4435640))

(assert (=> d!1346003 m!5120597))

(declare-fun m!5122135 () Bool)

(assert (=> d!1346003 m!5122135))

(declare-fun m!5122139 () Bool)

(assert (=> d!1346003 m!5122139))

(declare-fun m!5122143 () Bool)

(assert (=> b!4435639 m!5122143))

(declare-fun m!5122145 () Bool)

(assert (=> b!4435640 m!5122145))

(assert (=> d!1345613 d!1346003))

(declare-fun b!4435729 () Bool)

(declare-fun e!2762021 () List!49832)

(declare-fun e!2762022 () List!49832)

(assert (=> b!4435729 (= e!2762021 e!2762022)))

(declare-fun c!754965 () Bool)

(assert (=> b!4435729 (= c!754965 (and ((_ is Cons!49708) (toList!3589 lm!1616)) (= (_1!28086 (h!55415 (toList!3589 lm!1616))) (_1!28086 lt!1631949))))))

(declare-fun b!4435730 () Bool)

(declare-fun call!308662 () List!49832)

(assert (=> b!4435730 (= e!2762021 call!308662)))

(declare-fun b!4435731 () Bool)

(declare-fun call!308663 () List!49832)

(assert (=> b!4435731 (= e!2762022 call!308663)))

(declare-fun b!4435732 () Bool)

(declare-fun e!2762020 () Bool)

(declare-fun lt!1632912 () List!49832)

(assert (=> b!4435732 (= e!2762020 (contains!12256 lt!1632912 (tuple2!49585 (_1!28086 lt!1631949) (_2!28086 lt!1631949))))))

(declare-fun b!4435733 () Bool)

(declare-fun res!1835730 () Bool)

(assert (=> b!4435733 (=> (not res!1835730) (not e!2762020))))

(assert (=> b!4435733 (= res!1835730 (containsKey!1193 lt!1632912 (_1!28086 lt!1631949)))))

(declare-fun c!754967 () Bool)

(declare-fun e!2762019 () List!49832)

(declare-fun bm!308657 () Bool)

(declare-fun $colon$colon!805 (List!49832 tuple2!49584) List!49832)

(assert (=> bm!308657 (= call!308662 ($colon$colon!805 e!2762019 (ite c!754967 (h!55415 (toList!3589 lm!1616)) (tuple2!49585 (_1!28086 lt!1631949) (_2!28086 lt!1631949)))))))

(declare-fun c!754964 () Bool)

(assert (=> bm!308657 (= c!754964 c!754967)))

(declare-fun bm!308658 () Bool)

(assert (=> bm!308658 (= call!308663 call!308662)))

(declare-fun d!1346021 () Bool)

(assert (=> d!1346021 e!2762020))

(declare-fun res!1835731 () Bool)

(assert (=> d!1346021 (=> (not res!1835731) (not e!2762020))))

(assert (=> d!1346021 (= res!1835731 (isStrictlySorted!254 lt!1632912))))

(assert (=> d!1346021 (= lt!1632912 e!2762021)))

(assert (=> d!1346021 (= c!754967 (and ((_ is Cons!49708) (toList!3589 lm!1616)) (bvslt (_1!28086 (h!55415 (toList!3589 lm!1616))) (_1!28086 lt!1631949))))))

(assert (=> d!1346021 (isStrictlySorted!254 (toList!3589 lm!1616))))

(assert (=> d!1346021 (= (insertStrictlySorted!282 (toList!3589 lm!1616) (_1!28086 lt!1631949) (_2!28086 lt!1631949)) lt!1632912)))

(declare-fun b!4435734 () Bool)

(declare-fun c!754966 () Bool)

(assert (=> b!4435734 (= e!2762019 (ite c!754965 (t!356774 (toList!3589 lm!1616)) (ite c!754966 (Cons!49708 (h!55415 (toList!3589 lm!1616)) (t!356774 (toList!3589 lm!1616))) Nil!49708)))))

(declare-fun b!4435735 () Bool)

(assert (=> b!4435735 (= e!2762019 (insertStrictlySorted!282 (t!356774 (toList!3589 lm!1616)) (_1!28086 lt!1631949) (_2!28086 lt!1631949)))))

(declare-fun b!4435736 () Bool)

(declare-fun e!2762023 () List!49832)

(declare-fun call!308664 () List!49832)

(assert (=> b!4435736 (= e!2762023 call!308664)))

(declare-fun bm!308659 () Bool)

(assert (=> bm!308659 (= call!308664 call!308663)))

(declare-fun b!4435737 () Bool)

(assert (=> b!4435737 (= c!754966 (and ((_ is Cons!49708) (toList!3589 lm!1616)) (bvsgt (_1!28086 (h!55415 (toList!3589 lm!1616))) (_1!28086 lt!1631949))))))

(assert (=> b!4435737 (= e!2762022 e!2762023)))

(declare-fun b!4435738 () Bool)

(assert (=> b!4435738 (= e!2762023 call!308664)))

(assert (= (and d!1346021 c!754967) b!4435730))

(assert (= (and d!1346021 (not c!754967)) b!4435729))

(assert (= (and b!4435729 c!754965) b!4435731))

(assert (= (and b!4435729 (not c!754965)) b!4435737))

(assert (= (and b!4435737 c!754966) b!4435736))

(assert (= (and b!4435737 (not c!754966)) b!4435738))

(assert (= (or b!4435736 b!4435738) bm!308659))

(assert (= (or b!4435731 bm!308659) bm!308658))

(assert (= (or b!4435730 bm!308658) bm!308657))

(assert (= (and bm!308657 c!754964) b!4435735))

(assert (= (and bm!308657 (not c!754964)) b!4435734))

(assert (= (and d!1346021 res!1835731) b!4435733))

(assert (= (and b!4435733 res!1835730) b!4435732))

(declare-fun m!5122291 () Bool)

(assert (=> b!4435732 m!5122291))

(declare-fun m!5122293 () Bool)

(assert (=> b!4435735 m!5122293))

(declare-fun m!5122297 () Bool)

(assert (=> b!4435733 m!5122297))

(declare-fun m!5122299 () Bool)

(assert (=> d!1346021 m!5122299))

(assert (=> d!1346021 m!5120227))

(declare-fun m!5122301 () Bool)

(assert (=> bm!308657 m!5122301))

(assert (=> d!1345613 d!1346021))

(declare-fun d!1346049 () Bool)

(assert (=> d!1346049 (dynLambda!20887 lambda!156040 (h!55414 newBucket!194))))

(declare-fun lt!1632914 () Unit!83085)

(assert (=> d!1346049 (= lt!1632914 (choose!28123 (toList!3590 lt!1632170) lambda!156040 (h!55414 newBucket!194)))))

(declare-fun e!2762025 () Bool)

(assert (=> d!1346049 e!2762025))

(declare-fun res!1835733 () Bool)

(assert (=> d!1346049 (=> (not res!1835733) (not e!2762025))))

(assert (=> d!1346049 (= res!1835733 (forall!9648 (toList!3590 lt!1632170) lambda!156040))))

(assert (=> d!1346049 (= (forallContained!2125 (toList!3590 lt!1632170) lambda!156040 (h!55414 newBucket!194)) lt!1632914)))

(declare-fun b!4435740 () Bool)

(assert (=> b!4435740 (= e!2762025 (contains!12255 (toList!3590 lt!1632170) (h!55414 newBucket!194)))))

(assert (= (and d!1346049 res!1835733) b!4435740))

(declare-fun b_lambda!144423 () Bool)

(assert (=> (not b_lambda!144423) (not d!1346049)))

(declare-fun m!5122303 () Bool)

(assert (=> d!1346049 m!5122303))

(declare-fun m!5122305 () Bool)

(assert (=> d!1346049 m!5122305))

(assert (=> d!1346049 m!5120445))

(declare-fun m!5122307 () Bool)

(assert (=> b!4435740 m!5122307))

(assert (=> b!4434762 d!1346049))

(assert (=> b!4434762 d!1345911))

(declare-fun d!1346051 () Bool)

(declare-fun e!2762026 () Bool)

(assert (=> d!1346051 e!2762026))

(declare-fun res!1835735 () Bool)

(assert (=> d!1346051 (=> (not res!1835735) (not e!2762026))))

(declare-fun lt!1632918 () ListMap!2833)

(assert (=> d!1346051 (= res!1835735 (contains!12250 lt!1632918 (_1!28085 (h!55414 newBucket!194))))))

(declare-fun lt!1632917 () List!49831)

(assert (=> d!1346051 (= lt!1632918 (ListMap!2834 lt!1632917))))

(declare-fun lt!1632916 () Unit!83085)

(declare-fun lt!1632915 () Unit!83085)

(assert (=> d!1346051 (= lt!1632916 lt!1632915)))

(assert (=> d!1346051 (= (getValueByKey!755 lt!1632917 (_1!28085 (h!55414 newBucket!194))) (Some!10768 (_2!28085 (h!55414 newBucket!194))))))

(assert (=> d!1346051 (= lt!1632915 (lemmaContainsTupThenGetReturnValue!488 lt!1632917 (_1!28085 (h!55414 newBucket!194)) (_2!28085 (h!55414 newBucket!194))))))

(assert (=> d!1346051 (= lt!1632917 (insertNoDuplicatedKeys!215 (toList!3590 lt!1631951) (_1!28085 (h!55414 newBucket!194)) (_2!28085 (h!55414 newBucket!194))))))

(assert (=> d!1346051 (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632918)))

(declare-fun b!4435741 () Bool)

(declare-fun res!1835734 () Bool)

(assert (=> b!4435741 (=> (not res!1835734) (not e!2762026))))

(assert (=> b!4435741 (= res!1835734 (= (getValueByKey!755 (toList!3590 lt!1632918) (_1!28085 (h!55414 newBucket!194))) (Some!10768 (_2!28085 (h!55414 newBucket!194)))))))

(declare-fun b!4435742 () Bool)

(assert (=> b!4435742 (= e!2762026 (contains!12255 (toList!3590 lt!1632918) (h!55414 newBucket!194)))))

(assert (= (and d!1346051 res!1835735) b!4435741))

(assert (= (and b!4435741 res!1835734) b!4435742))

(declare-fun m!5122311 () Bool)

(assert (=> d!1346051 m!5122311))

(declare-fun m!5122313 () Bool)

(assert (=> d!1346051 m!5122313))

(declare-fun m!5122315 () Bool)

(assert (=> d!1346051 m!5122315))

(declare-fun m!5122317 () Bool)

(assert (=> d!1346051 m!5122317))

(declare-fun m!5122319 () Bool)

(assert (=> b!4435741 m!5122319))

(declare-fun m!5122321 () Bool)

(assert (=> b!4435742 m!5122321))

(assert (=> b!4434762 d!1346051))

(declare-fun bs!761924 () Bool)

(declare-fun b!4435746 () Bool)

(assert (= bs!761924 (and b!4435746 d!1345865)))

(declare-fun lambda!156152 () Int)

(assert (=> bs!761924 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632668) (= lambda!156152 lambda!156124))))

(declare-fun bs!761925 () Bool)

(assert (= bs!761925 (and b!4435746 d!1345925)))

(assert (=> bs!761925 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156152 lambda!156138))))

(declare-fun bs!761926 () Bool)

(assert (= bs!761926 (and b!4435746 b!4435337)))

(assert (=> bs!761926 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156152 lambda!156108))))

(declare-fun bs!761927 () Bool)

(assert (= bs!761927 (and b!4435746 d!1345973)))

(assert (=> bs!761927 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632794) (= lambda!156152 lambda!156147))))

(declare-fun bs!761928 () Bool)

(assert (= bs!761928 (and b!4435746 b!4435279)))

(assert (=> bs!761928 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156152 lambda!156105))))

(declare-fun bs!761929 () Bool)

(assert (= bs!761929 (and b!4435746 d!1345619)))

(assert (=> bs!761929 (not (= lambda!156152 lambda!156061))))

(declare-fun bs!761930 () Bool)

(assert (= bs!761930 (and b!4435746 b!4435421)))

(assert (=> bs!761930 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156152 lambda!156119))))

(declare-fun bs!761931 () Bool)

(assert (= bs!761931 (and b!4435746 d!1345723)))

(assert (=> bs!761931 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632235) (= lambda!156152 lambda!156103))))

(declare-fun bs!761932 () Bool)

(assert (= bs!761932 (and b!4435746 d!1345883)))

(assert (=> bs!761932 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156152 lambda!156130))))

(declare-fun bs!761933 () Bool)

(assert (= bs!761933 (and b!4435746 b!4434762)))

(assert (=> bs!761933 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632187) (= lambda!156152 lambda!156040))))

(declare-fun bs!761934 () Bool)

(assert (= bs!761934 (and b!4435746 b!4434801)))

(assert (=> bs!761934 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156152 lambda!156052))))

(declare-fun bs!761935 () Bool)

(assert (= bs!761935 (and b!4435746 d!1345633)))

(assert (=> bs!761935 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632306) (= lambda!156152 lambda!156066))))

(declare-fun bs!761936 () Bool)

(assert (= bs!761936 (and b!4435746 b!4435103)))

(assert (=> bs!761936 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632437) (= lambda!156152 lambda!156093))))

(declare-fun bs!761937 () Bool)

(assert (= bs!761937 (and b!4435746 d!1345851)))

(assert (=> bs!761937 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632615) (= lambda!156152 lambda!156116))))

(declare-fun bs!761938 () Bool)

(assert (= bs!761938 (and b!4435746 b!4435336)))

(assert (=> bs!761938 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632598) (= lambda!156152 lambda!156110))))

(declare-fun bs!761939 () Bool)

(assert (= bs!761939 (and b!4435746 d!1345831)))

(assert (=> bs!761939 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632585) (= lambda!156152 lambda!156111))))

(declare-fun bs!761940 () Bool)

(assert (= bs!761940 (and b!4435746 b!4434800)))

(assert (=> bs!761940 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156152 lambda!156053))))

(declare-fun bs!761941 () Bool)

(assert (= bs!761941 (and b!4435746 b!4435368)))

(assert (=> bs!761941 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632628) (= lambda!156152 lambda!156115))))

(declare-fun bs!761942 () Bool)

(assert (= bs!761942 (and b!4435746 b!4435280)))

(assert (=> bs!761942 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156152 lambda!156104))))

(declare-fun bs!761944 () Bool)

(assert (= bs!761944 (and b!4435746 d!1345535)))

(assert (=> bs!761944 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632174) (= lambda!156152 lambda!156041))))

(declare-fun bs!761945 () Bool)

(assert (= bs!761945 (and b!4435746 d!1345987)))

(assert (=> bs!761945 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632319) (= lambda!156152 lambda!156150))))

(assert (=> bs!761928 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632560) (= lambda!156152 lambda!156106))))

(assert (=> bs!761938 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156152 lambda!156109))))

(declare-fun bs!761947 () Bool)

(assert (= bs!761947 (and b!4435746 b!4435572)))

(assert (=> bs!761947 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156152 lambda!156143))))

(declare-fun bs!761949 () Bool)

(assert (= bs!761949 (and b!4435746 d!1345597)))

(assert (=> bs!761949 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632222) (= lambda!156152 lambda!156055))))

(declare-fun bs!761951 () Bool)

(assert (= bs!761951 (and b!4435746 b!4435420)))

(assert (=> bs!761951 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156152 lambda!156121))))

(declare-fun bs!761953 () Bool)

(assert (= bs!761953 (and b!4435746 d!1345703)))

(assert (=> bs!761953 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632424) (= lambda!156152 lambda!156094))))

(declare-fun bs!761955 () Bool)

(assert (= bs!761955 (and b!4435746 b!4435104)))

(assert (=> bs!761955 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156152 lambda!156089))))

(declare-fun bs!761957 () Bool)

(assert (= bs!761957 (and b!4435746 b!4434872)))

(assert (=> bs!761957 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156152 lambda!156063))))

(assert (=> bs!761947 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632807) (= lambda!156152 lambda!156144))))

(declare-fun bs!761960 () Bool)

(assert (= bs!761960 (and b!4435746 b!4434871)))

(assert (=> bs!761960 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632319) (= lambda!156152 lambda!156065))))

(declare-fun bs!761961 () Bool)

(assert (= bs!761961 (and b!4435746 b!4435369)))

(assert (=> bs!761961 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156152 lambda!156113))))

(assert (=> bs!761940 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632235) (= lambda!156152 lambda!156054))))

(assert (=> bs!761960 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156152 lambda!156064))))

(assert (=> bs!761941 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156152 lambda!156114))))

(assert (=> bs!761951 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632681) (= lambda!156152 lambda!156123))))

(assert (=> bs!761933 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156152 lambda!156039))))

(declare-fun bs!761967 () Bool)

(assert (= bs!761967 (and b!4435746 b!4435573)))

(assert (=> bs!761967 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156152 lambda!156142))))

(declare-fun bs!761969 () Bool)

(assert (= bs!761969 (and b!4435746 b!4434763)))

(assert (=> bs!761969 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156152 lambda!156037))))

(declare-fun bs!761970 () Bool)

(assert (= bs!761970 (and b!4435746 d!1345799)))

(assert (=> bs!761970 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632547) (= lambda!156152 lambda!156107))))

(assert (=> bs!761936 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156152 lambda!156092))))

(assert (=> b!4435746 true))

(declare-fun bs!761981 () Bool)

(declare-fun b!4435745 () Bool)

(assert (= bs!761981 (and b!4435745 d!1345865)))

(declare-fun lambda!156154 () Int)

(assert (=> bs!761981 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632668) (= lambda!156154 lambda!156124))))

(declare-fun bs!761982 () Bool)

(assert (= bs!761982 (and b!4435745 d!1345925)))

(assert (=> bs!761982 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156154 lambda!156138))))

(declare-fun bs!761983 () Bool)

(assert (= bs!761983 (and b!4435745 b!4435337)))

(assert (=> bs!761983 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156154 lambda!156108))))

(declare-fun bs!761984 () Bool)

(assert (= bs!761984 (and b!4435745 b!4435279)))

(assert (=> bs!761984 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156154 lambda!156105))))

(declare-fun bs!761985 () Bool)

(assert (= bs!761985 (and b!4435745 d!1345619)))

(assert (=> bs!761985 (not (= lambda!156154 lambda!156061))))

(declare-fun bs!761986 () Bool)

(assert (= bs!761986 (and b!4435745 b!4435421)))

(assert (=> bs!761986 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156154 lambda!156119))))

(declare-fun bs!761987 () Bool)

(assert (= bs!761987 (and b!4435745 d!1345723)))

(assert (=> bs!761987 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632235) (= lambda!156154 lambda!156103))))

(declare-fun bs!761988 () Bool)

(assert (= bs!761988 (and b!4435745 d!1345883)))

(assert (=> bs!761988 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156154 lambda!156130))))

(declare-fun bs!761990 () Bool)

(assert (= bs!761990 (and b!4435745 b!4434762)))

(assert (=> bs!761990 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632187) (= lambda!156154 lambda!156040))))

(declare-fun bs!761991 () Bool)

(assert (= bs!761991 (and b!4435745 b!4434801)))

(assert (=> bs!761991 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156154 lambda!156052))))

(declare-fun bs!761993 () Bool)

(assert (= bs!761993 (and b!4435745 d!1345633)))

(assert (=> bs!761993 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632306) (= lambda!156154 lambda!156066))))

(declare-fun bs!761994 () Bool)

(assert (= bs!761994 (and b!4435745 b!4435103)))

(assert (=> bs!761994 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632437) (= lambda!156154 lambda!156093))))

(declare-fun bs!761996 () Bool)

(assert (= bs!761996 (and b!4435745 d!1345851)))

(assert (=> bs!761996 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632615) (= lambda!156154 lambda!156116))))

(declare-fun bs!761998 () Bool)

(assert (= bs!761998 (and b!4435745 b!4435336)))

(assert (=> bs!761998 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632598) (= lambda!156154 lambda!156110))))

(declare-fun bs!762000 () Bool)

(assert (= bs!762000 (and b!4435745 d!1345831)))

(assert (=> bs!762000 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632585) (= lambda!156154 lambda!156111))))

(declare-fun bs!762002 () Bool)

(assert (= bs!762002 (and b!4435745 b!4435746)))

(assert (=> bs!762002 (= lambda!156154 lambda!156152)))

(declare-fun bs!762004 () Bool)

(assert (= bs!762004 (and b!4435745 d!1345973)))

(assert (=> bs!762004 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632794) (= lambda!156154 lambda!156147))))

(declare-fun bs!762006 () Bool)

(assert (= bs!762006 (and b!4435745 b!4434800)))

(assert (=> bs!762006 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 lt!1631950)) (= lambda!156154 lambda!156053))))

(declare-fun bs!762008 () Bool)

(assert (= bs!762008 (and b!4435745 b!4435368)))

(assert (=> bs!762008 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632628) (= lambda!156154 lambda!156115))))

(declare-fun bs!762010 () Bool)

(assert (= bs!762010 (and b!4435745 b!4435280)))

(assert (=> bs!762010 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156154 lambda!156104))))

(declare-fun bs!762011 () Bool)

(assert (= bs!762011 (and b!4435745 d!1345535)))

(assert (=> bs!762011 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632174) (= lambda!156154 lambda!156041))))

(declare-fun bs!762013 () Bool)

(assert (= bs!762013 (and b!4435745 d!1345987)))

(assert (=> bs!762013 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632319) (= lambda!156154 lambda!156150))))

(assert (=> bs!761984 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632560) (= lambda!156154 lambda!156106))))

(assert (=> bs!761998 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156154 lambda!156109))))

(declare-fun bs!762017 () Bool)

(assert (= bs!762017 (and b!4435745 b!4435572)))

(assert (=> bs!762017 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156154 lambda!156143))))

(declare-fun bs!762019 () Bool)

(assert (= bs!762019 (and b!4435745 d!1345597)))

(assert (=> bs!762019 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632222) (= lambda!156154 lambda!156055))))

(declare-fun bs!762021 () Bool)

(assert (= bs!762021 (and b!4435745 b!4435420)))

(assert (=> bs!762021 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156154 lambda!156121))))

(declare-fun bs!762022 () Bool)

(assert (= bs!762022 (and b!4435745 d!1345703)))

(assert (=> bs!762022 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632424) (= lambda!156154 lambda!156094))))

(declare-fun bs!762024 () Bool)

(assert (= bs!762024 (and b!4435745 b!4435104)))

(assert (=> bs!762024 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156154 lambda!156089))))

(declare-fun bs!762026 () Bool)

(assert (= bs!762026 (and b!4435745 b!4434872)))

(assert (=> bs!762026 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156154 lambda!156063))))

(assert (=> bs!762017 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632807) (= lambda!156154 lambda!156144))))

(declare-fun bs!762029 () Bool)

(assert (= bs!762029 (and b!4435745 b!4434871)))

(assert (=> bs!762029 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632319) (= lambda!156154 lambda!156065))))

(declare-fun bs!762030 () Bool)

(assert (= bs!762030 (and b!4435745 b!4435369)))

(assert (=> bs!762030 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156154 lambda!156113))))

(assert (=> bs!762006 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632235) (= lambda!156154 lambda!156054))))

(assert (=> bs!762029 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156154 lambda!156064))))

(assert (=> bs!762008 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156154 lambda!156114))))

(assert (=> bs!762021 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632681) (= lambda!156154 lambda!156123))))

(assert (=> bs!761990 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156154 lambda!156039))))

(declare-fun bs!762034 () Bool)

(assert (= bs!762034 (and b!4435745 b!4435573)))

(assert (=> bs!762034 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156154 lambda!156142))))

(declare-fun bs!762035 () Bool)

(assert (= bs!762035 (and b!4435745 b!4434763)))

(assert (=> bs!762035 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1631951) (= lambda!156154 lambda!156037))))

(declare-fun bs!762036 () Bool)

(assert (= bs!762036 (and b!4435745 d!1345799)))

(assert (=> bs!762036 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632547) (= lambda!156154 lambda!156107))))

(assert (=> bs!761994 (= (= (+!1171 lt!1631951 (h!55414 newBucket!194)) (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156154 lambda!156092))))

(assert (=> b!4435745 true))

(declare-fun lt!1632939 () ListMap!2833)

(declare-fun lambda!156156 () Int)

(assert (=> bs!761981 (= (= lt!1632939 lt!1632668) (= lambda!156156 lambda!156124))))

(assert (=> bs!761982 (= (= lt!1632939 lt!1631951) (= lambda!156156 lambda!156138))))

(assert (=> bs!761983 (= (= lt!1632939 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156156 lambda!156108))))

(assert (=> bs!761984 (= (= lt!1632939 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156156 lambda!156105))))

(assert (=> bs!761985 (not (= lambda!156156 lambda!156061))))

(assert (=> bs!761987 (= (= lt!1632939 lt!1632235) (= lambda!156156 lambda!156103))))

(assert (=> bs!761988 (= (= lt!1632939 (+!1171 lt!1631951 lt!1631950)) (= lambda!156156 lambda!156130))))

(assert (=> bs!761990 (= (= lt!1632939 lt!1632187) (= lambda!156156 lambda!156040))))

(assert (=> bs!761991 (= (= lt!1632939 (+!1171 lt!1631951 lt!1631950)) (= lambda!156156 lambda!156052))))

(assert (=> bs!761993 (= (= lt!1632939 lt!1632306) (= lambda!156156 lambda!156066))))

(assert (=> bs!761994 (= (= lt!1632939 lt!1632437) (= lambda!156156 lambda!156093))))

(assert (=> bs!761996 (= (= lt!1632939 lt!1632615) (= lambda!156156 lambda!156116))))

(assert (=> bs!761998 (= (= lt!1632939 lt!1632598) (= lambda!156156 lambda!156110))))

(assert (=> bs!762000 (= (= lt!1632939 lt!1632585) (= lambda!156156 lambda!156111))))

(assert (=> bs!762002 (= (= lt!1632939 (+!1171 lt!1631951 (h!55414 newBucket!194))) (= lambda!156156 lambda!156152))))

(assert (=> bs!762004 (= (= lt!1632939 lt!1632794) (= lambda!156156 lambda!156147))))

(assert (=> bs!762006 (= (= lt!1632939 (+!1171 lt!1631951 lt!1631950)) (= lambda!156156 lambda!156053))))

(assert (=> bs!762008 (= (= lt!1632939 lt!1632628) (= lambda!156156 lambda!156115))))

(assert (=> bs!762010 (= (= lt!1632939 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156156 lambda!156104))))

(assert (=> bs!762011 (= (= lt!1632939 lt!1632174) (= lambda!156156 lambda!156041))))

(assert (=> bs!762013 (= (= lt!1632939 lt!1632319) (= lambda!156156 lambda!156150))))

(assert (=> bs!761984 (= (= lt!1632939 lt!1632560) (= lambda!156156 lambda!156106))))

(assert (=> bs!761998 (= (= lt!1632939 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156156 lambda!156109))))

(assert (=> bs!762017 (= (= lt!1632939 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156156 lambda!156143))))

(assert (=> bs!762019 (= (= lt!1632939 lt!1632222) (= lambda!156156 lambda!156055))))

(assert (=> bs!762021 (= (= lt!1632939 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156156 lambda!156121))))

(assert (=> bs!762022 (= (= lt!1632939 lt!1632424) (= lambda!156156 lambda!156094))))

(assert (=> bs!762024 (= (= lt!1632939 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156156 lambda!156089))))

(assert (=> bs!762026 (= (= lt!1632939 lt!1631951) (= lambda!156156 lambda!156063))))

(assert (=> bs!762017 (= (= lt!1632939 lt!1632807) (= lambda!156156 lambda!156144))))

(assert (=> bs!761986 (= (= lt!1632939 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156156 lambda!156119))))

(assert (=> b!4435745 (= (= lt!1632939 (+!1171 lt!1631951 (h!55414 newBucket!194))) (= lambda!156156 lambda!156154))))

(assert (=> bs!762029 (= (= lt!1632939 lt!1632319) (= lambda!156156 lambda!156065))))

(assert (=> bs!762030 (= (= lt!1632939 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156156 lambda!156113))))

(assert (=> bs!762006 (= (= lt!1632939 lt!1632235) (= lambda!156156 lambda!156054))))

(assert (=> bs!762029 (= (= lt!1632939 lt!1631951) (= lambda!156156 lambda!156064))))

(assert (=> bs!762008 (= (= lt!1632939 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156156 lambda!156114))))

(assert (=> bs!762021 (= (= lt!1632939 lt!1632681) (= lambda!156156 lambda!156123))))

(assert (=> bs!761990 (= (= lt!1632939 lt!1631951) (= lambda!156156 lambda!156039))))

(assert (=> bs!762034 (= (= lt!1632939 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156156 lambda!156142))))

(assert (=> bs!762035 (= (= lt!1632939 lt!1631951) (= lambda!156156 lambda!156037))))

(assert (=> bs!762036 (= (= lt!1632939 lt!1632547) (= lambda!156156 lambda!156107))))

(assert (=> bs!761994 (= (= lt!1632939 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156156 lambda!156092))))

(assert (=> b!4435745 true))

(declare-fun bs!762048 () Bool)

(declare-fun d!1346055 () Bool)

(assert (= bs!762048 (and d!1346055 d!1345865)))

(declare-fun lt!1632926 () ListMap!2833)

(declare-fun lambda!156159 () Int)

(assert (=> bs!762048 (= (= lt!1632926 lt!1632668) (= lambda!156159 lambda!156124))))

(declare-fun bs!762050 () Bool)

(assert (= bs!762050 (and d!1346055 d!1345925)))

(assert (=> bs!762050 (= (= lt!1632926 lt!1631951) (= lambda!156159 lambda!156138))))

(declare-fun bs!762051 () Bool)

(assert (= bs!762051 (and d!1346055 b!4435279)))

(assert (=> bs!762051 (= (= lt!1632926 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156159 lambda!156105))))

(declare-fun bs!762053 () Bool)

(assert (= bs!762053 (and d!1346055 d!1345619)))

(assert (=> bs!762053 (not (= lambda!156159 lambda!156061))))

(declare-fun bs!762055 () Bool)

(assert (= bs!762055 (and d!1346055 d!1345723)))

(assert (=> bs!762055 (= (= lt!1632926 lt!1632235) (= lambda!156159 lambda!156103))))

(declare-fun bs!762057 () Bool)

(assert (= bs!762057 (and d!1346055 d!1345883)))

(assert (=> bs!762057 (= (= lt!1632926 (+!1171 lt!1631951 lt!1631950)) (= lambda!156159 lambda!156130))))

(declare-fun bs!762059 () Bool)

(assert (= bs!762059 (and d!1346055 b!4434762)))

(assert (=> bs!762059 (= (= lt!1632926 lt!1632187) (= lambda!156159 lambda!156040))))

(declare-fun bs!762061 () Bool)

(assert (= bs!762061 (and d!1346055 b!4434801)))

(assert (=> bs!762061 (= (= lt!1632926 (+!1171 lt!1631951 lt!1631950)) (= lambda!156159 lambda!156052))))

(declare-fun bs!762063 () Bool)

(assert (= bs!762063 (and d!1346055 d!1345633)))

(assert (=> bs!762063 (= (= lt!1632926 lt!1632306) (= lambda!156159 lambda!156066))))

(declare-fun bs!762064 () Bool)

(assert (= bs!762064 (and d!1346055 b!4435103)))

(assert (=> bs!762064 (= (= lt!1632926 lt!1632437) (= lambda!156159 lambda!156093))))

(declare-fun bs!762066 () Bool)

(assert (= bs!762066 (and d!1346055 d!1345851)))

(assert (=> bs!762066 (= (= lt!1632926 lt!1632615) (= lambda!156159 lambda!156116))))

(declare-fun bs!762068 () Bool)

(assert (= bs!762068 (and d!1346055 b!4435337)))

(assert (=> bs!762068 (= (= lt!1632926 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156159 lambda!156108))))

(declare-fun bs!762070 () Bool)

(assert (= bs!762070 (and d!1346055 b!4435745)))

(assert (=> bs!762070 (= (= lt!1632926 lt!1632939) (= lambda!156159 lambda!156156))))

(declare-fun bs!762072 () Bool)

(assert (= bs!762072 (and d!1346055 b!4435336)))

(assert (=> bs!762072 (= (= lt!1632926 lt!1632598) (= lambda!156159 lambda!156110))))

(declare-fun bs!762074 () Bool)

(assert (= bs!762074 (and d!1346055 d!1345831)))

(assert (=> bs!762074 (= (= lt!1632926 lt!1632585) (= lambda!156159 lambda!156111))))

(declare-fun bs!762075 () Bool)

(assert (= bs!762075 (and d!1346055 b!4435746)))

(assert (=> bs!762075 (= (= lt!1632926 (+!1171 lt!1631951 (h!55414 newBucket!194))) (= lambda!156159 lambda!156152))))

(declare-fun bs!762077 () Bool)

(assert (= bs!762077 (and d!1346055 d!1345973)))

(assert (=> bs!762077 (= (= lt!1632926 lt!1632794) (= lambda!156159 lambda!156147))))

(declare-fun bs!762079 () Bool)

(assert (= bs!762079 (and d!1346055 b!4434800)))

(assert (=> bs!762079 (= (= lt!1632926 (+!1171 lt!1631951 lt!1631950)) (= lambda!156159 lambda!156053))))

(declare-fun bs!762081 () Bool)

(assert (= bs!762081 (and d!1346055 b!4435368)))

(assert (=> bs!762081 (= (= lt!1632926 lt!1632628) (= lambda!156159 lambda!156115))))

(declare-fun bs!762082 () Bool)

(assert (= bs!762082 (and d!1346055 b!4435280)))

(assert (=> bs!762082 (= (= lt!1632926 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156159 lambda!156104))))

(declare-fun bs!762084 () Bool)

(assert (= bs!762084 (and d!1346055 d!1345535)))

(assert (=> bs!762084 (= (= lt!1632926 lt!1632174) (= lambda!156159 lambda!156041))))

(declare-fun bs!762085 () Bool)

(assert (= bs!762085 (and d!1346055 d!1345987)))

(assert (=> bs!762085 (= (= lt!1632926 lt!1632319) (= lambda!156159 lambda!156150))))

(assert (=> bs!762051 (= (= lt!1632926 lt!1632560) (= lambda!156159 lambda!156106))))

(assert (=> bs!762072 (= (= lt!1632926 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156159 lambda!156109))))

(declare-fun bs!762088 () Bool)

(assert (= bs!762088 (and d!1346055 b!4435572)))

(assert (=> bs!762088 (= (= lt!1632926 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156159 lambda!156143))))

(declare-fun bs!762090 () Bool)

(assert (= bs!762090 (and d!1346055 d!1345597)))

(assert (=> bs!762090 (= (= lt!1632926 lt!1632222) (= lambda!156159 lambda!156055))))

(declare-fun bs!762091 () Bool)

(assert (= bs!762091 (and d!1346055 b!4435420)))

(assert (=> bs!762091 (= (= lt!1632926 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156159 lambda!156121))))

(declare-fun bs!762092 () Bool)

(assert (= bs!762092 (and d!1346055 d!1345703)))

(assert (=> bs!762092 (= (= lt!1632926 lt!1632424) (= lambda!156159 lambda!156094))))

(declare-fun bs!762093 () Bool)

(assert (= bs!762093 (and d!1346055 b!4435104)))

(assert (=> bs!762093 (= (= lt!1632926 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156159 lambda!156089))))

(declare-fun bs!762094 () Bool)

(assert (= bs!762094 (and d!1346055 b!4434872)))

(assert (=> bs!762094 (= (= lt!1632926 lt!1631951) (= lambda!156159 lambda!156063))))

(assert (=> bs!762088 (= (= lt!1632926 lt!1632807) (= lambda!156159 lambda!156144))))

(declare-fun bs!762095 () Bool)

(assert (= bs!762095 (and d!1346055 b!4435421)))

(assert (=> bs!762095 (= (= lt!1632926 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156159 lambda!156119))))

(assert (=> bs!762070 (= (= lt!1632926 (+!1171 lt!1631951 (h!55414 newBucket!194))) (= lambda!156159 lambda!156154))))

(declare-fun bs!762096 () Bool)

(assert (= bs!762096 (and d!1346055 b!4434871)))

(assert (=> bs!762096 (= (= lt!1632926 lt!1632319) (= lambda!156159 lambda!156065))))

(declare-fun bs!762097 () Bool)

(assert (= bs!762097 (and d!1346055 b!4435369)))

(assert (=> bs!762097 (= (= lt!1632926 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156159 lambda!156113))))

(assert (=> bs!762079 (= (= lt!1632926 lt!1632235) (= lambda!156159 lambda!156054))))

(assert (=> bs!762096 (= (= lt!1632926 lt!1631951) (= lambda!156159 lambda!156064))))

(assert (=> bs!762081 (= (= lt!1632926 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156159 lambda!156114))))

(assert (=> bs!762091 (= (= lt!1632926 lt!1632681) (= lambda!156159 lambda!156123))))

(assert (=> bs!762059 (= (= lt!1632926 lt!1631951) (= lambda!156159 lambda!156039))))

(declare-fun bs!762098 () Bool)

(assert (= bs!762098 (and d!1346055 b!4435573)))

(assert (=> bs!762098 (= (= lt!1632926 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156159 lambda!156142))))

(declare-fun bs!762099 () Bool)

(assert (= bs!762099 (and d!1346055 b!4434763)))

(assert (=> bs!762099 (= (= lt!1632926 lt!1631951) (= lambda!156159 lambda!156037))))

(declare-fun bs!762100 () Bool)

(assert (= bs!762100 (and d!1346055 d!1345799)))

(assert (=> bs!762100 (= (= lt!1632926 lt!1632547) (= lambda!156159 lambda!156107))))

(assert (=> bs!762064 (= (= lt!1632926 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156159 lambda!156092))))

(assert (=> d!1346055 true))

(declare-fun e!2762028 () Bool)

(declare-fun b!4435743 () Bool)

(assert (=> b!4435743 (= e!2762028 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 newBucket!194))) lambda!156156))))

(declare-fun lt!1632922 () ListMap!2833)

(declare-fun c!754968 () Bool)

(declare-fun call!308666 () Bool)

(declare-fun bm!308660 () Bool)

(assert (=> bm!308660 (= call!308666 (forall!9648 (ite c!754968 (toList!3590 (+!1171 lt!1631951 (h!55414 newBucket!194))) (toList!3590 lt!1632922)) (ite c!754968 lambda!156152 lambda!156156)))))

(declare-fun bm!308661 () Bool)

(declare-fun call!308667 () Unit!83085)

(assert (=> bm!308661 (= call!308667 (lemmaContainsAllItsOwnKeys!195 (+!1171 lt!1631951 (h!55414 newBucket!194))))))

(declare-fun b!4435744 () Bool)

(declare-fun e!2762029 () Bool)

(assert (=> b!4435744 (= e!2762029 (invariantList!827 (toList!3590 lt!1632926)))))

(assert (=> d!1346055 e!2762029))

(declare-fun res!1835738 () Bool)

(assert (=> d!1346055 (=> (not res!1835738) (not e!2762029))))

(assert (=> d!1346055 (= res!1835738 (forall!9648 (t!356773 newBucket!194) lambda!156159))))

(declare-fun e!2762027 () ListMap!2833)

(assert (=> d!1346055 (= lt!1632926 e!2762027)))

(assert (=> d!1346055 (= c!754968 ((_ is Nil!49707) (t!356773 newBucket!194)))))

(assert (=> d!1346055 (noDuplicateKeys!801 (t!356773 newBucket!194))))

(assert (=> d!1346055 (= (addToMapMapFromBucket!426 (t!356773 newBucket!194) (+!1171 lt!1631951 (h!55414 newBucket!194))) lt!1632926)))

(assert (=> b!4435745 (= e!2762027 lt!1632939)))

(assert (=> b!4435745 (= lt!1632922 (+!1171 (+!1171 lt!1631951 (h!55414 newBucket!194)) (h!55414 (t!356773 newBucket!194))))))

(assert (=> b!4435745 (= lt!1632939 (addToMapMapFromBucket!426 (t!356773 (t!356773 newBucket!194)) (+!1171 (+!1171 lt!1631951 (h!55414 newBucket!194)) (h!55414 (t!356773 newBucket!194)))))))

(declare-fun lt!1632921 () Unit!83085)

(assert (=> b!4435745 (= lt!1632921 call!308667)))

(declare-fun call!308665 () Bool)

(assert (=> b!4435745 call!308665))

(declare-fun lt!1632934 () Unit!83085)

(assert (=> b!4435745 (= lt!1632934 lt!1632921)))

(assert (=> b!4435745 (forall!9648 (toList!3590 lt!1632922) lambda!156156)))

(declare-fun lt!1632919 () Unit!83085)

(declare-fun Unit!83339 () Unit!83085)

(assert (=> b!4435745 (= lt!1632919 Unit!83339)))

(assert (=> b!4435745 (forall!9648 (t!356773 (t!356773 newBucket!194)) lambda!156156)))

(declare-fun lt!1632937 () Unit!83085)

(declare-fun Unit!83340 () Unit!83085)

(assert (=> b!4435745 (= lt!1632937 Unit!83340)))

(declare-fun lt!1632931 () Unit!83085)

(declare-fun Unit!83341 () Unit!83085)

(assert (=> b!4435745 (= lt!1632931 Unit!83341)))

(declare-fun lt!1632924 () Unit!83085)

(assert (=> b!4435745 (= lt!1632924 (forallContained!2125 (toList!3590 lt!1632922) lambda!156156 (h!55414 (t!356773 newBucket!194))))))

(assert (=> b!4435745 (contains!12250 lt!1632922 (_1!28085 (h!55414 (t!356773 newBucket!194))))))

(declare-fun lt!1632933 () Unit!83085)

(declare-fun Unit!83342 () Unit!83085)

(assert (=> b!4435745 (= lt!1632933 Unit!83342)))

(assert (=> b!4435745 (contains!12250 lt!1632939 (_1!28085 (h!55414 (t!356773 newBucket!194))))))

(declare-fun lt!1632928 () Unit!83085)

(declare-fun Unit!83343 () Unit!83085)

(assert (=> b!4435745 (= lt!1632928 Unit!83343)))

(assert (=> b!4435745 (forall!9648 (t!356773 newBucket!194) lambda!156156)))

(declare-fun lt!1632923 () Unit!83085)

(declare-fun Unit!83344 () Unit!83085)

(assert (=> b!4435745 (= lt!1632923 Unit!83344)))

(assert (=> b!4435745 call!308666))

(declare-fun lt!1632929 () Unit!83085)

(declare-fun Unit!83345 () Unit!83085)

(assert (=> b!4435745 (= lt!1632929 Unit!83345)))

(declare-fun lt!1632936 () Unit!83085)

(declare-fun Unit!83346 () Unit!83085)

(assert (=> b!4435745 (= lt!1632936 Unit!83346)))

(declare-fun lt!1632930 () Unit!83085)

(assert (=> b!4435745 (= lt!1632930 (addForallContainsKeyThenBeforeAdding!195 (+!1171 lt!1631951 (h!55414 newBucket!194)) lt!1632939 (_1!28085 (h!55414 (t!356773 newBucket!194))) (_2!28085 (h!55414 (t!356773 newBucket!194)))))))

(assert (=> b!4435745 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 newBucket!194))) lambda!156156)))

(declare-fun lt!1632938 () Unit!83085)

(assert (=> b!4435745 (= lt!1632938 lt!1632930)))

(assert (=> b!4435745 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 newBucket!194))) lambda!156156)))

(declare-fun lt!1632920 () Unit!83085)

(declare-fun Unit!83347 () Unit!83085)

(assert (=> b!4435745 (= lt!1632920 Unit!83347)))

(declare-fun res!1835736 () Bool)

(assert (=> b!4435745 (= res!1835736 (forall!9648 (t!356773 newBucket!194) lambda!156156))))

(assert (=> b!4435745 (=> (not res!1835736) (not e!2762028))))

(assert (=> b!4435745 e!2762028))

(declare-fun lt!1632935 () Unit!83085)

(declare-fun Unit!83348 () Unit!83085)

(assert (=> b!4435745 (= lt!1632935 Unit!83348)))

(declare-fun bm!308662 () Bool)

(assert (=> bm!308662 (= call!308665 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 newBucket!194))) (ite c!754968 lambda!156152 lambda!156154)))))

(assert (=> b!4435746 (= e!2762027 (+!1171 lt!1631951 (h!55414 newBucket!194)))))

(declare-fun lt!1632932 () Unit!83085)

(assert (=> b!4435746 (= lt!1632932 call!308667)))

(assert (=> b!4435746 call!308665))

(declare-fun lt!1632927 () Unit!83085)

(assert (=> b!4435746 (= lt!1632927 lt!1632932)))

(assert (=> b!4435746 call!308666))

(declare-fun lt!1632925 () Unit!83085)

(declare-fun Unit!83349 () Unit!83085)

(assert (=> b!4435746 (= lt!1632925 Unit!83349)))

(declare-fun b!4435747 () Bool)

(declare-fun res!1835737 () Bool)

(assert (=> b!4435747 (=> (not res!1835737) (not e!2762029))))

(assert (=> b!4435747 (= res!1835737 (forall!9648 (toList!3590 (+!1171 lt!1631951 (h!55414 newBucket!194))) lambda!156159))))

(assert (= (and d!1346055 c!754968) b!4435746))

(assert (= (and d!1346055 (not c!754968)) b!4435745))

(assert (= (and b!4435745 res!1835736) b!4435743))

(assert (= (or b!4435746 b!4435745) bm!308661))

(assert (= (or b!4435746 b!4435745) bm!308662))

(assert (= (or b!4435746 b!4435745) bm!308660))

(assert (= (and d!1346055 res!1835738) b!4435747))

(assert (= (and b!4435747 res!1835737) b!4435744))

(declare-fun m!5122361 () Bool)

(assert (=> bm!308660 m!5122361))

(declare-fun m!5122363 () Bool)

(assert (=> bm!308662 m!5122363))

(declare-fun m!5122365 () Bool)

(assert (=> b!4435744 m!5122365))

(declare-fun m!5122367 () Bool)

(assert (=> b!4435745 m!5122367))

(declare-fun m!5122369 () Bool)

(assert (=> b!4435745 m!5122369))

(assert (=> b!4435745 m!5120439))

(declare-fun m!5122371 () Bool)

(assert (=> b!4435745 m!5122371))

(declare-fun m!5122373 () Bool)

(assert (=> b!4435745 m!5122373))

(declare-fun m!5122375 () Bool)

(assert (=> b!4435745 m!5122375))

(declare-fun m!5122377 () Bool)

(assert (=> b!4435745 m!5122377))

(declare-fun m!5122379 () Bool)

(assert (=> b!4435745 m!5122379))

(assert (=> b!4435745 m!5122377))

(declare-fun m!5122381 () Bool)

(assert (=> b!4435745 m!5122381))

(declare-fun m!5122383 () Bool)

(assert (=> b!4435745 m!5122383))

(assert (=> b!4435745 m!5122379))

(assert (=> b!4435745 m!5120439))

(assert (=> b!4435745 m!5122367))

(declare-fun m!5122389 () Bool)

(assert (=> b!4435745 m!5122389))

(declare-fun m!5122393 () Bool)

(assert (=> b!4435747 m!5122393))

(assert (=> b!4435743 m!5122379))

(assert (=> bm!308661 m!5120439))

(declare-fun m!5122397 () Bool)

(assert (=> bm!308661 m!5122397))

(declare-fun m!5122399 () Bool)

(assert (=> d!1346055 m!5122399))

(assert (=> d!1346055 m!5120581))

(assert (=> b!4434762 d!1346055))

(declare-fun b!4435759 () Bool)

(assert (=> b!4435759 false))

(declare-fun lt!1632964 () Unit!83085)

(declare-fun lt!1632967 () Unit!83085)

(assert (=> b!4435759 (= lt!1632964 lt!1632967)))

(assert (=> b!4435759 (containsKey!1194 (toList!3590 lt!1632170) (_1!28085 (h!55414 newBucket!194)))))

(assert (=> b!4435759 (= lt!1632967 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1632170) (_1!28085 (h!55414 newBucket!194))))))

(declare-fun e!2762038 () Unit!83085)

(declare-fun Unit!83350 () Unit!83085)

(assert (=> b!4435759 (= e!2762038 Unit!83350)))

(declare-fun b!4435760 () Bool)

(declare-fun e!2762040 () List!49834)

(assert (=> b!4435760 (= e!2762040 (getKeysList!274 (toList!3590 lt!1632170)))))

(declare-fun b!4435761 () Bool)

(declare-fun e!2762041 () Bool)

(assert (=> b!4435761 (= e!2762041 (contains!12257 (keys!17006 lt!1632170) (_1!28085 (h!55414 newBucket!194))))))

(declare-fun d!1346065 () Bool)

(declare-fun e!2762039 () Bool)

(assert (=> d!1346065 e!2762039))

(declare-fun res!1835747 () Bool)

(assert (=> d!1346065 (=> res!1835747 e!2762039)))

(declare-fun e!2762042 () Bool)

(assert (=> d!1346065 (= res!1835747 e!2762042)))

(declare-fun res!1835748 () Bool)

(assert (=> d!1346065 (=> (not res!1835748) (not e!2762042))))

(declare-fun lt!1632963 () Bool)

(assert (=> d!1346065 (= res!1835748 (not lt!1632963))))

(declare-fun lt!1632966 () Bool)

(assert (=> d!1346065 (= lt!1632963 lt!1632966)))

(declare-fun lt!1632970 () Unit!83085)

(declare-fun e!2762043 () Unit!83085)

(assert (=> d!1346065 (= lt!1632970 e!2762043)))

(declare-fun c!754971 () Bool)

(assert (=> d!1346065 (= c!754971 lt!1632966)))

(assert (=> d!1346065 (= lt!1632966 (containsKey!1194 (toList!3590 lt!1632170) (_1!28085 (h!55414 newBucket!194))))))

(assert (=> d!1346065 (= (contains!12250 lt!1632170 (_1!28085 (h!55414 newBucket!194))) lt!1632963)))

(declare-fun b!4435762 () Bool)

(declare-fun lt!1632969 () Unit!83085)

(assert (=> b!4435762 (= e!2762043 lt!1632969)))

(declare-fun lt!1632968 () Unit!83085)

(assert (=> b!4435762 (= lt!1632968 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1632170) (_1!28085 (h!55414 newBucket!194))))))

(assert (=> b!4435762 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632170) (_1!28085 (h!55414 newBucket!194))))))

(declare-fun lt!1632965 () Unit!83085)

(assert (=> b!4435762 (= lt!1632965 lt!1632968)))

(assert (=> b!4435762 (= lt!1632969 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1632170) (_1!28085 (h!55414 newBucket!194))))))

(declare-fun call!308671 () Bool)

(assert (=> b!4435762 call!308671))

(declare-fun bm!308666 () Bool)

(assert (=> bm!308666 (= call!308671 (contains!12257 e!2762040 (_1!28085 (h!55414 newBucket!194))))))

(declare-fun c!754972 () Bool)

(assert (=> bm!308666 (= c!754972 c!754971)))

(declare-fun b!4435763 () Bool)

(assert (=> b!4435763 (= e!2762039 e!2762041)))

(declare-fun res!1835746 () Bool)

(assert (=> b!4435763 (=> (not res!1835746) (not e!2762041))))

(assert (=> b!4435763 (= res!1835746 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632170) (_1!28085 (h!55414 newBucket!194)))))))

(declare-fun b!4435764 () Bool)

(assert (=> b!4435764 (= e!2762043 e!2762038)))

(declare-fun c!754973 () Bool)

(assert (=> b!4435764 (= c!754973 call!308671)))

(declare-fun b!4435765 () Bool)

(declare-fun Unit!83355 () Unit!83085)

(assert (=> b!4435765 (= e!2762038 Unit!83355)))

(declare-fun b!4435766 () Bool)

(assert (=> b!4435766 (= e!2762042 (not (contains!12257 (keys!17006 lt!1632170) (_1!28085 (h!55414 newBucket!194)))))))

(declare-fun b!4435767 () Bool)

(assert (=> b!4435767 (= e!2762040 (keys!17006 lt!1632170))))

(assert (= (and d!1346065 c!754971) b!4435762))

(assert (= (and d!1346065 (not c!754971)) b!4435764))

(assert (= (and b!4435764 c!754973) b!4435759))

(assert (= (and b!4435764 (not c!754973)) b!4435765))

(assert (= (or b!4435762 b!4435764) bm!308666))

(assert (= (and bm!308666 c!754972) b!4435760))

(assert (= (and bm!308666 (not c!754972)) b!4435767))

(assert (= (and d!1346065 res!1835748) b!4435766))

(assert (= (and d!1346065 (not res!1835747)) b!4435763))

(assert (= (and b!4435763 res!1835746) b!4435761))

(declare-fun m!5122409 () Bool)

(assert (=> b!4435759 m!5122409))

(declare-fun m!5122411 () Bool)

(assert (=> b!4435759 m!5122411))

(declare-fun m!5122413 () Bool)

(assert (=> b!4435766 m!5122413))

(assert (=> b!4435766 m!5122413))

(declare-fun m!5122415 () Bool)

(assert (=> b!4435766 m!5122415))

(assert (=> d!1346065 m!5122409))

(assert (=> b!4435761 m!5122413))

(assert (=> b!4435761 m!5122413))

(assert (=> b!4435761 m!5122415))

(assert (=> b!4435767 m!5122413))

(declare-fun m!5122417 () Bool)

(assert (=> b!4435762 m!5122417))

(declare-fun m!5122419 () Bool)

(assert (=> b!4435762 m!5122419))

(assert (=> b!4435762 m!5122419))

(declare-fun m!5122421 () Bool)

(assert (=> b!4435762 m!5122421))

(declare-fun m!5122423 () Bool)

(assert (=> b!4435762 m!5122423))

(declare-fun m!5122425 () Bool)

(assert (=> bm!308666 m!5122425))

(assert (=> b!4435763 m!5122419))

(assert (=> b!4435763 m!5122419))

(assert (=> b!4435763 m!5122421))

(declare-fun m!5122427 () Bool)

(assert (=> b!4435760 m!5122427))

(assert (=> b!4434762 d!1346065))

(declare-fun bs!762107 () Bool)

(declare-fun d!1346071 () Bool)

(assert (= bs!762107 (and d!1346071 d!1345865)))

(declare-fun lambda!156161 () Int)

(assert (=> bs!762107 (= (= lt!1632187 lt!1632668) (= lambda!156161 lambda!156124))))

(declare-fun bs!762108 () Bool)

(assert (= bs!762108 (and d!1346071 d!1345925)))

(assert (=> bs!762108 (= (= lt!1632187 lt!1631951) (= lambda!156161 lambda!156138))))

(declare-fun bs!762109 () Bool)

(assert (= bs!762109 (and d!1346071 b!4435279)))

(assert (=> bs!762109 (= (= lt!1632187 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156161 lambda!156105))))

(declare-fun bs!762110 () Bool)

(assert (= bs!762110 (and d!1346071 d!1345619)))

(assert (=> bs!762110 (not (= lambda!156161 lambda!156061))))

(declare-fun bs!762111 () Bool)

(assert (= bs!762111 (and d!1346071 d!1346055)))

(assert (=> bs!762111 (= (= lt!1632187 lt!1632926) (= lambda!156161 lambda!156159))))

(declare-fun bs!762112 () Bool)

(assert (= bs!762112 (and d!1346071 d!1345723)))

(assert (=> bs!762112 (= (= lt!1632187 lt!1632235) (= lambda!156161 lambda!156103))))

(declare-fun bs!762113 () Bool)

(assert (= bs!762113 (and d!1346071 d!1345883)))

(assert (=> bs!762113 (= (= lt!1632187 (+!1171 lt!1631951 lt!1631950)) (= lambda!156161 lambda!156130))))

(declare-fun bs!762114 () Bool)

(assert (= bs!762114 (and d!1346071 b!4434762)))

(assert (=> bs!762114 (= lambda!156161 lambda!156040)))

(declare-fun bs!762115 () Bool)

(assert (= bs!762115 (and d!1346071 b!4434801)))

(assert (=> bs!762115 (= (= lt!1632187 (+!1171 lt!1631951 lt!1631950)) (= lambda!156161 lambda!156052))))

(declare-fun bs!762116 () Bool)

(assert (= bs!762116 (and d!1346071 d!1345633)))

(assert (=> bs!762116 (= (= lt!1632187 lt!1632306) (= lambda!156161 lambda!156066))))

(declare-fun bs!762117 () Bool)

(assert (= bs!762117 (and d!1346071 b!4435103)))

(assert (=> bs!762117 (= (= lt!1632187 lt!1632437) (= lambda!156161 lambda!156093))))

(declare-fun bs!762118 () Bool)

(assert (= bs!762118 (and d!1346071 d!1345851)))

(assert (=> bs!762118 (= (= lt!1632187 lt!1632615) (= lambda!156161 lambda!156116))))

(declare-fun bs!762119 () Bool)

(assert (= bs!762119 (and d!1346071 b!4435337)))

(assert (=> bs!762119 (= (= lt!1632187 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156161 lambda!156108))))

(declare-fun bs!762120 () Bool)

(assert (= bs!762120 (and d!1346071 b!4435745)))

(assert (=> bs!762120 (= (= lt!1632187 lt!1632939) (= lambda!156161 lambda!156156))))

(declare-fun bs!762121 () Bool)

(assert (= bs!762121 (and d!1346071 b!4435336)))

(assert (=> bs!762121 (= (= lt!1632187 lt!1632598) (= lambda!156161 lambda!156110))))

(declare-fun bs!762122 () Bool)

(assert (= bs!762122 (and d!1346071 d!1345831)))

(assert (=> bs!762122 (= (= lt!1632187 lt!1632585) (= lambda!156161 lambda!156111))))

(declare-fun bs!762123 () Bool)

(assert (= bs!762123 (and d!1346071 b!4435746)))

(assert (=> bs!762123 (= (= lt!1632187 (+!1171 lt!1631951 (h!55414 newBucket!194))) (= lambda!156161 lambda!156152))))

(declare-fun bs!762125 () Bool)

(assert (= bs!762125 (and d!1346071 d!1345973)))

(assert (=> bs!762125 (= (= lt!1632187 lt!1632794) (= lambda!156161 lambda!156147))))

(declare-fun bs!762127 () Bool)

(assert (= bs!762127 (and d!1346071 b!4434800)))

(assert (=> bs!762127 (= (= lt!1632187 (+!1171 lt!1631951 lt!1631950)) (= lambda!156161 lambda!156053))))

(declare-fun bs!762129 () Bool)

(assert (= bs!762129 (and d!1346071 b!4435368)))

(assert (=> bs!762129 (= (= lt!1632187 lt!1632628) (= lambda!156161 lambda!156115))))

(declare-fun bs!762131 () Bool)

(assert (= bs!762131 (and d!1346071 b!4435280)))

(assert (=> bs!762131 (= (= lt!1632187 (+!1171 lt!1631951 (tuple2!49583 key!3717 newValue!93))) (= lambda!156161 lambda!156104))))

(declare-fun bs!762132 () Bool)

(assert (= bs!762132 (and d!1346071 d!1345535)))

(assert (=> bs!762132 (= (= lt!1632187 lt!1632174) (= lambda!156161 lambda!156041))))

(declare-fun bs!762135 () Bool)

(assert (= bs!762135 (and d!1346071 d!1345987)))

(assert (=> bs!762135 (= (= lt!1632187 lt!1632319) (= lambda!156161 lambda!156150))))

(assert (=> bs!762109 (= (= lt!1632187 lt!1632560) (= lambda!156161 lambda!156106))))

(assert (=> bs!762121 (= (= lt!1632187 (extractMap!862 (t!356774 (t!356774 (toList!3589 lm!1616))))) (= lambda!156161 lambda!156109))))

(declare-fun bs!762138 () Bool)

(assert (= bs!762138 (and d!1346071 b!4435572)))

(assert (=> bs!762138 (= (= lt!1632187 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156161 lambda!156143))))

(declare-fun bs!762140 () Bool)

(assert (= bs!762140 (and d!1346071 d!1345597)))

(assert (=> bs!762140 (= (= lt!1632187 lt!1632222) (= lambda!156161 lambda!156055))))

(declare-fun bs!762142 () Bool)

(assert (= bs!762142 (and d!1346071 b!4435420)))

(assert (=> bs!762142 (= (= lt!1632187 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156161 lambda!156121))))

(declare-fun bs!762144 () Bool)

(assert (= bs!762144 (and d!1346071 d!1345703)))

(assert (=> bs!762144 (= (= lt!1632187 lt!1632424) (= lambda!156161 lambda!156094))))

(declare-fun bs!762146 () Bool)

(assert (= bs!762146 (and d!1346071 b!4435104)))

(assert (=> bs!762146 (= (= lt!1632187 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156161 lambda!156089))))

(declare-fun bs!762148 () Bool)

(assert (= bs!762148 (and d!1346071 b!4434872)))

(assert (=> bs!762148 (= (= lt!1632187 lt!1631951) (= lambda!156161 lambda!156063))))

(assert (=> bs!762138 (= (= lt!1632187 lt!1632807) (= lambda!156161 lambda!156144))))

(declare-fun bs!762151 () Bool)

(assert (= bs!762151 (and d!1346071 b!4435421)))

(assert (=> bs!762151 (= (= lt!1632187 (extractMap!862 (t!356774 (toList!3589 lt!1631945)))) (= lambda!156161 lambda!156119))))

(assert (=> bs!762120 (= (= lt!1632187 (+!1171 lt!1631951 (h!55414 newBucket!194))) (= lambda!156161 lambda!156154))))

(declare-fun bs!762153 () Bool)

(assert (= bs!762153 (and d!1346071 b!4434871)))

(assert (=> bs!762153 (= (= lt!1632187 lt!1632319) (= lambda!156161 lambda!156065))))

(declare-fun bs!762155 () Bool)

(assert (= bs!762155 (and d!1346071 b!4435369)))

(assert (=> bs!762155 (= (= lt!1632187 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156161 lambda!156113))))

(assert (=> bs!762127 (= (= lt!1632187 lt!1632235) (= lambda!156161 lambda!156054))))

(assert (=> bs!762153 (= (= lt!1632187 lt!1631951) (= lambda!156161 lambda!156064))))

(assert (=> bs!762129 (= (= lt!1632187 (extractMap!862 (t!356774 (toList!3589 lm!1616)))) (= lambda!156161 lambda!156114))))

(assert (=> bs!762142 (= (= lt!1632187 lt!1632681) (= lambda!156161 lambda!156123))))

(assert (=> bs!762114 (= (= lt!1632187 lt!1631951) (= lambda!156161 lambda!156039))))

(declare-fun bs!762159 () Bool)

(assert (= bs!762159 (and d!1346071 b!4435573)))

(assert (=> bs!762159 (= (= lt!1632187 (+!1171 lt!1631951 (h!55414 lt!1631939))) (= lambda!156161 lambda!156142))))

(declare-fun bs!762161 () Bool)

(assert (= bs!762161 (and d!1346071 b!4434763)))

(assert (=> bs!762161 (= (= lt!1632187 lt!1631951) (= lambda!156161 lambda!156037))))

(declare-fun bs!762163 () Bool)

(assert (= bs!762163 (and d!1346071 d!1345799)))

(assert (=> bs!762163 (= (= lt!1632187 lt!1632547) (= lambda!156161 lambda!156107))))

(assert (=> bs!762117 (= (= lt!1632187 (+!1171 (+!1171 lt!1631951 lt!1631950) (h!55414 lt!1631939))) (= lambda!156161 lambda!156092))))

(assert (=> d!1346071 true))

(assert (=> d!1346071 (forall!9648 (toList!3590 lt!1631951) lambda!156161)))

(declare-fun lt!1632971 () Unit!83085)

(assert (=> d!1346071 (= lt!1632971 (choose!28122 lt!1631951 lt!1632187 (_1!28085 (h!55414 newBucket!194)) (_2!28085 (h!55414 newBucket!194))))))

(assert (=> d!1346071 (forall!9648 (toList!3590 (+!1171 lt!1631951 (tuple2!49583 (_1!28085 (h!55414 newBucket!194)) (_2!28085 (h!55414 newBucket!194))))) lambda!156161)))

(assert (=> d!1346071 (= (addForallContainsKeyThenBeforeAdding!195 lt!1631951 lt!1632187 (_1!28085 (h!55414 newBucket!194)) (_2!28085 (h!55414 newBucket!194))) lt!1632971)))

(declare-fun bs!762169 () Bool)

(assert (= bs!762169 d!1346071))

(declare-fun m!5122431 () Bool)

(assert (=> bs!762169 m!5122431))

(declare-fun m!5122433 () Bool)

(assert (=> bs!762169 m!5122433))

(declare-fun m!5122435 () Bool)

(assert (=> bs!762169 m!5122435))

(declare-fun m!5122437 () Bool)

(assert (=> bs!762169 m!5122437))

(assert (=> b!4434762 d!1346071))

(declare-fun d!1346075 () Bool)

(declare-fun res!1835758 () Bool)

(declare-fun e!2762053 () Bool)

(assert (=> d!1346075 (=> res!1835758 e!2762053)))

(assert (=> d!1346075 (= res!1835758 ((_ is Nil!49707) newBucket!194))))

(assert (=> d!1346075 (= (forall!9648 newBucket!194 lambda!156040) e!2762053)))

(declare-fun b!4435779 () Bool)

(declare-fun e!2762054 () Bool)

(assert (=> b!4435779 (= e!2762053 e!2762054)))

(declare-fun res!1835759 () Bool)

(assert (=> b!4435779 (=> (not res!1835759) (not e!2762054))))

(assert (=> b!4435779 (= res!1835759 (dynLambda!20887 lambda!156040 (h!55414 newBucket!194)))))

(declare-fun b!4435780 () Bool)

(assert (=> b!4435780 (= e!2762054 (forall!9648 (t!356773 newBucket!194) lambda!156040))))

(assert (= (and d!1346075 (not res!1835758)) b!4435779))

(assert (= (and b!4435779 res!1835759) b!4435780))

(declare-fun b_lambda!144427 () Bool)

(assert (=> (not b_lambda!144427) (not b!4435779)))

(assert (=> b!4435779 m!5122303))

(assert (=> b!4435780 m!5120455))

(assert (=> b!4434762 d!1346075))

(declare-fun b!4435781 () Bool)

(assert (=> b!4435781 false))

(declare-fun lt!1632994 () Unit!83085)

(declare-fun lt!1632997 () Unit!83085)

(assert (=> b!4435781 (= lt!1632994 lt!1632997)))

(assert (=> b!4435781 (containsKey!1194 (toList!3590 lt!1632187) (_1!28085 (h!55414 newBucket!194)))))

(assert (=> b!4435781 (= lt!1632997 (lemmaInGetKeysListThenContainsKey!272 (toList!3590 lt!1632187) (_1!28085 (h!55414 newBucket!194))))))

(declare-fun e!2762055 () Unit!83085)

(declare-fun Unit!83363 () Unit!83085)

(assert (=> b!4435781 (= e!2762055 Unit!83363)))

(declare-fun b!4435782 () Bool)

(declare-fun e!2762057 () List!49834)

(assert (=> b!4435782 (= e!2762057 (getKeysList!274 (toList!3590 lt!1632187)))))

(declare-fun b!4435783 () Bool)

(declare-fun e!2762058 () Bool)

(assert (=> b!4435783 (= e!2762058 (contains!12257 (keys!17006 lt!1632187) (_1!28085 (h!55414 newBucket!194))))))

(declare-fun d!1346077 () Bool)

(declare-fun e!2762056 () Bool)

(assert (=> d!1346077 e!2762056))

(declare-fun res!1835761 () Bool)

(assert (=> d!1346077 (=> res!1835761 e!2762056)))

(declare-fun e!2762059 () Bool)

(assert (=> d!1346077 (= res!1835761 e!2762059)))

(declare-fun res!1835762 () Bool)

(assert (=> d!1346077 (=> (not res!1835762) (not e!2762059))))

(declare-fun lt!1632993 () Bool)

(assert (=> d!1346077 (= res!1835762 (not lt!1632993))))

(declare-fun lt!1632996 () Bool)

(assert (=> d!1346077 (= lt!1632993 lt!1632996)))

(declare-fun lt!1633000 () Unit!83085)

(declare-fun e!2762060 () Unit!83085)

(assert (=> d!1346077 (= lt!1633000 e!2762060)))

(declare-fun c!754975 () Bool)

(assert (=> d!1346077 (= c!754975 lt!1632996)))

(assert (=> d!1346077 (= lt!1632996 (containsKey!1194 (toList!3590 lt!1632187) (_1!28085 (h!55414 newBucket!194))))))

(assert (=> d!1346077 (= (contains!12250 lt!1632187 (_1!28085 (h!55414 newBucket!194))) lt!1632993)))

(declare-fun b!4435784 () Bool)

(declare-fun lt!1632999 () Unit!83085)

(assert (=> b!4435784 (= e!2762060 lt!1632999)))

(declare-fun lt!1632998 () Unit!83085)

(assert (=> b!4435784 (= lt!1632998 (lemmaContainsKeyImpliesGetValueByKeyDefined!665 (toList!3590 lt!1632187) (_1!28085 (h!55414 newBucket!194))))))

(assert (=> b!4435784 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632187) (_1!28085 (h!55414 newBucket!194))))))

(declare-fun lt!1632995 () Unit!83085)

(assert (=> b!4435784 (= lt!1632995 lt!1632998)))

(assert (=> b!4435784 (= lt!1632999 (lemmaInListThenGetKeysListContains!271 (toList!3590 lt!1632187) (_1!28085 (h!55414 newBucket!194))))))

(declare-fun call!308675 () Bool)

(assert (=> b!4435784 call!308675))

(declare-fun bm!308670 () Bool)

(assert (=> bm!308670 (= call!308675 (contains!12257 e!2762057 (_1!28085 (h!55414 newBucket!194))))))

(declare-fun c!754976 () Bool)

(assert (=> bm!308670 (= c!754976 c!754975)))

(declare-fun b!4435785 () Bool)

(assert (=> b!4435785 (= e!2762056 e!2762058)))

(declare-fun res!1835760 () Bool)

(assert (=> b!4435785 (=> (not res!1835760) (not e!2762058))))

(assert (=> b!4435785 (= res!1835760 (isDefined!8062 (getValueByKey!755 (toList!3590 lt!1632187) (_1!28085 (h!55414 newBucket!194)))))))

(declare-fun b!4435786 () Bool)

(assert (=> b!4435786 (= e!2762060 e!2762055)))

(declare-fun c!754977 () Bool)

(assert (=> b!4435786 (= c!754977 call!308675)))

(declare-fun b!4435787 () Bool)

(declare-fun Unit!83364 () Unit!83085)

(assert (=> b!4435787 (= e!2762055 Unit!83364)))

(declare-fun b!4435788 () Bool)

(assert (=> b!4435788 (= e!2762059 (not (contains!12257 (keys!17006 lt!1632187) (_1!28085 (h!55414 newBucket!194)))))))

(declare-fun b!4435789 () Bool)

(assert (=> b!4435789 (= e!2762057 (keys!17006 lt!1632187))))

(assert (= (and d!1346077 c!754975) b!4435784))

(assert (= (and d!1346077 (not c!754975)) b!4435786))

(assert (= (and b!4435786 c!754977) b!4435781))

(assert (= (and b!4435786 (not c!754977)) b!4435787))

(assert (= (or b!4435784 b!4435786) bm!308670))

(assert (= (and bm!308670 c!754976) b!4435782))

(assert (= (and bm!308670 (not c!754976)) b!4435789))

(assert (= (and d!1346077 res!1835762) b!4435788))

(assert (= (and d!1346077 (not res!1835761)) b!4435785))

(assert (= (and b!4435785 res!1835760) b!4435783))

(declare-fun m!5122439 () Bool)

(assert (=> b!4435781 m!5122439))

(declare-fun m!5122441 () Bool)

(assert (=> b!4435781 m!5122441))

(declare-fun m!5122443 () Bool)

(assert (=> b!4435788 m!5122443))

(assert (=> b!4435788 m!5122443))

(declare-fun m!5122445 () Bool)

(assert (=> b!4435788 m!5122445))

(assert (=> d!1346077 m!5122439))

(assert (=> b!4435783 m!5122443))

(assert (=> b!4435783 m!5122443))

(assert (=> b!4435783 m!5122445))

(assert (=> b!4435789 m!5122443))

(declare-fun m!5122447 () Bool)

(assert (=> b!4435784 m!5122447))

(declare-fun m!5122449 () Bool)

(assert (=> b!4435784 m!5122449))

(assert (=> b!4435784 m!5122449))

(declare-fun m!5122451 () Bool)

(assert (=> b!4435784 m!5122451))

(declare-fun m!5122453 () Bool)

(assert (=> b!4435784 m!5122453))

(declare-fun m!5122455 () Bool)

(assert (=> bm!308670 m!5122455))

(assert (=> b!4435785 m!5122449))

(assert (=> b!4435785 m!5122449))

(assert (=> b!4435785 m!5122451))

(declare-fun m!5122457 () Bool)

(assert (=> b!4435782 m!5122457))

(assert (=> b!4434762 d!1346077))

(declare-fun d!1346079 () Bool)

(declare-fun res!1835763 () Bool)

(declare-fun e!2762061 () Bool)

(assert (=> d!1346079 (=> res!1835763 e!2762061)))

(assert (=> d!1346079 (= res!1835763 ((_ is Nil!49707) (t!356773 newBucket!194)))))

(assert (=> d!1346079 (= (forall!9648 (t!356773 newBucket!194) lambda!156040) e!2762061)))

(declare-fun b!4435790 () Bool)

(declare-fun e!2762062 () Bool)

(assert (=> b!4435790 (= e!2762061 e!2762062)))

(declare-fun res!1835764 () Bool)

(assert (=> b!4435790 (=> (not res!1835764) (not e!2762062))))

(assert (=> b!4435790 (= res!1835764 (dynLambda!20887 lambda!156040 (h!55414 (t!356773 newBucket!194))))))

(declare-fun b!4435791 () Bool)

(assert (=> b!4435791 (= e!2762062 (forall!9648 (t!356773 (t!356773 newBucket!194)) lambda!156040))))

(assert (= (and d!1346079 (not res!1835763)) b!4435790))

(assert (= (and b!4435790 res!1835764) b!4435791))

(declare-fun b_lambda!144429 () Bool)

(assert (=> (not b_lambda!144429) (not b!4435790)))

(declare-fun m!5122459 () Bool)

(assert (=> b!4435790 m!5122459))

(declare-fun m!5122461 () Bool)

(assert (=> b!4435791 m!5122461))

(assert (=> b!4434762 d!1346079))

(declare-fun d!1346081 () Bool)

(declare-fun res!1835765 () Bool)

(declare-fun e!2762063 () Bool)

(assert (=> d!1346081 (=> res!1835765 e!2762063)))

(assert (=> d!1346081 (= res!1835765 ((_ is Nil!49707) (toList!3590 lt!1632170)))))

(assert (=> d!1346081 (= (forall!9648 (toList!3590 lt!1632170) lambda!156040) e!2762063)))

(declare-fun b!4435792 () Bool)

(declare-fun e!2762064 () Bool)

(assert (=> b!4435792 (= e!2762063 e!2762064)))

(declare-fun res!1835766 () Bool)

(assert (=> b!4435792 (=> (not res!1835766) (not e!2762064))))

(assert (=> b!4435792 (= res!1835766 (dynLambda!20887 lambda!156040 (h!55414 (toList!3590 lt!1632170))))))

(declare-fun b!4435793 () Bool)

(assert (=> b!4435793 (= e!2762064 (forall!9648 (t!356773 (toList!3590 lt!1632170)) lambda!156040))))

(assert (= (and d!1346081 (not res!1835765)) b!4435792))

(assert (= (and b!4435792 res!1835766) b!4435793))

(declare-fun b_lambda!144431 () Bool)

(assert (=> (not b_lambda!144431) (not b!4435792)))

(declare-fun m!5122463 () Bool)

(assert (=> b!4435792 m!5122463))

(declare-fun m!5122465 () Bool)

(assert (=> b!4435793 m!5122465))

(assert (=> b!4434762 d!1346081))

(declare-fun d!1346083 () Bool)

(declare-fun res!1835767 () Bool)

(declare-fun e!2762065 () Bool)

(assert (=> d!1346083 (=> res!1835767 e!2762065)))

(assert (=> d!1346083 (= res!1835767 (not ((_ is Cons!49707) (_2!28086 (h!55415 (toList!3589 lt!1631945))))))))

(assert (=> d!1346083 (= (noDuplicateKeys!801 (_2!28086 (h!55415 (toList!3589 lt!1631945)))) e!2762065)))

(declare-fun b!4435794 () Bool)

(declare-fun e!2762066 () Bool)

(assert (=> b!4435794 (= e!2762065 e!2762066)))

(declare-fun res!1835768 () Bool)

(assert (=> b!4435794 (=> (not res!1835768) (not e!2762066))))

(assert (=> b!4435794 (= res!1835768 (not (containsKey!1192 (t!356773 (_2!28086 (h!55415 (toList!3589 lt!1631945)))) (_1!28085 (h!55414 (_2!28086 (h!55415 (toList!3589 lt!1631945))))))))))

(declare-fun b!4435795 () Bool)

(assert (=> b!4435795 (= e!2762066 (noDuplicateKeys!801 (t!356773 (_2!28086 (h!55415 (toList!3589 lt!1631945))))))))

(assert (= (and d!1346083 (not res!1835767)) b!4435794))

(assert (= (and b!4435794 res!1835768) b!4435795))

(declare-fun m!5122467 () Bool)

(assert (=> b!4435794 m!5122467))

(declare-fun m!5122469 () Bool)

(assert (=> b!4435795 m!5122469))

(assert (=> bs!761164 d!1346083))

(assert (=> b!4434864 d!1345693))

(declare-fun e!2762067 () Bool)

(declare-fun b!4435796 () Bool)

(declare-fun tp!1333783 () Bool)

(assert (=> b!4435796 (= e!2762067 (and tp_is_empty!26451 tp_is_empty!26449 tp!1333783))))

(assert (=> b!4434883 (= tp!1333782 e!2762067)))

(assert (= (and b!4434883 ((_ is Cons!49707) (t!356773 (t!356773 newBucket!194)))) b!4435796))

(declare-fun b!4435797 () Bool)

(declare-fun tp!1333784 () Bool)

(declare-fun e!2762068 () Bool)

(assert (=> b!4435797 (= e!2762068 (and tp_is_empty!26451 tp_is_empty!26449 tp!1333784))))

(assert (=> b!4434878 (= tp!1333778 e!2762068)))

(assert (= (and b!4434878 ((_ is Cons!49707) (_2!28086 (h!55415 (toList!3589 lm!1616))))) b!4435797))

(declare-fun b!4435798 () Bool)

(declare-fun e!2762069 () Bool)

(declare-fun tp!1333785 () Bool)

(declare-fun tp!1333786 () Bool)

(assert (=> b!4435798 (= e!2762069 (and tp!1333785 tp!1333786))))

(assert (=> b!4434878 (= tp!1333779 e!2762069)))

(assert (= (and b!4434878 ((_ is Cons!49708) (t!356774 (toList!3589 lm!1616)))) b!4435798))

(declare-fun b_lambda!144433 () Bool)

(assert (= b_lambda!144363 (or d!1345623 b_lambda!144433)))

(declare-fun bs!762200 () Bool)

(declare-fun d!1346085 () Bool)

(assert (= bs!762200 (and d!1346085 d!1345623)))

(assert (=> bs!762200 (= (dynLambda!20886 lambda!156062 (h!55415 (toList!3589 lm!1616))) (noDuplicateKeys!801 (_2!28086 (h!55415 (toList!3589 lm!1616)))))))

(assert (=> bs!762200 m!5120711))

(assert (=> b!4435332 d!1346085))

(declare-fun b_lambda!144435 () Bool)

(assert (= b_lambda!144333 (or b!4434800 b_lambda!144435)))

(declare-fun bs!762201 () Bool)

(declare-fun d!1346087 () Bool)

(assert (= bs!762201 (and d!1346087 b!4434800)))

(assert (=> bs!762201 (= (dynLambda!20887 lambda!156054 (h!55414 lt!1631939)) (contains!12250 lt!1632235 (_1!28085 (h!55414 lt!1631939))))))

(assert (=> bs!762201 m!5120557))

(assert (=> b!4435141 d!1346087))

(declare-fun b_lambda!144437 () Bool)

(assert (= b_lambda!144351 (or d!1345535 b_lambda!144437)))

(declare-fun bs!762202 () Bool)

(declare-fun d!1346089 () Bool)

(assert (= bs!762202 (and d!1346089 d!1345535)))

(assert (=> bs!762202 (= (dynLambda!20887 lambda!156041 (h!55414 (toList!3590 lt!1631951))) (contains!12250 lt!1632174 (_1!28085 (h!55414 (toList!3590 lt!1631951)))))))

(declare-fun m!5122471 () Bool)

(assert (=> bs!762202 m!5122471))

(assert (=> b!4435202 d!1346089))

(declare-fun b_lambda!144439 () Bool)

(assert (= b_lambda!144315 (or start!433412 b_lambda!144439)))

(declare-fun bs!762203 () Bool)

(declare-fun d!1346091 () Bool)

(assert (= bs!762203 (and d!1346091 start!433412)))

(assert (=> bs!762203 (= (dynLambda!20886 lambda!155964 (h!55415 (toList!3589 (+!1170 lm!1616 (tuple2!49585 hash!366 newBucket!194))))) (noDuplicateKeys!801 (_2!28086 (h!55415 (toList!3589 (+!1170 lm!1616 (tuple2!49585 hash!366 newBucket!194)))))))))

(declare-fun m!5122473 () Bool)

(assert (=> bs!762203 m!5122473))

(assert (=> b!4434898 d!1346091))

(declare-fun b_lambda!144441 () Bool)

(assert (= b_lambda!144357 (or d!1345633 b_lambda!144441)))

(declare-fun bs!762205 () Bool)

(declare-fun d!1346093 () Bool)

(assert (= bs!762205 (and d!1346093 d!1345633)))

(assert (=> bs!762205 (= (dynLambda!20887 lambda!156066 (h!55414 lt!1631939)) (contains!12250 lt!1632306 (_1!28085 (h!55414 lt!1631939))))))

(declare-fun m!5122475 () Bool)

(assert (=> bs!762205 m!5122475))

(assert (=> b!4435208 d!1346093))

(declare-fun b_lambda!144443 () Bool)

(assert (= b_lambda!144371 (or b!4434871 b_lambda!144443)))

(declare-fun bs!762207 () Bool)

(declare-fun d!1346095 () Bool)

(assert (= bs!762207 (and d!1346095 b!4434871)))

(assert (=> bs!762207 (= (dynLambda!20887 lambda!156065 (h!55414 (toList!3590 lt!1631951))) (contains!12250 lt!1632319 (_1!28085 (h!55414 (toList!3590 lt!1631951)))))))

(declare-fun m!5122477 () Bool)

(assert (=> bs!762207 m!5122477))

(assert (=> b!4435440 d!1346095))

(declare-fun b_lambda!144445 () Bool)

(assert (= b_lambda!144423 (or b!4434762 b_lambda!144445)))

(declare-fun bs!762210 () Bool)

(declare-fun d!1346097 () Bool)

(assert (= bs!762210 (and d!1346097 b!4434762)))

(assert (=> bs!762210 (= (dynLambda!20887 lambda!156040 (h!55414 newBucket!194)) (contains!12250 lt!1632187 (_1!28085 (h!55414 newBucket!194))))))

(assert (=> bs!762210 m!5120457))

(assert (=> d!1346049 d!1346097))

(declare-fun b_lambda!144447 () Bool)

(assert (= b_lambda!144365 (or start!433412 b_lambda!144447)))

(declare-fun bs!762212 () Bool)

(declare-fun d!1346099 () Bool)

(assert (= bs!762212 (and d!1346099 start!433412)))

(assert (=> bs!762212 (= (dynLambda!20886 lambda!155964 (h!55415 (t!356774 (toList!3589 lt!1631945)))) (noDuplicateKeys!801 (_2!28086 (h!55415 (t!356774 (toList!3589 lt!1631945))))))))

(declare-fun m!5122479 () Bool)

(assert (=> bs!762212 m!5122479))

(assert (=> b!4435364 d!1346099))

(declare-fun b_lambda!144449 () Bool)

(assert (= b_lambda!144429 (or b!4434762 b_lambda!144449)))

(declare-fun bs!762214 () Bool)

(declare-fun d!1346101 () Bool)

(assert (= bs!762214 (and d!1346101 b!4434762)))

(assert (=> bs!762214 (= (dynLambda!20887 lambda!156040 (h!55414 (t!356773 newBucket!194))) (contains!12250 lt!1632187 (_1!28085 (h!55414 (t!356773 newBucket!194)))))))

(declare-fun m!5122481 () Bool)

(assert (=> bs!762214 m!5122481))

(assert (=> b!4435790 d!1346101))

(declare-fun b_lambda!144451 () Bool)

(assert (= b_lambda!144355 (or d!1345619 b_lambda!144451)))

(declare-fun bs!762216 () Bool)

(declare-fun d!1346103 () Bool)

(assert (= bs!762216 (and d!1346103 d!1345619)))

(assert (=> bs!762216 (= (dynLambda!20887 lambda!156061 (h!55414 newBucket!194)) (= (hash!2224 hashF!1220 (_1!28085 (h!55414 newBucket!194))) hash!366))))

(declare-fun m!5122483 () Bool)

(assert (=> bs!762216 m!5122483))

(assert (=> b!4435206 d!1346103))

(declare-fun b_lambda!144453 () Bool)

(assert (= b_lambda!144427 (or b!4434762 b_lambda!144453)))

(assert (=> b!4435779 d!1346097))

(declare-fun b_lambda!144455 () Bool)

(assert (= b_lambda!144329 (or b!4434800 b_lambda!144455)))

(declare-fun bs!762218 () Bool)

(declare-fun d!1346105 () Bool)

(assert (= bs!762218 (and d!1346105 b!4434800)))

(assert (=> bs!762218 (= (dynLambda!20887 lambda!156054 (h!55414 (t!356773 lt!1631939))) (contains!12250 lt!1632235 (_1!28085 (h!55414 (t!356773 lt!1631939)))))))

(declare-fun m!5122485 () Bool)

(assert (=> bs!762218 m!5122485))

(assert (=> b!4435137 d!1346105))

(declare-fun b_lambda!144457 () Bool)

(assert (= b_lambda!144353 (or d!1345595 b_lambda!144457)))

(declare-fun bs!762221 () Bool)

(declare-fun d!1346107 () Bool)

(assert (= bs!762221 (and d!1346107 d!1345595)))

(assert (=> bs!762221 (= (dynLambda!20886 lambda!156051 (h!55415 (t!356774 (toList!3589 lm!1616)))) (noDuplicateKeys!801 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616))))))))

(assert (=> bs!762221 m!5121451))

(assert (=> b!4435204 d!1346107))

(declare-fun b_lambda!144459 () Bool)

(assert (= b_lambda!144431 (or b!4434762 b_lambda!144459)))

(declare-fun bs!762222 () Bool)

(declare-fun d!1346109 () Bool)

(assert (= bs!762222 (and d!1346109 b!4434762)))

(assert (=> bs!762222 (= (dynLambda!20887 lambda!156040 (h!55414 (toList!3590 lt!1632170))) (contains!12250 lt!1632187 (_1!28085 (h!55414 (toList!3590 lt!1632170)))))))

(declare-fun m!5122487 () Bool)

(assert (=> bs!762222 m!5122487))

(assert (=> b!4435792 d!1346109))

(declare-fun b_lambda!144461 () Bool)

(assert (= b_lambda!144327 (or b!4434800 b_lambda!144461)))

(declare-fun bs!762224 () Bool)

(declare-fun d!1346111 () Bool)

(assert (= bs!762224 (and d!1346111 b!4434800)))

(assert (=> bs!762224 (= (dynLambda!20887 lambda!156054 (h!55414 (toList!3590 (+!1171 lt!1631951 lt!1631950)))) (contains!12250 lt!1632235 (_1!28085 (h!55414 (toList!3590 (+!1171 lt!1631951 lt!1631950))))))))

(declare-fun m!5122489 () Bool)

(assert (=> bs!762224 m!5122489))

(assert (=> b!4435126 d!1346111))

(declare-fun b_lambda!144463 () Bool)

(assert (= b_lambda!144411 (or b!4434871 b_lambda!144463)))

(declare-fun bs!762226 () Bool)

(declare-fun d!1346113 () Bool)

(assert (= bs!762226 (and d!1346113 b!4434871)))

(assert (=> bs!762226 (= (dynLambda!20887 lambda!156065 (h!55414 (toList!3590 lt!1632302))) (contains!12250 lt!1632319 (_1!28085 (h!55414 (toList!3590 lt!1632302)))))))

(declare-fun m!5122491 () Bool)

(assert (=> bs!762226 m!5122491))

(assert (=> b!4435605 d!1346113))

(declare-fun b_lambda!144465 () Bool)

(assert (= b_lambda!144409 (or b!4434871 b_lambda!144465)))

(declare-fun bs!762228 () Bool)

(declare-fun d!1346115 () Bool)

(assert (= bs!762228 (and d!1346115 b!4434871)))

(assert (=> bs!762228 (= (dynLambda!20887 lambda!156065 (h!55414 lt!1631939)) (contains!12250 lt!1632319 (_1!28085 (h!55414 lt!1631939))))))

(assert (=> bs!762228 m!5120701))

(assert (=> d!1345991 d!1346115))

(declare-fun b_lambda!144467 () Bool)

(assert (= b_lambda!144397 (or b!4434871 b_lambda!144467)))

(declare-fun bs!762231 () Bool)

(declare-fun d!1346117 () Bool)

(assert (= bs!762231 (and d!1346117 b!4434871)))

(assert (=> bs!762231 (= (dynLambda!20887 lambda!156065 (h!55414 (t!356773 lt!1631939))) (contains!12250 lt!1632319 (_1!28085 (h!55414 (t!356773 lt!1631939)))))))

(declare-fun m!5122493 () Bool)

(assert (=> bs!762231 m!5122493))

(assert (=> b!4435548 d!1346117))

(declare-fun b_lambda!144469 () Bool)

(assert (= b_lambda!144381 (or d!1345603 b_lambda!144469)))

(declare-fun bs!762232 () Bool)

(declare-fun d!1346119 () Bool)

(assert (= bs!762232 (and d!1346119 d!1345603)))

(assert (=> bs!762232 (= (dynLambda!20886 lambda!156058 (h!55415 (toList!3589 lm!1616))) (allKeysSameHash!761 (_2!28086 (h!55415 (toList!3589 lm!1616))) (_1!28086 (h!55415 (toList!3589 lm!1616))) hashF!1220))))

(declare-fun m!5122495 () Bool)

(assert (=> bs!762232 m!5122495))

(assert (=> b!4435470 d!1346119))

(declare-fun b_lambda!144471 () Bool)

(assert (= b_lambda!144335 (or b!4434800 b_lambda!144471)))

(assert (=> d!1345725 d!1346087))

(declare-fun b_lambda!144473 () Bool)

(assert (= b_lambda!144317 (or start!433412 b_lambda!144473)))

(declare-fun bs!762235 () Bool)

(declare-fun d!1346121 () Bool)

(assert (= bs!762235 (and d!1346121 start!433412)))

(assert (=> bs!762235 (= (dynLambda!20886 lambda!155964 (h!55415 (t!356774 (toList!3589 lm!1616)))) (noDuplicateKeys!801 (_2!28086 (h!55415 (t!356774 (toList!3589 lm!1616))))))))

(assert (=> bs!762235 m!5121451))

(assert (=> b!4434964 d!1346121))

(declare-fun b_lambda!144475 () Bool)

(assert (= b_lambda!144399 (or b!4434871 b_lambda!144475)))

(assert (=> b!4435568 d!1346115))

(declare-fun b_lambda!144477 () Bool)

(assert (= b_lambda!144393 (or d!1345597 b_lambda!144477)))

(declare-fun bs!762237 () Bool)

(declare-fun d!1346123 () Bool)

(assert (= bs!762237 (and d!1346123 d!1345597)))

(assert (=> bs!762237 (= (dynLambda!20887 lambda!156055 (h!55414 (toList!3590 (+!1171 lt!1631951 lt!1631950)))) (contains!12250 lt!1632222 (_1!28085 (h!55414 (toList!3590 (+!1171 lt!1631951 lt!1631950))))))))

(declare-fun m!5122497 () Bool)

(assert (=> bs!762237 m!5122497))

(assert (=> b!4435538 d!1346123))

(declare-fun b_lambda!144479 () Bool)

(assert (= b_lambda!144347 (or d!1345633 b_lambda!144479)))

(declare-fun bs!762240 () Bool)

(declare-fun d!1346125 () Bool)

(assert (= bs!762240 (and d!1346125 d!1345633)))

(assert (=> bs!762240 (= (dynLambda!20887 lambda!156066 (h!55414 (toList!3590 lt!1631951))) (contains!12250 lt!1632306 (_1!28085 (h!55414 (toList!3590 lt!1631951)))))))

(declare-fun m!5122499 () Bool)

(assert (=> bs!762240 m!5122499))

(assert (=> b!4435196 d!1346125))

(declare-fun b_lambda!144481 () Bool)

(assert (= b_lambda!144375 (or b!4434762 b_lambda!144481)))

(declare-fun bs!762241 () Bool)

(declare-fun d!1346127 () Bool)

(assert (= bs!762241 (and d!1346127 b!4434762)))

(assert (=> bs!762241 (= (dynLambda!20887 lambda!156040 (h!55414 (toList!3590 lt!1631951))) (contains!12250 lt!1632187 (_1!28085 (h!55414 (toList!3590 lt!1631951)))))))

(declare-fun m!5122501 () Bool)

(assert (=> bs!762241 m!5122501))

(assert (=> b!4435462 d!1346127))

(declare-fun b_lambda!144483 () Bool)

(assert (= b_lambda!144349 (or d!1345597 b_lambda!144483)))

(declare-fun bs!762243 () Bool)

(declare-fun d!1346129 () Bool)

(assert (= bs!762243 (and d!1346129 d!1345597)))

(assert (=> bs!762243 (= (dynLambda!20887 lambda!156055 (h!55414 lt!1631939)) (contains!12250 lt!1632222 (_1!28085 (h!55414 lt!1631939))))))

(declare-fun m!5122503 () Bool)

(assert (=> bs!762243 m!5122503))

(assert (=> b!4435198 d!1346129))

(declare-fun b_lambda!144485 () Bool)

(assert (= b_lambda!144379 (or d!1345579 b_lambda!144485)))

(declare-fun bs!762245 () Bool)

(declare-fun d!1346131 () Bool)

(assert (= bs!762245 (and d!1346131 d!1345579)))

(assert (=> bs!762245 (= (dynLambda!20886 lambda!156050 (h!55415 (toList!3589 lt!1631945))) (noDuplicateKeys!801 (_2!28086 (h!55415 (toList!3589 lt!1631945)))))))

(assert (=> bs!762245 m!5120709))

(assert (=> b!4435468 d!1346131))

(declare-fun b_lambda!144487 () Bool)

(assert (= b_lambda!144331 (or b!4434800 b_lambda!144487)))

(declare-fun bs!762246 () Bool)

(declare-fun d!1346133 () Bool)

(assert (= bs!762246 (and d!1346133 b!4434800)))

(assert (=> bs!762246 (= (dynLambda!20887 lambda!156054 (h!55414 (toList!3590 lt!1632218))) (contains!12250 lt!1632235 (_1!28085 (h!55414 (toList!3590 lt!1632218)))))))

(declare-fun m!5122505 () Bool)

(assert (=> bs!762246 m!5122505))

(assert (=> b!4435139 d!1346133))

(declare-fun b_lambda!144489 () Bool)

(assert (= b_lambda!144341 (or d!1345535 b_lambda!144489)))

(declare-fun bs!762248 () Bool)

(declare-fun d!1346135 () Bool)

(assert (= bs!762248 (and d!1346135 d!1345535)))

(assert (=> bs!762248 (= (dynLambda!20887 lambda!156041 (h!55414 newBucket!194)) (contains!12250 lt!1632174 (_1!28085 (h!55414 newBucket!194))))))

(declare-fun m!5122507 () Bool)

(assert (=> bs!762248 m!5122507))

(assert (=> b!4435180 d!1346135))

(check-sat (not b_lambda!144485) (not d!1345795) (not b!4435517) (not b!4435212) (not b!4435798) (not b_lambda!144479) (not bs!762243) (not b!4435226) (not b!4435207) (not b!4434988) (not d!1345701) (not b_lambda!144439) (not b!4434905) (not b!4435248) (not b!4435551) (not b!4435034) (not b!4434967) (not b!4435338) (not b!4435762) (not d!1345729) (not d!1345693) (not b!4435094) (not d!1346071) (not b!4435235) (not b!4434914) (not bm!308633) (not d!1345893) (not b!4435784) (not b!4435360) (not b!4435203) (not b!4435760) (not b!4435191) (not b!4435485) (not b!4435209) (not b!4435175) (not b!4435562) (not b!4435507) (not b!4435418) (not b!4435077) (not b!4435441) (not b!4435029) (not d!1345883) (not b!4435239) (not d!1345973) (not b!4435740) tp_is_empty!26451 (not b!4435189) (not d!1345687) (not bm!308631) (not b_lambda!144477) (not b!4435471) (not b!4434911) (not b!4435026) (not b!4434956) (not b!4435794) (not b!4435557) (not b_lambda!144313) (not b_lambda!144311) (not b!4435076) (not b!4435155) (not b!4435278) (not b!4435782) (not b!4434896) (not b!4435563) (not b!4435732) (not b!4435423) (not b!4435136) (not d!1346055) (not b!4435370) (not b!4435127) (not b!4435788) (not b!4435547) (not b!4435609) (not bm!308593) (not bm!308580) (not d!1345723) (not b!4435523) (not b_lambda!144473) (not bm!308571) (not b!4435125) (not b!4435419) (not b!4435336) (not d!1345935) (not b!4435574) (not b_lambda!144337) (not b!4434957) (not b!4434897) (not b!4435767) (not b!4435281) (not d!1345725) (not b!4435334) (not b!4434962) (not bm!308662) (not b!4435027) (not b!4434973) (not b!4435766) (not b_lambda!144467) (not bs!762210) (not bs!762202) (not bs!762218) (not b!4434921) (not d!1345887) (not b!4435140) (not d!1345649) (not b!4435054) (not bm!308657) (not b!4435366) (not b_lambda!144447) (not b!4435245) (not b!4434966) (not d!1345901) (not b!4434906) (not b!4434910) (not b!4435747) (not b!4435469) (not b_lambda!144481) (not b!4435607) (not b!4435099) (not bm!308635) (not d!1345885) (not b!4434958) (not b!4435234) (not b_lambda!144437) (not bm!308595) (not b!4435131) (not b!4434901) (not b!4435128) (not b!4435242) (not b!4435101) (not b!4434963) (not d!1345967) (not b_lambda!144343) (not b!4435488) (not d!1345929) (not b!4434920) (not b!4435195) (not b!4435075) (not d!1346003) (not d!1345899) (not b!4435552) (not b!4435199) (not b!4435215) (not bs!762222) (not d!1345877) (not b!4435492) (not b_lambda!144451) (not b!4435454) (not bs!762212) (not b!4435465) (not bs!762214) (not b!4435640) (not b!4435129) (not b_lambda!144443) (not d!1345703) (not b!4435549) (not bs!762237) (not d!1345657) (not d!1345865) (not b!4435522) (not d!1345939) (not b!4434900) (not bs!762232) tp_is_empty!26449 (not bm!308660) (not bs!762248) (not b!4435797) (not d!1345823) (not b!4435561) (not bs!762216) (not b!4435367) (not b!4435167) (not b!4435783) (not b!4435130) (not d!1346077) (not b_lambda!144433) (not bs!762221) (not d!1345999) (not bs!762203) (not bs!762207) (not d!1346049) (not bm!308632) (not b!4435558) (not b!4435096) (not b!4435219) (not b!4435566) (not d!1345925) (not d!1345995) (not b!4435368) (not bm!308605) (not d!1346051) (not b_lambda!144489) (not b_lambda!144309) (not b!4435093) (not bm!308628) (not bs!762235) (not d!1345771) (not b_lambda!144453) (not b_lambda!144483) (not bm!308570) (not bm!308568) (not b!4435604) (not d!1345905) (not bm!308573) (not bs!762246) (not b!4435512) (not b!4435240) (not d!1345651) (not b!4435796) (not b!4435229) (not d!1345715) (not b!4435193) (not b!4435095) (not b!4435515) (not b_lambda!144475) (not b_lambda!144487) (not b_lambda!144449) (not b_lambda!144459) (not b!4435742) (not d!1345739) (not b!4435539) (not d!1345917) (not b!4434899) (not b!4435333) (not b_lambda!144319) (not b_lambda!144345) (not b!4435572) (not b!4435559) (not b!4435569) (not b!4435183) (not d!1345781) (not b!4435103) (not b!4435325) (not b!4435461) (not b!4435506) (not b!4435181) (not b!4434951) (not b!4435335) (not b!4435781) (not b!4434907) (not b!4435201) (not bm!308625) (not d!1345797) (not b!4435172) (not bs!762226) (not b!4435197) (not b_lambda!144471) (not b!4435213) (not b!4435363) (not b!4435422) (not b!4435518) (not bm!308620) (not b!4435793) (not bs!762231) (not bm!308670) (not b!4435225) (not d!1345655) (not b!4435785) (not bm!308572) (not b!4435603) (not b_lambda!144457) (not b!4434955) (not b!4435458) (not b!4435567) (not b!4434965) (not b!4435165) (not bm!308574) (not b!4435439) (not bs!762224) (not b!4435064) (not b!4435105) (not b!4435639) (not b!4435491) (not bs!762241) (not b_lambda!144339) (not b!4435232) (not d!1346065) (not d!1345827) (not d!1345711) (not b!4435211) (not b!4435247) (not b!4435759) (not b_lambda!144445) (not b!4435327) (not b_lambda!144463) (not bm!308603) (not d!1346021) (not b!4435091) (not b!4435763) (not d!1345683) (not b!4435100) (not d!1345987) (not bm!308666) (not b!4435326) (not bs!762200) (not b!4435560) (not b!4435743) (not b!4435516) (not d!1345851) (not bm!308661) (not b!4435745) (not b!4435780) (not b_lambda!144377) (not b!4435744) (not b!4435102) (not b!4435200) (not d!1345991) (not b!4435606) (not b!4435451) (not b!4435177) (not d!1345647) (not b!4435420) (not d!1345799) (not b_lambda!144435) (not bm!308618) (not b!4435223) (not bm!308584) (not b!4435365) (not bm!308594) (not bm!308630) (not d!1345897) (not b!4435233) (not d!1345669) (not b!4435487) (not bs!762201) (not b!4435214) (not bm!308602) (not d!1345969) (not d!1345825) (not b!4435092) (not bm!308582) (not b!4435220) (not d!1345761) (not b!4435138) (not bm!308600) (not b!4435791) (not b!4435504) (not b_lambda!144461) (not b!4435553) (not b!4435142) (not b!4435277) (not b!4435031) (not b!4435741) (not bs!762240) (not d!1345745) (not bs!762245) (not b!4435216) (not b!4435486) (not b!4435511) (not b!4435761) (not b!4435571) (not b_lambda!144441) (not d!1345871) (not b!4435173) (not b_lambda!144455) (not b!4435463) (not b!4435733) (not b!4435602) (not bm!308604) (not b!4435135) (not b!4435612) (not b!4434894) (not d!1345789) (not bs!762228) (not b!4435124) (not b!4434904) (not bs!762205) (not b!4435735) (not d!1345787) (not b!4435279) (not b!4434952) (not b!4435430) (not d!1345749) (not d!1345831) (not bm!308578) (not b!4435132) (not b_lambda!144469) (not b!4435435) (not bm!308619) (not b!4435795) (not b!4435554) (not b_lambda!144465) (not d!1345845) (not b!4435550) (not b!4435205) (not bm!308601) (not d!1345785) (not bm!308634) (not b!4435484) (not b!4435789) (not b!4434903) (not b!4435228) (not b!4435570) (not bm!308558))
(check-sat)
