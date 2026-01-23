; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!229524 () Bool)

(assert start!229524)

(declare-fun b!2325698 () Bool)

(declare-fun res!993338 () Bool)

(declare-fun e!1490176 () Bool)

(assert (=> b!2325698 (=> (not res!993338) (not e!1490176))))

(declare-fun i!741 () Int)

(declare-datatypes ((T!43976 0))(
  ( (T!43977 (val!7989 Int)) )
))
(declare-datatypes ((List!27775 0))(
  ( (Nil!27677) (Cons!27677 (h!33078 T!43976) (t!207477 List!27775)) )
))
(declare-fun l!2797 () List!27775)

(declare-fun size!21953 (List!27775) Int)

(assert (=> b!2325698 (= res!993338 (<= i!741 (size!21953 l!2797)))))

(declare-fun b!2325701 () Bool)

(declare-fun e!1490177 () Bool)

(declare-fun tp_is_empty!10843 () Bool)

(declare-fun tp!737096 () Bool)

(assert (=> b!2325701 (= e!1490177 (and tp_is_empty!10843 tp!737096))))

(declare-fun res!993337 () Bool)

(assert (=> start!229524 (=> (not res!993337) (not e!1490176))))

(assert (=> start!229524 (= res!993337 (<= 0 i!741))))

(assert (=> start!229524 e!1490176))

(assert (=> start!229524 true))

(assert (=> start!229524 e!1490177))

(declare-fun b!2325699 () Bool)

(declare-fun res!993339 () Bool)

(assert (=> b!2325699 (=> (not res!993339) (not e!1490176))))

(assert (=> b!2325699 (= res!993339 (is-Nil!27677 l!2797))))

(declare-fun b!2325700 () Bool)

(assert (=> b!2325700 (= e!1490176 false)))

(declare-fun lt!861470 () List!27775)

(declare-fun slice!714 (List!27775 Int Int) List!27775)

(assert (=> b!2325700 (= lt!861470 (slice!714 l!2797 0 i!741))))

(assert (= (and start!229524 res!993337) b!2325698))

(assert (= (and b!2325698 res!993338) b!2325699))

(assert (= (and b!2325699 res!993339) b!2325700))

(assert (= (and start!229524 (is-Cons!27677 l!2797)) b!2325701))

(declare-fun m!2756943 () Bool)

(assert (=> b!2325698 m!2756943))

(declare-fun m!2756945 () Bool)

(assert (=> b!2325700 m!2756945))

(push 1)

(assert (not b!2325700))

(assert (not b!2325698))

(assert (not b!2325701))

(assert tp_is_empty!10843)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

