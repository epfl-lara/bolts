; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66258 () Bool)

(assert start!66258)

(declare-fun b!762800 () Bool)

(declare-fun e!425129 () Bool)

(declare-fun e!425126 () Bool)

(assert (=> b!762800 (= e!425129 e!425126)))

(declare-fun res!516020 () Bool)

(assert (=> b!762800 (=> (not res!516020) (not e!425126))))

(declare-datatypes ((array!42116 0))(
  ( (array!42117 (arr!20162 (Array (_ BitVec 32) (_ BitVec 64))) (size!20583 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42116)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7769 0))(
  ( (MissingZero!7769 (index!33443 (_ BitVec 32))) (Found!7769 (index!33444 (_ BitVec 32))) (Intermediate!7769 (undefined!8581 Bool) (index!33445 (_ BitVec 32)) (x!64374 (_ BitVec 32))) (Undefined!7769) (MissingVacant!7769 (index!33446 (_ BitVec 32))) )
))
(declare-fun lt!339638 () SeekEntryResult!7769)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42116 (_ BitVec 32)) SeekEntryResult!7769)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762800 (= res!516020 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20162 a!3186) j!159) mask!3328) (select (arr!20162 a!3186) j!159) a!3186 mask!3328) lt!339638))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762800 (= lt!339638 (Intermediate!7769 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!762801 () Bool)

(declare-fun res!516012 () Bool)

(declare-fun e!425125 () Bool)

(assert (=> b!762801 (=> (not res!516012) (not e!425125))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762801 (= res!516012 (validKeyInArray!0 (select (arr!20162 a!3186) j!159)))))

(declare-fun b!762802 () Bool)

(assert (=> b!762802 (= e!425126 false)))

(declare-fun lt!339639 () Bool)

(declare-fun e!425127 () Bool)

(assert (=> b!762802 (= lt!339639 e!425127)))

(declare-fun c!83781 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!762802 (= c!83781 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!516015 () Bool)

(assert (=> start!66258 (=> (not res!516015) (not e!425125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66258 (= res!516015 (validMask!0 mask!3328))))

(assert (=> start!66258 e!425125))

(assert (=> start!66258 true))

(declare-fun array_inv!15936 (array!42116) Bool)

(assert (=> start!66258 (array_inv!15936 a!3186)))

(declare-fun b!762803 () Bool)

(declare-fun res!516013 () Bool)

(assert (=> b!762803 (=> (not res!516013) (not e!425125))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762803 (= res!516013 (and (= (size!20583 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20583 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20583 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762804 () Bool)

(declare-fun res!516016 () Bool)

(assert (=> b!762804 (=> (not res!516016) (not e!425129))))

(declare-datatypes ((List!14217 0))(
  ( (Nil!14214) (Cons!14213 (h!15297 (_ BitVec 64)) (t!20540 List!14217)) )
))
(declare-fun arrayNoDuplicates!0 (array!42116 (_ BitVec 32) List!14217) Bool)

(assert (=> b!762804 (= res!516016 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14214))))

(declare-fun b!762805 () Bool)

(assert (=> b!762805 (= e!425125 e!425129)))

(declare-fun res!516021 () Bool)

(assert (=> b!762805 (=> (not res!516021) (not e!425129))))

(declare-fun lt!339640 () SeekEntryResult!7769)

(assert (=> b!762805 (= res!516021 (or (= lt!339640 (MissingZero!7769 i!1173)) (= lt!339640 (MissingVacant!7769 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42116 (_ BitVec 32)) SeekEntryResult!7769)

(assert (=> b!762805 (= lt!339640 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762806 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!762806 (= e!425127 (not (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20162 a!3186) j!159) a!3186 mask!3328) lt!339638)))))

(declare-fun b!762807 () Bool)

(declare-fun res!516011 () Bool)

(assert (=> b!762807 (=> (not res!516011) (not e!425129))))

(assert (=> b!762807 (= res!516011 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20583 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20583 a!3186))))))

(declare-fun b!762808 () Bool)

(declare-fun res!516017 () Bool)

(assert (=> b!762808 (=> (not res!516017) (not e!425126))))

(assert (=> b!762808 (= res!516017 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20162 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!762809 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42116 (_ BitVec 32)) SeekEntryResult!7769)

(assert (=> b!762809 (= e!425127 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20162 a!3186) j!159) a!3186 mask!3328) (Found!7769 j!159))))))

(declare-fun b!762810 () Bool)

(declare-fun res!516014 () Bool)

(assert (=> b!762810 (=> (not res!516014) (not e!425129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42116 (_ BitVec 32)) Bool)

(assert (=> b!762810 (= res!516014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762811 () Bool)

(declare-fun res!516018 () Bool)

(assert (=> b!762811 (=> (not res!516018) (not e!425125))))

(assert (=> b!762811 (= res!516018 (validKeyInArray!0 k!2102))))

(declare-fun b!762812 () Bool)

(declare-fun res!516019 () Bool)

(assert (=> b!762812 (=> (not res!516019) (not e!425125))))

(declare-fun arrayContainsKey!0 (array!42116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762812 (= res!516019 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!66258 res!516015) b!762803))

(assert (= (and b!762803 res!516013) b!762801))

(assert (= (and b!762801 res!516012) b!762811))

(assert (= (and b!762811 res!516018) b!762812))

(assert (= (and b!762812 res!516019) b!762805))

(assert (= (and b!762805 res!516021) b!762810))

(assert (= (and b!762810 res!516014) b!762804))

(assert (= (and b!762804 res!516016) b!762807))

(assert (= (and b!762807 res!516011) b!762800))

(assert (= (and b!762800 res!516020) b!762808))

(assert (= (and b!762808 res!516017) b!762802))

(assert (= (and b!762802 c!83781) b!762806))

(assert (= (and b!762802 (not c!83781)) b!762809))

(declare-fun m!709483 () Bool)

(assert (=> b!762810 m!709483))

(declare-fun m!709485 () Bool)

(assert (=> b!762811 m!709485))

(declare-fun m!709487 () Bool)

(assert (=> b!762805 m!709487))

(declare-fun m!709489 () Bool)

(assert (=> b!762801 m!709489))

(assert (=> b!762801 m!709489))

(declare-fun m!709491 () Bool)

(assert (=> b!762801 m!709491))

(declare-fun m!709493 () Bool)

(assert (=> b!762804 m!709493))

(assert (=> b!762806 m!709489))

(assert (=> b!762806 m!709489))

(declare-fun m!709495 () Bool)

(assert (=> b!762806 m!709495))

(declare-fun m!709497 () Bool)

(assert (=> b!762812 m!709497))

(assert (=> b!762809 m!709489))

(assert (=> b!762809 m!709489))

(declare-fun m!709499 () Bool)

(assert (=> b!762809 m!709499))

(declare-fun m!709501 () Bool)

(assert (=> start!66258 m!709501))

(declare-fun m!709503 () Bool)

(assert (=> start!66258 m!709503))

(declare-fun m!709505 () Bool)

(assert (=> b!762808 m!709505))

(assert (=> b!762800 m!709489))

(assert (=> b!762800 m!709489))

(declare-fun m!709507 () Bool)

(assert (=> b!762800 m!709507))

(assert (=> b!762800 m!709507))

(assert (=> b!762800 m!709489))

(declare-fun m!709509 () Bool)

(assert (=> b!762800 m!709509))

(push 1)

(assert (not b!762811))

(assert (not b!762810))

