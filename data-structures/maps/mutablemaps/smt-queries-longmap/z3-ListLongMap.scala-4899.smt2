; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67590 () Bool)

(assert start!67590)

(declare-fun b!782221 () Bool)

(declare-fun e!434984 () Bool)

(declare-fun e!434981 () Bool)

(assert (=> b!782221 (= e!434984 e!434981)))

(declare-fun res!529410 () Bool)

(assert (=> b!782221 (=> (not res!529410) (not e!434981))))

(declare-datatypes ((SeekEntryResult!8017 0))(
  ( (MissingZero!8017 (index!34435 (_ BitVec 32))) (Found!8017 (index!34436 (_ BitVec 32))) (Intermediate!8017 (undefined!8829 Bool) (index!34437 (_ BitVec 32)) (x!65413 (_ BitVec 32))) (Undefined!8017) (MissingVacant!8017 (index!34438 (_ BitVec 32))) )
))
(declare-fun lt!348631 () SeekEntryResult!8017)

(declare-fun lt!348628 () SeekEntryResult!8017)

(assert (=> b!782221 (= res!529410 (= lt!348631 lt!348628))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42648 0))(
  ( (array!42649 (arr!20410 (Array (_ BitVec 32) (_ BitVec 64))) (size!20831 (_ BitVec 32))) )
))
(declare-fun lt!348629 () array!42648)

(declare-fun lt!348626 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42648 (_ BitVec 32)) SeekEntryResult!8017)

(assert (=> b!782221 (= lt!348628 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!348626 lt!348629 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!782221 (= lt!348631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!348626 mask!3328) lt!348626 lt!348629 mask!3328))))

(declare-fun a!3186 () array!42648)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!782221 (= lt!348626 (select (store (arr!20410 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!782221 (= lt!348629 (array!42649 (store (arr!20410 a!3186) i!1173 k0!2102) (size!20831 a!3186)))))

(declare-fun b!782222 () Bool)

(declare-fun res!529408 () Bool)

(declare-fun e!434987 () Bool)

(assert (=> b!782222 (=> res!529408 e!434987)))

(declare-fun lt!348625 () SeekEntryResult!8017)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42648 (_ BitVec 32)) SeekEntryResult!8017)

(assert (=> b!782222 (= res!529408 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20410 a!3186) j!159) a!3186 mask!3328) lt!348625)))))

(declare-fun b!782223 () Bool)

(declare-fun res!529416 () Bool)

(declare-fun e!434985 () Bool)

(assert (=> b!782223 (=> (not res!529416) (not e!434985))))

(declare-datatypes ((List!14465 0))(
  ( (Nil!14462) (Cons!14461 (h!15581 (_ BitVec 64)) (t!20788 List!14465)) )
))
(declare-fun arrayNoDuplicates!0 (array!42648 (_ BitVec 32) List!14465) Bool)

(assert (=> b!782223 (= res!529416 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14462))))

(declare-fun b!782224 () Bool)

(assert (=> b!782224 (= e!434985 e!434984)))

(declare-fun res!529401 () Bool)

(assert (=> b!782224 (=> (not res!529401) (not e!434984))))

(declare-fun lt!348627 () SeekEntryResult!8017)

(assert (=> b!782224 (= res!529401 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20410 a!3186) j!159) mask!3328) (select (arr!20410 a!3186) j!159) a!3186 mask!3328) lt!348627))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!782224 (= lt!348627 (Intermediate!8017 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!782225 () Bool)

(declare-datatypes ((Unit!26978 0))(
  ( (Unit!26979) )
))
(declare-fun e!434988 () Unit!26978)

(declare-fun Unit!26980 () Unit!26978)

(assert (=> b!782225 (= e!434988 Unit!26980)))

(declare-fun b!782226 () Bool)

(declare-fun res!529406 () Bool)

(declare-fun e!434986 () Bool)

(assert (=> b!782226 (=> (not res!529406) (not e!434986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!782226 (= res!529406 (validKeyInArray!0 (select (arr!20410 a!3186) j!159)))))

(declare-fun b!782227 () Bool)

(declare-fun res!529409 () Bool)

(assert (=> b!782227 (=> (not res!529409) (not e!434986))))

(assert (=> b!782227 (= res!529409 (and (= (size!20831 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20831 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20831 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!782228 () Bool)

(declare-fun res!529417 () Bool)

(assert (=> b!782228 (=> (not res!529417) (not e!434986))))

(declare-fun arrayContainsKey!0 (array!42648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!782228 (= res!529417 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!782229 () Bool)

(declare-fun e!434982 () Bool)

(assert (=> b!782229 (= e!434982 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20410 a!3186) j!159) a!3186 mask!3328) (Found!8017 j!159)))))

(declare-fun b!782230 () Bool)

(declare-fun res!529412 () Bool)

(assert (=> b!782230 (=> (not res!529412) (not e!434985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42648 (_ BitVec 32)) Bool)

(assert (=> b!782230 (= res!529412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!782231 () Bool)

(assert (=> b!782231 (= e!434986 e!434985)))

(declare-fun res!529402 () Bool)

(assert (=> b!782231 (=> (not res!529402) (not e!434985))))

(declare-fun lt!348633 () SeekEntryResult!8017)

(assert (=> b!782231 (= res!529402 (or (= lt!348633 (MissingZero!8017 i!1173)) (= lt!348633 (MissingVacant!8017 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42648 (_ BitVec 32)) SeekEntryResult!8017)

(assert (=> b!782231 (= lt!348633 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!782232 () Bool)

(assert (=> b!782232 (= e!434981 (not e!434987))))

(declare-fun res!529405 () Bool)

(assert (=> b!782232 (=> res!529405 e!434987)))

(get-info :version)

(assert (=> b!782232 (= res!529405 (or (not ((_ is Intermediate!8017) lt!348628)) (bvslt x!1131 (x!65413 lt!348628)) (not (= x!1131 (x!65413 lt!348628))) (not (= index!1321 (index!34437 lt!348628)))))))

(declare-fun e!434983 () Bool)

(assert (=> b!782232 e!434983))

(declare-fun res!529413 () Bool)

(assert (=> b!782232 (=> (not res!529413) (not e!434983))))

(declare-fun lt!348634 () SeekEntryResult!8017)

(assert (=> b!782232 (= res!529413 (= lt!348634 lt!348625))))

(assert (=> b!782232 (= lt!348625 (Found!8017 j!159))))

(assert (=> b!782232 (= lt!348634 (seekEntryOrOpen!0 (select (arr!20410 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!782232 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!348630 () Unit!26978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26978)

(assert (=> b!782232 (= lt!348630 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!782233 () Bool)

(declare-fun res!529415 () Bool)

(assert (=> b!782233 (=> (not res!529415) (not e!434984))))

(assert (=> b!782233 (= res!529415 e!434982)))

(declare-fun c!86816 () Bool)

(assert (=> b!782233 (= c!86816 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!782234 () Bool)

(declare-fun res!529403 () Bool)

(assert (=> b!782234 (=> (not res!529403) (not e!434984))))

(assert (=> b!782234 (= res!529403 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20410 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!529404 () Bool)

(assert (=> start!67590 (=> (not res!529404) (not e!434986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67590 (= res!529404 (validMask!0 mask!3328))))

(assert (=> start!67590 e!434986))

(assert (=> start!67590 true))

(declare-fun array_inv!16184 (array!42648) Bool)

(assert (=> start!67590 (array_inv!16184 a!3186)))

(declare-fun b!782235 () Bool)

(declare-fun Unit!26981 () Unit!26978)

(assert (=> b!782235 (= e!434988 Unit!26981)))

(assert (=> b!782235 false))

(declare-fun b!782236 () Bool)

(assert (=> b!782236 (= e!434983 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20410 a!3186) j!159) a!3186 mask!3328) lt!348625))))

(declare-fun b!782237 () Bool)

(assert (=> b!782237 (= e!434987 true)))

(assert (=> b!782237 (= (select (store (arr!20410 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!348632 () Unit!26978)

(assert (=> b!782237 (= lt!348632 e!434988)))

(declare-fun c!86817 () Bool)

(assert (=> b!782237 (= c!86817 (= (select (store (arr!20410 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!782238 () Bool)

(declare-fun res!529414 () Bool)

(assert (=> b!782238 (=> (not res!529414) (not e!434986))))

(assert (=> b!782238 (= res!529414 (validKeyInArray!0 k0!2102))))

(declare-fun b!782239 () Bool)

(declare-fun res!529411 () Bool)

(assert (=> b!782239 (=> (not res!529411) (not e!434985))))

(assert (=> b!782239 (= res!529411 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20831 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20831 a!3186))))))

(declare-fun b!782240 () Bool)

(declare-fun res!529407 () Bool)

(assert (=> b!782240 (=> res!529407 e!434987)))

(assert (=> b!782240 (= res!529407 (= (select (store (arr!20410 a!3186) i!1173 k0!2102) index!1321) lt!348626))))

(declare-fun b!782241 () Bool)

(assert (=> b!782241 (= e!434982 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20410 a!3186) j!159) a!3186 mask!3328) lt!348627))))

(assert (= (and start!67590 res!529404) b!782227))

(assert (= (and b!782227 res!529409) b!782226))

(assert (= (and b!782226 res!529406) b!782238))

(assert (= (and b!782238 res!529414) b!782228))

(assert (= (and b!782228 res!529417) b!782231))

(assert (= (and b!782231 res!529402) b!782230))

(assert (= (and b!782230 res!529412) b!782223))

(assert (= (and b!782223 res!529416) b!782239))

(assert (= (and b!782239 res!529411) b!782224))

(assert (= (and b!782224 res!529401) b!782234))

(assert (= (and b!782234 res!529403) b!782233))

(assert (= (and b!782233 c!86816) b!782241))

(assert (= (and b!782233 (not c!86816)) b!782229))

(assert (= (and b!782233 res!529415) b!782221))

(assert (= (and b!782221 res!529410) b!782232))

(assert (= (and b!782232 res!529413) b!782236))

(assert (= (and b!782232 (not res!529405)) b!782222))

(assert (= (and b!782222 (not res!529408)) b!782240))

(assert (= (and b!782240 (not res!529407)) b!782237))

(assert (= (and b!782237 c!86817) b!782235))

(assert (= (and b!782237 (not c!86817)) b!782225))

(declare-fun m!725107 () Bool)

(assert (=> b!782224 m!725107))

(assert (=> b!782224 m!725107))

(declare-fun m!725109 () Bool)

(assert (=> b!782224 m!725109))

(assert (=> b!782224 m!725109))

(assert (=> b!782224 m!725107))

(declare-fun m!725111 () Bool)

(assert (=> b!782224 m!725111))

(assert (=> b!782236 m!725107))

(assert (=> b!782236 m!725107))

(declare-fun m!725113 () Bool)

(assert (=> b!782236 m!725113))

(assert (=> b!782226 m!725107))

(assert (=> b!782226 m!725107))

(declare-fun m!725115 () Bool)

(assert (=> b!782226 m!725115))

(declare-fun m!725117 () Bool)

(assert (=> b!782234 m!725117))

(assert (=> b!782232 m!725107))

(assert (=> b!782232 m!725107))

(declare-fun m!725119 () Bool)

(assert (=> b!782232 m!725119))

(declare-fun m!725121 () Bool)

(assert (=> b!782232 m!725121))

(declare-fun m!725123 () Bool)

(assert (=> b!782232 m!725123))

(assert (=> b!782222 m!725107))

(assert (=> b!782222 m!725107))

(declare-fun m!725125 () Bool)

(assert (=> b!782222 m!725125))

(declare-fun m!725127 () Bool)

(assert (=> b!782221 m!725127))

(declare-fun m!725129 () Bool)

(assert (=> b!782221 m!725129))

(declare-fun m!725131 () Bool)

(assert (=> b!782221 m!725131))

(declare-fun m!725133 () Bool)

(assert (=> b!782221 m!725133))

(declare-fun m!725135 () Bool)

(assert (=> b!782221 m!725135))

(assert (=> b!782221 m!725129))

(declare-fun m!725137 () Bool)

(assert (=> b!782223 m!725137))

(assert (=> b!782229 m!725107))

(assert (=> b!782229 m!725107))

(assert (=> b!782229 m!725125))

(assert (=> b!782240 m!725127))

(declare-fun m!725139 () Bool)

(assert (=> b!782240 m!725139))

(declare-fun m!725141 () Bool)

(assert (=> start!67590 m!725141))

(declare-fun m!725143 () Bool)

(assert (=> start!67590 m!725143))

(declare-fun m!725145 () Bool)

(assert (=> b!782238 m!725145))

(declare-fun m!725147 () Bool)

(assert (=> b!782230 m!725147))

(assert (=> b!782241 m!725107))

(assert (=> b!782241 m!725107))

(declare-fun m!725149 () Bool)

(assert (=> b!782241 m!725149))

(declare-fun m!725151 () Bool)

(assert (=> b!782228 m!725151))

(declare-fun m!725153 () Bool)

(assert (=> b!782231 m!725153))

(assert (=> b!782237 m!725127))

(assert (=> b!782237 m!725139))

(check-sat (not b!782232) (not b!782228) (not b!782226) (not b!782236) (not b!782222) (not b!782223) (not b!782221) (not b!782230) (not b!782241) (not b!782238) (not b!782229) (not b!782231) (not b!782224) (not start!67590))
(check-sat)
