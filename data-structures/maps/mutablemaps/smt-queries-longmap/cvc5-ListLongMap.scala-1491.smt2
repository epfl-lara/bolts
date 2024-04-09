; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28342 () Bool)

(assert start!28342)

(declare-fun b!290261 () Bool)

(declare-fun res!151783 () Bool)

(declare-fun e!183690 () Bool)

(assert (=> b!290261 (=> (not res!151783) (not e!183690))))

(declare-datatypes ((array!14645 0))(
  ( (array!14646 (arr!6949 (Array (_ BitVec 32) (_ BitVec 64))) (size!7301 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14645)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!290261 (= res!151783 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!290263 () Bool)

(declare-fun res!151780 () Bool)

(assert (=> b!290263 (=> (not res!151780) (not e!183690))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!290263 (= res!151780 (and (= (size!7301 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7301 a!3312))))))

(declare-fun b!290264 () Bool)

(declare-fun e!183688 () Bool)

(declare-fun e!183689 () Bool)

(assert (=> b!290264 (= e!183688 e!183689)))

(declare-fun res!151784 () Bool)

(assert (=> b!290264 (=> (not res!151784) (not e!183689))))

(declare-fun lt!143433 () Bool)

(declare-datatypes ((SeekEntryResult!2109 0))(
  ( (MissingZero!2109 (index!10606 (_ BitVec 32))) (Found!2109 (index!10607 (_ BitVec 32))) (Intermediate!2109 (undefined!2921 Bool) (index!10608 (_ BitVec 32)) (x!28770 (_ BitVec 32))) (Undefined!2109) (MissingVacant!2109 (index!10609 (_ BitVec 32))) )
))
(declare-fun lt!143434 () SeekEntryResult!2109)

(assert (=> b!290264 (= res!151784 (and (or lt!143433 (not (undefined!2921 lt!143434))) (not lt!143433) (= (select (arr!6949 a!3312) (index!10608 lt!143434)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!290264 (= lt!143433 (not (is-Intermediate!2109 lt!143434)))))

(declare-fun b!290265 () Bool)

(declare-fun e!183691 () Bool)

(assert (=> b!290265 (= e!183690 e!183691)))

(declare-fun res!151779 () Bool)

(assert (=> b!290265 (=> (not res!151779) (not e!183691))))

(declare-fun lt!143430 () SeekEntryResult!2109)

(declare-fun lt!143431 () Bool)

(assert (=> b!290265 (= res!151779 (or lt!143431 (= lt!143430 (MissingVacant!2109 i!1256))))))

(assert (=> b!290265 (= lt!143431 (= lt!143430 (MissingZero!2109 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14645 (_ BitVec 32)) SeekEntryResult!2109)

(assert (=> b!290265 (= lt!143430 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!290266 () Bool)

(declare-fun res!151785 () Bool)

(assert (=> b!290266 (=> (not res!151785) (not e!183691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14645 (_ BitVec 32)) Bool)

(assert (=> b!290266 (= res!151785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!290267 () Bool)

(declare-fun res!151778 () Bool)

(assert (=> b!290267 (=> (not res!151778) (not e!183690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!290267 (= res!151778 (validKeyInArray!0 k!2524))))

(declare-fun b!290268 () Bool)

(assert (=> b!290268 (= e!183689 (not (or (bvslt mask!3809 #b00000000000000000000000000000000) (bvsle mask!3809 #b00111111111111111111111111111111))))))

(assert (=> b!290268 (= (index!10608 lt!143434) i!1256)))

(declare-fun b!290262 () Bool)

(assert (=> b!290262 (= e!183691 e!183688)))

(declare-fun res!151782 () Bool)

(assert (=> b!290262 (=> (not res!151782) (not e!183688))))

(assert (=> b!290262 (= res!151782 (and (not lt!143431) (= lt!143430 (MissingVacant!2109 i!1256))))))

(declare-fun lt!143435 () (_ BitVec 32))

(declare-fun lt!143432 () SeekEntryResult!2109)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14645 (_ BitVec 32)) SeekEntryResult!2109)

(assert (=> b!290262 (= lt!143432 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143435 k!2524 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312)) mask!3809))))

(assert (=> b!290262 (= lt!143434 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143435 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290262 (= lt!143435 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!151781 () Bool)

(assert (=> start!28342 (=> (not res!151781) (not e!183690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28342 (= res!151781 (validMask!0 mask!3809))))

(assert (=> start!28342 e!183690))

(assert (=> start!28342 true))

(declare-fun array_inv!4903 (array!14645) Bool)

(assert (=> start!28342 (array_inv!4903 a!3312)))

(assert (= (and start!28342 res!151781) b!290263))

(assert (= (and b!290263 res!151780) b!290267))

(assert (= (and b!290267 res!151778) b!290261))

(assert (= (and b!290261 res!151783) b!290265))

(assert (= (and b!290265 res!151779) b!290266))

(assert (= (and b!290266 res!151785) b!290262))

(assert (= (and b!290262 res!151782) b!290264))

(assert (= (and b!290264 res!151784) b!290268))

(declare-fun m!304411 () Bool)

(assert (=> b!290262 m!304411))

(declare-fun m!304413 () Bool)

(assert (=> b!290262 m!304413))

(declare-fun m!304415 () Bool)

(assert (=> b!290262 m!304415))

(declare-fun m!304417 () Bool)

(assert (=> b!290262 m!304417))

(declare-fun m!304419 () Bool)

(assert (=> b!290261 m!304419))

(declare-fun m!304421 () Bool)

(assert (=> start!28342 m!304421))

(declare-fun m!304423 () Bool)

(assert (=> start!28342 m!304423))

(declare-fun m!304425 () Bool)

(assert (=> b!290266 m!304425))

(declare-fun m!304427 () Bool)

(assert (=> b!290265 m!304427))

(declare-fun m!304429 () Bool)

(assert (=> b!290267 m!304429))

(declare-fun m!304431 () Bool)

(assert (=> b!290264 m!304431))

(push 1)

(assert (not b!290265))

(assert (not b!290262))

(assert (not b!290267))

(assert (not b!290261))

(assert (not b!290266))

(assert (not start!28342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!290377 () Bool)

(declare-fun e!183759 () SeekEntryResult!2109)

(declare-fun e!183760 () SeekEntryResult!2109)

(assert (=> b!290377 (= e!183759 e!183760)))

(declare-fun c!46823 () Bool)

(declare-fun lt!143490 () (_ BitVec 64))

(assert (=> b!290377 (= c!46823 (or (= lt!143490 k!2524) (= (bvadd lt!143490 lt!143490) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!290378 () Bool)

(assert (=> b!290378 (= e!183760 (Intermediate!2109 false lt!143435 #b00000000000000000000000000000000))))

(declare-fun b!290379 () Bool)

(declare-fun e!183762 () Bool)

(declare-fun lt!143491 () SeekEntryResult!2109)

(assert (=> b!290379 (= e!183762 (bvsge (x!28770 lt!143491) #b01111111111111111111111111111110))))

(declare-fun b!290380 () Bool)

(assert (=> b!290380 (and (bvsge (index!10608 lt!143491) #b00000000000000000000000000000000) (bvslt (index!10608 lt!143491) (size!7301 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312)))))))

(declare-fun res!151860 () Bool)

(assert (=> b!290380 (= res!151860 (= (select (arr!6949 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312))) (index!10608 lt!143491)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!183758 () Bool)

(assert (=> b!290380 (=> res!151860 e!183758)))

(declare-fun b!290381 () Bool)

(declare-fun e!183761 () Bool)

(assert (=> b!290381 (= e!183762 e!183761)))

(declare-fun res!151861 () Bool)

(assert (=> b!290381 (= res!151861 (and (is-Intermediate!2109 lt!143491) (not (undefined!2921 lt!143491)) (bvslt (x!28770 lt!143491) #b01111111111111111111111111111110) (bvsge (x!28770 lt!143491) #b00000000000000000000000000000000) (bvsge (x!28770 lt!143491) #b00000000000000000000000000000000)))))

(assert (=> b!290381 (=> (not res!151861) (not e!183761))))

(declare-fun b!290382 () Bool)

(assert (=> b!290382 (and (bvsge (index!10608 lt!143491) #b00000000000000000000000000000000) (bvslt (index!10608 lt!143491) (size!7301 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312)))))))

(assert (=> b!290382 (= e!183758 (= (select (arr!6949 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312))) (index!10608 lt!143491)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66197 () Bool)

(assert (=> d!66197 e!183762))

(declare-fun c!46821 () Bool)

(assert (=> d!66197 (= c!46821 (and (is-Intermediate!2109 lt!143491) (undefined!2921 lt!143491)))))

(assert (=> d!66197 (= lt!143491 e!183759)))

(declare-fun c!46822 () Bool)

(assert (=> d!66197 (= c!46822 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66197 (= lt!143490 (select (arr!6949 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312))) lt!143435))))

(assert (=> d!66197 (validMask!0 mask!3809)))

(assert (=> d!66197 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143435 k!2524 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312)) mask!3809) lt!143491)))

(declare-fun b!290383 () Bool)

(assert (=> b!290383 (and (bvsge (index!10608 lt!143491) #b00000000000000000000000000000000) (bvslt (index!10608 lt!143491) (size!7301 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312)))))))

(declare-fun res!151859 () Bool)

(assert (=> b!290383 (= res!151859 (= (select (arr!6949 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312))) (index!10608 lt!143491)) k!2524))))

(assert (=> b!290383 (=> res!151859 e!183758)))

(assert (=> b!290383 (= e!183761 e!183758)))

(declare-fun b!290384 () Bool)

(assert (=> b!290384 (= e!183759 (Intermediate!2109 true lt!143435 #b00000000000000000000000000000000))))

(declare-fun b!290385 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!290385 (= e!183760 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!143435 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14646 (store (arr!6949 a!3312) i!1256 k!2524) (size!7301 a!3312)) mask!3809))))

(assert (= (and d!66197 c!46822) b!290384))

(assert (= (and d!66197 (not c!46822)) b!290377))

(assert (= (and b!290377 c!46823) b!290378))

(assert (= (and b!290377 (not c!46823)) b!290385))

(assert (= (and d!66197 c!46821) b!290379))

(assert (= (and d!66197 (not c!46821)) b!290381))

(assert (= (and b!290381 res!151861) b!290383))

(assert (= (and b!290383 (not res!151859)) b!290380))

(assert (= (and b!290380 (not res!151860)) b!290382))

(declare-fun m!304495 () Bool)

(assert (=> b!290385 m!304495))

(assert (=> b!290385 m!304495))

(declare-fun m!304497 () Bool)

(assert (=> b!290385 m!304497))

(declare-fun m!304499 () Bool)

(assert (=> b!290382 m!304499))

(assert (=> b!290380 m!304499))

(declare-fun m!304501 () Bool)

(assert (=> d!66197 m!304501))

(assert (=> d!66197 m!304421))

(assert (=> b!290383 m!304499))

(assert (=> b!290262 d!66197))

(declare-fun b!290386 () Bool)

(declare-fun e!183764 () SeekEntryResult!2109)

(declare-fun e!183765 () SeekEntryResult!2109)

(assert (=> b!290386 (= e!183764 e!183765)))

(declare-fun c!46826 () Bool)

(declare-fun lt!143492 () (_ BitVec 64))

(assert (=> b!290386 (= c!46826 (or (= lt!143492 k!2524) (= (bvadd lt!143492 lt!143492) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!290387 () Bool)

(assert (=> b!290387 (= e!183765 (Intermediate!2109 false lt!143435 #b00000000000000000000000000000000))))

(declare-fun b!290388 () Bool)

(declare-fun e!183767 () Bool)

(declare-fun lt!143493 () SeekEntryResult!2109)

(assert (=> b!290388 (= e!183767 (bvsge (x!28770 lt!143493) #b01111111111111111111111111111110))))

(declare-fun b!290389 () Bool)

(assert (=> b!290389 (and (bvsge (index!10608 lt!143493) #b00000000000000000000000000000000) (bvslt (index!10608 lt!143493) (size!7301 a!3312)))))

(declare-fun res!151863 () Bool)

(assert (=> b!290389 (= res!151863 (= (select (arr!6949 a!3312) (index!10608 lt!143493)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!183763 () Bool)

(assert (=> b!290389 (=> res!151863 e!183763)))

(declare-fun b!290390 () Bool)

(declare-fun e!183766 () Bool)

(assert (=> b!290390 (= e!183767 e!183766)))

(declare-fun res!151864 () Bool)

(assert (=> b!290390 (= res!151864 (and (is-Intermediate!2109 lt!143493) (not (undefined!2921 lt!143493)) (bvslt (x!28770 lt!143493) #b01111111111111111111111111111110) (bvsge (x!28770 lt!143493) #b00000000000000000000000000000000) (bvsge (x!28770 lt!143493) #b00000000000000000000000000000000)))))

(assert (=> b!290390 (=> (not res!151864) (not e!183766))))

(declare-fun b!290391 () Bool)

(assert (=> b!290391 (and (bvsge (index!10608 lt!143493) #b00000000000000000000000000000000) (bvslt (index!10608 lt!143493) (size!7301 a!3312)))))

(assert (=> b!290391 (= e!183763 (= (select (arr!6949 a!3312) (index!10608 lt!143493)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66209 () Bool)

(assert (=> d!66209 e!183767))

(declare-fun c!46824 () Bool)

(assert (=> d!66209 (= c!46824 (and (is-Intermediate!2109 lt!143493) (undefined!2921 lt!143493)))))

(assert (=> d!66209 (= lt!143493 e!183764)))

(declare-fun c!46825 () Bool)

(assert (=> d!66209 (= c!46825 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66209 (= lt!143492 (select (arr!6949 a!3312) lt!143435))))

(assert (=> d!66209 (validMask!0 mask!3809)))

(assert (=> d!66209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!143435 k!2524 a!3312 mask!3809) lt!143493)))

(declare-fun b!290392 () Bool)

(assert (=> b!290392 (and (bvsge (index!10608 lt!143493) #b00000000000000000000000000000000) (bvslt (index!10608 lt!143493) (size!7301 a!3312)))))

(declare-fun res!151862 () Bool)

(assert (=> b!290392 (= res!151862 (= (select (arr!6949 a!3312) (index!10608 lt!143493)) k!2524))))

