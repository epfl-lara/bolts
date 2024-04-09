; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65256 () Bool)

(assert start!65256)

(declare-fun b!739218 () Bool)

(declare-datatypes ((Unit!25250 0))(
  ( (Unit!25251) )
))
(declare-fun e!413388 () Unit!25250)

(declare-fun Unit!25252 () Unit!25250)

(assert (=> b!739218 (= e!413388 Unit!25252)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41382 0))(
  ( (array!41383 (arr!19801 (Array (_ BitVec 32) (_ BitVec 64))) (size!20222 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41382)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7408 0))(
  ( (MissingZero!7408 (index!31999 (_ BitVec 32))) (Found!7408 (index!32000 (_ BitVec 32))) (Intermediate!7408 (undefined!8220 Bool) (index!32001 (_ BitVec 32)) (x!63015 (_ BitVec 32))) (Undefined!7408) (MissingVacant!7408 (index!32002 (_ BitVec 32))) )
))
(declare-fun lt!328264 () SeekEntryResult!7408)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41382 (_ BitVec 32)) SeekEntryResult!7408)

(assert (=> b!739218 (= lt!328264 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19801 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!328268 () (_ BitVec 32))

(declare-fun lt!328258 () SeekEntryResult!7408)

(assert (=> b!739218 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328268 resIntermediateIndex!5 (select (arr!19801 a!3186) j!159) a!3186 mask!3328) lt!328258)))

(declare-fun b!739219 () Bool)

(declare-fun e!413391 () Bool)

(declare-fun e!413382 () Bool)

(assert (=> b!739219 (= e!413391 e!413382)))

(declare-fun res!497132 () Bool)

(assert (=> b!739219 (=> (not res!497132) (not e!413382))))

(declare-fun lt!328255 () SeekEntryResult!7408)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739219 (= res!497132 (or (= lt!328255 (MissingZero!7408 i!1173)) (= lt!328255 (MissingVacant!7408 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41382 (_ BitVec 32)) SeekEntryResult!7408)

(assert (=> b!739219 (= lt!328255 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!739220 () Bool)

(declare-fun e!413389 () Bool)

(declare-fun e!413385 () Bool)

(assert (=> b!739220 (= e!413389 e!413385)))

(declare-fun res!497125 () Bool)

(assert (=> b!739220 (=> (not res!497125) (not e!413385))))

(declare-fun lt!328262 () SeekEntryResult!7408)

(assert (=> b!739220 (= res!497125 (= (seekEntryOrOpen!0 (select (arr!19801 a!3186) j!159) a!3186 mask!3328) lt!328262))))

(assert (=> b!739220 (= lt!328262 (Found!7408 j!159))))

(declare-fun b!739221 () Bool)

(declare-fun e!413381 () Bool)

(declare-fun e!413383 () Bool)

(assert (=> b!739221 (= e!413381 (not e!413383))))

(declare-fun res!497133 () Bool)

(assert (=> b!739221 (=> res!497133 e!413383)))

(declare-fun lt!328257 () SeekEntryResult!7408)

(get-info :version)

(assert (=> b!739221 (= res!497133 (or (not ((_ is Intermediate!7408) lt!328257)) (bvsge x!1131 (x!63015 lt!328257))))))

(assert (=> b!739221 (= lt!328258 (Found!7408 j!159))))

(assert (=> b!739221 e!413389))

(declare-fun res!497120 () Bool)

(assert (=> b!739221 (=> (not res!497120) (not e!413389))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41382 (_ BitVec 32)) Bool)

(assert (=> b!739221 (= res!497120 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328261 () Unit!25250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25250)

(assert (=> b!739221 (= lt!328261 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739222 () Bool)

(declare-fun res!497126 () Bool)

(assert (=> b!739222 (=> (not res!497126) (not e!413391))))

(assert (=> b!739222 (= res!497126 (and (= (size!20222 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20222 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20222 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739223 () Bool)

(declare-fun e!413380 () Bool)

(assert (=> b!739223 (= e!413380 true)))

(declare-fun lt!328256 () SeekEntryResult!7408)

(declare-fun lt!328260 () array!41382)

(declare-fun lt!328263 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41382 (_ BitVec 32)) SeekEntryResult!7408)

(assert (=> b!739223 (= lt!328256 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328268 lt!328263 lt!328260 mask!3328))))

(declare-fun b!739224 () Bool)

(declare-fun res!497122 () Bool)

(assert (=> b!739224 (=> (not res!497122) (not e!413391))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739224 (= res!497122 (validKeyInArray!0 (select (arr!19801 a!3186) j!159)))))

(declare-fun b!739225 () Bool)

(declare-fun res!497127 () Bool)

(assert (=> b!739225 (=> (not res!497127) (not e!413382))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!739225 (= res!497127 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20222 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20222 a!3186))))))

(declare-fun b!739226 () Bool)

(declare-fun e!413384 () Bool)

(assert (=> b!739226 (= e!413384 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19801 a!3186) j!159) a!3186 mask!3328) (Found!7408 j!159)))))

(declare-fun b!739227 () Bool)

(declare-fun e!413386 () Bool)

(assert (=> b!739227 (= e!413386 e!413381)))

(declare-fun res!497131 () Bool)

(assert (=> b!739227 (=> (not res!497131) (not e!413381))))

(declare-fun lt!328266 () SeekEntryResult!7408)

(assert (=> b!739227 (= res!497131 (= lt!328266 lt!328257))))

(assert (=> b!739227 (= lt!328257 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328263 lt!328260 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739227 (= lt!328266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328263 mask!3328) lt!328263 lt!328260 mask!3328))))

(assert (=> b!739227 (= lt!328263 (select (store (arr!19801 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!739227 (= lt!328260 (array!41383 (store (arr!19801 a!3186) i!1173 k0!2102) (size!20222 a!3186)))))

(declare-fun b!739228 () Bool)

(declare-fun res!497129 () Bool)

(assert (=> b!739228 (=> (not res!497129) (not e!413386))))

(assert (=> b!739228 (= res!497129 e!413384)))

(declare-fun c!81430 () Bool)

(assert (=> b!739228 (= c!81430 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739229 () Bool)

(declare-fun res!497124 () Bool)

(assert (=> b!739229 (=> (not res!497124) (not e!413391))))

(assert (=> b!739229 (= res!497124 (validKeyInArray!0 k0!2102))))

(declare-fun b!739230 () Bool)

(assert (=> b!739230 (= e!413385 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19801 a!3186) j!159) a!3186 mask!3328) lt!328262))))

(declare-fun b!739231 () Bool)

(declare-fun res!497135 () Bool)

(assert (=> b!739231 (=> (not res!497135) (not e!413382))))

(declare-datatypes ((List!13856 0))(
  ( (Nil!13853) (Cons!13852 (h!14924 (_ BitVec 64)) (t!20179 List!13856)) )
))
(declare-fun arrayNoDuplicates!0 (array!41382 (_ BitVec 32) List!13856) Bool)

(assert (=> b!739231 (= res!497135 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13853))))

(declare-fun b!739232 () Bool)

(assert (=> b!739232 (= e!413382 e!413386)))

(declare-fun res!497123 () Bool)

(assert (=> b!739232 (=> (not res!497123) (not e!413386))))

(declare-fun lt!328265 () SeekEntryResult!7408)

(assert (=> b!739232 (= res!497123 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19801 a!3186) j!159) mask!3328) (select (arr!19801 a!3186) j!159) a!3186 mask!3328) lt!328265))))

(assert (=> b!739232 (= lt!328265 (Intermediate!7408 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!413390 () Bool)

(declare-fun b!739233 () Bool)

(assert (=> b!739233 (= e!413390 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328268 resIntermediateIndex!5 (select (arr!19801 a!3186) j!159) a!3186 mask!3328) lt!328258)))))

(declare-fun b!739234 () Bool)

(declare-fun res!497134 () Bool)

(assert (=> b!739234 (=> (not res!497134) (not e!413391))))

(declare-fun arrayContainsKey!0 (array!41382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739234 (= res!497134 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739235 () Bool)

(declare-fun res!497136 () Bool)

(assert (=> b!739235 (=> (not res!497136) (not e!413382))))

(assert (=> b!739235 (= res!497136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739236 () Bool)

(declare-fun res!497128 () Bool)

(assert (=> b!739236 (=> res!497128 e!413380)))

(assert (=> b!739236 (= res!497128 e!413390)))

(declare-fun c!81431 () Bool)

(declare-fun lt!328259 () Bool)

(assert (=> b!739236 (= c!81431 lt!328259)))

(declare-fun b!739237 () Bool)

(assert (=> b!739237 (= e!413384 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19801 a!3186) j!159) a!3186 mask!3328) lt!328265))))

(declare-fun b!739238 () Bool)

(declare-fun Unit!25253 () Unit!25250)

(assert (=> b!739238 (= e!413388 Unit!25253)))

(assert (=> b!739238 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328268 (select (arr!19801 a!3186) j!159) a!3186 mask!3328) lt!328265)))

(declare-fun res!497119 () Bool)

(assert (=> start!65256 (=> (not res!497119) (not e!413391))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65256 (= res!497119 (validMask!0 mask!3328))))

(assert (=> start!65256 e!413391))

(assert (=> start!65256 true))

(declare-fun array_inv!15575 (array!41382) Bool)

(assert (=> start!65256 (array_inv!15575 a!3186)))

(declare-fun b!739239 () Bool)

(assert (=> b!739239 (= e!413390 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328268 (select (arr!19801 a!3186) j!159) a!3186 mask!3328) lt!328265)))))

(declare-fun b!739240 () Bool)

(assert (=> b!739240 (= e!413383 e!413380)))

(declare-fun res!497121 () Bool)

(assert (=> b!739240 (=> res!497121 e!413380)))

(assert (=> b!739240 (= res!497121 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328268 #b00000000000000000000000000000000) (bvsge lt!328268 (size!20222 a!3186))))))

(declare-fun lt!328267 () Unit!25250)

(assert (=> b!739240 (= lt!328267 e!413388)))

(declare-fun c!81432 () Bool)

(assert (=> b!739240 (= c!81432 lt!328259)))

(assert (=> b!739240 (= lt!328259 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739240 (= lt!328268 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739241 () Bool)

(declare-fun res!497130 () Bool)

(assert (=> b!739241 (=> (not res!497130) (not e!413386))))

(assert (=> b!739241 (= res!497130 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19801 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65256 res!497119) b!739222))

(assert (= (and b!739222 res!497126) b!739224))

(assert (= (and b!739224 res!497122) b!739229))

(assert (= (and b!739229 res!497124) b!739234))

(assert (= (and b!739234 res!497134) b!739219))

(assert (= (and b!739219 res!497132) b!739235))

(assert (= (and b!739235 res!497136) b!739231))

(assert (= (and b!739231 res!497135) b!739225))

(assert (= (and b!739225 res!497127) b!739232))

(assert (= (and b!739232 res!497123) b!739241))

(assert (= (and b!739241 res!497130) b!739228))

(assert (= (and b!739228 c!81430) b!739237))

(assert (= (and b!739228 (not c!81430)) b!739226))

(assert (= (and b!739228 res!497129) b!739227))

(assert (= (and b!739227 res!497131) b!739221))

(assert (= (and b!739221 res!497120) b!739220))

(assert (= (and b!739220 res!497125) b!739230))

(assert (= (and b!739221 (not res!497133)) b!739240))

(assert (= (and b!739240 c!81432) b!739238))

(assert (= (and b!739240 (not c!81432)) b!739218))

(assert (= (and b!739240 (not res!497121)) b!739236))

(assert (= (and b!739236 c!81431) b!739239))

(assert (= (and b!739236 (not c!81431)) b!739233))

(assert (= (and b!739236 (not res!497128)) b!739223))

(declare-fun m!690721 () Bool)

(assert (=> b!739235 m!690721))

(declare-fun m!690723 () Bool)

(assert (=> b!739224 m!690723))

(assert (=> b!739224 m!690723))

(declare-fun m!690725 () Bool)

(assert (=> b!739224 m!690725))

(declare-fun m!690727 () Bool)

(assert (=> b!739234 m!690727))

(assert (=> b!739233 m!690723))

(assert (=> b!739233 m!690723))

(declare-fun m!690729 () Bool)

(assert (=> b!739233 m!690729))

(assert (=> b!739218 m!690723))

(assert (=> b!739218 m!690723))

(declare-fun m!690731 () Bool)

(assert (=> b!739218 m!690731))

(assert (=> b!739218 m!690723))

(assert (=> b!739218 m!690729))

(declare-fun m!690733 () Bool)

(assert (=> b!739231 m!690733))

(assert (=> b!739230 m!690723))

(assert (=> b!739230 m!690723))

(declare-fun m!690735 () Bool)

(assert (=> b!739230 m!690735))

(assert (=> b!739239 m!690723))

(assert (=> b!739239 m!690723))

(declare-fun m!690737 () Bool)

(assert (=> b!739239 m!690737))

(declare-fun m!690739 () Bool)

(assert (=> b!739219 m!690739))

(declare-fun m!690741 () Bool)

(assert (=> b!739223 m!690741))

(declare-fun m!690743 () Bool)

(assert (=> b!739240 m!690743))

(declare-fun m!690745 () Bool)

(assert (=> start!65256 m!690745))

(declare-fun m!690747 () Bool)

(assert (=> start!65256 m!690747))

(assert (=> b!739232 m!690723))

(assert (=> b!739232 m!690723))

(declare-fun m!690749 () Bool)

(assert (=> b!739232 m!690749))

(assert (=> b!739232 m!690749))

(assert (=> b!739232 m!690723))

(declare-fun m!690751 () Bool)

(assert (=> b!739232 m!690751))

(assert (=> b!739238 m!690723))

(assert (=> b!739238 m!690723))

(assert (=> b!739238 m!690737))

(assert (=> b!739226 m!690723))

(assert (=> b!739226 m!690723))

(assert (=> b!739226 m!690731))

(assert (=> b!739237 m!690723))

(assert (=> b!739237 m!690723))

(declare-fun m!690753 () Bool)

(assert (=> b!739237 m!690753))

(declare-fun m!690755 () Bool)

(assert (=> b!739221 m!690755))

(declare-fun m!690757 () Bool)

(assert (=> b!739221 m!690757))

(declare-fun m!690759 () Bool)

(assert (=> b!739241 m!690759))

(declare-fun m!690761 () Bool)

(assert (=> b!739229 m!690761))

(assert (=> b!739220 m!690723))

(assert (=> b!739220 m!690723))

(declare-fun m!690763 () Bool)

(assert (=> b!739220 m!690763))

(declare-fun m!690765 () Bool)

(assert (=> b!739227 m!690765))

(declare-fun m!690767 () Bool)

(assert (=> b!739227 m!690767))

(declare-fun m!690769 () Bool)

(assert (=> b!739227 m!690769))

(declare-fun m!690771 () Bool)

(assert (=> b!739227 m!690771))

(assert (=> b!739227 m!690767))

(declare-fun m!690773 () Bool)

(assert (=> b!739227 m!690773))

(check-sat (not b!739238) (not b!739230) (not b!739220) (not b!739218) (not b!739219) (not start!65256) (not b!739239) (not b!739233) (not b!739231) (not b!739224) (not b!739232) (not b!739226) (not b!739235) (not b!739237) (not b!739221) (not b!739223) (not b!739240) (not b!739234) (not b!739227) (not b!739229))
(check-sat)
