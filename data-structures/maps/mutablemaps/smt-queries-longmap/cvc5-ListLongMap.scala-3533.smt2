; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48784 () Bool)

(assert start!48784)

(declare-fun b!536261 () Bool)

(declare-fun res!331617 () Bool)

(declare-fun e!311313 () Bool)

(assert (=> b!536261 (=> (not res!331617) (not e!311313))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33952 0))(
  ( (array!33953 (arr!16311 (Array (_ BitVec 32) (_ BitVec 64))) (size!16675 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33952)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536261 (= res!331617 (and (= (size!16675 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16675 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16675 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536262 () Bool)

(declare-fun res!331616 () Bool)

(declare-fun e!311317 () Bool)

(assert (=> b!536262 (=> (not res!331616) (not e!311317))))

(declare-datatypes ((List!10483 0))(
  ( (Nil!10480) (Cons!10479 (h!11422 (_ BitVec 64)) (t!16719 List!10483)) )
))
(declare-fun arrayNoDuplicates!0 (array!33952 (_ BitVec 32) List!10483) Bool)

(assert (=> b!536262 (= res!331616 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10480))))

(declare-fun b!536263 () Bool)

(declare-fun res!331627 () Bool)

(assert (=> b!536263 (=> (not res!331627) (not e!311313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536263 (= res!331627 (validKeyInArray!0 (select (arr!16311 a!3154) j!147)))))

(declare-fun b!536264 () Bool)

(declare-fun res!331619 () Bool)

(assert (=> b!536264 (=> (not res!331619) (not e!311313))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536264 (= res!331619 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536265 () Bool)

(declare-fun res!331624 () Bool)

(assert (=> b!536265 (=> (not res!331624) (not e!311317))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536265 (= res!331624 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16675 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16675 a!3154)) (= (select (arr!16311 a!3154) resIndex!32) (select (arr!16311 a!3154) j!147))))))

(declare-fun b!536266 () Bool)

(declare-fun res!331618 () Bool)

(declare-fun e!311315 () Bool)

(assert (=> b!536266 (=> (not res!331618) (not e!311315))))

(declare-datatypes ((SeekEntryResult!4776 0))(
  ( (MissingZero!4776 (index!21328 (_ BitVec 32))) (Found!4776 (index!21329 (_ BitVec 32))) (Intermediate!4776 (undefined!5588 Bool) (index!21330 (_ BitVec 32)) (x!50298 (_ BitVec 32))) (Undefined!4776) (MissingVacant!4776 (index!21331 (_ BitVec 32))) )
))
(declare-fun lt!246063 () SeekEntryResult!4776)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33952 (_ BitVec 32)) SeekEntryResult!4776)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536266 (= res!331618 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16311 a!3154) j!147) mask!3216) (select (arr!16311 a!3154) j!147) a!3154 mask!3216) lt!246063))))

(declare-fun b!536267 () Bool)

(declare-fun res!331623 () Bool)

(assert (=> b!536267 (=> (not res!331623) (not e!311313))))

(assert (=> b!536267 (= res!331623 (validKeyInArray!0 k!1998))))

(declare-fun res!331625 () Bool)

(assert (=> start!48784 (=> (not res!331625) (not e!311313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48784 (= res!331625 (validMask!0 mask!3216))))

(assert (=> start!48784 e!311313))

(assert (=> start!48784 true))

(declare-fun array_inv!12085 (array!33952) Bool)

(assert (=> start!48784 (array_inv!12085 a!3154)))

(declare-fun b!536268 () Bool)

(declare-fun res!331620 () Bool)

(assert (=> b!536268 (=> (not res!331620) (not e!311317))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33952 (_ BitVec 32)) Bool)

(assert (=> b!536268 (= res!331620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536269 () Bool)

(declare-fun e!311316 () Bool)

(assert (=> b!536269 (= e!311315 e!311316)))

(declare-fun res!331628 () Bool)

(assert (=> b!536269 (=> (not res!331628) (not e!311316))))

(declare-fun lt!246065 () (_ BitVec 32))

(assert (=> b!536269 (= res!331628 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246065 #b00000000000000000000000000000000) (bvslt lt!246065 (size!16675 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536269 (= lt!246065 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536270 () Bool)

(declare-fun res!331622 () Bool)

(assert (=> b!536270 (=> (not res!331622) (not e!311315))))

(assert (=> b!536270 (= res!331622 (and (not (= (select (arr!16311 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16311 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16311 a!3154) index!1177) (select (arr!16311 a!3154) j!147)))))))

(declare-fun b!536271 () Bool)

(assert (=> b!536271 (= e!311316 false)))

(declare-fun lt!246062 () SeekEntryResult!4776)

(assert (=> b!536271 (= lt!246062 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246065 (select (arr!16311 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536272 () Bool)

(assert (=> b!536272 (= e!311317 e!311315)))

(declare-fun res!331621 () Bool)

(assert (=> b!536272 (=> (not res!331621) (not e!311315))))

(assert (=> b!536272 (= res!331621 (= lt!246063 (Intermediate!4776 false resIndex!32 resX!32)))))

(assert (=> b!536272 (= lt!246063 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16311 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536273 () Bool)

(assert (=> b!536273 (= e!311313 e!311317)))

(declare-fun res!331626 () Bool)

(assert (=> b!536273 (=> (not res!331626) (not e!311317))))

(declare-fun lt!246064 () SeekEntryResult!4776)

(assert (=> b!536273 (= res!331626 (or (= lt!246064 (MissingZero!4776 i!1153)) (= lt!246064 (MissingVacant!4776 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33952 (_ BitVec 32)) SeekEntryResult!4776)

(assert (=> b!536273 (= lt!246064 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48784 res!331625) b!536261))

(assert (= (and b!536261 res!331617) b!536263))

(assert (= (and b!536263 res!331627) b!536267))

(assert (= (and b!536267 res!331623) b!536264))

(assert (= (and b!536264 res!331619) b!536273))

(assert (= (and b!536273 res!331626) b!536268))

(assert (= (and b!536268 res!331620) b!536262))

(assert (= (and b!536262 res!331616) b!536265))

(assert (= (and b!536265 res!331624) b!536272))

(assert (= (and b!536272 res!331621) b!536266))

(assert (= (and b!536266 res!331618) b!536270))

(assert (= (and b!536270 res!331622) b!536269))

(assert (= (and b!536269 res!331628) b!536271))

(declare-fun m!515707 () Bool)

(assert (=> b!536265 m!515707))

(declare-fun m!515709 () Bool)

(assert (=> b!536265 m!515709))

(assert (=> b!536263 m!515709))

(assert (=> b!536263 m!515709))

(declare-fun m!515711 () Bool)

(assert (=> b!536263 m!515711))

(declare-fun m!515713 () Bool)

(assert (=> b!536270 m!515713))

(assert (=> b!536270 m!515709))

(assert (=> b!536271 m!515709))

(assert (=> b!536271 m!515709))

(declare-fun m!515715 () Bool)

(assert (=> b!536271 m!515715))

(assert (=> b!536272 m!515709))

(assert (=> b!536272 m!515709))

(declare-fun m!515717 () Bool)

(assert (=> b!536272 m!515717))

(declare-fun m!515719 () Bool)

(assert (=> b!536273 m!515719))

(declare-fun m!515721 () Bool)

(assert (=> b!536264 m!515721))

(declare-fun m!515723 () Bool)

(assert (=> b!536269 m!515723))

(declare-fun m!515725 () Bool)

(assert (=> b!536267 m!515725))

(declare-fun m!515727 () Bool)

(assert (=> b!536268 m!515727))

(declare-fun m!515729 () Bool)

(assert (=> b!536262 m!515729))

(assert (=> b!536266 m!515709))

(assert (=> b!536266 m!515709))

(declare-fun m!515731 () Bool)

(assert (=> b!536266 m!515731))

(assert (=> b!536266 m!515731))

(assert (=> b!536266 m!515709))

(declare-fun m!515733 () Bool)

(assert (=> b!536266 m!515733))

(declare-fun m!515735 () Bool)

(assert (=> start!48784 m!515735))

(declare-fun m!515737 () Bool)

(assert (=> start!48784 m!515737))

(push 1)

(assert (not b!536268))

(assert (not b!536266))

(assert (not b!536264))

(assert (not b!536273))

(assert (not b!536272))

(assert (not b!536263))

(assert (not start!48784))

(assert (not b!536271))

(assert (not b!536267))

(assert (not b!536262))

(assert (not b!536269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

