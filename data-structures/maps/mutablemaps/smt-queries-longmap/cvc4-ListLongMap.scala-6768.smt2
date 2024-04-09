; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84988 () Bool)

(assert start!84988)

(declare-fun res!663200 () Bool)

(declare-fun e!559664 () Bool)

(assert (=> start!84988 (=> (not res!663200) (not e!559664))))

(declare-datatypes ((List!20991 0))(
  ( (Nil!20988) (Cons!20987 (h!22149 (_ BitVec 64)) (t!29985 List!20991)) )
))
(declare-fun tail!21 () List!20991)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5748 (List!20991 (_ BitVec 64)) Bool)

(assert (=> start!84988 (= res!663200 (not (contains!5748 tail!21 head!726)))))

(assert (=> start!84988 e!559664))

(assert (=> start!84988 true))

(declare-fun b!992084 () Bool)

(declare-fun res!663201 () Bool)

(assert (=> b!992084 (=> (not res!663201) (not e!559664))))

(declare-fun content!434 (List!20991) (Set (_ BitVec 64)))

(assert (=> b!992084 (= res!663201 (not (member head!726 (content!434 tail!21))))))

(declare-fun b!992085 () Bool)

(declare-fun e!559663 () Bool)

(assert (=> b!992085 (= e!559664 e!559663)))

(declare-fun res!663202 () Bool)

(assert (=> b!992085 (=> (not res!663202) (not e!559663))))

(declare-datatypes ((tuple2!15034 0))(
  ( (tuple2!15035 (_1!7527 (_ BitVec 64)) (_2!7527 List!20991)) )
))
(declare-datatypes ((Option!530 0))(
  ( (Some!529 (v!14324 tuple2!15034)) (None!528) )
))
(declare-fun lt!440052 () Option!530)

(declare-fun isEmpty!739 (Option!530) Bool)

(assert (=> b!992085 (= res!663202 (not (isEmpty!739 lt!440052)))))

(declare-fun unapply!6 (List!20991) Option!530)

(declare-fun $colon$colon!564 (List!20991 (_ BitVec 64)) List!20991)

(assert (=> b!992085 (= lt!440052 (unapply!6 ($colon$colon!564 tail!21 head!726)))))

(declare-fun b!992086 () Bool)

(assert (=> b!992086 (= e!559663 false)))

(declare-fun lt!440051 () Bool)

(declare-fun get!15694 (Option!530) tuple2!15034)

(assert (=> b!992086 (= lt!440051 (contains!5748 (_2!7527 (get!15694 lt!440052)) head!726))))

(assert (= (and start!84988 res!663200) b!992084))

(assert (= (and b!992084 res!663201) b!992085))

(assert (= (and b!992085 res!663202) b!992086))

(declare-fun m!919885 () Bool)

(assert (=> start!84988 m!919885))

(declare-fun m!919887 () Bool)

(assert (=> b!992084 m!919887))

(declare-fun m!919889 () Bool)

(assert (=> b!992084 m!919889))

(declare-fun m!919891 () Bool)

(assert (=> b!992085 m!919891))

(declare-fun m!919893 () Bool)

(assert (=> b!992085 m!919893))

(assert (=> b!992085 m!919893))

(declare-fun m!919895 () Bool)

(assert (=> b!992085 m!919895))

(declare-fun m!919897 () Bool)

(assert (=> b!992086 m!919897))

(declare-fun m!919899 () Bool)

(assert (=> b!992086 m!919899))

(push 1)

(assert (not b!992085))

(assert (not b!992084))

