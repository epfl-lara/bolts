; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46236 () Bool)

(assert start!46236)

(declare-fun b!511685 () Bool)

(declare-fun res!312505 () Bool)

(declare-fun e!298934 () Bool)

(assert (=> b!511685 (=> (not res!312505) (not e!298934))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511685 (= res!312505 (validKeyInArray!0 k0!2280))))

(declare-fun b!511686 () Bool)

(declare-fun res!312498 () Bool)

(assert (=> b!511686 (=> (not res!312498) (not e!298934))))

(declare-datatypes ((array!32850 0))(
  ( (array!32851 (arr!15799 (Array (_ BitVec 32) (_ BitVec 64))) (size!16163 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32850)

(declare-fun arrayContainsKey!0 (array!32850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511686 (= res!312498 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511687 () Bool)

(declare-fun res!312499 () Bool)

(declare-fun e!298933 () Bool)

(assert (=> b!511687 (=> (not res!312499) (not e!298933))))

(declare-datatypes ((List!10010 0))(
  ( (Nil!10007) (Cons!10006 (h!10886 (_ BitVec 64)) (t!16246 List!10010)) )
))
(declare-fun arrayNoDuplicates!0 (array!32850 (_ BitVec 32) List!10010) Bool)

(assert (=> b!511687 (= res!312499 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10007))))

(declare-fun b!511689 () Bool)

(declare-fun e!298935 () Bool)

(assert (=> b!511689 (= e!298933 (not e!298935))))

(declare-fun res!312506 () Bool)

(assert (=> b!511689 (=> res!312506 e!298935)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4273 0))(
  ( (MissingZero!4273 (index!19280 (_ BitVec 32))) (Found!4273 (index!19281 (_ BitVec 32))) (Intermediate!4273 (undefined!5085 Bool) (index!19282 (_ BitVec 32)) (x!48259 (_ BitVec 32))) (Undefined!4273) (MissingVacant!4273 (index!19283 (_ BitVec 32))) )
))
(declare-fun lt!234208 () SeekEntryResult!4273)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!234212 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32850 (_ BitVec 32)) SeekEntryResult!4273)

(assert (=> b!511689 (= res!312506 (= lt!234208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234212 (select (store (arr!15799 a!3235) i!1204 k0!2280) j!176) (array!32851 (store (arr!15799 a!3235) i!1204 k0!2280) (size!16163 a!3235)) mask!3524)))))

(declare-fun lt!234211 () (_ BitVec 32))

(assert (=> b!511689 (= lt!234208 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234211 (select (arr!15799 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511689 (= lt!234212 (toIndex!0 (select (store (arr!15799 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!511689 (= lt!234211 (toIndex!0 (select (arr!15799 a!3235) j!176) mask!3524))))

(declare-fun lt!234209 () SeekEntryResult!4273)

(assert (=> b!511689 (= lt!234209 (Found!4273 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32850 (_ BitVec 32)) SeekEntryResult!4273)

(assert (=> b!511689 (= lt!234209 (seekEntryOrOpen!0 (select (arr!15799 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32850 (_ BitVec 32)) Bool)

(assert (=> b!511689 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15796 0))(
  ( (Unit!15797) )
))
(declare-fun lt!234207 () Unit!15796)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32850 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15796)

(assert (=> b!511689 (= lt!234207 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511690 () Bool)

(declare-fun res!312500 () Bool)

(assert (=> b!511690 (=> (not res!312500) (not e!298933))))

(assert (=> b!511690 (= res!312500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511691 () Bool)

(assert (=> b!511691 (= e!298935 true)))

(assert (=> b!511691 (= lt!234209 Undefined!4273)))

(declare-fun b!511692 () Bool)

(declare-fun res!312504 () Bool)

(assert (=> b!511692 (=> res!312504 e!298935)))

(get-info :version)

(assert (=> b!511692 (= res!312504 (or (not ((_ is Intermediate!4273) lt!234208)) (not (undefined!5085 lt!234208))))))

(declare-fun b!511693 () Bool)

(declare-fun res!312503 () Bool)

(assert (=> b!511693 (=> (not res!312503) (not e!298934))))

(assert (=> b!511693 (= res!312503 (and (= (size!16163 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16163 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16163 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511694 () Bool)

(declare-fun res!312497 () Bool)

(assert (=> b!511694 (=> (not res!312497) (not e!298934))))

(assert (=> b!511694 (= res!312497 (validKeyInArray!0 (select (arr!15799 a!3235) j!176)))))

(declare-fun res!312501 () Bool)

(assert (=> start!46236 (=> (not res!312501) (not e!298934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46236 (= res!312501 (validMask!0 mask!3524))))

(assert (=> start!46236 e!298934))

(assert (=> start!46236 true))

(declare-fun array_inv!11573 (array!32850) Bool)

(assert (=> start!46236 (array_inv!11573 a!3235)))

(declare-fun b!511688 () Bool)

(assert (=> b!511688 (= e!298934 e!298933)))

(declare-fun res!312502 () Bool)

(assert (=> b!511688 (=> (not res!312502) (not e!298933))))

(declare-fun lt!234210 () SeekEntryResult!4273)

(assert (=> b!511688 (= res!312502 (or (= lt!234210 (MissingZero!4273 i!1204)) (= lt!234210 (MissingVacant!4273 i!1204))))))

(assert (=> b!511688 (= lt!234210 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!46236 res!312501) b!511693))

(assert (= (and b!511693 res!312503) b!511694))

(assert (= (and b!511694 res!312497) b!511685))

(assert (= (and b!511685 res!312505) b!511686))

(assert (= (and b!511686 res!312498) b!511688))

(assert (= (and b!511688 res!312502) b!511690))

(assert (= (and b!511690 res!312500) b!511687))

(assert (= (and b!511687 res!312499) b!511689))

(assert (= (and b!511689 (not res!312506)) b!511692))

(assert (= (and b!511692 (not res!312504)) b!511691))

(declare-fun m!493267 () Bool)

(assert (=> b!511688 m!493267))

(declare-fun m!493269 () Bool)

(assert (=> b!511694 m!493269))

(assert (=> b!511694 m!493269))

(declare-fun m!493271 () Bool)

(assert (=> b!511694 m!493271))

(declare-fun m!493273 () Bool)

(assert (=> b!511686 m!493273))

(declare-fun m!493275 () Bool)

(assert (=> b!511685 m!493275))

(declare-fun m!493277 () Bool)

(assert (=> b!511690 m!493277))

(declare-fun m!493279 () Bool)

(assert (=> b!511689 m!493279))

(declare-fun m!493281 () Bool)

(assert (=> b!511689 m!493281))

(declare-fun m!493283 () Bool)

(assert (=> b!511689 m!493283))

(assert (=> b!511689 m!493283))

(declare-fun m!493285 () Bool)

(assert (=> b!511689 m!493285))

(assert (=> b!511689 m!493269))

(declare-fun m!493287 () Bool)

(assert (=> b!511689 m!493287))

(assert (=> b!511689 m!493269))

(declare-fun m!493289 () Bool)

(assert (=> b!511689 m!493289))

(assert (=> b!511689 m!493269))

(declare-fun m!493291 () Bool)

(assert (=> b!511689 m!493291))

(assert (=> b!511689 m!493269))

(declare-fun m!493293 () Bool)

(assert (=> b!511689 m!493293))

(assert (=> b!511689 m!493283))

(declare-fun m!493295 () Bool)

(assert (=> b!511689 m!493295))

(declare-fun m!493297 () Bool)

(assert (=> start!46236 m!493297))

(declare-fun m!493299 () Bool)

(assert (=> start!46236 m!493299))

(declare-fun m!493301 () Bool)

(assert (=> b!511687 m!493301))

(check-sat (not b!511688) (not b!511689) (not b!511687) (not b!511685) (not b!511690) (not start!46236) (not b!511686) (not b!511694))
(check-sat)
