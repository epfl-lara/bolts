; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44318 () Bool)

(assert start!44318)

(declare-fun b!487070 () Bool)

(declare-fun res!290612 () Bool)

(declare-fun e!286605 () Bool)

(assert (=> b!487070 (=> (not res!290612) (not e!286605))))

(declare-datatypes ((array!31529 0))(
  ( (array!31530 (arr!15155 (Array (_ BitVec 32) (_ BitVec 64))) (size!15519 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31529)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487070 (= res!290612 (validKeyInArray!0 (select (arr!15155 a!3235) j!176)))))

(declare-fun b!487071 () Bool)

(declare-fun res!290608 () Bool)

(assert (=> b!487071 (=> (not res!290608) (not e!286605))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487071 (= res!290608 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487072 () Bool)

(declare-fun res!290607 () Bool)

(assert (=> b!487072 (=> (not res!290607) (not e!286605))))

(assert (=> b!487072 (= res!290607 (validKeyInArray!0 k!2280))))

(declare-fun b!487073 () Bool)

(declare-fun e!286606 () Bool)

(assert (=> b!487073 (= e!286605 e!286606)))

(declare-fun res!290606 () Bool)

(assert (=> b!487073 (=> (not res!290606) (not e!286606))))

(declare-datatypes ((SeekEntryResult!3629 0))(
  ( (MissingZero!3629 (index!16695 (_ BitVec 32))) (Found!3629 (index!16696 (_ BitVec 32))) (Intermediate!3629 (undefined!4441 Bool) (index!16697 (_ BitVec 32)) (x!45844 (_ BitVec 32))) (Undefined!3629) (MissingVacant!3629 (index!16698 (_ BitVec 32))) )
))
(declare-fun lt!219944 () SeekEntryResult!3629)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487073 (= res!290606 (or (= lt!219944 (MissingZero!3629 i!1204)) (= lt!219944 (MissingVacant!3629 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31529 (_ BitVec 32)) SeekEntryResult!3629)

(assert (=> b!487073 (= lt!219944 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487074 () Bool)

(assert (=> b!487074 (= e!286606 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31529 (_ BitVec 32)) Bool)

(assert (=> b!487074 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14196 0))(
  ( (Unit!14197) )
))
(declare-fun lt!219943 () Unit!14196)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31529 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14196)

(assert (=> b!487074 (= lt!219943 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487075 () Bool)

(declare-fun res!290610 () Bool)

(assert (=> b!487075 (=> (not res!290610) (not e!286606))))

(assert (=> b!487075 (= res!290610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487076 () Bool)

(declare-fun res!290609 () Bool)

(assert (=> b!487076 (=> (not res!290609) (not e!286606))))

(declare-datatypes ((List!9366 0))(
  ( (Nil!9363) (Cons!9362 (h!10218 (_ BitVec 64)) (t!15602 List!9366)) )
))
(declare-fun arrayNoDuplicates!0 (array!31529 (_ BitVec 32) List!9366) Bool)

(assert (=> b!487076 (= res!290609 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9363))))

(declare-fun b!487069 () Bool)

(declare-fun res!290611 () Bool)

(assert (=> b!487069 (=> (not res!290611) (not e!286605))))

(assert (=> b!487069 (= res!290611 (and (= (size!15519 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15519 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15519 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!290605 () Bool)

(assert (=> start!44318 (=> (not res!290605) (not e!286605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44318 (= res!290605 (validMask!0 mask!3524))))

(assert (=> start!44318 e!286605))

(assert (=> start!44318 true))

(declare-fun array_inv!10929 (array!31529) Bool)

(assert (=> start!44318 (array_inv!10929 a!3235)))

(assert (= (and start!44318 res!290605) b!487069))

(assert (= (and b!487069 res!290611) b!487070))

(assert (= (and b!487070 res!290612) b!487072))

(assert (= (and b!487072 res!290607) b!487071))

(assert (= (and b!487071 res!290608) b!487073))

(assert (= (and b!487073 res!290606) b!487075))

(assert (= (and b!487075 res!290610) b!487076))

(assert (= (and b!487076 res!290609) b!487074))

(declare-fun m!466941 () Bool)

(assert (=> b!487070 m!466941))

(assert (=> b!487070 m!466941))

(declare-fun m!466943 () Bool)

(assert (=> b!487070 m!466943))

(declare-fun m!466945 () Bool)

(assert (=> b!487076 m!466945))

(declare-fun m!466947 () Bool)

(assert (=> start!44318 m!466947))

(declare-fun m!466949 () Bool)

(assert (=> start!44318 m!466949))

(declare-fun m!466951 () Bool)

(assert (=> b!487073 m!466951))

(declare-fun m!466953 () Bool)

(assert (=> b!487072 m!466953))

(declare-fun m!466955 () Bool)

(assert (=> b!487074 m!466955))

(declare-fun m!466957 () Bool)

(assert (=> b!487074 m!466957))

(declare-fun m!466959 () Bool)

(assert (=> b!487071 m!466959))

(declare-fun m!466961 () Bool)

(assert (=> b!487075 m!466961))

(push 1)

