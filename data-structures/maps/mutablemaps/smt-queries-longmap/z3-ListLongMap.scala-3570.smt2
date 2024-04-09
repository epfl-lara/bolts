; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49116 () Bool)

(assert start!49116)

(declare-fun b!540641 () Bool)

(declare-fun res!335683 () Bool)

(declare-fun e!313176 () Bool)

(assert (=> b!540641 (=> (not res!335683) (not e!313176))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((array!34182 0))(
  ( (array!34183 (arr!16423 (Array (_ BitVec 32) (_ BitVec 64))) (size!16787 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34182)

(assert (=> b!540641 (= res!335683 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16787 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16787 a!3154)) (= (select (arr!16423 a!3154) resIndex!32) (select (arr!16423 a!3154) j!147))))))

(declare-fun b!540642 () Bool)

(declare-fun res!335679 () Bool)

(declare-fun e!313175 () Bool)

(assert (=> b!540642 (=> (not res!335679) (not e!313175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540642 (= res!335679 (validKeyInArray!0 (select (arr!16423 a!3154) j!147)))))

(declare-fun res!335680 () Bool)

(assert (=> start!49116 (=> (not res!335680) (not e!313175))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49116 (= res!335680 (validMask!0 mask!3216))))

(assert (=> start!49116 e!313175))

(assert (=> start!49116 true))

(declare-fun array_inv!12197 (array!34182) Bool)

(assert (=> start!49116 (array_inv!12197 a!3154)))

(declare-fun b!540643 () Bool)

(declare-fun res!335685 () Bool)

(assert (=> b!540643 (=> (not res!335685) (not e!313176))))

(declare-datatypes ((SeekEntryResult!4888 0))(
  ( (MissingZero!4888 (index!21776 (_ BitVec 32))) (Found!4888 (index!21777 (_ BitVec 32))) (Intermediate!4888 (undefined!5700 Bool) (index!21778 (_ BitVec 32)) (x!50718 (_ BitVec 32))) (Undefined!4888) (MissingVacant!4888 (index!21779 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34182 (_ BitVec 32)) SeekEntryResult!4888)

(assert (=> b!540643 (= res!335685 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16423 a!3154) j!147) a!3154 mask!3216) (Intermediate!4888 false resIndex!32 resX!32)))))

(declare-fun b!540644 () Bool)

(declare-fun res!335684 () Bool)

(assert (=> b!540644 (=> (not res!335684) (not e!313175))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540644 (= res!335684 (and (= (size!16787 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16787 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16787 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540645 () Bool)

(assert (=> b!540645 (= e!313176 false)))

(declare-fun lt!247462 () SeekEntryResult!4888)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540645 (= lt!247462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16423 a!3154) j!147) mask!3216) (select (arr!16423 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540646 () Bool)

(declare-fun res!335686 () Bool)

(assert (=> b!540646 (=> (not res!335686) (not e!313175))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!540646 (= res!335686 (validKeyInArray!0 k0!1998))))

(declare-fun b!540647 () Bool)

(declare-fun res!335687 () Bool)

(assert (=> b!540647 (=> (not res!335687) (not e!313176))))

(declare-datatypes ((List!10595 0))(
  ( (Nil!10592) (Cons!10591 (h!11540 (_ BitVec 64)) (t!16831 List!10595)) )
))
(declare-fun arrayNoDuplicates!0 (array!34182 (_ BitVec 32) List!10595) Bool)

(assert (=> b!540647 (= res!335687 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10592))))

(declare-fun b!540648 () Bool)

(assert (=> b!540648 (= e!313175 e!313176)))

(declare-fun res!335682 () Bool)

(assert (=> b!540648 (=> (not res!335682) (not e!313176))))

(declare-fun lt!247463 () SeekEntryResult!4888)

(assert (=> b!540648 (= res!335682 (or (= lt!247463 (MissingZero!4888 i!1153)) (= lt!247463 (MissingVacant!4888 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34182 (_ BitVec 32)) SeekEntryResult!4888)

(assert (=> b!540648 (= lt!247463 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!540649 () Bool)

(declare-fun res!335681 () Bool)

(assert (=> b!540649 (=> (not res!335681) (not e!313176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34182 (_ BitVec 32)) Bool)

(assert (=> b!540649 (= res!335681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540650 () Bool)

(declare-fun res!335678 () Bool)

(assert (=> b!540650 (=> (not res!335678) (not e!313175))))

(declare-fun arrayContainsKey!0 (array!34182 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540650 (= res!335678 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49116 res!335680) b!540644))

(assert (= (and b!540644 res!335684) b!540642))

(assert (= (and b!540642 res!335679) b!540646))

(assert (= (and b!540646 res!335686) b!540650))

(assert (= (and b!540650 res!335678) b!540648))

(assert (= (and b!540648 res!335682) b!540649))

(assert (= (and b!540649 res!335681) b!540647))

(assert (= (and b!540647 res!335687) b!540641))

(assert (= (and b!540641 res!335683) b!540643))

(assert (= (and b!540643 res!335685) b!540645))

(declare-fun m!519333 () Bool)

(assert (=> b!540646 m!519333))

(declare-fun m!519335 () Bool)

(assert (=> b!540649 m!519335))

(declare-fun m!519337 () Bool)

(assert (=> b!540650 m!519337))

(declare-fun m!519339 () Bool)

(assert (=> b!540643 m!519339))

(assert (=> b!540643 m!519339))

(declare-fun m!519341 () Bool)

(assert (=> b!540643 m!519341))

(declare-fun m!519343 () Bool)

(assert (=> b!540648 m!519343))

(declare-fun m!519345 () Bool)

(assert (=> b!540641 m!519345))

(assert (=> b!540641 m!519339))

(assert (=> b!540645 m!519339))

(assert (=> b!540645 m!519339))

(declare-fun m!519347 () Bool)

(assert (=> b!540645 m!519347))

(assert (=> b!540645 m!519347))

(assert (=> b!540645 m!519339))

(declare-fun m!519349 () Bool)

(assert (=> b!540645 m!519349))

(declare-fun m!519351 () Bool)

(assert (=> b!540647 m!519351))

(declare-fun m!519353 () Bool)

(assert (=> start!49116 m!519353))

(declare-fun m!519355 () Bool)

(assert (=> start!49116 m!519355))

(assert (=> b!540642 m!519339))

(assert (=> b!540642 m!519339))

(declare-fun m!519357 () Bool)

(assert (=> b!540642 m!519357))

(check-sat (not b!540646) (not b!540648) (not b!540642) (not start!49116) (not b!540647) (not b!540643) (not b!540650) (not b!540645) (not b!540649))
(check-sat)
