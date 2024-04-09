; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32010 () Bool)

(assert start!32010)

(declare-fun b!319351 () Bool)

(declare-fun res!173896 () Bool)

(declare-fun e!198343 () Bool)

(assert (=> b!319351 (=> (not res!173896) (not e!198343))))

(declare-datatypes ((array!16313 0))(
  ( (array!16314 (arr!7717 (Array (_ BitVec 32) (_ BitVec 64))) (size!8069 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16313)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319351 (= res!173896 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319352 () Bool)

(declare-fun res!173893 () Bool)

(assert (=> b!319352 (=> (not res!173893) (not e!198343))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319352 (= res!173893 (and (= (size!8069 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8069 a!3305))))))

(declare-fun b!319353 () Bool)

(declare-fun res!173895 () Bool)

(assert (=> b!319353 (=> (not res!173895) (not e!198343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16313 (_ BitVec 32)) Bool)

(assert (=> b!319353 (= res!173895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319354 () Bool)

(declare-fun res!173897 () Bool)

(assert (=> b!319354 (=> (not res!173897) (not e!198343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319354 (= res!173897 (validKeyInArray!0 k!2497))))

(declare-fun b!319355 () Bool)

(declare-fun res!173894 () Bool)

(assert (=> b!319355 (=> (not res!173894) (not e!198343))))

(declare-datatypes ((SeekEntryResult!2859 0))(
  ( (MissingZero!2859 (index!13612 (_ BitVec 32))) (Found!2859 (index!13613 (_ BitVec 32))) (Intermediate!2859 (undefined!3671 Bool) (index!13614 (_ BitVec 32)) (x!31856 (_ BitVec 32))) (Undefined!2859) (MissingVacant!2859 (index!13615 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16313 (_ BitVec 32)) SeekEntryResult!2859)

(assert (=> b!319355 (= res!173894 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2859 i!1250)))))

(declare-fun b!319356 () Bool)

(assert (=> b!319356 (= e!198343 (bvslt mask!3777 #b00000000000000000000000000000000))))

(declare-fun res!173898 () Bool)

(assert (=> start!32010 (=> (not res!173898) (not e!198343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32010 (= res!173898 (validMask!0 mask!3777))))

(assert (=> start!32010 e!198343))

(assert (=> start!32010 true))

(declare-fun array_inv!5671 (array!16313) Bool)

(assert (=> start!32010 (array_inv!5671 a!3305)))

(assert (= (and start!32010 res!173898) b!319352))

(assert (= (and b!319352 res!173893) b!319354))

(assert (= (and b!319354 res!173897) b!319351))

(assert (= (and b!319351 res!173896) b!319355))

(assert (= (and b!319355 res!173894) b!319353))

(assert (= (and b!319353 res!173895) b!319356))

(declare-fun m!327967 () Bool)

(assert (=> b!319353 m!327967))

(declare-fun m!327969 () Bool)

(assert (=> b!319351 m!327969))

(declare-fun m!327971 () Bool)

(assert (=> start!32010 m!327971))

(declare-fun m!327973 () Bool)

(assert (=> start!32010 m!327973))

(declare-fun m!327975 () Bool)

(assert (=> b!319355 m!327975))

(declare-fun m!327977 () Bool)

(assert (=> b!319354 m!327977))

(push 1)

(assert (not b!319353))

(assert (not start!32010))

(assert (not b!319355))

