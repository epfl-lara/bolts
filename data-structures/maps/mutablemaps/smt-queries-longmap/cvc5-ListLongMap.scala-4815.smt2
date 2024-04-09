; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66248 () Bool)

(assert start!66248)

(declare-fun b!762605 () Bool)

(declare-fun e!425051 () Bool)

(declare-fun e!425050 () Bool)

(assert (=> b!762605 (= e!425051 e!425050)))

(declare-fun res!515851 () Bool)

(assert (=> b!762605 (=> (not res!515851) (not e!425050))))

(declare-datatypes ((SeekEntryResult!7764 0))(
  ( (MissingZero!7764 (index!33423 (_ BitVec 32))) (Found!7764 (index!33424 (_ BitVec 32))) (Intermediate!7764 (undefined!8576 Bool) (index!33425 (_ BitVec 32)) (x!64361 (_ BitVec 32))) (Undefined!7764) (MissingVacant!7764 (index!33426 (_ BitVec 32))) )
))
(declare-fun lt!339594 () SeekEntryResult!7764)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762605 (= res!515851 (or (= lt!339594 (MissingZero!7764 i!1173)) (= lt!339594 (MissingVacant!7764 i!1173))))))

(declare-datatypes ((array!42106 0))(
  ( (array!42107 (arr!20157 (Array (_ BitVec 32) (_ BitVec 64))) (size!20578 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42106)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42106 (_ BitVec 32)) SeekEntryResult!7764)

(assert (=> b!762605 (= lt!339594 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762606 () Bool)

(declare-fun res!515856 () Bool)

(assert (=> b!762606 (=> (not res!515856) (not e!425050))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762606 (= res!515856 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20578 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20578 a!3186))))))

(declare-fun res!515852 () Bool)

(assert (=> start!66248 (=> (not res!515852) (not e!425051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66248 (= res!515852 (validMask!0 mask!3328))))

(assert (=> start!66248 e!425051))

(assert (=> start!66248 true))

(declare-fun array_inv!15931 (array!42106) Bool)

(assert (=> start!66248 (array_inv!15931 a!3186)))

(declare-fun e!425053 () Bool)

(declare-fun b!762607 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42106 (_ BitVec 32)) SeekEntryResult!7764)

(assert (=> b!762607 (= e!425053 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20157 a!3186) j!159) a!3186 mask!3328) (Found!7764 j!159))))))

(declare-fun b!762608 () Bool)

(declare-fun e!425054 () Bool)

(assert (=> b!762608 (= e!425054 false)))

(declare-fun lt!339593 () Bool)

(assert (=> b!762608 (= lt!339593 e!425053)))

(declare-fun c!83766 () Bool)

(assert (=> b!762608 (= c!83766 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!762609 () Bool)

(declare-fun res!515850 () Bool)

(assert (=> b!762609 (=> (not res!515850) (not e!425050))))

(declare-datatypes ((List!14212 0))(
  ( (Nil!14209) (Cons!14208 (h!15292 (_ BitVec 64)) (t!20535 List!14212)) )
))
(declare-fun arrayNoDuplicates!0 (array!42106 (_ BitVec 32) List!14212) Bool)

(assert (=> b!762609 (= res!515850 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14209))))

(declare-fun b!762610 () Bool)

(declare-fun res!515847 () Bool)

(assert (=> b!762610 (=> (not res!515847) (not e!425051))))

(assert (=> b!762610 (= res!515847 (and (= (size!20578 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20578 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20578 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762611 () Bool)

(declare-fun res!515848 () Bool)

(assert (=> b!762611 (=> (not res!515848) (not e!425054))))

(assert (=> b!762611 (= res!515848 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20157 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762612 () Bool)

(declare-fun res!515853 () Bool)

(assert (=> b!762612 (=> (not res!515853) (not e!425051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762612 (= res!515853 (validKeyInArray!0 k!2102))))

(declare-fun b!762613 () Bool)

(declare-fun res!515855 () Bool)

(assert (=> b!762613 (=> (not res!515855) (not e!425051))))

(declare-fun arrayContainsKey!0 (array!42106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762613 (= res!515855 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762614 () Bool)

(assert (=> b!762614 (= e!425050 e!425054)))

(declare-fun res!515854 () Bool)

(assert (=> b!762614 (=> (not res!515854) (not e!425054))))

(declare-fun lt!339595 () SeekEntryResult!7764)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42106 (_ BitVec 32)) SeekEntryResult!7764)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762614 (= res!515854 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20157 a!3186) j!159) mask!3328) (select (arr!20157 a!3186) j!159) a!3186 mask!3328) lt!339595))))

(assert (=> b!762614 (= lt!339595 (Intermediate!7764 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762615 () Bool)

(declare-fun res!515849 () Bool)

(assert (=> b!762615 (=> (not res!515849) (not e!425051))))

(assert (=> b!762615 (= res!515849 (validKeyInArray!0 (select (arr!20157 a!3186) j!159)))))

(declare-fun b!762616 () Bool)

(assert (=> b!762616 (= e!425053 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20157 a!3186) j!159) a!3186 mask!3328) lt!339595)))))

(declare-fun b!762617 () Bool)

(declare-fun res!515846 () Bool)

(assert (=> b!762617 (=> (not res!515846) (not e!425050))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42106 (_ BitVec 32)) Bool)

(assert (=> b!762617 (= res!515846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66248 res!515852) b!762610))

(assert (= (and b!762610 res!515847) b!762615))

(assert (= (and b!762615 res!515849) b!762612))

(assert (= (and b!762612 res!515853) b!762613))

(assert (= (and b!762613 res!515855) b!762605))

(assert (= (and b!762605 res!515851) b!762617))

(assert (= (and b!762617 res!515846) b!762609))

(assert (= (and b!762609 res!515850) b!762606))

(assert (= (and b!762606 res!515856) b!762614))

(assert (= (and b!762614 res!515854) b!762611))

(assert (= (and b!762611 res!515848) b!762608))

(assert (= (and b!762608 c!83766) b!762616))

(assert (= (and b!762608 (not c!83766)) b!762607))

(declare-fun m!709343 () Bool)

(assert (=> b!762613 m!709343))

(declare-fun m!709345 () Bool)

(assert (=> b!762615 m!709345))

(assert (=> b!762615 m!709345))

(declare-fun m!709347 () Bool)

(assert (=> b!762615 m!709347))

(assert (=> b!762616 m!709345))

(assert (=> b!762616 m!709345))

(declare-fun m!709349 () Bool)

(assert (=> b!762616 m!709349))

(declare-fun m!709351 () Bool)

(assert (=> b!762611 m!709351))

(declare-fun m!709353 () Bool)

(assert (=> b!762617 m!709353))

(declare-fun m!709355 () Bool)

(assert (=> b!762609 m!709355))

(declare-fun m!709357 () Bool)

(assert (=> start!66248 m!709357))

(declare-fun m!709359 () Bool)

(assert (=> start!66248 m!709359))

(declare-fun m!709361 () Bool)

(assert (=> b!762605 m!709361))

(declare-fun m!709363 () Bool)

(assert (=> b!762612 m!709363))

(assert (=> b!762614 m!709345))

(assert (=> b!762614 m!709345))

(declare-fun m!709365 () Bool)

(assert (=> b!762614 m!709365))

(assert (=> b!762614 m!709365))

(assert (=> b!762614 m!709345))

(declare-fun m!709367 () Bool)

(assert (=> b!762614 m!709367))

(assert (=> b!762607 m!709345))

(assert (=> b!762607 m!709345))

(declare-fun m!709369 () Bool)

(assert (=> b!762607 m!709369))

(push 1)

