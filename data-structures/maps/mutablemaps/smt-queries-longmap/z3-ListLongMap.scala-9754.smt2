; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115594 () Bool)

(assert start!115594)

(declare-fun b!1366810 () Bool)

(declare-fun res!910488 () Bool)

(declare-fun e!774665 () Bool)

(assert (=> b!1366810 (=> (not res!910488) (not e!774665))))

(declare-datatypes ((List!32067 0))(
  ( (Nil!32064) (Cons!32063 (h!33272 (_ BitVec 64)) (t!46768 List!32067)) )
))
(declare-fun acc!866 () List!32067)

(declare-fun contains!9605 (List!32067 (_ BitVec 64)) Bool)

(assert (=> b!1366810 (= res!910488 (not (contains!9605 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366811 () Bool)

(declare-fun res!910482 () Bool)

(assert (=> b!1366811 (=> (not res!910482) (not e!774665))))

(declare-fun newAcc!98 () List!32067)

(assert (=> b!1366811 (= res!910482 (not (contains!9605 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366812 () Bool)

(declare-fun res!910484 () Bool)

(assert (=> b!1366812 (=> (not res!910484) (not e!774665))))

(declare-fun noDuplicate!2484 (List!32067) Bool)

(assert (=> b!1366812 (= res!910484 (noDuplicate!2484 acc!866))))

(declare-fun b!1366813 () Bool)

(declare-fun res!910489 () Bool)

(declare-fun e!774667 () Bool)

(assert (=> b!1366813 (=> (not res!910489) (not e!774667))))

(declare-datatypes ((array!92793 0))(
  ( (array!92794 (arr!44819 (Array (_ BitVec 32) (_ BitVec 64))) (size!45370 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92793)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1366813 (= res!910489 (validKeyInArray!0 (select (arr!44819 a!3861) from!3239)))))

(declare-fun b!1366814 () Bool)

(assert (=> b!1366814 (= e!774667 (not (noDuplicate!2484 newAcc!98)))))

(declare-datatypes ((Unit!45073 0))(
  ( (Unit!45074) )
))
(declare-fun lt!601670 () Unit!45073)

(declare-fun lt!601669 () List!32067)

(declare-fun lt!601667 () List!32067)

(declare-fun noDuplicateSubseq!183 (List!32067 List!32067) Unit!45073)

(assert (=> b!1366814 (= lt!601670 (noDuplicateSubseq!183 lt!601669 lt!601667))))

(declare-fun arrayNoDuplicates!0 (array!92793 (_ BitVec 32) List!32067) Bool)

(assert (=> b!1366814 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601669)))

(declare-fun lt!601666 () Unit!45073)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92793 List!32067 List!32067 (_ BitVec 32)) Unit!45073)

(assert (=> b!1366814 (= lt!601666 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601667 lt!601669 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1366814 (= lt!601669 (Cons!32063 (select (arr!44819 a!3861) from!3239) newAcc!98))))

(assert (=> b!1366814 (= lt!601667 (Cons!32063 (select (arr!44819 a!3861) from!3239) acc!866))))

(declare-fun res!910486 () Bool)

(assert (=> start!115594 (=> (not res!910486) (not e!774665))))

(assert (=> start!115594 (= res!910486 (and (bvslt (size!45370 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45370 a!3861))))))

(assert (=> start!115594 e!774665))

(declare-fun array_inv!33764 (array!92793) Bool)

(assert (=> start!115594 (array_inv!33764 a!3861)))

(assert (=> start!115594 true))

(declare-fun b!1366815 () Bool)

(assert (=> b!1366815 (= e!774665 e!774667)))

(declare-fun res!910485 () Bool)

(assert (=> b!1366815 (=> (not res!910485) (not e!774667))))

(assert (=> b!1366815 (= res!910485 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601668 () Unit!45073)

(assert (=> b!1366815 (= lt!601668 (noDuplicateSubseq!183 newAcc!98 acc!866))))

(declare-fun b!1366816 () Bool)

(declare-fun res!910490 () Bool)

(assert (=> b!1366816 (=> (not res!910490) (not e!774665))))

(assert (=> b!1366816 (= res!910490 (not (contains!9605 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366817 () Bool)

(declare-fun res!910491 () Bool)

(assert (=> b!1366817 (=> (not res!910491) (not e!774665))))

(assert (=> b!1366817 (= res!910491 (not (contains!9605 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1366818 () Bool)

(declare-fun res!910481 () Bool)

(assert (=> b!1366818 (=> (not res!910481) (not e!774667))))

(assert (=> b!1366818 (= res!910481 (bvslt from!3239 (size!45370 a!3861)))))

(declare-fun b!1366819 () Bool)

(declare-fun res!910483 () Bool)

(assert (=> b!1366819 (=> (not res!910483) (not e!774665))))

(declare-fun subseq!996 (List!32067 List!32067) Bool)

(assert (=> b!1366819 (= res!910483 (subseq!996 newAcc!98 acc!866))))

(declare-fun b!1366820 () Bool)

(declare-fun res!910487 () Bool)

(assert (=> b!1366820 (=> (not res!910487) (not e!774667))))

(assert (=> b!1366820 (= res!910487 (not (contains!9605 acc!866 (select (arr!44819 a!3861) from!3239))))))

(assert (= (and start!115594 res!910486) b!1366812))

(assert (= (and b!1366812 res!910484) b!1366816))

(assert (= (and b!1366816 res!910490) b!1366810))

(assert (= (and b!1366810 res!910488) b!1366811))

(assert (= (and b!1366811 res!910482) b!1366817))

(assert (= (and b!1366817 res!910491) b!1366819))

(assert (= (and b!1366819 res!910483) b!1366815))

(assert (= (and b!1366815 res!910485) b!1366818))

(assert (= (and b!1366818 res!910481) b!1366813))

(assert (= (and b!1366813 res!910489) b!1366820))

(assert (= (and b!1366820 res!910487) b!1366814))

(declare-fun m!1251117 () Bool)

(assert (=> b!1366819 m!1251117))

(declare-fun m!1251119 () Bool)

(assert (=> b!1366812 m!1251119))

(declare-fun m!1251121 () Bool)

(assert (=> b!1366814 m!1251121))

(declare-fun m!1251123 () Bool)

(assert (=> b!1366814 m!1251123))

(declare-fun m!1251125 () Bool)

(assert (=> b!1366814 m!1251125))

(declare-fun m!1251127 () Bool)

(assert (=> b!1366814 m!1251127))

(declare-fun m!1251129 () Bool)

(assert (=> b!1366814 m!1251129))

(declare-fun m!1251131 () Bool)

(assert (=> b!1366817 m!1251131))

(declare-fun m!1251133 () Bool)

(assert (=> b!1366816 m!1251133))

(assert (=> b!1366813 m!1251125))

(assert (=> b!1366813 m!1251125))

(declare-fun m!1251135 () Bool)

(assert (=> b!1366813 m!1251135))

(assert (=> b!1366820 m!1251125))

(assert (=> b!1366820 m!1251125))

(declare-fun m!1251137 () Bool)

(assert (=> b!1366820 m!1251137))

(declare-fun m!1251139 () Bool)

(assert (=> b!1366811 m!1251139))

(declare-fun m!1251141 () Bool)

(assert (=> b!1366815 m!1251141))

(declare-fun m!1251143 () Bool)

(assert (=> b!1366815 m!1251143))

(declare-fun m!1251145 () Bool)

(assert (=> start!115594 m!1251145))

(declare-fun m!1251147 () Bool)

(assert (=> b!1366810 m!1251147))

(check-sat (not b!1366811) (not b!1366812) (not start!115594) (not b!1366817) (not b!1366820) (not b!1366810) (not b!1366814) (not b!1366819) (not b!1366815) (not b!1366813) (not b!1366816))
(check-sat)
(get-model)

(declare-fun b!1366880 () Bool)

(declare-fun e!774699 () Bool)

(declare-fun e!774702 () Bool)

(assert (=> b!1366880 (= e!774699 e!774702)))

(declare-fun res!910545 () Bool)

(assert (=> b!1366880 (=> (not res!910545) (not e!774702))))

(declare-fun e!774700 () Bool)

(assert (=> b!1366880 (= res!910545 (not e!774700))))

(declare-fun res!910543 () Bool)

(assert (=> b!1366880 (=> (not res!910543) (not e!774700))))

(assert (=> b!1366880 (= res!910543 (validKeyInArray!0 (select (arr!44819 a!3861) from!3239)))))

(declare-fun b!1366881 () Bool)

(declare-fun e!774701 () Bool)

(declare-fun call!65470 () Bool)

(assert (=> b!1366881 (= e!774701 call!65470)))

(declare-fun d!146637 () Bool)

(declare-fun res!910544 () Bool)

(assert (=> d!146637 (=> res!910544 e!774699)))

(assert (=> d!146637 (= res!910544 (bvsge from!3239 (size!45370 a!3861)))))

(assert (=> d!146637 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!774699)))

(declare-fun b!1366882 () Bool)

(assert (=> b!1366882 (= e!774701 call!65470)))

(declare-fun b!1366883 () Bool)

(assert (=> b!1366883 (= e!774702 e!774701)))

(declare-fun c!127611 () Bool)

(assert (=> b!1366883 (= c!127611 (validKeyInArray!0 (select (arr!44819 a!3861) from!3239)))))

(declare-fun bm!65467 () Bool)

(assert (=> bm!65467 (= call!65470 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127611 (Cons!32063 (select (arr!44819 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1366884 () Bool)

(assert (=> b!1366884 (= e!774700 (contains!9605 acc!866 (select (arr!44819 a!3861) from!3239)))))

(assert (= (and d!146637 (not res!910544)) b!1366880))

(assert (= (and b!1366880 res!910543) b!1366884))

(assert (= (and b!1366880 res!910545) b!1366883))

(assert (= (and b!1366883 c!127611) b!1366882))

(assert (= (and b!1366883 (not c!127611)) b!1366881))

(assert (= (or b!1366882 b!1366881) bm!65467))

(assert (=> b!1366880 m!1251125))

(assert (=> b!1366880 m!1251125))

(assert (=> b!1366880 m!1251135))

(assert (=> b!1366883 m!1251125))

(assert (=> b!1366883 m!1251125))

(assert (=> b!1366883 m!1251135))

(assert (=> bm!65467 m!1251125))

(declare-fun m!1251187 () Bool)

(assert (=> bm!65467 m!1251187))

(assert (=> b!1366884 m!1251125))

(assert (=> b!1366884 m!1251125))

(assert (=> b!1366884 m!1251137))

(assert (=> b!1366815 d!146637))

(declare-fun d!146647 () Bool)

(assert (=> d!146647 (noDuplicate!2484 newAcc!98)))

(declare-fun lt!601693 () Unit!45073)

(declare-fun choose!2001 (List!32067 List!32067) Unit!45073)

(assert (=> d!146647 (= lt!601693 (choose!2001 newAcc!98 acc!866))))

(declare-fun e!774717 () Bool)

(assert (=> d!146647 e!774717))

(declare-fun res!910559 () Bool)

(assert (=> d!146647 (=> (not res!910559) (not e!774717))))

(assert (=> d!146647 (= res!910559 (subseq!996 newAcc!98 acc!866))))

(assert (=> d!146647 (= (noDuplicateSubseq!183 newAcc!98 acc!866) lt!601693)))

(declare-fun b!1366900 () Bool)

(assert (=> b!1366900 (= e!774717 (noDuplicate!2484 acc!866))))

(assert (= (and d!146647 res!910559) b!1366900))

(assert (=> d!146647 m!1251123))

(declare-fun m!1251201 () Bool)

(assert (=> d!146647 m!1251201))

(assert (=> d!146647 m!1251117))

(assert (=> b!1366900 m!1251119))

(assert (=> b!1366815 d!146647))

(declare-fun d!146657 () Bool)

(assert (=> d!146657 (= (array_inv!33764 a!3861) (bvsge (size!45370 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115594 d!146657))

(declare-fun d!146661 () Bool)

(declare-fun lt!601702 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!722 (List!32067) (InoxSet (_ BitVec 64)))

(assert (=> d!146661 (= lt!601702 (select (content!722 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!774731 () Bool)

(assert (=> d!146661 (= lt!601702 e!774731)))

(declare-fun res!910573 () Bool)

(assert (=> d!146661 (=> (not res!910573) (not e!774731))))

(get-info :version)

(assert (=> d!146661 (= res!910573 ((_ is Cons!32063) acc!866))))

(assert (=> d!146661 (= (contains!9605 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!601702)))

(declare-fun b!1366913 () Bool)

(declare-fun e!774730 () Bool)

(assert (=> b!1366913 (= e!774731 e!774730)))

(declare-fun res!910572 () Bool)

(assert (=> b!1366913 (=> res!910572 e!774730)))

(assert (=> b!1366913 (= res!910572 (= (h!33272 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366914 () Bool)

(assert (=> b!1366914 (= e!774730 (contains!9605 (t!46768 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146661 res!910573) b!1366913))

(assert (= (and b!1366913 (not res!910572)) b!1366914))

(declare-fun m!1251217 () Bool)

(assert (=> d!146661 m!1251217))

(declare-fun m!1251219 () Bool)

(assert (=> d!146661 m!1251219))

(declare-fun m!1251221 () Bool)

(assert (=> b!1366914 m!1251221))

(assert (=> b!1366810 d!146661))

(declare-fun lt!601703 () Bool)

(declare-fun d!146667 () Bool)

(assert (=> d!146667 (= lt!601703 (select (content!722 acc!866) (select (arr!44819 a!3861) from!3239)))))

(declare-fun e!774737 () Bool)

(assert (=> d!146667 (= lt!601703 e!774737)))

(declare-fun res!910579 () Bool)

(assert (=> d!146667 (=> (not res!910579) (not e!774737))))

(assert (=> d!146667 (= res!910579 ((_ is Cons!32063) acc!866))))

(assert (=> d!146667 (= (contains!9605 acc!866 (select (arr!44819 a!3861) from!3239)) lt!601703)))

(declare-fun b!1366919 () Bool)

(declare-fun e!774736 () Bool)

(assert (=> b!1366919 (= e!774737 e!774736)))

(declare-fun res!910578 () Bool)

(assert (=> b!1366919 (=> res!910578 e!774736)))

(assert (=> b!1366919 (= res!910578 (= (h!33272 acc!866) (select (arr!44819 a!3861) from!3239)))))

(declare-fun b!1366920 () Bool)

(assert (=> b!1366920 (= e!774736 (contains!9605 (t!46768 acc!866) (select (arr!44819 a!3861) from!3239)))))

(assert (= (and d!146667 res!910579) b!1366919))

(assert (= (and b!1366919 (not res!910578)) b!1366920))

(assert (=> d!146667 m!1251217))

(assert (=> d!146667 m!1251125))

(declare-fun m!1251223 () Bool)

(assert (=> d!146667 m!1251223))

(assert (=> b!1366920 m!1251125))

(declare-fun m!1251225 () Bool)

(assert (=> b!1366920 m!1251225))

(assert (=> b!1366820 d!146667))

(declare-fun b!1366950 () Bool)

(declare-fun e!774762 () Bool)

(assert (=> b!1366950 (= e!774762 (subseq!996 newAcc!98 (t!46768 acc!866)))))

(declare-fun b!1366947 () Bool)

(declare-fun e!774761 () Bool)

(declare-fun e!774764 () Bool)

(assert (=> b!1366947 (= e!774761 e!774764)))

(declare-fun res!910602 () Bool)

(assert (=> b!1366947 (=> (not res!910602) (not e!774764))))

(assert (=> b!1366947 (= res!910602 ((_ is Cons!32063) acc!866))))

(declare-fun b!1366949 () Bool)

(declare-fun e!774763 () Bool)

(assert (=> b!1366949 (= e!774763 (subseq!996 (t!46768 newAcc!98) (t!46768 acc!866)))))

(declare-fun d!146669 () Bool)

(declare-fun res!910601 () Bool)

(assert (=> d!146669 (=> res!910601 e!774761)))

(assert (=> d!146669 (= res!910601 ((_ is Nil!32064) newAcc!98))))

(assert (=> d!146669 (= (subseq!996 newAcc!98 acc!866) e!774761)))

(declare-fun b!1366948 () Bool)

(assert (=> b!1366948 (= e!774764 e!774762)))

(declare-fun res!910603 () Bool)

(assert (=> b!1366948 (=> res!910603 e!774762)))

(assert (=> b!1366948 (= res!910603 e!774763)))

(declare-fun res!910600 () Bool)

(assert (=> b!1366948 (=> (not res!910600) (not e!774763))))

(assert (=> b!1366948 (= res!910600 (= (h!33272 newAcc!98) (h!33272 acc!866)))))

(assert (= (and d!146669 (not res!910601)) b!1366947))

(assert (= (and b!1366947 res!910602) b!1366948))

(assert (= (and b!1366948 res!910600) b!1366949))

(assert (= (and b!1366948 (not res!910603)) b!1366950))

(declare-fun m!1251247 () Bool)

(assert (=> b!1366950 m!1251247))

(declare-fun m!1251249 () Bool)

(assert (=> b!1366949 m!1251249))

(assert (=> b!1366819 d!146669))

(declare-fun d!146677 () Bool)

(declare-fun res!910611 () Bool)

(declare-fun e!774773 () Bool)

(assert (=> d!146677 (=> res!910611 e!774773)))

(assert (=> d!146677 (= res!910611 ((_ is Nil!32064) newAcc!98))))

(assert (=> d!146677 (= (noDuplicate!2484 newAcc!98) e!774773)))

(declare-fun b!1366960 () Bool)

(declare-fun e!774774 () Bool)

(assert (=> b!1366960 (= e!774773 e!774774)))

(declare-fun res!910612 () Bool)

(assert (=> b!1366960 (=> (not res!910612) (not e!774774))))

(assert (=> b!1366960 (= res!910612 (not (contains!9605 (t!46768 newAcc!98) (h!33272 newAcc!98))))))

(declare-fun b!1366961 () Bool)

(assert (=> b!1366961 (= e!774774 (noDuplicate!2484 (t!46768 newAcc!98)))))

(assert (= (and d!146677 (not res!910611)) b!1366960))

(assert (= (and b!1366960 res!910612) b!1366961))

(declare-fun m!1251261 () Bool)

(assert (=> b!1366960 m!1251261))

(declare-fun m!1251263 () Bool)

(assert (=> b!1366961 m!1251263))

(assert (=> b!1366814 d!146677))

(declare-fun d!146685 () Bool)

(assert (=> d!146685 (noDuplicate!2484 lt!601669)))

(declare-fun lt!601708 () Unit!45073)

(assert (=> d!146685 (= lt!601708 (choose!2001 lt!601669 lt!601667))))

(declare-fun e!774775 () Bool)

(assert (=> d!146685 e!774775))

(declare-fun res!910613 () Bool)

(assert (=> d!146685 (=> (not res!910613) (not e!774775))))

(assert (=> d!146685 (= res!910613 (subseq!996 lt!601669 lt!601667))))

(assert (=> d!146685 (= (noDuplicateSubseq!183 lt!601669 lt!601667) lt!601708)))

(declare-fun b!1366962 () Bool)

(assert (=> b!1366962 (= e!774775 (noDuplicate!2484 lt!601667))))

(assert (= (and d!146685 res!910613) b!1366962))

(declare-fun m!1251265 () Bool)

(assert (=> d!146685 m!1251265))

(declare-fun m!1251267 () Bool)

(assert (=> d!146685 m!1251267))

(declare-fun m!1251269 () Bool)

(assert (=> d!146685 m!1251269))

(declare-fun m!1251271 () Bool)

(assert (=> b!1366962 m!1251271))

(assert (=> b!1366814 d!146685))

(declare-fun b!1366963 () Bool)

(declare-fun e!774776 () Bool)

(declare-fun e!774779 () Bool)

(assert (=> b!1366963 (= e!774776 e!774779)))

(declare-fun res!910616 () Bool)

(assert (=> b!1366963 (=> (not res!910616) (not e!774779))))

(declare-fun e!774777 () Bool)

(assert (=> b!1366963 (= res!910616 (not e!774777))))

(declare-fun res!910614 () Bool)

(assert (=> b!1366963 (=> (not res!910614) (not e!774777))))

(assert (=> b!1366963 (= res!910614 (validKeyInArray!0 (select (arr!44819 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1366964 () Bool)

(declare-fun e!774778 () Bool)

(declare-fun call!65478 () Bool)

(assert (=> b!1366964 (= e!774778 call!65478)))

(declare-fun d!146687 () Bool)

(declare-fun res!910615 () Bool)

(assert (=> d!146687 (=> res!910615 e!774776)))

(assert (=> d!146687 (= res!910615 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45370 a!3861)))))

(assert (=> d!146687 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601669) e!774776)))

(declare-fun b!1366965 () Bool)

(assert (=> b!1366965 (= e!774778 call!65478)))

(declare-fun b!1366966 () Bool)

(assert (=> b!1366966 (= e!774779 e!774778)))

(declare-fun c!127617 () Bool)

(assert (=> b!1366966 (= c!127617 (validKeyInArray!0 (select (arr!44819 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun bm!65475 () Bool)

(assert (=> bm!65475 (= call!65478 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127617 (Cons!32063 (select (arr!44819 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) lt!601669) lt!601669)))))

(declare-fun b!1366967 () Bool)

(assert (=> b!1366967 (= e!774777 (contains!9605 lt!601669 (select (arr!44819 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(assert (= (and d!146687 (not res!910615)) b!1366963))

(assert (= (and b!1366963 res!910614) b!1366967))

(assert (= (and b!1366963 res!910616) b!1366966))

(assert (= (and b!1366966 c!127617) b!1366965))

(assert (= (and b!1366966 (not c!127617)) b!1366964))

(assert (= (or b!1366965 b!1366964) bm!65475))

(declare-fun m!1251273 () Bool)

(assert (=> b!1366963 m!1251273))

(assert (=> b!1366963 m!1251273))

(declare-fun m!1251275 () Bool)

(assert (=> b!1366963 m!1251275))

(assert (=> b!1366966 m!1251273))

(assert (=> b!1366966 m!1251273))

(assert (=> b!1366966 m!1251275))

(assert (=> bm!65475 m!1251273))

(declare-fun m!1251277 () Bool)

(assert (=> bm!65475 m!1251277))

(assert (=> b!1366967 m!1251273))

(assert (=> b!1366967 m!1251273))

(declare-fun m!1251279 () Bool)

(assert (=> b!1366967 m!1251279))

(assert (=> b!1366814 d!146687))

(declare-fun d!146689 () Bool)

(assert (=> d!146689 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601669)))

(declare-fun lt!601717 () Unit!45073)

(declare-fun choose!80 (array!92793 List!32067 List!32067 (_ BitVec 32)) Unit!45073)

(assert (=> d!146689 (= lt!601717 (choose!80 a!3861 lt!601667 lt!601669 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!146689 (bvslt (size!45370 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!146689 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601667 lt!601669 (bvadd #b00000000000000000000000000000001 from!3239)) lt!601717)))

(declare-fun bs!39211 () Bool)

(assert (= bs!39211 d!146689))

(assert (=> bs!39211 m!1251129))

(declare-fun m!1251303 () Bool)

(assert (=> bs!39211 m!1251303))

(assert (=> b!1366814 d!146689))

(declare-fun d!146705 () Bool)

(assert (=> d!146705 (= (validKeyInArray!0 (select (arr!44819 a!3861) from!3239)) (and (not (= (select (arr!44819 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44819 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1366813 d!146705))

(declare-fun d!146707 () Bool)

(declare-fun lt!601718 () Bool)

(assert (=> d!146707 (= lt!601718 (select (content!722 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!774804 () Bool)

(assert (=> d!146707 (= lt!601718 e!774804)))

(declare-fun res!910640 () Bool)

(assert (=> d!146707 (=> (not res!910640) (not e!774804))))

(assert (=> d!146707 (= res!910640 ((_ is Cons!32063) newAcc!98))))

(assert (=> d!146707 (= (contains!9605 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!601718)))

(declare-fun b!1366992 () Bool)

(declare-fun e!774803 () Bool)

(assert (=> b!1366992 (= e!774804 e!774803)))

(declare-fun res!910639 () Bool)

(assert (=> b!1366992 (=> res!910639 e!774803)))

(assert (=> b!1366992 (= res!910639 (= (h!33272 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1366993 () Bool)

(assert (=> b!1366993 (= e!774803 (contains!9605 (t!46768 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146707 res!910640) b!1366992))

(assert (= (and b!1366992 (not res!910639)) b!1366993))

(declare-fun m!1251305 () Bool)

(assert (=> d!146707 m!1251305))

(declare-fun m!1251307 () Bool)

(assert (=> d!146707 m!1251307))

(declare-fun m!1251309 () Bool)

(assert (=> b!1366993 m!1251309))

(assert (=> b!1366817 d!146707))

(declare-fun d!146709 () Bool)

(declare-fun res!910645 () Bool)

(declare-fun e!774809 () Bool)

(assert (=> d!146709 (=> res!910645 e!774809)))

(assert (=> d!146709 (= res!910645 ((_ is Nil!32064) acc!866))))

(assert (=> d!146709 (= (noDuplicate!2484 acc!866) e!774809)))

(declare-fun b!1366998 () Bool)

(declare-fun e!774810 () Bool)

(assert (=> b!1366998 (= e!774809 e!774810)))

(declare-fun res!910646 () Bool)

(assert (=> b!1366998 (=> (not res!910646) (not e!774810))))

(assert (=> b!1366998 (= res!910646 (not (contains!9605 (t!46768 acc!866) (h!33272 acc!866))))))

(declare-fun b!1366999 () Bool)

(assert (=> b!1366999 (= e!774810 (noDuplicate!2484 (t!46768 acc!866)))))

(assert (= (and d!146709 (not res!910645)) b!1366998))

(assert (= (and b!1366998 res!910646) b!1366999))

(declare-fun m!1251311 () Bool)

(assert (=> b!1366998 m!1251311))

(declare-fun m!1251313 () Bool)

(assert (=> b!1366999 m!1251313))

(assert (=> b!1366812 d!146709))

(declare-fun d!146711 () Bool)

(declare-fun lt!601721 () Bool)

(assert (=> d!146711 (= lt!601721 (select (content!722 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!774812 () Bool)

(assert (=> d!146711 (= lt!601721 e!774812)))

(declare-fun res!910648 () Bool)

(assert (=> d!146711 (=> (not res!910648) (not e!774812))))

(assert (=> d!146711 (= res!910648 ((_ is Cons!32063) newAcc!98))))

(assert (=> d!146711 (= (contains!9605 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601721)))

(declare-fun b!1367000 () Bool)

(declare-fun e!774811 () Bool)

(assert (=> b!1367000 (= e!774812 e!774811)))

(declare-fun res!910647 () Bool)

(assert (=> b!1367000 (=> res!910647 e!774811)))

(assert (=> b!1367000 (= res!910647 (= (h!33272 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1367001 () Bool)

(assert (=> b!1367001 (= e!774811 (contains!9605 (t!46768 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146711 res!910648) b!1367000))

(assert (= (and b!1367000 (not res!910647)) b!1367001))

(assert (=> d!146711 m!1251305))

(declare-fun m!1251315 () Bool)

(assert (=> d!146711 m!1251315))

(declare-fun m!1251317 () Bool)

(assert (=> b!1367001 m!1251317))

(assert (=> b!1366811 d!146711))

(declare-fun d!146713 () Bool)

(declare-fun lt!601722 () Bool)

(assert (=> d!146713 (= lt!601722 (select (content!722 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!774822 () Bool)

(assert (=> d!146713 (= lt!601722 e!774822)))

(declare-fun res!910658 () Bool)

(assert (=> d!146713 (=> (not res!910658) (not e!774822))))

(assert (=> d!146713 (= res!910658 ((_ is Cons!32063) acc!866))))

(assert (=> d!146713 (= (contains!9605 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!601722)))

(declare-fun b!1367010 () Bool)

(declare-fun e!774821 () Bool)

(assert (=> b!1367010 (= e!774822 e!774821)))

(declare-fun res!910657 () Bool)

(assert (=> b!1367010 (=> res!910657 e!774821)))

(assert (=> b!1367010 (= res!910657 (= (h!33272 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1367011 () Bool)

(assert (=> b!1367011 (= e!774821 (contains!9605 (t!46768 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146713 res!910658) b!1367010))

(assert (= (and b!1367010 (not res!910657)) b!1367011))

(assert (=> d!146713 m!1251217))

(declare-fun m!1251319 () Bool)

(assert (=> d!146713 m!1251319))

(declare-fun m!1251321 () Bool)

(assert (=> b!1367011 m!1251321))

(assert (=> b!1366816 d!146713))

(check-sat (not b!1366883) (not d!146685) (not b!1366884) (not bm!65475) (not d!146689) (not d!146667) (not b!1366914) (not b!1367011) (not b!1366998) (not bm!65467) (not b!1366949) (not b!1366880) (not b!1366999) (not b!1367001) (not d!146711) (not b!1366920) (not d!146713) (not b!1366961) (not d!146707) (not b!1366966) (not b!1366960) (not d!146661) (not d!146647) (not b!1366993) (not b!1366900) (not b!1366963) (not b!1366962) (not b!1366950) (not b!1366967))
(check-sat)
