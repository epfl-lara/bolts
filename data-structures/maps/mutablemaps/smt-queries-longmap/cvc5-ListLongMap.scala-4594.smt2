; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64096 () Bool)

(assert start!64096)

(declare-fun b!719577 () Bool)

(declare-fun res!482111 () Bool)

(declare-fun e!403739 () Bool)

(assert (=> b!719577 (=> (not res!482111) (not e!403739))))

(declare-datatypes ((array!40744 0))(
  ( (array!40745 (arr!19494 (Array (_ BitVec 32) (_ BitVec 64))) (size!19915 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40744)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719577 (= res!482111 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719578 () Bool)

(declare-fun res!482115 () Bool)

(declare-fun e!403740 () Bool)

(assert (=> b!719578 (=> (not res!482115) (not e!403740))))

(declare-datatypes ((List!13549 0))(
  ( (Nil!13546) (Cons!13545 (h!14593 (_ BitVec 64)) (t!19872 List!13549)) )
))
(declare-fun arrayNoDuplicates!0 (array!40744 (_ BitVec 32) List!13549) Bool)

(assert (=> b!719578 (= res!482115 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13546))))

(declare-fun b!719579 () Bool)

(assert (=> b!719579 (= e!403739 e!403740)))

(declare-fun res!482112 () Bool)

(assert (=> b!719579 (=> (not res!482112) (not e!403740))))

(declare-datatypes ((SeekEntryResult!7101 0))(
  ( (MissingZero!7101 (index!30771 (_ BitVec 32))) (Found!7101 (index!30772 (_ BitVec 32))) (Intermediate!7101 (undefined!7913 Bool) (index!30773 (_ BitVec 32)) (x!61805 (_ BitVec 32))) (Undefined!7101) (MissingVacant!7101 (index!30774 (_ BitVec 32))) )
))
(declare-fun lt!319601 () SeekEntryResult!7101)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719579 (= res!482112 (or (= lt!319601 (MissingZero!7101 i!1173)) (= lt!319601 (MissingVacant!7101 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40744 (_ BitVec 32)) SeekEntryResult!7101)

(assert (=> b!719579 (= lt!319601 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719580 () Bool)

(declare-fun res!482114 () Bool)

(assert (=> b!719580 (=> (not res!482114) (not e!403739))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719580 (= res!482114 (validKeyInArray!0 (select (arr!19494 a!3186) j!159)))))

(declare-fun b!719581 () Bool)

(assert (=> b!719581 (= e!403740 false)))

(declare-fun lt!319600 () SeekEntryResult!7101)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40744 (_ BitVec 32)) SeekEntryResult!7101)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719581 (= lt!319600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19494 a!3186) j!159) mask!3328) (select (arr!19494 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!482118 () Bool)

(assert (=> start!64096 (=> (not res!482118) (not e!403739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64096 (= res!482118 (validMask!0 mask!3328))))

(assert (=> start!64096 e!403739))

(assert (=> start!64096 true))

(declare-fun array_inv!15268 (array!40744) Bool)

(assert (=> start!64096 (array_inv!15268 a!3186)))

(declare-fun b!719582 () Bool)

(declare-fun res!482116 () Bool)

(assert (=> b!719582 (=> (not res!482116) (not e!403740))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!719582 (= res!482116 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19915 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19915 a!3186))))))

(declare-fun b!719583 () Bool)

(declare-fun res!482113 () Bool)

(assert (=> b!719583 (=> (not res!482113) (not e!403739))))

(assert (=> b!719583 (= res!482113 (and (= (size!19915 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19915 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19915 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719584 () Bool)

(declare-fun res!482117 () Bool)

(assert (=> b!719584 (=> (not res!482117) (not e!403740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40744 (_ BitVec 32)) Bool)

(assert (=> b!719584 (= res!482117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719585 () Bool)

(declare-fun res!482110 () Bool)

(assert (=> b!719585 (=> (not res!482110) (not e!403739))))

(assert (=> b!719585 (= res!482110 (validKeyInArray!0 k!2102))))

(assert (= (and start!64096 res!482118) b!719583))

(assert (= (and b!719583 res!482113) b!719580))

(assert (= (and b!719580 res!482114) b!719585))

(assert (= (and b!719585 res!482110) b!719577))

(assert (= (and b!719577 res!482111) b!719579))

(assert (= (and b!719579 res!482112) b!719584))

(assert (= (and b!719584 res!482117) b!719578))

(assert (= (and b!719578 res!482115) b!719582))

(assert (= (and b!719582 res!482116) b!719581))

(declare-fun m!675031 () Bool)

(assert (=> b!719584 m!675031))

(declare-fun m!675033 () Bool)

(assert (=> b!719581 m!675033))

(assert (=> b!719581 m!675033))

(declare-fun m!675035 () Bool)

(assert (=> b!719581 m!675035))

(assert (=> b!719581 m!675035))

(assert (=> b!719581 m!675033))

(declare-fun m!675037 () Bool)

(assert (=> b!719581 m!675037))

(declare-fun m!675039 () Bool)

(assert (=> b!719577 m!675039))

(declare-fun m!675041 () Bool)

(assert (=> start!64096 m!675041))

(declare-fun m!675043 () Bool)

(assert (=> start!64096 m!675043))

(assert (=> b!719580 m!675033))

(assert (=> b!719580 m!675033))

(declare-fun m!675045 () Bool)

(assert (=> b!719580 m!675045))

(declare-fun m!675047 () Bool)

(assert (=> b!719578 m!675047))

(declare-fun m!675049 () Bool)

(assert (=> b!719585 m!675049))

(declare-fun m!675051 () Bool)

(assert (=> b!719579 m!675051))

(push 1)

