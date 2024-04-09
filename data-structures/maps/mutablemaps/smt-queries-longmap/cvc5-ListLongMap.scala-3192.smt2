; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44788 () Bool)

(assert start!44788)

(declare-fun b!491409 () Bool)

(declare-fun res!294497 () Bool)

(declare-fun e!288724 () Bool)

(assert (=> b!491409 (=> (not res!294497) (not e!288724))))

(declare-datatypes ((array!31807 0))(
  ( (array!31808 (arr!15288 (Array (_ BitVec 32) (_ BitVec 64))) (size!15652 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31807)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31807 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491409 (= res!294497 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!491410 () Bool)

(declare-fun res!294498 () Bool)

(assert (=> b!491410 (=> (not res!294498) (not e!288724))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491410 (= res!294498 (validKeyInArray!0 (select (arr!15288 a!3235) j!176)))))

(declare-fun b!491411 () Bool)

(declare-fun e!288721 () Bool)

(assert (=> b!491411 (= e!288724 e!288721)))

(declare-fun res!294500 () Bool)

(assert (=> b!491411 (=> (not res!294500) (not e!288721))))

(declare-datatypes ((SeekEntryResult!3762 0))(
  ( (MissingZero!3762 (index!17227 (_ BitVec 32))) (Found!3762 (index!17228 (_ BitVec 32))) (Intermediate!3762 (undefined!4574 Bool) (index!17229 (_ BitVec 32)) (x!46343 (_ BitVec 32))) (Undefined!3762) (MissingVacant!3762 (index!17230 (_ BitVec 32))) )
))
(declare-fun lt!222227 () SeekEntryResult!3762)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491411 (= res!294500 (or (= lt!222227 (MissingZero!3762 i!1204)) (= lt!222227 (MissingVacant!3762 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31807 (_ BitVec 32)) SeekEntryResult!3762)

(assert (=> b!491411 (= lt!222227 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!491412 () Bool)

(declare-fun res!294495 () Bool)

(assert (=> b!491412 (=> (not res!294495) (not e!288724))))

(assert (=> b!491412 (= res!294495 (and (= (size!15652 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15652 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15652 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!294496 () Bool)

(assert (=> start!44788 (=> (not res!294496) (not e!288724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44788 (= res!294496 (validMask!0 mask!3524))))

(assert (=> start!44788 e!288724))

(assert (=> start!44788 true))

(declare-fun array_inv!11062 (array!31807) Bool)

(assert (=> start!44788 (array_inv!11062 a!3235)))

(declare-fun b!491413 () Bool)

(declare-fun res!294501 () Bool)

(assert (=> b!491413 (=> (not res!294501) (not e!288724))))

(assert (=> b!491413 (= res!294501 (validKeyInArray!0 k!2280))))

(declare-fun b!491414 () Bool)

(declare-fun e!288723 () Bool)

(assert (=> b!491414 (= e!288721 (not e!288723))))

(declare-fun res!294503 () Bool)

(assert (=> b!491414 (=> res!294503 e!288723)))

(declare-fun lt!222226 () (_ BitVec 64))

(declare-fun lt!222225 () array!31807)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31807 (_ BitVec 32)) SeekEntryResult!3762)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491414 (= res!294503 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15288 a!3235) j!176) mask!3524) (select (arr!15288 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222226 mask!3524) lt!222226 lt!222225 mask!3524))))))

(assert (=> b!491414 (= lt!222226 (select (store (arr!15288 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!491414 (= lt!222225 (array!31808 (store (arr!15288 a!3235) i!1204 k!2280) (size!15652 a!3235)))))

(declare-fun lt!222230 () SeekEntryResult!3762)

(assert (=> b!491414 (= lt!222230 (Found!3762 j!176))))

(assert (=> b!491414 (= lt!222230 (seekEntryOrOpen!0 (select (arr!15288 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31807 (_ BitVec 32)) Bool)

(assert (=> b!491414 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14462 0))(
  ( (Unit!14463) )
))
(declare-fun lt!222228 () Unit!14462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31807 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14462)

(assert (=> b!491414 (= lt!222228 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491415 () Bool)

(declare-fun res!294499 () Bool)

(assert (=> b!491415 (=> (not res!294499) (not e!288721))))

(assert (=> b!491415 (= res!294499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491416 () Bool)

(assert (=> b!491416 (= e!288723 true)))

(assert (=> b!491416 (= lt!222230 (seekEntryOrOpen!0 lt!222226 lt!222225 mask!3524))))

(declare-fun lt!222229 () Unit!14462)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31807 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14462)

(assert (=> b!491416 (= lt!222229 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!491417 () Bool)

(declare-fun res!294502 () Bool)

(assert (=> b!491417 (=> (not res!294502) (not e!288721))))

(declare-datatypes ((List!9499 0))(
  ( (Nil!9496) (Cons!9495 (h!10357 (_ BitVec 64)) (t!15735 List!9499)) )
))
(declare-fun arrayNoDuplicates!0 (array!31807 (_ BitVec 32) List!9499) Bool)

(assert (=> b!491417 (= res!294502 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9496))))

(assert (= (and start!44788 res!294496) b!491412))

(assert (= (and b!491412 res!294495) b!491410))

(assert (= (and b!491410 res!294498) b!491413))

(assert (= (and b!491413 res!294501) b!491409))

(assert (= (and b!491409 res!294497) b!491411))

(assert (= (and b!491411 res!294500) b!491415))

(assert (= (and b!491415 res!294499) b!491417))

(assert (= (and b!491417 res!294502) b!491414))

(assert (= (and b!491414 (not res!294503)) b!491416))

(declare-fun m!472105 () Bool)

(assert (=> b!491415 m!472105))

(declare-fun m!472107 () Bool)

(assert (=> b!491417 m!472107))

(declare-fun m!472109 () Bool)

(assert (=> start!44788 m!472109))

(declare-fun m!472111 () Bool)

(assert (=> start!44788 m!472111))

(declare-fun m!472113 () Bool)

(assert (=> b!491409 m!472113))

(declare-fun m!472115 () Bool)

(assert (=> b!491416 m!472115))

(declare-fun m!472117 () Bool)

(assert (=> b!491416 m!472117))

(declare-fun m!472119 () Bool)

(assert (=> b!491413 m!472119))

(declare-fun m!472121 () Bool)

(assert (=> b!491414 m!472121))

(declare-fun m!472123 () Bool)

(assert (=> b!491414 m!472123))

(declare-fun m!472125 () Bool)

(assert (=> b!491414 m!472125))

(declare-fun m!472127 () Bool)

(assert (=> b!491414 m!472127))

(declare-fun m!472129 () Bool)

(assert (=> b!491414 m!472129))

(declare-fun m!472131 () Bool)

(assert (=> b!491414 m!472131))

(declare-fun m!472133 () Bool)

(assert (=> b!491414 m!472133))

(declare-fun m!472135 () Bool)

(assert (=> b!491414 m!472135))

(assert (=> b!491414 m!472129))

(assert (=> b!491414 m!472127))

(assert (=> b!491414 m!472129))

(declare-fun m!472137 () Bool)

(assert (=> b!491414 m!472137))

(assert (=> b!491414 m!472129))

(declare-fun m!472139 () Bool)

(assert (=> b!491414 m!472139))

(assert (=> b!491414 m!472133))

(assert (=> b!491410 m!472129))

(assert (=> b!491410 m!472129))

(declare-fun m!472141 () Bool)

(assert (=> b!491410 m!472141))

(declare-fun m!472143 () Bool)

(assert (=> b!491411 m!472143))

(push 1)

