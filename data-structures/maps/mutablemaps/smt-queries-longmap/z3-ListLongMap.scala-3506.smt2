; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48624 () Bool)

(assert start!48624)

(declare-fun b!533621 () Bool)

(declare-fun res!328978 () Bool)

(declare-fun e!310420 () Bool)

(assert (=> b!533621 (=> (not res!328978) (not e!310420))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33792 0))(
  ( (array!33793 (arr!16231 (Array (_ BitVec 32) (_ BitVec 64))) (size!16595 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33792)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4696 0))(
  ( (MissingZero!4696 (index!21008 (_ BitVec 32))) (Found!4696 (index!21009 (_ BitVec 32))) (Intermediate!4696 (undefined!5508 Bool) (index!21010 (_ BitVec 32)) (x!50002 (_ BitVec 32))) (Undefined!4696) (MissingVacant!4696 (index!21011 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33792 (_ BitVec 32)) SeekEntryResult!4696)

(assert (=> b!533621 (= res!328978 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16231 a!3154) j!147) a!3154 mask!3216) (Intermediate!4696 false resIndex!32 resX!32)))))

(declare-fun b!533622 () Bool)

(declare-fun res!328981 () Bool)

(assert (=> b!533622 (=> (not res!328981) (not e!310420))))

(declare-datatypes ((List!10403 0))(
  ( (Nil!10400) (Cons!10399 (h!11342 (_ BitVec 64)) (t!16639 List!10403)) )
))
(declare-fun arrayNoDuplicates!0 (array!33792 (_ BitVec 32) List!10403) Bool)

(assert (=> b!533622 (= res!328981 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10400))))

(declare-fun b!533623 () Bool)

(declare-fun res!328980 () Bool)

(declare-fun e!310418 () Bool)

(assert (=> b!533623 (=> (not res!328980) (not e!310418))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533623 (= res!328980 (validKeyInArray!0 (select (arr!16231 a!3154) j!147)))))

(declare-fun b!533624 () Bool)

(declare-fun res!328979 () Bool)

(assert (=> b!533624 (=> (not res!328979) (not e!310420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33792 (_ BitVec 32)) Bool)

(assert (=> b!533624 (= res!328979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!328976 () Bool)

(assert (=> start!48624 (=> (not res!328976) (not e!310418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48624 (= res!328976 (validMask!0 mask!3216))))

(assert (=> start!48624 e!310418))

(assert (=> start!48624 true))

(declare-fun array_inv!12005 (array!33792) Bool)

(assert (=> start!48624 (array_inv!12005 a!3154)))

(declare-fun b!533625 () Bool)

(declare-fun res!328977 () Bool)

(assert (=> b!533625 (=> (not res!328977) (not e!310418))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533625 (= res!328977 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533626 () Bool)

(declare-fun res!328983 () Bool)

(assert (=> b!533626 (=> (not res!328983) (not e!310420))))

(assert (=> b!533626 (= res!328983 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16595 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16595 a!3154)) (= (select (arr!16231 a!3154) resIndex!32) (select (arr!16231 a!3154) j!147))))))

(declare-fun b!533627 () Bool)

(declare-fun res!328985 () Bool)

(assert (=> b!533627 (=> (not res!328985) (not e!310418))))

(assert (=> b!533627 (= res!328985 (validKeyInArray!0 k0!1998))))

(declare-fun b!533628 () Bool)

(assert (=> b!533628 (= e!310418 e!310420)))

(declare-fun res!328982 () Bool)

(assert (=> b!533628 (=> (not res!328982) (not e!310420))))

(declare-fun lt!245471 () SeekEntryResult!4696)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533628 (= res!328982 (or (= lt!245471 (MissingZero!4696 i!1153)) (= lt!245471 (MissingVacant!4696 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33792 (_ BitVec 32)) SeekEntryResult!4696)

(assert (=> b!533628 (= lt!245471 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533629 () Bool)

(assert (=> b!533629 (= e!310420 false)))

(declare-fun lt!245470 () SeekEntryResult!4696)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533629 (= lt!245470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16231 a!3154) j!147) mask!3216) (select (arr!16231 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533630 () Bool)

(declare-fun res!328984 () Bool)

(assert (=> b!533630 (=> (not res!328984) (not e!310418))))

(assert (=> b!533630 (= res!328984 (and (= (size!16595 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16595 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16595 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48624 res!328976) b!533630))

(assert (= (and b!533630 res!328984) b!533623))

(assert (= (and b!533623 res!328980) b!533627))

(assert (= (and b!533627 res!328985) b!533625))

(assert (= (and b!533625 res!328977) b!533628))

(assert (= (and b!533628 res!328982) b!533624))

(assert (= (and b!533624 res!328979) b!533622))

(assert (= (and b!533622 res!328981) b!533626))

(assert (= (and b!533626 res!328983) b!533621))

(assert (= (and b!533621 res!328978) b!533629))

(declare-fun m!513459 () Bool)

(assert (=> b!533629 m!513459))

(assert (=> b!533629 m!513459))

(declare-fun m!513461 () Bool)

(assert (=> b!533629 m!513461))

(assert (=> b!533629 m!513461))

(assert (=> b!533629 m!513459))

(declare-fun m!513463 () Bool)

(assert (=> b!533629 m!513463))

(declare-fun m!513465 () Bool)

(assert (=> b!533622 m!513465))

(declare-fun m!513467 () Bool)

(assert (=> b!533627 m!513467))

(declare-fun m!513469 () Bool)

(assert (=> b!533626 m!513469))

(assert (=> b!533626 m!513459))

(declare-fun m!513471 () Bool)

(assert (=> b!533624 m!513471))

(declare-fun m!513473 () Bool)

(assert (=> b!533628 m!513473))

(declare-fun m!513475 () Bool)

(assert (=> b!533625 m!513475))

(declare-fun m!513477 () Bool)

(assert (=> start!48624 m!513477))

(declare-fun m!513479 () Bool)

(assert (=> start!48624 m!513479))

(assert (=> b!533623 m!513459))

(assert (=> b!533623 m!513459))

(declare-fun m!513481 () Bool)

(assert (=> b!533623 m!513481))

(assert (=> b!533621 m!513459))

(assert (=> b!533621 m!513459))

(declare-fun m!513483 () Bool)

(assert (=> b!533621 m!513483))

(check-sat (not b!533622) (not b!533628) (not b!533629) (not b!533624) (not start!48624) (not b!533625) (not b!533627) (not b!533621) (not b!533623))
(check-sat)
