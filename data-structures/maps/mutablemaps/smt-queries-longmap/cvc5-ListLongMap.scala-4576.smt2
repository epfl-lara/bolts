; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63898 () Bool)

(assert start!63898)

(declare-fun b!717793 () Bool)

(declare-fun e!403036 () Bool)

(declare-fun e!403038 () Bool)

(assert (=> b!717793 (= e!403036 e!403038)))

(declare-fun res!480505 () Bool)

(assert (=> b!717793 (=> (not res!480505) (not e!403038))))

(declare-datatypes ((SeekEntryResult!7047 0))(
  ( (MissingZero!7047 (index!30555 (_ BitVec 32))) (Found!7047 (index!30556 (_ BitVec 32))) (Intermediate!7047 (undefined!7859 Bool) (index!30557 (_ BitVec 32)) (x!61604 (_ BitVec 32))) (Undefined!7047) (MissingVacant!7047 (index!30558 (_ BitVec 32))) )
))
(declare-fun lt!319202 () SeekEntryResult!7047)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717793 (= res!480505 (or (= lt!319202 (MissingZero!7047 i!1173)) (= lt!319202 (MissingVacant!7047 i!1173))))))

(declare-datatypes ((array!40630 0))(
  ( (array!40631 (arr!19440 (Array (_ BitVec 32) (_ BitVec 64))) (size!19861 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40630)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40630 (_ BitVec 32)) SeekEntryResult!7047)

(assert (=> b!717793 (= lt!319202 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!480507 () Bool)

(assert (=> start!63898 (=> (not res!480507) (not e!403036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63898 (= res!480507 (validMask!0 mask!3328))))

(assert (=> start!63898 e!403036))

(assert (=> start!63898 true))

(declare-fun array_inv!15214 (array!40630) Bool)

(assert (=> start!63898 (array_inv!15214 a!3186)))

(declare-fun b!717794 () Bool)

(declare-fun res!480506 () Bool)

(assert (=> b!717794 (=> (not res!480506) (not e!403036))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717794 (= res!480506 (validKeyInArray!0 (select (arr!19440 a!3186) j!159)))))

(declare-fun b!717795 () Bool)

(declare-fun res!480503 () Bool)

(assert (=> b!717795 (=> (not res!480503) (not e!403038))))

(declare-datatypes ((List!13495 0))(
  ( (Nil!13492) (Cons!13491 (h!14536 (_ BitVec 64)) (t!19818 List!13495)) )
))
(declare-fun arrayNoDuplicates!0 (array!40630 (_ BitVec 32) List!13495) Bool)

(assert (=> b!717795 (= res!480503 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13492))))

(declare-fun b!717796 () Bool)

(declare-fun res!480508 () Bool)

(assert (=> b!717796 (=> (not res!480508) (not e!403036))))

(declare-fun arrayContainsKey!0 (array!40630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717796 (= res!480508 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717797 () Bool)

(declare-fun res!480509 () Bool)

(assert (=> b!717797 (=> (not res!480509) (not e!403036))))

(assert (=> b!717797 (= res!480509 (and (= (size!19861 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19861 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19861 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!717798 () Bool)

(assert (=> b!717798 (= e!403038 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19861 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19861 a!3186)) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!717799 () Bool)

(declare-fun res!480510 () Bool)

(assert (=> b!717799 (=> (not res!480510) (not e!403036))))

(assert (=> b!717799 (= res!480510 (validKeyInArray!0 k!2102))))

(declare-fun b!717800 () Bool)

(declare-fun res!480504 () Bool)

(assert (=> b!717800 (=> (not res!480504) (not e!403038))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40630 (_ BitVec 32)) Bool)

(assert (=> b!717800 (= res!480504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!63898 res!480507) b!717797))

(assert (= (and b!717797 res!480509) b!717794))

(assert (= (and b!717794 res!480506) b!717799))

(assert (= (and b!717799 res!480510) b!717796))

(assert (= (and b!717796 res!480508) b!717793))

(assert (= (and b!717793 res!480505) b!717800))

(assert (= (and b!717800 res!480504) b!717795))

(assert (= (and b!717795 res!480503) b!717798))

(declare-fun m!673687 () Bool)

(assert (=> start!63898 m!673687))

(declare-fun m!673689 () Bool)

(assert (=> start!63898 m!673689))

(declare-fun m!673691 () Bool)

(assert (=> b!717793 m!673691))

(declare-fun m!673693 () Bool)

(assert (=> b!717795 m!673693))

(declare-fun m!673695 () Bool)

(assert (=> b!717796 m!673695))

(declare-fun m!673697 () Bool)

(assert (=> b!717799 m!673697))

(declare-fun m!673699 () Bool)

(assert (=> b!717794 m!673699))

(assert (=> b!717794 m!673699))

(declare-fun m!673701 () Bool)

(assert (=> b!717794 m!673701))

(declare-fun m!673703 () Bool)

(assert (=> b!717800 m!673703))

(push 1)

(assert (not b!717796))

(assert (not b!717795))

(assert (not start!63898))

(assert (not b!717800))

(assert (not b!717793))

(assert (not b!717799))

(assert (not b!717794))

(check-sat)

(pop 1)

