; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51606 () Bool)

(assert start!51606)

(declare-fun b!564319 () Bool)

(declare-fun e!325040 () Bool)

(declare-fun e!325042 () Bool)

(assert (=> b!564319 (= e!325040 e!325042)))

(declare-fun res!355625 () Bool)

(assert (=> b!564319 (=> (not res!355625) (not e!325042))))

(declare-datatypes ((SeekEntryResult!5465 0))(
  ( (MissingZero!5465 (index!24087 (_ BitVec 32))) (Found!5465 (index!24088 (_ BitVec 32))) (Intermediate!5465 (undefined!6277 Bool) (index!24089 (_ BitVec 32)) (x!52987 (_ BitVec 32))) (Undefined!5465) (MissingVacant!5465 (index!24090 (_ BitVec 32))) )
))
(declare-fun lt!257512 () SeekEntryResult!5465)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564319 (= res!355625 (or (= lt!257512 (MissingZero!5465 i!1132)) (= lt!257512 (MissingVacant!5465 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35425 0))(
  ( (array!35426 (arr!17009 (Array (_ BitVec 32) (_ BitVec 64))) (size!17373 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35425)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35425 (_ BitVec 32)) SeekEntryResult!5465)

(assert (=> b!564319 (= lt!257512 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564320 () Bool)

(assert (=> b!564320 (= e!325042 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!257513 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564320 (= lt!257513 (toIndex!0 (select (store (arr!17009 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!564321 () Bool)

(declare-fun res!355623 () Bool)

(assert (=> b!564321 (=> (not res!355623) (not e!325040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564321 (= res!355623 (validKeyInArray!0 k!1914))))

(declare-fun b!564322 () Bool)

(declare-fun res!355624 () Bool)

(assert (=> b!564322 (=> (not res!355624) (not e!325040))))

(assert (=> b!564322 (= res!355624 (and (= (size!17373 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17373 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17373 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564323 () Bool)

(declare-fun res!355621 () Bool)

(assert (=> b!564323 (=> (not res!355621) (not e!325042))))

(declare-datatypes ((List!11142 0))(
  ( (Nil!11139) (Cons!11138 (h!12141 (_ BitVec 64)) (t!17378 List!11142)) )
))
(declare-fun arrayNoDuplicates!0 (array!35425 (_ BitVec 32) List!11142) Bool)

(assert (=> b!564323 (= res!355621 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11139))))

(declare-fun res!355622 () Bool)

(assert (=> start!51606 (=> (not res!355622) (not e!325040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51606 (= res!355622 (validMask!0 mask!3119))))

(assert (=> start!51606 e!325040))

(assert (=> start!51606 true))

(declare-fun array_inv!12783 (array!35425) Bool)

(assert (=> start!51606 (array_inv!12783 a!3118)))

(declare-fun b!564324 () Bool)

(declare-fun res!355628 () Bool)

(assert (=> b!564324 (=> (not res!355628) (not e!325042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35425 (_ BitVec 32)) Bool)

(assert (=> b!564324 (= res!355628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564325 () Bool)

(declare-fun res!355627 () Bool)

(assert (=> b!564325 (=> (not res!355627) (not e!325040))))

(assert (=> b!564325 (= res!355627 (validKeyInArray!0 (select (arr!17009 a!3118) j!142)))))

(declare-fun b!564326 () Bool)

(declare-fun res!355626 () Bool)

(assert (=> b!564326 (=> (not res!355626) (not e!325040))))

(declare-fun arrayContainsKey!0 (array!35425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564326 (= res!355626 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51606 res!355622) b!564322))

(assert (= (and b!564322 res!355624) b!564325))

(assert (= (and b!564325 res!355627) b!564321))

(assert (= (and b!564321 res!355623) b!564326))

(assert (= (and b!564326 res!355626) b!564319))

(assert (= (and b!564319 res!355625) b!564324))

(assert (= (and b!564324 res!355628) b!564323))

(assert (= (and b!564323 res!355621) b!564320))

(declare-fun m!542779 () Bool)

(assert (=> b!564319 m!542779))

(declare-fun m!542781 () Bool)

(assert (=> b!564320 m!542781))

(declare-fun m!542783 () Bool)

(assert (=> b!564320 m!542783))

(assert (=> b!564320 m!542783))

(declare-fun m!542785 () Bool)

(assert (=> b!564320 m!542785))

(declare-fun m!542787 () Bool)

(assert (=> b!564324 m!542787))

(declare-fun m!542789 () Bool)

(assert (=> b!564323 m!542789))

(declare-fun m!542791 () Bool)

(assert (=> b!564326 m!542791))

(declare-fun m!542793 () Bool)

(assert (=> start!51606 m!542793))

(declare-fun m!542795 () Bool)

(assert (=> start!51606 m!542795))

(declare-fun m!542797 () Bool)

(assert (=> b!564321 m!542797))

(declare-fun m!542799 () Bool)

(assert (=> b!564325 m!542799))

(assert (=> b!564325 m!542799))

(declare-fun m!542801 () Bool)

(assert (=> b!564325 m!542801))

(push 1)

(assert (not b!564321))

(assert (not b!564323))

