; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44312 () Bool)

(assert start!44312)

(declare-fun b!486997 () Bool)

(declare-fun res!290539 () Bool)

(declare-fun e!286579 () Bool)

(assert (=> b!486997 (=> (not res!290539) (not e!286579))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31523 0))(
  ( (array!31524 (arr!15152 (Array (_ BitVec 32) (_ BitVec 64))) (size!15516 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31523)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486997 (= res!290539 (and (= (size!15516 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15516 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15516 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486998 () Bool)

(declare-fun e!286578 () Bool)

(assert (=> b!486998 (= e!286578 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31523 (_ BitVec 32)) Bool)

(assert (=> b!486998 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14190 0))(
  ( (Unit!14191) )
))
(declare-fun lt!219925 () Unit!14190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14190)

(assert (=> b!486998 (= lt!219925 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!290538 () Bool)

(assert (=> start!44312 (=> (not res!290538) (not e!286579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44312 (= res!290538 (validMask!0 mask!3524))))

(assert (=> start!44312 e!286579))

(assert (=> start!44312 true))

(declare-fun array_inv!10926 (array!31523) Bool)

(assert (=> start!44312 (array_inv!10926 a!3235)))

(declare-fun b!486999 () Bool)

(declare-fun res!290540 () Bool)

(assert (=> b!486999 (=> (not res!290540) (not e!286578))))

(assert (=> b!486999 (= res!290540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487000 () Bool)

(declare-fun res!290537 () Bool)

(assert (=> b!487000 (=> (not res!290537) (not e!286579))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487000 (= res!290537 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487001 () Bool)

(assert (=> b!487001 (= e!286579 e!286578)))

(declare-fun res!290534 () Bool)

(assert (=> b!487001 (=> (not res!290534) (not e!286578))))

(declare-datatypes ((SeekEntryResult!3626 0))(
  ( (MissingZero!3626 (index!16683 (_ BitVec 32))) (Found!3626 (index!16684 (_ BitVec 32))) (Intermediate!3626 (undefined!4438 Bool) (index!16685 (_ BitVec 32)) (x!45833 (_ BitVec 32))) (Undefined!3626) (MissingVacant!3626 (index!16686 (_ BitVec 32))) )
))
(declare-fun lt!219926 () SeekEntryResult!3626)

(assert (=> b!487001 (= res!290534 (or (= lt!219926 (MissingZero!3626 i!1204)) (= lt!219926 (MissingVacant!3626 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31523 (_ BitVec 32)) SeekEntryResult!3626)

(assert (=> b!487001 (= lt!219926 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487002 () Bool)

(declare-fun res!290535 () Bool)

(assert (=> b!487002 (=> (not res!290535) (not e!286579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487002 (= res!290535 (validKeyInArray!0 (select (arr!15152 a!3235) j!176)))))

(declare-fun b!487003 () Bool)

(declare-fun res!290536 () Bool)

(assert (=> b!487003 (=> (not res!290536) (not e!286579))))

(assert (=> b!487003 (= res!290536 (validKeyInArray!0 k!2280))))

(declare-fun b!487004 () Bool)

(declare-fun res!290533 () Bool)

(assert (=> b!487004 (=> (not res!290533) (not e!286578))))

(declare-datatypes ((List!9363 0))(
  ( (Nil!9360) (Cons!9359 (h!10215 (_ BitVec 64)) (t!15599 List!9363)) )
))
(declare-fun arrayNoDuplicates!0 (array!31523 (_ BitVec 32) List!9363) Bool)

(assert (=> b!487004 (= res!290533 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9360))))

(assert (= (and start!44312 res!290538) b!486997))

(assert (= (and b!486997 res!290539) b!487002))

(assert (= (and b!487002 res!290535) b!487003))

(assert (= (and b!487003 res!290536) b!487000))

(assert (= (and b!487000 res!290537) b!487001))

(assert (= (and b!487001 res!290534) b!486999))

(assert (= (and b!486999 res!290540) b!487004))

(assert (= (and b!487004 res!290533) b!486998))

(declare-fun m!466875 () Bool)

(assert (=> start!44312 m!466875))

(declare-fun m!466877 () Bool)

(assert (=> start!44312 m!466877))

(declare-fun m!466879 () Bool)

(assert (=> b!487004 m!466879))

(declare-fun m!466881 () Bool)

(assert (=> b!487003 m!466881))

(declare-fun m!466883 () Bool)

(assert (=> b!487000 m!466883))

(declare-fun m!466885 () Bool)

(assert (=> b!486999 m!466885))

(declare-fun m!466887 () Bool)

(assert (=> b!487002 m!466887))

(assert (=> b!487002 m!466887))

(declare-fun m!466889 () Bool)

(assert (=> b!487002 m!466889))

(declare-fun m!466891 () Bool)

(assert (=> b!487001 m!466891))

(declare-fun m!466893 () Bool)

(assert (=> b!486998 m!466893))

(declare-fun m!466895 () Bool)

(assert (=> b!486998 m!466895))

(push 1)

