; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45836 () Bool)

(assert start!45836)

(declare-fun res!308334 () Bool)

(declare-fun e!296840 () Bool)

(assert (=> start!45836 (=> (not res!308334) (not e!296840))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45836 (= res!308334 (validMask!0 mask!3524))))

(assert (=> start!45836 e!296840))

(assert (=> start!45836 true))

(declare-datatypes ((array!32552 0))(
  ( (array!32553 (arr!15653 (Array (_ BitVec 32) (_ BitVec 64))) (size!16017 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32552)

(declare-fun array_inv!11427 (array!32552) Bool)

(assert (=> start!45836 (array_inv!11427 a!3235)))

(declare-fun b!507217 () Bool)

(declare-fun res!308332 () Bool)

(declare-fun e!296843 () Bool)

(assert (=> b!507217 (=> (not res!308332) (not e!296843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32552 (_ BitVec 32)) Bool)

(assert (=> b!507217 (= res!308332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun e!296841 () Bool)

(declare-fun b!507218 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4127 0))(
  ( (MissingZero!4127 (index!18696 (_ BitVec 32))) (Found!4127 (index!18697 (_ BitVec 32))) (Intermediate!4127 (undefined!4939 Bool) (index!18698 (_ BitVec 32)) (x!47715 (_ BitVec 32))) (Undefined!4127) (MissingVacant!4127 (index!18699 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32552 (_ BitVec 32)) SeekEntryResult!4127)

(assert (=> b!507218 (= e!296841 (= (seekEntryOrOpen!0 (select (arr!15653 a!3235) j!176) a!3235 mask!3524) (Found!4127 j!176)))))

(declare-fun b!507219 () Bool)

(declare-fun res!308331 () Bool)

(assert (=> b!507219 (=> (not res!308331) (not e!296840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507219 (= res!308331 (validKeyInArray!0 (select (arr!15653 a!3235) j!176)))))

(declare-fun b!507220 () Bool)

(declare-fun res!308327 () Bool)

(assert (=> b!507220 (=> (not res!308327) (not e!296840))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!507220 (= res!308327 (validKeyInArray!0 k!2280))))

(declare-fun b!507221 () Bool)

(assert (=> b!507221 (= e!296840 e!296843)))

(declare-fun res!308329 () Bool)

(assert (=> b!507221 (=> (not res!308329) (not e!296843))))

(declare-fun lt!231669 () SeekEntryResult!4127)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507221 (= res!308329 (or (= lt!231669 (MissingZero!4127 i!1204)) (= lt!231669 (MissingVacant!4127 i!1204))))))

(assert (=> b!507221 (= lt!231669 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507222 () Bool)

(declare-fun res!308326 () Bool)

(assert (=> b!507222 (=> (not res!308326) (not e!296840))))

(assert (=> b!507222 (= res!308326 (and (= (size!16017 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16017 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16017 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507223 () Bool)

(declare-fun res!308335 () Bool)

(assert (=> b!507223 (=> (not res!308335) (not e!296843))))

(declare-datatypes ((List!9864 0))(
  ( (Nil!9861) (Cons!9860 (h!10737 (_ BitVec 64)) (t!16100 List!9864)) )
))
(declare-fun arrayNoDuplicates!0 (array!32552 (_ BitVec 32) List!9864) Bool)

(assert (=> b!507223 (= res!308335 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9861))))

(declare-fun b!507224 () Bool)

(declare-fun e!296842 () Bool)

(assert (=> b!507224 (= e!296843 (not e!296842))))

(declare-fun res!308328 () Bool)

(assert (=> b!507224 (=> res!308328 e!296842)))

(declare-fun lt!231663 () (_ BitVec 64))

(declare-fun lt!231667 () (_ BitVec 32))

(declare-fun lt!231671 () SeekEntryResult!4127)

(declare-fun lt!231668 () array!32552)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32552 (_ BitVec 32)) SeekEntryResult!4127)

(assert (=> b!507224 (= res!308328 (= lt!231671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231667 lt!231663 lt!231668 mask!3524)))))

(declare-fun lt!231670 () (_ BitVec 32))

(assert (=> b!507224 (= lt!231671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231670 (select (arr!15653 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507224 (= lt!231667 (toIndex!0 lt!231663 mask!3524))))

(assert (=> b!507224 (= lt!231663 (select (store (arr!15653 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507224 (= lt!231670 (toIndex!0 (select (arr!15653 a!3235) j!176) mask!3524))))

(assert (=> b!507224 (= lt!231668 (array!32553 (store (arr!15653 a!3235) i!1204 k!2280) (size!16017 a!3235)))))

(assert (=> b!507224 e!296841))

(declare-fun res!308333 () Bool)

(assert (=> b!507224 (=> (not res!308333) (not e!296841))))

(assert (=> b!507224 (= res!308333 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15534 0))(
  ( (Unit!15535) )
))
(declare-fun lt!231664 () Unit!15534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32552 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15534)

(assert (=> b!507224 (= lt!231664 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507225 () Bool)

(declare-fun e!296845 () Bool)

(assert (=> b!507225 (= e!296842 e!296845)))

(declare-fun res!308330 () Bool)

(assert (=> b!507225 (=> res!308330 e!296845)))

(declare-fun lt!231666 () Bool)

(assert (=> b!507225 (= res!308330 (or (and (not lt!231666) (undefined!4939 lt!231671)) (and (not lt!231666) (not (undefined!4939 lt!231671)))))))

(assert (=> b!507225 (= lt!231666 (not (is-Intermediate!4127 lt!231671)))))

(declare-fun b!507226 () Bool)

(declare-fun res!308336 () Bool)

(assert (=> b!507226 (=> (not res!308336) (not e!296840))))

(declare-fun arrayContainsKey!0 (array!32552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507226 (= res!308336 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507227 () Bool)

(assert (=> b!507227 (= e!296845 true)))

(declare-fun lt!231665 () SeekEntryResult!4127)

(assert (=> b!507227 (= lt!231665 (seekEntryOrOpen!0 lt!231663 lt!231668 mask!3524))))

(assert (=> b!507227 false))

(assert (= (and start!45836 res!308334) b!507222))

(assert (= (and b!507222 res!308326) b!507219))

(assert (= (and b!507219 res!308331) b!507220))

(assert (= (and b!507220 res!308327) b!507226))

(assert (= (and b!507226 res!308336) b!507221))

(assert (= (and b!507221 res!308329) b!507217))

(assert (= (and b!507217 res!308332) b!507223))

(assert (= (and b!507223 res!308335) b!507224))

(assert (= (and b!507224 res!308333) b!507218))

(assert (= (and b!507224 (not res!308328)) b!507225))

(assert (= (and b!507225 (not res!308330)) b!507227))

(declare-fun m!488021 () Bool)

(assert (=> b!507223 m!488021))

(declare-fun m!488023 () Bool)

(assert (=> b!507221 m!488023))

(declare-fun m!488025 () Bool)

(assert (=> b!507217 m!488025))

(declare-fun m!488027 () Bool)

(assert (=> start!45836 m!488027))

(declare-fun m!488029 () Bool)

(assert (=> start!45836 m!488029))

(declare-fun m!488031 () Bool)

(assert (=> b!507224 m!488031))

(declare-fun m!488033 () Bool)

(assert (=> b!507224 m!488033))

(declare-fun m!488035 () Bool)

(assert (=> b!507224 m!488035))

(declare-fun m!488037 () Bool)

(assert (=> b!507224 m!488037))

(declare-fun m!488039 () Bool)

(assert (=> b!507224 m!488039))

(declare-fun m!488041 () Bool)

(assert (=> b!507224 m!488041))

(declare-fun m!488043 () Bool)

(assert (=> b!507224 m!488043))

(assert (=> b!507224 m!488039))

(declare-fun m!488045 () Bool)

(assert (=> b!507224 m!488045))

(assert (=> b!507224 m!488039))

(declare-fun m!488047 () Bool)

(assert (=> b!507224 m!488047))

(declare-fun m!488049 () Bool)

(assert (=> b!507220 m!488049))

(declare-fun m!488051 () Bool)

(assert (=> b!507226 m!488051))

(assert (=> b!507218 m!488039))

(assert (=> b!507218 m!488039))

(declare-fun m!488053 () Bool)

(assert (=> b!507218 m!488053))

(declare-fun m!488055 () Bool)

(assert (=> b!507227 m!488055))

(assert (=> b!507219 m!488039))

(assert (=> b!507219 m!488039))

(declare-fun m!488057 () Bool)

(assert (=> b!507219 m!488057))

(push 1)

