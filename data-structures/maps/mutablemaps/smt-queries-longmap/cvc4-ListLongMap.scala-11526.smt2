; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134252 () Bool)

(assert start!134252)

(declare-fun b!1567822 () Bool)

(declare-fun res!1071656 () Bool)

(declare-fun e!874014 () Bool)

(assert (=> b!1567822 (=> (not res!1071656) (not e!874014))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104704 0))(
  ( (array!104705 (arr!50529 (Array (_ BitVec 32) (_ BitVec 64))) (size!51080 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104704)

(assert (=> b!1567822 (= res!1071656 (bvslt from!2856 (size!51080 a!3481)))))

(declare-fun b!1567823 () Bool)

(declare-fun e!874012 () Bool)

(declare-fun e!874009 () Bool)

(assert (=> b!1567823 (= e!874012 e!874009)))

(declare-fun res!1071646 () Bool)

(assert (=> b!1567823 (=> (not res!1071646) (not e!874009))))

(assert (=> b!1567823 (= res!1071646 (bvsge (bvadd #b00000000000000000000000000000001 from!2856) #b00000000000000000000000000000000))))

(declare-datatypes ((List!36840 0))(
  ( (Nil!36837) (Cons!36836 (h!38284 (_ BitVec 64)) (t!51755 List!36840)) )
))
(declare-fun acc!619 () List!36840)

(declare-fun lt!673003 () List!36840)

(assert (=> b!1567823 (= lt!673003 (Cons!36836 (select (arr!50529 a!3481) from!2856) acc!619))))

(declare-fun b!1567824 () Bool)

(declare-fun res!1071650 () Bool)

(assert (=> b!1567824 (=> (not res!1071650) (not e!874009))))

(declare-fun noDuplicate!2690 (List!36840) Bool)

(assert (=> b!1567824 (= res!1071650 (noDuplicate!2690 lt!673003))))

(declare-fun b!1567825 () Bool)

(declare-fun e!874010 () Bool)

(declare-fun contains!10399 (List!36840 (_ BitVec 64)) Bool)

(assert (=> b!1567825 (= e!874010 (contains!10399 lt!673003 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!1071649 () Bool)

(assert (=> start!134252 (=> (not res!1071649) (not e!874014))))

(assert (=> start!134252 (= res!1071649 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51080 a!3481)) (bvslt (size!51080 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134252 e!874014))

(assert (=> start!134252 true))

(declare-fun array_inv!39174 (array!104704) Bool)

(assert (=> start!134252 (array_inv!39174 a!3481)))

(declare-fun b!1567826 () Bool)

(declare-fun res!1071648 () Bool)

(assert (=> b!1567826 (=> (not res!1071648) (not e!874012))))

(declare-fun lt!673002 () Bool)

(assert (=> b!1567826 (= res!1071648 (not lt!673002))))

(declare-fun b!1567827 () Bool)

(declare-fun res!1071654 () Bool)

(assert (=> b!1567827 (=> (not res!1071654) (not e!874014))))

(assert (=> b!1567827 (= res!1071654 (noDuplicate!2690 acc!619))))

(declare-fun b!1567828 () Bool)

(assert (=> b!1567828 (= e!874014 e!874012)))

(declare-fun res!1071653 () Bool)

(assert (=> b!1567828 (=> (not res!1071653) (not e!874012))))

(declare-fun e!874011 () Bool)

(assert (=> b!1567828 (= res!1071653 e!874011)))

(declare-fun res!1071652 () Bool)

(assert (=> b!1567828 (=> res!1071652 e!874011)))

(assert (=> b!1567828 (= res!1071652 lt!673002)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567828 (= lt!673002 (not (validKeyInArray!0 (select (arr!50529 a!3481) from!2856))))))

(declare-fun b!1567829 () Bool)

(assert (=> b!1567829 (= e!874011 (not (contains!10399 acc!619 (select (arr!50529 a!3481) from!2856))))))

(declare-fun b!1567830 () Bool)

(assert (=> b!1567830 (= e!874009 e!874010)))

(declare-fun res!1071651 () Bool)

(assert (=> b!1567830 (=> res!1071651 e!874010)))

(assert (=> b!1567830 (= res!1071651 (contains!10399 lt!673003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1567831 () Bool)

(declare-fun res!1071647 () Bool)

(assert (=> b!1567831 (=> (not res!1071647) (not e!874014))))

(assert (=> b!1567831 (= res!1071647 (not (contains!10399 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567832 () Bool)

(declare-fun res!1071655 () Bool)

(assert (=> b!1567832 (=> (not res!1071655) (not e!874014))))

(assert (=> b!1567832 (= res!1071655 (not (contains!10399 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!134252 res!1071649) b!1567827))

(assert (= (and b!1567827 res!1071654) b!1567832))

(assert (= (and b!1567832 res!1071655) b!1567831))

(assert (= (and b!1567831 res!1071647) b!1567822))

(assert (= (and b!1567822 res!1071656) b!1567828))

(assert (= (and b!1567828 (not res!1071652)) b!1567829))

(assert (= (and b!1567828 res!1071653) b!1567826))

(assert (= (and b!1567826 res!1071648) b!1567823))

(assert (= (and b!1567823 res!1071646) b!1567824))

(assert (= (and b!1567824 res!1071650) b!1567830))

(assert (= (and b!1567830 (not res!1071651)) b!1567825))

(declare-fun m!1442597 () Bool)

(assert (=> b!1567829 m!1442597))

(assert (=> b!1567829 m!1442597))

(declare-fun m!1442599 () Bool)

(assert (=> b!1567829 m!1442599))

(declare-fun m!1442601 () Bool)

(assert (=> b!1567832 m!1442601))

(declare-fun m!1442603 () Bool)

(assert (=> b!1567831 m!1442603))

(declare-fun m!1442605 () Bool)

(assert (=> start!134252 m!1442605))

(assert (=> b!1567823 m!1442597))

(assert (=> b!1567828 m!1442597))

(assert (=> b!1567828 m!1442597))

(declare-fun m!1442607 () Bool)

(assert (=> b!1567828 m!1442607))

(declare-fun m!1442609 () Bool)

(assert (=> b!1567827 m!1442609))

(declare-fun m!1442611 () Bool)

(assert (=> b!1567825 m!1442611))

(declare-fun m!1442613 () Bool)

(assert (=> b!1567830 m!1442613))

(declare-fun m!1442615 () Bool)

(assert (=> b!1567824 m!1442615))

(push 1)

(assert (not b!1567832))

(assert (not b!1567831))

(assert (not b!1567830))

(assert (not b!1567824))

(assert (not b!1567825))

(assert (not start!134252))

(assert (not b!1567827))

(assert (not b!1567828))

(assert (not b!1567829))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163615 () Bool)

(declare-fun res!1071687 () Bool)

(declare-fun e!874045 () Bool)

(assert (=> d!163615 (=> res!1071687 e!874045)))

(assert (=> d!163615 (= res!1071687 (is-Nil!36837 lt!673003))))

(assert (=> d!163615 (= (noDuplicate!2690 lt!673003) e!874045)))

(declare-fun b!1567863 () Bool)

(declare-fun e!874046 () Bool)

(assert (=> b!1567863 (= e!874045 e!874046)))

(declare-fun res!1071688 () Bool)

(assert (=> b!1567863 (=> (not res!1071688) (not e!874046))))

(assert (=> b!1567863 (= res!1071688 (not (contains!10399 (t!51755 lt!673003) (h!38284 lt!673003))))))

(declare-fun b!1567864 () Bool)

(assert (=> b!1567864 (= e!874046 (noDuplicate!2690 (t!51755 lt!673003)))))

(assert (= (and d!163615 (not res!1071687)) b!1567863))

(assert (= (and b!1567863 res!1071688) b!1567864))

(declare-fun m!1442649 () Bool)

(assert (=> b!1567863 m!1442649))

(declare-fun m!1442651 () Bool)

(assert (=> b!1567864 m!1442651))

(assert (=> b!1567824 d!163615))

(declare-fun lt!673019 () Bool)

(declare-fun d!163619 () Bool)

(declare-fun content!820 (List!36840) (Set (_ BitVec 64)))

(assert (=> d!163619 (= lt!673019 (member (select (arr!50529 a!3481) from!2856) (content!820 acc!619)))))

(declare-fun e!874066 () Bool)

(assert (=> d!163619 (= lt!673019 e!874066)))

(declare-fun res!1071708 () Bool)

(assert (=> d!163619 (=> (not res!1071708) (not e!874066))))

(assert (=> d!163619 (= res!1071708 (is-Cons!36836 acc!619))))

(assert (=> d!163619 (= (contains!10399 acc!619 (select (arr!50529 a!3481) from!2856)) lt!673019)))

(declare-fun b!1567883 () Bool)

(declare-fun e!874065 () Bool)

(assert (=> b!1567883 (= e!874066 e!874065)))

(declare-fun res!1071707 () Bool)

(assert (=> b!1567883 (=> res!1071707 e!874065)))

(assert (=> b!1567883 (= res!1071707 (= (h!38284 acc!619) (select (arr!50529 a!3481) from!2856)))))

(declare-fun b!1567884 () Bool)

(assert (=> b!1567884 (= e!874065 (contains!10399 (t!51755 acc!619) (select (arr!50529 a!3481) from!2856)))))

(assert (= (and d!163619 res!1071708) b!1567883))

(assert (= (and b!1567883 (not res!1071707)) b!1567884))

(declare-fun m!1442677 () Bool)

(assert (=> d!163619 m!1442677))

(assert (=> d!163619 m!1442597))

(declare-fun m!1442679 () Bool)

(assert (=> d!163619 m!1442679))

(assert (=> b!1567884 m!1442597))

(declare-fun m!1442681 () Bool)

(assert (=> b!1567884 m!1442681))

(assert (=> b!1567829 d!163619))

(declare-fun d!163631 () Bool)

(assert (=> d!163631 (= (validKeyInArray!0 (select (arr!50529 a!3481) from!2856)) (and (not (= (select (arr!50529 a!3481) from!2856) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50529 a!3481) from!2856) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1567828 d!163631))

(declare-fun d!163637 () Bool)

(assert (=> d!163637 (= (array_inv!39174 a!3481) (bvsge (size!51080 a!3481) #b00000000000000000000000000000000))))

(assert (=> start!134252 d!163637))

(declare-fun d!163639 () Bool)

(declare-fun res!1071713 () Bool)

(declare-fun e!874071 () Bool)

(assert (=> d!163639 (=> res!1071713 e!874071)))

(assert (=> d!163639 (= res!1071713 (is-Nil!36837 acc!619))))

(assert (=> d!163639 (= (noDuplicate!2690 acc!619) e!874071)))

(declare-fun b!1567889 () Bool)

(declare-fun e!874072 () Bool)

(assert (=> b!1567889 (= e!874071 e!874072)))

