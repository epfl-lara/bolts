; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107272 () Bool)

(assert start!107272)

(declare-fun bm!84038 () Bool)

(declare-datatypes ((T!22062 0))(
  ( (T!22063 (val!3928 Int)) )
))
(declare-datatypes ((List!12107 0))(
  ( (Nil!12083) (Cons!12083 (h!17484 T!22062) (t!112523 List!12107)) )
))
(declare-fun call!84043 () List!12107)

(declare-fun call!84044 () List!12107)

(assert (=> bm!84038 (= call!84043 call!84044)))

(declare-fun b!1204198 () Bool)

(declare-fun e!772582 () Bool)

(declare-fun lt!411636 () List!12107)

(declare-fun e!772580 () List!12107)

(assert (=> b!1204198 (= e!772582 (= lt!411636 e!772580))))

(declare-fun c!200999 () Bool)

(declare-fun until!61 () Int)

(declare-fun lt!411632 () Int)

(assert (=> b!1204198 (= c!200999 (<= (- until!61 1) lt!411632))))

(declare-fun b!1204199 () Bool)

(declare-fun e!772577 () Bool)

(declare-fun tp_is_empty!6059 () Bool)

(declare-fun tp!341785 () Bool)

(assert (=> b!1204199 (= e!772577 (and tp_is_empty!6059 tp!341785))))

(declare-fun b!1204201 () Bool)

(declare-fun res!542406 () Bool)

(declare-fun e!772579 () Bool)

(assert (=> b!1204201 (=> (not res!542406) (not e!772579))))

(declare-fun from!613 () Int)

(assert (=> b!1204201 (= res!542406 (and (= from!613 0) (<= 0 (- until!61 1))))))

(declare-fun b!1204202 () Bool)

(declare-fun e!772578 () Bool)

(assert (=> b!1204202 (= e!772578 e!772579)))

(declare-fun res!542403 () Bool)

(assert (=> b!1204202 (=> (not res!542403) (not e!772579))))

(declare-fun lt!411633 () List!12107)

(declare-fun lt!411630 () List!12107)

(declare-fun tail!1710 (List!12107) List!12107)

(assert (=> b!1204202 (= res!542403 (= (tail!1710 lt!411633) lt!411630))))

(declare-fun lt!411634 () List!12107)

(declare-fun r!2028 () List!12107)

(declare-fun ++!3107 (List!12107 List!12107) List!12107)

(assert (=> b!1204202 (= lt!411630 (++!3107 lt!411634 r!2028))))

(declare-fun l!2744 () List!12107)

(assert (=> b!1204202 (= lt!411634 (tail!1710 l!2744))))

(assert (=> b!1204202 (= lt!411633 (++!3107 l!2744 r!2028))))

(declare-fun e!772583 () Bool)

(declare-fun lt!411635 () Int)

(declare-fun lt!411629 () Int)

(declare-fun b!1204203 () Bool)

(assert (=> b!1204203 (= e!772583 (not (or (> lt!411629 from!613) (let ((bdg!42907 (- from!613 lt!411629))) (let ((bdg!42908 (- until!61 lt!411629))) (and (<= 0 bdg!42907) (<= bdg!42907 bdg!42908) (<= bdg!42908 lt!411635)))))))))

(assert (=> b!1204203 e!772582))

(declare-fun c!201000 () Bool)

(assert (=> b!1204203 (= c!201000 (<= lt!411632 0))))

(declare-fun slice!499 (List!12107 Int Int) List!12107)

(assert (=> b!1204203 (= lt!411636 (slice!499 lt!411630 0 (- until!61 1)))))

(declare-datatypes ((Unit!18476 0))(
  ( (Unit!18477) )
))
(declare-fun lt!411631 () Unit!18476)

(declare-fun sliceLemma!49 (List!12107 List!12107 Int Int) Unit!18476)

(assert (=> b!1204203 (= lt!411631 (sliceLemma!49 lt!411634 r!2028 0 (- until!61 1)))))

(declare-fun b!1204204 () Bool)

(declare-fun e!772584 () Bool)

(declare-fun tp!341784 () Bool)

(assert (=> b!1204204 (= e!772584 (and tp_is_empty!6059 tp!341784))))

(declare-fun b!1204205 () Bool)

(assert (=> b!1204205 (= e!772580 (++!3107 call!84043 (slice!499 r!2028 0 (- (- until!61 1) lt!411632))))))

(declare-fun b!1204206 () Bool)

(assert (=> b!1204206 (= e!772579 e!772583)))

(declare-fun res!542404 () Bool)

(assert (=> b!1204206 (=> (not res!542404) (not e!772583))))

(assert (=> b!1204206 (= res!542404 (<= (- until!61 1) (+ lt!411632 lt!411635)))))

(declare-fun size!9623 (List!12107) Int)

(assert (=> b!1204206 (= lt!411632 (size!9623 lt!411634))))

(declare-fun b!1204207 () Bool)

(declare-fun e!772581 () Bool)

(assert (=> b!1204207 (= e!772581 e!772578)))

(declare-fun res!542405 () Bool)

(assert (=> b!1204207 (=> (not res!542405) (not e!772578))))

(assert (=> b!1204207 (= res!542405 (and (<= until!61 (+ lt!411629 lt!411635)) (not (= l!2744 Nil!12083)) (not (= r!2028 Nil!12083)) (not (= until!61 0))))))

(assert (=> b!1204207 (= lt!411635 (size!9623 r!2028))))

(assert (=> b!1204207 (= lt!411629 (size!9623 l!2744))))

(declare-fun bm!84039 () Bool)

(assert (=> bm!84039 (= call!84044 (slice!499 (ite c!201000 r!2028 lt!411634) (ite c!201000 (- lt!411632) 0) (ite c!201000 (- (- until!61 1) lt!411632) (ite c!200999 (- until!61 1) lt!411632))))))

(declare-fun b!1204208 () Bool)

(assert (=> b!1204208 (= e!772582 (= lt!411636 call!84044))))

(declare-fun res!542402 () Bool)

(assert (=> start!107272 (=> (not res!542402) (not e!772581))))

(assert (=> start!107272 (= res!542402 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107272 e!772581))

(assert (=> start!107272 true))

(assert (=> start!107272 e!772584))

(assert (=> start!107272 e!772577))

(declare-fun b!1204200 () Bool)

(assert (=> b!1204200 (= e!772580 call!84043)))

(assert (= (and start!107272 res!542402) b!1204207))

(assert (= (and b!1204207 res!542405) b!1204202))

(assert (= (and b!1204202 res!542403) b!1204201))

(assert (= (and b!1204201 res!542406) b!1204206))

(assert (= (and b!1204206 res!542404) b!1204203))

(assert (= (and b!1204203 c!201000) b!1204208))

(assert (= (and b!1204203 (not c!201000)) b!1204198))

(assert (= (and b!1204198 c!200999) b!1204200))

(assert (= (and b!1204198 (not c!200999)) b!1204205))

(assert (= (or b!1204200 b!1204205) bm!84038))

(assert (= (or b!1204208 bm!84038) bm!84039))

(get-info :version)

(assert (= (and start!107272 ((_ is Cons!12083) l!2744)) b!1204204))

(assert (= (and start!107272 ((_ is Cons!12083) r!2028)) b!1204199))

(declare-fun m!1379681 () Bool)

(assert (=> b!1204203 m!1379681))

(declare-fun m!1379683 () Bool)

(assert (=> b!1204203 m!1379683))

(declare-fun m!1379685 () Bool)

(assert (=> b!1204202 m!1379685))

(declare-fun m!1379687 () Bool)

(assert (=> b!1204202 m!1379687))

(declare-fun m!1379689 () Bool)

(assert (=> b!1204202 m!1379689))

(declare-fun m!1379691 () Bool)

(assert (=> b!1204202 m!1379691))

(declare-fun m!1379693 () Bool)

(assert (=> b!1204206 m!1379693))

(declare-fun m!1379695 () Bool)

(assert (=> b!1204205 m!1379695))

(assert (=> b!1204205 m!1379695))

(declare-fun m!1379697 () Bool)

(assert (=> b!1204205 m!1379697))

(declare-fun m!1379699 () Bool)

(assert (=> bm!84039 m!1379699))

(declare-fun m!1379701 () Bool)

(assert (=> b!1204207 m!1379701))

(declare-fun m!1379703 () Bool)

(assert (=> b!1204207 m!1379703))

(check-sat (not bm!84039) tp_is_empty!6059 (not b!1204202) (not b!1204205) (not b!1204204) (not b!1204207) (not b!1204199) (not b!1204203) (not b!1204206))
(check-sat)
