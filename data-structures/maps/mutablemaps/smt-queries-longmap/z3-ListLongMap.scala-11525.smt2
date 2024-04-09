; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134220 () Bool)

(assert start!134220)

(declare-datatypes ((array!104693 0))(
  ( (array!104694 (arr!50525 (Array (_ BitVec 32) (_ BitVec 64))) (size!51076 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104693)

(declare-datatypes ((List!36836 0))(
  ( (Nil!36833) (Cons!36832 (h!38280 (_ BitVec 64)) (t!51751 List!36836)) )
))
(declare-fun acc!619 () List!36836)

(declare-fun e!873894 () Bool)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun b!1567648 () Bool)

(declare-fun contains!10395 (List!36836 (_ BitVec 64)) Bool)

(assert (=> b!1567648 (= e!873894 (not (contains!10395 acc!619 (select (arr!50525 a!3481) from!2856))))))

(declare-fun b!1567649 () Bool)

(declare-fun e!873892 () Bool)

(declare-fun e!873893 () Bool)

(assert (=> b!1567649 (= e!873892 e!873893)))

(declare-fun res!1071479 () Bool)

(assert (=> b!1567649 (=> (not res!1071479) (not e!873893))))

(assert (=> b!1567649 (= res!1071479 e!873894)))

(declare-fun res!1071472 () Bool)

(assert (=> b!1567649 (=> res!1071472 e!873894)))

(declare-fun lt!672967 () Bool)

(assert (=> b!1567649 (= res!1071472 lt!672967)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567649 (= lt!672967 (not (validKeyInArray!0 (select (arr!50525 a!3481) from!2856))))))

(declare-fun b!1567650 () Bool)

(declare-fun res!1071477 () Bool)

(assert (=> b!1567650 (=> (not res!1071477) (not e!873893))))

(assert (=> b!1567650 (= res!1071477 (and (not lt!672967) (bvsge (bvadd #b00000000000000000000000000000001 from!2856) #b00000000000000000000000000000000)))))

(declare-fun b!1567651 () Bool)

(declare-fun noDuplicate!2686 (List!36836) Bool)

(assert (=> b!1567651 (= e!873893 (not (noDuplicate!2686 (Cons!36832 (select (arr!50525 a!3481) from!2856) acc!619))))))

(declare-fun b!1567652 () Bool)

(declare-fun res!1071478 () Bool)

(assert (=> b!1567652 (=> (not res!1071478) (not e!873892))))

(assert (=> b!1567652 (= res!1071478 (not (contains!10395 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1071476 () Bool)

(assert (=> start!134220 (=> (not res!1071476) (not e!873892))))

(assert (=> start!134220 (= res!1071476 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51076 a!3481)) (bvslt (size!51076 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134220 e!873892))

(assert (=> start!134220 true))

(declare-fun array_inv!39170 (array!104693) Bool)

(assert (=> start!134220 (array_inv!39170 a!3481)))

(declare-fun b!1567653 () Bool)

(declare-fun res!1071475 () Bool)

(assert (=> b!1567653 (=> (not res!1071475) (not e!873892))))

(assert (=> b!1567653 (= res!1071475 (not (contains!10395 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567654 () Bool)

(declare-fun res!1071474 () Bool)

(assert (=> b!1567654 (=> (not res!1071474) (not e!873892))))

(assert (=> b!1567654 (= res!1071474 (noDuplicate!2686 acc!619))))

(declare-fun b!1567655 () Bool)

(declare-fun res!1071473 () Bool)

(assert (=> b!1567655 (=> (not res!1071473) (not e!873892))))

(assert (=> b!1567655 (= res!1071473 (bvslt from!2856 (size!51076 a!3481)))))

(assert (= (and start!134220 res!1071476) b!1567654))

(assert (= (and b!1567654 res!1071474) b!1567653))

(assert (= (and b!1567653 res!1071475) b!1567652))

(assert (= (and b!1567652 res!1071478) b!1567655))

(assert (= (and b!1567655 res!1071473) b!1567649))

(assert (= (and b!1567649 (not res!1071472)) b!1567648))

(assert (= (and b!1567649 res!1071479) b!1567650))

(assert (= (and b!1567650 res!1071477) b!1567651))

(declare-fun m!1442459 () Bool)

(assert (=> b!1567651 m!1442459))

(declare-fun m!1442461 () Bool)

(assert (=> b!1567651 m!1442461))

(assert (=> b!1567648 m!1442459))

(assert (=> b!1567648 m!1442459))

(declare-fun m!1442463 () Bool)

(assert (=> b!1567648 m!1442463))

(declare-fun m!1442465 () Bool)

(assert (=> b!1567654 m!1442465))

(declare-fun m!1442467 () Bool)

(assert (=> start!134220 m!1442467))

(assert (=> b!1567649 m!1442459))

(assert (=> b!1567649 m!1442459))

(declare-fun m!1442469 () Bool)

(assert (=> b!1567649 m!1442469))

(declare-fun m!1442471 () Bool)

(assert (=> b!1567653 m!1442471))

(declare-fun m!1442473 () Bool)

(assert (=> b!1567652 m!1442473))

(check-sat (not b!1567649) (not b!1567652) (not start!134220) (not b!1567648) (not b!1567653) (not b!1567651) (not b!1567654))
(check-sat)
(get-model)

(declare-fun d!163555 () Bool)

(declare-fun lt!672975 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!815 (List!36836) (InoxSet (_ BitVec 64)))

(assert (=> d!163555 (= lt!672975 (select (content!815 acc!619) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!873921 () Bool)

(assert (=> d!163555 (= lt!672975 e!873921)))

(declare-fun res!1071518 () Bool)

(assert (=> d!163555 (=> (not res!1071518) (not e!873921))))

(get-info :version)

(assert (=> d!163555 (= res!1071518 ((_ is Cons!36832) acc!619))))

(assert (=> d!163555 (= (contains!10395 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672975)))

(declare-fun b!1567694 () Bool)

(declare-fun e!873922 () Bool)

(assert (=> b!1567694 (= e!873921 e!873922)))

(declare-fun res!1071519 () Bool)

(assert (=> b!1567694 (=> res!1071519 e!873922)))

(assert (=> b!1567694 (= res!1071519 (= (h!38280 acc!619) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567695 () Bool)

(assert (=> b!1567695 (= e!873922 (contains!10395 (t!51751 acc!619) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163555 res!1071518) b!1567694))

(assert (= (and b!1567694 (not res!1071519)) b!1567695))

(declare-fun m!1442495 () Bool)

(assert (=> d!163555 m!1442495))

(declare-fun m!1442497 () Bool)

(assert (=> d!163555 m!1442497))

(declare-fun m!1442499 () Bool)

(assert (=> b!1567695 m!1442499))

(assert (=> b!1567653 d!163555))

(declare-fun lt!672977 () Bool)

(declare-fun d!163563 () Bool)

(assert (=> d!163563 (= lt!672977 (select (content!815 acc!619) (select (arr!50525 a!3481) from!2856)))))

(declare-fun e!873925 () Bool)

(assert (=> d!163563 (= lt!672977 e!873925)))

(declare-fun res!1071522 () Bool)

(assert (=> d!163563 (=> (not res!1071522) (not e!873925))))

(assert (=> d!163563 (= res!1071522 ((_ is Cons!36832) acc!619))))

(assert (=> d!163563 (= (contains!10395 acc!619 (select (arr!50525 a!3481) from!2856)) lt!672977)))

(declare-fun b!1567698 () Bool)

(declare-fun e!873926 () Bool)

(assert (=> b!1567698 (= e!873925 e!873926)))

(declare-fun res!1071523 () Bool)

(assert (=> b!1567698 (=> res!1071523 e!873926)))

(assert (=> b!1567698 (= res!1071523 (= (h!38280 acc!619) (select (arr!50525 a!3481) from!2856)))))

(declare-fun b!1567699 () Bool)

(assert (=> b!1567699 (= e!873926 (contains!10395 (t!51751 acc!619) (select (arr!50525 a!3481) from!2856)))))

(assert (= (and d!163563 res!1071522) b!1567698))

(assert (= (and b!1567698 (not res!1071523)) b!1567699))

(assert (=> d!163563 m!1442495))

(assert (=> d!163563 m!1442459))

(declare-fun m!1442507 () Bool)

(assert (=> d!163563 m!1442507))

(assert (=> b!1567699 m!1442459))

(declare-fun m!1442511 () Bool)

(assert (=> b!1567699 m!1442511))

(assert (=> b!1567648 d!163563))

(declare-fun d!163569 () Bool)

(declare-fun res!1071542 () Bool)

(declare-fun e!873945 () Bool)

(assert (=> d!163569 (=> res!1071542 e!873945)))

(assert (=> d!163569 (= res!1071542 ((_ is Nil!36833) acc!619))))

(assert (=> d!163569 (= (noDuplicate!2686 acc!619) e!873945)))

(declare-fun b!1567718 () Bool)

(declare-fun e!873946 () Bool)

(assert (=> b!1567718 (= e!873945 e!873946)))

(declare-fun res!1071543 () Bool)

(assert (=> b!1567718 (=> (not res!1071543) (not e!873946))))

(assert (=> b!1567718 (= res!1071543 (not (contains!10395 (t!51751 acc!619) (h!38280 acc!619))))))

(declare-fun b!1567719 () Bool)

(assert (=> b!1567719 (= e!873946 (noDuplicate!2686 (t!51751 acc!619)))))

(assert (= (and d!163569 (not res!1071542)) b!1567718))

(assert (= (and b!1567718 res!1071543) b!1567719))

(declare-fun m!1442525 () Bool)

(assert (=> b!1567718 m!1442525))

(declare-fun m!1442527 () Bool)

(assert (=> b!1567719 m!1442527))

(assert (=> b!1567654 d!163569))

(declare-fun d!163577 () Bool)

(assert (=> d!163577 (= (validKeyInArray!0 (select (arr!50525 a!3481) from!2856)) (and (not (= (select (arr!50525 a!3481) from!2856) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50525 a!3481) from!2856) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1567649 d!163577))

(declare-fun d!163587 () Bool)

(assert (=> d!163587 (= (array_inv!39170 a!3481) (bvsge (size!51076 a!3481) #b00000000000000000000000000000000))))

(assert (=> start!134220 d!163587))

(declare-fun d!163589 () Bool)

(declare-fun res!1071554 () Bool)

(declare-fun e!873957 () Bool)

(assert (=> d!163589 (=> res!1071554 e!873957)))

(assert (=> d!163589 (= res!1071554 ((_ is Nil!36833) (Cons!36832 (select (arr!50525 a!3481) from!2856) acc!619)))))

(assert (=> d!163589 (= (noDuplicate!2686 (Cons!36832 (select (arr!50525 a!3481) from!2856) acc!619)) e!873957)))

(declare-fun b!1567730 () Bool)

(declare-fun e!873958 () Bool)

(assert (=> b!1567730 (= e!873957 e!873958)))

(declare-fun res!1071555 () Bool)

(assert (=> b!1567730 (=> (not res!1071555) (not e!873958))))

(assert (=> b!1567730 (= res!1071555 (not (contains!10395 (t!51751 (Cons!36832 (select (arr!50525 a!3481) from!2856) acc!619)) (h!38280 (Cons!36832 (select (arr!50525 a!3481) from!2856) acc!619)))))))

(declare-fun b!1567731 () Bool)

(assert (=> b!1567731 (= e!873958 (noDuplicate!2686 (t!51751 (Cons!36832 (select (arr!50525 a!3481) from!2856) acc!619))))))

(assert (= (and d!163589 (not res!1071554)) b!1567730))

(assert (= (and b!1567730 res!1071555) b!1567731))

(declare-fun m!1442549 () Bool)

(assert (=> b!1567730 m!1442549))

(declare-fun m!1442551 () Bool)

(assert (=> b!1567731 m!1442551))

(assert (=> b!1567651 d!163589))

(declare-fun d!163591 () Bool)

(declare-fun lt!672985 () Bool)

(assert (=> d!163591 (= lt!672985 (select (content!815 acc!619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!873959 () Bool)

(assert (=> d!163591 (= lt!672985 e!873959)))

(declare-fun res!1071556 () Bool)

(assert (=> d!163591 (=> (not res!1071556) (not e!873959))))

(assert (=> d!163591 (= res!1071556 ((_ is Cons!36832) acc!619))))

(assert (=> d!163591 (= (contains!10395 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000) lt!672985)))

(declare-fun b!1567732 () Bool)

(declare-fun e!873960 () Bool)

(assert (=> b!1567732 (= e!873959 e!873960)))

(declare-fun res!1071557 () Bool)

(assert (=> b!1567732 (=> res!1071557 e!873960)))

(assert (=> b!1567732 (= res!1071557 (= (h!38280 acc!619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567733 () Bool)

(assert (=> b!1567733 (= e!873960 (contains!10395 (t!51751 acc!619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163591 res!1071556) b!1567732))

(assert (= (and b!1567732 (not res!1071557)) b!1567733))

(assert (=> d!163591 m!1442495))

(declare-fun m!1442553 () Bool)

(assert (=> d!163591 m!1442553))

(declare-fun m!1442555 () Bool)

(assert (=> b!1567733 m!1442555))

(assert (=> b!1567652 d!163591))

(check-sat (not b!1567699) (not d!163591) (not b!1567731) (not d!163563) (not b!1567730) (not b!1567695) (not b!1567733) (not b!1567719) (not b!1567718) (not d!163555))
(check-sat)
