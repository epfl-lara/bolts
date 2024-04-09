; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84994 () Bool)

(assert start!84994)

(declare-fun res!663211 () Bool)

(declare-fun e!559673 () Bool)

(assert (=> start!84994 (=> (not res!663211) (not e!559673))))

(declare-datatypes ((List!20994 0))(
  ( (Nil!20991) (Cons!20990 (h!22152 (_ BitVec 64)) (t!29988 List!20994)) )
))
(declare-fun tail!21 () List!20994)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5751 (List!20994 (_ BitVec 64)) Bool)

(assert (=> start!84994 (= res!663211 (not (contains!5751 tail!21 head!726)))))

(assert (=> start!84994 e!559673))

(assert (=> start!84994 true))

(declare-fun b!992095 () Bool)

(declare-fun content!437 (List!20994) (Set (_ BitVec 64)))

(assert (=> b!992095 (= e!559673 (member head!726 (content!437 tail!21)))))

(assert (= (and start!84994 res!663211) b!992095))

(declare-fun m!919913 () Bool)

(assert (=> start!84994 m!919913))

(declare-fun m!919915 () Bool)

(assert (=> b!992095 m!919915))

(declare-fun m!919917 () Bool)

(assert (=> b!992095 m!919917))

(push 1)

(assert (not start!84994))

(assert (not b!992095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!117985 () Bool)

(declare-fun lt!440061 () Bool)

(assert (=> d!117985 (= lt!440061 (member head!726 (content!437 tail!21)))))

(declare-fun e!559691 () Bool)

(assert (=> d!117985 (= lt!440061 e!559691)))

(declare-fun res!663228 () Bool)

(assert (=> d!117985 (=> (not res!663228) (not e!559691))))

(assert (=> d!117985 (= res!663228 (is-Cons!20990 tail!21))))

(assert (=> d!117985 (= (contains!5751 tail!21 head!726) lt!440061)))

(declare-fun b!992112 () Bool)

(declare-fun e!559690 () Bool)

(assert (=> b!992112 (= e!559691 e!559690)))

(declare-fun res!663229 () Bool)

(assert (=> b!992112 (=> res!663229 e!559690)))

(assert (=> b!992112 (= res!663229 (= (h!22152 tail!21) head!726))))

(declare-fun b!992113 () Bool)

(assert (=> b!992113 (= e!559690 (contains!5751 (t!29988 tail!21) head!726))))

(assert (= (and d!117985 res!663228) b!992112))

(assert (= (and b!992112 (not res!663229)) b!992113))

(assert (=> d!117985 m!919915))

(assert (=> d!117985 m!919917))

(declare-fun m!919923 () Bool)

(assert (=> b!992113 m!919923))

(assert (=> start!84994 d!117985))

(declare-fun d!117991 () Bool)

(declare-fun c!100585 () Bool)

(assert (=> d!117991 (= c!100585 (is-Nil!20991 tail!21))))

(declare-fun e!559698 () (Set (_ BitVec 64)))

(assert (=> d!117991 (= (content!437 tail!21) e!559698)))

(declare-fun b!992126 () Bool)

(assert (=> b!992126 (= e!559698 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!992127 () Bool)

(assert (=> b!992127 (= e!559698 (union (insert (h!22152 tail!21) (as emptyset (Set (_ BitVec 64)))) (content!437 (t!29988 tail!21))))))

(assert (= (and d!117991 c!100585) b!992126))

(assert (= (and d!117991 (not c!100585)) b!992127))

(declare-fun m!919925 () Bool)

(assert (=> b!992127 m!919925))

(declare-fun m!919931 () Bool)

(assert (=> b!992127 m!919931))

(assert (=> b!992095 d!117991))

(push 1)

