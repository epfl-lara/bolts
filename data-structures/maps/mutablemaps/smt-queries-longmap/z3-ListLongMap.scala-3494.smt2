; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48498 () Bool)

(assert start!48498)

(declare-fun res!327839 () Bool)

(declare-fun e!309941 () Bool)

(assert (=> start!48498 (=> (not res!327839) (not e!309941))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48498 (= res!327839 (validMask!0 mask!3216))))

(assert (=> start!48498 e!309941))

(assert (=> start!48498 true))

(declare-datatypes ((array!33717 0))(
  ( (array!33718 (arr!16195 (Array (_ BitVec 32) (_ BitVec 64))) (size!16559 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33717)

(declare-fun array_inv!11969 (array!33717) Bool)

(assert (=> start!48498 (array_inv!11969 a!3154)))

(declare-fun b!532334 () Bool)

(declare-fun res!327833 () Bool)

(declare-fun e!309943 () Bool)

(assert (=> b!532334 (=> (not res!327833) (not e!309943))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!532334 (= res!327833 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16559 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16559 a!3154)) (= (select (arr!16195 a!3154) resIndex!32) (select (arr!16195 a!3154) j!147))))))

(declare-fun b!532335 () Bool)

(declare-fun res!327832 () Bool)

(assert (=> b!532335 (=> (not res!327832) (not e!309941))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532335 (= res!327832 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532336 () Bool)

(declare-fun res!327834 () Bool)

(assert (=> b!532336 (=> (not res!327834) (not e!309941))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532336 (= res!327834 (validKeyInArray!0 (select (arr!16195 a!3154) j!147)))))

(declare-fun b!532337 () Bool)

(declare-fun res!327835 () Bool)

(assert (=> b!532337 (=> (not res!327835) (not e!309943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33717 (_ BitVec 32)) Bool)

(assert (=> b!532337 (= res!327835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532338 () Bool)

(declare-fun res!327837 () Bool)

(assert (=> b!532338 (=> (not res!327837) (not e!309943))))

(declare-datatypes ((SeekEntryResult!4660 0))(
  ( (MissingZero!4660 (index!20864 (_ BitVec 32))) (Found!4660 (index!20865 (_ BitVec 32))) (Intermediate!4660 (undefined!5472 Bool) (index!20866 (_ BitVec 32)) (x!49864 (_ BitVec 32))) (Undefined!4660) (MissingVacant!4660 (index!20867 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33717 (_ BitVec 32)) SeekEntryResult!4660)

(assert (=> b!532338 (= res!327837 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16195 a!3154) j!147) a!3154 mask!3216) (Intermediate!4660 false resIndex!32 resX!32)))))

(declare-fun b!532339 () Bool)

(declare-fun res!327838 () Bool)

(assert (=> b!532339 (=> (not res!327838) (not e!309941))))

(assert (=> b!532339 (= res!327838 (validKeyInArray!0 k0!1998))))

(declare-fun b!532340 () Bool)

(declare-fun res!327831 () Bool)

(assert (=> b!532340 (=> (not res!327831) (not e!309941))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532340 (= res!327831 (and (= (size!16559 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16559 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16559 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532341 () Bool)

(declare-fun res!327830 () Bool)

(assert (=> b!532341 (=> (not res!327830) (not e!309943))))

(declare-datatypes ((List!10367 0))(
  ( (Nil!10364) (Cons!10363 (h!11303 (_ BitVec 64)) (t!16603 List!10367)) )
))
(declare-fun arrayNoDuplicates!0 (array!33717 (_ BitVec 32) List!10367) Bool)

(assert (=> b!532341 (= res!327830 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10364))))

(declare-fun b!532342 () Bool)

(assert (=> b!532342 (= e!309941 e!309943)))

(declare-fun res!327836 () Bool)

(assert (=> b!532342 (=> (not res!327836) (not e!309943))))

(declare-fun lt!245191 () SeekEntryResult!4660)

(assert (=> b!532342 (= res!327836 (or (= lt!245191 (MissingZero!4660 i!1153)) (= lt!245191 (MissingVacant!4660 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33717 (_ BitVec 32)) SeekEntryResult!4660)

(assert (=> b!532342 (= lt!245191 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!532343 () Bool)

(assert (=> b!532343 (= e!309943 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun lt!245192 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532343 (= lt!245192 (toIndex!0 (select (arr!16195 a!3154) j!147) mask!3216))))

(assert (= (and start!48498 res!327839) b!532340))

(assert (= (and b!532340 res!327831) b!532336))

(assert (= (and b!532336 res!327834) b!532339))

(assert (= (and b!532339 res!327838) b!532335))

(assert (= (and b!532335 res!327832) b!532342))

(assert (= (and b!532342 res!327836) b!532337))

(assert (= (and b!532337 res!327835) b!532341))

(assert (= (and b!532341 res!327830) b!532334))

(assert (= (and b!532334 res!327833) b!532338))

(assert (= (and b!532338 res!327837) b!532343))

(declare-fun m!512503 () Bool)

(assert (=> b!532338 m!512503))

(assert (=> b!532338 m!512503))

(declare-fun m!512505 () Bool)

(assert (=> b!532338 m!512505))

(declare-fun m!512507 () Bool)

(assert (=> b!532335 m!512507))

(declare-fun m!512509 () Bool)

(assert (=> b!532341 m!512509))

(declare-fun m!512511 () Bool)

(assert (=> b!532339 m!512511))

(assert (=> b!532343 m!512503))

(assert (=> b!532343 m!512503))

(declare-fun m!512513 () Bool)

(assert (=> b!532343 m!512513))

(declare-fun m!512515 () Bool)

(assert (=> b!532334 m!512515))

(assert (=> b!532334 m!512503))

(assert (=> b!532336 m!512503))

(assert (=> b!532336 m!512503))

(declare-fun m!512517 () Bool)

(assert (=> b!532336 m!512517))

(declare-fun m!512519 () Bool)

(assert (=> start!48498 m!512519))

(declare-fun m!512521 () Bool)

(assert (=> start!48498 m!512521))

(declare-fun m!512523 () Bool)

(assert (=> b!532337 m!512523))

(declare-fun m!512525 () Bool)

(assert (=> b!532342 m!512525))

(check-sat (not b!532341) (not b!532338) (not b!532342) (not b!532335) (not b!532336) (not b!532337) (not start!48498) (not b!532343) (not b!532339))
(check-sat)
