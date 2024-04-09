; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64034 () Bool)

(assert start!64034)

(declare-fun b!718704 () Bool)

(declare-fun res!481237 () Bool)

(declare-fun e!403461 () Bool)

(assert (=> b!718704 (=> (not res!481237) (not e!403461))))

(declare-datatypes ((array!40682 0))(
  ( (array!40683 (arr!19463 (Array (_ BitVec 32) (_ BitVec 64))) (size!19884 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40682)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40682 (_ BitVec 32)) Bool)

(assert (=> b!718704 (= res!481237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718705 () Bool)

(declare-fun e!403459 () Bool)

(assert (=> b!718705 (= e!403459 e!403461)))

(declare-fun res!481240 () Bool)

(assert (=> b!718705 (=> (not res!481240) (not e!403461))))

(declare-datatypes ((SeekEntryResult!7070 0))(
  ( (MissingZero!7070 (index!30647 (_ BitVec 32))) (Found!7070 (index!30648 (_ BitVec 32))) (Intermediate!7070 (undefined!7882 Bool) (index!30649 (_ BitVec 32)) (x!61686 (_ BitVec 32))) (Undefined!7070) (MissingVacant!7070 (index!30650 (_ BitVec 32))) )
))
(declare-fun lt!319450 () SeekEntryResult!7070)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718705 (= res!481240 (or (= lt!319450 (MissingZero!7070 i!1173)) (= lt!319450 (MissingVacant!7070 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40682 (_ BitVec 32)) SeekEntryResult!7070)

(assert (=> b!718705 (= lt!319450 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718706 () Bool)

(declare-fun res!481245 () Bool)

(assert (=> b!718706 (=> (not res!481245) (not e!403459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718706 (= res!481245 (validKeyInArray!0 k!2102))))

(declare-fun res!481241 () Bool)

(assert (=> start!64034 (=> (not res!481241) (not e!403459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64034 (= res!481241 (validMask!0 mask!3328))))

(assert (=> start!64034 e!403459))

(assert (=> start!64034 true))

(declare-fun array_inv!15237 (array!40682) Bool)

(assert (=> start!64034 (array_inv!15237 a!3186)))

(declare-fun b!718707 () Bool)

(declare-fun res!481242 () Bool)

(assert (=> b!718707 (=> (not res!481242) (not e!403459))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!718707 (= res!481242 (validKeyInArray!0 (select (arr!19463 a!3186) j!159)))))

(declare-fun b!718708 () Bool)

(declare-fun res!481243 () Bool)

(assert (=> b!718708 (=> (not res!481243) (not e!403459))))

(assert (=> b!718708 (= res!481243 (and (= (size!19884 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19884 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19884 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718709 () Bool)

(assert (=> b!718709 (= e!403461 false)))

(declare-fun lt!319451 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718709 (= lt!319451 (toIndex!0 (select (arr!19463 a!3186) j!159) mask!3328))))

(declare-fun b!718710 () Bool)

(declare-fun res!481239 () Bool)

(assert (=> b!718710 (=> (not res!481239) (not e!403461))))

(declare-datatypes ((List!13518 0))(
  ( (Nil!13515) (Cons!13514 (h!14562 (_ BitVec 64)) (t!19841 List!13518)) )
))
(declare-fun arrayNoDuplicates!0 (array!40682 (_ BitVec 32) List!13518) Bool)

(assert (=> b!718710 (= res!481239 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13515))))

(declare-fun b!718711 () Bool)

(declare-fun res!481244 () Bool)

(assert (=> b!718711 (=> (not res!481244) (not e!403461))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718711 (= res!481244 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19884 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19884 a!3186))))))

(declare-fun b!718712 () Bool)

(declare-fun res!481238 () Bool)

(assert (=> b!718712 (=> (not res!481238) (not e!403459))))

(declare-fun arrayContainsKey!0 (array!40682 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718712 (= res!481238 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64034 res!481241) b!718708))

(assert (= (and b!718708 res!481243) b!718707))

(assert (= (and b!718707 res!481242) b!718706))

(assert (= (and b!718706 res!481245) b!718712))

(assert (= (and b!718712 res!481238) b!718705))

(assert (= (and b!718705 res!481240) b!718704))

(assert (= (and b!718704 res!481237) b!718710))

(assert (= (and b!718710 res!481239) b!718711))

(assert (= (and b!718711 res!481244) b!718709))

(declare-fun m!674327 () Bool)

(assert (=> b!718706 m!674327))

(declare-fun m!674329 () Bool)

(assert (=> b!718712 m!674329))

(declare-fun m!674331 () Bool)

(assert (=> b!718704 m!674331))

(declare-fun m!674333 () Bool)

(assert (=> b!718709 m!674333))

(assert (=> b!718709 m!674333))

(declare-fun m!674335 () Bool)

(assert (=> b!718709 m!674335))

(assert (=> b!718707 m!674333))

(assert (=> b!718707 m!674333))

(declare-fun m!674337 () Bool)

(assert (=> b!718707 m!674337))

(declare-fun m!674339 () Bool)

(assert (=> start!64034 m!674339))

(declare-fun m!674341 () Bool)

(assert (=> start!64034 m!674341))

(declare-fun m!674343 () Bool)

(assert (=> b!718710 m!674343))

(declare-fun m!674345 () Bool)

(assert (=> b!718705 m!674345))

(push 1)

(assert (not b!718709))

(assert (not b!718710))

(assert (not b!718706))

(assert (not start!64034))

(assert (not b!718704))

(assert (not b!718707))

(assert (not b!718712))

(assert (not b!718705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

