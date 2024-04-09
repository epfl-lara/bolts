; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63962 () Bool)

(assert start!63962)

(declare-fun b!718227 () Bool)

(declare-fun res!480847 () Bool)

(declare-fun e!403243 () Bool)

(assert (=> b!718227 (=> (not res!480847) (not e!403243))))

(declare-datatypes ((array!40655 0))(
  ( (array!40656 (arr!19451 (Array (_ BitVec 32) (_ BitVec 64))) (size!19872 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40655)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40655 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718227 (= res!480847 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718228 () Bool)

(declare-fun res!480850 () Bool)

(declare-fun e!403245 () Bool)

(assert (=> b!718228 (=> (not res!480850) (not e!403245))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40655 (_ BitVec 32)) Bool)

(assert (=> b!718228 (= res!480850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718229 () Bool)

(declare-fun res!480852 () Bool)

(assert (=> b!718229 (=> (not res!480852) (not e!403245))))

(declare-datatypes ((List!13506 0))(
  ( (Nil!13503) (Cons!13502 (h!14547 (_ BitVec 64)) (t!19829 List!13506)) )
))
(declare-fun arrayNoDuplicates!0 (array!40655 (_ BitVec 32) List!13506) Bool)

(assert (=> b!718229 (= res!480852 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13503))))

(declare-fun b!718230 () Bool)

(declare-fun res!480854 () Bool)

(assert (=> b!718230 (=> (not res!480854) (not e!403243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718230 (= res!480854 (validKeyInArray!0 k!2102))))

(declare-fun b!718231 () Bool)

(declare-fun res!480855 () Bool)

(assert (=> b!718231 (=> (not res!480855) (not e!403243))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718231 (= res!480855 (and (= (size!19872 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19872 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19872 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!480849 () Bool)

(assert (=> start!63962 (=> (not res!480849) (not e!403243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63962 (= res!480849 (validMask!0 mask!3328))))

(assert (=> start!63962 e!403243))

(assert (=> start!63962 true))

(declare-fun array_inv!15225 (array!40655) Bool)

(assert (=> start!63962 (array_inv!15225 a!3186)))

(declare-fun b!718232 () Bool)

(assert (=> b!718232 (= e!403245 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!319307 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718232 (= lt!319307 (toIndex!0 (select (arr!19451 a!3186) j!159) mask!3328))))

(declare-fun b!718233 () Bool)

(declare-fun res!480851 () Bool)

(assert (=> b!718233 (=> (not res!480851) (not e!403243))))

(assert (=> b!718233 (= res!480851 (validKeyInArray!0 (select (arr!19451 a!3186) j!159)))))

(declare-fun b!718234 () Bool)

(declare-fun res!480848 () Bool)

(assert (=> b!718234 (=> (not res!480848) (not e!403245))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!718234 (= res!480848 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19872 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19872 a!3186))))))

(declare-fun b!718235 () Bool)

(assert (=> b!718235 (= e!403243 e!403245)))

(declare-fun res!480853 () Bool)

(assert (=> b!718235 (=> (not res!480853) (not e!403245))))

(declare-datatypes ((SeekEntryResult!7058 0))(
  ( (MissingZero!7058 (index!30599 (_ BitVec 32))) (Found!7058 (index!30600 (_ BitVec 32))) (Intermediate!7058 (undefined!7870 Bool) (index!30601 (_ BitVec 32)) (x!61639 (_ BitVec 32))) (Undefined!7058) (MissingVacant!7058 (index!30602 (_ BitVec 32))) )
))
(declare-fun lt!319306 () SeekEntryResult!7058)

(assert (=> b!718235 (= res!480853 (or (= lt!319306 (MissingZero!7058 i!1173)) (= lt!319306 (MissingVacant!7058 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40655 (_ BitVec 32)) SeekEntryResult!7058)

(assert (=> b!718235 (= lt!319306 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!63962 res!480849) b!718231))

(assert (= (and b!718231 res!480855) b!718233))

(assert (= (and b!718233 res!480851) b!718230))

(assert (= (and b!718230 res!480854) b!718227))

(assert (= (and b!718227 res!480847) b!718235))

(assert (= (and b!718235 res!480853) b!718228))

(assert (= (and b!718228 res!480850) b!718229))

(assert (= (and b!718229 res!480852) b!718234))

(assert (= (and b!718234 res!480848) b!718232))

(declare-fun m!673991 () Bool)

(assert (=> b!718235 m!673991))

(declare-fun m!673993 () Bool)

(assert (=> start!63962 m!673993))

(declare-fun m!673995 () Bool)

(assert (=> start!63962 m!673995))

(declare-fun m!673997 () Bool)

(assert (=> b!718232 m!673997))

(assert (=> b!718232 m!673997))

(declare-fun m!673999 () Bool)

(assert (=> b!718232 m!673999))

(declare-fun m!674001 () Bool)

(assert (=> b!718230 m!674001))

(assert (=> b!718233 m!673997))

(assert (=> b!718233 m!673997))

(declare-fun m!674003 () Bool)

(assert (=> b!718233 m!674003))

(declare-fun m!674005 () Bool)

(assert (=> b!718229 m!674005))

(declare-fun m!674007 () Bool)

(assert (=> b!718227 m!674007))

(declare-fun m!674009 () Bool)

(assert (=> b!718228 m!674009))

(push 1)

(assert (not b!718232))

(assert (not start!63962))

(assert (not b!718227))

(assert (not b!718229))

(assert (not b!718235))

(assert (not b!718233))

(assert (not b!718230))

(assert (not b!718228))

(check-sat)

