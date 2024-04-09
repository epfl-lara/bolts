; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45790 () Bool)

(assert start!45790)

(declare-fun b!506458 () Bool)

(declare-fun e!296431 () Bool)

(declare-fun e!296427 () Bool)

(assert (=> b!506458 (= e!296431 e!296427)))

(declare-fun res!307577 () Bool)

(assert (=> b!506458 (=> (not res!307577) (not e!296427))))

(declare-datatypes ((SeekEntryResult!4104 0))(
  ( (MissingZero!4104 (index!18604 (_ BitVec 32))) (Found!4104 (index!18605 (_ BitVec 32))) (Intermediate!4104 (undefined!4916 Bool) (index!18606 (_ BitVec 32)) (x!47636 (_ BitVec 32))) (Undefined!4104) (MissingVacant!4104 (index!18607 (_ BitVec 32))) )
))
(declare-fun lt!231175 () SeekEntryResult!4104)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506458 (= res!307577 (or (= lt!231175 (MissingZero!4104 i!1204)) (= lt!231175 (MissingVacant!4104 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32506 0))(
  ( (array!32507 (arr!15630 (Array (_ BitVec 32) (_ BitVec 64))) (size!15994 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32506)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32506 (_ BitVec 32)) SeekEntryResult!4104)

(assert (=> b!506458 (= lt!231175 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506459 () Bool)

(declare-fun res!307575 () Bool)

(assert (=> b!506459 (=> (not res!307575) (not e!296427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32506 (_ BitVec 32)) Bool)

(assert (=> b!506459 (= res!307575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506460 () Bool)

(declare-fun e!296430 () Bool)

(assert (=> b!506460 (= e!296427 (not e!296430))))

(declare-fun res!307569 () Bool)

(assert (=> b!506460 (=> res!307569 e!296430)))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!231174 () SeekEntryResult!4104)

(declare-fun lt!231176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32506 (_ BitVec 32)) SeekEntryResult!4104)

(assert (=> b!506460 (= res!307569 (= lt!231174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231176 (select (store (arr!15630 a!3235) i!1204 k!2280) j!176) (array!32507 (store (arr!15630 a!3235) i!1204 k!2280) (size!15994 a!3235)) mask!3524)))))

(declare-fun lt!231172 () (_ BitVec 32))

(assert (=> b!506460 (= lt!231174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231172 (select (arr!15630 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506460 (= lt!231176 (toIndex!0 (select (store (arr!15630 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506460 (= lt!231172 (toIndex!0 (select (arr!15630 a!3235) j!176) mask!3524))))

(declare-fun e!296429 () Bool)

(assert (=> b!506460 e!296429))

(declare-fun res!307570 () Bool)

(assert (=> b!506460 (=> (not res!307570) (not e!296429))))

(assert (=> b!506460 (= res!307570 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15488 0))(
  ( (Unit!15489) )
))
(declare-fun lt!231173 () Unit!15488)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15488)

(assert (=> b!506460 (= lt!231173 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!307573 () Bool)

(assert (=> start!45790 (=> (not res!307573) (not e!296431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45790 (= res!307573 (validMask!0 mask!3524))))

(assert (=> start!45790 e!296431))

(assert (=> start!45790 true))

(declare-fun array_inv!11404 (array!32506) Bool)

(assert (=> start!45790 (array_inv!11404 a!3235)))

(declare-fun b!506461 () Bool)

(declare-fun res!307576 () Bool)

(assert (=> b!506461 (=> (not res!307576) (not e!296431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506461 (= res!307576 (validKeyInArray!0 (select (arr!15630 a!3235) j!176)))))

(declare-fun b!506462 () Bool)

(declare-fun res!307568 () Bool)

(assert (=> b!506462 (=> (not res!307568) (not e!296431))))

(assert (=> b!506462 (= res!307568 (and (= (size!15994 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15994 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15994 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506463 () Bool)

(declare-fun res!307574 () Bool)

(assert (=> b!506463 (=> (not res!307574) (not e!296431))))

(declare-fun arrayContainsKey!0 (array!32506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506463 (= res!307574 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506464 () Bool)

(assert (=> b!506464 (= e!296429 (= (seekEntryOrOpen!0 (select (arr!15630 a!3235) j!176) a!3235 mask!3524) (Found!4104 j!176)))))

(declare-fun b!506465 () Bool)

(declare-fun e!296426 () Bool)

(assert (=> b!506465 (= e!296426 true)))

(assert (=> b!506465 false))

(declare-fun b!506466 () Bool)

(declare-fun res!307572 () Bool)

(assert (=> b!506466 (=> (not res!307572) (not e!296427))))

(declare-datatypes ((List!9841 0))(
  ( (Nil!9838) (Cons!9837 (h!10714 (_ BitVec 64)) (t!16077 List!9841)) )
))
(declare-fun arrayNoDuplicates!0 (array!32506 (_ BitVec 32) List!9841) Bool)

(assert (=> b!506466 (= res!307572 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9838))))

(declare-fun b!506467 () Bool)

(declare-fun res!307571 () Bool)

(assert (=> b!506467 (=> (not res!307571) (not e!296431))))

(assert (=> b!506467 (= res!307571 (validKeyInArray!0 k!2280))))

(declare-fun b!506468 () Bool)

(assert (=> b!506468 (= e!296430 e!296426)))

(declare-fun res!307567 () Bool)

(assert (=> b!506468 (=> res!307567 e!296426)))

(declare-fun lt!231171 () Bool)

(assert (=> b!506468 (= res!307567 (or (and (not lt!231171) (undefined!4916 lt!231174)) (and (not lt!231171) (not (undefined!4916 lt!231174)))))))

(assert (=> b!506468 (= lt!231171 (not (is-Intermediate!4104 lt!231174)))))

(assert (= (and start!45790 res!307573) b!506462))

(assert (= (and b!506462 res!307568) b!506461))

(assert (= (and b!506461 res!307576) b!506467))

(assert (= (and b!506467 res!307571) b!506463))

(assert (= (and b!506463 res!307574) b!506458))

(assert (= (and b!506458 res!307577) b!506459))

(assert (= (and b!506459 res!307575) b!506466))

(assert (= (and b!506466 res!307572) b!506460))

(assert (= (and b!506460 res!307570) b!506464))

(assert (= (and b!506460 (not res!307569)) b!506468))

(assert (= (and b!506468 (not res!307567)) b!506465))

(declare-fun m!487177 () Bool)

(assert (=> b!506459 m!487177))

(declare-fun m!487179 () Bool)

(assert (=> b!506464 m!487179))

(assert (=> b!506464 m!487179))

(declare-fun m!487181 () Bool)

(assert (=> b!506464 m!487181))

(declare-fun m!487183 () Bool)

(assert (=> b!506466 m!487183))

(declare-fun m!487185 () Bool)

(assert (=> b!506458 m!487185))

(declare-fun m!487187 () Bool)

(assert (=> b!506463 m!487187))

(declare-fun m!487189 () Bool)

(assert (=> start!45790 m!487189))

(declare-fun m!487191 () Bool)

(assert (=> start!45790 m!487191))

(assert (=> b!506461 m!487179))

(assert (=> b!506461 m!487179))

(declare-fun m!487193 () Bool)

(assert (=> b!506461 m!487193))

(declare-fun m!487195 () Bool)

(assert (=> b!506467 m!487195))

(declare-fun m!487197 () Bool)

(assert (=> b!506460 m!487197))

(declare-fun m!487199 () Bool)

(assert (=> b!506460 m!487199))

(assert (=> b!506460 m!487179))

(declare-fun m!487201 () Bool)

(assert (=> b!506460 m!487201))

(declare-fun m!487203 () Bool)

(assert (=> b!506460 m!487203))

(assert (=> b!506460 m!487199))

(declare-fun m!487205 () Bool)

(assert (=> b!506460 m!487205))

(declare-fun m!487207 () Bool)

(assert (=> b!506460 m!487207))

(assert (=> b!506460 m!487179))

(declare-fun m!487209 () Bool)

(assert (=> b!506460 m!487209))

(assert (=> b!506460 m!487199))

(declare-fun m!487211 () Bool)

(assert (=> b!506460 m!487211))

(assert (=> b!506460 m!487179))

(push 1)

