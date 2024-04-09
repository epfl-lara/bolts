; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120522 () Bool)

(assert start!120522)

(declare-fun b!1402812 () Bool)

(declare-fun e!794355 () Bool)

(declare-fun e!794352 () Bool)

(assert (=> b!1402812 (= e!794355 e!794352)))

(declare-fun res!941438 () Bool)

(assert (=> b!1402812 (=> res!941438 e!794352)))

(declare-datatypes ((array!95849 0))(
  ( (array!95850 (arr!46271 (Array (_ BitVec 32) (_ BitVec 64))) (size!46822 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95849)

(declare-datatypes ((SeekEntryResult!10610 0))(
  ( (MissingZero!10610 (index!44816 (_ BitVec 32))) (Found!10610 (index!44817 (_ BitVec 32))) (Intermediate!10610 (undefined!11422 Bool) (index!44818 (_ BitVec 32)) (x!126440 (_ BitVec 32))) (Undefined!10610) (MissingVacant!10610 (index!44819 (_ BitVec 32))) )
))
(declare-fun lt!618119 () SeekEntryResult!10610)

(declare-fun lt!618118 () SeekEntryResult!10610)

(declare-fun lt!618115 () (_ BitVec 32))

(assert (=> b!1402812 (= res!941438 (or (bvslt (x!126440 lt!618119) #b00000000000000000000000000000000) (bvsgt (x!126440 lt!618119) #b01111111111111111111111111111110) (bvslt (x!126440 lt!618118) #b00000000000000000000000000000000) (bvsgt (x!126440 lt!618118) #b01111111111111111111111111111110) (bvslt lt!618115 #b00000000000000000000000000000000) (bvsge lt!618115 (size!46822 a!2901)) (bvslt (index!44818 lt!618119) #b00000000000000000000000000000000) (bvsge (index!44818 lt!618119) (size!46822 a!2901)) (bvslt (index!44818 lt!618118) #b00000000000000000000000000000000) (bvsge (index!44818 lt!618118) (size!46822 a!2901)) (not (= lt!618119 (Intermediate!10610 false (index!44818 lt!618119) (x!126440 lt!618119)))) (not (= lt!618118 (Intermediate!10610 false (index!44818 lt!618118) (x!126440 lt!618118))))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!618114 () array!95849)

(declare-fun lt!618120 () SeekEntryResult!10610)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95849 (_ BitVec 32)) SeekEntryResult!10610)

(assert (=> b!1402812 (= lt!618120 (seekKeyOrZeroReturnVacant!0 (x!126440 lt!618118) (index!44818 lt!618118) (index!44818 lt!618118) (select (arr!46271 a!2901) j!112) lt!618114 mask!2840))))

(declare-fun lt!618121 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95849 (_ BitVec 32)) SeekEntryResult!10610)

(assert (=> b!1402812 (= lt!618120 (seekEntryOrOpen!0 lt!618121 lt!618114 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402812 (and (not (undefined!11422 lt!618118)) (= (index!44818 lt!618118) i!1037) (bvslt (x!126440 lt!618118) (x!126440 lt!618119)) (= (select (store (arr!46271 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44818 lt!618118)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47174 0))(
  ( (Unit!47175) )
))
(declare-fun lt!618117 () Unit!47174)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95849 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47174)

(assert (=> b!1402812 (= lt!618117 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618115 (x!126440 lt!618119) (index!44818 lt!618119) (x!126440 lt!618118) (index!44818 lt!618118) (undefined!11422 lt!618118) mask!2840))))

(declare-fun b!1402813 () Bool)

(declare-fun e!794356 () Bool)

(assert (=> b!1402813 (= e!794352 e!794356)))

(declare-fun res!941441 () Bool)

(assert (=> b!1402813 (=> res!941441 e!794356)))

(assert (=> b!1402813 (= res!941441 (bvslt mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!618112 () SeekEntryResult!10610)

(assert (=> b!1402813 (= lt!618112 lt!618120)))

(declare-fun lt!618113 () Unit!47174)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95849 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47174)

(assert (=> b!1402813 (= lt!618113 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!618115 (x!126440 lt!618119) (index!44818 lt!618119) (x!126440 lt!618118) (index!44818 lt!618118) mask!2840))))

(declare-fun res!941432 () Bool)

(declare-fun e!794354 () Bool)

(assert (=> start!120522 (=> (not res!941432) (not e!794354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120522 (= res!941432 (validMask!0 mask!2840))))

(assert (=> start!120522 e!794354))

(assert (=> start!120522 true))

(declare-fun array_inv!35216 (array!95849) Bool)

(assert (=> start!120522 (array_inv!35216 a!2901)))

(declare-fun b!1402814 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402814 (= e!794356 (validKeyInArray!0 lt!618121))))

(declare-fun b!1402815 () Bool)

(declare-fun res!941435 () Bool)

(assert (=> b!1402815 (=> (not res!941435) (not e!794354))))

(assert (=> b!1402815 (= res!941435 (validKeyInArray!0 (select (arr!46271 a!2901) j!112)))))

(declare-fun b!1402816 () Bool)

(declare-fun e!794353 () Bool)

(assert (=> b!1402816 (= e!794354 (not e!794353))))

(declare-fun res!941439 () Bool)

(assert (=> b!1402816 (=> res!941439 e!794353)))

(get-info :version)

(assert (=> b!1402816 (= res!941439 (or (not ((_ is Intermediate!10610) lt!618119)) (undefined!11422 lt!618119)))))

(assert (=> b!1402816 (= lt!618112 (Found!10610 j!112))))

(assert (=> b!1402816 (= lt!618112 (seekEntryOrOpen!0 (select (arr!46271 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95849 (_ BitVec 32)) Bool)

(assert (=> b!1402816 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!618116 () Unit!47174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95849 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47174)

(assert (=> b!1402816 (= lt!618116 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95849 (_ BitVec 32)) SeekEntryResult!10610)

(assert (=> b!1402816 (= lt!618119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618115 (select (arr!46271 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402816 (= lt!618115 (toIndex!0 (select (arr!46271 a!2901) j!112) mask!2840))))

(declare-fun b!1402817 () Bool)

(declare-fun res!941437 () Bool)

(assert (=> b!1402817 (=> (not res!941437) (not e!794354))))

(assert (=> b!1402817 (= res!941437 (validKeyInArray!0 (select (arr!46271 a!2901) i!1037)))))

(declare-fun b!1402818 () Bool)

(declare-fun res!941434 () Bool)

(assert (=> b!1402818 (=> res!941434 e!794352)))

(assert (=> b!1402818 (= res!941434 (not (= lt!618118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!618115 lt!618121 lt!618114 mask!2840))))))

(declare-fun b!1402819 () Bool)

(declare-fun res!941442 () Bool)

(assert (=> b!1402819 (=> (not res!941442) (not e!794354))))

(assert (=> b!1402819 (= res!941442 (and (= (size!46822 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46822 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46822 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402820 () Bool)

(assert (=> b!1402820 (= e!794353 e!794355)))

(declare-fun res!941440 () Bool)

(assert (=> b!1402820 (=> res!941440 e!794355)))

(assert (=> b!1402820 (= res!941440 (or (= lt!618119 lt!618118) (not ((_ is Intermediate!10610) lt!618118))))))

(assert (=> b!1402820 (= lt!618118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!618121 mask!2840) lt!618121 lt!618114 mask!2840))))

(assert (=> b!1402820 (= lt!618121 (select (store (arr!46271 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402820 (= lt!618114 (array!95850 (store (arr!46271 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46822 a!2901)))))

(declare-fun b!1402821 () Bool)

(declare-fun res!941433 () Bool)

(assert (=> b!1402821 (=> (not res!941433) (not e!794354))))

(declare-datatypes ((List!32970 0))(
  ( (Nil!32967) (Cons!32966 (h!34214 (_ BitVec 64)) (t!47671 List!32970)) )
))
(declare-fun arrayNoDuplicates!0 (array!95849 (_ BitVec 32) List!32970) Bool)

(assert (=> b!1402821 (= res!941433 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32967))))

(declare-fun b!1402822 () Bool)

(declare-fun res!941436 () Bool)

(assert (=> b!1402822 (=> (not res!941436) (not e!794354))))

(assert (=> b!1402822 (= res!941436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120522 res!941432) b!1402819))

(assert (= (and b!1402819 res!941442) b!1402817))

(assert (= (and b!1402817 res!941437) b!1402815))

(assert (= (and b!1402815 res!941435) b!1402822))

(assert (= (and b!1402822 res!941436) b!1402821))

(assert (= (and b!1402821 res!941433) b!1402816))

(assert (= (and b!1402816 (not res!941439)) b!1402820))

(assert (= (and b!1402820 (not res!941440)) b!1402812))

(assert (= (and b!1402812 (not res!941438)) b!1402818))

(assert (= (and b!1402818 (not res!941434)) b!1402813))

(assert (= (and b!1402813 (not res!941441)) b!1402814))

(declare-fun m!1291271 () Bool)

(assert (=> b!1402817 m!1291271))

(assert (=> b!1402817 m!1291271))

(declare-fun m!1291273 () Bool)

(assert (=> b!1402817 m!1291273))

(declare-fun m!1291275 () Bool)

(assert (=> b!1402821 m!1291275))

(declare-fun m!1291277 () Bool)

(assert (=> b!1402822 m!1291277))

(declare-fun m!1291279 () Bool)

(assert (=> b!1402814 m!1291279))

(declare-fun m!1291281 () Bool)

(assert (=> b!1402813 m!1291281))

(declare-fun m!1291283 () Bool)

(assert (=> start!120522 m!1291283))

(declare-fun m!1291285 () Bool)

(assert (=> start!120522 m!1291285))

(declare-fun m!1291287 () Bool)

(assert (=> b!1402818 m!1291287))

(declare-fun m!1291289 () Bool)

(assert (=> b!1402820 m!1291289))

(assert (=> b!1402820 m!1291289))

(declare-fun m!1291291 () Bool)

(assert (=> b!1402820 m!1291291))

(declare-fun m!1291293 () Bool)

(assert (=> b!1402820 m!1291293))

(declare-fun m!1291295 () Bool)

(assert (=> b!1402820 m!1291295))

(declare-fun m!1291297 () Bool)

(assert (=> b!1402812 m!1291297))

(declare-fun m!1291299 () Bool)

(assert (=> b!1402812 m!1291299))

(declare-fun m!1291301 () Bool)

(assert (=> b!1402812 m!1291301))

(assert (=> b!1402812 m!1291297))

(declare-fun m!1291303 () Bool)

(assert (=> b!1402812 m!1291303))

(declare-fun m!1291305 () Bool)

(assert (=> b!1402812 m!1291305))

(assert (=> b!1402812 m!1291293))

(assert (=> b!1402815 m!1291297))

(assert (=> b!1402815 m!1291297))

(declare-fun m!1291307 () Bool)

(assert (=> b!1402815 m!1291307))

(assert (=> b!1402816 m!1291297))

(declare-fun m!1291309 () Bool)

(assert (=> b!1402816 m!1291309))

(assert (=> b!1402816 m!1291297))

(declare-fun m!1291311 () Bool)

(assert (=> b!1402816 m!1291311))

(assert (=> b!1402816 m!1291297))

(declare-fun m!1291313 () Bool)

(assert (=> b!1402816 m!1291313))

(assert (=> b!1402816 m!1291297))

(declare-fun m!1291315 () Bool)

(assert (=> b!1402816 m!1291315))

(declare-fun m!1291317 () Bool)

(assert (=> b!1402816 m!1291317))

(check-sat (not b!1402817) (not b!1402820) (not b!1402816) (not start!120522) (not b!1402813) (not b!1402818) (not b!1402815) (not b!1402814) (not b!1402822) (not b!1402812) (not b!1402821))
(check-sat)
