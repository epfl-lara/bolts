; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49320 () Bool)

(assert start!49320)

(declare-fun b!542775 () Bool)

(declare-fun res!337483 () Bool)

(declare-fun e!314037 () Bool)

(assert (=> b!542775 (=> (not res!337483) (not e!314037))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34284 0))(
  ( (array!34285 (arr!16471 (Array (_ BitVec 32) (_ BitVec 64))) (size!16835 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34284)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542775 (= res!337483 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16835 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16835 a!3154)) (= (select (arr!16471 a!3154) resIndex!32) (select (arr!16471 a!3154) j!147))))))

(declare-fun b!542776 () Bool)

(declare-fun res!337480 () Bool)

(declare-fun e!314038 () Bool)

(assert (=> b!542776 (=> (not res!337480) (not e!314038))))

(assert (=> b!542776 (= res!337480 (and (not (= (select (arr!16471 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16471 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16471 a!3154) index!1177) (select (arr!16471 a!3154) j!147)))))))

(declare-fun res!337485 () Bool)

(declare-fun e!314036 () Bool)

(assert (=> start!49320 (=> (not res!337485) (not e!314036))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49320 (= res!337485 (validMask!0 mask!3216))))

(assert (=> start!49320 e!314036))

(assert (=> start!49320 true))

(declare-fun array_inv!12245 (array!34284) Bool)

(assert (=> start!49320 (array_inv!12245 a!3154)))

(declare-fun b!542777 () Bool)

(assert (=> b!542777 (= e!314036 e!314037)))

(declare-fun res!337484 () Bool)

(assert (=> b!542777 (=> (not res!337484) (not e!314037))))

(declare-datatypes ((SeekEntryResult!4936 0))(
  ( (MissingZero!4936 (index!21968 (_ BitVec 32))) (Found!4936 (index!21969 (_ BitVec 32))) (Intermediate!4936 (undefined!5748 Bool) (index!21970 (_ BitVec 32)) (x!50906 (_ BitVec 32))) (Undefined!4936) (MissingVacant!4936 (index!21971 (_ BitVec 32))) )
))
(declare-fun lt!248016 () SeekEntryResult!4936)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542777 (= res!337484 (or (= lt!248016 (MissingZero!4936 i!1153)) (= lt!248016 (MissingVacant!4936 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34284 (_ BitVec 32)) SeekEntryResult!4936)

(assert (=> b!542777 (= lt!248016 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!542778 () Bool)

(declare-fun res!337487 () Bool)

(assert (=> b!542778 (=> (not res!337487) (not e!314037))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34284 (_ BitVec 32)) Bool)

(assert (=> b!542778 (= res!337487 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542779 () Bool)

(assert (=> b!542779 (= e!314038 false)))

(declare-fun lt!248018 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542779 (= lt!248018 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542780 () Bool)

(declare-fun res!337477 () Bool)

(assert (=> b!542780 (=> (not res!337477) (not e!314036))))

(declare-fun arrayContainsKey!0 (array!34284 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542780 (= res!337477 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542781 () Bool)

(declare-fun res!337486 () Bool)

(assert (=> b!542781 (=> (not res!337486) (not e!314038))))

(declare-fun lt!248017 () SeekEntryResult!4936)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34284 (_ BitVec 32)) SeekEntryResult!4936)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542781 (= res!337486 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16471 a!3154) j!147) mask!3216) (select (arr!16471 a!3154) j!147) a!3154 mask!3216) lt!248017))))

(declare-fun b!542782 () Bool)

(declare-fun res!337479 () Bool)

(assert (=> b!542782 (=> (not res!337479) (not e!314036))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542782 (= res!337479 (validKeyInArray!0 k0!1998))))

(declare-fun b!542783 () Bool)

(declare-fun res!337482 () Bool)

(assert (=> b!542783 (=> (not res!337482) (not e!314036))))

(assert (=> b!542783 (= res!337482 (validKeyInArray!0 (select (arr!16471 a!3154) j!147)))))

(declare-fun b!542784 () Bool)

(assert (=> b!542784 (= e!314037 e!314038)))

(declare-fun res!337481 () Bool)

(assert (=> b!542784 (=> (not res!337481) (not e!314038))))

(assert (=> b!542784 (= res!337481 (= lt!248017 (Intermediate!4936 false resIndex!32 resX!32)))))

(assert (=> b!542784 (= lt!248017 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16471 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542785 () Bool)

(declare-fun res!337476 () Bool)

(assert (=> b!542785 (=> (not res!337476) (not e!314037))))

(declare-datatypes ((List!10643 0))(
  ( (Nil!10640) (Cons!10639 (h!11594 (_ BitVec 64)) (t!16879 List!10643)) )
))
(declare-fun arrayNoDuplicates!0 (array!34284 (_ BitVec 32) List!10643) Bool)

(assert (=> b!542785 (= res!337476 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10640))))

(declare-fun b!542786 () Bool)

(declare-fun res!337478 () Bool)

(assert (=> b!542786 (=> (not res!337478) (not e!314036))))

(assert (=> b!542786 (= res!337478 (and (= (size!16835 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16835 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16835 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49320 res!337485) b!542786))

(assert (= (and b!542786 res!337478) b!542783))

(assert (= (and b!542783 res!337482) b!542782))

(assert (= (and b!542782 res!337479) b!542780))

(assert (= (and b!542780 res!337477) b!542777))

(assert (= (and b!542777 res!337484) b!542778))

(assert (= (and b!542778 res!337487) b!542785))

(assert (= (and b!542785 res!337476) b!542775))

(assert (= (and b!542775 res!337483) b!542784))

(assert (= (and b!542784 res!337481) b!542781))

(assert (= (and b!542781 res!337486) b!542776))

(assert (= (and b!542776 res!337480) b!542779))

(declare-fun m!520981 () Bool)

(assert (=> b!542781 m!520981))

(assert (=> b!542781 m!520981))

(declare-fun m!520983 () Bool)

(assert (=> b!542781 m!520983))

(assert (=> b!542781 m!520983))

(assert (=> b!542781 m!520981))

(declare-fun m!520985 () Bool)

(assert (=> b!542781 m!520985))

(declare-fun m!520987 () Bool)

(assert (=> b!542775 m!520987))

(assert (=> b!542775 m!520981))

(assert (=> b!542783 m!520981))

(assert (=> b!542783 m!520981))

(declare-fun m!520989 () Bool)

(assert (=> b!542783 m!520989))

(declare-fun m!520991 () Bool)

(assert (=> b!542780 m!520991))

(declare-fun m!520993 () Bool)

(assert (=> b!542782 m!520993))

(declare-fun m!520995 () Bool)

(assert (=> b!542777 m!520995))

(declare-fun m!520997 () Bool)

(assert (=> b!542778 m!520997))

(declare-fun m!520999 () Bool)

(assert (=> start!49320 m!520999))

(declare-fun m!521001 () Bool)

(assert (=> start!49320 m!521001))

(declare-fun m!521003 () Bool)

(assert (=> b!542785 m!521003))

(declare-fun m!521005 () Bool)

(assert (=> b!542776 m!521005))

(assert (=> b!542776 m!520981))

(declare-fun m!521007 () Bool)

(assert (=> b!542779 m!521007))

(assert (=> b!542784 m!520981))

(assert (=> b!542784 m!520981))

(declare-fun m!521009 () Bool)

(assert (=> b!542784 m!521009))

(check-sat (not b!542782) (not b!542784) (not b!542783) (not b!542777) (not start!49320) (not b!542778) (not b!542780) (not b!542779) (not b!542781) (not b!542785))
