; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120486 () Bool)

(assert start!120486)

(declare-fun b!1402267 () Bool)

(declare-fun e!794077 () Bool)

(declare-fun e!794081 () Bool)

(assert (=> b!1402267 (= e!794077 (not e!794081))))

(declare-fun res!940890 () Bool)

(assert (=> b!1402267 (=> res!940890 e!794081)))

(declare-datatypes ((SeekEntryResult!10592 0))(
  ( (MissingZero!10592 (index!44744 (_ BitVec 32))) (Found!10592 (index!44745 (_ BitVec 32))) (Intermediate!10592 (undefined!11404 Bool) (index!44746 (_ BitVec 32)) (x!126374 (_ BitVec 32))) (Undefined!10592) (MissingVacant!10592 (index!44747 (_ BitVec 32))) )
))
(declare-fun lt!617577 () SeekEntryResult!10592)

(get-info :version)

(assert (=> b!1402267 (= res!940890 (or (not ((_ is Intermediate!10592) lt!617577)) (undefined!11404 lt!617577)))))

(declare-fun lt!617579 () SeekEntryResult!10592)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1402267 (= lt!617579 (Found!10592 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95813 0))(
  ( (array!95814 (arr!46253 (Array (_ BitVec 32) (_ BitVec 64))) (size!46804 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95813)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95813 (_ BitVec 32)) SeekEntryResult!10592)

(assert (=> b!1402267 (= lt!617579 (seekEntryOrOpen!0 (select (arr!46253 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95813 (_ BitVec 32)) Bool)

(assert (=> b!1402267 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47138 0))(
  ( (Unit!47139) )
))
(declare-fun lt!617578 () Unit!47138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47138)

(assert (=> b!1402267 (= lt!617578 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617574 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95813 (_ BitVec 32)) SeekEntryResult!10592)

(assert (=> b!1402267 (= lt!617577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617574 (select (arr!46253 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1402267 (= lt!617574 (toIndex!0 (select (arr!46253 a!2901) j!112) mask!2840))))

(declare-fun b!1402268 () Bool)

(declare-fun res!940892 () Bool)

(declare-fun e!794079 () Bool)

(assert (=> b!1402268 (=> res!940892 e!794079)))

(declare-fun lt!617575 () array!95813)

(declare-fun lt!617576 () SeekEntryResult!10592)

(declare-fun lt!617573 () (_ BitVec 64))

(assert (=> b!1402268 (= res!940892 (not (= lt!617576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617574 lt!617573 lt!617575 mask!2840))))))

(declare-fun res!940895 () Bool)

(assert (=> start!120486 (=> (not res!940895) (not e!794077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120486 (= res!940895 (validMask!0 mask!2840))))

(assert (=> start!120486 e!794077))

(assert (=> start!120486 true))

(declare-fun array_inv!35198 (array!95813) Bool)

(assert (=> start!120486 (array_inv!35198 a!2901)))

(declare-fun b!1402269 () Bool)

(declare-fun e!794078 () Bool)

(assert (=> b!1402269 (= e!794078 e!794079)))

(declare-fun res!940888 () Bool)

(assert (=> b!1402269 (=> res!940888 e!794079)))

(assert (=> b!1402269 (= res!940888 (or (bvslt (x!126374 lt!617577) #b00000000000000000000000000000000) (bvsgt (x!126374 lt!617577) #b01111111111111111111111111111110) (bvslt (x!126374 lt!617576) #b00000000000000000000000000000000) (bvsgt (x!126374 lt!617576) #b01111111111111111111111111111110) (bvslt lt!617574 #b00000000000000000000000000000000) (bvsge lt!617574 (size!46804 a!2901)) (bvslt (index!44746 lt!617577) #b00000000000000000000000000000000) (bvsge (index!44746 lt!617577) (size!46804 a!2901)) (bvslt (index!44746 lt!617576) #b00000000000000000000000000000000) (bvsge (index!44746 lt!617576) (size!46804 a!2901)) (not (= lt!617577 (Intermediate!10592 false (index!44746 lt!617577) (x!126374 lt!617577)))) (not (= lt!617576 (Intermediate!10592 false (index!44746 lt!617576) (x!126374 lt!617576))))))))

(declare-fun lt!617581 () SeekEntryResult!10592)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95813 (_ BitVec 32)) SeekEntryResult!10592)

(assert (=> b!1402269 (= lt!617581 (seekKeyOrZeroReturnVacant!0 (x!126374 lt!617576) (index!44746 lt!617576) (index!44746 lt!617576) (select (arr!46253 a!2901) j!112) lt!617575 mask!2840))))

(assert (=> b!1402269 (= lt!617581 (seekEntryOrOpen!0 lt!617573 lt!617575 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1402269 (and (not (undefined!11404 lt!617576)) (= (index!44746 lt!617576) i!1037) (bvslt (x!126374 lt!617576) (x!126374 lt!617577)) (= (select (store (arr!46253 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44746 lt!617576)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!617572 () Unit!47138)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47138)

(assert (=> b!1402269 (= lt!617572 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617574 (x!126374 lt!617577) (index!44746 lt!617577) (x!126374 lt!617576) (index!44746 lt!617576) (undefined!11404 lt!617576) mask!2840))))

(declare-fun b!1402270 () Bool)

(declare-fun res!940894 () Bool)

(assert (=> b!1402270 (=> (not res!940894) (not e!794077))))

(assert (=> b!1402270 (= res!940894 (and (= (size!46804 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46804 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46804 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1402271 () Bool)

(assert (=> b!1402271 (= e!794081 e!794078)))

(declare-fun res!940896 () Bool)

(assert (=> b!1402271 (=> res!940896 e!794078)))

(assert (=> b!1402271 (= res!940896 (or (= lt!617577 lt!617576) (not ((_ is Intermediate!10592) lt!617576))))))

(assert (=> b!1402271 (= lt!617576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617573 mask!2840) lt!617573 lt!617575 mask!2840))))

(assert (=> b!1402271 (= lt!617573 (select (store (arr!46253 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1402271 (= lt!617575 (array!95814 (store (arr!46253 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46804 a!2901)))))

(declare-fun b!1402272 () Bool)

(declare-fun res!940889 () Bool)

(assert (=> b!1402272 (=> (not res!940889) (not e!794077))))

(assert (=> b!1402272 (= res!940889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1402273 () Bool)

(declare-fun res!940893 () Bool)

(assert (=> b!1402273 (=> (not res!940893) (not e!794077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1402273 (= res!940893 (validKeyInArray!0 (select (arr!46253 a!2901) j!112)))))

(declare-fun b!1402274 () Bool)

(assert (=> b!1402274 (= e!794079 (bvsge mask!2840 #b00000000000000000000000000000000))))

(assert (=> b!1402274 (= lt!617579 lt!617581)))

(declare-fun lt!617580 () Unit!47138)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!95813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47138)

(assert (=> b!1402274 (= lt!617580 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617574 (x!126374 lt!617577) (index!44746 lt!617577) (x!126374 lt!617576) (index!44746 lt!617576) mask!2840))))

(declare-fun b!1402275 () Bool)

(declare-fun res!940891 () Bool)

(assert (=> b!1402275 (=> (not res!940891) (not e!794077))))

(assert (=> b!1402275 (= res!940891 (validKeyInArray!0 (select (arr!46253 a!2901) i!1037)))))

(declare-fun b!1402276 () Bool)

(declare-fun res!940887 () Bool)

(assert (=> b!1402276 (=> (not res!940887) (not e!794077))))

(declare-datatypes ((List!32952 0))(
  ( (Nil!32949) (Cons!32948 (h!34196 (_ BitVec 64)) (t!47653 List!32952)) )
))
(declare-fun arrayNoDuplicates!0 (array!95813 (_ BitVec 32) List!32952) Bool)

(assert (=> b!1402276 (= res!940887 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32949))))

(assert (= (and start!120486 res!940895) b!1402270))

(assert (= (and b!1402270 res!940894) b!1402275))

(assert (= (and b!1402275 res!940891) b!1402273))

(assert (= (and b!1402273 res!940893) b!1402272))

(assert (= (and b!1402272 res!940889) b!1402276))

(assert (= (and b!1402276 res!940887) b!1402267))

(assert (= (and b!1402267 (not res!940890)) b!1402271))

(assert (= (and b!1402271 (not res!940896)) b!1402269))

(assert (= (and b!1402269 (not res!940888)) b!1402268))

(assert (= (and b!1402268 (not res!940892)) b!1402274))

(declare-fun m!1290441 () Bool)

(assert (=> b!1402275 m!1290441))

(assert (=> b!1402275 m!1290441))

(declare-fun m!1290443 () Bool)

(assert (=> b!1402275 m!1290443))

(declare-fun m!1290445 () Bool)

(assert (=> b!1402273 m!1290445))

(assert (=> b!1402273 m!1290445))

(declare-fun m!1290447 () Bool)

(assert (=> b!1402273 m!1290447))

(declare-fun m!1290449 () Bool)

(assert (=> b!1402276 m!1290449))

(declare-fun m!1290451 () Bool)

(assert (=> b!1402268 m!1290451))

(assert (=> b!1402267 m!1290445))

(declare-fun m!1290453 () Bool)

(assert (=> b!1402267 m!1290453))

(assert (=> b!1402267 m!1290445))

(assert (=> b!1402267 m!1290445))

(declare-fun m!1290455 () Bool)

(assert (=> b!1402267 m!1290455))

(declare-fun m!1290457 () Bool)

(assert (=> b!1402267 m!1290457))

(assert (=> b!1402267 m!1290445))

(declare-fun m!1290459 () Bool)

(assert (=> b!1402267 m!1290459))

(declare-fun m!1290461 () Bool)

(assert (=> b!1402267 m!1290461))

(declare-fun m!1290463 () Bool)

(assert (=> b!1402271 m!1290463))

(assert (=> b!1402271 m!1290463))

(declare-fun m!1290465 () Bool)

(assert (=> b!1402271 m!1290465))

(declare-fun m!1290467 () Bool)

(assert (=> b!1402271 m!1290467))

(declare-fun m!1290469 () Bool)

(assert (=> b!1402271 m!1290469))

(declare-fun m!1290471 () Bool)

(assert (=> b!1402269 m!1290471))

(declare-fun m!1290473 () Bool)

(assert (=> b!1402269 m!1290473))

(assert (=> b!1402269 m!1290445))

(assert (=> b!1402269 m!1290467))

(declare-fun m!1290475 () Bool)

(assert (=> b!1402269 m!1290475))

(assert (=> b!1402269 m!1290445))

(declare-fun m!1290477 () Bool)

(assert (=> b!1402269 m!1290477))

(declare-fun m!1290479 () Bool)

(assert (=> b!1402274 m!1290479))

(declare-fun m!1290481 () Bool)

(assert (=> b!1402272 m!1290481))

(declare-fun m!1290483 () Bool)

(assert (=> start!120486 m!1290483))

(declare-fun m!1290485 () Bool)

(assert (=> start!120486 m!1290485))

(check-sat (not b!1402272) (not b!1402276) (not b!1402275) (not b!1402274) (not b!1402269) (not start!120486) (not b!1402267) (not b!1402268) (not b!1402273) (not b!1402271))
(check-sat)
