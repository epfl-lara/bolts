; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29322 () Bool)

(assert start!29322)

(declare-fun res!156570 () Bool)

(declare-fun e!187670 () Bool)

(assert (=> start!29322 (=> (not res!156570) (not e!187670))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29322 (= res!156570 (validMask!0 mask!3809))))

(assert (=> start!29322 e!187670))

(assert (=> start!29322 true))

(declare-datatypes ((array!15032 0))(
  ( (array!15033 (arr!7123 (Array (_ BitVec 32) (_ BitVec 64))) (size!7475 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15032)

(declare-fun array_inv!5077 (array!15032) Bool)

(assert (=> start!29322 (array_inv!5077 a!3312)))

(declare-fun b!296926 () Bool)

(declare-fun res!156568 () Bool)

(declare-fun e!187671 () Bool)

(assert (=> b!296926 (=> (not res!156568) (not e!187671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15032 (_ BitVec 32)) Bool)

(assert (=> b!296926 (= res!156568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296927 () Bool)

(declare-fun res!156567 () Bool)

(assert (=> b!296927 (=> (not res!156567) (not e!187670))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296927 (= res!156567 (validKeyInArray!0 k!2524))))

(declare-fun b!296928 () Bool)

(declare-fun e!187673 () Bool)

(declare-fun e!187672 () Bool)

(assert (=> b!296928 (= e!187673 e!187672)))

(declare-fun res!156573 () Bool)

(assert (=> b!296928 (=> (not res!156573) (not e!187672))))

(declare-fun lt!147553 () Bool)

(declare-datatypes ((SeekEntryResult!2283 0))(
  ( (MissingZero!2283 (index!11302 (_ BitVec 32))) (Found!2283 (index!11303 (_ BitVec 32))) (Intermediate!2283 (undefined!3095 Bool) (index!11304 (_ BitVec 32)) (x!29488 (_ BitVec 32))) (Undefined!2283) (MissingVacant!2283 (index!11305 (_ BitVec 32))) )
))
(declare-fun lt!147556 () SeekEntryResult!2283)

(assert (=> b!296928 (= res!156573 (and (or lt!147553 (not (undefined!3095 lt!147556))) (or lt!147553 (not (= (select (arr!7123 a!3312) (index!11304 lt!147556)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147553 (not (= (select (arr!7123 a!3312) (index!11304 lt!147556)) k!2524))) (not lt!147553)))))

(assert (=> b!296928 (= lt!147553 (not (is-Intermediate!2283 lt!147556)))))

(declare-fun b!296929 () Bool)

(assert (=> b!296929 (= e!187672 (not (and (bvsge (index!11304 lt!147556) #b00000000000000000000000000000000) (bvslt (index!11304 lt!147556) (size!7475 a!3312)))))))

(declare-fun lt!147551 () SeekEntryResult!2283)

(assert (=> b!296929 (= lt!147551 lt!147556)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!147555 () (_ BitVec 32))

(declare-datatypes ((Unit!9233 0))(
  ( (Unit!9234) )
))
(declare-fun lt!147557 () Unit!9233)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15032 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9233)

(assert (=> b!296929 (= lt!147557 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147555 (index!11304 lt!147556) (x!29488 lt!147556) mask!3809))))

(assert (=> b!296929 (and (= (select (arr!7123 a!3312) (index!11304 lt!147556)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11304 lt!147556) i!1256))))

(declare-fun b!296930 () Bool)

(assert (=> b!296930 (= e!187670 e!187671)))

(declare-fun res!156566 () Bool)

(assert (=> b!296930 (=> (not res!156566) (not e!187671))))

(declare-fun lt!147554 () Bool)

(declare-fun lt!147552 () SeekEntryResult!2283)

(assert (=> b!296930 (= res!156566 (or lt!147554 (= lt!147552 (MissingVacant!2283 i!1256))))))

(assert (=> b!296930 (= lt!147554 (= lt!147552 (MissingZero!2283 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15032 (_ BitVec 32)) SeekEntryResult!2283)

(assert (=> b!296930 (= lt!147552 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296931 () Bool)

(assert (=> b!296931 (= e!187671 e!187673)))

(declare-fun res!156569 () Bool)

(assert (=> b!296931 (=> (not res!156569) (not e!187673))))

(assert (=> b!296931 (= res!156569 lt!147554)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15032 (_ BitVec 32)) SeekEntryResult!2283)

(assert (=> b!296931 (= lt!147551 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147555 k!2524 (array!15033 (store (arr!7123 a!3312) i!1256 k!2524) (size!7475 a!3312)) mask!3809))))

(assert (=> b!296931 (= lt!147556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147555 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296931 (= lt!147555 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296932 () Bool)

(declare-fun res!156571 () Bool)

(assert (=> b!296932 (=> (not res!156571) (not e!187670))))

(declare-fun arrayContainsKey!0 (array!15032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296932 (= res!156571 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296933 () Bool)

(declare-fun res!156572 () Bool)

(assert (=> b!296933 (=> (not res!156572) (not e!187670))))

(assert (=> b!296933 (= res!156572 (and (= (size!7475 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7475 a!3312))))))

(assert (= (and start!29322 res!156570) b!296933))

(assert (= (and b!296933 res!156572) b!296927))

(assert (= (and b!296927 res!156567) b!296932))

(assert (= (and b!296932 res!156571) b!296930))

(assert (= (and b!296930 res!156566) b!296926))

(assert (= (and b!296926 res!156568) b!296931))

(assert (= (and b!296931 res!156569) b!296928))

(assert (= (and b!296928 res!156573) b!296929))

(declare-fun m!309785 () Bool)

(assert (=> b!296927 m!309785))

(declare-fun m!309787 () Bool)

(assert (=> b!296929 m!309787))

(declare-fun m!309789 () Bool)

(assert (=> b!296929 m!309789))

(declare-fun m!309791 () Bool)

(assert (=> b!296930 m!309791))

(assert (=> b!296928 m!309789))

(declare-fun m!309793 () Bool)

(assert (=> b!296931 m!309793))

(declare-fun m!309795 () Bool)

(assert (=> b!296931 m!309795))

(declare-fun m!309797 () Bool)

(assert (=> b!296931 m!309797))

(declare-fun m!309799 () Bool)

(assert (=> b!296931 m!309799))

(declare-fun m!309801 () Bool)

(assert (=> b!296932 m!309801))

(declare-fun m!309803 () Bool)

(assert (=> start!29322 m!309803))

(declare-fun m!309805 () Bool)

(assert (=> start!29322 m!309805))

(declare-fun m!309807 () Bool)

(assert (=> b!296926 m!309807))

(push 1)

(assert (not b!296929))

(assert (not b!296926))

(assert (not start!29322))

(assert (not b!296932))

(assert (not b!296931))

(assert (not b!296930))

(assert (not b!296927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

