; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27950 () Bool)

(assert start!27950)

(declare-fun b!286927 () Bool)

(declare-fun res!148976 () Bool)

(declare-fun e!181770 () Bool)

(assert (=> b!286927 (=> (not res!148976) (not e!181770))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14388 0))(
  ( (array!14389 (arr!6825 (Array (_ BitVec 32) (_ BitVec 64))) (size!7177 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14388)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286927 (= res!148976 (and (= (size!7177 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7177 a!3312))))))

(declare-fun b!286928 () Bool)

(declare-fun e!181769 () Bool)

(assert (=> b!286928 (= e!181769 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!1985 0))(
  ( (MissingZero!1985 (index!10110 (_ BitVec 32))) (Found!1985 (index!10111 (_ BitVec 32))) (Intermediate!1985 (undefined!2797 Bool) (index!10112 (_ BitVec 32)) (x!28292 (_ BitVec 32))) (Undefined!1985) (MissingVacant!1985 (index!10113 (_ BitVec 32))) )
))
(declare-fun lt!141340 () SeekEntryResult!1985)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14388 (_ BitVec 32)) SeekEntryResult!1985)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286928 (= lt!141340 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun res!148977 () Bool)

(assert (=> start!27950 (=> (not res!148977) (not e!181770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27950 (= res!148977 (validMask!0 mask!3809))))

(assert (=> start!27950 e!181770))

(assert (=> start!27950 true))

(declare-fun array_inv!4779 (array!14388) Bool)

(assert (=> start!27950 (array_inv!4779 a!3312)))

(declare-fun b!286929 () Bool)

(declare-fun res!148978 () Bool)

(assert (=> b!286929 (=> (not res!148978) (not e!181769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14388 (_ BitVec 32)) Bool)

(assert (=> b!286929 (= res!148978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286930 () Bool)

(declare-fun res!148975 () Bool)

(assert (=> b!286930 (=> (not res!148975) (not e!181770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286930 (= res!148975 (validKeyInArray!0 k!2524))))

(declare-fun b!286931 () Bool)

(declare-fun res!148980 () Bool)

(assert (=> b!286931 (=> (not res!148980) (not e!181770))))

(declare-fun arrayContainsKey!0 (array!14388 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286931 (= res!148980 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!286932 () Bool)

(assert (=> b!286932 (= e!181770 e!181769)))

(declare-fun res!148979 () Bool)

(assert (=> b!286932 (=> (not res!148979) (not e!181769))))

(declare-fun lt!141341 () SeekEntryResult!1985)

(assert (=> b!286932 (= res!148979 (or (= lt!141341 (MissingZero!1985 i!1256)) (= lt!141341 (MissingVacant!1985 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14388 (_ BitVec 32)) SeekEntryResult!1985)

(assert (=> b!286932 (= lt!141341 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!27950 res!148977) b!286927))

(assert (= (and b!286927 res!148976) b!286930))

(assert (= (and b!286930 res!148975) b!286931))

(assert (= (and b!286931 res!148980) b!286932))

(assert (= (and b!286932 res!148979) b!286929))

(assert (= (and b!286929 res!148978) b!286928))

(declare-fun m!301521 () Bool)

(assert (=> b!286932 m!301521))

(declare-fun m!301523 () Bool)

(assert (=> start!27950 m!301523))

(declare-fun m!301525 () Bool)

(assert (=> start!27950 m!301525))

(declare-fun m!301527 () Bool)

(assert (=> b!286930 m!301527))

(declare-fun m!301529 () Bool)

(assert (=> b!286928 m!301529))

(assert (=> b!286928 m!301529))

(declare-fun m!301531 () Bool)

(assert (=> b!286928 m!301531))

(declare-fun m!301533 () Bool)

(assert (=> b!286931 m!301533))

(declare-fun m!301535 () Bool)

(assert (=> b!286929 m!301535))

(push 1)

(assert (not b!286928))

(assert (not b!286931))

(assert (not b!286929))

(assert (not b!286930))

(assert (not start!27950))

(assert (not b!286932))

(check-sat)

