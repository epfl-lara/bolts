; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64390 () Bool)

(assert start!64390)

(declare-fun b!723768 () Bool)

(declare-fun res!485430 () Bool)

(declare-fun e!405453 () Bool)

(assert (=> b!723768 (=> (not res!485430) (not e!405453))))

(declare-datatypes ((array!40924 0))(
  ( (array!40925 (arr!19581 (Array (_ BitVec 32) (_ BitVec 64))) (size!20002 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40924)

(declare-datatypes ((List!13636 0))(
  ( (Nil!13633) (Cons!13632 (h!14686 (_ BitVec 64)) (t!19959 List!13636)) )
))
(declare-fun arrayNoDuplicates!0 (array!40924 (_ BitVec 32) List!13636) Bool)

(assert (=> b!723768 (= res!485430 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13633))))

(declare-fun e!405455 () Bool)

(declare-datatypes ((SeekEntryResult!7188 0))(
  ( (MissingZero!7188 (index!31119 (_ BitVec 32))) (Found!7188 (index!31120 (_ BitVec 32))) (Intermediate!7188 (undefined!8000 Bool) (index!31121 (_ BitVec 32)) (x!62142 (_ BitVec 32))) (Undefined!7188) (MissingVacant!7188 (index!31122 (_ BitVec 32))) )
))
(declare-fun lt!320779 () SeekEntryResult!7188)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!723769 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40924 (_ BitVec 32)) SeekEntryResult!7188)

(assert (=> b!723769 (= e!405455 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19581 a!3186) j!159) a!3186 mask!3328) lt!320779))))

(declare-fun b!723770 () Bool)

(declare-fun res!485424 () Bool)

(declare-fun e!405452 () Bool)

(assert (=> b!723770 (=> (not res!485424) (not e!405452))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723770 (= res!485424 (validKeyInArray!0 k!2102))))

(declare-fun b!723771 () Bool)

(declare-fun e!405454 () Bool)

(assert (=> b!723771 (= e!405454 (not true))))

(declare-fun e!405450 () Bool)

(assert (=> b!723771 e!405450))

(declare-fun res!485420 () Bool)

(assert (=> b!723771 (=> (not res!485420) (not e!405450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40924 (_ BitVec 32)) Bool)

(assert (=> b!723771 (= res!485420 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24694 0))(
  ( (Unit!24695) )
))
(declare-fun lt!320780 () Unit!24694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24694)

(assert (=> b!723771 (= lt!320780 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723772 () Bool)

(assert (=> b!723772 (= e!405452 e!405453)))

(declare-fun res!485422 () Bool)

(assert (=> b!723772 (=> (not res!485422) (not e!405453))))

(declare-fun lt!320776 () SeekEntryResult!7188)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723772 (= res!485422 (or (= lt!320776 (MissingZero!7188 i!1173)) (= lt!320776 (MissingVacant!7188 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40924 (_ BitVec 32)) SeekEntryResult!7188)

(assert (=> b!723772 (= lt!320776 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!723773 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40924 (_ BitVec 32)) SeekEntryResult!7188)

(assert (=> b!723773 (= e!405455 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19581 a!3186) j!159) a!3186 mask!3328) (Found!7188 j!159)))))

(declare-fun b!723774 () Bool)

(declare-fun res!485431 () Bool)

(assert (=> b!723774 (=> (not res!485431) (not e!405453))))

(assert (=> b!723774 (= res!485431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723775 () Bool)

(assert (=> b!723775 (= e!405450 (= (seekEntryOrOpen!0 (select (arr!19581 a!3186) j!159) a!3186 mask!3328) (Found!7188 j!159)))))

(declare-fun b!723776 () Bool)

(declare-fun res!485423 () Bool)

(declare-fun e!405451 () Bool)

(assert (=> b!723776 (=> (not res!485423) (not e!405451))))

(assert (=> b!723776 (= res!485423 e!405455)))

(declare-fun c!79545 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723776 (= c!79545 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723777 () Bool)

(assert (=> b!723777 (= e!405451 e!405454)))

(declare-fun res!485425 () Bool)

(assert (=> b!723777 (=> (not res!485425) (not e!405454))))

(declare-fun lt!320778 () (_ BitVec 64))

(declare-fun lt!320777 () array!40924)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723777 (= res!485425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320778 mask!3328) lt!320778 lt!320777 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320778 lt!320777 mask!3328)))))

(assert (=> b!723777 (= lt!320778 (select (store (arr!19581 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723777 (= lt!320777 (array!40925 (store (arr!19581 a!3186) i!1173 k!2102) (size!20002 a!3186)))))

(declare-fun b!723778 () Bool)

(declare-fun res!485421 () Bool)

(assert (=> b!723778 (=> (not res!485421) (not e!405452))))

(assert (=> b!723778 (= res!485421 (validKeyInArray!0 (select (arr!19581 a!3186) j!159)))))

(declare-fun res!485427 () Bool)

(assert (=> start!64390 (=> (not res!485427) (not e!405452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64390 (= res!485427 (validMask!0 mask!3328))))

(assert (=> start!64390 e!405452))

(assert (=> start!64390 true))

(declare-fun array_inv!15355 (array!40924) Bool)

(assert (=> start!64390 (array_inv!15355 a!3186)))

(declare-fun b!723767 () Bool)

(assert (=> b!723767 (= e!405453 e!405451)))

(declare-fun res!485432 () Bool)

(assert (=> b!723767 (=> (not res!485432) (not e!405451))))

(assert (=> b!723767 (= res!485432 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19581 a!3186) j!159) mask!3328) (select (arr!19581 a!3186) j!159) a!3186 mask!3328) lt!320779))))

(assert (=> b!723767 (= lt!320779 (Intermediate!7188 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723779 () Bool)

(declare-fun res!485428 () Bool)

(assert (=> b!723779 (=> (not res!485428) (not e!405452))))

(assert (=> b!723779 (= res!485428 (and (= (size!20002 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20002 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20002 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723780 () Bool)

(declare-fun res!485433 () Bool)

(assert (=> b!723780 (=> (not res!485433) (not e!405451))))

(assert (=> b!723780 (= res!485433 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19581 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723781 () Bool)

(declare-fun res!485429 () Bool)

(assert (=> b!723781 (=> (not res!485429) (not e!405453))))

(assert (=> b!723781 (= res!485429 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20002 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20002 a!3186))))))

(declare-fun b!723782 () Bool)

(declare-fun res!485426 () Bool)

(assert (=> b!723782 (=> (not res!485426) (not e!405452))))

(declare-fun arrayContainsKey!0 (array!40924 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723782 (= res!485426 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64390 res!485427) b!723779))

(assert (= (and b!723779 res!485428) b!723778))

(assert (= (and b!723778 res!485421) b!723770))

(assert (= (and b!723770 res!485424) b!723782))

(assert (= (and b!723782 res!485426) b!723772))

(assert (= (and b!723772 res!485422) b!723774))

(assert (= (and b!723774 res!485431) b!723768))

(assert (= (and b!723768 res!485430) b!723781))

(assert (= (and b!723781 res!485429) b!723767))

(assert (= (and b!723767 res!485432) b!723780))

(assert (= (and b!723780 res!485433) b!723776))

(assert (= (and b!723776 c!79545) b!723769))

(assert (= (and b!723776 (not c!79545)) b!723773))

(assert (= (and b!723776 res!485423) b!723777))

(assert (= (and b!723777 res!485425) b!723771))

(assert (= (and b!723771 res!485420) b!723775))

(declare-fun m!678271 () Bool)

(assert (=> b!723782 m!678271))

(declare-fun m!678273 () Bool)

(assert (=> b!723771 m!678273))

(declare-fun m!678275 () Bool)

(assert (=> b!723771 m!678275))

(declare-fun m!678277 () Bool)

(assert (=> b!723772 m!678277))

(declare-fun m!678279 () Bool)

(assert (=> b!723775 m!678279))

(assert (=> b!723775 m!678279))

(declare-fun m!678281 () Bool)

(assert (=> b!723775 m!678281))

(declare-fun m!678283 () Bool)

(assert (=> b!723777 m!678283))

(declare-fun m!678285 () Bool)

(assert (=> b!723777 m!678285))

(declare-fun m!678287 () Bool)

(assert (=> b!723777 m!678287))

(declare-fun m!678289 () Bool)

(assert (=> b!723777 m!678289))

(assert (=> b!723777 m!678285))

(declare-fun m!678291 () Bool)

(assert (=> b!723777 m!678291))

(assert (=> b!723767 m!678279))

(assert (=> b!723767 m!678279))

(declare-fun m!678293 () Bool)

(assert (=> b!723767 m!678293))

(assert (=> b!723767 m!678293))

(assert (=> b!723767 m!678279))

(declare-fun m!678295 () Bool)

(assert (=> b!723767 m!678295))

(declare-fun m!678297 () Bool)

(assert (=> b!723770 m!678297))

(assert (=> b!723778 m!678279))

(assert (=> b!723778 m!678279))

(declare-fun m!678299 () Bool)

(assert (=> b!723778 m!678299))

(declare-fun m!678301 () Bool)

(assert (=> b!723768 m!678301))

(declare-fun m!678303 () Bool)

(assert (=> b!723774 m!678303))

(assert (=> b!723769 m!678279))

(assert (=> b!723769 m!678279))

(declare-fun m!678305 () Bool)

(assert (=> b!723769 m!678305))

(declare-fun m!678307 () Bool)

(assert (=> b!723780 m!678307))

(assert (=> b!723773 m!678279))

(assert (=> b!723773 m!678279))

(declare-fun m!678309 () Bool)

(assert (=> b!723773 m!678309))

(declare-fun m!678311 () Bool)

(assert (=> start!64390 m!678311))

(declare-fun m!678313 () Bool)

(assert (=> start!64390 m!678313))

(push 1)

