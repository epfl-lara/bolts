; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134222 () Bool)

(assert start!134222)

(declare-fun b!1567672 () Bool)

(declare-fun res!1071497 () Bool)

(declare-fun e!873906 () Bool)

(assert (=> b!1567672 (=> (not res!1071497) (not e!873906))))

(declare-datatypes ((List!36837 0))(
  ( (Nil!36834) (Cons!36833 (h!38281 (_ BitVec 64)) (t!51752 List!36837)) )
))
(declare-fun acc!619 () List!36837)

(declare-fun contains!10396 (List!36837 (_ BitVec 64)) Bool)

(assert (=> b!1567672 (= res!1071497 (not (contains!10396 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1071501 () Bool)

(assert (=> start!134222 (=> (not res!1071501) (not e!873906))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104695 0))(
  ( (array!104696 (arr!50526 (Array (_ BitVec 32) (_ BitVec 64))) (size!51077 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104695)

(assert (=> start!134222 (= res!1071501 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51077 a!3481)) (bvslt (size!51077 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134222 e!873906))

(assert (=> start!134222 true))

(declare-fun array_inv!39171 (array!104695) Bool)

(assert (=> start!134222 (array_inv!39171 a!3481)))

(declare-fun b!1567673 () Bool)

(declare-fun e!873905 () Bool)

(declare-fun noDuplicate!2687 (List!36837) Bool)

(assert (=> b!1567673 (= e!873905 (not (noDuplicate!2687 (Cons!36833 (select (arr!50526 a!3481) from!2856) acc!619))))))

(declare-fun b!1567674 () Bool)

(declare-fun res!1071503 () Bool)

(assert (=> b!1567674 (=> (not res!1071503) (not e!873906))))

(assert (=> b!1567674 (= res!1071503 (noDuplicate!2687 acc!619))))

(declare-fun b!1567675 () Bool)

(assert (=> b!1567675 (= e!873906 e!873905)))

(declare-fun res!1071496 () Bool)

(assert (=> b!1567675 (=> (not res!1071496) (not e!873905))))

(declare-fun e!873903 () Bool)

(assert (=> b!1567675 (= res!1071496 e!873903)))

(declare-fun res!1071498 () Bool)

(assert (=> b!1567675 (=> res!1071498 e!873903)))

(declare-fun lt!672970 () Bool)

(assert (=> b!1567675 (= res!1071498 lt!672970)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567675 (= lt!672970 (not (validKeyInArray!0 (select (arr!50526 a!3481) from!2856))))))

(declare-fun b!1567676 () Bool)

(declare-fun res!1071499 () Bool)

(assert (=> b!1567676 (=> (not res!1071499) (not e!873905))))

(assert (=> b!1567676 (= res!1071499 (and (not lt!672970) (bvsge (bvadd #b00000000000000000000000000000001 from!2856) #b00000000000000000000000000000000)))))

(declare-fun b!1567677 () Bool)

(assert (=> b!1567677 (= e!873903 (not (contains!10396 acc!619 (select (arr!50526 a!3481) from!2856))))))

(declare-fun b!1567678 () Bool)

(declare-fun res!1071500 () Bool)

(assert (=> b!1567678 (=> (not res!1071500) (not e!873906))))

(assert (=> b!1567678 (= res!1071500 (bvslt from!2856 (size!51077 a!3481)))))

(declare-fun b!1567679 () Bool)

(declare-fun res!1071502 () Bool)

(assert (=> b!1567679 (=> (not res!1071502) (not e!873906))))

(assert (=> b!1567679 (= res!1071502 (not (contains!10396 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!134222 res!1071501) b!1567674))

(assert (= (and b!1567674 res!1071503) b!1567672))

(assert (= (and b!1567672 res!1071497) b!1567679))

(assert (= (and b!1567679 res!1071502) b!1567678))

(assert (= (and b!1567678 res!1071500) b!1567675))

(assert (= (and b!1567675 (not res!1071498)) b!1567677))

(assert (= (and b!1567675 res!1071496) b!1567676))

(assert (= (and b!1567676 res!1071499) b!1567673))

(declare-fun m!1442475 () Bool)

(assert (=> b!1567677 m!1442475))

(assert (=> b!1567677 m!1442475))

(declare-fun m!1442477 () Bool)

(assert (=> b!1567677 m!1442477))

(declare-fun m!1442479 () Bool)

(assert (=> b!1567679 m!1442479))

(declare-fun m!1442481 () Bool)

(assert (=> b!1567674 m!1442481))

(declare-fun m!1442483 () Bool)

(assert (=> start!134222 m!1442483))

(assert (=> b!1567675 m!1442475))

(assert (=> b!1567675 m!1442475))

(declare-fun m!1442485 () Bool)

(assert (=> b!1567675 m!1442485))

(assert (=> b!1567673 m!1442475))

(declare-fun m!1442487 () Bool)

(assert (=> b!1567673 m!1442487))

(declare-fun m!1442489 () Bool)

(assert (=> b!1567672 m!1442489))

(push 1)

(assert (not b!1567673))

(assert (not start!134222))

(assert (not b!1567675))

(assert (not b!1567674))

(assert (not b!1567679))

(assert (not b!1567677))

(assert (not b!1567672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163551 () Bool)

(assert (=> d!163551 (= (array_inv!39171 a!3481) (bvsge (size!51077 a!3481) #b00000000000000000000000000000000))))

(assert (=> start!134222 d!163551))

(declare-fun d!163553 () Bool)

(assert (=> d!163553 (= (validKeyInArray!0 (select (arr!50526 a!3481) from!2856)) (and (not (= (select (arr!50526 a!3481) from!2856) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50526 a!3481) from!2856) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1567675 d!163553))

(declare-fun d!163557 () Bool)

(declare-fun lt!672976 () Bool)

(declare-fun content!816 (List!36837) (Set (_ BitVec 64)))

(assert (=> d!163557 (= lt!672976 (member (select (arr!50526 a!3481) from!2856) (content!816 acc!619)))))

(declare-fun e!873924 () Bool)

(assert (=> d!163557 (= lt!672976 e!873924)))

(declare-fun res!1071521 () Bool)

(assert (=> d!163557 (=> (not res!1071521) (not e!873924))))

(assert (=> d!163557 (= res!1071521 (is-Cons!36833 acc!619))))

(assert (=> d!163557 (= (contains!10396 acc!619 (select (arr!50526 a!3481) from!2856)) lt!672976)))

(declare-fun b!1567696 () Bool)

(declare-fun e!873923 () Bool)

(assert (=> b!1567696 (= e!873924 e!873923)))

(declare-fun res!1071520 () Bool)

(assert (=> b!1567696 (=> res!1071520 e!873923)))

(assert (=> b!1567696 (= res!1071520 (= (h!38281 acc!619) (select (arr!50526 a!3481) from!2856)))))

(declare-fun b!1567697 () Bool)

(assert (=> b!1567697 (= e!873923 (contains!10396 (t!51752 acc!619) (select (arr!50526 a!3481) from!2856)))))

(assert (= (and d!163557 res!1071521) b!1567696))

(assert (= (and b!1567696 (not res!1071520)) b!1567697))

(declare-fun m!1442501 () Bool)

(assert (=> d!163557 m!1442501))

(assert (=> d!163557 m!1442475))

(declare-fun m!1442503 () Bool)

(assert (=> d!163557 m!1442503))

(assert (=> b!1567697 m!1442475))

(declare-fun m!1442505 () Bool)

(assert (=> b!1567697 m!1442505))

(assert (=> b!1567677 d!163557))

(declare-fun d!163567 () Bool)

(declare-fun lt!672978 () Bool)

(assert (=> d!163567 (= lt!672978 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!816 acc!619)))))

(declare-fun e!873930 () Bool)

(assert (=> d!163567 (= lt!672978 e!873930)))

(declare-fun res!1071527 () Bool)

(assert (=> d!163567 (=> (not res!1071527) (not e!873930))))

(assert (=> d!163567 (= res!1071527 (is-Cons!36833 acc!619))))

(assert (=> d!163567 (= (contains!10396 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000) lt!672978)))

(declare-fun b!1567702 () Bool)

(declare-fun e!873929 () Bool)

(assert (=> b!1567702 (= e!873930 e!873929)))

(declare-fun res!1071526 () Bool)

(assert (=> b!1567702 (=> res!1071526 e!873929)))

(assert (=> b!1567702 (= res!1071526 (= (h!38281 acc!619) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567703 () Bool)

(assert (=> b!1567703 (= e!873929 (contains!10396 (t!51752 acc!619) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163567 res!1071527) b!1567702))

(assert (= (and b!1567702 (not res!1071526)) b!1567703))

(assert (=> d!163567 m!1442501))

(declare-fun m!1442515 () Bool)

(assert (=> d!163567 m!1442515))

(declare-fun m!1442517 () Bool)

(assert (=> b!1567703 m!1442517))

(assert (=> b!1567672 d!163567))

(declare-fun d!163573 () Bool)

(declare-fun res!1071544 () Bool)

(declare-fun e!873947 () Bool)

(assert (=> d!163573 (=> res!1071544 e!873947)))

(assert (=> d!163573 (= res!1071544 (is-Nil!36834 (Cons!36833 (select (arr!50526 a!3481) from!2856) acc!619)))))

(assert (=> d!163573 (= (noDuplicate!2687 (Cons!36833 (select (arr!50526 a!3481) from!2856) acc!619)) e!873947)))

(declare-fun b!1567720 () Bool)

(declare-fun e!873948 () Bool)

(assert (=> b!1567720 (= e!873947 e!873948)))

(declare-fun res!1071545 () Bool)

(assert (=> b!1567720 (=> (not res!1071545) (not e!873948))))

(assert (=> b!1567720 (= res!1071545 (not (contains!10396 (t!51752 (Cons!36833 (select (arr!50526 a!3481) from!2856) acc!619)) (h!38281 (Cons!36833 (select (arr!50526 a!3481) from!2856) acc!619)))))))

(declare-fun b!1567721 () Bool)

(assert (=> b!1567721 (= e!873948 (noDuplicate!2687 (t!51752 (Cons!36833 (select (arr!50526 a!3481) from!2856) acc!619))))))

(assert (= (and d!163573 (not res!1071544)) b!1567720))

(assert (= (and b!1567720 res!1071545) b!1567721))

(declare-fun m!1442529 () Bool)

(assert (=> b!1567720 m!1442529))

(declare-fun m!1442531 () Bool)

(assert (=> b!1567721 m!1442531))

(assert (=> b!1567673 d!163573))

(declare-fun d!163579 () Bool)

(declare-fun lt!672982 () Bool)

(assert (=> d!163579 (= lt!672982 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!816 acc!619)))))

(declare-fun e!873950 () Bool)

(assert (=> d!163579 (= lt!672982 e!873950)))

(declare-fun res!1071547 () Bool)

(assert (=> d!163579 (=> (not res!1071547) (not e!873950))))

(assert (=> d!163579 (= res!1071547 (is-Cons!36833 acc!619))))

(assert (=> d!163579 (= (contains!10396 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000) lt!672982)))

(declare-fun b!1567722 () Bool)

(declare-fun e!873949 () Bool)

(assert (=> b!1567722 (= e!873950 e!873949)))

(declare-fun res!1071546 () Bool)

(assert (=> b!1567722 (=> res!1071546 e!873949)))

(assert (=> b!1567722 (= res!1071546 (= (h!38281 acc!619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567723 () Bool)

(assert (=> b!1567723 (= e!873949 (contains!10396 (t!51752 acc!619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163579 res!1071547) b!1567722))

(assert (= (and b!1567722 (not res!1071546)) b!1567723))

(assert (=> d!163579 m!1442501))

(declare-fun m!1442533 () Bool)

(assert (=> d!163579 m!1442533))

(declare-fun m!1442535 () Bool)

(assert (=> b!1567723 m!1442535))

(assert (=> b!1567679 d!163579))

(declare-fun d!163583 () Bool)

(declare-fun res!1071550 () Bool)

(declare-fun e!873953 () Bool)

(assert (=> d!163583 (=> res!1071550 e!873953)))

(assert (=> d!163583 (= res!1071550 (is-Nil!36834 acc!619))))

(assert (=> d!163583 (= (noDuplicate!2687 acc!619) e!873953)))

(declare-fun b!1567726 () Bool)

(declare-fun e!873954 () Bool)

(assert (=> b!1567726 (= e!873953 e!873954)))

(declare-fun res!1071551 () Bool)

(assert (=> b!1567726 (=> (not res!1071551) (not e!873954))))

(assert (=> b!1567726 (= res!1071551 (not (contains!10396 (t!51752 acc!619) (h!38281 acc!619))))))

(declare-fun b!1567727 () Bool)

(assert (=> b!1567727 (= e!873954 (noDuplicate!2687 (t!51752 acc!619)))))

(assert (= (and d!163583 (not res!1071550)) b!1567726))

(assert (= (and b!1567726 res!1071551) b!1567727))

