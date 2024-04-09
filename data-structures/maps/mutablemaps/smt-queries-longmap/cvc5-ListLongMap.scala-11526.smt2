; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134248 () Bool)

(assert start!134248)

(declare-fun b!1567756 () Bool)

(declare-fun e!873977 () Bool)

(declare-fun e!873975 () Bool)

(assert (=> b!1567756 (= e!873977 e!873975)))

(declare-fun res!1071583 () Bool)

(assert (=> b!1567756 (=> (not res!1071583) (not e!873975))))

(declare-fun from!2856 () (_ BitVec 32))

(assert (=> b!1567756 (= res!1071583 (bvsge (bvadd #b00000000000000000000000000000001 from!2856) #b00000000000000000000000000000000))))

(declare-datatypes ((array!104700 0))(
  ( (array!104701 (arr!50527 (Array (_ BitVec 32) (_ BitVec 64))) (size!51078 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104700)

(declare-datatypes ((List!36838 0))(
  ( (Nil!36835) (Cons!36834 (h!38282 (_ BitVec 64)) (t!51753 List!36838)) )
))
(declare-fun lt!672990 () List!36838)

(declare-fun acc!619 () List!36838)

(assert (=> b!1567756 (= lt!672990 (Cons!36834 (select (arr!50527 a!3481) from!2856) acc!619))))

(declare-fun b!1567757 () Bool)

(declare-fun res!1071587 () Bool)

(declare-fun e!873976 () Bool)

(assert (=> b!1567757 (=> (not res!1071587) (not e!873976))))

(declare-fun contains!10397 (List!36838 (_ BitVec 64)) Bool)

(assert (=> b!1567757 (= res!1071587 (not (contains!10397 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567758 () Bool)

(declare-fun res!1071581 () Bool)

(assert (=> b!1567758 (=> (not res!1071581) (not e!873975))))

(declare-fun noDuplicate!2688 (List!36838) Bool)

(assert (=> b!1567758 (= res!1071581 (noDuplicate!2688 lt!672990))))

(declare-fun b!1567759 () Bool)

(assert (=> b!1567759 (= e!873976 e!873977)))

(declare-fun res!1071584 () Bool)

(assert (=> b!1567759 (=> (not res!1071584) (not e!873977))))

(declare-fun e!873974 () Bool)

(assert (=> b!1567759 (= res!1071584 e!873974)))

(declare-fun res!1071589 () Bool)

(assert (=> b!1567759 (=> res!1071589 e!873974)))

(declare-fun lt!672991 () Bool)

(assert (=> b!1567759 (= res!1071589 lt!672991)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567759 (= lt!672991 (not (validKeyInArray!0 (select (arr!50527 a!3481) from!2856))))))

(declare-fun res!1071582 () Bool)

(assert (=> start!134248 (=> (not res!1071582) (not e!873976))))

(assert (=> start!134248 (= res!1071582 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51078 a!3481)) (bvslt (size!51078 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134248 e!873976))

(assert (=> start!134248 true))

(declare-fun array_inv!39172 (array!104700) Bool)

(assert (=> start!134248 (array_inv!39172 a!3481)))

(declare-fun b!1567760 () Bool)

(declare-fun res!1071588 () Bool)

(assert (=> b!1567760 (=> (not res!1071588) (not e!873976))))

(assert (=> b!1567760 (= res!1071588 (noDuplicate!2688 acc!619))))

(declare-fun b!1567761 () Bool)

(declare-fun res!1071590 () Bool)

(assert (=> b!1567761 (=> (not res!1071590) (not e!873977))))

(assert (=> b!1567761 (= res!1071590 (not lt!672991))))

(declare-fun b!1567762 () Bool)

(assert (=> b!1567762 (= e!873974 (not (contains!10397 acc!619 (select (arr!50527 a!3481) from!2856))))))

(declare-fun b!1567763 () Bool)

(declare-fun res!1071580 () Bool)

(assert (=> b!1567763 (=> (not res!1071580) (not e!873976))))

(assert (=> b!1567763 (= res!1071580 (not (contains!10397 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567764 () Bool)

(declare-fun e!873978 () Bool)

(assert (=> b!1567764 (= e!873975 e!873978)))

(declare-fun res!1071585 () Bool)

(assert (=> b!1567764 (=> res!1071585 e!873978)))

(assert (=> b!1567764 (= res!1071585 (contains!10397 lt!672990 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567765 () Bool)

(declare-fun res!1071586 () Bool)

(assert (=> b!1567765 (=> (not res!1071586) (not e!873976))))

(assert (=> b!1567765 (= res!1071586 (bvslt from!2856 (size!51078 a!3481)))))

(declare-fun b!1567766 () Bool)

(assert (=> b!1567766 (= e!873978 (contains!10397 lt!672990 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134248 res!1071582) b!1567760))

(assert (= (and b!1567760 res!1071588) b!1567763))

(assert (= (and b!1567763 res!1071580) b!1567757))

(assert (= (and b!1567757 res!1071587) b!1567765))

(assert (= (and b!1567765 res!1071586) b!1567759))

(assert (= (and b!1567759 (not res!1071589)) b!1567762))

(assert (= (and b!1567759 res!1071584) b!1567761))

(assert (= (and b!1567761 res!1071590) b!1567756))

(assert (= (and b!1567756 res!1071583) b!1567758))

(assert (= (and b!1567758 res!1071581) b!1567764))

(assert (= (and b!1567764 (not res!1071585)) b!1567766))

(declare-fun m!1442557 () Bool)

(assert (=> b!1567762 m!1442557))

(assert (=> b!1567762 m!1442557))

(declare-fun m!1442559 () Bool)

(assert (=> b!1567762 m!1442559))

(declare-fun m!1442561 () Bool)

(assert (=> b!1567760 m!1442561))

(declare-fun m!1442563 () Bool)

(assert (=> start!134248 m!1442563))

(declare-fun m!1442565 () Bool)

(assert (=> b!1567763 m!1442565))

(declare-fun m!1442567 () Bool)

(assert (=> b!1567764 m!1442567))

(declare-fun m!1442569 () Bool)

(assert (=> b!1567758 m!1442569))

(declare-fun m!1442571 () Bool)

(assert (=> b!1567757 m!1442571))

(assert (=> b!1567759 m!1442557))

(assert (=> b!1567759 m!1442557))

(declare-fun m!1442573 () Bool)

(assert (=> b!1567759 m!1442573))

(declare-fun m!1442575 () Bool)

(assert (=> b!1567766 m!1442575))

(assert (=> b!1567756 m!1442557))

(push 1)

(assert (not b!1567757))

(assert (not b!1567766))

(assert (not b!1567758))

(assert (not b!1567760))

(assert (not b!1567759))

(assert (not b!1567764))

(assert (not b!1567762))

(assert (not b!1567763))

(assert (not start!134248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163611 () Bool)

(assert (=> d!163611 (= (array_inv!39172 a!3481) (bvsge (size!51078 a!3481) #b00000000000000000000000000000000))))

(assert (=> start!134248 d!163611))

(declare-fun lt!673013 () Bool)

(declare-fun d!163613 () Bool)

(declare-fun content!819 (List!36838) (Set (_ BitVec 64)))

(assert (=> d!163613 (= lt!673013 (set.member (select (arr!50527 a!3481) from!2856) (content!819 acc!619)))))

(declare-fun e!874047 () Bool)

(assert (=> d!163613 (= lt!673013 e!874047)))

(declare-fun res!1071690 () Bool)

(assert (=> d!163613 (=> (not res!1071690) (not e!874047))))

(assert (=> d!163613 (= res!1071690 (is-Cons!36834 acc!619))))

(assert (=> d!163613 (= (contains!10397 acc!619 (select (arr!50527 a!3481) from!2856)) lt!673013)))

(declare-fun b!1567865 () Bool)

(declare-fun e!874048 () Bool)

(assert (=> b!1567865 (= e!874047 e!874048)))

(declare-fun res!1071689 () Bool)

(assert (=> b!1567865 (=> res!1071689 e!874048)))

(assert (=> b!1567865 (= res!1071689 (= (h!38282 acc!619) (select (arr!50527 a!3481) from!2856)))))

(declare-fun b!1567866 () Bool)

(assert (=> b!1567866 (= e!874048 (contains!10397 (t!51753 acc!619) (select (arr!50527 a!3481) from!2856)))))

(assert (= (and d!163613 res!1071690) b!1567865))

(assert (= (and b!1567865 (not res!1071689)) b!1567866))

(declare-fun m!1442653 () Bool)

(assert (=> d!163613 m!1442653))

(assert (=> d!163613 m!1442557))

(declare-fun m!1442655 () Bool)

(assert (=> d!163613 m!1442655))

(assert (=> b!1567866 m!1442557))

(declare-fun m!1442657 () Bool)

(assert (=> b!1567866 m!1442657))

(assert (=> b!1567762 d!163613))

(declare-fun d!163621 () Bool)

(declare-fun lt!673014 () Bool)

(assert (=> d!163621 (= lt!673014 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!819 acc!619)))))

(declare-fun e!874049 () Bool)

(assert (=> d!163621 (= lt!673014 e!874049)))

(declare-fun res!1071692 () Bool)

(assert (=> d!163621 (=> (not res!1071692) (not e!874049))))

(assert (=> d!163621 (= res!1071692 (is-Cons!36834 acc!619))))

(assert (=> d!163621 (= (contains!10397 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000) lt!673014)))

(declare-fun b!1567867 () Bool)

(declare-fun e!874050 () Bool)

(assert (=> b!1567867 (= e!874049 e!874050)))

(declare-fun res!1071691 () Bool)

(assert (=> b!1567867 (=> res!1071691 e!874050)))

(assert (=> b!1567867 (= res!1071691 (= (h!38282 acc!619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567868 () Bool)

(assert (=> b!1567868 (= e!874050 (contains!10397 (t!51753 acc!619) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163621 res!1071692) b!1567867))

(assert (= (and b!1567867 (not res!1071691)) b!1567868))

(assert (=> d!163621 m!1442653))

(declare-fun m!1442659 () Bool)

(assert (=> d!163621 m!1442659))

(declare-fun m!1442661 () Bool)

(assert (=> b!1567868 m!1442661))

(assert (=> b!1567757 d!163621))

(declare-fun d!163623 () Bool)

(declare-fun lt!673015 () Bool)

(assert (=> d!163623 (= lt!673015 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!819 acc!619)))))

(declare-fun e!874051 () Bool)

(assert (=> d!163623 (= lt!673015 e!874051)))

(declare-fun res!1071694 () Bool)

(assert (=> d!163623 (=> (not res!1071694) (not e!874051))))

(assert (=> d!163623 (= res!1071694 (is-Cons!36834 acc!619))))

(assert (=> d!163623 (= (contains!10397 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000) lt!673015)))

(declare-fun b!1567869 () Bool)

(declare-fun e!874052 () Bool)

(assert (=> b!1567869 (= e!874051 e!874052)))

(declare-fun res!1071693 () Bool)

(assert (=> b!1567869 (=> res!1071693 e!874052)))

(assert (=> b!1567869 (= res!1071693 (= (h!38282 acc!619) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567870 () Bool)

(assert (=> b!1567870 (= e!874052 (contains!10397 (t!51753 acc!619) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163623 res!1071694) b!1567869))

(assert (= (and b!1567869 (not res!1071693)) b!1567870))

(assert (=> d!163623 m!1442653))

(declare-fun m!1442663 () Bool)

(assert (=> d!163623 m!1442663))

(declare-fun m!1442665 () Bool)

(assert (=> b!1567870 m!1442665))

(assert (=> b!1567763 d!163623))

(declare-fun d!163625 () Bool)

(declare-fun res!1071703 () Bool)

(declare-fun e!874061 () Bool)

(assert (=> d!163625 (=> res!1071703 e!874061)))

(assert (=> d!163625 (= res!1071703 (is-Nil!36835 lt!672990))))

(assert (=> d!163625 (= (noDuplicate!2688 lt!672990) e!874061)))

(declare-fun b!1567879 () Bool)

(declare-fun e!874062 () Bool)

(assert (=> b!1567879 (= e!874061 e!874062)))

(declare-fun res!1071704 () Bool)

(assert (=> b!1567879 (=> (not res!1071704) (not e!874062))))

(assert (=> b!1567879 (= res!1071704 (not (contains!10397 (t!51753 lt!672990) (h!38282 lt!672990))))))

(declare-fun b!1567880 () Bool)

(assert (=> b!1567880 (= e!874062 (noDuplicate!2688 (t!51753 lt!672990)))))

(assert (= (and d!163625 (not res!1071703)) b!1567879))

(assert (= (and b!1567879 res!1071704) b!1567880))

(declare-fun m!1442667 () Bool)

(assert (=> b!1567879 m!1442667))

(declare-fun m!1442669 () Bool)

(assert (=> b!1567880 m!1442669))

(assert (=> b!1567758 d!163625))

(declare-fun d!163627 () Bool)

(declare-fun lt!673018 () Bool)

(assert (=> d!163627 (= lt!673018 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!819 lt!672990)))))

(declare-fun e!874063 () Bool)

(assert (=> d!163627 (= lt!673018 e!874063)))

(declare-fun res!1071706 () Bool)

(assert (=> d!163627 (=> (not res!1071706) (not e!874063))))

(assert (=> d!163627 (= res!1071706 (is-Cons!36834 lt!672990))))

(assert (=> d!163627 (= (contains!10397 lt!672990 #b0000000000000000000000000000000000000000000000000000000000000000) lt!673018)))

(declare-fun b!1567881 () Bool)

(declare-fun e!874064 () Bool)

(assert (=> b!1567881 (= e!874063 e!874064)))

(declare-fun res!1071705 () Bool)

(assert (=> b!1567881 (=> res!1071705 e!874064)))

(assert (=> b!1567881 (= res!1071705 (= (h!38282 lt!672990) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567882 () Bool)

(assert (=> b!1567882 (= e!874064 (contains!10397 (t!51753 lt!672990) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!163627 res!1071706) b!1567881))

(assert (= (and b!1567881 (not res!1071705)) b!1567882))

(declare-fun m!1442671 () Bool)

(assert (=> d!163627 m!1442671))

(declare-fun m!1442673 () Bool)

(assert (=> d!163627 m!1442673))

(declare-fun m!1442675 () Bool)

(assert (=> b!1567882 m!1442675))

(assert (=> b!1567764 d!163627))

(declare-fun d!163629 () Bool)

(assert (=> d!163629 (= (validKeyInArray!0 (select (arr!50527 a!3481) from!2856)) (and (not (= (select (arr!50527 a!3481) from!2856) #b0000000000000000000000000000000000000000000000000000000000000000)) 