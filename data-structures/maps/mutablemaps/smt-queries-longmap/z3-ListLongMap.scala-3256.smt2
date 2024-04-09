; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45420 () Bool)

(assert start!45420)

(declare-fun b!498993 () Bool)

(declare-fun res!301146 () Bool)

(declare-fun e!292429 () Bool)

(assert (=> b!498993 (=> (not res!301146) (not e!292429))))

(declare-datatypes ((array!32205 0))(
  ( (array!32206 (arr!15481 (Array (_ BitVec 32) (_ BitVec 64))) (size!15845 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32205)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498993 (= res!301146 (validKeyInArray!0 (select (arr!15481 a!3235) j!176)))))

(declare-fun b!498994 () Bool)

(declare-fun res!301143 () Bool)

(assert (=> b!498994 (=> (not res!301143) (not e!292429))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!498994 (= res!301143 (validKeyInArray!0 k0!2280))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!292435 () Bool)

(declare-fun b!498995 () Bool)

(declare-datatypes ((SeekEntryResult!3955 0))(
  ( (MissingZero!3955 (index!18002 (_ BitVec 32))) (Found!3955 (index!18003 (_ BitVec 32))) (Intermediate!3955 (undefined!4767 Bool) (index!18004 (_ BitVec 32)) (x!47075 (_ BitVec 32))) (Undefined!3955) (MissingVacant!3955 (index!18005 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32205 (_ BitVec 32)) SeekEntryResult!3955)

(assert (=> b!498995 (= e!292435 (= (seekEntryOrOpen!0 (select (arr!15481 a!3235) j!176) a!3235 mask!3524) (Found!3955 j!176)))))

(declare-fun b!498996 () Bool)

(declare-fun res!301144 () Bool)

(assert (=> b!498996 (=> (not res!301144) (not e!292429))))

(declare-fun arrayContainsKey!0 (array!32205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498996 (= res!301144 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!301140 () Bool)

(assert (=> start!45420 (=> (not res!301140) (not e!292429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45420 (= res!301140 (validMask!0 mask!3524))))

(assert (=> start!45420 e!292429))

(assert (=> start!45420 true))

(declare-fun array_inv!11255 (array!32205) Bool)

(assert (=> start!45420 (array_inv!11255 a!3235)))

(declare-fun b!498997 () Bool)

(declare-fun res!301139 () Bool)

(declare-fun e!292431 () Bool)

(assert (=> b!498997 (=> (not res!301139) (not e!292431))))

(declare-datatypes ((List!9692 0))(
  ( (Nil!9689) (Cons!9688 (h!10562 (_ BitVec 64)) (t!15928 List!9692)) )
))
(declare-fun arrayNoDuplicates!0 (array!32205 (_ BitVec 32) List!9692) Bool)

(assert (=> b!498997 (= res!301139 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9689))))

(declare-fun b!498998 () Bool)

(declare-fun e!292433 () Bool)

(declare-fun e!292434 () Bool)

(assert (=> b!498998 (= e!292433 e!292434)))

(declare-fun res!301151 () Bool)

(assert (=> b!498998 (=> res!301151 e!292434)))

(declare-fun lt!226249 () (_ BitVec 32))

(declare-fun lt!226241 () SeekEntryResult!3955)

(assert (=> b!498998 (= res!301151 (or (bvsgt #b00000000000000000000000000000000 (x!47075 lt!226241)) (bvsgt (x!47075 lt!226241) #b01111111111111111111111111111110) (bvslt lt!226249 #b00000000000000000000000000000000) (bvsge lt!226249 (size!15845 a!3235)) (bvslt (index!18004 lt!226241) #b00000000000000000000000000000000) (bvsge (index!18004 lt!226241) (size!15845 a!3235)) (not (= lt!226241 (Intermediate!3955 false (index!18004 lt!226241) (x!47075 lt!226241))))))))

(assert (=> b!498998 (and (or (= (select (arr!15481 a!3235) (index!18004 lt!226241)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15481 a!3235) (index!18004 lt!226241)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15481 a!3235) (index!18004 lt!226241)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15481 a!3235) (index!18004 lt!226241)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14910 0))(
  ( (Unit!14911) )
))
(declare-fun lt!226243 () Unit!14910)

(declare-fun e!292430 () Unit!14910)

(assert (=> b!498998 (= lt!226243 e!292430)))

(declare-fun c!59204 () Bool)

(assert (=> b!498998 (= c!59204 (= (select (arr!15481 a!3235) (index!18004 lt!226241)) (select (arr!15481 a!3235) j!176)))))

(assert (=> b!498998 (and (bvslt (x!47075 lt!226241) #b01111111111111111111111111111110) (or (= (select (arr!15481 a!3235) (index!18004 lt!226241)) (select (arr!15481 a!3235) j!176)) (= (select (arr!15481 a!3235) (index!18004 lt!226241)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15481 a!3235) (index!18004 lt!226241)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498999 () Bool)

(assert (=> b!498999 (= e!292431 (not e!292433))))

(declare-fun res!301147 () Bool)

(assert (=> b!498999 (=> res!301147 e!292433)))

(declare-fun lt!226245 () (_ BitVec 64))

(declare-fun lt!226247 () (_ BitVec 32))

(declare-fun lt!226244 () array!32205)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32205 (_ BitVec 32)) SeekEntryResult!3955)

(assert (=> b!498999 (= res!301147 (= lt!226241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226247 lt!226245 lt!226244 mask!3524)))))

(assert (=> b!498999 (= lt!226241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226249 (select (arr!15481 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498999 (= lt!226247 (toIndex!0 lt!226245 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498999 (= lt!226245 (select (store (arr!15481 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!498999 (= lt!226249 (toIndex!0 (select (arr!15481 a!3235) j!176) mask!3524))))

(assert (=> b!498999 (= lt!226244 (array!32206 (store (arr!15481 a!3235) i!1204 k0!2280) (size!15845 a!3235)))))

(assert (=> b!498999 e!292435))

(declare-fun res!301148 () Bool)

(assert (=> b!498999 (=> (not res!301148) (not e!292435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32205 (_ BitVec 32)) Bool)

(assert (=> b!498999 (= res!301148 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226248 () Unit!14910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32205 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14910)

(assert (=> b!498999 (= lt!226248 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499000 () Bool)

(declare-fun e!292432 () Bool)

(assert (=> b!499000 (= e!292432 false)))

(declare-fun b!499001 () Bool)

(declare-fun res!301145 () Bool)

(assert (=> b!499001 (=> (not res!301145) (not e!292429))))

(assert (=> b!499001 (= res!301145 (and (= (size!15845 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15845 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15845 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499002 () Bool)

(declare-fun res!301141 () Bool)

(assert (=> b!499002 (=> (not res!301141) (not e!292431))))

(assert (=> b!499002 (= res!301141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499003 () Bool)

(assert (=> b!499003 (= e!292434 true)))

(declare-fun lt!226242 () SeekEntryResult!3955)

(assert (=> b!499003 (= lt!226242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226249 lt!226245 lt!226244 mask!3524))))

(declare-fun b!499004 () Bool)

(assert (=> b!499004 (= e!292429 e!292431)))

(declare-fun res!301149 () Bool)

(assert (=> b!499004 (=> (not res!301149) (not e!292431))))

(declare-fun lt!226246 () SeekEntryResult!3955)

(assert (=> b!499004 (= res!301149 (or (= lt!226246 (MissingZero!3955 i!1204)) (= lt!226246 (MissingVacant!3955 i!1204))))))

(assert (=> b!499004 (= lt!226246 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!499005 () Bool)

(declare-fun Unit!14912 () Unit!14910)

(assert (=> b!499005 (= e!292430 Unit!14912)))

(declare-fun b!499006 () Bool)

(declare-fun res!301142 () Bool)

(assert (=> b!499006 (=> res!301142 e!292433)))

(get-info :version)

(assert (=> b!499006 (= res!301142 (or (undefined!4767 lt!226241) (not ((_ is Intermediate!3955) lt!226241))))))

(declare-fun b!499007 () Bool)

(declare-fun Unit!14913 () Unit!14910)

(assert (=> b!499007 (= e!292430 Unit!14913)))

(declare-fun lt!226250 () Unit!14910)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32205 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14910)

(assert (=> b!499007 (= lt!226250 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226249 #b00000000000000000000000000000000 (index!18004 lt!226241) (x!47075 lt!226241) mask!3524))))

(declare-fun res!301150 () Bool)

(assert (=> b!499007 (= res!301150 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226249 lt!226245 lt!226244 mask!3524) (Intermediate!3955 false (index!18004 lt!226241) (x!47075 lt!226241))))))

(assert (=> b!499007 (=> (not res!301150) (not e!292432))))

(assert (=> b!499007 e!292432))

(assert (= (and start!45420 res!301140) b!499001))

(assert (= (and b!499001 res!301145) b!498993))

(assert (= (and b!498993 res!301146) b!498994))

(assert (= (and b!498994 res!301143) b!498996))

(assert (= (and b!498996 res!301144) b!499004))

(assert (= (and b!499004 res!301149) b!499002))

(assert (= (and b!499002 res!301141) b!498997))

(assert (= (and b!498997 res!301139) b!498999))

(assert (= (and b!498999 res!301148) b!498995))

(assert (= (and b!498999 (not res!301147)) b!499006))

(assert (= (and b!499006 (not res!301142)) b!498998))

(assert (= (and b!498998 c!59204) b!499007))

(assert (= (and b!498998 (not c!59204)) b!499005))

(assert (= (and b!499007 res!301150) b!499000))

(assert (= (and b!498998 (not res!301151)) b!499003))

(declare-fun m!480247 () Bool)

(assert (=> b!499003 m!480247))

(declare-fun m!480249 () Bool)

(assert (=> b!498998 m!480249))

(declare-fun m!480251 () Bool)

(assert (=> b!498998 m!480251))

(assert (=> b!498993 m!480251))

(assert (=> b!498993 m!480251))

(declare-fun m!480253 () Bool)

(assert (=> b!498993 m!480253))

(assert (=> b!498995 m!480251))

(assert (=> b!498995 m!480251))

(declare-fun m!480255 () Bool)

(assert (=> b!498995 m!480255))

(declare-fun m!480257 () Bool)

(assert (=> b!499004 m!480257))

(declare-fun m!480259 () Bool)

(assert (=> b!499002 m!480259))

(declare-fun m!480261 () Bool)

(assert (=> b!498997 m!480261))

(declare-fun m!480263 () Bool)

(assert (=> start!45420 m!480263))

(declare-fun m!480265 () Bool)

(assert (=> start!45420 m!480265))

(declare-fun m!480267 () Bool)

(assert (=> b!498999 m!480267))

(declare-fun m!480269 () Bool)

(assert (=> b!498999 m!480269))

(assert (=> b!498999 m!480251))

(declare-fun m!480271 () Bool)

(assert (=> b!498999 m!480271))

(assert (=> b!498999 m!480251))

(declare-fun m!480273 () Bool)

(assert (=> b!498999 m!480273))

(assert (=> b!498999 m!480251))

(declare-fun m!480275 () Bool)

(assert (=> b!498999 m!480275))

(declare-fun m!480277 () Bool)

(assert (=> b!498999 m!480277))

(declare-fun m!480279 () Bool)

(assert (=> b!498999 m!480279))

(declare-fun m!480281 () Bool)

(assert (=> b!498999 m!480281))

(declare-fun m!480283 () Bool)

(assert (=> b!498994 m!480283))

(declare-fun m!480285 () Bool)

(assert (=> b!499007 m!480285))

(assert (=> b!499007 m!480247))

(declare-fun m!480287 () Bool)

(assert (=> b!498996 m!480287))

(check-sat (not start!45420) (not b!499004) (not b!499007) (not b!498995) (not b!498999) (not b!499003) (not b!498996) (not b!498993) (not b!498994) (not b!499002) (not b!498997))
(check-sat)
