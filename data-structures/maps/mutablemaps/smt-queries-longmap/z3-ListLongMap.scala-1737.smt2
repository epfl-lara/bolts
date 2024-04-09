; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31934 () Bool)

(assert start!31934)

(declare-fun b!318876 () Bool)

(declare-fun res!173419 () Bool)

(declare-fun e!198102 () Bool)

(assert (=> b!318876 (=> (not res!173419) (not e!198102))))

(declare-datatypes ((array!16252 0))(
  ( (array!16253 (arr!7688 (Array (_ BitVec 32) (_ BitVec 64))) (size!8040 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16252)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16252 (_ BitVec 32)) Bool)

(assert (=> b!318876 (= res!173419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun lt!155588 () array!16252)

(declare-fun lt!155587 () (_ BitVec 32))

(declare-fun b!318877 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun e!198104 () Bool)

(declare-datatypes ((SeekEntryResult!2839 0))(
  ( (MissingZero!2839 (index!13532 (_ BitVec 32))) (Found!2839 (index!13533 (_ BitVec 32))) (Intermediate!2839 (undefined!3651 Bool) (index!13534 (_ BitVec 32)) (x!31756 (_ BitVec 32))) (Undefined!2839) (MissingVacant!2839 (index!13535 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16252 (_ BitVec 32)) SeekEntryResult!2839)

(assert (=> b!318877 (= e!198104 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155588 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155587 k0!2441 lt!155588 mask!3709)))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318877 (= lt!155588 (array!16253 (store (arr!7688 a!3293) i!1240 k0!2441) (size!8040 a!3293)))))

(declare-fun b!318878 () Bool)

(declare-fun res!173422 () Bool)

(assert (=> b!318878 (=> (not res!173422) (not e!198102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318878 (= res!173422 (validKeyInArray!0 k0!2441))))

(declare-fun b!318879 () Bool)

(declare-fun res!173418 () Bool)

(declare-fun e!198103 () Bool)

(assert (=> b!318879 (=> (not res!173418) (not e!198103))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318879 (= res!173418 (and (= (select (arr!7688 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8040 a!3293))))))

(declare-fun b!318880 () Bool)

(assert (=> b!318880 (= e!198102 e!198103)))

(declare-fun res!173427 () Bool)

(assert (=> b!318880 (=> (not res!173427) (not e!198103))))

(declare-fun lt!155586 () SeekEntryResult!2839)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318880 (= res!173427 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155586))))

(assert (=> b!318880 (= lt!155586 (Intermediate!2839 false resIndex!52 resX!52))))

(declare-fun b!318881 () Bool)

(declare-fun res!173425 () Bool)

(assert (=> b!318881 (=> (not res!173425) (not e!198102))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16252 (_ BitVec 32)) SeekEntryResult!2839)

(assert (=> b!318881 (= res!173425 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2839 i!1240)))))

(declare-fun lt!155585 () SeekEntryResult!2839)

(declare-fun b!318882 () Bool)

(declare-fun e!198106 () Bool)

(assert (=> b!318882 (= e!198106 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155587 #b00000000000000000000000000000000) (bvsge lt!155587 (size!8040 a!3293)) (not (= lt!155585 lt!155586)) (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1427)) (bvsub #b01111111111111111111111111111110 x!1427)))))))

(assert (=> b!318882 e!198104))

(declare-fun res!173426 () Bool)

(assert (=> b!318882 (=> (not res!173426) (not e!198104))))

(declare-fun lt!155584 () SeekEntryResult!2839)

(assert (=> b!318882 (= res!173426 (= lt!155584 lt!155585))))

(assert (=> b!318882 (= lt!155585 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155587 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318882 (= lt!155587 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun res!173421 () Bool)

(assert (=> start!31934 (=> (not res!173421) (not e!198102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31934 (= res!173421 (validMask!0 mask!3709))))

(assert (=> start!31934 e!198102))

(declare-fun array_inv!5642 (array!16252) Bool)

(assert (=> start!31934 (array_inv!5642 a!3293)))

(assert (=> start!31934 true))

(declare-fun b!318883 () Bool)

(assert (=> b!318883 (= e!198103 e!198106)))

(declare-fun res!173424 () Bool)

(assert (=> b!318883 (=> (not res!173424) (not e!198106))))

(assert (=> b!318883 (= res!173424 (and (= lt!155584 lt!155586) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7688 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318883 (= lt!155584 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!318884 () Bool)

(declare-fun res!173423 () Bool)

(assert (=> b!318884 (=> (not res!173423) (not e!198102))))

(declare-fun arrayContainsKey!0 (array!16252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318884 (= res!173423 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318885 () Bool)

(declare-fun res!173420 () Bool)

(assert (=> b!318885 (=> (not res!173420) (not e!198102))))

(assert (=> b!318885 (= res!173420 (and (= (size!8040 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8040 a!3293))))))

(assert (= (and start!31934 res!173421) b!318885))

(assert (= (and b!318885 res!173420) b!318878))

(assert (= (and b!318878 res!173422) b!318884))

(assert (= (and b!318884 res!173423) b!318881))

(assert (= (and b!318881 res!173425) b!318876))

(assert (= (and b!318876 res!173419) b!318880))

(assert (= (and b!318880 res!173427) b!318879))

(assert (= (and b!318879 res!173418) b!318883))

(assert (= (and b!318883 res!173424) b!318882))

(assert (= (and b!318882 res!173426) b!318877))

(declare-fun m!327519 () Bool)

(assert (=> b!318879 m!327519))

(declare-fun m!327521 () Bool)

(assert (=> b!318882 m!327521))

(declare-fun m!327523 () Bool)

(assert (=> b!318882 m!327523))

(declare-fun m!327525 () Bool)

(assert (=> b!318884 m!327525))

(declare-fun m!327527 () Bool)

(assert (=> b!318878 m!327527))

(declare-fun m!327529 () Bool)

(assert (=> b!318881 m!327529))

(declare-fun m!327531 () Bool)

(assert (=> b!318883 m!327531))

(declare-fun m!327533 () Bool)

(assert (=> b!318883 m!327533))

(declare-fun m!327535 () Bool)

(assert (=> start!31934 m!327535))

(declare-fun m!327537 () Bool)

(assert (=> start!31934 m!327537))

(declare-fun m!327539 () Bool)

(assert (=> b!318876 m!327539))

(declare-fun m!327541 () Bool)

(assert (=> b!318877 m!327541))

(declare-fun m!327543 () Bool)

(assert (=> b!318877 m!327543))

(declare-fun m!327545 () Bool)

(assert (=> b!318877 m!327545))

(declare-fun m!327547 () Bool)

(assert (=> b!318880 m!327547))

(assert (=> b!318880 m!327547))

(declare-fun m!327549 () Bool)

(assert (=> b!318880 m!327549))

(check-sat (not b!318877) (not b!318881) (not b!318880) (not b!318878) (not b!318876) (not b!318882) (not b!318884) (not b!318883) (not start!31934))
(check-sat)
