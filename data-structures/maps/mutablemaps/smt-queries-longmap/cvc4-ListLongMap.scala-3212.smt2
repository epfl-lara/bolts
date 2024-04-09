; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45032 () Bool)

(assert start!45032)

(declare-fun b!493781 () Bool)

(declare-fun res!296501 () Bool)

(declare-fun e!289891 () Bool)

(assert (=> b!493781 (=> (not res!296501) (not e!289891))))

(declare-datatypes ((array!31937 0))(
  ( (array!31938 (arr!15350 (Array (_ BitVec 32) (_ BitVec 64))) (size!15714 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31937)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493781 (= res!296501 (validKeyInArray!0 (select (arr!15350 a!3235) j!176)))))

(declare-fun b!493782 () Bool)

(declare-fun e!289893 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!493782 (= e!289893 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!3824 0))(
  ( (MissingZero!3824 (index!17475 (_ BitVec 32))) (Found!3824 (index!17476 (_ BitVec 32))) (Intermediate!3824 (undefined!4636 Bool) (index!17477 (_ BitVec 32)) (x!46577 (_ BitVec 32))) (Undefined!3824) (MissingVacant!3824 (index!17478 (_ BitVec 32))) )
))
(declare-fun lt!223457 () SeekEntryResult!3824)

(assert (=> b!493782 (= lt!223457 Undefined!3824)))

(declare-fun b!493783 () Bool)

(declare-fun e!289894 () Bool)

(assert (=> b!493783 (= e!289891 e!289894)))

(declare-fun res!296510 () Bool)

(assert (=> b!493783 (=> (not res!296510) (not e!289894))))

(declare-fun lt!223456 () SeekEntryResult!3824)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!493783 (= res!296510 (or (= lt!223456 (MissingZero!3824 i!1204)) (= lt!223456 (MissingVacant!3824 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31937 (_ BitVec 32)) SeekEntryResult!3824)

(assert (=> b!493783 (= lt!223456 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!493785 () Bool)

(declare-fun res!296509 () Bool)

(assert (=> b!493785 (=> (not res!296509) (not e!289891))))

(assert (=> b!493785 (= res!296509 (and (= (size!15714 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15714 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15714 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493786 () Bool)

(declare-fun res!296507 () Bool)

(assert (=> b!493786 (=> (not res!296507) (not e!289894))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31937 (_ BitVec 32)) Bool)

(assert (=> b!493786 (= res!296507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!493787 () Bool)

(declare-fun res!296502 () Bool)

(assert (=> b!493787 (=> (not res!296502) (not e!289891))))

(assert (=> b!493787 (= res!296502 (validKeyInArray!0 k!2280))))

(declare-fun b!493788 () Bool)

(declare-fun res!296508 () Bool)

(assert (=> b!493788 (=> (not res!296508) (not e!289894))))

(declare-datatypes ((List!9561 0))(
  ( (Nil!9558) (Cons!9557 (h!10425 (_ BitVec 64)) (t!15797 List!9561)) )
))
(declare-fun arrayNoDuplicates!0 (array!31937 (_ BitVec 32) List!9561) Bool)

(assert (=> b!493788 (= res!296508 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9558))))

(declare-fun b!493789 () Bool)

(assert (=> b!493789 (= e!289894 (not e!289893))))

(declare-fun res!296504 () Bool)

(assert (=> b!493789 (=> res!296504 e!289893)))

(declare-fun lt!223460 () SeekEntryResult!3824)

(declare-fun lt!223459 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31937 (_ BitVec 32)) SeekEntryResult!3824)

(assert (=> b!493789 (= res!296504 (= lt!223460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223459 (select (store (arr!15350 a!3235) i!1204 k!2280) j!176) (array!31938 (store (arr!15350 a!3235) i!1204 k!2280) (size!15714 a!3235)) mask!3524)))))

(declare-fun lt!223455 () (_ BitVec 32))

(assert (=> b!493789 (= lt!223460 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223455 (select (arr!15350 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493789 (= lt!223459 (toIndex!0 (select (store (arr!15350 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!493789 (= lt!223455 (toIndex!0 (select (arr!15350 a!3235) j!176) mask!3524))))

(assert (=> b!493789 (= lt!223457 (Found!3824 j!176))))

(assert (=> b!493789 (= lt!223457 (seekEntryOrOpen!0 (select (arr!15350 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!493789 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14586 0))(
  ( (Unit!14587) )
))
(declare-fun lt!223458 () Unit!14586)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31937 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14586)

(assert (=> b!493789 (= lt!223458 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493790 () Bool)

(declare-fun res!296506 () Bool)

(assert (=> b!493790 (=> res!296506 e!289893)))

(assert (=> b!493790 (= res!296506 (or (not (is-Intermediate!3824 lt!223460)) (not (undefined!4636 lt!223460))))))

(declare-fun b!493784 () Bool)

(declare-fun res!296505 () Bool)

(assert (=> b!493784 (=> (not res!296505) (not e!289891))))

(declare-fun arrayContainsKey!0 (array!31937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493784 (= res!296505 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!296503 () Bool)

(assert (=> start!45032 (=> (not res!296503) (not e!289891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45032 (= res!296503 (validMask!0 mask!3524))))

(assert (=> start!45032 e!289891))

(assert (=> start!45032 true))

(declare-fun array_inv!11124 (array!31937) Bool)

(assert (=> start!45032 (array_inv!11124 a!3235)))

(assert (= (and start!45032 res!296503) b!493785))

(assert (= (and b!493785 res!296509) b!493781))

(assert (= (and b!493781 res!296501) b!493787))

(assert (= (and b!493787 res!296502) b!493784))

(assert (= (and b!493784 res!296505) b!493783))

(assert (= (and b!493783 res!296510) b!493786))

(assert (= (and b!493786 res!296507) b!493788))

(assert (= (and b!493788 res!296508) b!493789))

(assert (= (and b!493789 (not res!296504)) b!493790))

(assert (= (and b!493790 (not res!296506)) b!493782))

(declare-fun m!474769 () Bool)

(assert (=> b!493783 m!474769))

(declare-fun m!474771 () Bool)

(assert (=> b!493788 m!474771))

(declare-fun m!474773 () Bool)

(assert (=> start!45032 m!474773))

(declare-fun m!474775 () Bool)

(assert (=> start!45032 m!474775))

(declare-fun m!474777 () Bool)

(assert (=> b!493786 m!474777))

(declare-fun m!474779 () Bool)

(assert (=> b!493784 m!474779))

(declare-fun m!474781 () Bool)

(assert (=> b!493789 m!474781))

(declare-fun m!474783 () Bool)

(assert (=> b!493789 m!474783))

(declare-fun m!474785 () Bool)

(assert (=> b!493789 m!474785))

(declare-fun m!474787 () Bool)

(assert (=> b!493789 m!474787))

(declare-fun m!474789 () Bool)

(assert (=> b!493789 m!474789))

(assert (=> b!493789 m!474787))

(declare-fun m!474791 () Bool)

(assert (=> b!493789 m!474791))

(declare-fun m!474793 () Bool)

(assert (=> b!493789 m!474793))

(assert (=> b!493789 m!474787))

(declare-fun m!474795 () Bool)

(assert (=> b!493789 m!474795))

(assert (=> b!493789 m!474785))

(declare-fun m!474797 () Bool)

(assert (=> b!493789 m!474797))

(assert (=> b!493789 m!474785))

(declare-fun m!474799 () Bool)

(assert (=> b!493789 m!474799))

(assert (=> b!493789 m!474787))

(assert (=> b!493781 m!474787))

(assert (=> b!493781 m!474787))

(declare-fun m!474801 () Bool)

(assert (=> b!493781 m!474801))

(declare-fun m!474803 () Bool)

(assert (=> b!493787 m!474803))

(push 1)

