; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107950 () Bool)

(assert start!107950)

(declare-fun b!1275114 () Bool)

(declare-fun e!727870 () Bool)

(declare-fun e!727872 () Bool)

(assert (=> b!1275114 (= e!727870 e!727872)))

(declare-fun res!847681 () Bool)

(assert (=> b!1275114 (=> res!847681 e!727872)))

(declare-datatypes ((B!2188 0))(
  ( (B!2189 (val!16690 Int)) )
))
(declare-datatypes ((tuple2!21608 0))(
  ( (tuple2!21609 (_1!10814 (_ BitVec 64)) (_2!10814 B!2188)) )
))
(declare-datatypes ((List!28774 0))(
  ( (Nil!28771) (Cons!28770 (h!29979 tuple2!21608) (t!42317 List!28774)) )
))
(declare-fun lt!575264 () List!28774)

(declare-fun isStrictlySorted!865 (List!28774) Bool)

(assert (=> b!1275114 (= res!847681 (not (isStrictlySorted!865 lt!575264)))))

(declare-fun err!130 () List!28774)

(assert (=> b!1275114 (= lt!575264 err!130)))

(assert (=> b!1275114 true))

(declare-fun e!727871 () Bool)

(assert (=> b!1275114 e!727871))

(declare-fun b!1275115 () Bool)

(declare-fun res!847679 () Bool)

(assert (=> b!1275115 (=> (not res!847679) (not e!727870))))

(declare-fun l!595 () List!28774)

(declare-fun key!173 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1275115 (= res!847679 (and (or (not ((_ is Cons!28770) l!595)) (not (= (_1!10814 (h!29979 l!595)) key!173))) (or (not ((_ is Cons!28770) l!595)) (= (_1!10814 (h!29979 l!595)) key!173)) (not ((_ is Nil!28771) l!595))))))

(declare-fun res!847680 () Bool)

(assert (=> start!107950 (=> (not res!847680) (not e!727870))))

(assert (=> start!107950 (= res!847680 (isStrictlySorted!865 l!595))))

(assert (=> start!107950 e!727870))

(declare-fun e!727869 () Bool)

(assert (=> start!107950 e!727869))

(assert (=> start!107950 true))

(declare-fun b!1275116 () Bool)

(declare-fun tp_is_empty!33231 () Bool)

(declare-fun tp!98114 () Bool)

(assert (=> b!1275116 (= e!727871 (and tp_is_empty!33231 tp!98114))))

(declare-fun b!1275117 () Bool)

(declare-fun containsKey!708 (List!28774 (_ BitVec 64)) Bool)

(assert (=> b!1275117 (= e!727872 (containsKey!708 lt!575264 key!173))))

(declare-fun b!1275118 () Bool)

(declare-fun tp!98115 () Bool)

(assert (=> b!1275118 (= e!727869 (and tp_is_empty!33231 tp!98115))))

(assert (= (and start!107950 res!847680) b!1275115))

(assert (= (and b!1275115 res!847679) b!1275114))

(assert (= (and b!1275114 ((_ is Cons!28770) err!130)) b!1275116))

(assert (= (and b!1275114 (not res!847681)) b!1275117))

(assert (= (and start!107950 ((_ is Cons!28770) l!595)) b!1275118))

(declare-fun m!1171501 () Bool)

(assert (=> b!1275114 m!1171501))

(declare-fun m!1171503 () Bool)

(assert (=> start!107950 m!1171503))

(declare-fun m!1171505 () Bool)

(assert (=> b!1275117 m!1171505))

(check-sat tp_is_empty!33231 (not b!1275116) (not b!1275114) (not b!1275118) (not b!1275117) (not start!107950))
(check-sat)
