; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84992 () Bool)

(assert start!84992)

(declare-fun res!663208 () Bool)

(declare-fun e!559670 () Bool)

(assert (=> start!84992 (=> (not res!663208) (not e!559670))))

(declare-datatypes ((List!20993 0))(
  ( (Nil!20990) (Cons!20989 (h!22151 (_ BitVec 64)) (t!29987 List!20993)) )
))
(declare-fun tail!21 () List!20993)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5750 (List!20993 (_ BitVec 64)) Bool)

(assert (=> start!84992 (= res!663208 (not (contains!5750 tail!21 head!726)))))

(assert (=> start!84992 e!559670))

(assert (=> start!84992 true))

(declare-fun b!992092 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!436 (List!20993) (InoxSet (_ BitVec 64)))

(assert (=> b!992092 (= e!559670 (select (content!436 tail!21) head!726))))

(assert (= (and start!84992 res!663208) b!992092))

(declare-fun m!919907 () Bool)

(assert (=> start!84992 m!919907))

(declare-fun m!919909 () Bool)

(assert (=> b!992092 m!919909))

(declare-fun m!919911 () Bool)

(assert (=> b!992092 m!919911))

(check-sat (not start!84992) (not b!992092))
(check-sat)
(get-model)

(declare-fun d!117983 () Bool)

(declare-fun lt!440059 () Bool)

(assert (=> d!117983 (= lt!440059 (select (content!436 tail!21) head!726))))

(declare-fun e!559689 () Bool)

(assert (=> d!117983 (= lt!440059 e!559689)))

(declare-fun res!663226 () Bool)

(assert (=> d!117983 (=> (not res!663226) (not e!559689))))

(get-info :version)

(assert (=> d!117983 (= res!663226 ((_ is Cons!20989) tail!21))))

(assert (=> d!117983 (= (contains!5750 tail!21 head!726) lt!440059)))

(declare-fun b!992109 () Bool)

(declare-fun e!559687 () Bool)

(assert (=> b!992109 (= e!559689 e!559687)))

(declare-fun res!663225 () Bool)

(assert (=> b!992109 (=> res!663225 e!559687)))

(assert (=> b!992109 (= res!663225 (= (h!22151 tail!21) head!726))))

(declare-fun b!992111 () Bool)

(assert (=> b!992111 (= e!559687 (contains!5750 (t!29987 tail!21) head!726))))

(assert (= (and d!117983 res!663226) b!992109))

(assert (= (and b!992109 (not res!663225)) b!992111))

(assert (=> d!117983 m!919909))

(assert (=> d!117983 m!919911))

(declare-fun m!919921 () Bool)

(assert (=> b!992111 m!919921))

(assert (=> start!84992 d!117983))

(declare-fun d!117989 () Bool)

(declare-fun c!100586 () Bool)

(assert (=> d!117989 (= c!100586 ((_ is Nil!20990) tail!21))))

(declare-fun e!559699 () (InoxSet (_ BitVec 64)))

(assert (=> d!117989 (= (content!436 tail!21) e!559699)))

(declare-fun b!992128 () Bool)

(assert (=> b!992128 (= e!559699 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!992130 () Bool)

(assert (=> b!992130 (= e!559699 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!22151 tail!21) true) (content!436 (t!29987 tail!21))))))

(assert (= (and d!117989 c!100586) b!992128))

(assert (= (and d!117989 (not c!100586)) b!992130))

(declare-fun m!919930 () Bool)

(assert (=> b!992130 m!919930))

(declare-fun m!919935 () Bool)

(assert (=> b!992130 m!919935))

(assert (=> b!992092 d!117989))

(check-sat (not b!992111) (not d!117983) (not b!992130))
(check-sat)
