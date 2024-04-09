; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48582 () Bool)

(assert start!48582)

(declare-fun b!533013 () Bool)

(declare-fun res!328373 () Bool)

(declare-fun e!310230 () Bool)

(assert (=> b!533013 (=> (not res!328373) (not e!310230))))

(declare-datatypes ((array!33750 0))(
  ( (array!33751 (arr!16210 (Array (_ BitVec 32) (_ BitVec 64))) (size!16574 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33750)

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533013 (= res!328373 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533015 () Bool)

(declare-fun e!310229 () Bool)

(assert (=> b!533015 (= e!310230 e!310229)))

(declare-fun res!328374 () Bool)

(assert (=> b!533015 (=> (not res!328374) (not e!310229))))

(declare-datatypes ((SeekEntryResult!4675 0))(
  ( (MissingZero!4675 (index!20924 (_ BitVec 32))) (Found!4675 (index!20925 (_ BitVec 32))) (Intermediate!4675 (undefined!5487 Bool) (index!20926 (_ BitVec 32)) (x!49925 (_ BitVec 32))) (Undefined!4675) (MissingVacant!4675 (index!20927 (_ BitVec 32))) )
))
(declare-fun lt!245371 () SeekEntryResult!4675)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533015 (= res!328374 (or (= lt!245371 (MissingZero!4675 i!1153)) (= lt!245371 (MissingVacant!4675 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33750 (_ BitVec 32)) SeekEntryResult!4675)

(assert (=> b!533015 (= lt!245371 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!533016 () Bool)

(declare-fun res!328372 () Bool)

(assert (=> b!533016 (=> (not res!328372) (not e!310230))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533016 (= res!328372 (and (= (size!16574 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16574 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16574 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533017 () Bool)

(declare-fun res!328371 () Bool)

(assert (=> b!533017 (=> (not res!328371) (not e!310229))))

(declare-datatypes ((List!10382 0))(
  ( (Nil!10379) (Cons!10378 (h!11321 (_ BitVec 64)) (t!16618 List!10382)) )
))
(declare-fun arrayNoDuplicates!0 (array!33750 (_ BitVec 32) List!10382) Bool)

(assert (=> b!533017 (= res!328371 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10379))))

(declare-fun b!533018 () Bool)

(declare-fun res!328368 () Bool)

(assert (=> b!533018 (=> (not res!328368) (not e!310230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533018 (= res!328368 (validKeyInArray!0 (select (arr!16210 a!3154) j!147)))))

(declare-fun b!533019 () Bool)

(declare-fun res!328370 () Bool)

(assert (=> b!533019 (=> (not res!328370) (not e!310229))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533019 (= res!328370 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16574 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16574 a!3154)) (= (select (arr!16210 a!3154) resIndex!32) (select (arr!16210 a!3154) j!147))))))

(declare-fun b!533020 () Bool)

(declare-fun res!328375 () Bool)

(assert (=> b!533020 (=> (not res!328375) (not e!310229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33750 (_ BitVec 32)) Bool)

(assert (=> b!533020 (= res!328375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533021 () Bool)

(declare-fun res!328376 () Bool)

(assert (=> b!533021 (=> (not res!328376) (not e!310230))))

(assert (=> b!533021 (= res!328376 (validKeyInArray!0 k0!1998))))

(declare-fun res!328369 () Bool)

(assert (=> start!48582 (=> (not res!328369) (not e!310230))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48582 (= res!328369 (validMask!0 mask!3216))))

(assert (=> start!48582 e!310230))

(assert (=> start!48582 true))

(declare-fun array_inv!11984 (array!33750) Bool)

(assert (=> start!48582 (array_inv!11984 a!3154)))

(declare-fun b!533014 () Bool)

(assert (=> b!533014 (= e!310229 false)))

(declare-fun lt!245372 () SeekEntryResult!4675)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33750 (_ BitVec 32)) SeekEntryResult!4675)

(assert (=> b!533014 (= lt!245372 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16210 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48582 res!328369) b!533016))

(assert (= (and b!533016 res!328372) b!533018))

(assert (= (and b!533018 res!328368) b!533021))

(assert (= (and b!533021 res!328376) b!533013))

(assert (= (and b!533013 res!328373) b!533015))

(assert (= (and b!533015 res!328374) b!533020))

(assert (= (and b!533020 res!328375) b!533017))

(assert (= (and b!533017 res!328371) b!533019))

(assert (= (and b!533019 res!328370) b!533014))

(declare-fun m!512981 () Bool)

(assert (=> b!533017 m!512981))

(declare-fun m!512983 () Bool)

(assert (=> b!533013 m!512983))

(declare-fun m!512985 () Bool)

(assert (=> b!533015 m!512985))

(declare-fun m!512987 () Bool)

(assert (=> start!48582 m!512987))

(declare-fun m!512989 () Bool)

(assert (=> start!48582 m!512989))

(declare-fun m!512991 () Bool)

(assert (=> b!533020 m!512991))

(declare-fun m!512993 () Bool)

(assert (=> b!533014 m!512993))

(assert (=> b!533014 m!512993))

(declare-fun m!512995 () Bool)

(assert (=> b!533014 m!512995))

(declare-fun m!512997 () Bool)

(assert (=> b!533021 m!512997))

(assert (=> b!533018 m!512993))

(assert (=> b!533018 m!512993))

(declare-fun m!512999 () Bool)

(assert (=> b!533018 m!512999))

(declare-fun m!513001 () Bool)

(assert (=> b!533019 m!513001))

(assert (=> b!533019 m!512993))

(check-sat (not b!533014) (not b!533020) (not b!533018) (not b!533013) (not b!533017) (not b!533015) (not start!48582) (not b!533021))
