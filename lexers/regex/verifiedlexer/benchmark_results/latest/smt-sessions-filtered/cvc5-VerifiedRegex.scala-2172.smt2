; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107778 () Bool)

(assert start!107778)

(declare-fun b!1210028 () Bool)

(declare-fun res!544050 () Bool)

(declare-fun e!776221 () Bool)

(assert (=> b!1210028 (=> (not res!544050) (not e!776221))))

(declare-fun lt!414044 () Bool)

(assert (=> b!1210028 (= res!544050 (not lt!414044))))

(declare-fun b!1210029 () Bool)

(declare-fun e!776223 () Bool)

(assert (=> b!1210029 (= e!776223 true)))

(declare-fun lt!414047 () Bool)

(declare-datatypes ((B!1299 0))(
  ( (B!1300 (val!4007 Int)) )
))
(declare-datatypes ((List!12254 0))(
  ( (Nil!12196) (Cons!12196 (h!17597 B!1299) (t!112638 List!12254)) )
))
(declare-fun lt!414045 () List!12254)

(declare-fun contains!2025 (List!12254 B!1299) Bool)

(assert (=> b!1210029 (= lt!414047 (contains!2025 lt!414045 (h!17597 lt!414045)))))

(declare-fun setNonEmpty!7849 () Bool)

(declare-fun setRes!7849 () Bool)

(declare-fun tp!342764 () Bool)

(declare-fun tp_is_empty!6157 () Bool)

(assert (=> setNonEmpty!7849 (= setRes!7849 (and tp!342764 tp_is_empty!6157))))

(declare-fun s!1510 () (Set B!1299))

(declare-fun setElem!7849 () B!1299)

(declare-fun setRest!7849 () (Set B!1299))

(assert (=> setNonEmpty!7849 (= s!1510 (set.union (set.insert setElem!7849 (as set.empty (Set B!1299))) setRest!7849))))

(declare-fun b!1210030 () Bool)

(declare-fun e!776222 () Bool)

(assert (=> b!1210030 (= e!776222 e!776221)))

(declare-fun res!544047 () Bool)

(assert (=> b!1210030 (=> (not res!544047) (not e!776221))))

(declare-fun e!776220 () Bool)

(assert (=> b!1210030 (= res!544047 e!776220)))

(declare-fun res!544046 () Bool)

(assert (=> b!1210030 (=> res!544046 e!776220)))

(assert (=> b!1210030 (= res!544046 lt!414044)))

(assert (=> b!1210030 (= lt!414044 (not (is-Cons!12196 lt!414045)))))

(declare-fun toList!668 ((Set B!1299)) List!12254)

(assert (=> b!1210030 (= lt!414045 (toList!668 s!1510))))

(declare-fun setIsEmpty!7849 () Bool)

(assert (=> setIsEmpty!7849 setRes!7849))

(declare-fun b!1210032 () Bool)

(declare-fun isEmpty!7282 (List!12254) Bool)

(assert (=> b!1210032 (= e!776220 (not (isEmpty!7282 (t!112638 lt!414045))))))

(declare-fun b!1210031 () Bool)

(assert (=> b!1210031 (= e!776221 (not e!776223))))

(declare-fun res!544048 () Bool)

(assert (=> b!1210031 (=> res!544048 e!776223)))

(declare-fun lt!414048 () List!12254)

(assert (=> b!1210031 (= res!544048 (or (not (= lt!414045 (Cons!12196 (h!17597 lt!414045) (t!112638 lt!414045)))) (not (= lt!414048 (t!112638 lt!414045))) (not (= (t!112638 lt!414045) lt!414048))))))

(declare-fun tail!1763 (List!12254) List!12254)

(assert (=> b!1210031 (= lt!414048 (tail!1763 lt!414045))))

(declare-fun -!73 (List!12254 B!1299) List!12254)

(assert (=> b!1210031 (= lt!414048 (-!73 lt!414045 (h!17597 lt!414045)))))

(declare-datatypes ((Unit!18570 0))(
  ( (Unit!18571) )
))
(declare-fun lt!414046 () Unit!18570)

(declare-fun lemmaNoDuplicateMinusHeadSameAsTail!1 (List!12254 B!1299) Unit!18570)

(assert (=> b!1210031 (= lt!414046 (lemmaNoDuplicateMinusHeadSameAsTail!1 lt!414045 (h!17597 lt!414045)))))

(declare-fun res!544049 () Bool)

(assert (=> start!107778 (=> (not res!544049) (not e!776222))))

(assert (=> start!107778 (= res!544049 (not (= s!1510 (as set.empty (Set B!1299)))))))

(assert (=> start!107778 e!776222))

(declare-fun condSetEmpty!7849 () Bool)

(assert (=> start!107778 (= condSetEmpty!7849 (= s!1510 (as set.empty (Set B!1299))))))

(assert (=> start!107778 setRes!7849))

(assert (= (and start!107778 res!544049) b!1210030))

(assert (= (and b!1210030 (not res!544046)) b!1210032))

(assert (= (and b!1210030 res!544047) b!1210028))

(assert (= (and b!1210028 res!544050) b!1210031))

(assert (= (and b!1210031 (not res!544048)) b!1210029))

(assert (= (and start!107778 condSetEmpty!7849) setIsEmpty!7849))

(assert (= (and start!107778 (not condSetEmpty!7849)) setNonEmpty!7849))

(declare-fun m!1386015 () Bool)

(assert (=> b!1210029 m!1386015))

(declare-fun m!1386017 () Bool)

(assert (=> b!1210030 m!1386017))

(declare-fun m!1386019 () Bool)

(assert (=> b!1210032 m!1386019))

(declare-fun m!1386021 () Bool)

(assert (=> b!1210031 m!1386021))

(declare-fun m!1386023 () Bool)

(assert (=> b!1210031 m!1386023))

(declare-fun m!1386025 () Bool)

(assert (=> b!1210031 m!1386025))

(push 1)

(assert (not b!1210031))

(assert (not b!1210030))

(assert (not b!1210032))

(assert (not b!1210029))

(assert (not setNonEmpty!7849))

(assert tp_is_empty!6157)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

