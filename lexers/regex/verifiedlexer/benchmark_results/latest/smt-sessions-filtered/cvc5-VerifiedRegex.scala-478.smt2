; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13456 () Bool)

(assert start!13456)

(declare-fun b!130175 () Bool)

(declare-fun e!75002 () Bool)

(declare-datatypes ((B!731 0))(
  ( (B!732 (val!851 Int)) )
))
(declare-datatypes ((List!2169 0))(
  ( (Nil!2163) (Cons!2163 (h!7560 B!731) (t!22755 List!2169)) )
))
(declare-fun lt!39223 () List!2169)

(declare-fun lt!39220 () List!2169)

(declare-fun isPrefix!162 (List!2169 List!2169) Bool)

(assert (=> b!130175 (= e!75002 (isPrefix!162 lt!39223 lt!39220))))

(declare-fun res!60118 () Bool)

(declare-fun e!75004 () Bool)

(assert (=> start!13456 (=> (not res!60118) (not e!75004))))

(declare-fun baseList!9 () List!2169)

(declare-fun noDuplicate!59 (List!2169) Bool)

(assert (=> start!13456 (= res!60118 (noDuplicate!59 baseList!9))))

(assert (=> start!13456 e!75004))

(declare-fun e!75005 () Bool)

(assert (=> start!13456 e!75005))

(declare-fun e!75006 () Bool)

(assert (=> start!13456 e!75006))

(declare-fun b!130176 () Bool)

(declare-fun lt!39218 () Bool)

(assert (=> b!130176 (= e!75004 (not lt!39218))))

(declare-fun e!75003 () Bool)

(assert (=> b!130176 e!75003))

(declare-fun res!60116 () Bool)

(assert (=> b!130176 (=> (not res!60116) (not e!75003))))

(assert (=> b!130176 (= res!60116 lt!39218)))

(assert (=> b!130176 (= lt!39218 (noDuplicate!59 lt!39220))))

(declare-fun newList!20 () List!2169)

(declare-fun concatWithoutDuplicates!21 (List!2169 List!2169) List!2169)

(assert (=> b!130176 (= lt!39220 (concatWithoutDuplicates!21 lt!39223 (t!22755 newList!20)))))

(assert (=> b!130176 (noDuplicate!59 lt!39223)))

(declare-datatypes ((Unit!1710 0))(
  ( (Unit!1711) )
))
(declare-fun lt!39217 () Unit!1710)

(declare-fun lemmaAppendNewElementElementPreserves!7 (List!2169 B!731) Unit!1710)

(assert (=> b!130176 (= lt!39217 (lemmaAppendNewElementElementPreserves!7 baseList!9 (h!7560 newList!20)))))

(assert (=> b!130176 (isPrefix!162 baseList!9 lt!39223)))

(declare-fun lt!39219 () List!2169)

(declare-fun ++!443 (List!2169 List!2169) List!2169)

(assert (=> b!130176 (= lt!39223 (++!443 baseList!9 lt!39219))))

(declare-fun lt!39222 () Unit!1710)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!89 (List!2169 List!2169) Unit!1710)

(assert (=> b!130176 (= lt!39222 (lemmaConcatTwoListThenFirstIsPrefix!89 baseList!9 lt!39219))))

(assert (=> b!130176 (= lt!39219 (Cons!2163 (h!7560 newList!20) Nil!2163))))

(declare-fun b!130177 () Bool)

(assert (=> b!130177 (= e!75003 e!75002)))

(declare-fun res!60122 () Bool)

(assert (=> b!130177 (=> (not res!60122) (not e!75002))))

(declare-fun lt!39221 () List!2169)

(declare-fun content!278 (List!2169) (Set B!731))

(assert (=> b!130177 (= res!60122 (= (content!278 lt!39221) (content!278 lt!39220)))))

(assert (=> b!130177 (= lt!39221 (++!443 lt!39223 (t!22755 newList!20)))))

(declare-fun b!130178 () Bool)

(declare-fun tp_is_empty!1375 () Bool)

(declare-fun tp!70269 () Bool)

(assert (=> b!130178 (= e!75006 (and tp_is_empty!1375 tp!70269))))

(declare-fun b!130179 () Bool)

(declare-fun res!60117 () Bool)

(assert (=> b!130179 (=> (not res!60117) (not e!75004))))

(declare-fun contains!343 (List!2169 B!731) Bool)

(assert (=> b!130179 (= res!60117 (not (contains!343 baseList!9 (h!7560 newList!20))))))

(declare-fun b!130180 () Bool)

(declare-fun res!60119 () Bool)

(assert (=> b!130180 (=> (not res!60119) (not e!75002))))

(declare-fun subseq!34 (List!2169 List!2169) Bool)

(assert (=> b!130180 (= res!60119 (subseq!34 lt!39220 lt!39221))))

(declare-fun b!130181 () Bool)

(declare-fun tp!70270 () Bool)

(assert (=> b!130181 (= e!75005 (and tp_is_empty!1375 tp!70270))))

(declare-fun b!130182 () Bool)

(declare-fun e!75007 () Bool)

(assert (=> b!130182 (= e!75007 (not (contains!343 baseList!9 (h!7560 newList!20))))))

(declare-fun b!130183 () Bool)

(declare-fun res!60115 () Bool)

(assert (=> b!130183 (=> (not res!60115) (not e!75004))))

(assert (=> b!130183 (= res!60115 e!75007)))

(declare-fun res!60121 () Bool)

(assert (=> b!130183 (=> res!60121 e!75007)))

(assert (=> b!130183 (= res!60121 (not (is-Cons!2163 newList!20)))))

(declare-fun b!130184 () Bool)

(declare-fun res!60120 () Bool)

(assert (=> b!130184 (=> (not res!60120) (not e!75004))))

(assert (=> b!130184 (= res!60120 (is-Cons!2163 newList!20))))

(assert (= (and start!13456 res!60118) b!130183))

(assert (= (and b!130183 (not res!60121)) b!130182))

(assert (= (and b!130183 res!60115) b!130184))

(assert (= (and b!130184 res!60120) b!130179))

(assert (= (and b!130179 res!60117) b!130176))

(assert (= (and b!130176 res!60116) b!130177))

(assert (= (and b!130177 res!60122) b!130180))

(assert (= (and b!130180 res!60119) b!130175))

(assert (= (and start!13456 (is-Cons!2163 baseList!9)) b!130181))

(assert (= (and start!13456 (is-Cons!2163 newList!20)) b!130178))

(declare-fun m!114713 () Bool)

(assert (=> b!130179 m!114713))

(declare-fun m!114715 () Bool)

(assert (=> start!13456 m!114715))

(assert (=> b!130182 m!114713))

(declare-fun m!114717 () Bool)

(assert (=> b!130176 m!114717))

(declare-fun m!114719 () Bool)

(assert (=> b!130176 m!114719))

(declare-fun m!114721 () Bool)

(assert (=> b!130176 m!114721))

(declare-fun m!114723 () Bool)

(assert (=> b!130176 m!114723))

(declare-fun m!114725 () Bool)

(assert (=> b!130176 m!114725))

(declare-fun m!114727 () Bool)

(assert (=> b!130176 m!114727))

(declare-fun m!114729 () Bool)

(assert (=> b!130176 m!114729))

(declare-fun m!114731 () Bool)

(assert (=> b!130175 m!114731))

(declare-fun m!114733 () Bool)

(assert (=> b!130180 m!114733))

(declare-fun m!114735 () Bool)

(assert (=> b!130177 m!114735))

(declare-fun m!114737 () Bool)

(assert (=> b!130177 m!114737))

(declare-fun m!114739 () Bool)

(assert (=> b!130177 m!114739))

(push 1)

(assert (not b!130176))

(assert (not b!130181))

(assert (not b!130178))

(assert (not b!130175))

(assert (not start!13456))

(assert (not b!130177))

(assert (not b!130179))

(assert (not b!130180))

(assert tp_is_empty!1375)

(assert (not b!130182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

