; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45372 () Bool)

(assert start!45372)

(declare-fun b!497913 () Bool)

(declare-fun e!291858 () Bool)

(declare-fun e!291853 () Bool)

(assert (=> b!497913 (= e!291858 e!291853)))

(declare-fun res!300203 () Bool)

(assert (=> b!497913 (=> res!300203 e!291853)))

(declare-fun lt!225525 () (_ BitVec 32))

(declare-datatypes ((array!32157 0))(
  ( (array!32158 (arr!15457 (Array (_ BitVec 32) (_ BitVec 64))) (size!15821 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32157)

(declare-datatypes ((SeekEntryResult!3931 0))(
  ( (MissingZero!3931 (index!17906 (_ BitVec 32))) (Found!3931 (index!17907 (_ BitVec 32))) (Intermediate!3931 (undefined!4743 Bool) (index!17908 (_ BitVec 32)) (x!46987 (_ BitVec 32))) (Undefined!3931) (MissingVacant!3931 (index!17909 (_ BitVec 32))) )
))
(declare-fun lt!225524 () SeekEntryResult!3931)

(assert (=> b!497913 (= res!300203 (or (bvsgt #b00000000000000000000000000000000 (x!46987 lt!225524)) (bvsgt (x!46987 lt!225524) #b01111111111111111111111111111110) (bvslt lt!225525 #b00000000000000000000000000000000) (bvsge lt!225525 (size!15821 a!3235)) (bvslt (index!17908 lt!225524) #b00000000000000000000000000000000) (bvsge (index!17908 lt!225524) (size!15821 a!3235)) (not (= lt!225524 (Intermediate!3931 false (index!17908 lt!225524) (x!46987 lt!225524))))))))

(assert (=> b!497913 (and (or (= (select (arr!15457 a!3235) (index!17908 lt!225524)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15457 a!3235) (index!17908 lt!225524)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15457 a!3235) (index!17908 lt!225524)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15457 a!3235) (index!17908 lt!225524)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14814 0))(
  ( (Unit!14815) )
))
(declare-fun lt!225523 () Unit!14814)

(declare-fun e!291856 () Unit!14814)

(assert (=> b!497913 (= lt!225523 e!291856)))

(declare-fun c!59132 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!497913 (= c!59132 (= (select (arr!15457 a!3235) (index!17908 lt!225524)) (select (arr!15457 a!3235) j!176)))))

(assert (=> b!497913 (and (bvslt (x!46987 lt!225524) #b01111111111111111111111111111110) (or (= (select (arr!15457 a!3235) (index!17908 lt!225524)) (select (arr!15457 a!3235) j!176)) (= (select (arr!15457 a!3235) (index!17908 lt!225524)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15457 a!3235) (index!17908 lt!225524)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!497914 () Bool)

(declare-fun e!291854 () Bool)

(declare-fun e!291857 () Bool)

(assert (=> b!497914 (= e!291854 e!291857)))

(declare-fun res!300213 () Bool)

(assert (=> b!497914 (=> (not res!300213) (not e!291857))))

(declare-fun lt!225521 () SeekEntryResult!3931)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!497914 (= res!300213 (or (= lt!225521 (MissingZero!3931 i!1204)) (= lt!225521 (MissingVacant!3931 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32157 (_ BitVec 32)) SeekEntryResult!3931)

(assert (=> b!497914 (= lt!225521 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!497915 () Bool)

(declare-fun Unit!14816 () Unit!14814)

(assert (=> b!497915 (= e!291856 Unit!14816)))

(declare-fun lt!225522 () Unit!14814)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32157 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14814)

(assert (=> b!497915 (= lt!225522 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!225525 #b00000000000000000000000000000000 (index!17908 lt!225524) (x!46987 lt!225524) mask!3524))))

(declare-fun lt!225526 () (_ BitVec 64))

(declare-fun res!300207 () Bool)

(declare-fun lt!225529 () array!32157)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32157 (_ BitVec 32)) SeekEntryResult!3931)

(assert (=> b!497915 (= res!300207 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225525 lt!225526 lt!225529 mask!3524) (Intermediate!3931 false (index!17908 lt!225524) (x!46987 lt!225524))))))

(declare-fun e!291855 () Bool)

(assert (=> b!497915 (=> (not res!300207) (not e!291855))))

(assert (=> b!497915 e!291855))

(declare-fun b!497916 () Bool)

(declare-fun res!300206 () Bool)

(assert (=> b!497916 (=> (not res!300206) (not e!291857))))

(declare-datatypes ((List!9668 0))(
  ( (Nil!9665) (Cons!9664 (h!10538 (_ BitVec 64)) (t!15904 List!9668)) )
))
(declare-fun arrayNoDuplicates!0 (array!32157 (_ BitVec 32) List!9668) Bool)

(assert (=> b!497916 (= res!300206 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9665))))

(declare-fun b!497917 () Bool)

(declare-fun res!300212 () Bool)

(assert (=> b!497917 (=> (not res!300212) (not e!291854))))

(assert (=> b!497917 (= res!300212 (and (= (size!15821 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15821 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15821 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!497918 () Bool)

(assert (=> b!497918 (= e!291857 (not e!291858))))

(declare-fun res!300215 () Bool)

(assert (=> b!497918 (=> res!300215 e!291858)))

(declare-fun lt!225530 () (_ BitVec 32))

(assert (=> b!497918 (= res!300215 (= lt!225524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225530 lt!225526 lt!225529 mask!3524)))))

(assert (=> b!497918 (= lt!225524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225525 (select (arr!15457 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!497918 (= lt!225530 (toIndex!0 lt!225526 mask!3524))))

(assert (=> b!497918 (= lt!225526 (select (store (arr!15457 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!497918 (= lt!225525 (toIndex!0 (select (arr!15457 a!3235) j!176) mask!3524))))

(assert (=> b!497918 (= lt!225529 (array!32158 (store (arr!15457 a!3235) i!1204 k0!2280) (size!15821 a!3235)))))

(declare-fun e!291852 () Bool)

(assert (=> b!497918 e!291852))

(declare-fun res!300211 () Bool)

(assert (=> b!497918 (=> (not res!300211) (not e!291852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32157 (_ BitVec 32)) Bool)

(assert (=> b!497918 (= res!300211 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!225528 () Unit!14814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14814)

(assert (=> b!497918 (= lt!225528 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!497919 () Bool)

(declare-fun res!300208 () Bool)

(assert (=> b!497919 (=> (not res!300208) (not e!291854))))

(declare-fun arrayContainsKey!0 (array!32157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!497919 (= res!300208 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!497920 () Bool)

(assert (=> b!497920 (= e!291852 (= (seekEntryOrOpen!0 (select (arr!15457 a!3235) j!176) a!3235 mask!3524) (Found!3931 j!176)))))

(declare-fun b!497921 () Bool)

(declare-fun res!300209 () Bool)

(assert (=> b!497921 (=> (not res!300209) (not e!291854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!497921 (= res!300209 (validKeyInArray!0 k0!2280))))

(declare-fun b!497922 () Bool)

(declare-fun Unit!14817 () Unit!14814)

(assert (=> b!497922 (= e!291856 Unit!14817)))

(declare-fun res!300210 () Bool)

(assert (=> start!45372 (=> (not res!300210) (not e!291854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45372 (= res!300210 (validMask!0 mask!3524))))

(assert (=> start!45372 e!291854))

(assert (=> start!45372 true))

(declare-fun array_inv!11231 (array!32157) Bool)

(assert (=> start!45372 (array_inv!11231 a!3235)))

(declare-fun b!497923 () Bool)

(declare-fun res!300214 () Bool)

(assert (=> b!497923 (=> (not res!300214) (not e!291854))))

(assert (=> b!497923 (= res!300214 (validKeyInArray!0 (select (arr!15457 a!3235) j!176)))))

(declare-fun b!497924 () Bool)

(declare-fun res!300205 () Bool)

(assert (=> b!497924 (=> res!300205 e!291858)))

(get-info :version)

(assert (=> b!497924 (= res!300205 (or (undefined!4743 lt!225524) (not ((_ is Intermediate!3931) lt!225524))))))

(declare-fun b!497925 () Bool)

(declare-fun res!300204 () Bool)

(assert (=> b!497925 (=> (not res!300204) (not e!291857))))

(assert (=> b!497925 (= res!300204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!497926 () Bool)

(assert (=> b!497926 (= e!291855 false)))

(declare-fun b!497927 () Bool)

(assert (=> b!497927 (= e!291853 true)))

(declare-fun lt!225527 () SeekEntryResult!3931)

(assert (=> b!497927 (= lt!225527 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225525 lt!225526 lt!225529 mask!3524))))

(assert (= (and start!45372 res!300210) b!497917))

(assert (= (and b!497917 res!300212) b!497923))

(assert (= (and b!497923 res!300214) b!497921))

(assert (= (and b!497921 res!300209) b!497919))

(assert (= (and b!497919 res!300208) b!497914))

(assert (= (and b!497914 res!300213) b!497925))

(assert (= (and b!497925 res!300204) b!497916))

(assert (= (and b!497916 res!300206) b!497918))

(assert (= (and b!497918 res!300211) b!497920))

(assert (= (and b!497918 (not res!300215)) b!497924))

(assert (= (and b!497924 (not res!300205)) b!497913))

(assert (= (and b!497913 c!59132) b!497915))

(assert (= (and b!497913 (not c!59132)) b!497922))

(assert (= (and b!497915 res!300207) b!497926))

(assert (= (and b!497913 (not res!300203)) b!497927))

(declare-fun m!479239 () Bool)

(assert (=> b!497927 m!479239))

(declare-fun m!479241 () Bool)

(assert (=> b!497925 m!479241))

(declare-fun m!479243 () Bool)

(assert (=> b!497916 m!479243))

(declare-fun m!479245 () Bool)

(assert (=> b!497923 m!479245))

(assert (=> b!497923 m!479245))

(declare-fun m!479247 () Bool)

(assert (=> b!497923 m!479247))

(declare-fun m!479249 () Bool)

(assert (=> b!497918 m!479249))

(declare-fun m!479251 () Bool)

(assert (=> b!497918 m!479251))

(declare-fun m!479253 () Bool)

(assert (=> b!497918 m!479253))

(declare-fun m!479255 () Bool)

(assert (=> b!497918 m!479255))

(assert (=> b!497918 m!479245))

(declare-fun m!479257 () Bool)

(assert (=> b!497918 m!479257))

(assert (=> b!497918 m!479245))

(declare-fun m!479259 () Bool)

(assert (=> b!497918 m!479259))

(assert (=> b!497918 m!479245))

(declare-fun m!479261 () Bool)

(assert (=> b!497918 m!479261))

(declare-fun m!479263 () Bool)

(assert (=> b!497918 m!479263))

(declare-fun m!479265 () Bool)

(assert (=> b!497915 m!479265))

(assert (=> b!497915 m!479239))

(declare-fun m!479267 () Bool)

(assert (=> start!45372 m!479267))

(declare-fun m!479269 () Bool)

(assert (=> start!45372 m!479269))

(assert (=> b!497920 m!479245))

(assert (=> b!497920 m!479245))

(declare-fun m!479271 () Bool)

(assert (=> b!497920 m!479271))

(declare-fun m!479273 () Bool)

(assert (=> b!497919 m!479273))

(declare-fun m!479275 () Bool)

(assert (=> b!497913 m!479275))

(assert (=> b!497913 m!479245))

(declare-fun m!479277 () Bool)

(assert (=> b!497921 m!479277))

(declare-fun m!479279 () Bool)

(assert (=> b!497914 m!479279))

(check-sat (not b!497918) (not b!497927) (not b!497916) (not b!497920) (not b!497914) (not b!497921) (not b!497919) (not b!497925) (not start!45372) (not b!497923) (not b!497915))
(check-sat)
