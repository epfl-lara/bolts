; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46284 () Bool)

(assert start!46284)

(declare-fun b!512400 () Bool)

(declare-fun res!313215 () Bool)

(declare-fun e!299222 () Bool)

(assert (=> b!512400 (=> (not res!313215) (not e!299222))))

(declare-datatypes ((array!32898 0))(
  ( (array!32899 (arr!15823 (Array (_ BitVec 32) (_ BitVec 64))) (size!16187 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32898)

(declare-datatypes ((List!10034 0))(
  ( (Nil!10031) (Cons!10030 (h!10910 (_ BitVec 64)) (t!16270 List!10034)) )
))
(declare-fun arrayNoDuplicates!0 (array!32898 (_ BitVec 32) List!10034) Bool)

(assert (=> b!512400 (= res!313215 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10031))))

(declare-fun b!512401 () Bool)

(declare-fun res!313212 () Bool)

(declare-fun e!299221 () Bool)

(assert (=> b!512401 (=> (not res!313212) (not e!299221))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512401 (= res!313212 (validKeyInArray!0 (select (arr!15823 a!3235) j!176)))))

(declare-fun b!512402 () Bool)

(assert (=> b!512402 (= e!299221 e!299222)))

(declare-fun res!313220 () Bool)

(assert (=> b!512402 (=> (not res!313220) (not e!299222))))

(declare-datatypes ((SeekEntryResult!4297 0))(
  ( (MissingZero!4297 (index!19376 (_ BitVec 32))) (Found!4297 (index!19377 (_ BitVec 32))) (Intermediate!4297 (undefined!5109 Bool) (index!19378 (_ BitVec 32)) (x!48347 (_ BitVec 32))) (Undefined!4297) (MissingVacant!4297 (index!19379 (_ BitVec 32))) )
))
(declare-fun lt!234642 () SeekEntryResult!4297)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512402 (= res!313220 (or (= lt!234642 (MissingZero!4297 i!1204)) (= lt!234642 (MissingVacant!4297 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32898 (_ BitVec 32)) SeekEntryResult!4297)

(assert (=> b!512402 (= lt!234642 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!313217 () Bool)

(assert (=> start!46284 (=> (not res!313217) (not e!299221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46284 (= res!313217 (validMask!0 mask!3524))))

(assert (=> start!46284 e!299221))

(assert (=> start!46284 true))

(declare-fun array_inv!11597 (array!32898) Bool)

(assert (=> start!46284 (array_inv!11597 a!3235)))

(declare-fun b!512403 () Bool)

(declare-fun res!313219 () Bool)

(assert (=> b!512403 (=> (not res!313219) (not e!299221))))

(assert (=> b!512403 (= res!313219 (validKeyInArray!0 k0!2280))))

(declare-fun e!299224 () Bool)

(declare-fun b!512404 () Bool)

(assert (=> b!512404 (= e!299224 (= (seekEntryOrOpen!0 (select (arr!15823 a!3235) j!176) a!3235 mask!3524) (Found!4297 j!176)))))

(declare-fun b!512405 () Bool)

(declare-fun res!313218 () Bool)

(assert (=> b!512405 (=> (not res!313218) (not e!299221))))

(assert (=> b!512405 (= res!313218 (and (= (size!16187 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16187 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16187 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512406 () Bool)

(declare-fun res!313214 () Bool)

(assert (=> b!512406 (=> (not res!313214) (not e!299222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32898 (_ BitVec 32)) Bool)

(assert (=> b!512406 (= res!313214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512407 () Bool)

(assert (=> b!512407 (= e!299222 (not true))))

(declare-fun lt!234640 () SeekEntryResult!4297)

(declare-fun lt!234639 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32898 (_ BitVec 32)) SeekEntryResult!4297)

(assert (=> b!512407 (= lt!234640 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234639 (select (store (arr!15823 a!3235) i!1204 k0!2280) j!176) (array!32899 (store (arr!15823 a!3235) i!1204 k0!2280) (size!16187 a!3235)) mask!3524))))

(declare-fun lt!234644 () (_ BitVec 32))

(declare-fun lt!234643 () SeekEntryResult!4297)

(assert (=> b!512407 (= lt!234643 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234644 (select (arr!15823 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512407 (= lt!234639 (toIndex!0 (select (store (arr!15823 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!512407 (= lt!234644 (toIndex!0 (select (arr!15823 a!3235) j!176) mask!3524))))

(assert (=> b!512407 e!299224))

(declare-fun res!313216 () Bool)

(assert (=> b!512407 (=> (not res!313216) (not e!299224))))

(assert (=> b!512407 (= res!313216 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15844 0))(
  ( (Unit!15845) )
))
(declare-fun lt!234641 () Unit!15844)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32898 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15844)

(assert (=> b!512407 (= lt!234641 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512408 () Bool)

(declare-fun res!313213 () Bool)

(assert (=> b!512408 (=> (not res!313213) (not e!299221))))

(declare-fun arrayContainsKey!0 (array!32898 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512408 (= res!313213 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46284 res!313217) b!512405))

(assert (= (and b!512405 res!313218) b!512401))

(assert (= (and b!512401 res!313212) b!512403))

(assert (= (and b!512403 res!313219) b!512408))

(assert (= (and b!512408 res!313213) b!512402))

(assert (= (and b!512402 res!313220) b!512406))

(assert (= (and b!512406 res!313214) b!512400))

(assert (= (and b!512400 res!313215) b!512407))

(assert (= (and b!512407 res!313216) b!512404))

(declare-fun m!494131 () Bool)

(assert (=> b!512401 m!494131))

(assert (=> b!512401 m!494131))

(declare-fun m!494133 () Bool)

(assert (=> b!512401 m!494133))

(declare-fun m!494135 () Bool)

(assert (=> b!512407 m!494135))

(declare-fun m!494137 () Bool)

(assert (=> b!512407 m!494137))

(declare-fun m!494139 () Bool)

(assert (=> b!512407 m!494139))

(assert (=> b!512407 m!494131))

(declare-fun m!494141 () Bool)

(assert (=> b!512407 m!494141))

(assert (=> b!512407 m!494131))

(declare-fun m!494143 () Bool)

(assert (=> b!512407 m!494143))

(assert (=> b!512407 m!494131))

(declare-fun m!494145 () Bool)

(assert (=> b!512407 m!494145))

(assert (=> b!512407 m!494139))

(declare-fun m!494147 () Bool)

(assert (=> b!512407 m!494147))

(assert (=> b!512407 m!494139))

(declare-fun m!494149 () Bool)

(assert (=> b!512407 m!494149))

(declare-fun m!494151 () Bool)

(assert (=> b!512402 m!494151))

(declare-fun m!494153 () Bool)

(assert (=> b!512408 m!494153))

(assert (=> b!512404 m!494131))

(assert (=> b!512404 m!494131))

(declare-fun m!494155 () Bool)

(assert (=> b!512404 m!494155))

(declare-fun m!494157 () Bool)

(assert (=> b!512403 m!494157))

(declare-fun m!494159 () Bool)

(assert (=> b!512400 m!494159))

(declare-fun m!494161 () Bool)

(assert (=> b!512406 m!494161))

(declare-fun m!494163 () Bool)

(assert (=> start!46284 m!494163))

(declare-fun m!494165 () Bool)

(assert (=> start!46284 m!494165))

(check-sat (not b!512403) (not b!512400) (not b!512408) (not b!512402) (not b!512404) (not b!512407) (not b!512406) (not b!512401) (not start!46284))
(check-sat)
