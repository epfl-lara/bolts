; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64058 () Bool)

(assert start!64058)

(declare-fun b!719045 () Bool)

(declare-fun res!481581 () Bool)

(declare-fun e!403567 () Bool)

(assert (=> b!719045 (=> (not res!481581) (not e!403567))))

(declare-datatypes ((array!40706 0))(
  ( (array!40707 (arr!19475 (Array (_ BitVec 32) (_ BitVec 64))) (size!19896 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40706)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719045 (= res!481581 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun e!403569 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!719046 () Bool)

(assert (=> b!719046 (= e!403569 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19475 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsle x!1131 resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!719047 () Bool)

(declare-fun res!481582 () Bool)

(assert (=> b!719047 (=> (not res!481582) (not e!403567))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!719047 (= res!481582 (and (= (size!19896 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19896 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19896 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!481587 () Bool)

(assert (=> start!64058 (=> (not res!481587) (not e!403567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64058 (= res!481587 (validMask!0 mask!3328))))

(assert (=> start!64058 e!403567))

(assert (=> start!64058 true))

(declare-fun array_inv!15249 (array!40706) Bool)

(assert (=> start!64058 (array_inv!15249 a!3186)))

(declare-fun b!719048 () Bool)

(declare-fun res!481585 () Bool)

(assert (=> b!719048 (=> (not res!481585) (not e!403569))))

(assert (=> b!719048 (= res!481585 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19896 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19896 a!3186))))))

(declare-fun b!719049 () Bool)

(declare-fun res!481586 () Bool)

(assert (=> b!719049 (=> (not res!481586) (not e!403569))))

(declare-datatypes ((List!13530 0))(
  ( (Nil!13527) (Cons!13526 (h!14574 (_ BitVec 64)) (t!19853 List!13530)) )
))
(declare-fun arrayNoDuplicates!0 (array!40706 (_ BitVec 32) List!13530) Bool)

(assert (=> b!719049 (= res!481586 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13527))))

(declare-fun b!719050 () Bool)

(assert (=> b!719050 (= e!403567 e!403569)))

(declare-fun res!481583 () Bool)

(assert (=> b!719050 (=> (not res!481583) (not e!403569))))

(declare-datatypes ((SeekEntryResult!7082 0))(
  ( (MissingZero!7082 (index!30695 (_ BitVec 32))) (Found!7082 (index!30696 (_ BitVec 32))) (Intermediate!7082 (undefined!7894 Bool) (index!30697 (_ BitVec 32)) (x!61730 (_ BitVec 32))) (Undefined!7082) (MissingVacant!7082 (index!30698 (_ BitVec 32))) )
))
(declare-fun lt!319505 () SeekEntryResult!7082)

(assert (=> b!719050 (= res!481583 (or (= lt!319505 (MissingZero!7082 i!1173)) (= lt!319505 (MissingVacant!7082 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40706 (_ BitVec 32)) SeekEntryResult!7082)

(assert (=> b!719050 (= lt!319505 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!719051 () Bool)

(declare-fun res!481578 () Bool)

(assert (=> b!719051 (=> (not res!481578) (not e!403569))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40706 (_ BitVec 32)) Bool)

(assert (=> b!719051 (= res!481578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719052 () Bool)

(declare-fun res!481580 () Bool)

(assert (=> b!719052 (=> (not res!481580) (not e!403567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719052 (= res!481580 (validKeyInArray!0 (select (arr!19475 a!3186) j!159)))))

(declare-fun b!719053 () Bool)

(declare-fun res!481584 () Bool)

(assert (=> b!719053 (=> (not res!481584) (not e!403567))))

(assert (=> b!719053 (= res!481584 (validKeyInArray!0 k!2102))))

(declare-fun b!719054 () Bool)

(declare-fun res!481579 () Bool)

(assert (=> b!719054 (=> (not res!481579) (not e!403569))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40706 (_ BitVec 32)) SeekEntryResult!7082)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719054 (= res!481579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19475 a!3186) j!159) mask!3328) (select (arr!19475 a!3186) j!159) a!3186 mask!3328) (Intermediate!7082 false resIntermediateIndex!5 resIntermediateX!5)))))

(assert (= (and start!64058 res!481587) b!719047))

(assert (= (and b!719047 res!481582) b!719052))

(assert (= (and b!719052 res!481580) b!719053))

(assert (= (and b!719053 res!481584) b!719045))

(assert (= (and b!719045 res!481581) b!719050))

(assert (= (and b!719050 res!481583) b!719051))

(assert (= (and b!719051 res!481578) b!719049))

(assert (= (and b!719049 res!481586) b!719048))

(assert (= (and b!719048 res!481585) b!719054))

(assert (= (and b!719054 res!481579) b!719046))

(declare-fun m!674599 () Bool)

(assert (=> b!719051 m!674599))

(declare-fun m!674601 () Bool)

(assert (=> b!719049 m!674601))

(declare-fun m!674603 () Bool)

(assert (=> b!719054 m!674603))

(assert (=> b!719054 m!674603))

(declare-fun m!674605 () Bool)

(assert (=> b!719054 m!674605))

(assert (=> b!719054 m!674605))

(assert (=> b!719054 m!674603))

(declare-fun m!674607 () Bool)

(assert (=> b!719054 m!674607))

(declare-fun m!674609 () Bool)

(assert (=> start!64058 m!674609))

(declare-fun m!674611 () Bool)

(assert (=> start!64058 m!674611))

(declare-fun m!674613 () Bool)

(assert (=> b!719045 m!674613))

(assert (=> b!719052 m!674603))

(assert (=> b!719052 m!674603))

(declare-fun m!674615 () Bool)

(assert (=> b!719052 m!674615))

(declare-fun m!674617 () Bool)

(assert (=> b!719050 m!674617))

(declare-fun m!674619 () Bool)

(assert (=> b!719046 m!674619))

(declare-fun m!674621 () Bool)

(assert (=> b!719053 m!674621))

(push 1)

(assert (not b!719054))

(assert (not b!719053))

(assert (not start!64058))

(assert (not b!719050))

(assert (not b!719052))

(assert (not b!719045))

(assert (not b!719049))

(assert (not b!719051))

(check-sat)

(pop 1)

(push 1)

(check-sat)

