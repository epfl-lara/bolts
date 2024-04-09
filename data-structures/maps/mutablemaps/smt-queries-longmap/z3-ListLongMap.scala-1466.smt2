; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28194 () Bool)

(assert start!28194)

(declare-fun b!288521 () Bool)

(declare-fun res!150189 () Bool)

(declare-fun e!182686 () Bool)

(assert (=> b!288521 (=> (not res!150189) (not e!182686))))

(declare-datatypes ((array!14497 0))(
  ( (array!14498 (arr!6875 (Array (_ BitVec 32) (_ BitVec 64))) (size!7227 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14497)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288521 (= res!150189 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!288523 () Bool)

(declare-fun e!182685 () Bool)

(declare-fun e!182688 () Bool)

(assert (=> b!288523 (= e!182685 e!182688)))

(declare-fun res!150184 () Bool)

(assert (=> b!288523 (=> (not res!150184) (not e!182688))))

(declare-datatypes ((SeekEntryResult!2035 0))(
  ( (MissingZero!2035 (index!10310 (_ BitVec 32))) (Found!2035 (index!10311 (_ BitVec 32))) (Intermediate!2035 (undefined!2847 Bool) (index!10312 (_ BitVec 32)) (x!28496 (_ BitVec 32))) (Undefined!2035) (MissingVacant!2035 (index!10313 (_ BitVec 32))) )
))
(declare-fun lt!142197 () SeekEntryResult!2035)

(declare-fun lt!142202 () Bool)

(assert (=> b!288523 (= res!150184 (and (or lt!142202 (not (undefined!2847 lt!142197))) (or lt!142202 (not (= (select (arr!6875 a!3312) (index!10312 lt!142197)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142202 (not (= (select (arr!6875 a!3312) (index!10312 lt!142197)) k0!2524))) (not lt!142202)))))

(get-info :version)

(assert (=> b!288523 (= lt!142202 (not ((_ is Intermediate!2035) lt!142197)))))

(declare-fun b!288524 () Bool)

(declare-fun e!182687 () Bool)

(assert (=> b!288524 (= e!182687 e!182685)))

(declare-fun res!150182 () Bool)

(assert (=> b!288524 (=> (not res!150182) (not e!182685))))

(declare-fun lt!142201 () Bool)

(assert (=> b!288524 (= res!150182 lt!142201)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142198 () SeekEntryResult!2035)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!142199 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14497 (_ BitVec 32)) SeekEntryResult!2035)

(assert (=> b!288524 (= lt!142198 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142199 k0!2524 (array!14498 (store (arr!6875 a!3312) i!1256 k0!2524) (size!7227 a!3312)) mask!3809))))

(assert (=> b!288524 (= lt!142197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142199 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288524 (= lt!142199 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!288525 () Bool)

(assert (=> b!288525 (= e!182688 (not true))))

(assert (=> b!288525 (and (= (select (arr!6875 a!3312) (index!10312 lt!142197)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10312 lt!142197) i!1256))))

(declare-fun b!288526 () Bool)

(declare-fun res!150185 () Bool)

(assert (=> b!288526 (=> (not res!150185) (not e!182686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288526 (= res!150185 (validKeyInArray!0 k0!2524))))

(declare-fun b!288522 () Bool)

(declare-fun res!150187 () Bool)

(assert (=> b!288522 (=> (not res!150187) (not e!182687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14497 (_ BitVec 32)) Bool)

(assert (=> b!288522 (= res!150187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!150188 () Bool)

(assert (=> start!28194 (=> (not res!150188) (not e!182686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28194 (= res!150188 (validMask!0 mask!3809))))

(assert (=> start!28194 e!182686))

(assert (=> start!28194 true))

(declare-fun array_inv!4829 (array!14497) Bool)

(assert (=> start!28194 (array_inv!4829 a!3312)))

(declare-fun b!288527 () Bool)

(assert (=> b!288527 (= e!182686 e!182687)))

(declare-fun res!150183 () Bool)

(assert (=> b!288527 (=> (not res!150183) (not e!182687))))

(declare-fun lt!142200 () SeekEntryResult!2035)

(assert (=> b!288527 (= res!150183 (or lt!142201 (= lt!142200 (MissingVacant!2035 i!1256))))))

(assert (=> b!288527 (= lt!142201 (= lt!142200 (MissingZero!2035 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14497 (_ BitVec 32)) SeekEntryResult!2035)

(assert (=> b!288527 (= lt!142200 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!288528 () Bool)

(declare-fun res!150186 () Bool)

(assert (=> b!288528 (=> (not res!150186) (not e!182686))))

(assert (=> b!288528 (= res!150186 (and (= (size!7227 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7227 a!3312))))))

(assert (= (and start!28194 res!150188) b!288528))

(assert (= (and b!288528 res!150186) b!288526))

(assert (= (and b!288526 res!150185) b!288521))

(assert (= (and b!288521 res!150189) b!288527))

(assert (= (and b!288527 res!150183) b!288522))

(assert (= (and b!288522 res!150187) b!288524))

(assert (= (and b!288524 res!150182) b!288523))

(assert (= (and b!288523 res!150184) b!288525))

(declare-fun m!302783 () Bool)

(assert (=> b!288523 m!302783))

(declare-fun m!302785 () Bool)

(assert (=> b!288521 m!302785))

(declare-fun m!302787 () Bool)

(assert (=> b!288527 m!302787))

(declare-fun m!302789 () Bool)

(assert (=> b!288524 m!302789))

(declare-fun m!302791 () Bool)

(assert (=> b!288524 m!302791))

(declare-fun m!302793 () Bool)

(assert (=> b!288524 m!302793))

(declare-fun m!302795 () Bool)

(assert (=> b!288524 m!302795))

(declare-fun m!302797 () Bool)

(assert (=> b!288522 m!302797))

(assert (=> b!288525 m!302783))

(declare-fun m!302799 () Bool)

(assert (=> b!288526 m!302799))

(declare-fun m!302801 () Bool)

(assert (=> start!28194 m!302801))

(declare-fun m!302803 () Bool)

(assert (=> start!28194 m!302803))

(check-sat (not start!28194) (not b!288524) (not b!288522) (not b!288521) (not b!288526) (not b!288527))
(check-sat)
