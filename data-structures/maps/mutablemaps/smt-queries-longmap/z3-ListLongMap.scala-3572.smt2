; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49128 () Bool)

(assert start!49128)

(declare-fun b!540821 () Bool)

(declare-fun e!313231 () Bool)

(assert (=> b!540821 (= e!313231 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34194 0))(
  ( (array!34195 (arr!16429 (Array (_ BitVec 32) (_ BitVec 64))) (size!16793 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34194)

(declare-datatypes ((SeekEntryResult!4894 0))(
  ( (MissingZero!4894 (index!21800 (_ BitVec 32))) (Found!4894 (index!21801 (_ BitVec 32))) (Intermediate!4894 (undefined!5706 Bool) (index!21802 (_ BitVec 32)) (x!50740 (_ BitVec 32))) (Undefined!4894) (MissingVacant!4894 (index!21803 (_ BitVec 32))) )
))
(declare-fun lt!247499 () SeekEntryResult!4894)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34194 (_ BitVec 32)) SeekEntryResult!4894)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540821 (= lt!247499 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16429 a!3154) j!147) mask!3216) (select (arr!16429 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!335859 () Bool)

(declare-fun e!313229 () Bool)

(assert (=> start!49128 (=> (not res!335859) (not e!313229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49128 (= res!335859 (validMask!0 mask!3216))))

(assert (=> start!49128 e!313229))

(assert (=> start!49128 true))

(declare-fun array_inv!12203 (array!34194) Bool)

(assert (=> start!49128 (array_inv!12203 a!3154)))

(declare-fun b!540822 () Bool)

(declare-fun res!335860 () Bool)

(assert (=> b!540822 (=> (not res!335860) (not e!313231))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540822 (= res!335860 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16429 a!3154) j!147) a!3154 mask!3216) (Intermediate!4894 false resIndex!32 resX!32)))))

(declare-fun b!540823 () Bool)

(declare-fun res!335863 () Bool)

(assert (=> b!540823 (=> (not res!335863) (not e!313229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540823 (= res!335863 (validKeyInArray!0 (select (arr!16429 a!3154) j!147)))))

(declare-fun b!540824 () Bool)

(declare-fun res!335858 () Bool)

(assert (=> b!540824 (=> (not res!335858) (not e!313229))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540824 (= res!335858 (and (= (size!16793 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16793 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16793 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540825 () Bool)

(declare-fun res!335861 () Bool)

(assert (=> b!540825 (=> (not res!335861) (not e!313231))))

(declare-datatypes ((List!10601 0))(
  ( (Nil!10598) (Cons!10597 (h!11546 (_ BitVec 64)) (t!16837 List!10601)) )
))
(declare-fun arrayNoDuplicates!0 (array!34194 (_ BitVec 32) List!10601) Bool)

(assert (=> b!540825 (= res!335861 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10598))))

(declare-fun b!540826 () Bool)

(declare-fun res!335862 () Bool)

(assert (=> b!540826 (=> (not res!335862) (not e!313231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34194 (_ BitVec 32)) Bool)

(assert (=> b!540826 (= res!335862 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540827 () Bool)

(declare-fun res!335865 () Bool)

(assert (=> b!540827 (=> (not res!335865) (not e!313229))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540827 (= res!335865 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540828 () Bool)

(declare-fun res!335866 () Bool)

(assert (=> b!540828 (=> (not res!335866) (not e!313231))))

(assert (=> b!540828 (= res!335866 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16793 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16793 a!3154)) (= (select (arr!16429 a!3154) resIndex!32) (select (arr!16429 a!3154) j!147))))))

(declare-fun b!540829 () Bool)

(assert (=> b!540829 (= e!313229 e!313231)))

(declare-fun res!335867 () Bool)

(assert (=> b!540829 (=> (not res!335867) (not e!313231))))

(declare-fun lt!247498 () SeekEntryResult!4894)

(assert (=> b!540829 (= res!335867 (or (= lt!247498 (MissingZero!4894 i!1153)) (= lt!247498 (MissingVacant!4894 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34194 (_ BitVec 32)) SeekEntryResult!4894)

(assert (=> b!540829 (= lt!247498 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!540830 () Bool)

(declare-fun res!335864 () Bool)

(assert (=> b!540830 (=> (not res!335864) (not e!313229))))

(assert (=> b!540830 (= res!335864 (validKeyInArray!0 k0!1998))))

(assert (= (and start!49128 res!335859) b!540824))

(assert (= (and b!540824 res!335858) b!540823))

(assert (= (and b!540823 res!335863) b!540830))

(assert (= (and b!540830 res!335864) b!540827))

(assert (= (and b!540827 res!335865) b!540829))

(assert (= (and b!540829 res!335867) b!540826))

(assert (= (and b!540826 res!335862) b!540825))

(assert (= (and b!540825 res!335861) b!540828))

(assert (= (and b!540828 res!335866) b!540822))

(assert (= (and b!540822 res!335860) b!540821))

(declare-fun m!519489 () Bool)

(assert (=> b!540830 m!519489))

(declare-fun m!519491 () Bool)

(assert (=> start!49128 m!519491))

(declare-fun m!519493 () Bool)

(assert (=> start!49128 m!519493))

(declare-fun m!519495 () Bool)

(assert (=> b!540825 m!519495))

(declare-fun m!519497 () Bool)

(assert (=> b!540828 m!519497))

(declare-fun m!519499 () Bool)

(assert (=> b!540828 m!519499))

(assert (=> b!540822 m!519499))

(assert (=> b!540822 m!519499))

(declare-fun m!519501 () Bool)

(assert (=> b!540822 m!519501))

(declare-fun m!519503 () Bool)

(assert (=> b!540826 m!519503))

(assert (=> b!540823 m!519499))

(assert (=> b!540823 m!519499))

(declare-fun m!519505 () Bool)

(assert (=> b!540823 m!519505))

(declare-fun m!519507 () Bool)

(assert (=> b!540827 m!519507))

(assert (=> b!540821 m!519499))

(assert (=> b!540821 m!519499))

(declare-fun m!519509 () Bool)

(assert (=> b!540821 m!519509))

(assert (=> b!540821 m!519509))

(assert (=> b!540821 m!519499))

(declare-fun m!519511 () Bool)

(assert (=> b!540821 m!519511))

(declare-fun m!519513 () Bool)

(assert (=> b!540829 m!519513))

(check-sat (not start!49128) (not b!540829) (not b!540826) (not b!540823) (not b!540821) (not b!540822) (not b!540825) (not b!540827) (not b!540830))
(check-sat)
