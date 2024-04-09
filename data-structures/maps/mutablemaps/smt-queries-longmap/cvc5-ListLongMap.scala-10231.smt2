; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120478 () Bool)

(assert start!120478)

(declare-fun b!1402147 () Bool)

(declare-fun e!794020 () Bool)

(declare-fun e!794017 () Bool)

(assert (=> b!1402147 (= e!794020 e!794017)))

(declare-fun res!940771 () Bool)

(assert (=> b!1402147 (=> res!940771 e!794017)))

(declare-datatypes ((SeekEntryResult!10588 0))(
  ( (MissingZero!10588 (index!44728 (_ BitVec 32))) (Found!10588 (index!44729 (_ BitVec 32))) (Intermediate!10588 (undefined!11400 Bool) (index!44730 (_ BitVec 32)) (x!126362 (_ BitVec 32))) (Undefined!10588) (MissingVacant!10588 (index!44731 (_ BitVec 32))) )
))
(declare-fun lt!617457 () SeekEntryResult!10588)

(declare-fun lt!617459 () SeekEntryResult!10588)

(assert (=> b!1402147 (= res!940771 (or (= lt!617457 lt!617459) (not (is-Intermediate!10588 lt!617459))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!617454 () (_ BitVec 64))

(declare-datatypes ((array!95805 0))(
  ( (array!95806 (arr!46249 (Array (_ BitVec 32) (_ BitVec 64))) (size!46800 (_ BitVec 32))) )
))
(declare-fun lt!617461 () array!95805)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95805 (_ BitVec 32)) SeekEntryResult!10588)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402147 (= lt!617459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617454 mask!2840) lt!617454 lt!617461 mask!2840))))

(declare-fun a!2901 () array!95805)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402147 (= lt!617454 (select (store (arr!46249 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402147 (= lt!617461 (array!95806 (store (arr!46249 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46800 a!2901)))))

(declare-fun b!1402148 () Bool)

(declare-fun res!940776 () Bool)

(declare-fun e!794019 () Bool)

(assert (=> b!1402148 (=> (not res!940776) (not e!794019))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402148 (= res!940776 (validKeyInArray!0 (select (arr!46249 a!2901) j!112)))))

(declare-fun b!1402149 () Bool)

(declare-fun res!940773 () Bool)

(assert (=> b!1402149 (=> (not res!940773) (not e!794019))))

(declare-datatypes ((List!32948 0))(
  ( (Nil!32945) (Cons!32944 (h!34192 (_ BitVec 64)) (t!47649 List!32948)) )
))
(declare-fun arrayNoDuplicates!0 (array!95805 (_ BitVec 32) List!32948) Bool)

(assert (=> b!1402149 (= res!940773 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32945))))

(declare-fun res!940772 () Bool)

(assert (=> start!120478 (=> (not res!940772) (not e!794019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120478 (= res!940772 (validMask!0 mask!2840))))

(assert (=> start!120478 e!794019))

(assert (=> start!120478 true))

(declare-fun array_inv!35194 (array!95805) Bool)

(assert (=> start!120478 (array_inv!35194 a!2901)))

(declare-fun b!1402150 () Bool)

(declare-fun res!940767 () Bool)

(assert (=> b!1402150 (=> (not res!940767) (not e!794019))))

(assert (=> b!1402150 (= res!940767 (and (= (size!46800 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46800 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46800 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402151 () Bool)

(declare-fun e!794021 () Bool)

(assert (=> b!1402151 (= e!794017 e!794021)))

(declare-fun res!940768 () Bool)

(assert (=> b!1402151 (=> res!940768 e!794021)))

(declare-fun lt!617456 () (_ BitVec 32))

(assert (=> b!1402151 (= res!940768 (or (bvslt (x!126362 lt!617457) #b00000000000000000000000000000000) (bvsgt (x!126362 lt!617457) #b01111111111111111111111111111110) (bvslt (x!126362 lt!617459) #b00000000000000000000000000000000) (bvsgt (x!126362 lt!617459) #b01111111111111111111111111111110) (bvslt lt!617456 #b00000000000000000000000000000000) (bvsge lt!617456 (size!46800 a!2901)) (bvslt (index!44730 lt!617457) #b00000000000000000000000000000000) (bvsge (index!44730 lt!617457) (size!46800 a!2901)) (bvslt (index!44730 lt!617459) #b00000000000000000000000000000000) (bvsge (index!44730 lt!617459) (size!46800 a!2901)) (not (= lt!617457 (Intermediate!10588 false (index!44730 lt!617457) (x!126362 lt!617457)))) (not (= lt!617459 (Intermediate!10588 false (index!44730 lt!617459) (x!126362 lt!617459))))))))

(declare-fun lt!617460 () SeekEntryResult!10588)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95805 (_ BitVec 32)) SeekEntryResult!10588)

(assert (=> b!1402151 (= lt!617460 (seekKeyOrZeroReturnVacant!0 (x!126362 lt!617459) (index!44730 lt!617459) (index!44730 lt!617459) (select (arr!46249 a!2901) j!112) lt!617461 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95805 (_ BitVec 32)) SeekEntryResult!10588)

(assert (=> b!1402151 (= lt!617460 (seekEntryOrOpen!0 lt!617454 lt!617461 mask!2840))))

(assert (=> b!1402151 (and (not (undefined!11400 lt!617459)) (= (index!44730 lt!617459) i!1037) (bvslt (x!126362 lt!617459) (x!126362 lt!617457)) (= (select (store (arr!46249 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44730 lt!617459)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47130 0))(
  ( (Unit!47131) )
))
(declare-fun lt!617452 () Unit!47130)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47130)

(assert (=> b!1402151 (= lt!617452 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617456 (x!126362 lt!617457) (index!44730 lt!617457) (x!126362 lt!617459) (index!44730 lt!617459) (undefined!11400 lt!617459) mask!2840))))

(declare-fun b!1402152 () Bool)

(assert (=> b!1402152 (= e!794019 (not e!794020))))

(declare-fun res!940769 () Bool)

(assert (=> b!1402152 (=> res!940769 e!794020)))

(assert (=> b!1402152 (= res!940769 (or (not (is-Intermediate!10588 lt!617457)) (undefined!11400 lt!617457)))))

(declare-fun lt!617453 () SeekEntryResult!10588)

(assert (=> b!1402152 (= lt!617453 (Found!10588 j!112))))

(assert (=> b!1402152 (= lt!617453 (seekEntryOrOpen!0 (select (arr!46249 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95805 (_ BitVec 32)) Bool)

(assert (=> b!1402152 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!617455 () Unit!47130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47130)

(assert (=> b!1402152 (= lt!617455 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1402152 (= lt!617457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617456 (select (arr!46249 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1402152 (= lt!617456 (toIndex!0 (select (arr!46249 a!2901) j!112) mask!2840))))

(declare-fun b!1402153 () Bool)

(declare-fun res!940775 () Bool)

(assert (=> b!1402153 (=> (not res!940775) (not e!794019))))

(assert (=> b!1402153 (= res!940775 (validKeyInArray!0 (select (arr!46249 a!2901) i!1037)))))

(declare-fun b!1402154 () Bool)

(declare-fun res!940770 () Bool)

(assert (=> b!1402154 (=> (not res!940770) (not e!794019))))

(assert (=> b!1402154 (= res!940770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402155 () Bool)

(assert (=> b!1402155 (= e!794021 true)))

(assert (=> b!1402155 (= lt!617453 lt!617460)))

(declare-fun lt!617458 () Unit!47130)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47130)

(assert (=> b!1402155 (= lt!617458 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617456 (x!126362 lt!617457) (index!44730 lt!617457) (x!126362 lt!617459) (index!44730 lt!617459) mask!2840))))

(declare-fun b!1402156 () Bool)

(declare-fun res!940774 () Bool)

(assert (=> b!1402156 (=> res!940774 e!794021)))

(assert (=> b!1402156 (= res!940774 (not (= lt!617459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617456 lt!617454 lt!617461 mask!2840))))))

(assert (= (and start!120478 res!940772) b!1402150))

(assert (= (and b!1402150 res!940767) b!1402153))

(assert (= (and b!1402153 res!940775) b!1402148))

(assert (= (and b!1402148 res!940776) b!1402154))

(assert (= (and b!1402154 res!940770) b!1402149))

(assert (= (and b!1402149 res!940773) b!1402152))

(assert (= (and b!1402152 (not res!940769)) b!1402147))

(assert (= (and b!1402147 (not res!940771)) b!1402151))

(assert (= (and b!1402151 (not res!940768)) b!1402156))

(assert (= (and b!1402156 (not res!940774)) b!1402155))

(declare-fun m!1290257 () Bool)

(assert (=> b!1402148 m!1290257))

(assert (=> b!1402148 m!1290257))

(declare-fun m!1290259 () Bool)

(assert (=> b!1402148 m!1290259))

(declare-fun m!1290261 () Bool)

(assert (=> b!1402156 m!1290261))

(declare-fun m!1290263 () Bool)

(assert (=> b!1402153 m!1290263))

(assert (=> b!1402153 m!1290263))

(declare-fun m!1290265 () Bool)

(assert (=> b!1402153 m!1290265))

(declare-fun m!1290267 () Bool)

(assert (=> b!1402154 m!1290267))

(declare-fun m!1290269 () Bool)

(assert (=> start!120478 m!1290269))

(declare-fun m!1290271 () Bool)

(assert (=> start!120478 m!1290271))

(declare-fun m!1290273 () Bool)

(assert (=> b!1402147 m!1290273))

(assert (=> b!1402147 m!1290273))

(declare-fun m!1290275 () Bool)

(assert (=> b!1402147 m!1290275))

(declare-fun m!1290277 () Bool)

(assert (=> b!1402147 m!1290277))

(declare-fun m!1290279 () Bool)

(assert (=> b!1402147 m!1290279))

(assert (=> b!1402152 m!1290257))

(declare-fun m!1290281 () Bool)

(assert (=> b!1402152 m!1290281))

(assert (=> b!1402152 m!1290257))

(declare-fun m!1290283 () Bool)

(assert (=> b!1402152 m!1290283))

(assert (=> b!1402152 m!1290257))

(declare-fun m!1290285 () Bool)

(assert (=> b!1402152 m!1290285))

(assert (=> b!1402152 m!1290257))

(declare-fun m!1290287 () Bool)

(assert (=> b!1402152 m!1290287))

(declare-fun m!1290289 () Bool)

(assert (=> b!1402152 m!1290289))

(declare-fun m!1290291 () Bool)

(assert (=> b!1402149 m!1290291))

(declare-fun m!1290293 () Bool)

(assert (=> b!1402155 m!1290293))

(assert (=> b!1402151 m!1290257))

(assert (=> b!1402151 m!1290257))

(declare-fun m!1290295 () Bool)

(assert (=> b!1402151 m!1290295))

(declare-fun m!1290297 () Bool)

(assert (=> b!1402151 m!1290297))

(declare-fun m!1290299 () Bool)

(assert (=> b!1402151 m!1290299))

(declare-fun m!1290301 () Bool)

(assert (=> b!1402151 m!1290301))

(assert (=> b!1402151 m!1290277))

(push 1)

