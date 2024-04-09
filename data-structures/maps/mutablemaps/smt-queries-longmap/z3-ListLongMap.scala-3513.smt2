; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48666 () Bool)

(assert start!48666)

(declare-fun b!534251 () Bool)

(declare-fun e!310609 () Bool)

(assert (=> b!534251 (= e!310609 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4717 0))(
  ( (MissingZero!4717 (index!21092 (_ BitVec 32))) (Found!4717 (index!21093 (_ BitVec 32))) (Intermediate!4717 (undefined!5529 Bool) (index!21094 (_ BitVec 32)) (x!50079 (_ BitVec 32))) (Undefined!4717) (MissingVacant!4717 (index!21095 (_ BitVec 32))) )
))
(declare-fun lt!245596 () SeekEntryResult!4717)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33834 0))(
  ( (array!33835 (arr!16252 (Array (_ BitVec 32) (_ BitVec 64))) (size!16616 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33834)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33834 (_ BitVec 32)) SeekEntryResult!4717)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534251 (= lt!245596 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16252 a!3154) j!147) mask!3216) (select (arr!16252 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534252 () Bool)

(declare-fun res!329607 () Bool)

(declare-fun e!310607 () Bool)

(assert (=> b!534252 (=> (not res!329607) (not e!310607))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33834 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534252 (= res!329607 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun res!329608 () Bool)

(assert (=> start!48666 (=> (not res!329608) (not e!310607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48666 (= res!329608 (validMask!0 mask!3216))))

(assert (=> start!48666 e!310607))

(assert (=> start!48666 true))

(declare-fun array_inv!12026 (array!33834) Bool)

(assert (=> start!48666 (array_inv!12026 a!3154)))

(declare-fun b!534253 () Bool)

(declare-fun res!329611 () Bool)

(assert (=> b!534253 (=> (not res!329611) (not e!310609))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534253 (= res!329611 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16252 a!3154) j!147) a!3154 mask!3216) (Intermediate!4717 false resIndex!32 resX!32)))))

(declare-fun b!534254 () Bool)

(declare-fun res!329614 () Bool)

(assert (=> b!534254 (=> (not res!329614) (not e!310607))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534254 (= res!329614 (and (= (size!16616 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16616 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16616 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534255 () Bool)

(declare-fun res!329613 () Bool)

(assert (=> b!534255 (=> (not res!329613) (not e!310609))))

(assert (=> b!534255 (= res!329613 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16616 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16616 a!3154)) (= (select (arr!16252 a!3154) resIndex!32) (select (arr!16252 a!3154) j!147))))))

(declare-fun b!534256 () Bool)

(declare-fun res!329606 () Bool)

(assert (=> b!534256 (=> (not res!329606) (not e!310609))))

(declare-datatypes ((List!10424 0))(
  ( (Nil!10421) (Cons!10420 (h!11363 (_ BitVec 64)) (t!16660 List!10424)) )
))
(declare-fun arrayNoDuplicates!0 (array!33834 (_ BitVec 32) List!10424) Bool)

(assert (=> b!534256 (= res!329606 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10421))))

(declare-fun b!534257 () Bool)

(declare-fun res!329612 () Bool)

(assert (=> b!534257 (=> (not res!329612) (not e!310607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534257 (= res!329612 (validKeyInArray!0 (select (arr!16252 a!3154) j!147)))))

(declare-fun b!534258 () Bool)

(declare-fun res!329610 () Bool)

(assert (=> b!534258 (=> (not res!329610) (not e!310609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33834 (_ BitVec 32)) Bool)

(assert (=> b!534258 (= res!329610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534259 () Bool)

(declare-fun res!329615 () Bool)

(assert (=> b!534259 (=> (not res!329615) (not e!310607))))

(assert (=> b!534259 (= res!329615 (validKeyInArray!0 k0!1998))))

(declare-fun b!534260 () Bool)

(assert (=> b!534260 (= e!310607 e!310609)))

(declare-fun res!329609 () Bool)

(assert (=> b!534260 (=> (not res!329609) (not e!310609))))

(declare-fun lt!245597 () SeekEntryResult!4717)

(assert (=> b!534260 (= res!329609 (or (= lt!245597 (MissingZero!4717 i!1153)) (= lt!245597 (MissingVacant!4717 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33834 (_ BitVec 32)) SeekEntryResult!4717)

(assert (=> b!534260 (= lt!245597 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!48666 res!329608) b!534254))

(assert (= (and b!534254 res!329614) b!534257))

(assert (= (and b!534257 res!329612) b!534259))

(assert (= (and b!534259 res!329615) b!534252))

(assert (= (and b!534252 res!329607) b!534260))

(assert (= (and b!534260 res!329609) b!534258))

(assert (= (and b!534258 res!329610) b!534256))

(assert (= (and b!534256 res!329606) b!534255))

(assert (= (and b!534255 res!329613) b!534253))

(assert (= (and b!534253 res!329611) b!534251))

(declare-fun m!514005 () Bool)

(assert (=> b!534259 m!514005))

(declare-fun m!514007 () Bool)

(assert (=> b!534255 m!514007))

(declare-fun m!514009 () Bool)

(assert (=> b!534255 m!514009))

(assert (=> b!534253 m!514009))

(assert (=> b!534253 m!514009))

(declare-fun m!514011 () Bool)

(assert (=> b!534253 m!514011))

(declare-fun m!514013 () Bool)

(assert (=> b!534256 m!514013))

(declare-fun m!514015 () Bool)

(assert (=> b!534252 m!514015))

(declare-fun m!514017 () Bool)

(assert (=> start!48666 m!514017))

(declare-fun m!514019 () Bool)

(assert (=> start!48666 m!514019))

(assert (=> b!534251 m!514009))

(assert (=> b!534251 m!514009))

(declare-fun m!514021 () Bool)

(assert (=> b!534251 m!514021))

(assert (=> b!534251 m!514021))

(assert (=> b!534251 m!514009))

(declare-fun m!514023 () Bool)

(assert (=> b!534251 m!514023))

(declare-fun m!514025 () Bool)

(assert (=> b!534260 m!514025))

(declare-fun m!514027 () Bool)

(assert (=> b!534258 m!514027))

(assert (=> b!534257 m!514009))

(assert (=> b!534257 m!514009))

(declare-fun m!514029 () Bool)

(assert (=> b!534257 m!514029))

(check-sat (not b!534260) (not b!534253) (not b!534252) (not b!534256) (not b!534257) (not b!534251) (not b!534258) (not b!534259) (not start!48666))
(check-sat)
