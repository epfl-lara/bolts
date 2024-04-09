; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67386 () Bool)

(assert start!67386)

(declare-fun res!527359 () Bool)

(declare-fun e!433509 () Bool)

(assert (=> start!67386 (=> (not res!527359) (not e!433509))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67386 (= res!527359 (validMask!0 mask!3328))))

(assert (=> start!67386 e!433509))

(assert (=> start!67386 true))

(declare-datatypes ((array!42570 0))(
  ( (array!42571 (arr!20374 (Array (_ BitVec 32) (_ BitVec 64))) (size!20795 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42570)

(declare-fun array_inv!16148 (array!42570) Bool)

(assert (=> start!67386 (array_inv!16148 a!3186)))

(declare-fun b!779216 () Bool)

(declare-fun res!527356 () Bool)

(assert (=> b!779216 (=> (not res!527356) (not e!433509))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779216 (= res!527356 (validKeyInArray!0 (select (arr!20374 a!3186) j!159)))))

(declare-fun b!779217 () Bool)

(declare-fun res!527362 () Bool)

(declare-fun e!433512 () Bool)

(assert (=> b!779217 (=> (not res!527362) (not e!433512))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!779217 (= res!527362 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20374 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!433510 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7981 0))(
  ( (MissingZero!7981 (index!34291 (_ BitVec 32))) (Found!7981 (index!34292 (_ BitVec 32))) (Intermediate!7981 (undefined!8793 Bool) (index!34293 (_ BitVec 32)) (x!65263 (_ BitVec 32))) (Undefined!7981) (MissingVacant!7981 (index!34294 (_ BitVec 32))) )
))
(declare-fun lt!347219 () SeekEntryResult!7981)

(declare-fun b!779218 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42570 (_ BitVec 32)) SeekEntryResult!7981)

(assert (=> b!779218 (= e!433510 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20374 a!3186) j!159) a!3186 mask!3328) lt!347219))))

(declare-fun b!779219 () Bool)

(declare-fun res!527358 () Bool)

(declare-fun e!433514 () Bool)

(assert (=> b!779219 (=> (not res!527358) (not e!433514))))

(declare-datatypes ((List!14429 0))(
  ( (Nil!14426) (Cons!14425 (h!15539 (_ BitVec 64)) (t!20752 List!14429)) )
))
(declare-fun arrayNoDuplicates!0 (array!42570 (_ BitVec 32) List!14429) Bool)

(assert (=> b!779219 (= res!527358 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14426))))

(declare-fun b!779220 () Bool)

(declare-fun res!527349 () Bool)

(assert (=> b!779220 (=> (not res!527349) (not e!433514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42570 (_ BitVec 32)) Bool)

(assert (=> b!779220 (= res!527349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779221 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42570 (_ BitVec 32)) SeekEntryResult!7981)

(assert (=> b!779221 (= e!433510 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20374 a!3186) j!159) a!3186 mask!3328) (Found!7981 j!159)))))

(declare-fun lt!347222 () SeekEntryResult!7981)

(declare-fun b!779222 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!433515 () Bool)

(assert (=> b!779222 (= e!433515 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20374 a!3186) j!159) a!3186 mask!3328) lt!347222))))

(declare-fun b!779223 () Bool)

(declare-fun res!527350 () Bool)

(assert (=> b!779223 (=> (not res!527350) (not e!433509))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779223 (= res!527350 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!779224 () Bool)

(declare-fun e!433511 () Bool)

(declare-fun e!433516 () Bool)

(assert (=> b!779224 (= e!433511 (not e!433516))))

(declare-fun res!527348 () Bool)

(assert (=> b!779224 (=> res!527348 e!433516)))

(declare-fun lt!347221 () SeekEntryResult!7981)

(get-info :version)

(assert (=> b!779224 (= res!527348 (or (not ((_ is Intermediate!7981) lt!347221)) (bvslt x!1131 (x!65263 lt!347221)) (not (= x!1131 (x!65263 lt!347221))) (not (= index!1321 (index!34293 lt!347221)))))))

(assert (=> b!779224 e!433515))

(declare-fun res!527353 () Bool)

(assert (=> b!779224 (=> (not res!527353) (not e!433515))))

(declare-fun lt!347220 () SeekEntryResult!7981)

(assert (=> b!779224 (= res!527353 (= lt!347220 lt!347222))))

(assert (=> b!779224 (= lt!347222 (Found!7981 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42570 (_ BitVec 32)) SeekEntryResult!7981)

(assert (=> b!779224 (= lt!347220 (seekEntryOrOpen!0 (select (arr!20374 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!779224 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26856 0))(
  ( (Unit!26857) )
))
(declare-fun lt!347215 () Unit!26856)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26856)

(assert (=> b!779224 (= lt!347215 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779225 () Bool)

(assert (=> b!779225 (= e!433509 e!433514)))

(declare-fun res!527360 () Bool)

(assert (=> b!779225 (=> (not res!527360) (not e!433514))))

(declare-fun lt!347224 () SeekEntryResult!7981)

(assert (=> b!779225 (= res!527360 (or (= lt!347224 (MissingZero!7981 i!1173)) (= lt!347224 (MissingVacant!7981 i!1173))))))

(assert (=> b!779225 (= lt!347224 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!779226 () Bool)

(declare-fun res!527354 () Bool)

(assert (=> b!779226 (=> (not res!527354) (not e!433514))))

(assert (=> b!779226 (= res!527354 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20795 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20795 a!3186))))))

(declare-fun b!779227 () Bool)

(assert (=> b!779227 (= e!433512 e!433511)))

(declare-fun res!527351 () Bool)

(assert (=> b!779227 (=> (not res!527351) (not e!433511))))

(declare-fun lt!347218 () SeekEntryResult!7981)

(assert (=> b!779227 (= res!527351 (= lt!347218 lt!347221))))

(declare-fun lt!347216 () array!42570)

(declare-fun lt!347223 () (_ BitVec 64))

(assert (=> b!779227 (= lt!347221 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347223 lt!347216 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779227 (= lt!347218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347223 mask!3328) lt!347223 lt!347216 mask!3328))))

(assert (=> b!779227 (= lt!347223 (select (store (arr!20374 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!779227 (= lt!347216 (array!42571 (store (arr!20374 a!3186) i!1173 k0!2102) (size!20795 a!3186)))))

(declare-fun b!779228 () Bool)

(declare-fun res!527355 () Bool)

(assert (=> b!779228 (=> (not res!527355) (not e!433509))))

(assert (=> b!779228 (= res!527355 (validKeyInArray!0 k0!2102))))

(declare-fun b!779229 () Bool)

(declare-fun res!527357 () Bool)

(assert (=> b!779229 (=> (not res!527357) (not e!433509))))

(assert (=> b!779229 (= res!527357 (and (= (size!20795 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20795 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20795 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!779230 () Bool)

(declare-fun res!527352 () Bool)

(assert (=> b!779230 (=> (not res!527352) (not e!433512))))

(assert (=> b!779230 (= res!527352 e!433510)))

(declare-fun c!86337 () Bool)

(assert (=> b!779230 (= c!86337 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!779231 () Bool)

(assert (=> b!779231 (= e!433514 e!433512)))

(declare-fun res!527361 () Bool)

(assert (=> b!779231 (=> (not res!527361) (not e!433512))))

(assert (=> b!779231 (= res!527361 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20374 a!3186) j!159) mask!3328) (select (arr!20374 a!3186) j!159) a!3186 mask!3328) lt!347219))))

(assert (=> b!779231 (= lt!347219 (Intermediate!7981 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun lt!347217 () SeekEntryResult!7981)

(declare-fun b!779232 () Bool)

(assert (=> b!779232 (= e!433516 (or (not (= lt!347217 lt!347222)) (= (select (store (arr!20374 a!3186) i!1173 k0!2102) index!1321) lt!347223) (not (= (select (store (arr!20374 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!347220 lt!347217)))))

(assert (=> b!779232 (= lt!347217 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20374 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!67386 res!527359) b!779229))

(assert (= (and b!779229 res!527357) b!779216))

(assert (= (and b!779216 res!527356) b!779228))

(assert (= (and b!779228 res!527355) b!779223))

(assert (= (and b!779223 res!527350) b!779225))

(assert (= (and b!779225 res!527360) b!779220))

(assert (= (and b!779220 res!527349) b!779219))

(assert (= (and b!779219 res!527358) b!779226))

(assert (= (and b!779226 res!527354) b!779231))

(assert (= (and b!779231 res!527361) b!779217))

(assert (= (and b!779217 res!527362) b!779230))

(assert (= (and b!779230 c!86337) b!779218))

(assert (= (and b!779230 (not c!86337)) b!779221))

(assert (= (and b!779230 res!527352) b!779227))

(assert (= (and b!779227 res!527351) b!779224))

(assert (= (and b!779224 res!527353) b!779222))

(assert (= (and b!779224 (not res!527348)) b!779232))

(declare-fun m!722815 () Bool)

(assert (=> b!779225 m!722815))

(declare-fun m!722817 () Bool)

(assert (=> b!779217 m!722817))

(declare-fun m!722819 () Bool)

(assert (=> b!779228 m!722819))

(declare-fun m!722821 () Bool)

(assert (=> b!779222 m!722821))

(assert (=> b!779222 m!722821))

(declare-fun m!722823 () Bool)

(assert (=> b!779222 m!722823))

(declare-fun m!722825 () Bool)

(assert (=> b!779219 m!722825))

(declare-fun m!722827 () Bool)

(assert (=> start!67386 m!722827))

(declare-fun m!722829 () Bool)

(assert (=> start!67386 m!722829))

(assert (=> b!779216 m!722821))

(assert (=> b!779216 m!722821))

(declare-fun m!722831 () Bool)

(assert (=> b!779216 m!722831))

(declare-fun m!722833 () Bool)

(assert (=> b!779232 m!722833))

(declare-fun m!722835 () Bool)

(assert (=> b!779232 m!722835))

(assert (=> b!779232 m!722821))

(assert (=> b!779232 m!722821))

(declare-fun m!722837 () Bool)

(assert (=> b!779232 m!722837))

(assert (=> b!779218 m!722821))

(assert (=> b!779218 m!722821))

(declare-fun m!722839 () Bool)

(assert (=> b!779218 m!722839))

(assert (=> b!779221 m!722821))

(assert (=> b!779221 m!722821))

(assert (=> b!779221 m!722837))

(declare-fun m!722841 () Bool)

(assert (=> b!779227 m!722841))

(declare-fun m!722843 () Bool)

(assert (=> b!779227 m!722843))

(assert (=> b!779227 m!722833))

(declare-fun m!722845 () Bool)

(assert (=> b!779227 m!722845))

(assert (=> b!779227 m!722841))

(declare-fun m!722847 () Bool)

(assert (=> b!779227 m!722847))

(declare-fun m!722849 () Bool)

(assert (=> b!779220 m!722849))

(declare-fun m!722851 () Bool)

(assert (=> b!779223 m!722851))

(assert (=> b!779231 m!722821))

(assert (=> b!779231 m!722821))

(declare-fun m!722853 () Bool)

(assert (=> b!779231 m!722853))

(assert (=> b!779231 m!722853))

(assert (=> b!779231 m!722821))

(declare-fun m!722855 () Bool)

(assert (=> b!779231 m!722855))

(assert (=> b!779224 m!722821))

(assert (=> b!779224 m!722821))

(declare-fun m!722857 () Bool)

(assert (=> b!779224 m!722857))

(declare-fun m!722859 () Bool)

(assert (=> b!779224 m!722859))

(declare-fun m!722861 () Bool)

(assert (=> b!779224 m!722861))

(check-sat (not b!779224) (not start!67386) (not b!779232) (not b!779220) (not b!779225) (not b!779222) (not b!779219) (not b!779228) (not b!779221) (not b!779231) (not b!779223) (not b!779218) (not b!779227) (not b!779216))
(check-sat)
