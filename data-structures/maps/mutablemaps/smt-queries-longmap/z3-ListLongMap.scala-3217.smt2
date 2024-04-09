; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45060 () Bool)

(assert start!45060)

(declare-fun b!494201 () Bool)

(declare-fun res!296928 () Bool)

(declare-fun e!290059 () Bool)

(assert (=> b!494201 (=> res!296928 e!290059)))

(declare-datatypes ((SeekEntryResult!3838 0))(
  ( (MissingZero!3838 (index!17531 (_ BitVec 32))) (Found!3838 (index!17532 (_ BitVec 32))) (Intermediate!3838 (undefined!4650 Bool) (index!17533 (_ BitVec 32)) (x!46631 (_ BitVec 32))) (Undefined!3838) (MissingVacant!3838 (index!17534 (_ BitVec 32))) )
))
(declare-fun lt!223710 () SeekEntryResult!3838)

(get-info :version)

(assert (=> b!494201 (= res!296928 (or (not ((_ is Intermediate!3838) lt!223710)) (not (undefined!4650 lt!223710))))))

(declare-fun b!494203 () Bool)

(declare-fun res!296929 () Bool)

(declare-fun e!290060 () Bool)

(assert (=> b!494203 (=> (not res!296929) (not e!290060))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31965 0))(
  ( (array!31966 (arr!15364 (Array (_ BitVec 32) (_ BitVec 64))) (size!15728 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31965)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!494203 (= res!296929 (and (= (size!15728 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15728 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15728 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494204 () Bool)

(declare-fun e!290062 () Bool)

(assert (=> b!494204 (= e!290060 e!290062)))

(declare-fun res!296925 () Bool)

(assert (=> b!494204 (=> (not res!296925) (not e!290062))))

(declare-fun lt!223707 () SeekEntryResult!3838)

(assert (=> b!494204 (= res!296925 (or (= lt!223707 (MissingZero!3838 i!1204)) (= lt!223707 (MissingVacant!3838 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31965 (_ BitVec 32)) SeekEntryResult!3838)

(assert (=> b!494204 (= lt!223707 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!494205 () Bool)

(declare-fun res!296924 () Bool)

(assert (=> b!494205 (=> (not res!296924) (not e!290060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494205 (= res!296924 (validKeyInArray!0 k0!2280))))

(declare-fun b!494206 () Bool)

(declare-fun res!296930 () Bool)

(assert (=> b!494206 (=> (not res!296930) (not e!290062))))

(declare-datatypes ((List!9575 0))(
  ( (Nil!9572) (Cons!9571 (h!10439 (_ BitVec 64)) (t!15811 List!9575)) )
))
(declare-fun arrayNoDuplicates!0 (array!31965 (_ BitVec 32) List!9575) Bool)

(assert (=> b!494206 (= res!296930 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9572))))

(declare-fun b!494202 () Bool)

(assert (=> b!494202 (= e!290062 (not e!290059))))

(declare-fun res!296926 () Bool)

(assert (=> b!494202 (=> res!296926 e!290059)))

(declare-fun lt!223711 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31965 (_ BitVec 32)) SeekEntryResult!3838)

(assert (=> b!494202 (= res!296926 (= lt!223710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223711 (select (store (arr!15364 a!3235) i!1204 k0!2280) j!176) (array!31966 (store (arr!15364 a!3235) i!1204 k0!2280) (size!15728 a!3235)) mask!3524)))))

(declare-fun lt!223709 () (_ BitVec 32))

(assert (=> b!494202 (= lt!223710 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223709 (select (arr!15364 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494202 (= lt!223711 (toIndex!0 (select (store (arr!15364 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!494202 (= lt!223709 (toIndex!0 (select (arr!15364 a!3235) j!176) mask!3524))))

(declare-fun lt!223708 () SeekEntryResult!3838)

(assert (=> b!494202 (= lt!223708 (Found!3838 j!176))))

(assert (=> b!494202 (= lt!223708 (seekEntryOrOpen!0 (select (arr!15364 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31965 (_ BitVec 32)) Bool)

(assert (=> b!494202 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14614 0))(
  ( (Unit!14615) )
))
(declare-fun lt!223712 () Unit!14614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14614)

(assert (=> b!494202 (= lt!223712 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!296927 () Bool)

(assert (=> start!45060 (=> (not res!296927) (not e!290060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45060 (= res!296927 (validMask!0 mask!3524))))

(assert (=> start!45060 e!290060))

(assert (=> start!45060 true))

(declare-fun array_inv!11138 (array!31965) Bool)

(assert (=> start!45060 (array_inv!11138 a!3235)))

(declare-fun b!494207 () Bool)

(declare-fun res!296921 () Bool)

(assert (=> b!494207 (=> (not res!296921) (not e!290060))))

(declare-fun arrayContainsKey!0 (array!31965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494207 (= res!296921 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494208 () Bool)

(assert (=> b!494208 (= e!290059 true)))

(assert (=> b!494208 (= lt!223708 Undefined!3838)))

(declare-fun b!494209 () Bool)

(declare-fun res!296922 () Bool)

(assert (=> b!494209 (=> (not res!296922) (not e!290062))))

(assert (=> b!494209 (= res!296922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!494210 () Bool)

(declare-fun res!296923 () Bool)

(assert (=> b!494210 (=> (not res!296923) (not e!290060))))

(assert (=> b!494210 (= res!296923 (validKeyInArray!0 (select (arr!15364 a!3235) j!176)))))

(assert (= (and start!45060 res!296927) b!494203))

(assert (= (and b!494203 res!296929) b!494210))

(assert (= (and b!494210 res!296923) b!494205))

(assert (= (and b!494205 res!296924) b!494207))

(assert (= (and b!494207 res!296921) b!494204))

(assert (= (and b!494204 res!296925) b!494209))

(assert (= (and b!494209 res!296922) b!494206))

(assert (= (and b!494206 res!296930) b!494202))

(assert (= (and b!494202 (not res!296926)) b!494201))

(assert (= (and b!494201 (not res!296928)) b!494208))

(declare-fun m!475273 () Bool)

(assert (=> b!494205 m!475273))

(declare-fun m!475275 () Bool)

(assert (=> b!494204 m!475275))

(declare-fun m!475277 () Bool)

(assert (=> b!494202 m!475277))

(declare-fun m!475279 () Bool)

(assert (=> b!494202 m!475279))

(declare-fun m!475281 () Bool)

(assert (=> b!494202 m!475281))

(declare-fun m!475283 () Bool)

(assert (=> b!494202 m!475283))

(declare-fun m!475285 () Bool)

(assert (=> b!494202 m!475285))

(assert (=> b!494202 m!475277))

(declare-fun m!475287 () Bool)

(assert (=> b!494202 m!475287))

(assert (=> b!494202 m!475277))

(assert (=> b!494202 m!475285))

(declare-fun m!475289 () Bool)

(assert (=> b!494202 m!475289))

(declare-fun m!475291 () Bool)

(assert (=> b!494202 m!475291))

(assert (=> b!494202 m!475277))

(declare-fun m!475293 () Bool)

(assert (=> b!494202 m!475293))

(assert (=> b!494202 m!475285))

(declare-fun m!475295 () Bool)

(assert (=> b!494202 m!475295))

(declare-fun m!475297 () Bool)

(assert (=> b!494209 m!475297))

(assert (=> b!494210 m!475277))

(assert (=> b!494210 m!475277))

(declare-fun m!475299 () Bool)

(assert (=> b!494210 m!475299))

(declare-fun m!475301 () Bool)

(assert (=> b!494207 m!475301))

(declare-fun m!475303 () Bool)

(assert (=> b!494206 m!475303))

(declare-fun m!475305 () Bool)

(assert (=> start!45060 m!475305))

(declare-fun m!475307 () Bool)

(assert (=> start!45060 m!475307))

(check-sat (not b!494206) (not b!494205) (not b!494202) (not b!494209) (not b!494210) (not b!494207) (not b!494204) (not start!45060))
(check-sat)
