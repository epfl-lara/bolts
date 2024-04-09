; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93262 () Bool)

(assert start!93262)

(declare-fun b!1056915 () Bool)

(declare-fun res!705729 () Bool)

(declare-fun e!601022 () Bool)

(assert (=> b!1056915 (=> (not res!705729) (not e!601022))))

(declare-datatypes ((array!66648 0))(
  ( (array!66649 (arr!32043 (Array (_ BitVec 32) (_ BitVec 64))) (size!32580 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66648)

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1056915 (= res!705729 (= (select (arr!32043 a!3488) i!1381) k!2747))))

(declare-fun res!705727 () Bool)

(assert (=> start!93262 (=> (not res!705727) (not e!601022))))

(assert (=> start!93262 (= res!705727 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32580 a!3488)) (bvslt (size!32580 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93262 e!601022))

(assert (=> start!93262 true))

(declare-fun array_inv!24665 (array!66648) Bool)

(assert (=> start!93262 (array_inv!24665 a!3488)))

(declare-fun b!1056916 () Bool)

(declare-fun e!601021 () Bool)

(declare-fun arrayContainsKey!0 (array!66648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056916 (= e!601021 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056917 () Bool)

(declare-fun res!705731 () Bool)

(assert (=> b!1056917 (=> (not res!705731) (not e!601022))))

(declare-datatypes ((List!22486 0))(
  ( (Nil!22483) (Cons!22482 (h!23691 (_ BitVec 64)) (t!31800 List!22486)) )
))
(declare-fun arrayNoDuplicates!0 (array!66648 (_ BitVec 32) List!22486) Bool)

(assert (=> b!1056917 (= res!705731 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22483))))

(declare-fun b!1056918 () Bool)

(declare-fun e!601018 () Bool)

(assert (=> b!1056918 (= e!601018 true)))

(declare-fun lt!466230 () (_ BitVec 32))

(assert (=> b!1056918 (arrayNoDuplicates!0 a!3488 lt!466230 Nil!22483)))

(declare-datatypes ((Unit!34617 0))(
  ( (Unit!34618) )
))
(declare-fun lt!466229 () Unit!34617)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66648 (_ BitVec 32) (_ BitVec 32)) Unit!34617)

(assert (=> b!1056918 (= lt!466229 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466230))))

(declare-fun b!1056919 () Bool)

(declare-fun e!601016 () Bool)

(declare-fun e!601020 () Bool)

(assert (=> b!1056919 (= e!601016 e!601020)))

(declare-fun res!705728 () Bool)

(assert (=> b!1056919 (=> (not res!705728) (not e!601020))))

(assert (=> b!1056919 (= res!705728 (not (= lt!466230 i!1381)))))

(declare-fun lt!466231 () array!66648)

(declare-fun arrayScanForKey!0 (array!66648 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056919 (= lt!466230 (arrayScanForKey!0 lt!466231 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1056920 () Bool)

(declare-fun res!705732 () Bool)

(assert (=> b!1056920 (=> (not res!705732) (not e!601022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056920 (= res!705732 (validKeyInArray!0 k!2747))))

(declare-fun b!1056921 () Bool)

(declare-fun e!601017 () Bool)

(assert (=> b!1056921 (= e!601017 e!601021)))

(declare-fun res!705726 () Bool)

(assert (=> b!1056921 (=> res!705726 e!601021)))

(assert (=> b!1056921 (= res!705726 (or (bvsgt lt!466230 i!1381) (bvsle i!1381 lt!466230)))))

(declare-fun b!1056922 () Bool)

(assert (=> b!1056922 (= e!601020 (not e!601018))))

(declare-fun res!705730 () Bool)

(assert (=> b!1056922 (=> res!705730 e!601018)))

(assert (=> b!1056922 (= res!705730 (or (bvsgt lt!466230 i!1381) (bvsle i!1381 lt!466230)))))

(assert (=> b!1056922 e!601017))

(declare-fun res!705724 () Bool)

(assert (=> b!1056922 (=> (not res!705724) (not e!601017))))

(assert (=> b!1056922 (= res!705724 (= (select (store (arr!32043 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466230) k!2747))))

(declare-fun b!1056923 () Bool)

(assert (=> b!1056923 (= e!601022 e!601016)))

(declare-fun res!705725 () Bool)

(assert (=> b!1056923 (=> (not res!705725) (not e!601016))))

(assert (=> b!1056923 (= res!705725 (arrayContainsKey!0 lt!466231 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056923 (= lt!466231 (array!66649 (store (arr!32043 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32580 a!3488)))))

(assert (= (and start!93262 res!705727) b!1056917))

(assert (= (and b!1056917 res!705731) b!1056920))

(assert (= (and b!1056920 res!705732) b!1056915))

(assert (= (and b!1056915 res!705729) b!1056923))

(assert (= (and b!1056923 res!705725) b!1056919))

(assert (= (and b!1056919 res!705728) b!1056922))

(assert (= (and b!1056922 res!705724) b!1056921))

(assert (= (and b!1056921 (not res!705726)) b!1056916))

(assert (= (and b!1056922 (not res!705730)) b!1056918))

(declare-fun m!976799 () Bool)

(assert (=> b!1056922 m!976799))

(declare-fun m!976801 () Bool)

(assert (=> b!1056922 m!976801))

(declare-fun m!976803 () Bool)

(assert (=> b!1056916 m!976803))

(declare-fun m!976805 () Bool)

(assert (=> b!1056917 m!976805))

(declare-fun m!976807 () Bool)

(assert (=> b!1056918 m!976807))

(declare-fun m!976809 () Bool)

(assert (=> b!1056918 m!976809))

(declare-fun m!976811 () Bool)

(assert (=> b!1056923 m!976811))

(assert (=> b!1056923 m!976799))

(declare-fun m!976813 () Bool)

(assert (=> b!1056920 m!976813))

(declare-fun m!976815 () Bool)

(assert (=> b!1056915 m!976815))

(declare-fun m!976817 () Bool)

(assert (=> b!1056919 m!976817))

(declare-fun m!976819 () Bool)

(assert (=> start!93262 m!976819))

(push 1)

