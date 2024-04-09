; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84990 () Bool)

(assert start!84990)

(declare-fun res!663205 () Bool)

(declare-fun e!559667 () Bool)

(assert (=> start!84990 (=> (not res!663205) (not e!559667))))

(declare-datatypes ((List!20992 0))(
  ( (Nil!20989) (Cons!20988 (h!22150 (_ BitVec 64)) (t!29986 List!20992)) )
))
(declare-fun tail!21 () List!20992)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5749 (List!20992 (_ BitVec 64)) Bool)

(assert (=> start!84990 (= res!663205 (not (contains!5749 tail!21 head!726)))))

(assert (=> start!84990 e!559667))

(assert (=> start!84990 true))

(declare-fun b!992089 () Bool)

(declare-fun content!435 (List!20992) (Set (_ BitVec 64)))

(assert (=> b!992089 (= e!559667 (set.member head!726 (content!435 tail!21)))))

(assert (= (and start!84990 res!663205) b!992089))

(declare-fun m!919901 () Bool)

(assert (=> start!84990 m!919901))

(declare-fun m!919903 () Bool)

(assert (=> b!992089 m!919903))

(declare-fun m!919905 () Bool)

(assert (=> b!992089 m!919905))

(push 1)

(assert (not start!84990))

(assert (not b!992089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!117981 () Bool)

(declare-fun lt!440060 () Bool)

(assert (=> d!117981 (= lt!440060 (set.member head!726 (content!435 tail!21)))))

(declare-fun e!559686 () Bool)

(assert (=> d!117981 (= lt!440060 e!559686)))

(declare-fun res!663227 () Bool)

(assert (=> d!117981 (=> (not res!663227) (not e!559686))))

(assert (=> d!117981 (= res!663227 (is-Cons!20988 tail!21))))

(assert (=> d!117981 (= (contains!5749 tail!21 head!726) lt!440060)))

(declare-fun b!992108 () Bool)

(declare-fun e!559688 () Bool)

(assert (=> b!992108 (= e!559686 e!559688)))

(declare-fun res!663224 () Bool)

(assert (=> b!992108 (=> res!663224 e!559688)))

(assert (=> b!992108 (= res!663224 (= (h!22150 tail!21) head!726))))

(declare-fun b!992110 () Bool)

(assert (=> b!992110 (= e!559688 (contains!5749 (t!29986 tail!21) head!726))))

(assert (= (and d!117981 res!663227) b!992108))

(assert (= (and b!992108 (not res!663224)) b!992110))

(assert (=> d!117981 m!919903))

(assert (=> d!117981 m!919905))

(declare-fun m!919920 () Bool)

(assert (=> b!992110 m!919920))

(assert (=> start!84990 d!117981))

(declare-fun d!117987 () Bool)

(declare-fun c!100587 () Bool)

(assert (=> d!117987 (= c!100587 (is-Nil!20989 tail!21))))

(declare-fun e!559700 () (Set (_ BitVec 64)))

(assert (=> d!117987 (= (content!435 tail!21) e!559700)))

(declare-fun b!992129 () Bool)

(assert (=> b!992129 (= e!559700 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!992131 () Bool)

(assert (=> b!992131 (= e!559700 (set.union (set.insert (h!22150 tail!21) (as set.empty (Set (_ BitVec 64)))) (content!435 (t!29986 tail!21))))))

(assert (= (and d!117987 c!100587) b!992129))

(assert (= (and d!117987 (not c!100587)) b!992131))

(declare-fun m!919927 () Bool)

(assert (=> b!992131 m!919927))

(declare-fun m!919933 () Bool)

(assert (=> b!992131 m!919933))

(assert (=> b!992089 d!117987))

(push 1)

