; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32290 () Bool)

(assert start!32290)

(declare-fun b!321471 () Bool)

(declare-fun e!199137 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!321471 (= e!199137 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun lt!156197 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321471 (= lt!156197 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun res!175750 () Bool)

(declare-fun e!199136 () Bool)

(assert (=> start!32290 (=> (not res!175750) (not e!199136))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32290 (= res!175750 (validMask!0 mask!3777))))

(assert (=> start!32290 e!199136))

(declare-datatypes ((array!16476 0))(
  ( (array!16477 (arr!7794 (Array (_ BitVec 32) (_ BitVec 64))) (size!8146 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16476)

(declare-fun array_inv!5748 (array!16476) Bool)

(assert (=> start!32290 (array_inv!5748 a!3305)))

(assert (=> start!32290 true))

(declare-fun b!321472 () Bool)

(declare-fun res!175758 () Bool)

(assert (=> b!321472 (=> (not res!175758) (not e!199137))))

(declare-datatypes ((SeekEntryResult!2936 0))(
  ( (MissingZero!2936 (index!13920 (_ BitVec 32))) (Found!2936 (index!13921 (_ BitVec 32))) (Intermediate!2936 (undefined!3748 Bool) (index!13922 (_ BitVec 32)) (x!32142 (_ BitVec 32))) (Undefined!2936) (MissingVacant!2936 (index!13923 (_ BitVec 32))) )
))
(declare-fun lt!156196 () SeekEntryResult!2936)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16476 (_ BitVec 32)) SeekEntryResult!2936)

(assert (=> b!321472 (= res!175758 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156196))))

(declare-fun b!321473 () Bool)

(declare-fun res!175754 () Bool)

(assert (=> b!321473 (=> (not res!175754) (not e!199137))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!321473 (= res!175754 (and (= (select (arr!7794 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8146 a!3305))))))

(declare-fun b!321474 () Bool)

(declare-fun res!175751 () Bool)

(assert (=> b!321474 (=> (not res!175751) (not e!199137))))

(assert (=> b!321474 (= res!175751 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7794 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7794 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7794 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!321475 () Bool)

(declare-fun res!175752 () Bool)

(assert (=> b!321475 (=> (not res!175752) (not e!199136))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16476 (_ BitVec 32)) SeekEntryResult!2936)

(assert (=> b!321475 (= res!175752 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2936 i!1250)))))

(declare-fun b!321476 () Bool)

(assert (=> b!321476 (= e!199136 e!199137)))

(declare-fun res!175757 () Bool)

(assert (=> b!321476 (=> (not res!175757) (not e!199137))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!321476 (= res!175757 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156196))))

(assert (=> b!321476 (= lt!156196 (Intermediate!2936 false resIndex!58 resX!58))))

(declare-fun b!321477 () Bool)

(declare-fun res!175756 () Bool)

(assert (=> b!321477 (=> (not res!175756) (not e!199136))))

(declare-fun arrayContainsKey!0 (array!16476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!321477 (= res!175756 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!321478 () Bool)

(declare-fun res!175755 () Bool)

(assert (=> b!321478 (=> (not res!175755) (not e!199136))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!321478 (= res!175755 (validKeyInArray!0 k!2497))))

(declare-fun b!321479 () Bool)

(declare-fun res!175749 () Bool)

(assert (=> b!321479 (=> (not res!175749) (not e!199136))))

(assert (=> b!321479 (= res!175749 (and (= (size!8146 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8146 a!3305))))))

(declare-fun b!321480 () Bool)

(declare-fun res!175753 () Bool)

(assert (=> b!321480 (=> (not res!175753) (not e!199136))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16476 (_ BitVec 32)) Bool)

(assert (=> b!321480 (= res!175753 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32290 res!175750) b!321479))

(assert (= (and b!321479 res!175749) b!321478))

(assert (= (and b!321478 res!175755) b!321477))

(assert (= (and b!321477 res!175756) b!321475))

(assert (= (and b!321475 res!175752) b!321480))

(assert (= (and b!321480 res!175753) b!321476))

(assert (= (and b!321476 res!175757) b!321473))

(assert (= (and b!321473 res!175754) b!321472))

(assert (= (and b!321472 res!175758) b!321474))

(assert (= (and b!321474 res!175751) b!321471))

(declare-fun m!329611 () Bool)

(assert (=> b!321478 m!329611))

(declare-fun m!329613 () Bool)

(assert (=> b!321480 m!329613))

(declare-fun m!329615 () Bool)

(assert (=> b!321471 m!329615))

(declare-fun m!329617 () Bool)

(assert (=> start!32290 m!329617))

(declare-fun m!329619 () Bool)

(assert (=> start!32290 m!329619))

(declare-fun m!329621 () Bool)

(assert (=> b!321473 m!329621))

(declare-fun m!329623 () Bool)

(assert (=> b!321477 m!329623))

(declare-fun m!329625 () Bool)

(assert (=> b!321475 m!329625))

(declare-fun m!329627 () Bool)

(assert (=> b!321476 m!329627))

(assert (=> b!321476 m!329627))

(declare-fun m!329629 () Bool)

(assert (=> b!321476 m!329629))

(declare-fun m!329631 () Bool)

(assert (=> b!321474 m!329631))

(declare-fun m!329633 () Bool)

(assert (=> b!321472 m!329633))

(push 1)

(assert (not b!321478))

(assert (not start!32290))

(assert (not b!321476))

(assert (not b!321475))

(assert (not b!321480))

(assert (not b!321477))

(assert (not b!321471))

(assert (not b!321472))

(check-sat)

