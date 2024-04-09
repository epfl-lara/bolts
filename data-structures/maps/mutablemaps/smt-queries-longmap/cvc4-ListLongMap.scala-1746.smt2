; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32008 () Bool)

(assert start!32008)

(declare-fun b!319334 () Bool)

(declare-fun e!198337 () Bool)

(declare-datatypes ((array!16311 0))(
  ( (array!16312 (arr!7716 (Array (_ BitVec 32) (_ BitVec 64))) (size!8068 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16311)

(assert (=> b!319334 (= e!198337 (bvsgt #b00000000000000000000000000000000 (size!8068 a!3305)))))

(declare-fun b!319335 () Bool)

(declare-fun res!173876 () Bool)

(assert (=> b!319335 (=> (not res!173876) (not e!198337))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319335 (= res!173876 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!173877 () Bool)

(assert (=> start!32008 (=> (not res!173877) (not e!198337))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32008 (= res!173877 (validMask!0 mask!3777))))

(assert (=> start!32008 e!198337))

(assert (=> start!32008 true))

(declare-fun array_inv!5670 (array!16311) Bool)

(assert (=> start!32008 (array_inv!5670 a!3305)))

(declare-fun b!319336 () Bool)

(declare-fun res!173879 () Bool)

(assert (=> b!319336 (=> (not res!173879) (not e!198337))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319336 (= res!173879 (validKeyInArray!0 k!2497))))

(declare-fun b!319337 () Bool)

(declare-fun res!173880 () Bool)

(assert (=> b!319337 (=> (not res!173880) (not e!198337))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319337 (= res!173880 (and (= (size!8068 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8068 a!3305))))))

(declare-fun b!319338 () Bool)

(declare-fun res!173878 () Bool)

(assert (=> b!319338 (=> (not res!173878) (not e!198337))))

(declare-datatypes ((SeekEntryResult!2858 0))(
  ( (MissingZero!2858 (index!13608 (_ BitVec 32))) (Found!2858 (index!13609 (_ BitVec 32))) (Intermediate!2858 (undefined!3670 Bool) (index!13610 (_ BitVec 32)) (x!31847 (_ BitVec 32))) (Undefined!2858) (MissingVacant!2858 (index!13611 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16311 (_ BitVec 32)) SeekEntryResult!2858)

(assert (=> b!319338 (= res!173878 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2858 i!1250)))))

(assert (= (and start!32008 res!173877) b!319337))

(assert (= (and b!319337 res!173880) b!319336))

(assert (= (and b!319336 res!173879) b!319335))

(assert (= (and b!319335 res!173876) b!319338))

(assert (= (and b!319338 res!173878) b!319334))

(declare-fun m!327957 () Bool)

(assert (=> b!319335 m!327957))

(declare-fun m!327959 () Bool)

(assert (=> start!32008 m!327959))

(declare-fun m!327961 () Bool)

(assert (=> start!32008 m!327961))

(declare-fun m!327963 () Bool)

(assert (=> b!319336 m!327963))

(declare-fun m!327965 () Bool)

(assert (=> b!319338 m!327965))

(push 1)

(assert (not b!319338))

(assert (not b!319336))

(assert (not b!319335))

(assert (not start!32008))

(check-sat)

