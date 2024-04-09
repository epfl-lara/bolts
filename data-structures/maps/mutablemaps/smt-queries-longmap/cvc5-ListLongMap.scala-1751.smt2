; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32070 () Bool)

(assert start!32070)

(declare-fun res!174146 () Bool)

(declare-fun e!198487 () Bool)

(assert (=> start!32070 (=> (not res!174146) (not e!198487))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32070 (= res!174146 (validMask!0 mask!3777))))

(assert (=> start!32070 e!198487))

(assert (=> start!32070 true))

(declare-datatypes ((array!16340 0))(
  ( (array!16341 (arr!7729 (Array (_ BitVec 32) (_ BitVec 64))) (size!8081 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16340)

(declare-fun array_inv!5683 (array!16340) Bool)

(assert (=> start!32070 (array_inv!5683 a!3305)))

(declare-fun b!319675 () Bool)

(assert (=> b!319675 (= e!198487 false)))

(declare-fun lt!155849 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!319675 (= lt!155849 (toIndex!0 k!2497 mask!3777))))

(declare-fun b!319676 () Bool)

(declare-fun res!174149 () Bool)

(assert (=> b!319676 (=> (not res!174149) (not e!198487))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2871 0))(
  ( (MissingZero!2871 (index!13660 (_ BitVec 32))) (Found!2871 (index!13661 (_ BitVec 32))) (Intermediate!2871 (undefined!3683 Bool) (index!13662 (_ BitVec 32)) (x!31900 (_ BitVec 32))) (Undefined!2871) (MissingVacant!2871 (index!13663 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16340 (_ BitVec 32)) SeekEntryResult!2871)

(assert (=> b!319676 (= res!174149 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2871 i!1250)))))

(declare-fun b!319677 () Bool)

(declare-fun res!174148 () Bool)

(assert (=> b!319677 (=> (not res!174148) (not e!198487))))

(declare-fun arrayContainsKey!0 (array!16340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319677 (= res!174148 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!319678 () Bool)

(declare-fun res!174150 () Bool)

(assert (=> b!319678 (=> (not res!174150) (not e!198487))))

(assert (=> b!319678 (= res!174150 (and (= (size!8081 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8081 a!3305))))))

(declare-fun b!319679 () Bool)

(declare-fun res!174145 () Bool)

(assert (=> b!319679 (=> (not res!174145) (not e!198487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16340 (_ BitVec 32)) Bool)

(assert (=> b!319679 (= res!174145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!319680 () Bool)

(declare-fun res!174147 () Bool)

(assert (=> b!319680 (=> (not res!174147) (not e!198487))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319680 (= res!174147 (validKeyInArray!0 k!2497))))

(assert (= (and start!32070 res!174146) b!319678))

(assert (= (and b!319678 res!174150) b!319680))

(assert (= (and b!319680 res!174147) b!319677))

(assert (= (and b!319677 res!174148) b!319676))

(assert (= (and b!319676 res!174149) b!319679))

(assert (= (and b!319679 res!174145) b!319675))

(declare-fun m!328207 () Bool)

(assert (=> start!32070 m!328207))

(declare-fun m!328209 () Bool)

(assert (=> start!32070 m!328209))

(declare-fun m!328211 () Bool)

(assert (=> b!319679 m!328211))

(declare-fun m!328213 () Bool)

(assert (=> b!319680 m!328213))

(declare-fun m!328215 () Bool)

(assert (=> b!319677 m!328215))

(declare-fun m!328217 () Bool)

(assert (=> b!319676 m!328217))

(declare-fun m!328219 () Bool)

(assert (=> b!319675 m!328219))

(push 1)

(assert (not b!319675))

(assert (not b!319679))

(assert (not start!32070))

(assert (not b!319680))

(assert (not b!319676))

(assert (not b!319677))

(check-sat)

(pop 1)

