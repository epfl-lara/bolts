; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28258 () Bool)

(assert start!28258)

(declare-fun b!289289 () Bool)

(declare-fun res!150952 () Bool)

(declare-fun e!183165 () Bool)

(assert (=> b!289289 (=> (not res!150952) (not e!183165))))

(declare-datatypes ((array!14561 0))(
  ( (array!14562 (arr!6907 (Array (_ BitVec 32) (_ BitVec 64))) (size!7259 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14561)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289289 (= res!150952 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289290 () Bool)

(declare-fun res!150953 () Bool)

(assert (=> b!289290 (=> (not res!150953) (not e!183165))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!289290 (= res!150953 (and (= (size!7259 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7259 a!3312))))))

(declare-fun b!289291 () Bool)

(declare-fun e!183169 () Bool)

(assert (=> b!289291 (= e!183169 (not true))))

(declare-datatypes ((SeekEntryResult!2067 0))(
  ( (MissingZero!2067 (index!10438 (_ BitVec 32))) (Found!2067 (index!10439 (_ BitVec 32))) (Intermediate!2067 (undefined!2879 Bool) (index!10440 (_ BitVec 32)) (x!28616 (_ BitVec 32))) (Undefined!2067) (MissingVacant!2067 (index!10441 (_ BitVec 32))) )
))
(declare-fun lt!142777 () SeekEntryResult!2067)

(assert (=> b!289291 (and (= (select (arr!6907 a!3312) (index!10440 lt!142777)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10440 lt!142777) i!1256))))

(declare-fun b!289292 () Bool)

(declare-fun e!183166 () Bool)

(assert (=> b!289292 (= e!183166 e!183169)))

(declare-fun res!150950 () Bool)

(assert (=> b!289292 (=> (not res!150950) (not e!183169))))

(declare-fun lt!142776 () Bool)

(assert (=> b!289292 (= res!150950 (and (or lt!142776 (not (undefined!2879 lt!142777))) (or lt!142776 (not (= (select (arr!6907 a!3312) (index!10440 lt!142777)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142776 (not (= (select (arr!6907 a!3312) (index!10440 lt!142777)) k!2524))) (not lt!142776)))))

(assert (=> b!289292 (= lt!142776 (not (is-Intermediate!2067 lt!142777)))))

(declare-fun b!289293 () Bool)

(declare-fun res!150956 () Bool)

(declare-fun e!183168 () Bool)

(assert (=> b!289293 (=> (not res!150956) (not e!183168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14561 (_ BitVec 32)) Bool)

(assert (=> b!289293 (= res!150956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289295 () Bool)

(declare-fun res!150951 () Bool)

(assert (=> b!289295 (=> (not res!150951) (not e!183165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289295 (= res!150951 (validKeyInArray!0 k!2524))))

(declare-fun b!289296 () Bool)

(assert (=> b!289296 (= e!183168 e!183166)))

(declare-fun res!150957 () Bool)

(assert (=> b!289296 (=> (not res!150957) (not e!183166))))

(declare-fun lt!142775 () Bool)

(assert (=> b!289296 (= res!150957 lt!142775)))

(declare-fun lt!142773 () (_ BitVec 32))

(declare-fun lt!142774 () SeekEntryResult!2067)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14561 (_ BitVec 32)) SeekEntryResult!2067)

(assert (=> b!289296 (= lt!142774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142773 k!2524 (array!14562 (store (arr!6907 a!3312) i!1256 k!2524) (size!7259 a!3312)) mask!3809))))

(assert (=> b!289296 (= lt!142777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142773 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289296 (= lt!142773 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!150955 () Bool)

(assert (=> start!28258 (=> (not res!150955) (not e!183165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28258 (= res!150955 (validMask!0 mask!3809))))

(assert (=> start!28258 e!183165))

(assert (=> start!28258 true))

(declare-fun array_inv!4861 (array!14561) Bool)

(assert (=> start!28258 (array_inv!4861 a!3312)))

(declare-fun b!289294 () Bool)

(assert (=> b!289294 (= e!183165 e!183168)))

(declare-fun res!150954 () Bool)

(assert (=> b!289294 (=> (not res!150954) (not e!183168))))

(declare-fun lt!142778 () SeekEntryResult!2067)

(assert (=> b!289294 (= res!150954 (or lt!142775 (= lt!142778 (MissingVacant!2067 i!1256))))))

(assert (=> b!289294 (= lt!142775 (= lt!142778 (MissingZero!2067 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14561 (_ BitVec 32)) SeekEntryResult!2067)

(assert (=> b!289294 (= lt!142778 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28258 res!150955) b!289290))

(assert (= (and b!289290 res!150953) b!289295))

(assert (= (and b!289295 res!150951) b!289289))

(assert (= (and b!289289 res!150952) b!289294))

(assert (= (and b!289294 res!150954) b!289293))

(assert (= (and b!289293 res!150956) b!289296))

(assert (= (and b!289296 res!150957) b!289292))

(assert (= (and b!289292 res!150950) b!289291))

(declare-fun m!303487 () Bool)

(assert (=> b!289293 m!303487))

(declare-fun m!303489 () Bool)

(assert (=> b!289295 m!303489))

(declare-fun m!303491 () Bool)

(assert (=> b!289294 m!303491))

(declare-fun m!303493 () Bool)

(assert (=> start!28258 m!303493))

(declare-fun m!303495 () Bool)

(assert (=> start!28258 m!303495))

(declare-fun m!303497 () Bool)

(assert (=> b!289296 m!303497))

(declare-fun m!303499 () Bool)

(assert (=> b!289296 m!303499))

(declare-fun m!303501 () Bool)

(assert (=> b!289296 m!303501))

(declare-fun m!303503 () Bool)

(assert (=> b!289296 m!303503))

(declare-fun m!303505 () Bool)

(assert (=> b!289292 m!303505))

(assert (=> b!289291 m!303505))

(declare-fun m!303507 () Bool)

(assert (=> b!289289 m!303507))

(push 1)

