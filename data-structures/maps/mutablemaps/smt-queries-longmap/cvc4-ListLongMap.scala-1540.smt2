; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29176 () Bool)

(assert start!29176)

(declare-fun res!155820 () Bool)

(declare-fun e!187030 () Bool)

(assert (=> start!29176 (=> (not res!155820) (not e!187030))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29176 (= res!155820 (validMask!0 mask!3809))))

(assert (=> start!29176 e!187030))

(assert (=> start!29176 true))

(declare-datatypes ((array!14976 0))(
  ( (array!14977 (arr!7098 (Array (_ BitVec 32) (_ BitVec 64))) (size!7450 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14976)

(declare-fun array_inv!5052 (array!14976) Bool)

(assert (=> start!29176 (array_inv!5052 a!3312)))

(declare-fun b!295894 () Bool)

(declare-fun res!155822 () Bool)

(declare-fun e!187033 () Bool)

(assert (=> b!295894 (=> (not res!155822) (not e!187033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14976 (_ BitVec 32)) Bool)

(assert (=> b!295894 (= res!155822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!295895 () Bool)

(assert (=> b!295895 (= e!187030 e!187033)))

(declare-fun res!155819 () Bool)

(assert (=> b!295895 (=> (not res!155819) (not e!187033))))

(declare-fun lt!146903 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2258 0))(
  ( (MissingZero!2258 (index!11202 (_ BitVec 32))) (Found!2258 (index!11203 (_ BitVec 32))) (Intermediate!2258 (undefined!3070 Bool) (index!11204 (_ BitVec 32)) (x!29379 (_ BitVec 32))) (Undefined!2258) (MissingVacant!2258 (index!11205 (_ BitVec 32))) )
))
(declare-fun lt!146900 () SeekEntryResult!2258)

(assert (=> b!295895 (= res!155819 (or lt!146903 (= lt!146900 (MissingVacant!2258 i!1256))))))

(assert (=> b!295895 (= lt!146903 (= lt!146900 (MissingZero!2258 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14976 (_ BitVec 32)) SeekEntryResult!2258)

(assert (=> b!295895 (= lt!146900 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!295896 () Bool)

(declare-fun res!155816 () Bool)

(assert (=> b!295896 (=> (not res!155816) (not e!187030))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295896 (= res!155816 (validKeyInArray!0 k!2524))))

(declare-fun b!295897 () Bool)

(declare-fun e!187031 () Bool)

(declare-fun e!187032 () Bool)

(assert (=> b!295897 (= e!187031 e!187032)))

(declare-fun res!155823 () Bool)

(assert (=> b!295897 (=> (not res!155823) (not e!187032))))

(declare-fun lt!146899 () SeekEntryResult!2258)

(declare-fun lt!146901 () Bool)

(assert (=> b!295897 (= res!155823 (and (or lt!146901 (not (undefined!3070 lt!146899))) (or lt!146901 (not (= (select (arr!7098 a!3312) (index!11204 lt!146899)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146901 (not (= (select (arr!7098 a!3312) (index!11204 lt!146899)) k!2524))) (not lt!146901)))))

(assert (=> b!295897 (= lt!146901 (not (is-Intermediate!2258 lt!146899)))))

(declare-fun b!295898 () Bool)

(assert (=> b!295898 (= e!187033 e!187031)))

(declare-fun res!155818 () Bool)

(assert (=> b!295898 (=> (not res!155818) (not e!187031))))

(assert (=> b!295898 (= res!155818 lt!146903)))

(declare-fun lt!146898 () (_ BitVec 32))

(declare-fun lt!146902 () SeekEntryResult!2258)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14976 (_ BitVec 32)) SeekEntryResult!2258)

(assert (=> b!295898 (= lt!146902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146898 k!2524 (array!14977 (store (arr!7098 a!3312) i!1256 k!2524) (size!7450 a!3312)) mask!3809))))

(assert (=> b!295898 (= lt!146899 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146898 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295898 (= lt!146898 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!295899 () Bool)

(declare-fun res!155817 () Bool)

(assert (=> b!295899 (=> (not res!155817) (not e!187030))))

(assert (=> b!295899 (= res!155817 (and (= (size!7450 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7450 a!3312))))))

(declare-fun b!295900 () Bool)

(declare-fun res!155821 () Bool)

(assert (=> b!295900 (=> (not res!155821) (not e!187030))))

(declare-fun arrayContainsKey!0 (array!14976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295900 (= res!155821 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295901 () Bool)

(assert (=> b!295901 (= e!187032 (not true))))

(assert (=> b!295901 (and (= (select (arr!7098 a!3312) (index!11204 lt!146899)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11204 lt!146899) i!1256))))

(assert (= (and start!29176 res!155820) b!295899))

(assert (= (and b!295899 res!155817) b!295896))

(assert (= (and b!295896 res!155816) b!295900))

(assert (= (and b!295900 res!155821) b!295895))

(assert (= (and b!295895 res!155819) b!295894))

(assert (= (and b!295894 res!155822) b!295898))

(assert (= (and b!295898 res!155818) b!295897))

(assert (= (and b!295897 res!155823) b!295901))

(declare-fun m!308989 () Bool)

(assert (=> b!295896 m!308989))

(declare-fun m!308991 () Bool)

(assert (=> b!295900 m!308991))

(declare-fun m!308993 () Bool)

(assert (=> b!295897 m!308993))

(declare-fun m!308995 () Bool)

(assert (=> b!295895 m!308995))

(assert (=> b!295901 m!308993))

(declare-fun m!308997 () Bool)

(assert (=> start!29176 m!308997))

(declare-fun m!308999 () Bool)

(assert (=> start!29176 m!308999))

(declare-fun m!309001 () Bool)

(assert (=> b!295898 m!309001))

(declare-fun m!309003 () Bool)

(assert (=> b!295898 m!309003))

(declare-fun m!309005 () Bool)

(assert (=> b!295898 m!309005))

(declare-fun m!309007 () Bool)

(assert (=> b!295898 m!309007))

(declare-fun m!309009 () Bool)

(assert (=> b!295894 m!309009))

(push 1)

