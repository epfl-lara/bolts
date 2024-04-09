; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29324 () Bool)

(assert start!29324)

(declare-fun b!296950 () Bool)

(declare-fun e!187687 () Bool)

(declare-fun e!187684 () Bool)

(assert (=> b!296950 (= e!187687 e!187684)))

(declare-fun res!156595 () Bool)

(assert (=> b!296950 (=> (not res!156595) (not e!187684))))

(declare-fun lt!147578 () Bool)

(assert (=> b!296950 (= res!156595 lt!147578)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15034 0))(
  ( (array!15035 (arr!7124 (Array (_ BitVec 32) (_ BitVec 64))) (size!7476 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15034)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!147576 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2284 0))(
  ( (MissingZero!2284 (index!11306 (_ BitVec 32))) (Found!2284 (index!11307 (_ BitVec 32))) (Intermediate!2284 (undefined!3096 Bool) (index!11308 (_ BitVec 32)) (x!29489 (_ BitVec 32))) (Undefined!2284) (MissingVacant!2284 (index!11309 (_ BitVec 32))) )
))
(declare-fun lt!147572 () SeekEntryResult!2284)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15034 (_ BitVec 32)) SeekEntryResult!2284)

(assert (=> b!296950 (= lt!147572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147576 k0!2524 (array!15035 (store (arr!7124 a!3312) i!1256 k0!2524) (size!7476 a!3312)) mask!3809))))

(declare-fun lt!147573 () SeekEntryResult!2284)

(assert (=> b!296950 (= lt!147573 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147576 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296950 (= lt!147576 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!156597 () Bool)

(declare-fun e!187685 () Bool)

(assert (=> start!29324 (=> (not res!156597) (not e!187685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29324 (= res!156597 (validMask!0 mask!3809))))

(assert (=> start!29324 e!187685))

(assert (=> start!29324 true))

(declare-fun array_inv!5078 (array!15034) Bool)

(assert (=> start!29324 (array_inv!5078 a!3312)))

(declare-fun b!296951 () Bool)

(declare-fun e!187686 () Bool)

(assert (=> b!296951 (= e!187684 e!187686)))

(declare-fun res!156590 () Bool)

(assert (=> b!296951 (=> (not res!156590) (not e!187686))))

(declare-fun lt!147574 () Bool)

(assert (=> b!296951 (= res!156590 (and (or lt!147574 (not (undefined!3096 lt!147573))) (or lt!147574 (not (= (select (arr!7124 a!3312) (index!11308 lt!147573)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147574 (not (= (select (arr!7124 a!3312) (index!11308 lt!147573)) k0!2524))) (not lt!147574)))))

(get-info :version)

(assert (=> b!296951 (= lt!147574 (not ((_ is Intermediate!2284) lt!147573)))))

(declare-fun b!296952 () Bool)

(declare-fun res!156594 () Bool)

(assert (=> b!296952 (=> (not res!156594) (not e!187685))))

(declare-fun arrayContainsKey!0 (array!15034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296952 (= res!156594 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296953 () Bool)

(assert (=> b!296953 (= e!187686 (not (and (bvsge (index!11308 lt!147573) #b00000000000000000000000000000000) (bvslt (index!11308 lt!147573) (size!7476 a!3312)))))))

(assert (=> b!296953 (= lt!147572 lt!147573)))

(declare-datatypes ((Unit!9235 0))(
  ( (Unit!9236) )
))
(declare-fun lt!147575 () Unit!9235)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15034 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9235)

(assert (=> b!296953 (= lt!147575 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!147576 (index!11308 lt!147573) (x!29489 lt!147573) mask!3809))))

(assert (=> b!296953 (and (= (select (arr!7124 a!3312) (index!11308 lt!147573)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11308 lt!147573) i!1256))))

(declare-fun b!296954 () Bool)

(declare-fun res!156593 () Bool)

(assert (=> b!296954 (=> (not res!156593) (not e!187685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296954 (= res!156593 (validKeyInArray!0 k0!2524))))

(declare-fun b!296955 () Bool)

(declare-fun res!156596 () Bool)

(assert (=> b!296955 (=> (not res!156596) (not e!187687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15034 (_ BitVec 32)) Bool)

(assert (=> b!296955 (= res!156596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296956 () Bool)

(declare-fun res!156592 () Bool)

(assert (=> b!296956 (=> (not res!156592) (not e!187685))))

(assert (=> b!296956 (= res!156592 (and (= (size!7476 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7476 a!3312))))))

(declare-fun b!296957 () Bool)

(assert (=> b!296957 (= e!187685 e!187687)))

(declare-fun res!156591 () Bool)

(assert (=> b!296957 (=> (not res!156591) (not e!187687))))

(declare-fun lt!147577 () SeekEntryResult!2284)

(assert (=> b!296957 (= res!156591 (or lt!147578 (= lt!147577 (MissingVacant!2284 i!1256))))))

(assert (=> b!296957 (= lt!147578 (= lt!147577 (MissingZero!2284 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15034 (_ BitVec 32)) SeekEntryResult!2284)

(assert (=> b!296957 (= lt!147577 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!29324 res!156597) b!296956))

(assert (= (and b!296956 res!156592) b!296954))

(assert (= (and b!296954 res!156593) b!296952))

(assert (= (and b!296952 res!156594) b!296957))

(assert (= (and b!296957 res!156591) b!296955))

(assert (= (and b!296955 res!156596) b!296950))

(assert (= (and b!296950 res!156595) b!296951))

(assert (= (and b!296951 res!156590) b!296953))

(declare-fun m!309809 () Bool)

(assert (=> b!296957 m!309809))

(declare-fun m!309811 () Bool)

(assert (=> b!296950 m!309811))

(declare-fun m!309813 () Bool)

(assert (=> b!296950 m!309813))

(declare-fun m!309815 () Bool)

(assert (=> b!296950 m!309815))

(declare-fun m!309817 () Bool)

(assert (=> b!296950 m!309817))

(declare-fun m!309819 () Bool)

(assert (=> b!296952 m!309819))

(declare-fun m!309821 () Bool)

(assert (=> b!296955 m!309821))

(declare-fun m!309823 () Bool)

(assert (=> b!296954 m!309823))

(declare-fun m!309825 () Bool)

(assert (=> start!29324 m!309825))

(declare-fun m!309827 () Bool)

(assert (=> start!29324 m!309827))

(declare-fun m!309829 () Bool)

(assert (=> b!296953 m!309829))

(declare-fun m!309831 () Bool)

(assert (=> b!296953 m!309831))

(assert (=> b!296951 m!309831))

(check-sat (not b!296952) (not b!296954) (not b!296955) (not b!296953) (not b!296950) (not b!296957) (not start!29324))
(check-sat)
