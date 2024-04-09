; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120164 () Bool)

(assert start!120164)

(declare-fun res!937580 () Bool)

(declare-fun e!791788 () Bool)

(assert (=> start!120164 (=> (not res!937580) (not e!791788))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120164 (= res!937580 (validMask!0 mask!2840))))

(assert (=> start!120164 e!791788))

(assert (=> start!120164 true))

(declare-datatypes ((array!95611 0))(
  ( (array!95612 (arr!46155 (Array (_ BitVec 32) (_ BitVec 64))) (size!46706 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95611)

(declare-fun array_inv!35100 (array!95611) Bool)

(assert (=> start!120164 (array_inv!35100 a!2901)))

(declare-fun b!1398557 () Bool)

(declare-fun res!937584 () Bool)

(assert (=> b!1398557 (=> (not res!937584) (not e!791788))))

(declare-datatypes ((List!32854 0))(
  ( (Nil!32851) (Cons!32850 (h!34092 (_ BitVec 64)) (t!47555 List!32854)) )
))
(declare-fun arrayNoDuplicates!0 (array!95611 (_ BitVec 32) List!32854) Bool)

(assert (=> b!1398557 (= res!937584 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32851))))

(declare-fun e!791789 () Bool)

(declare-fun b!1398558 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10494 0))(
  ( (MissingZero!10494 (index!44346 (_ BitVec 32))) (Found!10494 (index!44347 (_ BitVec 32))) (Intermediate!10494 (undefined!11306 Bool) (index!44348 (_ BitVec 32)) (x!125991 (_ BitVec 32))) (Undefined!10494) (MissingVacant!10494 (index!44349 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95611 (_ BitVec 32)) SeekEntryResult!10494)

(assert (=> b!1398558 (= e!791789 (= (seekEntryOrOpen!0 (select (arr!46155 a!2901) j!112) a!2901 mask!2840) (Found!10494 j!112)))))

(declare-fun b!1398559 () Bool)

(declare-fun res!937581 () Bool)

(assert (=> b!1398559 (=> (not res!937581) (not e!791788))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1398559 (= res!937581 (and (= (size!46706 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46706 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46706 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398560 () Bool)

(declare-fun res!937585 () Bool)

(assert (=> b!1398560 (=> (not res!937585) (not e!791788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398560 (= res!937585 (validKeyInArray!0 (select (arr!46155 a!2901) j!112)))))

(declare-fun b!1398561 () Bool)

(declare-fun res!937579 () Bool)

(assert (=> b!1398561 (=> (not res!937579) (not e!791788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95611 (_ BitVec 32)) Bool)

(assert (=> b!1398561 (= res!937579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398562 () Bool)

(declare-fun e!791785 () Bool)

(declare-fun e!791786 () Bool)

(assert (=> b!1398562 (= e!791785 e!791786)))

(declare-fun res!937587 () Bool)

(assert (=> b!1398562 (=> res!937587 e!791786)))

(declare-fun lt!615001 () SeekEntryResult!10494)

(declare-fun lt!615000 () SeekEntryResult!10494)

(assert (=> b!1398562 (= res!937587 (or (= lt!615001 lt!615000) (not (is-Intermediate!10494 lt!615000))))))

(declare-fun lt!615004 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95611 (_ BitVec 32)) SeekEntryResult!10494)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398562 (= lt!615000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615004 mask!2840) lt!615004 (array!95612 (store (arr!46155 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46706 a!2901)) mask!2840))))

(assert (=> b!1398562 (= lt!615004 (select (store (arr!46155 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398563 () Bool)

(assert (=> b!1398563 (= e!791788 (not e!791785))))

(declare-fun res!937586 () Bool)

(assert (=> b!1398563 (=> res!937586 e!791785)))

(assert (=> b!1398563 (= res!937586 (or (not (is-Intermediate!10494 lt!615001)) (undefined!11306 lt!615001)))))

(assert (=> b!1398563 e!791789))

(declare-fun res!937583 () Bool)

(assert (=> b!1398563 (=> (not res!937583) (not e!791789))))

(assert (=> b!1398563 (= res!937583 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46942 0))(
  ( (Unit!46943) )
))
(declare-fun lt!615003 () Unit!46942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95611 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46942)

(assert (=> b!1398563 (= lt!615003 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614999 () (_ BitVec 32))

(assert (=> b!1398563 (= lt!615001 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614999 (select (arr!46155 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1398563 (= lt!614999 (toIndex!0 (select (arr!46155 a!2901) j!112) mask!2840))))

(declare-fun b!1398564 () Bool)

(declare-fun res!937582 () Bool)

(assert (=> b!1398564 (=> (not res!937582) (not e!791788))))

(assert (=> b!1398564 (= res!937582 (validKeyInArray!0 (select (arr!46155 a!2901) i!1037)))))

(declare-fun b!1398565 () Bool)

(assert (=> b!1398565 (= e!791786 (or (bvslt mask!2840 #b00000000000000000000000000000000) (and (bvsge (index!44348 lt!615000) #b00000000000000000000000000000000) (bvslt (index!44348 lt!615000) (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(assert (=> b!1398565 (and (not (undefined!11306 lt!615000)) (= (index!44348 lt!615000) i!1037) (bvslt (x!125991 lt!615000) (x!125991 lt!615001)) (= (select (store (arr!46155 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44348 lt!615000)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!615002 () Unit!46942)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95611 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46942)

(assert (=> b!1398565 (= lt!615002 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614999 (x!125991 lt!615001) (index!44348 lt!615001) (x!125991 lt!615000) (index!44348 lt!615000) (undefined!11306 lt!615000) mask!2840))))

(assert (= (and start!120164 res!937580) b!1398559))

(assert (= (and b!1398559 res!937581) b!1398564))

(assert (= (and b!1398564 res!937582) b!1398560))

(assert (= (and b!1398560 res!937585) b!1398561))

(assert (= (and b!1398561 res!937579) b!1398557))

(assert (= (and b!1398557 res!937584) b!1398563))

(assert (= (and b!1398563 res!937583) b!1398558))

(assert (= (and b!1398563 (not res!937586)) b!1398562))

(assert (= (and b!1398562 (not res!937587)) b!1398565))

(declare-fun m!1285827 () Bool)

(assert (=> b!1398565 m!1285827))

(declare-fun m!1285829 () Bool)

(assert (=> b!1398565 m!1285829))

(declare-fun m!1285831 () Bool)

(assert (=> b!1398565 m!1285831))

(declare-fun m!1285833 () Bool)

(assert (=> b!1398564 m!1285833))

(assert (=> b!1398564 m!1285833))

(declare-fun m!1285835 () Bool)

(assert (=> b!1398564 m!1285835))

(declare-fun m!1285837 () Bool)

(assert (=> b!1398563 m!1285837))

(declare-fun m!1285839 () Bool)

(assert (=> b!1398563 m!1285839))

(assert (=> b!1398563 m!1285837))

(declare-fun m!1285841 () Bool)

(assert (=> b!1398563 m!1285841))

(assert (=> b!1398563 m!1285837))

(declare-fun m!1285843 () Bool)

(assert (=> b!1398563 m!1285843))

(declare-fun m!1285845 () Bool)

(assert (=> b!1398563 m!1285845))

(declare-fun m!1285847 () Bool)

(assert (=> start!120164 m!1285847))

(declare-fun m!1285849 () Bool)

(assert (=> start!120164 m!1285849))

(assert (=> b!1398560 m!1285837))

(assert (=> b!1398560 m!1285837))

(declare-fun m!1285851 () Bool)

(assert (=> b!1398560 m!1285851))

(assert (=> b!1398558 m!1285837))

(assert (=> b!1398558 m!1285837))

(declare-fun m!1285853 () Bool)

(assert (=> b!1398558 m!1285853))

(declare-fun m!1285855 () Bool)

(assert (=> b!1398557 m!1285855))

(declare-fun m!1285857 () Bool)

(assert (=> b!1398562 m!1285857))

(assert (=> b!1398562 m!1285827))

(assert (=> b!1398562 m!1285857))

(declare-fun m!1285859 () Bool)

(assert (=> b!1398562 m!1285859))

(declare-fun m!1285861 () Bool)

(assert (=> b!1398562 m!1285861))

(declare-fun m!1285863 () Bool)

(assert (=> b!1398561 m!1285863))

(push 1)

(assert (not b!1398563))

(assert (not b!1398561))

(assert (not b!1398564))

(assert (not b!1398558))

(assert (not b!1398557))

(assert (not b!1398565))

(assert (not b!1398562))

(assert (not start!120164))

(assert (not b!1398560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

