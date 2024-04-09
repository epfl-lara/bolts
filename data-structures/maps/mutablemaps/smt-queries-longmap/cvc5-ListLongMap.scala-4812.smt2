; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66230 () Bool)

(assert start!66230)

(declare-fun b!762282 () Bool)

(declare-fun res!515566 () Bool)

(declare-fun e!424931 () Bool)

(assert (=> b!762282 (=> (not res!515566) (not e!424931))))

(declare-datatypes ((array!42088 0))(
  ( (array!42089 (arr!20148 (Array (_ BitVec 32) (_ BitVec 64))) (size!20569 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42088)

(declare-datatypes ((List!14203 0))(
  ( (Nil!14200) (Cons!14199 (h!15283 (_ BitVec 64)) (t!20526 List!14203)) )
))
(declare-fun arrayNoDuplicates!0 (array!42088 (_ BitVec 32) List!14203) Bool)

(assert (=> b!762282 (= res!515566 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14200))))

(declare-fun b!762283 () Bool)

(declare-fun res!515570 () Bool)

(declare-fun e!424929 () Bool)

(assert (=> b!762283 (=> (not res!515570) (not e!424929))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762283 (= res!515570 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762284 () Bool)

(assert (=> b!762284 (= e!424931 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7755 0))(
  ( (MissingZero!7755 (index!33387 (_ BitVec 32))) (Found!7755 (index!33388 (_ BitVec 32))) (Intermediate!7755 (undefined!8567 Bool) (index!33389 (_ BitVec 32)) (x!64328 (_ BitVec 32))) (Undefined!7755) (MissingVacant!7755 (index!33390 (_ BitVec 32))) )
))
(declare-fun lt!339520 () SeekEntryResult!7755)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42088 (_ BitVec 32)) SeekEntryResult!7755)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762284 (= lt!339520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20148 a!3186) j!159) mask!3328) (select (arr!20148 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!762285 () Bool)

(declare-fun res!515569 () Bool)

(assert (=> b!762285 (=> (not res!515569) (not e!424929))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762285 (= res!515569 (validKeyInArray!0 (select (arr!20148 a!3186) j!159)))))

(declare-fun b!762286 () Bool)

(declare-fun res!515567 () Bool)

(assert (=> b!762286 (=> (not res!515567) (not e!424929))))

(assert (=> b!762286 (= res!515567 (validKeyInArray!0 k!2102))))

(declare-fun b!762287 () Bool)

(declare-fun res!515563 () Bool)

(assert (=> b!762287 (=> (not res!515563) (not e!424931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42088 (_ BitVec 32)) Bool)

(assert (=> b!762287 (= res!515563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762288 () Bool)

(assert (=> b!762288 (= e!424929 e!424931)))

(declare-fun res!515565 () Bool)

(assert (=> b!762288 (=> (not res!515565) (not e!424931))))

(declare-fun lt!339519 () SeekEntryResult!7755)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762288 (= res!515565 (or (= lt!339519 (MissingZero!7755 i!1173)) (= lt!339519 (MissingVacant!7755 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42088 (_ BitVec 32)) SeekEntryResult!7755)

(assert (=> b!762288 (= lt!339519 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!515564 () Bool)

(assert (=> start!66230 (=> (not res!515564) (not e!424929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66230 (= res!515564 (validMask!0 mask!3328))))

(assert (=> start!66230 e!424929))

(assert (=> start!66230 true))

(declare-fun array_inv!15922 (array!42088) Bool)

(assert (=> start!66230 (array_inv!15922 a!3186)))

(declare-fun b!762289 () Bool)

(declare-fun res!515571 () Bool)

(assert (=> b!762289 (=> (not res!515571) (not e!424931))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762289 (= res!515571 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20569 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20569 a!3186))))))

(declare-fun b!762290 () Bool)

(declare-fun res!515568 () Bool)

(assert (=> b!762290 (=> (not res!515568) (not e!424929))))

(assert (=> b!762290 (= res!515568 (and (= (size!20569 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20569 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20569 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66230 res!515564) b!762290))

(assert (= (and b!762290 res!515568) b!762285))

(assert (= (and b!762285 res!515569) b!762286))

(assert (= (and b!762286 res!515567) b!762283))

(assert (= (and b!762283 res!515570) b!762288))

(assert (= (and b!762288 res!515565) b!762287))

(assert (= (and b!762287 res!515563) b!762282))

(assert (= (and b!762282 res!515566) b!762289))

(assert (= (and b!762289 res!515571) b!762284))

(declare-fun m!709109 () Bool)

(assert (=> b!762284 m!709109))

(assert (=> b!762284 m!709109))

(declare-fun m!709111 () Bool)

(assert (=> b!762284 m!709111))

(assert (=> b!762284 m!709111))

(assert (=> b!762284 m!709109))

(declare-fun m!709113 () Bool)

(assert (=> b!762284 m!709113))

(declare-fun m!709115 () Bool)

(assert (=> b!762288 m!709115))

(declare-fun m!709117 () Bool)

(assert (=> start!66230 m!709117))

(declare-fun m!709119 () Bool)

(assert (=> start!66230 m!709119))

(declare-fun m!709121 () Bool)

(assert (=> b!762283 m!709121))

(declare-fun m!709123 () Bool)

(assert (=> b!762282 m!709123))

(assert (=> b!762285 m!709109))

(assert (=> b!762285 m!709109))

(declare-fun m!709125 () Bool)

(assert (=> b!762285 m!709125))

(declare-fun m!709127 () Bool)

(assert (=> b!762287 m!709127))

(declare-fun m!709129 () Bool)

(assert (=> b!762286 m!709129))

(push 1)

(assert (not b!762283))

(assert (not b!762287))

(assert (not start!66230))

(assert (not b!762285))

(assert (not b!762282))

(assert (not b!762284))

(assert (not b!762288))

(assert (not b!762286))

(check-sat)

(pop 1)

