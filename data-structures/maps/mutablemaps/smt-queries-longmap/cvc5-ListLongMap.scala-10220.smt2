; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120412 () Bool)

(assert start!120412)

(declare-fun b!1401060 () Bool)

(declare-fun res!939686 () Bool)

(declare-fun e!793328 () Bool)

(assert (=> b!1401060 (=> (not res!939686) (not e!793328))))

(declare-datatypes ((array!95739 0))(
  ( (array!95740 (arr!46216 (Array (_ BitVec 32) (_ BitVec 64))) (size!46767 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95739)

(declare-datatypes ((List!32915 0))(
  ( (Nil!32912) (Cons!32911 (h!34159 (_ BitVec 64)) (t!47616 List!32915)) )
))
(declare-fun arrayNoDuplicates!0 (array!95739 (_ BitVec 32) List!32915) Bool)

(assert (=> b!1401060 (= res!939686 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32912))))

(declare-fun b!1401061 () Bool)

(declare-fun res!939685 () Bool)

(assert (=> b!1401061 (=> (not res!939685) (not e!793328))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95739 (_ BitVec 32)) Bool)

(assert (=> b!1401061 (= res!939685 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401062 () Bool)

(declare-fun res!939689 () Bool)

(assert (=> b!1401062 (=> (not res!939689) (not e!793328))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401062 (= res!939689 (validKeyInArray!0 (select (arr!46216 a!2901) j!112)))))

(declare-fun b!1401063 () Bool)

(declare-fun e!793334 () Bool)

(declare-fun e!793329 () Bool)

(assert (=> b!1401063 (= e!793334 e!793329)))

(declare-fun res!939688 () Bool)

(assert (=> b!1401063 (=> res!939688 e!793329)))

(declare-datatypes ((SeekEntryResult!10555 0))(
  ( (MissingZero!10555 (index!44596 (_ BitVec 32))) (Found!10555 (index!44597 (_ BitVec 32))) (Intermediate!10555 (undefined!11367 Bool) (index!44598 (_ BitVec 32)) (x!126241 (_ BitVec 32))) (Undefined!10555) (MissingVacant!10555 (index!44599 (_ BitVec 32))) )
))
(declare-fun lt!616661 () SeekEntryResult!10555)

(declare-fun lt!616662 () (_ BitVec 32))

(declare-fun lt!616656 () SeekEntryResult!10555)

(assert (=> b!1401063 (= res!939688 (or (bvslt (x!126241 lt!616661) #b00000000000000000000000000000000) (bvsgt (x!126241 lt!616661) #b01111111111111111111111111111110) (bvslt (x!126241 lt!616656) #b00000000000000000000000000000000) (bvsgt (x!126241 lt!616656) #b01111111111111111111111111111110) (bvslt lt!616662 #b00000000000000000000000000000000) (bvsge lt!616662 (size!46767 a!2901)) (bvslt (index!44598 lt!616661) #b00000000000000000000000000000000) (bvsge (index!44598 lt!616661) (size!46767 a!2901)) (bvslt (index!44598 lt!616656) #b00000000000000000000000000000000) (bvsge (index!44598 lt!616656) (size!46767 a!2901)) (not (= lt!616661 (Intermediate!10555 false (index!44598 lt!616661) (x!126241 lt!616661)))) (not (= lt!616656 (Intermediate!10555 false (index!44598 lt!616656) (x!126241 lt!616656))))))))

(declare-fun e!793331 () Bool)

(assert (=> b!1401063 e!793331))

(declare-fun res!939687 () Bool)

(assert (=> b!1401063 (=> (not res!939687) (not e!793331))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401063 (= res!939687 (and (not (undefined!11367 lt!616656)) (= (index!44598 lt!616656) i!1037) (bvslt (x!126241 lt!616656) (x!126241 lt!616661)) (= (select (store (arr!46216 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44598 lt!616656)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47064 0))(
  ( (Unit!47065) )
))
(declare-fun lt!616660 () Unit!47064)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47064)

(assert (=> b!1401063 (= lt!616660 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616662 (x!126241 lt!616661) (index!44598 lt!616661) (x!126241 lt!616656) (index!44598 lt!616656) (undefined!11367 lt!616656) mask!2840))))

(declare-fun b!1401064 () Bool)

(declare-fun e!793332 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95739 (_ BitVec 32)) SeekEntryResult!10555)

(assert (=> b!1401064 (= e!793332 (= (seekEntryOrOpen!0 (select (arr!46216 a!2901) j!112) a!2901 mask!2840) (Found!10555 j!112)))))

(declare-fun b!1401065 () Bool)

(declare-fun res!939680 () Bool)

(assert (=> b!1401065 (=> (not res!939680) (not e!793328))))

(assert (=> b!1401065 (= res!939680 (and (= (size!46767 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46767 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46767 a!2901)) (not (= i!1037 j!112))))))

(declare-fun lt!616659 () array!95739)

(declare-fun lt!616663 () (_ BitVec 64))

(declare-fun b!1401067 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95739 (_ BitVec 32)) SeekEntryResult!10555)

(assert (=> b!1401067 (= e!793331 (= (seekEntryOrOpen!0 lt!616663 lt!616659 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126241 lt!616656) (index!44598 lt!616656) (index!44598 lt!616656) (select (arr!46216 a!2901) j!112) lt!616659 mask!2840)))))

(declare-fun b!1401068 () Bool)

(declare-fun res!939683 () Bool)

(assert (=> b!1401068 (=> (not res!939683) (not e!793328))))

(assert (=> b!1401068 (= res!939683 (validKeyInArray!0 (select (arr!46216 a!2901) i!1037)))))

(declare-fun b!1401069 () Bool)

(declare-fun e!793333 () Bool)

(assert (=> b!1401069 (= e!793333 e!793334)))

(declare-fun res!939682 () Bool)

(assert (=> b!1401069 (=> res!939682 e!793334)))

(assert (=> b!1401069 (= res!939682 (or (= lt!616661 lt!616656) (not (is-Intermediate!10555 lt!616656))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95739 (_ BitVec 32)) SeekEntryResult!10555)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401069 (= lt!616656 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616663 mask!2840) lt!616663 lt!616659 mask!2840))))

(assert (=> b!1401069 (= lt!616663 (select (store (arr!46216 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401069 (= lt!616659 (array!95740 (store (arr!46216 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46767 a!2901)))))

(declare-fun b!1401070 () Bool)

(assert (=> b!1401070 (= e!793328 (not e!793333))))

(declare-fun res!939681 () Bool)

(assert (=> b!1401070 (=> res!939681 e!793333)))

(assert (=> b!1401070 (= res!939681 (or (not (is-Intermediate!10555 lt!616661)) (undefined!11367 lt!616661)))))

(assert (=> b!1401070 e!793332))

(declare-fun res!939684 () Bool)

(assert (=> b!1401070 (=> (not res!939684) (not e!793332))))

(assert (=> b!1401070 (= res!939684 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616657 () Unit!47064)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47064)

(assert (=> b!1401070 (= lt!616657 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1401070 (= lt!616661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616662 (select (arr!46216 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1401070 (= lt!616662 (toIndex!0 (select (arr!46216 a!2901) j!112) mask!2840))))

(declare-fun res!939690 () Bool)

(assert (=> start!120412 (=> (not res!939690) (not e!793328))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120412 (= res!939690 (validMask!0 mask!2840))))

(assert (=> start!120412 e!793328))

(assert (=> start!120412 true))

(declare-fun array_inv!35161 (array!95739) Bool)

(assert (=> start!120412 (array_inv!35161 a!2901)))

(declare-fun b!1401066 () Bool)

(assert (=> b!1401066 (= e!793329 true)))

(declare-fun lt!616658 () SeekEntryResult!10555)

(assert (=> b!1401066 (= lt!616658 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616662 lt!616663 lt!616659 mask!2840))))

(assert (= (and start!120412 res!939690) b!1401065))

(assert (= (and b!1401065 res!939680) b!1401068))

(assert (= (and b!1401068 res!939683) b!1401062))

(assert (= (and b!1401062 res!939689) b!1401061))

(assert (= (and b!1401061 res!939685) b!1401060))

(assert (= (and b!1401060 res!939686) b!1401070))

(assert (= (and b!1401070 res!939684) b!1401064))

(assert (= (and b!1401070 (not res!939681)) b!1401069))

(assert (= (and b!1401069 (not res!939682)) b!1401063))

(assert (= (and b!1401063 res!939687) b!1401067))

(assert (= (and b!1401063 (not res!939688)) b!1401066))

(declare-fun m!1288805 () Bool)

(assert (=> b!1401067 m!1288805))

(declare-fun m!1288807 () Bool)

(assert (=> b!1401067 m!1288807))

(assert (=> b!1401067 m!1288807))

(declare-fun m!1288809 () Bool)

(assert (=> b!1401067 m!1288809))

(declare-fun m!1288811 () Bool)

(assert (=> b!1401068 m!1288811))

(assert (=> b!1401068 m!1288811))

(declare-fun m!1288813 () Bool)

(assert (=> b!1401068 m!1288813))

(declare-fun m!1288815 () Bool)

(assert (=> b!1401063 m!1288815))

(declare-fun m!1288817 () Bool)

(assert (=> b!1401063 m!1288817))

(declare-fun m!1288819 () Bool)

(assert (=> b!1401063 m!1288819))

(assert (=> b!1401064 m!1288807))

(assert (=> b!1401064 m!1288807))

(declare-fun m!1288821 () Bool)

(assert (=> b!1401064 m!1288821))

(declare-fun m!1288823 () Bool)

(assert (=> b!1401060 m!1288823))

(assert (=> b!1401070 m!1288807))

(declare-fun m!1288825 () Bool)

(assert (=> b!1401070 m!1288825))

(assert (=> b!1401070 m!1288807))

(declare-fun m!1288827 () Bool)

(assert (=> b!1401070 m!1288827))

(assert (=> b!1401070 m!1288807))

(declare-fun m!1288829 () Bool)

(assert (=> b!1401070 m!1288829))

(declare-fun m!1288831 () Bool)

(assert (=> b!1401070 m!1288831))

(declare-fun m!1288833 () Bool)

(assert (=> b!1401061 m!1288833))

(declare-fun m!1288835 () Bool)

(assert (=> start!120412 m!1288835))

(declare-fun m!1288837 () Bool)

(assert (=> start!120412 m!1288837))

(declare-fun m!1288839 () Bool)

(assert (=> b!1401066 m!1288839))

(declare-fun m!1288841 () Bool)

(assert (=> b!1401069 m!1288841))

(assert (=> b!1401069 m!1288841))

(declare-fun m!1288843 () Bool)

(assert (=> b!1401069 m!1288843))

(assert (=> b!1401069 m!1288815))

(declare-fun m!1288845 () Bool)

(assert (=> b!1401069 m!1288845))

(assert (=> b!1401062 m!1288807))

(assert (=> b!1401062 m!1288807))

(declare-fun m!1288847 () Bool)

(assert (=> b!1401062 m!1288847))

(push 1)

