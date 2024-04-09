; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27602 () Bool)

(assert start!27602)

(declare-fun res!147648 () Bool)

(declare-fun e!180724 () Bool)

(assert (=> start!27602 (=> (not res!147648) (not e!180724))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27602 (= res!147648 (validMask!0 mask!3868))))

(assert (=> start!27602 e!180724))

(declare-datatypes ((array!14241 0))(
  ( (array!14242 (arr!6759 (Array (_ BitVec 32) (_ BitVec 64))) (size!7111 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14241)

(declare-fun array_inv!4713 (array!14241) Bool)

(assert (=> start!27602 (array_inv!4713 a!3325)))

(assert (=> start!27602 true))

(declare-fun e!180723 () Bool)

(declare-fun b!285093 () Bool)

(declare-fun lt!140724 () array!14241)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14241 (_ BitVec 32)) Bool)

(assert (=> b!285093 (= e!180723 (not (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140724 mask!3868)))))

(assert (=> b!285093 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!140724 mask!3868)))

(declare-datatypes ((Unit!9041 0))(
  ( (Unit!9042) )
))
(declare-fun lt!140725 () Unit!9041)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!14241 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9041)

(assert (=> b!285093 (= lt!140725 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!285094 () Bool)

(declare-fun e!180722 () Bool)

(assert (=> b!285094 (= e!180722 e!180723)))

(declare-fun res!147645 () Bool)

(assert (=> b!285094 (=> (not res!147645) (not e!180723))))

(assert (=> b!285094 (= res!147645 (not (= startIndex!26 i!1267)))))

(assert (=> b!285094 (= lt!140724 (array!14242 (store (arr!6759 a!3325) i!1267 k!2581) (size!7111 a!3325)))))

(declare-fun b!285095 () Bool)

(declare-fun res!147640 () Bool)

(assert (=> b!285095 (=> (not res!147640) (not e!180724))))

(declare-fun arrayContainsKey!0 (array!14241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!285095 (= res!147640 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!285096 () Bool)

(declare-fun res!147642 () Bool)

(assert (=> b!285096 (=> (not res!147642) (not e!180723))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!285096 (= res!147642 (not (validKeyInArray!0 (select (arr!6759 a!3325) startIndex!26))))))

(declare-fun b!285097 () Bool)

(declare-fun res!147647 () Bool)

(assert (=> b!285097 (=> (not res!147647) (not e!180722))))

(assert (=> b!285097 (= res!147647 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!285098 () Bool)

(assert (=> b!285098 (= e!180724 e!180722)))

(declare-fun res!147641 () Bool)

(assert (=> b!285098 (=> (not res!147641) (not e!180722))))

(declare-datatypes ((SeekEntryResult!1928 0))(
  ( (MissingZero!1928 (index!9882 (_ BitVec 32))) (Found!1928 (index!9883 (_ BitVec 32))) (Intermediate!1928 (undefined!2740 Bool) (index!9884 (_ BitVec 32)) (x!28047 (_ BitVec 32))) (Undefined!1928) (MissingVacant!1928 (index!9885 (_ BitVec 32))) )
))
(declare-fun lt!140726 () SeekEntryResult!1928)

(assert (=> b!285098 (= res!147641 (or (= lt!140726 (MissingZero!1928 i!1267)) (= lt!140726 (MissingVacant!1928 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14241 (_ BitVec 32)) SeekEntryResult!1928)

(assert (=> b!285098 (= lt!140726 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!285099 () Bool)

(declare-fun res!147646 () Bool)

(assert (=> b!285099 (=> (not res!147646) (not e!180724))))

(declare-datatypes ((List!4588 0))(
  ( (Nil!4585) (Cons!4584 (h!5257 (_ BitVec 64)) (t!9678 List!4588)) )
))
(declare-fun arrayNoDuplicates!0 (array!14241 (_ BitVec 32) List!4588) Bool)

(assert (=> b!285099 (= res!147646 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4585))))

(declare-fun b!285100 () Bool)

(declare-fun res!147644 () Bool)

(assert (=> b!285100 (=> (not res!147644) (not e!180723))))

(assert (=> b!285100 (= res!147644 (and (bvslt startIndex!26 (bvsub (size!7111 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!285101 () Bool)

(declare-fun res!147643 () Bool)

(assert (=> b!285101 (=> (not res!147643) (not e!180724))))

(assert (=> b!285101 (= res!147643 (validKeyInArray!0 k!2581))))

(declare-fun b!285102 () Bool)

(declare-fun res!147639 () Bool)

(assert (=> b!285102 (=> (not res!147639) (not e!180724))))

(assert (=> b!285102 (= res!147639 (and (= (size!7111 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7111 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7111 a!3325))))))

(assert (= (and start!27602 res!147648) b!285102))

(assert (= (and b!285102 res!147639) b!285101))

(assert (= (and b!285101 res!147643) b!285099))

(assert (= (and b!285099 res!147646) b!285095))

(assert (= (and b!285095 res!147640) b!285098))

(assert (= (and b!285098 res!147641) b!285097))

(assert (= (and b!285097 res!147647) b!285094))

(assert (= (and b!285094 res!147645) b!285096))

(assert (= (and b!285096 res!147642) b!285100))

(assert (= (and b!285100 res!147644) b!285093))

(declare-fun m!299987 () Bool)

(assert (=> start!27602 m!299987))

(declare-fun m!299989 () Bool)

(assert (=> start!27602 m!299989))

(declare-fun m!299991 () Bool)

(assert (=> b!285096 m!299991))

(assert (=> b!285096 m!299991))

(declare-fun m!299993 () Bool)

(assert (=> b!285096 m!299993))

(declare-fun m!299995 () Bool)

(assert (=> b!285093 m!299995))

(declare-fun m!299997 () Bool)

(assert (=> b!285093 m!299997))

(declare-fun m!299999 () Bool)

(assert (=> b!285093 m!299999))

(declare-fun m!300001 () Bool)

(assert (=> b!285099 m!300001))

(declare-fun m!300003 () Bool)

(assert (=> b!285098 m!300003))

(declare-fun m!300005 () Bool)

(assert (=> b!285097 m!300005))

(declare-fun m!300007 () Bool)

(assert (=> b!285094 m!300007))

(declare-fun m!300009 () Bool)

(assert (=> b!285095 m!300009))

(declare-fun m!300011 () Bool)

(assert (=> b!285101 m!300011))

(push 1)

(assert (not b!285093))

(assert (not b!285098))

(assert (not b!285099))

(assert (not b!285101))

(assert (not b!285097))

(assert (not start!27602))

(assert (not b!285095))

(assert (not b!285096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!65617 () Bool)

(declare-fun res!147684 () Bool)

(declare-fun e!180768 () Bool)

(assert (=> d!65617 (=> res!147684 e!180768)))

(assert (=> d!65617 (= res!147684 (= (select (arr!6759 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!65617 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!180768)))

(declare-fun b!285154 () Bool)

(declare-fun e!180769 () Bool)

(assert (=> b!285154 (= e!180768 e!180769)))

(declare-fun res!147685 () Bool)

(assert (=> b!285154 (=> (not res!147685) (not e!180769))))

(assert (=> b!285154 (= res!147685 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7111 a!3325)))))

(declare-fun b!285155 () Bool)

(assert (=> b!285155 (= e!180769 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65617 (not res!147684)) b!285154))

(assert (= (and b!285154 res!147685) b!285155))

(declare-fun m!300035 () Bool)

(assert (=> d!65617 m!300035))

(declare-fun m!300037 () Bool)

(assert (=> b!285155 m!300037))

(assert (=> b!285095 d!65617))

(declare-fun b!285174 () Bool)

(declare-fun e!180784 () Bool)

(declare-fun call!25545 () Bool)

(assert (=> b!285174 (= e!180784 call!25545)))

(declare-fun bm!25542 () Bool)

(declare-fun c!46293 () Bool)

(assert (=> bm!25542 (= call!25545 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!46293 (Cons!4584 (select (arr!6759 a!3325) #b00000000000000000000000000000000) Nil!4585) Nil!4585)))))

(declare-fun b!285175 () Bool)

(declare-fun e!180786 () Bool)

(declare-fun contains!1997 (List!4588 (_ BitVec 64)) Bool)

(assert (=> b!285175 (= e!180786 (contains!1997 Nil!4585 (select (arr!6759 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285176 () Bool)

(assert (=> b!285176 (= e!180784 call!25545)))

(declare-fun b!285177 () Bool)

(declare-fun e!180787 () Bool)

(assert (=> b!285177 (= e!180787 e!180784)))

(assert (=> b!285177 (= c!46293 (validKeyInArray!0 (select (arr!6759 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!285178 () Bool)

(declare-fun e!180785 () Bool)

(assert (=> b!285178 (= e!180785 e!180787)))

(declare-fun res!147698 () Bool)

(assert (=> b!285178 (=> (not res!147698) (not e!180787))))

(assert (=> b!285178 (= res!147698 (not e!180786))))

(declare-fun res!147697 () Bool)

(assert (=> b!285178 (=> (not res!147697) (not e!180786))))

(assert (=> b!285178 (= res!147697 (validKeyInArray!0 (select (arr!6759 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!65621 () Bool)

(declare-fun res!147696 () Bool)

(assert (=> d!65621 (=> res!147696 e!180785)))

(assert (=> d!65621 (= res!147696 (bvsge #b00000000000000000000000000000000 (size!7111 a!3325)))))

(assert (=> d!65621 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4585) e!180785)))

(assert (= (and d!65621 (not res!147696)) b!285178))

(assert (= (and b!285178 res!147697) b!285175))

(assert (= (and b!285178 res!147698) b!285177))

(assert (= (and b!285177 c!46293) b!285176))

(assert (= (and b!285177 (not c!46293)) b!285174))

(assert (= (or b!285176 b!285174) bm!25542))

(assert (=> bm!25542 m!300035))

(declare-fun m!300063 () Bool)

(assert (=> bm!25542 m!300063))

(assert (=> b!285175 m!300035))

(assert (=> b!285175 m!300035))

(declare-fun m!300065 () Bool)

(assert (=> b!285175 m!300065))

(assert (=> b!285177 m!300035))

(assert (=> b!285177 m!300035))

(declare-fun m!300067 () Bool)

(assert (=> b!285177 m!300067))

(assert (=> b!285178 m!300035))

(assert (=> b!285178 m!300035))

(assert (=> b!285178 m!300067))

(assert (=> b!285099 d!65621))

(declare-fun b!285217 () Bool)

(declare-fun e!180815 () Bool)

(declare-fun call!25551 () Bool)

(assert (=> b!285217 (= e!180815 call!25551)))

(declare-fun bm!25548 () Bool)

(assert (=> bm!25548 (= call!25551 (arrayForallSeekEntryOrOpenFound!0 (bvadd startIndex!26 #b00000000000000000000000000000001) lt!140724 mask!3868))))

(declare-fun b!285218 () Bool)

(declare-fun e!180817 () Bool)

(assert (=> b!285218 (= e!180817 call!25551)))

(declare-fun b!285219 () Bool)

(declare-fun e!180816 () Bool)

(assert (=> b!285219 (= e!180816 e!180815)))

(declare-fun c!46305 () Bool)

(assert (=> b!285219 (= c!46305 (validKeyInArray!0 (select (arr!6759 lt!140724) startIndex!26)))))

(declare-fun b!285220 () Bool)

(assert (=> b!285220 (= e!180815 e!180817)))

(declare-fun lt!140765 () (_ BitVec 64))

(assert (=> b!285220 (= lt!140765 (select (arr!6759 lt!140724) startIndex!26))))

(declare-fun lt!140763 () Unit!9041)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14241 (_ BitVec 64) (_ BitVec 32)) Unit!9041)

(assert (=> b!285220 (= lt!140763 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!140724 lt!140765 startIndex!26))))

(assert (=> b!285220 (arrayContainsKey!0 lt!140724 lt!140765 #b00000000000000000000000000000000)))

(declare-fun lt!140764 () Unit!9041)

(assert (=> b!285220 (= lt!140764 lt!140763)))

(declare-fun res!147716 () Bool)

(assert (=> b!285220 (= res!147716 (= (seekEntryOrOpen!0 (select (arr!6759 lt!140724) startIndex!26) lt!140724 mask!3868) (Found!1928 startIndex!26)))))

(assert (=> b!285220 (=> (not res!147716) (not e!180817))))

(declare-fun d!65627 () Bool)

(declare-fun res!147715 () Bool)

(assert (=> d!65627 (=> res!147715 e!180816)))

(assert (=> d!65627 (= res!147715 (bvsge startIndex!26 (size!7111 lt!140724)))))

(assert (=> d!65627 (= (arrayForallSeekEntryOrOpenFound!0 startIndex!26 lt!140724 mask!3868) e!180816)))

(assert (= (and d!65627 (not res!147715)) b!285219))

(assert (= (and b!285219 c!46305) b!285220))

(assert (= (and b!285219 (not c!46305)) b!285217))

(assert (= (and b!285220 res!147716) b!285218))

(assert (= (or b!285218 b!285217) bm!25548))

(declare-fun m!300079 () Bool)

(assert (=> bm!25548 m!300079))

(declare-fun m!300081 () Bool)

(assert (=> b!285219 m!300081))

(assert (=> b!285219 m!300081))

(declare-fun m!300083 () Bool)

(assert (=> b!285219 m!300083))

(assert (=> b!285220 m!300081))

(declare-fun m!300085 () Bool)

(assert (=> b!285220 m!300085))

(declare-fun m!300087 () Bool)

(assert (=> b!285220 m!300087))

(assert (=> b!285220 m!300081))

(declare-fun m!300089 () Bool)

(assert (=> b!285220 m!300089))

(assert (=> b!285093 d!65627))

(declare-fun b!285221 () Bool)

(declare-fun e!180818 () Bool)

(declare-fun call!25552 () Bool)

(assert (=> b!285221 (= e!180818 call!25552)))

(declare-fun bm!25549 () Bool)

(assert (=> bm!25549 (= call!25552 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26 #b00000000000000000000000000000001) lt!140724 mask!3868))))

(declare-fun b!285222 () Bool)

(declare-fun e!180820 () Bool)

(assert (=> b!285222 (= e!180820 call!25552)))

(declare-fun b!285223 () Bool)

(declare-fun e!180819 () Bool)

(assert (=> b!285223 (= e!180819 e!180818)))

(declare-fun c!46306 () Bool)

(assert (=> b!285223 (= c!46306 (validKeyInArray!0 (select (arr!6759 lt!140724) (bvadd #b00000000000000000000000000000001 startIndex!26))))))

