; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84984 () Bool)

(assert start!84984)

(declare-fun res!663184 () Bool)

(declare-fun e!559652 () Bool)

(assert (=> start!84984 (=> (not res!663184) (not e!559652))))

(declare-datatypes ((List!20989 0))(
  ( (Nil!20986) (Cons!20985 (h!22147 (_ BitVec 64)) (t!29983 List!20989)) )
))
(declare-fun tail!21 () List!20989)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5746 (List!20989 (_ BitVec 64)) Bool)

(assert (=> start!84984 (= res!663184 (not (contains!5746 tail!21 head!726)))))

(assert (=> start!84984 e!559652))

(assert (=> start!84984 true))

(declare-fun b!992066 () Bool)

(declare-fun res!663182 () Bool)

(assert (=> b!992066 (=> (not res!663182) (not e!559652))))

(declare-fun content!432 (List!20989) (Set (_ BitVec 64)))

(assert (=> b!992066 (= res!663182 (not (set.member head!726 (content!432 tail!21))))))

(declare-fun b!992067 () Bool)

(declare-fun e!559651 () Bool)

(assert (=> b!992067 (= e!559652 e!559651)))

(declare-fun res!663183 () Bool)

(assert (=> b!992067 (=> (not res!663183) (not e!559651))))

(declare-datatypes ((tuple2!15030 0))(
  ( (tuple2!15031 (_1!7525 (_ BitVec 64)) (_2!7525 List!20989)) )
))
(declare-datatypes ((Option!528 0))(
  ( (Some!527 (v!14322 tuple2!15030)) (None!526) )
))
(declare-fun lt!440039 () Option!528)

(declare-fun isEmpty!737 (Option!528) Bool)

(assert (=> b!992067 (= res!663183 (not (isEmpty!737 lt!440039)))))

(declare-fun unapply!4 (List!20989) Option!528)

(declare-fun $colon$colon!562 (List!20989 (_ BitVec 64)) List!20989)

(assert (=> b!992067 (= lt!440039 (unapply!4 ($colon$colon!562 tail!21 head!726)))))

(declare-fun b!992068 () Bool)

(assert (=> b!992068 (= e!559651 false)))

(declare-fun lt!440040 () Bool)

(declare-fun get!15692 (Option!528) tuple2!15030)

(assert (=> b!992068 (= lt!440040 (contains!5746 (_2!7525 (get!15692 lt!440039)) head!726))))

(assert (= (and start!84984 res!663184) b!992066))

(assert (= (and b!992066 res!663182) b!992067))

(assert (= (and b!992067 res!663183) b!992068))

(declare-fun m!919853 () Bool)

(assert (=> start!84984 m!919853))

(declare-fun m!919855 () Bool)

(assert (=> b!992066 m!919855))

(declare-fun m!919857 () Bool)

(assert (=> b!992066 m!919857))

(declare-fun m!919859 () Bool)

(assert (=> b!992067 m!919859))

(declare-fun m!919861 () Bool)

(assert (=> b!992067 m!919861))

(assert (=> b!992067 m!919861))

(declare-fun m!919863 () Bool)

(assert (=> b!992067 m!919863))

(declare-fun m!919865 () Bool)

(assert (=> b!992068 m!919865))

(declare-fun m!919867 () Bool)

(assert (=> b!992068 m!919867))

(push 1)

