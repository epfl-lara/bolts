; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44386 () Bool)

(assert start!44386)

(declare-fun b!487521 () Bool)

(declare-fun e!286851 () Bool)

(declare-fun e!286852 () Bool)

(assert (=> b!487521 (= e!286851 e!286852)))

(declare-fun res!290945 () Bool)

(assert (=> b!487521 (=> (not res!290945) (not e!286852))))

(declare-datatypes ((SeekEntryResult!3639 0))(
  ( (MissingZero!3639 (index!16735 (_ BitVec 32))) (Found!3639 (index!16736 (_ BitVec 32))) (Intermediate!3639 (undefined!4451 Bool) (index!16737 (_ BitVec 32)) (x!45886 (_ BitVec 32))) (Undefined!3639) (MissingVacant!3639 (index!16738 (_ BitVec 32))) )
))
(declare-fun lt!220095 () SeekEntryResult!3639)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487521 (= res!290945 (or (= lt!220095 (MissingZero!3639 i!1204)) (= lt!220095 (MissingVacant!3639 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31552 0))(
  ( (array!31553 (arr!15165 (Array (_ BitVec 32) (_ BitVec 64))) (size!15529 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31552)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31552 (_ BitVec 32)) SeekEntryResult!3639)

(assert (=> b!487521 (= lt!220095 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!487522 () Bool)

(declare-fun res!290947 () Bool)

(assert (=> b!487522 (=> (not res!290947) (not e!286851))))

(declare-fun arrayContainsKey!0 (array!31552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487522 (= res!290947 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487523 () Bool)

(declare-fun res!290950 () Bool)

(assert (=> b!487523 (=> (not res!290950) (not e!286852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31552 (_ BitVec 32)) Bool)

(assert (=> b!487523 (= res!290950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487524 () Bool)

(declare-fun res!290948 () Bool)

(assert (=> b!487524 (=> (not res!290948) (not e!286851))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487524 (= res!290948 (validKeyInArray!0 (select (arr!15165 a!3235) j!176)))))

(declare-fun b!487525 () Bool)

(assert (=> b!487525 (= e!286852 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun lt!220097 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487525 (= lt!220097 (toIndex!0 (select (arr!15165 a!3235) j!176) mask!3524))))

(declare-fun e!286849 () Bool)

(assert (=> b!487525 e!286849))

(declare-fun res!290943 () Bool)

(assert (=> b!487525 (=> (not res!290943) (not e!286849))))

(assert (=> b!487525 (= res!290943 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14216 0))(
  ( (Unit!14217) )
))
(declare-fun lt!220096 () Unit!14216)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14216)

(assert (=> b!487525 (= lt!220096 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487526 () Bool)

(assert (=> b!487526 (= e!286849 (= (seekEntryOrOpen!0 (select (arr!15165 a!3235) j!176) a!3235 mask!3524) (Found!3639 j!176)))))

(declare-fun b!487527 () Bool)

(declare-fun res!290946 () Bool)

(assert (=> b!487527 (=> (not res!290946) (not e!286851))))

(assert (=> b!487527 (= res!290946 (and (= (size!15529 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15529 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15529 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487528 () Bool)

(declare-fun res!290949 () Bool)

(assert (=> b!487528 (=> (not res!290949) (not e!286852))))

(declare-datatypes ((List!9376 0))(
  ( (Nil!9373) (Cons!9372 (h!10228 (_ BitVec 64)) (t!15612 List!9376)) )
))
(declare-fun arrayNoDuplicates!0 (array!31552 (_ BitVec 32) List!9376) Bool)

(assert (=> b!487528 (= res!290949 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9373))))

(declare-fun res!290944 () Bool)

(assert (=> start!44386 (=> (not res!290944) (not e!286851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44386 (= res!290944 (validMask!0 mask!3524))))

(assert (=> start!44386 e!286851))

(assert (=> start!44386 true))

(declare-fun array_inv!10939 (array!31552) Bool)

(assert (=> start!44386 (array_inv!10939 a!3235)))

(declare-fun b!487529 () Bool)

(declare-fun res!290951 () Bool)

(assert (=> b!487529 (=> (not res!290951) (not e!286851))))

(assert (=> b!487529 (= res!290951 (validKeyInArray!0 k!2280))))

(assert (= (and start!44386 res!290944) b!487527))

(assert (= (and b!487527 res!290946) b!487524))

(assert (= (and b!487524 res!290948) b!487529))

(assert (= (and b!487529 res!290951) b!487522))

(assert (= (and b!487522 res!290947) b!487521))

(assert (= (and b!487521 res!290945) b!487523))

(assert (= (and b!487523 res!290950) b!487528))

(assert (= (and b!487528 res!290949) b!487525))

(assert (= (and b!487525 res!290943) b!487526))

(declare-fun m!467347 () Bool)

(assert (=> b!487528 m!467347))

(declare-fun m!467349 () Bool)

(assert (=> b!487522 m!467349))

(declare-fun m!467351 () Bool)

(assert (=> b!487521 m!467351))

(declare-fun m!467353 () Bool)

(assert (=> b!487529 m!467353))

(declare-fun m!467355 () Bool)

(assert (=> b!487526 m!467355))

(assert (=> b!487526 m!467355))

(declare-fun m!467357 () Bool)

(assert (=> b!487526 m!467357))

(assert (=> b!487525 m!467355))

(assert (=> b!487525 m!467355))

(declare-fun m!467359 () Bool)

(assert (=> b!487525 m!467359))

(declare-fun m!467361 () Bool)

(assert (=> b!487525 m!467361))

(declare-fun m!467363 () Bool)

(assert (=> b!487525 m!467363))

(declare-fun m!467365 () Bool)

(assert (=> start!44386 m!467365))

(declare-fun m!467367 () Bool)

(assert (=> start!44386 m!467367))

(assert (=> b!487524 m!467355))

(assert (=> b!487524 m!467355))

(declare-fun m!467369 () Bool)

(assert (=> b!487524 m!467369))

(declare-fun m!467371 () Bool)

(assert (=> b!487523 m!467371))

(push 1)

