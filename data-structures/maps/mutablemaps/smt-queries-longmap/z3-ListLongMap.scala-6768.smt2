; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84986 () Bool)

(assert start!84986)

(declare-fun res!663193 () Bool)

(declare-fun e!559658 () Bool)

(assert (=> start!84986 (=> (not res!663193) (not e!559658))))

(declare-datatypes ((List!20990 0))(
  ( (Nil!20987) (Cons!20986 (h!22148 (_ BitVec 64)) (t!29984 List!20990)) )
))
(declare-fun tail!21 () List!20990)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5747 (List!20990 (_ BitVec 64)) Bool)

(assert (=> start!84986 (= res!663193 (not (contains!5747 tail!21 head!726)))))

(assert (=> start!84986 e!559658))

(assert (=> start!84986 true))

(declare-fun b!992075 () Bool)

(declare-fun res!663191 () Bool)

(assert (=> b!992075 (=> (not res!663191) (not e!559658))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!433 (List!20990) (InoxSet (_ BitVec 64)))

(assert (=> b!992075 (= res!663191 (not (select (content!433 tail!21) head!726)))))

(declare-fun b!992076 () Bool)

(declare-fun e!559657 () Bool)

(assert (=> b!992076 (= e!559658 e!559657)))

(declare-fun res!663192 () Bool)

(assert (=> b!992076 (=> (not res!663192) (not e!559657))))

(declare-datatypes ((tuple2!15032 0))(
  ( (tuple2!15033 (_1!7526 (_ BitVec 64)) (_2!7526 List!20990)) )
))
(declare-datatypes ((Option!529 0))(
  ( (Some!528 (v!14323 tuple2!15032)) (None!527) )
))
(declare-fun lt!440046 () Option!529)

(declare-fun isEmpty!738 (Option!529) Bool)

(assert (=> b!992076 (= res!663192 (not (isEmpty!738 lt!440046)))))

(declare-fun unapply!5 (List!20990) Option!529)

(declare-fun $colon$colon!563 (List!20990 (_ BitVec 64)) List!20990)

(assert (=> b!992076 (= lt!440046 (unapply!5 ($colon$colon!563 tail!21 head!726)))))

(declare-fun b!992077 () Bool)

(assert (=> b!992077 (= e!559657 false)))

(declare-fun lt!440045 () Bool)

(declare-fun get!15693 (Option!529) tuple2!15032)

(assert (=> b!992077 (= lt!440045 (contains!5747 (_2!7526 (get!15693 lt!440046)) head!726))))

(assert (= (and start!84986 res!663193) b!992075))

(assert (= (and b!992075 res!663191) b!992076))

(assert (= (and b!992076 res!663192) b!992077))

(declare-fun m!919869 () Bool)

(assert (=> start!84986 m!919869))

(declare-fun m!919871 () Bool)

(assert (=> b!992075 m!919871))

(declare-fun m!919873 () Bool)

(assert (=> b!992075 m!919873))

(declare-fun m!919875 () Bool)

(assert (=> b!992076 m!919875))

(declare-fun m!919877 () Bool)

(assert (=> b!992076 m!919877))

(assert (=> b!992076 m!919877))

(declare-fun m!919879 () Bool)

(assert (=> b!992076 m!919879))

(declare-fun m!919881 () Bool)

(assert (=> b!992077 m!919881))

(declare-fun m!919883 () Bool)

(assert (=> b!992077 m!919883))

(check-sat (not start!84986) (not b!992076) (not b!992077) (not b!992075))
(check-sat)
