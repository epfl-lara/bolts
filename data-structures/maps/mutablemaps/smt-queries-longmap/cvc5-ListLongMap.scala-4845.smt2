; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66784 () Bool)

(assert start!66784)

(declare-fun b!769265 () Bool)

(declare-fun e!428384 () Bool)

(assert (=> b!769265 (= e!428384 true)))

(declare-datatypes ((Unit!26452 0))(
  ( (Unit!26453) )
))
(declare-fun lt!342290 () Unit!26452)

(declare-fun e!428382 () Unit!26452)

(assert (=> b!769265 (= lt!342290 e!428382)))

(declare-fun c!84854 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769265 (= c!84854 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!342296 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769265 (= lt!342296 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769266 () Bool)

(declare-fun res!520355 () Bool)

(declare-fun e!428385 () Bool)

(assert (=> b!769266 (=> (not res!520355) (not e!428385))))

(declare-datatypes ((array!42301 0))(
  ( (array!42302 (arr!20247 (Array (_ BitVec 32) (_ BitVec 64))) (size!20668 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42301)

(declare-datatypes ((List!14302 0))(
  ( (Nil!14299) (Cons!14298 (h!15397 (_ BitVec 64)) (t!20625 List!14302)) )
))
(declare-fun arrayNoDuplicates!0 (array!42301 (_ BitVec 32) List!14302) Bool)

(assert (=> b!769266 (= res!520355 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14299))))

(declare-fun b!769267 () Bool)

(declare-fun res!520358 () Bool)

(declare-fun e!428386 () Bool)

(assert (=> b!769267 (=> (not res!520358) (not e!428386))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769267 (= res!520358 (validKeyInArray!0 (select (arr!20247 a!3186) j!159)))))

(declare-fun b!769268 () Bool)

(declare-fun res!520361 () Bool)

(declare-fun e!428388 () Bool)

(assert (=> b!769268 (=> (not res!520361) (not e!428388))))

(declare-fun e!428381 () Bool)

(assert (=> b!769268 (= res!520361 e!428381)))

(declare-fun c!84855 () Bool)

(assert (=> b!769268 (= c!84855 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769269 () Bool)

(assert (=> b!769269 (= e!428385 e!428388)))

(declare-fun res!520362 () Bool)

(assert (=> b!769269 (=> (not res!520362) (not e!428388))))

(declare-datatypes ((SeekEntryResult!7854 0))(
  ( (MissingZero!7854 (index!33783 (_ BitVec 32))) (Found!7854 (index!33784 (_ BitVec 32))) (Intermediate!7854 (undefined!8666 Bool) (index!33785 (_ BitVec 32)) (x!64746 (_ BitVec 32))) (Undefined!7854) (MissingVacant!7854 (index!33786 (_ BitVec 32))) )
))
(declare-fun lt!342298 () SeekEntryResult!7854)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42301 (_ BitVec 32)) SeekEntryResult!7854)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769269 (= res!520362 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20247 a!3186) j!159) mask!3328) (select (arr!20247 a!3186) j!159) a!3186 mask!3328) lt!342298))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!769269 (= lt!342298 (Intermediate!7854 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769270 () Bool)

(declare-fun res!520351 () Bool)

(assert (=> b!769270 (=> (not res!520351) (not e!428386))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769270 (= res!520351 (and (= (size!20668 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20668 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20668 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769271 () Bool)

(declare-fun Unit!26454 () Unit!26452)

(assert (=> b!769271 (= e!428382 Unit!26454)))

(declare-fun lt!342292 () SeekEntryResult!7854)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42301 (_ BitVec 32)) SeekEntryResult!7854)

(assert (=> b!769271 (= lt!342292 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20247 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!769271 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342296 resIntermediateIndex!5 (select (arr!20247 a!3186) j!159) a!3186 mask!3328) (Found!7854 j!159))))

(declare-fun b!769273 () Bool)

(declare-fun res!520360 () Bool)

(assert (=> b!769273 (=> (not res!520360) (not e!428388))))

(assert (=> b!769273 (= res!520360 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20247 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769274 () Bool)

(declare-fun e!428387 () Bool)

(declare-fun lt!342293 () SeekEntryResult!7854)

(assert (=> b!769274 (= e!428387 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20247 a!3186) j!159) a!3186 mask!3328) lt!342293))))

(declare-fun b!769275 () Bool)

(declare-fun res!520353 () Bool)

(assert (=> b!769275 (=> (not res!520353) (not e!428386))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769275 (= res!520353 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769276 () Bool)

(assert (=> b!769276 (= e!428381 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20247 a!3186) j!159) a!3186 mask!3328) (Found!7854 j!159)))))

(declare-fun b!769277 () Bool)

(declare-fun e!428389 () Bool)

(assert (=> b!769277 (= e!428389 e!428387)))

(declare-fun res!520349 () Bool)

(assert (=> b!769277 (=> (not res!520349) (not e!428387))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42301 (_ BitVec 32)) SeekEntryResult!7854)

(assert (=> b!769277 (= res!520349 (= (seekEntryOrOpen!0 (select (arr!20247 a!3186) j!159) a!3186 mask!3328) lt!342293))))

(assert (=> b!769277 (= lt!342293 (Found!7854 j!159))))

(declare-fun res!520354 () Bool)

(assert (=> start!66784 (=> (not res!520354) (not e!428386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66784 (= res!520354 (validMask!0 mask!3328))))

(assert (=> start!66784 e!428386))

(assert (=> start!66784 true))

(declare-fun array_inv!16021 (array!42301) Bool)

(assert (=> start!66784 (array_inv!16021 a!3186)))

(declare-fun b!769272 () Bool)

(declare-fun e!428380 () Bool)

(assert (=> b!769272 (= e!428388 e!428380)))

(declare-fun res!520359 () Bool)

(assert (=> b!769272 (=> (not res!520359) (not e!428380))))

(declare-fun lt!342295 () SeekEntryResult!7854)

(declare-fun lt!342297 () SeekEntryResult!7854)

(assert (=> b!769272 (= res!520359 (= lt!342295 lt!342297))))

(declare-fun lt!342291 () array!42301)

(declare-fun lt!342294 () (_ BitVec 64))

(assert (=> b!769272 (= lt!342297 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342294 lt!342291 mask!3328))))

(assert (=> b!769272 (= lt!342295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342294 mask!3328) lt!342294 lt!342291 mask!3328))))

(assert (=> b!769272 (= lt!342294 (select (store (arr!20247 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769272 (= lt!342291 (array!42302 (store (arr!20247 a!3186) i!1173 k!2102) (size!20668 a!3186)))))

(declare-fun b!769278 () Bool)

(declare-fun res!520363 () Bool)

(assert (=> b!769278 (=> (not res!520363) (not e!428385))))

(assert (=> b!769278 (= res!520363 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20668 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20668 a!3186))))))

(declare-fun b!769279 () Bool)

(assert (=> b!769279 (= e!428386 e!428385)))

(declare-fun res!520348 () Bool)

(assert (=> b!769279 (=> (not res!520348) (not e!428385))))

(declare-fun lt!342288 () SeekEntryResult!7854)

(assert (=> b!769279 (= res!520348 (or (= lt!342288 (MissingZero!7854 i!1173)) (= lt!342288 (MissingVacant!7854 i!1173))))))

(assert (=> b!769279 (= lt!342288 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!769280 () Bool)

(declare-fun Unit!26455 () Unit!26452)

(assert (=> b!769280 (= e!428382 Unit!26455)))

(assert (=> b!769280 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342296 (select (arr!20247 a!3186) j!159) a!3186 mask!3328) lt!342298)))

(declare-fun b!769281 () Bool)

(declare-fun res!520352 () Bool)

(assert (=> b!769281 (=> (not res!520352) (not e!428385))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42301 (_ BitVec 32)) Bool)

(assert (=> b!769281 (= res!520352 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769282 () Bool)

(declare-fun res!520350 () Bool)

(assert (=> b!769282 (=> (not res!520350) (not e!428386))))

(assert (=> b!769282 (= res!520350 (validKeyInArray!0 k!2102))))

(declare-fun b!769283 () Bool)

(assert (=> b!769283 (= e!428381 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20247 a!3186) j!159) a!3186 mask!3328) lt!342298))))

(declare-fun b!769284 () Bool)

(assert (=> b!769284 (= e!428380 (not e!428384))))

(declare-fun res!520356 () Bool)

(assert (=> b!769284 (=> res!520356 e!428384)))

(assert (=> b!769284 (= res!520356 (or (not (is-Intermediate!7854 lt!342297)) (bvsge x!1131 (x!64746 lt!342297))))))

(assert (=> b!769284 e!428389))

(declare-fun res!520357 () Bool)

(assert (=> b!769284 (=> (not res!520357) (not e!428389))))

(assert (=> b!769284 (= res!520357 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342289 () Unit!26452)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42301 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26452)

(assert (=> b!769284 (= lt!342289 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!66784 res!520354) b!769270))

(assert (= (and b!769270 res!520351) b!769267))

(assert (= (and b!769267 res!520358) b!769282))

(assert (= (and b!769282 res!520350) b!769275))

(assert (= (and b!769275 res!520353) b!769279))

(assert (= (and b!769279 res!520348) b!769281))

(assert (= (and b!769281 res!520352) b!769266))

(assert (= (and b!769266 res!520355) b!769278))

(assert (= (and b!769278 res!520363) b!769269))

(assert (= (and b!769269 res!520362) b!769273))

(assert (= (and b!769273 res!520360) b!769268))

(assert (= (and b!769268 c!84855) b!769283))

(assert (= (and b!769268 (not c!84855)) b!769276))

(assert (= (and b!769268 res!520361) b!769272))

(assert (= (and b!769272 res!520359) b!769284))

(assert (= (and b!769284 res!520357) b!769277))

(assert (= (and b!769277 res!520349) b!769274))

(assert (= (and b!769284 (not res!520356)) b!769265))

(assert (= (and b!769265 c!84854) b!769280))

(assert (= (and b!769265 (not c!84854)) b!769271))

(declare-fun m!714763 () Bool)

(assert (=> b!769265 m!714763))

(declare-fun m!714765 () Bool)

(assert (=> b!769275 m!714765))

(declare-fun m!714767 () Bool)

(assert (=> b!769274 m!714767))

(assert (=> b!769274 m!714767))

(declare-fun m!714769 () Bool)

(assert (=> b!769274 m!714769))

(declare-fun m!714771 () Bool)

(assert (=> b!769281 m!714771))

(assert (=> b!769277 m!714767))

(assert (=> b!769277 m!714767))

(declare-fun m!714773 () Bool)

(assert (=> b!769277 m!714773))

(assert (=> b!769271 m!714767))

(assert (=> b!769271 m!714767))

(declare-fun m!714775 () Bool)

(assert (=> b!769271 m!714775))

(assert (=> b!769271 m!714767))

(declare-fun m!714777 () Bool)

(assert (=> b!769271 m!714777))

(assert (=> b!769276 m!714767))

(assert (=> b!769276 m!714767))

(assert (=> b!769276 m!714775))

(assert (=> b!769269 m!714767))

(assert (=> b!769269 m!714767))

(declare-fun m!714779 () Bool)

(assert (=> b!769269 m!714779))

(assert (=> b!769269 m!714779))

(assert (=> b!769269 m!714767))

(declare-fun m!714781 () Bool)

(assert (=> b!769269 m!714781))

(declare-fun m!714783 () Bool)

(assert (=> start!66784 m!714783))

(declare-fun m!714785 () Bool)

(assert (=> start!66784 m!714785))

(assert (=> b!769283 m!714767))

(assert (=> b!769283 m!714767))

(declare-fun m!714787 () Bool)

(assert (=> b!769283 m!714787))

(declare-fun m!714789 () Bool)

(assert (=> b!769273 m!714789))

(declare-fun m!714791 () Bool)

(assert (=> b!769272 m!714791))

(declare-fun m!714793 () Bool)

(assert (=> b!769272 m!714793))

(declare-fun m!714795 () Bool)

(assert (=> b!769272 m!714795))

(assert (=> b!769272 m!714791))

(declare-fun m!714797 () Bool)

(assert (=> b!769272 m!714797))

(declare-fun m!714799 () Bool)

(assert (=> b!769272 m!714799))

(declare-fun m!714801 () Bool)

(assert (=> b!769279 m!714801))

(assert (=> b!769280 m!714767))

(assert (=> b!769280 m!714767))

(declare-fun m!714803 () Bool)

(assert (=> b!769280 m!714803))

(declare-fun m!714805 () Bool)

(assert (=> b!769284 m!714805))

(declare-fun m!714807 () Bool)

(assert (=> b!769284 m!714807))

(declare-fun m!714809 () Bool)

(assert (=> b!769282 m!714809))

(assert (=> b!769267 m!714767))

(assert (=> b!769267 m!714767))

(declare-fun m!714811 () Bool)

(assert (=> b!769267 m!714811))

(declare-fun m!714813 () Bool)

(assert (=> b!769266 m!714813))

(push 1)

