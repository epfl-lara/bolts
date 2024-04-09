; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93094 () Bool)

(assert start!93094)

(declare-fun b!1055730 () Bool)

(declare-fun e!600110 () Bool)

(declare-fun e!600108 () Bool)

(assert (=> b!1055730 (= e!600110 e!600108)))

(declare-fun res!704659 () Bool)

(assert (=> b!1055730 (=> res!704659 e!600108)))

(declare-fun lt!465889 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055730 (= res!704659 (bvsle lt!465889 i!1381))))

(declare-fun b!1055732 () Bool)

(declare-fun res!704655 () Bool)

(declare-fun e!600107 () Bool)

(assert (=> b!1055732 (=> (not res!704655) (not e!600107))))

(declare-datatypes ((array!66567 0))(
  ( (array!66568 (arr!32007 (Array (_ BitVec 32) (_ BitVec 64))) (size!32544 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66567)

(declare-datatypes ((List!22450 0))(
  ( (Nil!22447) (Cons!22446 (h!23655 (_ BitVec 64)) (t!31764 List!22450)) )
))
(declare-fun arrayNoDuplicates!0 (array!66567 (_ BitVec 32) List!22450) Bool)

(assert (=> b!1055732 (= res!704655 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22447))))

(declare-fun b!1055733 () Bool)

(declare-fun e!600104 () Bool)

(declare-fun e!600106 () Bool)

(assert (=> b!1055733 (= e!600104 (not e!600106))))

(declare-fun res!704654 () Bool)

(assert (=> b!1055733 (=> res!704654 e!600106)))

(assert (=> b!1055733 (= res!704654 (bvsle lt!465889 i!1381))))

(assert (=> b!1055733 e!600110))

(declare-fun res!704661 () Bool)

(assert (=> b!1055733 (=> (not res!704661) (not e!600110))))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1055733 (= res!704661 (= (select (store (arr!32007 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465889) k!2747))))

(declare-fun b!1055734 () Bool)

(declare-fun e!600105 () Bool)

(assert (=> b!1055734 (= e!600107 e!600105)))

(declare-fun res!704658 () Bool)

(assert (=> b!1055734 (=> (not res!704658) (not e!600105))))

(declare-fun lt!465885 () array!66567)

(declare-fun arrayContainsKey!0 (array!66567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055734 (= res!704658 (arrayContainsKey!0 lt!465885 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055734 (= lt!465885 (array!66568 (store (arr!32007 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32544 a!3488)))))

(declare-fun b!1055735 () Bool)

(assert (=> b!1055735 (= e!600108 (arrayContainsKey!0 a!3488 k!2747 lt!465889))))

(declare-fun b!1055736 () Bool)

(declare-fun res!704653 () Bool)

(assert (=> b!1055736 (=> (not res!704653) (not e!600107))))

(assert (=> b!1055736 (= res!704653 (= (select (arr!32007 a!3488) i!1381) k!2747))))

(declare-fun b!1055737 () Bool)

(declare-fun res!704660 () Bool)

(assert (=> b!1055737 (=> (not res!704660) (not e!600107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055737 (= res!704660 (validKeyInArray!0 k!2747))))

(declare-fun b!1055738 () Bool)

(assert (=> b!1055738 (= e!600106 true)))

(assert (=> b!1055738 false))

(declare-datatypes ((Unit!34581 0))(
  ( (Unit!34582) )
))
(declare-fun lt!465887 () Unit!34581)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66567 (_ BitVec 64) (_ BitVec 32) List!22450) Unit!34581)

(assert (=> b!1055738 (= lt!465887 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22447))))

(assert (=> b!1055738 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465888 () Unit!34581)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66567 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34581)

(assert (=> b!1055738 (= lt!465888 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465889 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1055738 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22447)))

(declare-fun lt!465886 () Unit!34581)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66567 (_ BitVec 32) (_ BitVec 32)) Unit!34581)

(assert (=> b!1055738 (= lt!465886 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!704657 () Bool)

(assert (=> start!93094 (=> (not res!704657) (not e!600107))))

(assert (=> start!93094 (= res!704657 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32544 a!3488)) (bvslt (size!32544 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93094 e!600107))

(assert (=> start!93094 true))

(declare-fun array_inv!24629 (array!66567) Bool)

(assert (=> start!93094 (array_inv!24629 a!3488)))

(declare-fun b!1055731 () Bool)

(assert (=> b!1055731 (= e!600105 e!600104)))

(declare-fun res!704656 () Bool)

(assert (=> b!1055731 (=> (not res!704656) (not e!600104))))

(assert (=> b!1055731 (= res!704656 (not (= lt!465889 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66567 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055731 (= lt!465889 (arrayScanForKey!0 lt!465885 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93094 res!704657) b!1055732))

(assert (= (and b!1055732 res!704655) b!1055737))

(assert (= (and b!1055737 res!704660) b!1055736))

(assert (= (and b!1055736 res!704653) b!1055734))

(assert (= (and b!1055734 res!704658) b!1055731))

(assert (= (and b!1055731 res!704656) b!1055733))

(assert (= (and b!1055733 res!704661) b!1055730))

(assert (= (and b!1055730 (not res!704659)) b!1055735))

(assert (= (and b!1055733 (not res!704654)) b!1055738))

(declare-fun m!975845 () Bool)

(assert (=> b!1055732 m!975845))

(declare-fun m!975847 () Bool)

(assert (=> start!93094 m!975847))

(declare-fun m!975849 () Bool)

(assert (=> b!1055737 m!975849))

(declare-fun m!975851 () Bool)

(assert (=> b!1055734 m!975851))

(declare-fun m!975853 () Bool)

(assert (=> b!1055734 m!975853))

(declare-fun m!975855 () Bool)

(assert (=> b!1055735 m!975855))

(assert (=> b!1055733 m!975853))

(declare-fun m!975857 () Bool)

(assert (=> b!1055733 m!975857))

(declare-fun m!975859 () Bool)

(assert (=> b!1055736 m!975859))

(declare-fun m!975861 () Bool)

(assert (=> b!1055731 m!975861))

(declare-fun m!975863 () Bool)

(assert (=> b!1055738 m!975863))

(declare-fun m!975865 () Bool)

(assert (=> b!1055738 m!975865))

(declare-fun m!975867 () Bool)

(assert (=> b!1055738 m!975867))

(declare-fun m!975869 () Bool)

(assert (=> b!1055738 m!975869))

(declare-fun m!975871 () Bool)

(assert (=> b!1055738 m!975871))

(push 1)

(assert (not b!1055735))

