; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107860 () Bool)

(assert start!107860)

(declare-fun res!847391 () Bool)

(declare-fun e!727494 () Bool)

(assert (=> start!107860 (=> (not res!847391) (not e!727494))))

(declare-datatypes ((B!2158 0))(
  ( (B!2159 (val!16675 Int)) )
))
(declare-datatypes ((tuple2!21578 0))(
  ( (tuple2!21579 (_1!10799 (_ BitVec 64)) (_2!10799 B!2158)) )
))
(declare-datatypes ((List!28759 0))(
  ( (Nil!28756) (Cons!28755 (h!29964 tuple2!21578) (t!42299 List!28759)) )
))
(declare-fun l!595 () List!28759)

(declare-fun isStrictlySorted!850 (List!28759) Bool)

(assert (=> start!107860 (= res!847391 (isStrictlySorted!850 l!595))))

(assert (=> start!107860 e!727494))

(declare-fun e!727493 () Bool)

(assert (=> start!107860 e!727493))

(assert (=> start!107860 true))

(declare-fun b!1274643 () Bool)

(declare-fun e!727492 () Bool)

(declare-fun key!173 () (_ BitVec 64))

(declare-fun containsKey!699 (List!28759 (_ BitVec 64)) Bool)

(assert (=> b!1274643 (= e!727492 (containsKey!699 (t!42299 l!595) key!173))))

(declare-fun b!1274642 () Bool)

(assert (=> b!1274642 (= e!727494 e!727492)))

(declare-fun res!847393 () Bool)

(assert (=> b!1274642 (=> res!847393 e!727492)))

(assert (=> b!1274642 (= res!847393 (not (isStrictlySorted!850 (t!42299 l!595))))))

(declare-fun b!1274641 () Bool)

(declare-fun res!847392 () Bool)

(assert (=> b!1274641 (=> (not res!847392) (not e!727494))))

(get-info :version)

(assert (=> b!1274641 (= res!847392 (and ((_ is Cons!28755) l!595) (= (_1!10799 (h!29964 l!595)) key!173)))))

(declare-fun b!1274644 () Bool)

(declare-fun tp_is_empty!33201 () Bool)

(declare-fun tp!98025 () Bool)

(assert (=> b!1274644 (= e!727493 (and tp_is_empty!33201 tp!98025))))

(assert (= (and start!107860 res!847391) b!1274641))

(assert (= (and b!1274641 res!847392) b!1274642))

(assert (= (and b!1274642 (not res!847393)) b!1274643))

(assert (= (and start!107860 ((_ is Cons!28755) l!595)) b!1274644))

(declare-fun m!1171285 () Bool)

(assert (=> start!107860 m!1171285))

(declare-fun m!1171287 () Bool)

(assert (=> b!1274643 m!1171287))

(declare-fun m!1171289 () Bool)

(assert (=> b!1274642 m!1171289))

(check-sat (not start!107860) tp_is_empty!33201 (not b!1274644) (not b!1274643) (not b!1274642))
(check-sat)
(get-model)

(declare-fun d!140123 () Bool)

(declare-fun res!847407 () Bool)

(declare-fun e!727508 () Bool)

(assert (=> d!140123 (=> res!847407 e!727508)))

(assert (=> d!140123 (= res!847407 (or ((_ is Nil!28756) (t!42299 l!595)) ((_ is Nil!28756) (t!42299 (t!42299 l!595)))))))

(assert (=> d!140123 (= (isStrictlySorted!850 (t!42299 l!595)) e!727508)))

(declare-fun b!1274661 () Bool)

(declare-fun e!727509 () Bool)

(assert (=> b!1274661 (= e!727508 e!727509)))

(declare-fun res!847408 () Bool)

(assert (=> b!1274661 (=> (not res!847408) (not e!727509))))

(assert (=> b!1274661 (= res!847408 (bvslt (_1!10799 (h!29964 (t!42299 l!595))) (_1!10799 (h!29964 (t!42299 (t!42299 l!595))))))))

(declare-fun b!1274662 () Bool)

(assert (=> b!1274662 (= e!727509 (isStrictlySorted!850 (t!42299 (t!42299 l!595))))))

(assert (= (and d!140123 (not res!847407)) b!1274661))

(assert (= (and b!1274661 res!847408) b!1274662))

(declare-fun m!1171297 () Bool)

(assert (=> b!1274662 m!1171297))

(assert (=> b!1274642 d!140123))

(declare-fun d!140129 () Bool)

(declare-fun res!847411 () Bool)

(declare-fun e!727512 () Bool)

(assert (=> d!140129 (=> res!847411 e!727512)))

(assert (=> d!140129 (= res!847411 (or ((_ is Nil!28756) l!595) ((_ is Nil!28756) (t!42299 l!595))))))

(assert (=> d!140129 (= (isStrictlySorted!850 l!595) e!727512)))

(declare-fun b!1274665 () Bool)

(declare-fun e!727513 () Bool)

(assert (=> b!1274665 (= e!727512 e!727513)))

(declare-fun res!847412 () Bool)

(assert (=> b!1274665 (=> (not res!847412) (not e!727513))))

(assert (=> b!1274665 (= res!847412 (bvslt (_1!10799 (h!29964 l!595)) (_1!10799 (h!29964 (t!42299 l!595)))))))

(declare-fun b!1274666 () Bool)

(assert (=> b!1274666 (= e!727513 (isStrictlySorted!850 (t!42299 l!595)))))

(assert (= (and d!140129 (not res!847411)) b!1274665))

(assert (= (and b!1274665 res!847412) b!1274666))

(assert (=> b!1274666 m!1171289))

(assert (=> start!107860 d!140129))

(declare-fun d!140131 () Bool)

(declare-fun res!847435 () Bool)

(declare-fun e!727538 () Bool)

(assert (=> d!140131 (=> res!847435 e!727538)))

(assert (=> d!140131 (= res!847435 (and ((_ is Cons!28755) (t!42299 l!595)) (= (_1!10799 (h!29964 (t!42299 l!595))) key!173)))))

(assert (=> d!140131 (= (containsKey!699 (t!42299 l!595) key!173) e!727538)))

(declare-fun b!1274693 () Bool)

(declare-fun e!727539 () Bool)

(assert (=> b!1274693 (= e!727538 e!727539)))

(declare-fun res!847436 () Bool)

(assert (=> b!1274693 (=> (not res!847436) (not e!727539))))

(assert (=> b!1274693 (= res!847436 (and (or (not ((_ is Cons!28755) (t!42299 l!595))) (bvsle (_1!10799 (h!29964 (t!42299 l!595))) key!173)) ((_ is Cons!28755) (t!42299 l!595)) (bvslt (_1!10799 (h!29964 (t!42299 l!595))) key!173)))))

(declare-fun b!1274694 () Bool)

(assert (=> b!1274694 (= e!727539 (containsKey!699 (t!42299 (t!42299 l!595)) key!173))))

(assert (= (and d!140131 (not res!847435)) b!1274693))

(assert (= (and b!1274693 res!847436) b!1274694))

(declare-fun m!1171305 () Bool)

(assert (=> b!1274694 m!1171305))

(assert (=> b!1274643 d!140131))

(declare-fun b!1274704 () Bool)

(declare-fun e!727547 () Bool)

(declare-fun tp!98034 () Bool)

(assert (=> b!1274704 (= e!727547 (and tp_is_empty!33201 tp!98034))))

(assert (=> b!1274644 (= tp!98025 e!727547)))

(assert (= (and b!1274644 ((_ is Cons!28755) (t!42299 l!595))) b!1274704))

(check-sat (not b!1274704) tp_is_empty!33201 (not b!1274694) (not b!1274662) (not b!1274666))
(check-sat)
