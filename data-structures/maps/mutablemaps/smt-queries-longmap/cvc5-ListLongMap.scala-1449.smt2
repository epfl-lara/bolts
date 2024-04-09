; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27946 () Bool)

(assert start!27946)

(declare-fun b!286891 () Bool)

(declare-fun e!181753 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!286891 (= e!181753 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!1983 0))(
  ( (MissingZero!1983 (index!10102 (_ BitVec 32))) (Found!1983 (index!10103 (_ BitVec 32))) (Intermediate!1983 (undefined!2795 Bool) (index!10104 (_ BitVec 32)) (x!28290 (_ BitVec 32))) (Undefined!1983) (MissingVacant!1983 (index!10105 (_ BitVec 32))) )
))
(declare-fun lt!141328 () SeekEntryResult!1983)

(declare-fun k!2524 () (_ BitVec 64))

(declare-datatypes ((array!14384 0))(
  ( (array!14385 (arr!6823 (Array (_ BitVec 32) (_ BitVec 64))) (size!7175 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14384)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14384 (_ BitVec 32)) SeekEntryResult!1983)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!286891 (= lt!141328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun res!148940 () Bool)

(declare-fun e!181752 () Bool)

(assert (=> start!27946 (=> (not res!148940) (not e!181752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27946 (= res!148940 (validMask!0 mask!3809))))

(assert (=> start!27946 e!181752))

(assert (=> start!27946 true))

(declare-fun array_inv!4777 (array!14384) Bool)

(assert (=> start!27946 (array_inv!4777 a!3312)))

(declare-fun b!286892 () Bool)

(assert (=> b!286892 (= e!181752 e!181753)))

(declare-fun res!148942 () Bool)

(assert (=> b!286892 (=> (not res!148942) (not e!181753))))

(declare-fun lt!141329 () SeekEntryResult!1983)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!286892 (= res!148942 (or (= lt!141329 (MissingZero!1983 i!1256)) (= lt!141329 (MissingVacant!1983 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14384 (_ BitVec 32)) SeekEntryResult!1983)

(assert (=> b!286892 (= lt!141329 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!286893 () Bool)

(declare-fun res!148943 () Bool)

(assert (=> b!286893 (=> (not res!148943) (not e!181752))))

(assert (=> b!286893 (= res!148943 (and (= (size!7175 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7175 a!3312))))))

(declare-fun b!286894 () Bool)

(declare-fun res!148939 () Bool)

(assert (=> b!286894 (=> (not res!148939) (not e!181752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!286894 (= res!148939 (validKeyInArray!0 k!2524))))

(declare-fun b!286895 () Bool)

(declare-fun res!148941 () Bool)

(assert (=> b!286895 (=> (not res!148941) (not e!181753))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14384 (_ BitVec 32)) Bool)

(assert (=> b!286895 (= res!148941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!286896 () Bool)

(declare-fun res!148944 () Bool)

(assert (=> b!286896 (=> (not res!148944) (not e!181752))))

(declare-fun arrayContainsKey!0 (array!14384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!286896 (= res!148944 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!27946 res!148940) b!286893))

(assert (= (and b!286893 res!148943) b!286894))

(assert (= (and b!286894 res!148939) b!286896))

(assert (= (and b!286896 res!148944) b!286892))

(assert (= (and b!286892 res!148942) b!286895))

(assert (= (and b!286895 res!148941) b!286891))

(declare-fun m!301489 () Bool)

(assert (=> b!286891 m!301489))

(assert (=> b!286891 m!301489))

(declare-fun m!301491 () Bool)

(assert (=> b!286891 m!301491))

(declare-fun m!301493 () Bool)

(assert (=> b!286892 m!301493))

(declare-fun m!301495 () Bool)

(assert (=> b!286896 m!301495))

(declare-fun m!301497 () Bool)

(assert (=> b!286894 m!301497))

(declare-fun m!301499 () Bool)

(assert (=> b!286895 m!301499))

(declare-fun m!301501 () Bool)

(assert (=> start!27946 m!301501))

(declare-fun m!301503 () Bool)

(assert (=> start!27946 m!301503))

(push 1)

(assert (not b!286894))

