; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48494 () Bool)

(assert start!48494)

(declare-fun b!532274 () Bool)

(declare-fun res!327772 () Bool)

(declare-fun e!309925 () Bool)

(assert (=> b!532274 (=> (not res!327772) (not e!309925))))

(declare-datatypes ((array!33713 0))(
  ( (array!33714 (arr!16193 (Array (_ BitVec 32) (_ BitVec 64))) (size!16557 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33713)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532274 (= res!327772 (validKeyInArray!0 (select (arr!16193 a!3154) j!147)))))

(declare-fun res!327770 () Bool)

(assert (=> start!48494 (=> (not res!327770) (not e!309925))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48494 (= res!327770 (validMask!0 mask!3216))))

(assert (=> start!48494 e!309925))

(assert (=> start!48494 true))

(declare-fun array_inv!11967 (array!33713) Bool)

(assert (=> start!48494 (array_inv!11967 a!3154)))

(declare-fun b!532275 () Bool)

(declare-fun res!327776 () Bool)

(assert (=> b!532275 (=> (not res!327776) (not e!309925))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532275 (= res!327776 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532276 () Bool)

(declare-fun res!327779 () Bool)

(declare-fun e!309924 () Bool)

(assert (=> b!532276 (=> (not res!327779) (not e!309924))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4658 0))(
  ( (MissingZero!4658 (index!20856 (_ BitVec 32))) (Found!4658 (index!20857 (_ BitVec 32))) (Intermediate!4658 (undefined!5470 Bool) (index!20858 (_ BitVec 32)) (x!49854 (_ BitVec 32))) (Undefined!4658) (MissingVacant!4658 (index!20859 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33713 (_ BitVec 32)) SeekEntryResult!4658)

(assert (=> b!532276 (= res!327779 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16193 a!3154) j!147) a!3154 mask!3216) (Intermediate!4658 false resIndex!32 resX!32)))))

(declare-fun b!532277 () Bool)

(declare-fun res!327771 () Bool)

(assert (=> b!532277 (=> (not res!327771) (not e!309924))))

(declare-datatypes ((List!10365 0))(
  ( (Nil!10362) (Cons!10361 (h!11301 (_ BitVec 64)) (t!16601 List!10365)) )
))
(declare-fun arrayNoDuplicates!0 (array!33713 (_ BitVec 32) List!10365) Bool)

(assert (=> b!532277 (= res!327771 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10362))))

(declare-fun b!532278 () Bool)

(declare-fun res!327777 () Bool)

(assert (=> b!532278 (=> (not res!327777) (not e!309925))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532278 (= res!327777 (and (= (size!16557 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16557 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16557 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532279 () Bool)

(declare-fun res!327773 () Bool)

(assert (=> b!532279 (=> (not res!327773) (not e!309925))))

(assert (=> b!532279 (= res!327773 (validKeyInArray!0 k!1998))))

(declare-fun b!532280 () Bool)

(declare-fun res!327778 () Bool)

(assert (=> b!532280 (=> (not res!327778) (not e!309924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33713 (_ BitVec 32)) Bool)

(assert (=> b!532280 (= res!327778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532281 () Bool)

(assert (=> b!532281 (= e!309925 e!309924)))

(declare-fun res!327774 () Bool)

(assert (=> b!532281 (=> (not res!327774) (not e!309924))))

(declare-fun lt!245180 () SeekEntryResult!4658)

(assert (=> b!532281 (= res!327774 (or (= lt!245180 (MissingZero!4658 i!1153)) (= lt!245180 (MissingVacant!4658 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33713 (_ BitVec 32)) SeekEntryResult!4658)

(assert (=> b!532281 (= lt!245180 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532282 () Bool)

(declare-fun res!327775 () Bool)

(assert (=> b!532282 (=> (not res!327775) (not e!309924))))

(assert (=> b!532282 (= res!327775 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16557 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16557 a!3154)) (= (select (arr!16193 a!3154) resIndex!32) (select (arr!16193 a!3154) j!147))))))

(declare-fun b!532283 () Bool)

(assert (=> b!532283 (= e!309924 false)))

(declare-fun lt!245179 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532283 (= lt!245179 (toIndex!0 (select (arr!16193 a!3154) j!147) mask!3216))))

(assert (= (and start!48494 res!327770) b!532278))

(assert (= (and b!532278 res!327777) b!532274))

(assert (= (and b!532274 res!327772) b!532279))

(assert (= (and b!532279 res!327773) b!532275))

(assert (= (and b!532275 res!327776) b!532281))

(assert (= (and b!532281 res!327774) b!532280))

(assert (= (and b!532280 res!327778) b!532277))

(assert (= (and b!532277 res!327771) b!532282))

(assert (= (and b!532282 res!327775) b!532276))

(assert (= (and b!532276 res!327779) b!532283))

(declare-fun m!512455 () Bool)

(assert (=> b!532280 m!512455))

(declare-fun m!512457 () Bool)

(assert (=> start!48494 m!512457))

(declare-fun m!512459 () Bool)

(assert (=> start!48494 m!512459))

(declare-fun m!512461 () Bool)

(assert (=> b!532281 m!512461))

(declare-fun m!512463 () Bool)

(assert (=> b!532276 m!512463))

(assert (=> b!532276 m!512463))

(declare-fun m!512465 () Bool)

(assert (=> b!532276 m!512465))

(declare-fun m!512467 () Bool)

(assert (=> b!532275 m!512467))

(assert (=> b!532283 m!512463))

(assert (=> b!532283 m!512463))

(declare-fun m!512469 () Bool)

(assert (=> b!532283 m!512469))

(assert (=> b!532274 m!512463))

(assert (=> b!532274 m!512463))

(declare-fun m!512471 () Bool)

(assert (=> b!532274 m!512471))

(declare-fun m!512473 () Bool)

(assert (=> b!532282 m!512473))

(assert (=> b!532282 m!512463))

(declare-fun m!512475 () Bool)

(assert (=> b!532277 m!512475))

(declare-fun m!512477 () Bool)

(assert (=> b!532279 m!512477))

(push 1)

(assert (not b!532283))

