; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28228 () Bool)

(assert start!28228)

(declare-fun b!288929 () Bool)

(declare-fun e!182940 () Bool)

(declare-fun e!182941 () Bool)

(assert (=> b!288929 (= e!182940 e!182941)))

(declare-fun res!150593 () Bool)

(assert (=> b!288929 (=> (not res!150593) (not e!182941))))

(declare-datatypes ((SeekEntryResult!2052 0))(
  ( (MissingZero!2052 (index!10378 (_ BitVec 32))) (Found!2052 (index!10379 (_ BitVec 32))) (Intermediate!2052 (undefined!2864 Bool) (index!10380 (_ BitVec 32)) (x!28561 (_ BitVec 32))) (Undefined!2052) (MissingVacant!2052 (index!10381 (_ BitVec 32))) )
))
(declare-fun lt!142507 () SeekEntryResult!2052)

(declare-datatypes ((array!14531 0))(
  ( (array!14532 (arr!6892 (Array (_ BitVec 32) (_ BitVec 64))) (size!7244 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14531)

(declare-fun lt!142505 () Bool)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!288929 (= res!150593 (and (or lt!142505 (not (undefined!2864 lt!142507))) (or lt!142505 (not (= (select (arr!6892 a!3312) (index!10380 lt!142507)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142505 (not (= (select (arr!6892 a!3312) (index!10380 lt!142507)) k!2524))) (not lt!142505)))))

(assert (=> b!288929 (= lt!142505 (not (is-Intermediate!2052 lt!142507)))))

(declare-fun b!288930 () Bool)

(declare-fun res!150596 () Bool)

(declare-fun e!182943 () Bool)

(assert (=> b!288930 (=> (not res!150596) (not e!182943))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14531 (_ BitVec 32)) Bool)

(assert (=> b!288930 (= res!150596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!288931 () Bool)

(declare-fun res!150591 () Bool)

(declare-fun e!182944 () Bool)

(assert (=> b!288931 (=> (not res!150591) (not e!182944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!288931 (= res!150591 (validKeyInArray!0 k!2524))))

(declare-fun b!288932 () Bool)

(assert (=> b!288932 (= e!182943 e!182940)))

(declare-fun res!150590 () Bool)

(assert (=> b!288932 (=> (not res!150590) (not e!182940))))

(declare-fun lt!142503 () Bool)

(assert (=> b!288932 (= res!150590 lt!142503)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142504 () (_ BitVec 32))

(declare-fun lt!142506 () SeekEntryResult!2052)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14531 (_ BitVec 32)) SeekEntryResult!2052)

(assert (=> b!288932 (= lt!142506 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142504 k!2524 (array!14532 (store (arr!6892 a!3312) i!1256 k!2524) (size!7244 a!3312)) mask!3809))))

(assert (=> b!288932 (= lt!142507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142504 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!288932 (= lt!142504 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!288933 () Bool)

(declare-fun res!150594 () Bool)

(assert (=> b!288933 (=> (not res!150594) (not e!182944))))

(declare-fun arrayContainsKey!0 (array!14531 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!288933 (= res!150594 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!150592 () Bool)

(assert (=> start!28228 (=> (not res!150592) (not e!182944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28228 (= res!150592 (validMask!0 mask!3809))))

(assert (=> start!28228 e!182944))

(assert (=> start!28228 true))

(declare-fun array_inv!4846 (array!14531) Bool)

(assert (=> start!28228 (array_inv!4846 a!3312)))

(declare-fun b!288934 () Bool)

(assert (=> b!288934 (= e!182944 e!182943)))

(declare-fun res!150595 () Bool)

(assert (=> b!288934 (=> (not res!150595) (not e!182943))))

(declare-fun lt!142508 () SeekEntryResult!2052)

(assert (=> b!288934 (= res!150595 (or lt!142503 (= lt!142508 (MissingVacant!2052 i!1256))))))

(assert (=> b!288934 (= lt!142503 (= lt!142508 (MissingZero!2052 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14531 (_ BitVec 32)) SeekEntryResult!2052)

(assert (=> b!288934 (= lt!142508 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!288935 () Bool)

(assert (=> b!288935 (= e!182941 (not true))))

(assert (=> b!288935 (and (= (select (arr!6892 a!3312) (index!10380 lt!142507)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10380 lt!142507) i!1256))))

(declare-fun b!288936 () Bool)

(declare-fun res!150597 () Bool)

(assert (=> b!288936 (=> (not res!150597) (not e!182944))))

(assert (=> b!288936 (= res!150597 (and (= (size!7244 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7244 a!3312))))))

(assert (= (and start!28228 res!150592) b!288936))

(assert (= (and b!288936 res!150597) b!288931))

(assert (= (and b!288931 res!150591) b!288933))

(assert (= (and b!288933 res!150594) b!288934))

(assert (= (and b!288934 res!150595) b!288930))

(assert (= (and b!288930 res!150596) b!288932))

(assert (= (and b!288932 res!150590) b!288929))

(assert (= (and b!288929 res!150593) b!288935))

(declare-fun m!303157 () Bool)

(assert (=> start!28228 m!303157))

(declare-fun m!303159 () Bool)

(assert (=> start!28228 m!303159))

(declare-fun m!303161 () Bool)

(assert (=> b!288929 m!303161))

(declare-fun m!303163 () Bool)

(assert (=> b!288932 m!303163))

(declare-fun m!303165 () Bool)

(assert (=> b!288932 m!303165))

(declare-fun m!303167 () Bool)

(assert (=> b!288932 m!303167))

(declare-fun m!303169 () Bool)

(assert (=> b!288932 m!303169))

(declare-fun m!303171 () Bool)

(assert (=> b!288931 m!303171))

(declare-fun m!303173 () Bool)

(assert (=> b!288930 m!303173))

(assert (=> b!288935 m!303161))

(declare-fun m!303175 () Bool)

(assert (=> b!288934 m!303175))

(declare-fun m!303177 () Bool)

(assert (=> b!288933 m!303177))

(push 1)

