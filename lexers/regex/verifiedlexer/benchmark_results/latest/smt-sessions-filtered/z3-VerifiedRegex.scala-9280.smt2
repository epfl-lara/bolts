; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!492806 () Bool)

(assert start!492806)

(declare-fun b!4788916 () Bool)

(declare-fun res!2034798 () Bool)

(declare-fun e!2990110 () Bool)

(assert (=> b!4788916 (=> res!2034798 e!2990110)))

(declare-datatypes ((K!15689 0))(
  ( (K!15690 (val!20857 Int)) )
))
(declare-datatypes ((V!15935 0))(
  ( (V!15936 (val!20858 Int)) )
))
(declare-datatypes ((tuple2!56688 0))(
  ( (tuple2!56689 (_1!31638 K!15689) (_2!31638 V!15935)) )
))
(declare-datatypes ((List!54249 0))(
  ( (Nil!54125) (Cons!54125 (h!60549 tuple2!56688) (t!361699 List!54249)) )
))
(declare-datatypes ((tuple2!56690 0))(
  ( (tuple2!56691 (_1!31639 (_ BitVec 64)) (_2!31639 List!54249)) )
))
(declare-datatypes ((List!54250 0))(
  ( (Nil!54126) (Cons!54126 (h!60550 tuple2!56690) (t!361700 List!54250)) )
))
(declare-datatypes ((ListLongMap!5261 0))(
  ( (ListLongMap!5262 (toList!6839 List!54250)) )
))
(declare-fun lt!1948989 () ListLongMap!5261)

(declare-datatypes ((Hashable!6880 0))(
  ( (HashableExt!6879 (__x!32903 Int)) )
))
(declare-fun hashF!1559 () Hashable!6880)

(declare-fun allKeysSameHashInMap!2285 (ListLongMap!5261 Hashable!6880) Bool)

(assert (=> b!4788916 (= res!2034798 (not (allKeysSameHashInMap!2285 lt!1948989 hashF!1559)))))

(declare-fun b!4788917 () Bool)

(declare-fun e!2990109 () Bool)

(assert (=> b!4788917 (= e!2990109 e!2990110)))

(declare-fun res!2034793 () Bool)

(assert (=> b!4788917 (=> res!2034793 e!2990110)))

(declare-fun lt!1948988 () (_ BitVec 64))

(declare-fun contains!17720 (ListLongMap!5261 (_ BitVec 64)) Bool)

(assert (=> b!4788917 (= res!2034793 (contains!17720 lt!1948989 lt!1948988))))

(declare-fun lm!2473 () ListLongMap!5261)

(declare-fun tail!9229 (ListLongMap!5261) ListLongMap!5261)

(assert (=> b!4788917 (= lt!1948989 (tail!9229 lm!2473))))

(declare-fun b!4788918 () Bool)

(declare-fun e!2990107 () Bool)

(assert (=> b!4788918 (= e!2990107 (not e!2990109))))

(declare-fun res!2034791 () Bool)

(assert (=> b!4788918 (=> res!2034791 e!2990109)))

(declare-fun value!3111 () V!15935)

(declare-fun key!5896 () K!15689)

(declare-fun getValue!76 (List!54250 K!15689) V!15935)

(assert (=> b!4788918 (= res!2034791 (not (= (getValue!76 (toList!6839 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!530 (List!54250 K!15689) Bool)

(assert (=> b!4788918 (containsKeyBiggerList!530 (toList!6839 lm!2473) key!5896)))

(declare-datatypes ((Unit!139664 0))(
  ( (Unit!139665) )
))
(declare-fun lt!1948987 () Unit!139664)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!270 (ListLongMap!5261 K!15689 Hashable!6880) Unit!139664)

(assert (=> b!4788918 (= lt!1948987 (lemmaInLongMapThenContainsKeyBiggerList!270 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2990108 () Bool)

(assert (=> b!4788918 e!2990108))

(declare-fun res!2034800 () Bool)

(assert (=> b!4788918 (=> (not res!2034800) (not e!2990108))))

(assert (=> b!4788918 (= res!2034800 (contains!17720 lm!2473 lt!1948988))))

(declare-fun hash!4906 (Hashable!6880 K!15689) (_ BitVec 64))

(assert (=> b!4788918 (= lt!1948988 (hash!4906 hashF!1559 key!5896))))

(declare-fun lt!1948986 () Unit!139664)

(declare-fun lemmaInGenericMapThenInLongMap!284 (ListLongMap!5261 K!15689 Hashable!6880) Unit!139664)

(assert (=> b!4788918 (= lt!1948986 (lemmaInGenericMapThenInLongMap!284 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4788919 () Bool)

(declare-fun res!2034797 () Bool)

(assert (=> b!4788919 (=> (not res!2034797) (not e!2990107))))

(declare-datatypes ((ListMap!6311 0))(
  ( (ListMap!6312 (toList!6840 List!54249)) )
))
(declare-fun contains!17721 (ListMap!6311 K!15689) Bool)

(declare-fun extractMap!2407 (List!54250) ListMap!6311)

(assert (=> b!4788919 (= res!2034797 (contains!17721 (extractMap!2407 (toList!6839 lm!2473)) key!5896))))

(declare-fun b!4788920 () Bool)

(declare-fun lambda!229867 () Int)

(declare-fun forall!12197 (List!54250 Int) Bool)

(assert (=> b!4788920 (= e!2990110 (forall!12197 (toList!6839 lt!1948989) lambda!229867))))

(declare-fun b!4788921 () Bool)

(declare-fun e!2990106 () Bool)

(declare-fun tp!1357814 () Bool)

(assert (=> b!4788921 (= e!2990106 tp!1357814)))

(declare-fun b!4788922 () Bool)

(declare-datatypes ((Option!13035 0))(
  ( (None!13034) (Some!13034 (v!48305 tuple2!56688)) )
))
(declare-fun isDefined!10177 (Option!13035) Bool)

(declare-fun getPair!852 (List!54249 K!15689) Option!13035)

(declare-fun apply!12941 (ListLongMap!5261 (_ BitVec 64)) List!54249)

(assert (=> b!4788922 (= e!2990108 (isDefined!10177 (getPair!852 (apply!12941 lm!2473 lt!1948988) key!5896)))))

(declare-fun res!2034792 () Bool)

(assert (=> start!492806 (=> (not res!2034792) (not e!2990107))))

(assert (=> start!492806 (= res!2034792 (forall!12197 (toList!6839 lm!2473) lambda!229867))))

(assert (=> start!492806 e!2990107))

(declare-fun inv!69715 (ListLongMap!5261) Bool)

(assert (=> start!492806 (and (inv!69715 lm!2473) e!2990106)))

(assert (=> start!492806 true))

(declare-fun tp_is_empty!33401 () Bool)

(assert (=> start!492806 tp_is_empty!33401))

(declare-fun tp_is_empty!33403 () Bool)

(assert (=> start!492806 tp_is_empty!33403))

(declare-fun b!4788923 () Bool)

(declare-fun res!2034795 () Bool)

(assert (=> b!4788923 (=> res!2034795 e!2990110)))

(assert (=> b!4788923 (= res!2034795 (not (forall!12197 (toList!6839 lt!1948989) lambda!229867)))))

(declare-fun b!4788924 () Bool)

(declare-fun res!2034794 () Bool)

(assert (=> b!4788924 (=> res!2034794 e!2990109)))

(declare-fun containsKey!3898 (List!54249 K!15689) Bool)

(assert (=> b!4788924 (= res!2034794 (containsKey!3898 (_2!31639 (h!60550 (toList!6839 lm!2473))) key!5896))))

(declare-fun b!4788925 () Bool)

(declare-fun res!2034796 () Bool)

(assert (=> b!4788925 (=> res!2034796 e!2990109)))

(get-info :version)

(assert (=> b!4788925 (= res!2034796 (not ((_ is Cons!54126) (toList!6839 lm!2473))))))

(declare-fun b!4788926 () Bool)

(declare-fun res!2034799 () Bool)

(assert (=> b!4788926 (=> (not res!2034799) (not e!2990107))))

(assert (=> b!4788926 (= res!2034799 (allKeysSameHashInMap!2285 lm!2473 hashF!1559))))

(assert (= (and start!492806 res!2034792) b!4788926))

(assert (= (and b!4788926 res!2034799) b!4788919))

(assert (= (and b!4788919 res!2034797) b!4788918))

(assert (= (and b!4788918 res!2034800) b!4788922))

(assert (= (and b!4788918 (not res!2034791)) b!4788925))

(assert (= (and b!4788925 (not res!2034796)) b!4788924))

(assert (= (and b!4788924 (not res!2034794)) b!4788917))

(assert (= (and b!4788917 (not res!2034793)) b!4788923))

(assert (= (and b!4788923 (not res!2034795)) b!4788916))

(assert (= (and b!4788916 (not res!2034798)) b!4788920))

(assert (= start!492806 b!4788921))

(declare-fun m!5768428 () Bool)

(assert (=> b!4788922 m!5768428))

(assert (=> b!4788922 m!5768428))

(declare-fun m!5768430 () Bool)

(assert (=> b!4788922 m!5768430))

(assert (=> b!4788922 m!5768430))

(declare-fun m!5768432 () Bool)

(assert (=> b!4788922 m!5768432))

(declare-fun m!5768434 () Bool)

(assert (=> start!492806 m!5768434))

(declare-fun m!5768436 () Bool)

(assert (=> start!492806 m!5768436))

(declare-fun m!5768438 () Bool)

(assert (=> b!4788918 m!5768438))

(declare-fun m!5768440 () Bool)

(assert (=> b!4788918 m!5768440))

(declare-fun m!5768442 () Bool)

(assert (=> b!4788918 m!5768442))

(declare-fun m!5768444 () Bool)

(assert (=> b!4788918 m!5768444))

(declare-fun m!5768446 () Bool)

(assert (=> b!4788918 m!5768446))

(declare-fun m!5768448 () Bool)

(assert (=> b!4788918 m!5768448))

(declare-fun m!5768450 () Bool)

(assert (=> b!4788919 m!5768450))

(assert (=> b!4788919 m!5768450))

(declare-fun m!5768452 () Bool)

(assert (=> b!4788919 m!5768452))

(declare-fun m!5768454 () Bool)

(assert (=> b!4788923 m!5768454))

(declare-fun m!5768456 () Bool)

(assert (=> b!4788916 m!5768456))

(declare-fun m!5768458 () Bool)

(assert (=> b!4788924 m!5768458))

(declare-fun m!5768460 () Bool)

(assert (=> b!4788917 m!5768460))

(declare-fun m!5768462 () Bool)

(assert (=> b!4788917 m!5768462))

(assert (=> b!4788920 m!5768454))

(declare-fun m!5768464 () Bool)

(assert (=> b!4788926 m!5768464))

(check-sat (not b!4788920) (not b!4788921) (not b!4788922) (not b!4788923) (not b!4788926) (not b!4788918) tp_is_empty!33401 (not b!4788916) (not start!492806) (not b!4788917) (not b!4788919) tp_is_empty!33403 (not b!4788924))
(check-sat)
