; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46206 () Bool)

(assert start!46206)

(declare-fun b!511235 () Bool)

(declare-fun e!298756 () Bool)

(declare-fun e!298754 () Bool)

(assert (=> b!511235 (= e!298756 e!298754)))

(declare-fun res!312048 () Bool)

(assert (=> b!511235 (=> (not res!312048) (not e!298754))))

(declare-datatypes ((SeekEntryResult!4258 0))(
  ( (MissingZero!4258 (index!19220 (_ BitVec 32))) (Found!4258 (index!19221 (_ BitVec 32))) (Intermediate!4258 (undefined!5070 Bool) (index!19222 (_ BitVec 32)) (x!48204 (_ BitVec 32))) (Undefined!4258) (MissingVacant!4258 (index!19223 (_ BitVec 32))) )
))
(declare-fun lt!233938 () SeekEntryResult!4258)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!511235 (= res!312048 (or (= lt!233938 (MissingZero!4258 i!1204)) (= lt!233938 (MissingVacant!4258 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32820 0))(
  ( (array!32821 (arr!15784 (Array (_ BitVec 32) (_ BitVec 64))) (size!16148 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32820)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32820 (_ BitVec 32)) SeekEntryResult!4258)

(assert (=> b!511235 (= lt!233938 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!511236 () Bool)

(declare-fun res!312047 () Bool)

(assert (=> b!511236 (=> (not res!312047) (not e!298756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511236 (= res!312047 (validKeyInArray!0 k0!2280))))

(declare-fun b!511237 () Bool)

(declare-fun res!312054 () Bool)

(declare-fun e!298755 () Bool)

(assert (=> b!511237 (=> res!312054 e!298755)))

(declare-fun lt!233942 () SeekEntryResult!4258)

(get-info :version)

(assert (=> b!511237 (= res!312054 (or (not ((_ is Intermediate!4258) lt!233942)) (not (undefined!5070 lt!233942))))))

(declare-fun b!511238 () Bool)

(assert (=> b!511238 (= e!298755 true)))

(declare-fun lt!233941 () SeekEntryResult!4258)

(assert (=> b!511238 (= lt!233941 Undefined!4258)))

(declare-fun res!312051 () Bool)

(assert (=> start!46206 (=> (not res!312051) (not e!298756))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46206 (= res!312051 (validMask!0 mask!3524))))

(assert (=> start!46206 e!298756))

(assert (=> start!46206 true))

(declare-fun array_inv!11558 (array!32820) Bool)

(assert (=> start!46206 (array_inv!11558 a!3235)))

(declare-fun b!511239 () Bool)

(declare-fun res!312050 () Bool)

(assert (=> b!511239 (=> (not res!312050) (not e!298756))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511239 (= res!312050 (validKeyInArray!0 (select (arr!15784 a!3235) j!176)))))

(declare-fun b!511240 () Bool)

(declare-fun res!312053 () Bool)

(assert (=> b!511240 (=> (not res!312053) (not e!298756))))

(assert (=> b!511240 (= res!312053 (and (= (size!16148 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16148 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16148 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511241 () Bool)

(declare-fun res!312052 () Bool)

(assert (=> b!511241 (=> (not res!312052) (not e!298756))))

(declare-fun arrayContainsKey!0 (array!32820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511241 (= res!312052 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511242 () Bool)

(declare-fun res!312056 () Bool)

(assert (=> b!511242 (=> (not res!312056) (not e!298754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32820 (_ BitVec 32)) Bool)

(assert (=> b!511242 (= res!312056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511243 () Bool)

(declare-fun res!312055 () Bool)

(assert (=> b!511243 (=> (not res!312055) (not e!298754))))

(declare-datatypes ((List!9995 0))(
  ( (Nil!9992) (Cons!9991 (h!10871 (_ BitVec 64)) (t!16231 List!9995)) )
))
(declare-fun arrayNoDuplicates!0 (array!32820 (_ BitVec 32) List!9995) Bool)

(assert (=> b!511243 (= res!312055 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9992))))

(declare-fun b!511244 () Bool)

(assert (=> b!511244 (= e!298754 (not e!298755))))

(declare-fun res!312049 () Bool)

(assert (=> b!511244 (=> res!312049 e!298755)))

(declare-fun lt!233939 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32820 (_ BitVec 32)) SeekEntryResult!4258)

(assert (=> b!511244 (= res!312049 (= lt!233942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233939 (select (store (arr!15784 a!3235) i!1204 k0!2280) j!176) (array!32821 (store (arr!15784 a!3235) i!1204 k0!2280) (size!16148 a!3235)) mask!3524)))))

(declare-fun lt!233937 () (_ BitVec 32))

(assert (=> b!511244 (= lt!233942 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233937 (select (arr!15784 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511244 (= lt!233939 (toIndex!0 (select (store (arr!15784 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!511244 (= lt!233937 (toIndex!0 (select (arr!15784 a!3235) j!176) mask!3524))))

(assert (=> b!511244 (= lt!233941 (Found!4258 j!176))))

(assert (=> b!511244 (= lt!233941 (seekEntryOrOpen!0 (select (arr!15784 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511244 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15766 0))(
  ( (Unit!15767) )
))
(declare-fun lt!233940 () Unit!15766)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32820 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15766)

(assert (=> b!511244 (= lt!233940 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46206 res!312051) b!511240))

(assert (= (and b!511240 res!312053) b!511239))

(assert (= (and b!511239 res!312050) b!511236))

(assert (= (and b!511236 res!312047) b!511241))

(assert (= (and b!511241 res!312052) b!511235))

(assert (= (and b!511235 res!312048) b!511242))

(assert (= (and b!511242 res!312056) b!511243))

(assert (= (and b!511243 res!312055) b!511244))

(assert (= (and b!511244 (not res!312049)) b!511237))

(assert (= (and b!511237 (not res!312054)) b!511238))

(declare-fun m!492727 () Bool)

(assert (=> b!511235 m!492727))

(declare-fun m!492729 () Bool)

(assert (=> b!511236 m!492729))

(declare-fun m!492731 () Bool)

(assert (=> b!511239 m!492731))

(assert (=> b!511239 m!492731))

(declare-fun m!492733 () Bool)

(assert (=> b!511239 m!492733))

(declare-fun m!492735 () Bool)

(assert (=> b!511241 m!492735))

(declare-fun m!492737 () Bool)

(assert (=> start!46206 m!492737))

(declare-fun m!492739 () Bool)

(assert (=> start!46206 m!492739))

(declare-fun m!492741 () Bool)

(assert (=> b!511243 m!492741))

(declare-fun m!492743 () Bool)

(assert (=> b!511244 m!492743))

(declare-fun m!492745 () Bool)

(assert (=> b!511244 m!492745))

(declare-fun m!492747 () Bool)

(assert (=> b!511244 m!492747))

(assert (=> b!511244 m!492731))

(declare-fun m!492749 () Bool)

(assert (=> b!511244 m!492749))

(assert (=> b!511244 m!492731))

(assert (=> b!511244 m!492747))

(declare-fun m!492751 () Bool)

(assert (=> b!511244 m!492751))

(assert (=> b!511244 m!492731))

(declare-fun m!492753 () Bool)

(assert (=> b!511244 m!492753))

(assert (=> b!511244 m!492747))

(declare-fun m!492755 () Bool)

(assert (=> b!511244 m!492755))

(assert (=> b!511244 m!492731))

(declare-fun m!492757 () Bool)

(assert (=> b!511244 m!492757))

(declare-fun m!492759 () Bool)

(assert (=> b!511244 m!492759))

(declare-fun m!492761 () Bool)

(assert (=> b!511242 m!492761))

(check-sat (not start!46206) (not b!511243) (not b!511235) (not b!511236) (not b!511244) (not b!511242) (not b!511239) (not b!511241))
(check-sat)
