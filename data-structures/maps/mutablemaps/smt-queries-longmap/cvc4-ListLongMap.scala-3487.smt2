; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48410 () Bool)

(assert start!48410)

(declare-fun b!531566 () Bool)

(declare-fun res!327208 () Bool)

(declare-fun e!309610 () Bool)

(assert (=> b!531566 (=> (not res!327208) (not e!309610))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!531566 (= res!327208 (validKeyInArray!0 k!1998))))

(declare-fun b!531567 () Bool)

(declare-fun res!327206 () Bool)

(assert (=> b!531567 (=> (not res!327206) (not e!309610))))

(declare-datatypes ((array!33674 0))(
  ( (array!33675 (arr!16175 (Array (_ BitVec 32) (_ BitVec 64))) (size!16539 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33674)

(declare-fun arrayContainsKey!0 (array!33674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!531567 (= res!327206 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!531568 () Bool)

(declare-fun res!327212 () Bool)

(assert (=> b!531568 (=> (not res!327212) (not e!309610))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!531568 (= res!327212 (and (= (size!16539 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16539 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16539 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!531570 () Bool)

(declare-fun res!327210 () Bool)

(declare-fun e!309608 () Bool)

(assert (=> b!531570 (=> (not res!327210) (not e!309608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33674 (_ BitVec 32)) Bool)

(assert (=> b!531570 (= res!327210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!327209 () Bool)

(assert (=> start!48410 (=> (not res!327209) (not e!309610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48410 (= res!327209 (validMask!0 mask!3216))))

(assert (=> start!48410 e!309610))

(assert (=> start!48410 true))

(declare-fun array_inv!11949 (array!33674) Bool)

(assert (=> start!48410 (array_inv!11949 a!3154)))

(declare-fun b!531569 () Bool)

(assert (=> b!531569 (= e!309610 e!309608)))

(declare-fun res!327207 () Bool)

(assert (=> b!531569 (=> (not res!327207) (not e!309608))))

(declare-datatypes ((SeekEntryResult!4640 0))(
  ( (MissingZero!4640 (index!20784 (_ BitVec 32))) (Found!4640 (index!20785 (_ BitVec 32))) (Intermediate!4640 (undefined!5452 Bool) (index!20786 (_ BitVec 32)) (x!49785 (_ BitVec 32))) (Undefined!4640) (MissingVacant!4640 (index!20787 (_ BitVec 32))) )
))
(declare-fun lt!245035 () SeekEntryResult!4640)

(assert (=> b!531569 (= res!327207 (or (= lt!245035 (MissingZero!4640 i!1153)) (= lt!245035 (MissingVacant!4640 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33674 (_ BitVec 32)) SeekEntryResult!4640)

(assert (=> b!531569 (= lt!245035 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!531571 () Bool)

(assert (=> b!531571 (= e!309608 false)))

(declare-fun lt!245036 () Bool)

(declare-datatypes ((List!10347 0))(
  ( (Nil!10344) (Cons!10343 (h!11283 (_ BitVec 64)) (t!16583 List!10347)) )
))
(declare-fun arrayNoDuplicates!0 (array!33674 (_ BitVec 32) List!10347) Bool)

(assert (=> b!531571 (= lt!245036 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10344))))

(declare-fun b!531572 () Bool)

(declare-fun res!327211 () Bool)

(assert (=> b!531572 (=> (not res!327211) (not e!309610))))

(assert (=> b!531572 (= res!327211 (validKeyInArray!0 (select (arr!16175 a!3154) j!147)))))

(assert (= (and start!48410 res!327209) b!531568))

(assert (= (and b!531568 res!327212) b!531572))

(assert (= (and b!531572 res!327211) b!531566))

(assert (= (and b!531566 res!327208) b!531567))

(assert (= (and b!531567 res!327206) b!531569))

(assert (= (and b!531569 res!327207) b!531570))

(assert (= (and b!531570 res!327210) b!531571))

(declare-fun m!511963 () Bool)

(assert (=> b!531570 m!511963))

(declare-fun m!511965 () Bool)

(assert (=> b!531572 m!511965))

(assert (=> b!531572 m!511965))

(declare-fun m!511967 () Bool)

(assert (=> b!531572 m!511967))

(declare-fun m!511969 () Bool)

(assert (=> b!531569 m!511969))

(declare-fun m!511971 () Bool)

(assert (=> b!531571 m!511971))

(declare-fun m!511973 () Bool)

(assert (=> b!531566 m!511973))

(declare-fun m!511975 () Bool)

(assert (=> start!48410 m!511975))

(declare-fun m!511977 () Bool)

(assert (=> start!48410 m!511977))

(declare-fun m!511979 () Bool)

(assert (=> b!531567 m!511979))

(push 1)

(assert (not b!531572))

(assert (not b!531569))

(assert (not b!531566))

(assert (not start!48410))

(assert (not b!531570))

(assert (not b!531567))

(assert (not b!531571))

(check-sat)

