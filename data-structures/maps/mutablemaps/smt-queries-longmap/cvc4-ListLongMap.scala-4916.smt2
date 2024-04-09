; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67760 () Bool)

(assert start!67760)

(declare-fun b!786209 () Bool)

(declare-fun e!437080 () Bool)

(declare-fun e!437083 () Bool)

(assert (=> b!786209 (= e!437080 e!437083)))

(declare-fun res!532456 () Bool)

(assert (=> b!786209 (=> res!532456 e!437083)))

(declare-fun lt!350648 () (_ BitVec 64))

(declare-fun lt!350643 () (_ BitVec 64))

(assert (=> b!786209 (= res!532456 (= lt!350648 lt!350643))))

(declare-datatypes ((array!42755 0))(
  ( (array!42756 (arr!20462 (Array (_ BitVec 32) (_ BitVec 64))) (size!20883 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42755)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!786209 (= lt!350648 (select (store (arr!20462 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786210 () Bool)

(declare-fun res!532451 () Bool)

(declare-fun e!437078 () Bool)

(assert (=> b!786210 (=> (not res!532451) (not e!437078))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!786210 (= res!532451 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20462 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786211 () Bool)

(declare-datatypes ((Unit!27186 0))(
  ( (Unit!27187) )
))
(declare-fun e!437085 () Unit!27186)

(declare-fun Unit!27188 () Unit!27186)

(assert (=> b!786211 (= e!437085 Unit!27188)))

(declare-fun b!786212 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8069 0))(
  ( (MissingZero!8069 (index!34643 (_ BitVec 32))) (Found!8069 (index!34644 (_ BitVec 32))) (Intermediate!8069 (undefined!8881 Bool) (index!34645 (_ BitVec 32)) (x!65610 (_ BitVec 32))) (Undefined!8069) (MissingVacant!8069 (index!34646 (_ BitVec 32))) )
))
(declare-fun lt!350642 () SeekEntryResult!8069)

(declare-fun e!437082 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42755 (_ BitVec 32)) SeekEntryResult!8069)

(assert (=> b!786212 (= e!437082 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20462 a!3186) j!159) a!3186 mask!3328) lt!350642))))

(declare-fun b!786213 () Bool)

(declare-fun res!532441 () Bool)

(declare-fun e!437077 () Bool)

(assert (=> b!786213 (=> (not res!532441) (not e!437077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42755 (_ BitVec 32)) Bool)

(assert (=> b!786213 (= res!532441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786214 () Bool)

(declare-fun e!437081 () Bool)

(assert (=> b!786214 (= e!437078 e!437081)))

(declare-fun res!532442 () Bool)

(assert (=> b!786214 (=> (not res!532442) (not e!437081))))

(declare-fun lt!350650 () SeekEntryResult!8069)

(declare-fun lt!350645 () SeekEntryResult!8069)

(assert (=> b!786214 (= res!532442 (= lt!350650 lt!350645))))

(declare-fun lt!350653 () array!42755)

(assert (=> b!786214 (= lt!350645 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350643 lt!350653 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786214 (= lt!350650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350643 mask!3328) lt!350643 lt!350653 mask!3328))))

(assert (=> b!786214 (= lt!350643 (select (store (arr!20462 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786214 (= lt!350653 (array!42756 (store (arr!20462 a!3186) i!1173 k!2102) (size!20883 a!3186)))))

(declare-fun b!786215 () Bool)

(declare-fun res!532455 () Bool)

(assert (=> b!786215 (=> (not res!532455) (not e!437077))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786215 (= res!532455 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20883 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20883 a!3186))))))

(declare-fun b!786216 () Bool)

(declare-fun e!437075 () Bool)

(declare-fun lt!350651 () SeekEntryResult!8069)

(declare-fun lt!350647 () SeekEntryResult!8069)

(assert (=> b!786216 (= e!437075 (= lt!350651 lt!350647))))

(declare-fun b!786217 () Bool)

(declare-fun res!532450 () Bool)

(assert (=> b!786217 (=> (not res!532450) (not e!437078))))

(assert (=> b!786217 (= res!532450 e!437082)))

(declare-fun c!87293 () Bool)

(assert (=> b!786217 (= c!87293 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!532440 () Bool)

(declare-fun e!437079 () Bool)

(assert (=> start!67760 (=> (not res!532440) (not e!437079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67760 (= res!532440 (validMask!0 mask!3328))))

(assert (=> start!67760 e!437079))

(assert (=> start!67760 true))

(declare-fun array_inv!16236 (array!42755) Bool)

(assert (=> start!67760 (array_inv!16236 a!3186)))

(declare-fun b!786218 () Bool)

(declare-fun e!437086 () Bool)

(assert (=> b!786218 (= e!437086 e!437080)))

(declare-fun res!532452 () Bool)

(assert (=> b!786218 (=> res!532452 e!437080)))

(declare-fun lt!350652 () SeekEntryResult!8069)

(assert (=> b!786218 (= res!532452 (not (= lt!350647 lt!350652)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42755 (_ BitVec 32)) SeekEntryResult!8069)

(assert (=> b!786218 (= lt!350647 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20462 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786219 () Bool)

(declare-fun res!532446 () Bool)

(assert (=> b!786219 (=> (not res!532446) (not e!437075))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42755 (_ BitVec 32)) SeekEntryResult!8069)

(assert (=> b!786219 (= res!532446 (= (seekEntryOrOpen!0 lt!350643 lt!350653 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350643 lt!350653 mask!3328)))))

(declare-fun b!786220 () Bool)

(assert (=> b!786220 (= e!437082 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20462 a!3186) j!159) a!3186 mask!3328) (Found!8069 j!159)))))

(declare-fun b!786221 () Bool)

(assert (=> b!786221 (= e!437077 e!437078)))

(declare-fun res!532443 () Bool)

(assert (=> b!786221 (=> (not res!532443) (not e!437078))))

(assert (=> b!786221 (= res!532443 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20462 a!3186) j!159) mask!3328) (select (arr!20462 a!3186) j!159) a!3186 mask!3328) lt!350642))))

(assert (=> b!786221 (= lt!350642 (Intermediate!8069 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786222 () Bool)

(declare-fun res!532448 () Bool)

(assert (=> b!786222 (=> (not res!532448) (not e!437079))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786222 (= res!532448 (validKeyInArray!0 (select (arr!20462 a!3186) j!159)))))

(declare-fun b!786223 () Bool)

(declare-fun res!532438 () Bool)

(assert (=> b!786223 (=> (not res!532438) (not e!437077))))

(declare-datatypes ((List!14517 0))(
  ( (Nil!14514) (Cons!14513 (h!15636 (_ BitVec 64)) (t!20840 List!14517)) )
))
(declare-fun arrayNoDuplicates!0 (array!42755 (_ BitVec 32) List!14517) Bool)

(assert (=> b!786223 (= res!532438 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14514))))

(declare-fun b!786224 () Bool)

(declare-fun Unit!27189 () Unit!27186)

(assert (=> b!786224 (= e!437085 Unit!27189)))

(assert (=> b!786224 false))

(declare-fun b!786225 () Bool)

(assert (=> b!786225 (= e!437079 e!437077)))

(declare-fun res!532444 () Bool)

(assert (=> b!786225 (=> (not res!532444) (not e!437077))))

(declare-fun lt!350644 () SeekEntryResult!8069)

(assert (=> b!786225 (= res!532444 (or (= lt!350644 (MissingZero!8069 i!1173)) (= lt!350644 (MissingVacant!8069 i!1173))))))

(assert (=> b!786225 (= lt!350644 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786226 () Bool)

(assert (=> b!786226 (= e!437081 (not e!437086))))

(declare-fun res!532445 () Bool)

(assert (=> b!786226 (=> res!532445 e!437086)))

(assert (=> b!786226 (= res!532445 (or (not (is-Intermediate!8069 lt!350645)) (bvslt x!1131 (x!65610 lt!350645)) (not (= x!1131 (x!65610 lt!350645))) (not (= index!1321 (index!34645 lt!350645)))))))

(declare-fun e!437084 () Bool)

(assert (=> b!786226 e!437084))

(declare-fun res!532454 () Bool)

(assert (=> b!786226 (=> (not res!532454) (not e!437084))))

(assert (=> b!786226 (= res!532454 (= lt!350651 lt!350652))))

(assert (=> b!786226 (= lt!350652 (Found!8069 j!159))))

(assert (=> b!786226 (= lt!350651 (seekEntryOrOpen!0 (select (arr!20462 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786226 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350646 () Unit!27186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27186)

(assert (=> b!786226 (= lt!350646 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786227 () Bool)

(assert (=> b!786227 (= e!437083 true)))

(assert (=> b!786227 e!437075))

(declare-fun res!532453 () Bool)

(assert (=> b!786227 (=> (not res!532453) (not e!437075))))

(assert (=> b!786227 (= res!532453 (= lt!350648 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350649 () Unit!27186)

(assert (=> b!786227 (= lt!350649 e!437085)))

(declare-fun c!87294 () Bool)

(assert (=> b!786227 (= c!87294 (= lt!350648 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786228 () Bool)

(assert (=> b!786228 (= e!437084 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20462 a!3186) j!159) a!3186 mask!3328) lt!350652))))

(declare-fun b!786229 () Bool)

(declare-fun res!532449 () Bool)

(assert (=> b!786229 (=> (not res!532449) (not e!437079))))

(assert (=> b!786229 (= res!532449 (and (= (size!20883 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20883 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20883 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786230 () Bool)

(declare-fun res!532439 () Bool)

(assert (=> b!786230 (=> (not res!532439) (not e!437079))))

(assert (=> b!786230 (= res!532439 (validKeyInArray!0 k!2102))))

(declare-fun b!786231 () Bool)

(declare-fun res!532447 () Bool)

(assert (=> b!786231 (=> (not res!532447) (not e!437079))))

(declare-fun arrayContainsKey!0 (array!42755 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786231 (= res!532447 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67760 res!532440) b!786229))

(assert (= (and b!786229 res!532449) b!786222))

(assert (= (and b!786222 res!532448) b!786230))

(assert (= (and b!786230 res!532439) b!786231))

(assert (= (and b!786231 res!532447) b!786225))

(assert (= (and b!786225 res!532444) b!786213))

(assert (= (and b!786213 res!532441) b!786223))

(assert (= (and b!786223 res!532438) b!786215))

(assert (= (and b!786215 res!532455) b!786221))

(assert (= (and b!786221 res!532443) b!786210))

(assert (= (and b!786210 res!532451) b!786217))

(assert (= (and b!786217 c!87293) b!786212))

(assert (= (and b!786217 (not c!87293)) b!786220))

(assert (= (and b!786217 res!532450) b!786214))

(assert (= (and b!786214 res!532442) b!786226))

(assert (= (and b!786226 res!532454) b!786228))

(assert (= (and b!786226 (not res!532445)) b!786218))

(assert (= (and b!786218 (not res!532452)) b!786209))

(assert (= (and b!786209 (not res!532456)) b!786227))

(assert (= (and b!786227 c!87294) b!786224))

(assert (= (and b!786227 (not c!87294)) b!786211))

(assert (= (and b!786227 res!532453) b!786219))

(assert (= (and b!786219 res!532446) b!786216))

(declare-fun m!728133 () Bool)

(assert (=> start!67760 m!728133))

(declare-fun m!728135 () Bool)

(assert (=> start!67760 m!728135))

(declare-fun m!728137 () Bool)

(assert (=> b!786210 m!728137))

(declare-fun m!728139 () Bool)

(assert (=> b!786226 m!728139))

(assert (=> b!786226 m!728139))

(declare-fun m!728141 () Bool)

(assert (=> b!786226 m!728141))

(declare-fun m!728143 () Bool)

(assert (=> b!786226 m!728143))

(declare-fun m!728145 () Bool)

(assert (=> b!786226 m!728145))

(declare-fun m!728147 () Bool)

(assert (=> b!786209 m!728147))

(declare-fun m!728149 () Bool)

(assert (=> b!786209 m!728149))

(assert (=> b!786212 m!728139))

(assert (=> b!786212 m!728139))

(declare-fun m!728151 () Bool)

(assert (=> b!786212 m!728151))

(declare-fun m!728153 () Bool)

(assert (=> b!786230 m!728153))

(assert (=> b!786218 m!728139))

(assert (=> b!786218 m!728139))

(declare-fun m!728155 () Bool)

(assert (=> b!786218 m!728155))

(declare-fun m!728157 () Bool)

(assert (=> b!786223 m!728157))

(declare-fun m!728159 () Bool)

(assert (=> b!786214 m!728159))

(declare-fun m!728161 () Bool)

(assert (=> b!786214 m!728161))

(declare-fun m!728163 () Bool)

(assert (=> b!786214 m!728163))

(assert (=> b!786214 m!728147))

(assert (=> b!786214 m!728159))

(declare-fun m!728165 () Bool)

(assert (=> b!786214 m!728165))

(assert (=> b!786221 m!728139))

(assert (=> b!786221 m!728139))

(declare-fun m!728167 () Bool)

(assert (=> b!786221 m!728167))

(assert (=> b!786221 m!728167))

(assert (=> b!786221 m!728139))

(declare-fun m!728169 () Bool)

(assert (=> b!786221 m!728169))

(declare-fun m!728171 () Bool)

(assert (=> b!786219 m!728171))

(declare-fun m!728173 () Bool)

(assert (=> b!786219 m!728173))

(declare-fun m!728175 () Bool)

(assert (=> b!786231 m!728175))

(declare-fun m!728177 () Bool)

(assert (=> b!786225 m!728177))

(assert (=> b!786220 m!728139))

(assert (=> b!786220 m!728139))

(assert (=> b!786220 m!728155))

(assert (=> b!786222 m!728139))

(assert (=> b!786222 m!728139))

(declare-fun m!728179 () Bool)

(assert (=> b!786222 m!728179))

(assert (=> b!786228 m!728139))

(assert (=> b!786228 m!728139))

(declare-fun m!728181 () Bool)

(assert (=> b!786228 m!728181))

(declare-fun m!728183 () Bool)

(assert (=> b!786213 m!728183))

(push 1)

