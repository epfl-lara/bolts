; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!492810 () Bool)

(assert start!492810)

(declare-fun b!4788982 () Bool)

(declare-fun e!2990136 () Bool)

(declare-fun e!2990138 () Bool)

(assert (=> b!4788982 (= e!2990136 e!2990138)))

(declare-fun res!2034852 () Bool)

(assert (=> b!4788982 (=> res!2034852 e!2990138)))

(declare-datatypes ((K!15694 0))(
  ( (K!15695 (val!20861 Int)) )
))
(declare-datatypes ((V!15940 0))(
  ( (V!15941 (val!20862 Int)) )
))
(declare-datatypes ((tuple2!56696 0))(
  ( (tuple2!56697 (_1!31642 K!15694) (_2!31642 V!15940)) )
))
(declare-datatypes ((List!54253 0))(
  ( (Nil!54129) (Cons!54129 (h!60553 tuple2!56696) (t!361703 List!54253)) )
))
(declare-datatypes ((tuple2!56698 0))(
  ( (tuple2!56699 (_1!31643 (_ BitVec 64)) (_2!31643 List!54253)) )
))
(declare-datatypes ((List!54254 0))(
  ( (Nil!54130) (Cons!54130 (h!60554 tuple2!56698) (t!361704 List!54254)) )
))
(declare-datatypes ((ListLongMap!5265 0))(
  ( (ListLongMap!5266 (toList!6843 List!54254)) )
))
(declare-fun lt!1949012 () ListLongMap!5265)

(declare-fun lt!1949010 () (_ BitVec 64))

(declare-fun contains!17724 (ListLongMap!5265 (_ BitVec 64)) Bool)

(assert (=> b!4788982 (= res!2034852 (contains!17724 lt!1949012 lt!1949010))))

(declare-fun lm!2473 () ListLongMap!5265)

(declare-fun tail!9231 (ListLongMap!5265) ListLongMap!5265)

(assert (=> b!4788982 (= lt!1949012 (tail!9231 lm!2473))))

(declare-fun b!4788983 () Bool)

(declare-fun res!2034858 () Bool)

(declare-fun e!2990139 () Bool)

(assert (=> b!4788983 (=> (not res!2034858) (not e!2990139))))

(declare-datatypes ((Hashable!6882 0))(
  ( (HashableExt!6881 (__x!32905 Int)) )
))
(declare-fun hashF!1559 () Hashable!6882)

(declare-fun allKeysSameHashInMap!2287 (ListLongMap!5265 Hashable!6882) Bool)

(assert (=> b!4788983 (= res!2034858 (allKeysSameHashInMap!2287 lm!2473 hashF!1559))))

(declare-fun b!4788984 () Bool)

(declare-fun e!2990137 () Bool)

(declare-fun tp!1357820 () Bool)

(assert (=> b!4788984 (= e!2990137 tp!1357820)))

(declare-fun b!4788985 () Bool)

(assert (=> b!4788985 (= e!2990138 true)))

(declare-fun b!4788986 () Bool)

(declare-fun res!2034856 () Bool)

(assert (=> b!4788986 (=> res!2034856 e!2990138)))

(assert (=> b!4788986 (= res!2034856 (not (allKeysSameHashInMap!2287 lt!1949012 hashF!1559)))))

(declare-fun b!4788988 () Bool)

(declare-fun res!2034855 () Bool)

(assert (=> b!4788988 (=> (not res!2034855) (not e!2990139))))

(declare-fun key!5896 () K!15694)

(declare-datatypes ((ListMap!6315 0))(
  ( (ListMap!6316 (toList!6844 List!54253)) )
))
(declare-fun contains!17725 (ListMap!6315 K!15694) Bool)

(declare-fun extractMap!2409 (List!54254) ListMap!6315)

(assert (=> b!4788988 (= res!2034855 (contains!17725 (extractMap!2409 (toList!6843 lm!2473)) key!5896))))

(declare-fun b!4788989 () Bool)

(declare-fun res!2034853 () Bool)

(assert (=> b!4788989 (=> res!2034853 e!2990138)))

(declare-fun lambda!229877 () Int)

(declare-fun forall!12199 (List!54254 Int) Bool)

(assert (=> b!4788989 (= res!2034853 (not (forall!12199 (toList!6843 lt!1949012) lambda!229877)))))

(declare-fun b!4788990 () Bool)

(declare-fun res!2034854 () Bool)

(assert (=> b!4788990 (=> res!2034854 e!2990136)))

(get-info :version)

(assert (=> b!4788990 (= res!2034854 (not ((_ is Cons!54130) (toList!6843 lm!2473))))))

(declare-fun b!4788991 () Bool)

(assert (=> b!4788991 (= e!2990139 (not e!2990136))))

(declare-fun res!2034857 () Bool)

(assert (=> b!4788991 (=> res!2034857 e!2990136)))

(declare-fun value!3111 () V!15940)

(declare-fun getValue!78 (List!54254 K!15694) V!15940)

(assert (=> b!4788991 (= res!2034857 (not (= (getValue!78 (toList!6843 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!532 (List!54254 K!15694) Bool)

(assert (=> b!4788991 (containsKeyBiggerList!532 (toList!6843 lm!2473) key!5896)))

(declare-datatypes ((Unit!139668 0))(
  ( (Unit!139669) )
))
(declare-fun lt!1949011 () Unit!139668)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!272 (ListLongMap!5265 K!15694 Hashable!6882) Unit!139668)

(assert (=> b!4788991 (= lt!1949011 (lemmaInLongMapThenContainsKeyBiggerList!272 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2990140 () Bool)

(assert (=> b!4788991 e!2990140))

(declare-fun res!2034851 () Bool)

(assert (=> b!4788991 (=> (not res!2034851) (not e!2990140))))

(assert (=> b!4788991 (= res!2034851 (contains!17724 lm!2473 lt!1949010))))

(declare-fun hash!4908 (Hashable!6882 K!15694) (_ BitVec 64))

(assert (=> b!4788991 (= lt!1949010 (hash!4908 hashF!1559 key!5896))))

(declare-fun lt!1949013 () Unit!139668)

(declare-fun lemmaInGenericMapThenInLongMap!286 (ListLongMap!5265 K!15694 Hashable!6882) Unit!139668)

(assert (=> b!4788991 (= lt!1949013 (lemmaInGenericMapThenInLongMap!286 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4788992 () Bool)

(declare-fun res!2034859 () Bool)

(assert (=> b!4788992 (=> res!2034859 e!2990136)))

(declare-fun containsKey!3900 (List!54253 K!15694) Bool)

(assert (=> b!4788992 (= res!2034859 (containsKey!3900 (_2!31643 (h!60554 (toList!6843 lm!2473))) key!5896))))

(declare-fun res!2034860 () Bool)

(assert (=> start!492810 (=> (not res!2034860) (not e!2990139))))

(assert (=> start!492810 (= res!2034860 (forall!12199 (toList!6843 lm!2473) lambda!229877))))

(assert (=> start!492810 e!2990139))

(declare-fun inv!69720 (ListLongMap!5265) Bool)

(assert (=> start!492810 (and (inv!69720 lm!2473) e!2990137)))

(assert (=> start!492810 true))

(declare-fun tp_is_empty!33409 () Bool)

(assert (=> start!492810 tp_is_empty!33409))

(declare-fun tp_is_empty!33411 () Bool)

(assert (=> start!492810 tp_is_empty!33411))

(declare-fun b!4788987 () Bool)

(declare-datatypes ((Option!13037 0))(
  ( (None!13036) (Some!13036 (v!48307 tuple2!56696)) )
))
(declare-fun isDefined!10179 (Option!13037) Bool)

(declare-fun getPair!854 (List!54253 K!15694) Option!13037)

(declare-fun apply!12943 (ListLongMap!5265 (_ BitVec 64)) List!54253)

(assert (=> b!4788987 (= e!2990140 (isDefined!10179 (getPair!854 (apply!12943 lm!2473 lt!1949010) key!5896)))))

(assert (= (and start!492810 res!2034860) b!4788983))

(assert (= (and b!4788983 res!2034858) b!4788988))

(assert (= (and b!4788988 res!2034855) b!4788991))

(assert (= (and b!4788991 res!2034851) b!4788987))

(assert (= (and b!4788991 (not res!2034857)) b!4788990))

(assert (= (and b!4788990 (not res!2034854)) b!4788992))

(assert (= (and b!4788992 (not res!2034859)) b!4788982))

(assert (= (and b!4788982 (not res!2034852)) b!4788989))

(assert (= (and b!4788989 (not res!2034853)) b!4788986))

(assert (= (and b!4788986 (not res!2034856)) b!4788985))

(assert (= start!492810 b!4788984))

(declare-fun m!5768504 () Bool)

(assert (=> b!4788983 m!5768504))

(declare-fun m!5768506 () Bool)

(assert (=> b!4788987 m!5768506))

(assert (=> b!4788987 m!5768506))

(declare-fun m!5768508 () Bool)

(assert (=> b!4788987 m!5768508))

(assert (=> b!4788987 m!5768508))

(declare-fun m!5768510 () Bool)

(assert (=> b!4788987 m!5768510))

(declare-fun m!5768512 () Bool)

(assert (=> b!4788991 m!5768512))

(declare-fun m!5768514 () Bool)

(assert (=> b!4788991 m!5768514))

(declare-fun m!5768516 () Bool)

(assert (=> b!4788991 m!5768516))

(declare-fun m!5768518 () Bool)

(assert (=> b!4788991 m!5768518))

(declare-fun m!5768520 () Bool)

(assert (=> b!4788991 m!5768520))

(declare-fun m!5768522 () Bool)

(assert (=> b!4788991 m!5768522))

(declare-fun m!5768524 () Bool)

(assert (=> b!4788986 m!5768524))

(declare-fun m!5768526 () Bool)

(assert (=> b!4788989 m!5768526))

(declare-fun m!5768528 () Bool)

(assert (=> b!4788988 m!5768528))

(assert (=> b!4788988 m!5768528))

(declare-fun m!5768530 () Bool)

(assert (=> b!4788988 m!5768530))

(declare-fun m!5768532 () Bool)

(assert (=> b!4788992 m!5768532))

(declare-fun m!5768534 () Bool)

(assert (=> start!492810 m!5768534))

(declare-fun m!5768536 () Bool)

(assert (=> start!492810 m!5768536))

(declare-fun m!5768538 () Bool)

(assert (=> b!4788982 m!5768538))

(declare-fun m!5768540 () Bool)

(assert (=> b!4788982 m!5768540))

(check-sat (not b!4788983) (not b!4788989) (not b!4788988) (not b!4788992) (not b!4788986) tp_is_empty!33409 tp_is_empty!33411 (not b!4788987) (not b!4788982) (not b!4788991) (not start!492810) (not b!4788984))
(check-sat)
