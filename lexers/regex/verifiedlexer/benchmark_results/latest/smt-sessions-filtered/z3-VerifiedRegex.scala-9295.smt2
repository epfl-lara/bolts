; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493314 () Bool)

(assert start!493314)

(declare-fun b!4791652 () Bool)

(declare-fun res!2036498 () Bool)

(declare-fun e!2991786 () Bool)

(assert (=> b!4791652 (=> (not res!2036498) (not e!2991786))))

(declare-datatypes ((K!15764 0))(
  ( (K!15765 (val!20917 Int)) )
))
(declare-datatypes ((V!16010 0))(
  ( (V!16011 (val!20918 Int)) )
))
(declare-datatypes ((tuple2!56808 0))(
  ( (tuple2!56809 (_1!31698 K!15764) (_2!31698 V!16010)) )
))
(declare-datatypes ((List!54315 0))(
  ( (Nil!54191) (Cons!54191 (h!60615 tuple2!56808) (t!361765 List!54315)) )
))
(declare-datatypes ((tuple2!56810 0))(
  ( (tuple2!56811 (_1!31699 (_ BitVec 64)) (_2!31699 List!54315)) )
))
(declare-datatypes ((List!54316 0))(
  ( (Nil!54192) (Cons!54192 (h!60616 tuple2!56810) (t!361766 List!54316)) )
))
(declare-datatypes ((ListLongMap!5321 0))(
  ( (ListLongMap!5322 (toList!6899 List!54316)) )
))
(declare-fun lm!2473 () ListLongMap!5321)

(declare-datatypes ((Hashable!6910 0))(
  ( (HashableExt!6909 (__x!32933 Int)) )
))
(declare-fun hashF!1559 () Hashable!6910)

(declare-fun allKeysSameHashInMap!2315 (ListLongMap!5321 Hashable!6910) Bool)

(assert (=> b!4791652 (= res!2036498 (allKeysSameHashInMap!2315 lm!2473 hashF!1559))))

(declare-fun b!4791653 () Bool)

(declare-fun e!2991787 () Bool)

(assert (=> b!4791653 (= e!2991786 (not e!2991787))))

(declare-fun res!2036497 () Bool)

(assert (=> b!4791653 (=> res!2036497 e!2991787)))

(declare-fun value!3111 () V!16010)

(declare-fun key!5896 () K!15764)

(declare-fun getValue!106 (List!54316 K!15764) V!16010)

(assert (=> b!4791653 (= res!2036497 (not (= (getValue!106 (toList!6899 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!560 (List!54316 K!15764) Bool)

(assert (=> b!4791653 (containsKeyBiggerList!560 (toList!6899 lm!2473) key!5896)))

(declare-datatypes ((Unit!139898 0))(
  ( (Unit!139899) )
))
(declare-fun lt!1950785 () Unit!139898)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!300 (ListLongMap!5321 K!15764 Hashable!6910) Unit!139898)

(assert (=> b!4791653 (= lt!1950785 (lemmaInLongMapThenContainsKeyBiggerList!300 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2991788 () Bool)

(assert (=> b!4791653 e!2991788))

(declare-fun res!2036500 () Bool)

(assert (=> b!4791653 (=> (not res!2036500) (not e!2991788))))

(declare-fun lt!1950786 () (_ BitVec 64))

(declare-fun contains!17798 (ListLongMap!5321 (_ BitVec 64)) Bool)

(assert (=> b!4791653 (= res!2036500 (contains!17798 lm!2473 lt!1950786))))

(declare-fun hash!4942 (Hashable!6910 K!15764) (_ BitVec 64))

(assert (=> b!4791653 (= lt!1950786 (hash!4942 hashF!1559 key!5896))))

(declare-fun lt!1950787 () Unit!139898)

(declare-fun lemmaInGenericMapThenInLongMap!314 (ListLongMap!5321 K!15764 Hashable!6910) Unit!139898)

(assert (=> b!4791653 (= lt!1950787 (lemmaInGenericMapThenInLongMap!314 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791654 () Bool)

(declare-fun e!2991785 () Bool)

(declare-fun tp!1357960 () Bool)

(assert (=> b!4791654 (= e!2991785 tp!1357960)))

(declare-fun res!2036499 () Bool)

(assert (=> start!493314 (=> (not res!2036499) (not e!2991786))))

(declare-fun lambda!230395 () Int)

(declare-fun forall!12235 (List!54316 Int) Bool)

(assert (=> start!493314 (= res!2036499 (forall!12235 (toList!6899 lm!2473) lambda!230395))))

(assert (=> start!493314 e!2991786))

(declare-fun inv!69790 (ListLongMap!5321) Bool)

(assert (=> start!493314 (and (inv!69790 lm!2473) e!2991785)))

(assert (=> start!493314 true))

(declare-fun tp_is_empty!33521 () Bool)

(assert (=> start!493314 tp_is_empty!33521))

(declare-fun tp_is_empty!33523 () Bool)

(assert (=> start!493314 tp_is_empty!33523))

(declare-fun b!4791655 () Bool)

(assert (=> b!4791655 (= e!2991787 (forall!12235 (toList!6899 lm!2473) lambda!230395))))

(declare-fun b!4791656 () Bool)

(declare-datatypes ((Option!13077 0))(
  ( (None!13076) (Some!13076 (v!48355 tuple2!56808)) )
))
(declare-fun isDefined!10219 (Option!13077) Bool)

(declare-fun getPair!882 (List!54315 K!15764) Option!13077)

(declare-fun apply!12979 (ListLongMap!5321 (_ BitVec 64)) List!54315)

(assert (=> b!4791656 (= e!2991788 (isDefined!10219 (getPair!882 (apply!12979 lm!2473 lt!1950786) key!5896)))))

(declare-fun b!4791657 () Bool)

(declare-fun res!2036496 () Bool)

(assert (=> b!4791657 (=> (not res!2036496) (not e!2991786))))

(declare-datatypes ((ListMap!6371 0))(
  ( (ListMap!6372 (toList!6900 List!54315)) )
))
(declare-fun contains!17799 (ListMap!6371 K!15764) Bool)

(declare-fun extractMap!2437 (List!54316) ListMap!6371)

(assert (=> b!4791657 (= res!2036496 (contains!17799 (extractMap!2437 (toList!6899 lm!2473)) key!5896))))

(declare-fun b!4791658 () Bool)

(declare-fun res!2036495 () Bool)

(assert (=> b!4791658 (=> res!2036495 e!2991787)))

(get-info :version)

(assert (=> b!4791658 (= res!2036495 ((_ is Cons!54192) (toList!6899 lm!2473)))))

(assert (= (and start!493314 res!2036499) b!4791652))

(assert (= (and b!4791652 res!2036498) b!4791657))

(assert (= (and b!4791657 res!2036496) b!4791653))

(assert (= (and b!4791653 res!2036500) b!4791656))

(assert (= (and b!4791653 (not res!2036497)) b!4791658))

(assert (= (and b!4791658 (not res!2036495)) b!4791655))

(assert (= start!493314 b!4791654))

(declare-fun m!5772234 () Bool)

(assert (=> b!4791653 m!5772234))

(declare-fun m!5772236 () Bool)

(assert (=> b!4791653 m!5772236))

(declare-fun m!5772238 () Bool)

(assert (=> b!4791653 m!5772238))

(declare-fun m!5772240 () Bool)

(assert (=> b!4791653 m!5772240))

(declare-fun m!5772242 () Bool)

(assert (=> b!4791653 m!5772242))

(declare-fun m!5772244 () Bool)

(assert (=> b!4791653 m!5772244))

(declare-fun m!5772246 () Bool)

(assert (=> b!4791652 m!5772246))

(declare-fun m!5772248 () Bool)

(assert (=> b!4791657 m!5772248))

(assert (=> b!4791657 m!5772248))

(declare-fun m!5772250 () Bool)

(assert (=> b!4791657 m!5772250))

(declare-fun m!5772252 () Bool)

(assert (=> b!4791655 m!5772252))

(declare-fun m!5772254 () Bool)

(assert (=> b!4791656 m!5772254))

(assert (=> b!4791656 m!5772254))

(declare-fun m!5772256 () Bool)

(assert (=> b!4791656 m!5772256))

(assert (=> b!4791656 m!5772256))

(declare-fun m!5772258 () Bool)

(assert (=> b!4791656 m!5772258))

(assert (=> start!493314 m!5772252))

(declare-fun m!5772260 () Bool)

(assert (=> start!493314 m!5772260))

(check-sat tp_is_empty!33523 (not b!4791657) (not b!4791656) (not b!4791653) tp_is_empty!33521 (not b!4791654) (not b!4791652) (not start!493314) (not b!4791655))
(check-sat)
