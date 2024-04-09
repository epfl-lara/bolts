; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32004 () Bool)

(assert start!32004)

(declare-fun b!319304 () Bool)

(declare-fun res!173849 () Bool)

(declare-fun e!198324 () Bool)

(assert (=> b!319304 (=> (not res!173849) (not e!198324))))

(declare-datatypes ((array!16307 0))(
  ( (array!16308 (arr!7714 (Array (_ BitVec 32) (_ BitVec 64))) (size!8066 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16307)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2856 0))(
  ( (MissingZero!2856 (index!13600 (_ BitVec 32))) (Found!2856 (index!13601 (_ BitVec 32))) (Intermediate!2856 (undefined!3668 Bool) (index!13602 (_ BitVec 32)) (x!31845 (_ BitVec 32))) (Undefined!2856) (MissingVacant!2856 (index!13603 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16307 (_ BitVec 32)) SeekEntryResult!2856)

(assert (=> b!319304 (= res!173849 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2856 i!1250)))))

(declare-fun res!173850 () Bool)

(assert (=> start!32004 (=> (not res!173850) (not e!198324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32004 (= res!173850 (validMask!0 mask!3777))))

(assert (=> start!32004 e!198324))

(assert (=> start!32004 true))

(declare-fun array_inv!5668 (array!16307) Bool)

(assert (=> start!32004 (array_inv!5668 a!3305)))

(declare-fun b!319305 () Bool)

(declare-fun res!173846 () Bool)

(assert (=> b!319305 (=> (not res!173846) (not e!198324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319305 (= res!173846 (validKeyInArray!0 k!2497))))

(declare-fun b!319306 () Bool)

(assert (=> b!319306 (= e!198324 (bvsgt #b00000000000000000000000000000000 (size!8066 a!3305)))))

(declare-fun b!319307 () Bool)

(declare-fun res!173847 () Bool)

(assert (=> b!319307 (=> (not res!173847) (not e!198324))))

(declare-fun arrayContainsKey!0 (array!16307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319307 (= res!173847 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319308 () Bool)

(declare-fun res!173848 () Bool)

(assert (=> b!319308 (=> (not res!173848) (not e!198324))))

(assert (=> b!319308 (= res!173848 (and (= (size!8066 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8066 a!3305))))))

(assert (= (and start!32004 res!173850) b!319308))

(assert (= (and b!319308 res!173848) b!319305))

(assert (= (and b!319305 res!173846) b!319307))

(assert (= (and b!319307 res!173847) b!319304))

(assert (= (and b!319304 res!173849) b!319306))

(declare-fun m!327937 () Bool)

(assert (=> b!319304 m!327937))

(declare-fun m!327939 () Bool)

(assert (=> start!32004 m!327939))

(declare-fun m!327941 () Bool)

(assert (=> start!32004 m!327941))

(declare-fun m!327943 () Bool)

(assert (=> b!319305 m!327943))

(declare-fun m!327945 () Bool)

(assert (=> b!319307 m!327945))

(push 1)

(assert (not b!319304))

(assert (not start!32004))

