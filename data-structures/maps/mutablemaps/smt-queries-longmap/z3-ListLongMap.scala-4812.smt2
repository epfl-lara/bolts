; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66232 () Bool)

(assert start!66232)

(declare-fun b!762309 () Bool)

(declare-fun res!515592 () Bool)

(declare-fun e!424938 () Bool)

(assert (=> b!762309 (=> (not res!515592) (not e!424938))))

(declare-datatypes ((array!42090 0))(
  ( (array!42091 (arr!20149 (Array (_ BitVec 32) (_ BitVec 64))) (size!20570 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42090)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!762309 (= res!515592 (and (= (size!20570 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20570 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20570 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762310 () Bool)

(declare-fun res!515595 () Bool)

(assert (=> b!762310 (=> (not res!515595) (not e!424938))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762310 (= res!515595 (validKeyInArray!0 k0!2102))))

(declare-fun b!762311 () Bool)

(declare-fun res!515597 () Bool)

(assert (=> b!762311 (=> (not res!515597) (not e!424938))))

(declare-fun arrayContainsKey!0 (array!42090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762311 (= res!515597 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762312 () Bool)

(declare-fun res!515596 () Bool)

(declare-fun e!424940 () Bool)

(assert (=> b!762312 (=> (not res!515596) (not e!424940))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762312 (= res!515596 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20570 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20570 a!3186))))))

(declare-fun b!762313 () Bool)

(assert (=> b!762313 (= e!424938 e!424940)))

(declare-fun res!515598 () Bool)

(assert (=> b!762313 (=> (not res!515598) (not e!424940))))

(declare-datatypes ((SeekEntryResult!7756 0))(
  ( (MissingZero!7756 (index!33391 (_ BitVec 32))) (Found!7756 (index!33392 (_ BitVec 32))) (Intermediate!7756 (undefined!8568 Bool) (index!33393 (_ BitVec 32)) (x!64329 (_ BitVec 32))) (Undefined!7756) (MissingVacant!7756 (index!33394 (_ BitVec 32))) )
))
(declare-fun lt!339526 () SeekEntryResult!7756)

(assert (=> b!762313 (= res!515598 (or (= lt!339526 (MissingZero!7756 i!1173)) (= lt!339526 (MissingVacant!7756 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42090 (_ BitVec 32)) SeekEntryResult!7756)

(assert (=> b!762313 (= lt!339526 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!762314 () Bool)

(declare-fun res!515591 () Bool)

(assert (=> b!762314 (=> (not res!515591) (not e!424938))))

(assert (=> b!762314 (= res!515591 (validKeyInArray!0 (select (arr!20149 a!3186) j!159)))))

(declare-fun b!762315 () Bool)

(assert (=> b!762315 (= e!424940 false)))

(declare-fun lt!339525 () SeekEntryResult!7756)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42090 (_ BitVec 32)) SeekEntryResult!7756)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762315 (= lt!339525 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20149 a!3186) j!159) mask!3328) (select (arr!20149 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!762316 () Bool)

(declare-fun res!515590 () Bool)

(assert (=> b!762316 (=> (not res!515590) (not e!424940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42090 (_ BitVec 32)) Bool)

(assert (=> b!762316 (= res!515590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762317 () Bool)

(declare-fun res!515594 () Bool)

(assert (=> b!762317 (=> (not res!515594) (not e!424940))))

(declare-datatypes ((List!14204 0))(
  ( (Nil!14201) (Cons!14200 (h!15284 (_ BitVec 64)) (t!20527 List!14204)) )
))
(declare-fun arrayNoDuplicates!0 (array!42090 (_ BitVec 32) List!14204) Bool)

(assert (=> b!762317 (= res!515594 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14201))))

(declare-fun res!515593 () Bool)

(assert (=> start!66232 (=> (not res!515593) (not e!424938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66232 (= res!515593 (validMask!0 mask!3328))))

(assert (=> start!66232 e!424938))

(assert (=> start!66232 true))

(declare-fun array_inv!15923 (array!42090) Bool)

(assert (=> start!66232 (array_inv!15923 a!3186)))

(assert (= (and start!66232 res!515593) b!762309))

(assert (= (and b!762309 res!515592) b!762314))

(assert (= (and b!762314 res!515591) b!762310))

(assert (= (and b!762310 res!515595) b!762311))

(assert (= (and b!762311 res!515597) b!762313))

(assert (= (and b!762313 res!515598) b!762316))

(assert (= (and b!762316 res!515590) b!762317))

(assert (= (and b!762317 res!515594) b!762312))

(assert (= (and b!762312 res!515596) b!762315))

(declare-fun m!709131 () Bool)

(assert (=> b!762310 m!709131))

(declare-fun m!709133 () Bool)

(assert (=> b!762314 m!709133))

(assert (=> b!762314 m!709133))

(declare-fun m!709135 () Bool)

(assert (=> b!762314 m!709135))

(declare-fun m!709137 () Bool)

(assert (=> b!762311 m!709137))

(declare-fun m!709139 () Bool)

(assert (=> b!762317 m!709139))

(assert (=> b!762315 m!709133))

(assert (=> b!762315 m!709133))

(declare-fun m!709141 () Bool)

(assert (=> b!762315 m!709141))

(assert (=> b!762315 m!709141))

(assert (=> b!762315 m!709133))

(declare-fun m!709143 () Bool)

(assert (=> b!762315 m!709143))

(declare-fun m!709145 () Bool)

(assert (=> b!762316 m!709145))

(declare-fun m!709147 () Bool)

(assert (=> start!66232 m!709147))

(declare-fun m!709149 () Bool)

(assert (=> start!66232 m!709149))

(declare-fun m!709151 () Bool)

(assert (=> b!762313 m!709151))

(check-sat (not b!762314) (not b!762313) (not b!762311) (not b!762316) (not b!762315) (not b!762310) (not b!762317) (not start!66232))
(check-sat)
