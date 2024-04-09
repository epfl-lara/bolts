; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!5178 () Bool)

(assert start!5178)

(declare-fun res!22843 () Bool)

(declare-fun e!24026 () Bool)

(assert (=> start!5178 (=> (not res!22843) (not e!24026))))

(declare-datatypes ((B!778 0))(
  ( (B!779 (val!889 Int)) )
))
(declare-fun b!99 () B!778)

(declare-datatypes ((tuple2!1442 0))(
  ( (tuple2!1443 (_1!731 (_ BitVec 64)) (_2!731 B!778)) )
))
(declare-datatypes ((List!1015 0))(
  ( (Nil!1012) (Cons!1011 (h!1579 tuple2!1442) (t!3856 List!1015)) )
))
(declare-datatypes ((ListLongMap!1023 0))(
  ( (ListLongMap!1024 (toList!527 List!1015)) )
))
(declare-fun lm!264 () ListLongMap!1023)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!475 (List!1015 tuple2!1442) Bool)

(assert (=> start!5178 (= res!22843 (contains!475 (toList!527 lm!264) (tuple2!1443 a!526 b!99)))))

(assert (=> start!5178 e!24026))

(declare-fun e!24027 () Bool)

(declare-fun inv!1684 (ListLongMap!1023) Bool)

(assert (=> start!5178 (and (inv!1684 lm!264) e!24027)))

(assert (=> start!5178 true))

(declare-fun tp_is_empty!1701 () Bool)

(assert (=> start!5178 tp_is_empty!1701))

(declare-fun b!37880 () Bool)

(declare-fun isStrictlySorted!191 (List!1015) Bool)

(assert (=> b!37880 (= e!24026 (not (isStrictlySorted!191 (toList!527 lm!264))))))

(declare-fun b!37881 () Bool)

(declare-fun tp!5609 () Bool)

(assert (=> b!37881 (= e!24027 tp!5609)))

(assert (= (and start!5178 res!22843) b!37880))

(assert (= start!5178 b!37881))

(declare-fun m!30623 () Bool)

(assert (=> start!5178 m!30623))

(declare-fun m!30625 () Bool)

(assert (=> start!5178 m!30625))

(declare-fun m!30627 () Bool)

(assert (=> b!37880 m!30627))

(check-sat (not b!37880) (not start!5178) (not b!37881) tp_is_empty!1701)
(check-sat)
(get-model)

(declare-fun d!6133 () Bool)

(declare-fun res!22875 () Bool)

(declare-fun e!24068 () Bool)

(assert (=> d!6133 (=> res!22875 e!24068)))

(get-info :version)

(assert (=> d!6133 (= res!22875 (or ((_ is Nil!1012) (toList!527 lm!264)) ((_ is Nil!1012) (t!3856 (toList!527 lm!264)))))))

(assert (=> d!6133 (= (isStrictlySorted!191 (toList!527 lm!264)) e!24068)))

(declare-fun b!37926 () Bool)

(declare-fun e!24069 () Bool)

(assert (=> b!37926 (= e!24068 e!24069)))

(declare-fun res!22876 () Bool)

(assert (=> b!37926 (=> (not res!22876) (not e!24069))))

(assert (=> b!37926 (= res!22876 (bvslt (_1!731 (h!1579 (toList!527 lm!264))) (_1!731 (h!1579 (t!3856 (toList!527 lm!264))))))))

(declare-fun b!37927 () Bool)

(assert (=> b!37927 (= e!24069 (isStrictlySorted!191 (t!3856 (toList!527 lm!264))))))

(assert (= (and d!6133 (not res!22875)) b!37926))

(assert (= (and b!37926 res!22876) b!37927))

(declare-fun m!30651 () Bool)

(assert (=> b!37927 m!30651))

(assert (=> b!37880 d!6133))

(declare-fun d!6143 () Bool)

(declare-fun lt!13945 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!21 (List!1015) (InoxSet tuple2!1442))

(assert (=> d!6143 (= lt!13945 (select (content!21 (toList!527 lm!264)) (tuple2!1443 a!526 b!99)))))

(declare-fun e!24074 () Bool)

(assert (=> d!6143 (= lt!13945 e!24074)))

(declare-fun res!22881 () Bool)

(assert (=> d!6143 (=> (not res!22881) (not e!24074))))

(assert (=> d!6143 (= res!22881 ((_ is Cons!1011) (toList!527 lm!264)))))

(assert (=> d!6143 (= (contains!475 (toList!527 lm!264) (tuple2!1443 a!526 b!99)) lt!13945)))

(declare-fun b!37932 () Bool)

(declare-fun e!24075 () Bool)

(assert (=> b!37932 (= e!24074 e!24075)))

(declare-fun res!22882 () Bool)

(assert (=> b!37932 (=> res!22882 e!24075)))

(assert (=> b!37932 (= res!22882 (= (h!1579 (toList!527 lm!264)) (tuple2!1443 a!526 b!99)))))

(declare-fun b!37933 () Bool)

(assert (=> b!37933 (= e!24075 (contains!475 (t!3856 (toList!527 lm!264)) (tuple2!1443 a!526 b!99)))))

(assert (= (and d!6143 res!22881) b!37932))

(assert (= (and b!37932 (not res!22882)) b!37933))

