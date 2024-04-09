; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44784 () Bool)

(assert start!44784)

(declare-fun b!491355 () Bool)

(declare-fun e!288699 () Bool)

(declare-fun e!288698 () Bool)

(assert (=> b!491355 (= e!288699 e!288698)))

(declare-fun res!294442 () Bool)

(assert (=> b!491355 (=> (not res!294442) (not e!288698))))

(declare-datatypes ((SeekEntryResult!3760 0))(
  ( (MissingZero!3760 (index!17219 (_ BitVec 32))) (Found!3760 (index!17220 (_ BitVec 32))) (Intermediate!3760 (undefined!4572 Bool) (index!17221 (_ BitVec 32)) (x!46333 (_ BitVec 32))) (Undefined!3760) (MissingVacant!3760 (index!17222 (_ BitVec 32))) )
))
(declare-fun lt!222189 () SeekEntryResult!3760)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491355 (= res!294442 (or (= lt!222189 (MissingZero!3760 i!1204)) (= lt!222189 (MissingVacant!3760 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31803 0))(
  ( (array!31804 (arr!15286 (Array (_ BitVec 32) (_ BitVec 64))) (size!15650 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31803)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31803 (_ BitVec 32)) SeekEntryResult!3760)

(assert (=> b!491355 (= lt!222189 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!491356 () Bool)

(declare-fun e!288697 () Bool)

(assert (=> b!491356 (= e!288697 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun lt!222193 () (_ BitVec 64))

(declare-fun lt!222194 () array!31803)

(declare-fun lt!222192 () SeekEntryResult!3760)

(assert (=> b!491356 (= lt!222192 (seekEntryOrOpen!0 lt!222193 lt!222194 mask!3524))))

(declare-datatypes ((Unit!14458 0))(
  ( (Unit!14459) )
))
(declare-fun lt!222190 () Unit!14458)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31803 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14458)

(assert (=> b!491356 (= lt!222190 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!491357 () Bool)

(declare-fun res!294441 () Bool)

(assert (=> b!491357 (=> (not res!294441) (not e!288698))))

(declare-datatypes ((List!9497 0))(
  ( (Nil!9494) (Cons!9493 (h!10355 (_ BitVec 64)) (t!15733 List!9497)) )
))
(declare-fun arrayNoDuplicates!0 (array!31803 (_ BitVec 32) List!9497) Bool)

(assert (=> b!491357 (= res!294441 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9494))))

(declare-fun b!491358 () Bool)

(declare-fun res!294448 () Bool)

(assert (=> b!491358 (=> (not res!294448) (not e!288699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491358 (= res!294448 (validKeyInArray!0 (select (arr!15286 a!3235) j!176)))))

(declare-fun b!491359 () Bool)

(declare-fun res!294446 () Bool)

(assert (=> b!491359 (=> (not res!294446) (not e!288699))))

(assert (=> b!491359 (= res!294446 (and (= (size!15650 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15650 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15650 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491360 () Bool)

(declare-fun res!294449 () Bool)

(assert (=> b!491360 (=> (not res!294449) (not e!288698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31803 (_ BitVec 32)) Bool)

(assert (=> b!491360 (= res!294449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491361 () Bool)

(declare-fun res!294444 () Bool)

(assert (=> b!491361 (=> (not res!294444) (not e!288699))))

(declare-fun arrayContainsKey!0 (array!31803 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491361 (= res!294444 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!294445 () Bool)

(assert (=> start!44784 (=> (not res!294445) (not e!288699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44784 (= res!294445 (validMask!0 mask!3524))))

(assert (=> start!44784 e!288699))

(assert (=> start!44784 true))

(declare-fun array_inv!11060 (array!31803) Bool)

(assert (=> start!44784 (array_inv!11060 a!3235)))

(declare-fun b!491362 () Bool)

(assert (=> b!491362 (= e!288698 (not e!288697))))

(declare-fun res!294443 () Bool)

(assert (=> b!491362 (=> res!294443 e!288697)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31803 (_ BitVec 32)) SeekEntryResult!3760)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491362 (= res!294443 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15286 a!3235) j!176) mask!3524) (select (arr!15286 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222193 mask!3524) lt!222193 lt!222194 mask!3524))))))

(assert (=> b!491362 (= lt!222193 (select (store (arr!15286 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!491362 (= lt!222194 (array!31804 (store (arr!15286 a!3235) i!1204 k0!2280) (size!15650 a!3235)))))

(assert (=> b!491362 (= lt!222192 (Found!3760 j!176))))

(assert (=> b!491362 (= lt!222192 (seekEntryOrOpen!0 (select (arr!15286 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491362 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!222191 () Unit!14458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14458)

(assert (=> b!491362 (= lt!222191 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491363 () Bool)

(declare-fun res!294447 () Bool)

(assert (=> b!491363 (=> (not res!294447) (not e!288699))))

(assert (=> b!491363 (= res!294447 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44784 res!294445) b!491359))

(assert (= (and b!491359 res!294446) b!491358))

(assert (= (and b!491358 res!294448) b!491363))

(assert (= (and b!491363 res!294447) b!491361))

(assert (= (and b!491361 res!294444) b!491355))

(assert (= (and b!491355 res!294442) b!491360))

(assert (= (and b!491360 res!294449) b!491357))

(assert (= (and b!491357 res!294441) b!491362))

(assert (= (and b!491362 (not res!294443)) b!491356))

(declare-fun m!472025 () Bool)

(assert (=> b!491360 m!472025))

(declare-fun m!472027 () Bool)

(assert (=> start!44784 m!472027))

(declare-fun m!472029 () Bool)

(assert (=> start!44784 m!472029))

(declare-fun m!472031 () Bool)

(assert (=> b!491362 m!472031))

(declare-fun m!472033 () Bool)

(assert (=> b!491362 m!472033))

(declare-fun m!472035 () Bool)

(assert (=> b!491362 m!472035))

(declare-fun m!472037 () Bool)

(assert (=> b!491362 m!472037))

(declare-fun m!472039 () Bool)

(assert (=> b!491362 m!472039))

(declare-fun m!472041 () Bool)

(assert (=> b!491362 m!472041))

(assert (=> b!491362 m!472039))

(assert (=> b!491362 m!472037))

(declare-fun m!472043 () Bool)

(assert (=> b!491362 m!472043))

(declare-fun m!472045 () Bool)

(assert (=> b!491362 m!472045))

(assert (=> b!491362 m!472039))

(declare-fun m!472047 () Bool)

(assert (=> b!491362 m!472047))

(assert (=> b!491362 m!472043))

(declare-fun m!472049 () Bool)

(assert (=> b!491362 m!472049))

(assert (=> b!491362 m!472039))

(declare-fun m!472051 () Bool)

(assert (=> b!491357 m!472051))

(declare-fun m!472053 () Bool)

(assert (=> b!491355 m!472053))

(declare-fun m!472055 () Bool)

(assert (=> b!491356 m!472055))

(declare-fun m!472057 () Bool)

(assert (=> b!491356 m!472057))

(declare-fun m!472059 () Bool)

(assert (=> b!491361 m!472059))

(assert (=> b!491358 m!472039))

(assert (=> b!491358 m!472039))

(declare-fun m!472061 () Bool)

(assert (=> b!491358 m!472061))

(declare-fun m!472063 () Bool)

(assert (=> b!491363 m!472063))

(check-sat (not b!491360) (not b!491356) (not b!491358) (not b!491363) (not start!44784) (not b!491362) (not b!491361) (not b!491355) (not b!491357))
(check-sat)
