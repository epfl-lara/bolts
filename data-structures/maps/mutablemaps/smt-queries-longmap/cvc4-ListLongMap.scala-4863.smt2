; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67040 () Bool)

(assert start!67040)

(declare-fun b!773573 () Bool)

(declare-fun res!523320 () Bool)

(declare-fun e!430628 () Bool)

(assert (=> b!773573 (=> (not res!523320) (not e!430628))))

(declare-datatypes ((array!42419 0))(
  ( (array!42420 (arr!20303 (Array (_ BitVec 32) (_ BitVec 64))) (size!20724 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42419)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!773573 (= res!523320 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20724 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20724 a!3186))))))

(declare-fun e!430631 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!773575 () Bool)

(declare-datatypes ((SeekEntryResult!7910 0))(
  ( (MissingZero!7910 (index!34007 (_ BitVec 32))) (Found!7910 (index!34008 (_ BitVec 32))) (Intermediate!7910 (undefined!8722 Bool) (index!34009 (_ BitVec 32)) (x!64970 (_ BitVec 32))) (Undefined!7910) (MissingVacant!7910 (index!34010 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42419 (_ BitVec 32)) SeekEntryResult!7910)

(assert (=> b!773575 (= e!430631 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20303 a!3186) j!159) a!3186 mask!3328) (Found!7910 j!159)))))

(declare-fun b!773576 () Bool)

(declare-datatypes ((Unit!26676 0))(
  ( (Unit!26677) )
))
(declare-fun e!430635 () Unit!26676)

(declare-fun Unit!26678 () Unit!26676)

(assert (=> b!773576 (= e!430635 Unit!26678)))

(declare-fun lt!344526 () SeekEntryResult!7910)

(assert (=> b!773576 (= lt!344526 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20303 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344530 () (_ BitVec 32))

(declare-fun lt!344524 () SeekEntryResult!7910)

(assert (=> b!773576 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344530 resIntermediateIndex!5 (select (arr!20303 a!3186) j!159) a!3186 mask!3328) lt!344524)))

(declare-fun b!773577 () Bool)

(declare-fun e!430638 () Bool)

(declare-fun e!430632 () Bool)

(assert (=> b!773577 (= e!430638 e!430632)))

(declare-fun res!523326 () Bool)

(assert (=> b!773577 (=> (not res!523326) (not e!430632))))

(declare-fun lt!344528 () SeekEntryResult!7910)

(declare-fun lt!344534 () SeekEntryResult!7910)

(assert (=> b!773577 (= res!523326 (= lt!344528 lt!344534))))

(declare-fun lt!344536 () (_ BitVec 64))

(declare-fun lt!344531 () array!42419)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42419 (_ BitVec 32)) SeekEntryResult!7910)

(assert (=> b!773577 (= lt!344534 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344536 lt!344531 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773577 (= lt!344528 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344536 mask!3328) lt!344536 lt!344531 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!773577 (= lt!344536 (select (store (arr!20303 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!773577 (= lt!344531 (array!42420 (store (arr!20303 a!3186) i!1173 k!2102) (size!20724 a!3186)))))

(declare-fun b!773578 () Bool)

(declare-fun Unit!26679 () Unit!26676)

(assert (=> b!773578 (= e!430635 Unit!26679)))

(declare-fun lt!344535 () SeekEntryResult!7910)

(assert (=> b!773578 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344530 (select (arr!20303 a!3186) j!159) a!3186 mask!3328) lt!344535)))

(declare-fun b!773579 () Bool)

(declare-fun res!523325 () Bool)

(assert (=> b!773579 (=> (not res!523325) (not e!430638))))

(assert (=> b!773579 (= res!523325 e!430631)))

(declare-fun c!85528 () Bool)

(assert (=> b!773579 (= c!85528 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!773580 () Bool)

(assert (=> b!773580 (= e!430631 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20303 a!3186) j!159) a!3186 mask!3328) lt!344535))))

(declare-fun b!773581 () Bool)

(declare-fun res!523316 () Bool)

(assert (=> b!773581 (=> (not res!523316) (not e!430628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42419 (_ BitVec 32)) Bool)

(assert (=> b!773581 (= res!523316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!344529 () SeekEntryResult!7910)

(declare-fun b!773574 () Bool)

(declare-fun e!430636 () Bool)

(assert (=> b!773574 (= e!430636 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20303 a!3186) j!159) a!3186 mask!3328) lt!344529))))

(declare-fun res!523324 () Bool)

(declare-fun e!430629 () Bool)

(assert (=> start!67040 (=> (not res!523324) (not e!430629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67040 (= res!523324 (validMask!0 mask!3328))))

(assert (=> start!67040 e!430629))

(assert (=> start!67040 true))

(declare-fun array_inv!16077 (array!42419) Bool)

(assert (=> start!67040 (array_inv!16077 a!3186)))

(declare-fun b!773582 () Bool)

(assert (=> b!773582 (= e!430629 e!430628)))

(declare-fun res!523327 () Bool)

(assert (=> b!773582 (=> (not res!523327) (not e!430628))))

(declare-fun lt!344533 () SeekEntryResult!7910)

(assert (=> b!773582 (= res!523327 (or (= lt!344533 (MissingZero!7910 i!1173)) (= lt!344533 (MissingVacant!7910 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42419 (_ BitVec 32)) SeekEntryResult!7910)

(assert (=> b!773582 (= lt!344533 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!773583 () Bool)

(declare-fun res!523317 () Bool)

(assert (=> b!773583 (=> (not res!523317) (not e!430629))))

(declare-fun arrayContainsKey!0 (array!42419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773583 (= res!523317 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!773584 () Bool)

(declare-fun res!523323 () Bool)

(assert (=> b!773584 (=> (not res!523323) (not e!430629))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773584 (= res!523323 (validKeyInArray!0 k!2102))))

(declare-fun b!773585 () Bool)

(declare-fun e!430630 () Bool)

(assert (=> b!773585 (= e!430632 (not e!430630))))

(declare-fun res!523319 () Bool)

(assert (=> b!773585 (=> res!523319 e!430630)))

(assert (=> b!773585 (= res!523319 (or (not (is-Intermediate!7910 lt!344534)) (bvsge x!1131 (x!64970 lt!344534))))))

(assert (=> b!773585 (= lt!344524 (Found!7910 j!159))))

(declare-fun e!430633 () Bool)

(assert (=> b!773585 e!430633))

(declare-fun res!523322 () Bool)

(assert (=> b!773585 (=> (not res!523322) (not e!430633))))

(assert (=> b!773585 (= res!523322 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344525 () Unit!26676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42419 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26676)

(assert (=> b!773585 (= lt!344525 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773586 () Bool)

(declare-fun res!523314 () Bool)

(assert (=> b!773586 (=> (not res!523314) (not e!430628))))

(declare-datatypes ((List!14358 0))(
  ( (Nil!14355) (Cons!14354 (h!15459 (_ BitVec 64)) (t!20681 List!14358)) )
))
(declare-fun arrayNoDuplicates!0 (array!42419 (_ BitVec 32) List!14358) Bool)

(assert (=> b!773586 (= res!523314 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14355))))

(declare-fun b!773587 () Bool)

(declare-fun res!523329 () Bool)

(assert (=> b!773587 (=> (not res!523329) (not e!430629))))

(assert (=> b!773587 (= res!523329 (and (= (size!20724 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20724 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20724 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773588 () Bool)

(declare-fun res!523330 () Bool)

(assert (=> b!773588 (=> (not res!523330) (not e!430629))))

(assert (=> b!773588 (= res!523330 (validKeyInArray!0 (select (arr!20303 a!3186) j!159)))))

(declare-fun b!773589 () Bool)

(assert (=> b!773589 (= e!430633 e!430636)))

(declare-fun res!523321 () Bool)

(assert (=> b!773589 (=> (not res!523321) (not e!430636))))

(assert (=> b!773589 (= res!523321 (= (seekEntryOrOpen!0 (select (arr!20303 a!3186) j!159) a!3186 mask!3328) lt!344529))))

(assert (=> b!773589 (= lt!344529 (Found!7910 j!159))))

(declare-fun b!773590 () Bool)

(declare-fun e!430634 () Bool)

(assert (=> b!773590 (= e!430630 e!430634)))

(declare-fun res!523328 () Bool)

(assert (=> b!773590 (=> res!523328 e!430634)))

(assert (=> b!773590 (= res!523328 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344530 #b00000000000000000000000000000000) (bvsge lt!344530 (size!20724 a!3186))))))

(declare-fun lt!344527 () Unit!26676)

(assert (=> b!773590 (= lt!344527 e!430635)))

(declare-fun c!85530 () Bool)

(declare-fun lt!344532 () Bool)

(assert (=> b!773590 (= c!85530 lt!344532)))

(assert (=> b!773590 (= lt!344532 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773590 (= lt!344530 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773591 () Bool)

(declare-fun e!430639 () Bool)

(assert (=> b!773591 (= e!430634 e!430639)))

(declare-fun c!85529 () Bool)

(assert (=> b!773591 (= c!85529 lt!344532)))

(declare-fun b!773592 () Bool)

(declare-fun res!523318 () Bool)

(assert (=> b!773592 (=> (not res!523318) (not e!430638))))

(assert (=> b!773592 (= res!523318 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20303 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773593 () Bool)

(assert (=> b!773593 (= e!430639 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344530 resIntermediateIndex!5 (select (arr!20303 a!3186) j!159) a!3186 mask!3328) lt!344524))))

(declare-fun b!773594 () Bool)

(assert (=> b!773594 (= e!430639 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344530 (select (arr!20303 a!3186) j!159) a!3186 mask!3328) lt!344535))))

(declare-fun b!773595 () Bool)

(assert (=> b!773595 (= e!430628 e!430638)))

(declare-fun res!523315 () Bool)

(assert (=> b!773595 (=> (not res!523315) (not e!430638))))

(assert (=> b!773595 (= res!523315 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20303 a!3186) j!159) mask!3328) (select (arr!20303 a!3186) j!159) a!3186 mask!3328) lt!344535))))

(assert (=> b!773595 (= lt!344535 (Intermediate!7910 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67040 res!523324) b!773587))

(assert (= (and b!773587 res!523329) b!773588))

(assert (= (and b!773588 res!523330) b!773584))

(assert (= (and b!773584 res!523323) b!773583))

(assert (= (and b!773583 res!523317) b!773582))

(assert (= (and b!773582 res!523327) b!773581))

(assert (= (and b!773581 res!523316) b!773586))

(assert (= (and b!773586 res!523314) b!773573))

(assert (= (and b!773573 res!523320) b!773595))

(assert (= (and b!773595 res!523315) b!773592))

(assert (= (and b!773592 res!523318) b!773579))

(assert (= (and b!773579 c!85528) b!773580))

(assert (= (and b!773579 (not c!85528)) b!773575))

(assert (= (and b!773579 res!523325) b!773577))

(assert (= (and b!773577 res!523326) b!773585))

(assert (= (and b!773585 res!523322) b!773589))

(assert (= (and b!773589 res!523321) b!773574))

(assert (= (and b!773585 (not res!523319)) b!773590))

(assert (= (and b!773590 c!85530) b!773578))

(assert (= (and b!773590 (not c!85530)) b!773576))

(assert (= (and b!773590 (not res!523328)) b!773591))

(assert (= (and b!773591 c!85529) b!773594))

(assert (= (and b!773591 (not c!85529)) b!773593))

(declare-fun m!718323 () Bool)

(assert (=> b!773577 m!718323))

(declare-fun m!718325 () Bool)

(assert (=> b!773577 m!718325))

(declare-fun m!718327 () Bool)

(assert (=> b!773577 m!718327))

(assert (=> b!773577 m!718323))

(declare-fun m!718329 () Bool)

(assert (=> b!773577 m!718329))

(declare-fun m!718331 () Bool)

(assert (=> b!773577 m!718331))

(declare-fun m!718333 () Bool)

(assert (=> b!773585 m!718333))

(declare-fun m!718335 () Bool)

(assert (=> b!773585 m!718335))

(declare-fun m!718337 () Bool)

(assert (=> b!773581 m!718337))

(declare-fun m!718339 () Bool)

(assert (=> b!773584 m!718339))

(declare-fun m!718341 () Bool)

(assert (=> b!773592 m!718341))

(declare-fun m!718343 () Bool)

(assert (=> start!67040 m!718343))

(declare-fun m!718345 () Bool)

(assert (=> start!67040 m!718345))

(declare-fun m!718347 () Bool)

(assert (=> b!773583 m!718347))

(declare-fun m!718349 () Bool)

(assert (=> b!773590 m!718349))

(declare-fun m!718351 () Bool)

(assert (=> b!773593 m!718351))

(assert (=> b!773593 m!718351))

(declare-fun m!718353 () Bool)

(assert (=> b!773593 m!718353))

(assert (=> b!773574 m!718351))

(assert (=> b!773574 m!718351))

(declare-fun m!718355 () Bool)

(assert (=> b!773574 m!718355))

(assert (=> b!773588 m!718351))

(assert (=> b!773588 m!718351))

(declare-fun m!718357 () Bool)

(assert (=> b!773588 m!718357))

(assert (=> b!773576 m!718351))

(assert (=> b!773576 m!718351))

(declare-fun m!718359 () Bool)

(assert (=> b!773576 m!718359))

(assert (=> b!773576 m!718351))

(assert (=> b!773576 m!718353))

(assert (=> b!773575 m!718351))

(assert (=> b!773575 m!718351))

(assert (=> b!773575 m!718359))

(assert (=> b!773595 m!718351))

(assert (=> b!773595 m!718351))

(declare-fun m!718361 () Bool)

(assert (=> b!773595 m!718361))

(assert (=> b!773595 m!718361))

(assert (=> b!773595 m!718351))

(declare-fun m!718363 () Bool)

(assert (=> b!773595 m!718363))

(assert (=> b!773580 m!718351))

(assert (=> b!773580 m!718351))

(declare-fun m!718365 () Bool)

(assert (=> b!773580 m!718365))

(assert (=> b!773589 m!718351))

(assert (=> b!773589 m!718351))

(declare-fun m!718367 () Bool)

(assert (=> b!773589 m!718367))

(assert (=> b!773578 m!718351))

(assert (=> b!773578 m!718351))

(declare-fun m!718369 () Bool)

(assert (=> b!773578 m!718369))

(assert (=> b!773594 m!718351))

(assert (=> b!773594 m!718351))

(assert (=> b!773594 m!718369))

(declare-fun m!718371 () Bool)

(assert (=> b!773582 m!718371))

(declare-fun m!718373 () Bool)

(assert (=> b!773586 m!718373))

(push 1)

(assert (not b!773575))

(assert (not start!67040))

(assert (not b!773584))

(assert (not b!773582))

