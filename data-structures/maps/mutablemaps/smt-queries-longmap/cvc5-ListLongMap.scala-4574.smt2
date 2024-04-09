; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63796 () Bool)

(assert start!63796)

(declare-fun b!717355 () Bool)

(declare-fun e!402771 () Bool)

(declare-fun e!402769 () Bool)

(assert (=> b!717355 (= e!402771 e!402769)))

(declare-fun res!480212 () Bool)

(assert (=> b!717355 (=> (not res!480212) (not e!402769))))

(declare-datatypes ((SeekEntryResult!7041 0))(
  ( (MissingZero!7041 (index!30531 (_ BitVec 32))) (Found!7041 (index!30532 (_ BitVec 32))) (Intermediate!7041 (undefined!7853 Bool) (index!30533 (_ BitVec 32)) (x!61582 (_ BitVec 32))) (Undefined!7041) (MissingVacant!7041 (index!30534 (_ BitVec 32))) )
))
(declare-fun lt!319064 () SeekEntryResult!7041)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717355 (= res!480212 (or (= lt!319064 (MissingZero!7041 i!1173)) (= lt!319064 (MissingVacant!7041 i!1173))))))

(declare-datatypes ((array!40612 0))(
  ( (array!40613 (arr!19434 (Array (_ BitVec 32) (_ BitVec 64))) (size!19855 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40612)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40612 (_ BitVec 32)) SeekEntryResult!7041)

(assert (=> b!717355 (= lt!319064 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717356 () Bool)

(declare-fun res!480216 () Bool)

(assert (=> b!717356 (=> (not res!480216) (not e!402771))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717356 (= res!480216 (validKeyInArray!0 k!2102))))

(declare-fun b!717357 () Bool)

(declare-fun res!480209 () Bool)

(assert (=> b!717357 (=> (not res!480209) (not e!402771))))

(declare-fun arrayContainsKey!0 (array!40612 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717357 (= res!480209 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717358 () Bool)

(declare-fun res!480213 () Bool)

(assert (=> b!717358 (=> (not res!480213) (not e!402771))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!717358 (= res!480213 (validKeyInArray!0 (select (arr!19434 a!3186) j!159)))))

(declare-fun b!717359 () Bool)

(declare-fun res!480210 () Bool)

(assert (=> b!717359 (=> (not res!480210) (not e!402769))))

(assert (=> b!717359 (= res!480210 (and (bvsle #b00000000000000000000000000000000 (size!19855 a!3186)) (bvslt (size!19855 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!717360 () Bool)

(declare-datatypes ((List!13489 0))(
  ( (Nil!13486) (Cons!13485 (h!14530 (_ BitVec 64)) (t!19812 List!13489)) )
))
(declare-fun noDuplicate!1279 (List!13489) Bool)

(assert (=> b!717360 (= e!402769 (not (noDuplicate!1279 Nil!13486)))))

(declare-fun res!480211 () Bool)

(assert (=> start!63796 (=> (not res!480211) (not e!402771))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63796 (= res!480211 (validMask!0 mask!3328))))

(assert (=> start!63796 e!402771))

(declare-fun array_inv!15208 (array!40612) Bool)

(assert (=> start!63796 (array_inv!15208 a!3186)))

(assert (=> start!63796 true))

(declare-fun b!717361 () Bool)

(declare-fun res!480214 () Bool)

(assert (=> b!717361 (=> (not res!480214) (not e!402771))))

(assert (=> b!717361 (= res!480214 (and (= (size!19855 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19855 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19855 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717362 () Bool)

(declare-fun res!480215 () Bool)

(assert (=> b!717362 (=> (not res!480215) (not e!402769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40612 (_ BitVec 32)) Bool)

(assert (=> b!717362 (= res!480215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!63796 res!480211) b!717361))

(assert (= (and b!717361 res!480214) b!717358))

(assert (= (and b!717358 res!480213) b!717356))

(assert (= (and b!717356 res!480216) b!717357))

(assert (= (and b!717357 res!480209) b!717355))

(assert (= (and b!717355 res!480212) b!717362))

(assert (= (and b!717362 res!480215) b!717359))

(assert (= (and b!717359 res!480210) b!717360))

(declare-fun m!673359 () Bool)

(assert (=> start!63796 m!673359))

(declare-fun m!673361 () Bool)

(assert (=> start!63796 m!673361))

(declare-fun m!673363 () Bool)

(assert (=> b!717357 m!673363))

(declare-fun m!673365 () Bool)

(assert (=> b!717362 m!673365))

(declare-fun m!673367 () Bool)

(assert (=> b!717360 m!673367))

(declare-fun m!673369 () Bool)

(assert (=> b!717358 m!673369))

(assert (=> b!717358 m!673369))

(declare-fun m!673371 () Bool)

(assert (=> b!717358 m!673371))

(declare-fun m!673373 () Bool)

(assert (=> b!717355 m!673373))

(declare-fun m!673375 () Bool)

(assert (=> b!717356 m!673375))

(push 1)

(assert (not b!717362))

(assert (not b!717357))

(assert (not b!717358))

(assert (not b!717356))

(assert (not start!63796))

(assert (not b!717360))

(assert (not b!717355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!717465 () Bool)

(declare-fun e!402834 () SeekEntryResult!7041)

(declare-fun lt!319095 () SeekEntryResult!7041)

(assert (=> b!717465 (= e!402834 (Found!7041 (index!30533 lt!319095)))))

(declare-fun b!717466 () Bool)

(declare-fun e!402833 () SeekEntryResult!7041)

(assert (=> b!717466 (= e!402833 e!402834)))

(declare-fun lt!319097 () (_ BitVec 64))

(assert (=> b!717466 (= lt!319097 (select (arr!19434 a!3186) (index!30533 lt!319095)))))

(declare-fun c!78953 () Bool)

(assert (=> b!717466 (= c!78953 (= lt!319097 k!2102))))

(declare-fun b!717467 () Bool)

(declare-fun e!402832 () SeekEntryResult!7041)

(assert (=> b!717467 (= e!402832 (MissingZero!7041 (index!30533 lt!319095)))))

(declare-fun b!717468 () Bool)

(assert (=> b!717468 (= e!402833 Undefined!7041)))

(declare-fun d!98781 () Bool)

(declare-fun lt!319096 () SeekEntryResult!7041)

