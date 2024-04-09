; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64346 () Bool)

(assert start!64346)

(declare-fun b!722767 () Bool)

(declare-fun e!405047 () Bool)

(assert (=> b!722767 (= e!405047 false)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7166 0))(
  ( (MissingZero!7166 (index!31031 (_ BitVec 32))) (Found!7166 (index!31032 (_ BitVec 32))) (Intermediate!7166 (undefined!7978 Bool) (index!31033 (_ BitVec 32)) (x!62056 (_ BitVec 32))) (Undefined!7166) (MissingVacant!7166 (index!31034 (_ BitVec 32))) )
))
(declare-fun lt!320441 () SeekEntryResult!7166)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!40880 0))(
  ( (array!40881 (arr!19559 (Array (_ BitVec 32) (_ BitVec 64))) (size!19980 (_ BitVec 32))) )
))
(declare-fun lt!320439 () array!40880)

(declare-fun lt!320437 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40880 (_ BitVec 32)) SeekEntryResult!7166)

(assert (=> b!722767 (= lt!320441 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320437 lt!320439 mask!3328))))

(declare-fun lt!320436 () SeekEntryResult!7166)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722767 (= lt!320436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320437 mask!3328) lt!320437 lt!320439 mask!3328))))

(declare-fun a!3186 () array!40880)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!722767 (= lt!320437 (select (store (arr!19559 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722767 (= lt!320439 (array!40881 (store (arr!19559 a!3186) i!1173 k!2102) (size!19980 a!3186)))))

(declare-fun b!722768 () Bool)

(declare-fun e!405048 () Bool)

(declare-fun e!405044 () Bool)

(assert (=> b!722768 (= e!405048 e!405044)))

(declare-fun res!484552 () Bool)

(assert (=> b!722768 (=> (not res!484552) (not e!405044))))

(declare-fun lt!320440 () SeekEntryResult!7166)

(assert (=> b!722768 (= res!484552 (or (= lt!320440 (MissingZero!7166 i!1173)) (= lt!320440 (MissingVacant!7166 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40880 (_ BitVec 32)) SeekEntryResult!7166)

(assert (=> b!722768 (= lt!320440 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!405045 () Bool)

(declare-fun b!722769 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40880 (_ BitVec 32)) SeekEntryResult!7166)

(assert (=> b!722769 (= e!405045 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19559 a!3186) j!159) a!3186 mask!3328) (Found!7166 j!159)))))

(declare-fun b!722770 () Bool)

(declare-fun lt!320438 () SeekEntryResult!7166)

(assert (=> b!722770 (= e!405045 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19559 a!3186) j!159) a!3186 mask!3328) lt!320438))))

(declare-fun b!722772 () Bool)

(declare-fun res!484562 () Bool)

(assert (=> b!722772 (=> (not res!484562) (not e!405047))))

(assert (=> b!722772 (= res!484562 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19559 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722773 () Bool)

(declare-fun res!484554 () Bool)

(assert (=> b!722773 (=> (not res!484554) (not e!405048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722773 (= res!484554 (validKeyInArray!0 k!2102))))

(declare-fun b!722774 () Bool)

(assert (=> b!722774 (= e!405044 e!405047)))

(declare-fun res!484555 () Bool)

(assert (=> b!722774 (=> (not res!484555) (not e!405047))))

(assert (=> b!722774 (= res!484555 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19559 a!3186) j!159) mask!3328) (select (arr!19559 a!3186) j!159) a!3186 mask!3328) lt!320438))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722774 (= lt!320438 (Intermediate!7166 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722775 () Bool)

(declare-fun res!484563 () Bool)

(assert (=> b!722775 (=> (not res!484563) (not e!405044))))

(declare-datatypes ((List!13614 0))(
  ( (Nil!13611) (Cons!13610 (h!14664 (_ BitVec 64)) (t!19937 List!13614)) )
))
(declare-fun arrayNoDuplicates!0 (array!40880 (_ BitVec 32) List!13614) Bool)

(assert (=> b!722775 (= res!484563 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13611))))

(declare-fun res!484558 () Bool)

(assert (=> start!64346 (=> (not res!484558) (not e!405048))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64346 (= res!484558 (validMask!0 mask!3328))))

(assert (=> start!64346 e!405048))

(assert (=> start!64346 true))

(declare-fun array_inv!15333 (array!40880) Bool)

(assert (=> start!64346 (array_inv!15333 a!3186)))

(declare-fun b!722771 () Bool)

(declare-fun res!484560 () Bool)

(assert (=> b!722771 (=> (not res!484560) (not e!405047))))

(assert (=> b!722771 (= res!484560 e!405045)))

(declare-fun c!79479 () Bool)

(assert (=> b!722771 (= c!79479 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722776 () Bool)

(declare-fun res!484557 () Bool)

(assert (=> b!722776 (=> (not res!484557) (not e!405048))))

(assert (=> b!722776 (= res!484557 (validKeyInArray!0 (select (arr!19559 a!3186) j!159)))))

(declare-fun b!722777 () Bool)

(declare-fun res!484561 () Bool)

(assert (=> b!722777 (=> (not res!484561) (not e!405044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40880 (_ BitVec 32)) Bool)

(assert (=> b!722777 (= res!484561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722778 () Bool)

(declare-fun res!484559 () Bool)

(assert (=> b!722778 (=> (not res!484559) (not e!405044))))

(assert (=> b!722778 (= res!484559 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19980 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19980 a!3186))))))

(declare-fun b!722779 () Bool)

(declare-fun res!484556 () Bool)

(assert (=> b!722779 (=> (not res!484556) (not e!405048))))

(assert (=> b!722779 (= res!484556 (and (= (size!19980 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19980 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19980 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722780 () Bool)

(declare-fun res!484553 () Bool)

(assert (=> b!722780 (=> (not res!484553) (not e!405048))))

(declare-fun arrayContainsKey!0 (array!40880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722780 (= res!484553 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64346 res!484558) b!722779))

(assert (= (and b!722779 res!484556) b!722776))

(assert (= (and b!722776 res!484557) b!722773))

(assert (= (and b!722773 res!484554) b!722780))

(assert (= (and b!722780 res!484553) b!722768))

(assert (= (and b!722768 res!484552) b!722777))

(assert (= (and b!722777 res!484561) b!722775))

(assert (= (and b!722775 res!484563) b!722778))

(assert (= (and b!722778 res!484559) b!722774))

(assert (= (and b!722774 res!484555) b!722772))

(assert (= (and b!722772 res!484562) b!722771))

(assert (= (and b!722771 c!79479) b!722770))

(assert (= (and b!722771 (not c!79479)) b!722769))

(assert (= (and b!722771 res!484560) b!722767))

(declare-fun m!677351 () Bool)

(assert (=> b!722770 m!677351))

(assert (=> b!722770 m!677351))

(declare-fun m!677353 () Bool)

(assert (=> b!722770 m!677353))

(declare-fun m!677355 () Bool)

(assert (=> b!722775 m!677355))

(declare-fun m!677357 () Bool)

(assert (=> start!64346 m!677357))

(declare-fun m!677359 () Bool)

(assert (=> start!64346 m!677359))

(assert (=> b!722774 m!677351))

(assert (=> b!722774 m!677351))

(declare-fun m!677361 () Bool)

(assert (=> b!722774 m!677361))

(assert (=> b!722774 m!677361))

(assert (=> b!722774 m!677351))

(declare-fun m!677363 () Bool)

(assert (=> b!722774 m!677363))

(assert (=> b!722769 m!677351))

(assert (=> b!722769 m!677351))

(declare-fun m!677365 () Bool)

(assert (=> b!722769 m!677365))

(declare-fun m!677367 () Bool)

(assert (=> b!722780 m!677367))

(assert (=> b!722776 m!677351))

(assert (=> b!722776 m!677351))

(declare-fun m!677369 () Bool)

(assert (=> b!722776 m!677369))

(declare-fun m!677371 () Bool)

(assert (=> b!722773 m!677371))

(declare-fun m!677373 () Bool)

(assert (=> b!722768 m!677373))

(declare-fun m!677375 () Bool)

(assert (=> b!722777 m!677375))

(declare-fun m!677377 () Bool)

(assert (=> b!722772 m!677377))

(declare-fun m!677379 () Bool)

(assert (=> b!722767 m!677379))

(declare-fun m!677381 () Bool)

(assert (=> b!722767 m!677381))

(declare-fun m!677383 () Bool)

(assert (=> b!722767 m!677383))

(assert (=> b!722767 m!677381))

(declare-fun m!677385 () Bool)

(assert (=> b!722767 m!677385))

(declare-fun m!677387 () Bool)

(assert (=> b!722767 m!677387))

(push 1)

