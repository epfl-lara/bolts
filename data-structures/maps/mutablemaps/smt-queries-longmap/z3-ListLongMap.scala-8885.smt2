; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107944 () Bool)

(assert start!107944)

(declare-fun res!847660 () Bool)

(declare-fun e!727841 () Bool)

(assert (=> start!107944 (=> (not res!847660) (not e!727841))))

(declare-datatypes ((B!2182 0))(
  ( (B!2183 (val!16687 Int)) )
))
(declare-datatypes ((tuple2!21602 0))(
  ( (tuple2!21603 (_1!10811 (_ BitVec 64)) (_2!10811 B!2182)) )
))
(declare-datatypes ((List!28771 0))(
  ( (Nil!28768) (Cons!28767 (h!29976 tuple2!21602) (t!42314 List!28771)) )
))
(declare-fun l!595 () List!28771)

(declare-fun isStrictlySorted!862 (List!28771) Bool)

(assert (=> start!107944 (= res!847660 (isStrictlySorted!862 l!595))))

(assert (=> start!107944 e!727841))

(declare-fun e!727842 () Bool)

(assert (=> start!107944 e!727842))

(assert (=> start!107944 true))

(declare-fun b!1275081 () Bool)

(declare-fun key!173 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1275081 (= e!727841 (and (or (not ((_ is Cons!28767) l!595)) (not (= (_1!10811 (h!29976 l!595)) key!173))) (or (not ((_ is Cons!28767) l!595)) (= (_1!10811 (h!29976 l!595)) key!173)) (not ((_ is Nil!28768) l!595))))))

(declare-fun b!1275082 () Bool)

(declare-fun tp_is_empty!33225 () Bool)

(declare-fun tp!98100 () Bool)

(assert (=> b!1275082 (= e!727842 (and tp_is_empty!33225 tp!98100))))

(assert (= (and start!107944 res!847660) b!1275081))

(assert (= (and start!107944 ((_ is Cons!28767) l!595)) b!1275082))

(declare-fun m!1171491 () Bool)

(assert (=> start!107944 m!1171491))

(check-sat (not start!107944) (not b!1275082) tp_is_empty!33225)
(check-sat)
