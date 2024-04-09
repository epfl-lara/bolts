; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45812 () Bool)

(assert start!45812)

(declare-fun b!506821 () Bool)

(declare-fun res!307937 () Bool)

(declare-fun e!296625 () Bool)

(assert (=> b!506821 (=> (not res!307937) (not e!296625))))

(declare-datatypes ((array!32528 0))(
  ( (array!32529 (arr!15641 (Array (_ BitVec 32) (_ BitVec 64))) (size!16005 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32528)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32528 (_ BitVec 32)) Bool)

(assert (=> b!506821 (= res!307937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506822 () Bool)

(declare-fun res!307932 () Bool)

(assert (=> b!506822 (=> (not res!307932) (not e!296625))))

(declare-datatypes ((List!9852 0))(
  ( (Nil!9849) (Cons!9848 (h!10725 (_ BitVec 64)) (t!16088 List!9852)) )
))
(declare-fun arrayNoDuplicates!0 (array!32528 (_ BitVec 32) List!9852) Bool)

(assert (=> b!506822 (= res!307932 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9849))))

(declare-fun b!506824 () Bool)

(declare-fun e!296626 () Bool)

(assert (=> b!506824 (= e!296625 (not e!296626))))

(declare-fun res!307931 () Bool)

(assert (=> b!506824 (=> res!307931 e!296626)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!231370 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4115 0))(
  ( (MissingZero!4115 (index!18648 (_ BitVec 32))) (Found!4115 (index!18649 (_ BitVec 32))) (Intermediate!4115 (undefined!4927 Bool) (index!18650 (_ BitVec 32)) (x!47671 (_ BitVec 32))) (Undefined!4115) (MissingVacant!4115 (index!18651 (_ BitVec 32))) )
))
(declare-fun lt!231369 () SeekEntryResult!4115)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32528 (_ BitVec 32)) SeekEntryResult!4115)

(assert (=> b!506824 (= res!307931 (= lt!231369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231370 (select (store (arr!15641 a!3235) i!1204 k!2280) j!176) (array!32529 (store (arr!15641 a!3235) i!1204 k!2280) (size!16005 a!3235)) mask!3524)))))

(declare-fun lt!231374 () (_ BitVec 32))

(assert (=> b!506824 (= lt!231369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231374 (select (arr!15641 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506824 (= lt!231370 (toIndex!0 (select (store (arr!15641 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506824 (= lt!231374 (toIndex!0 (select (arr!15641 a!3235) j!176) mask!3524))))

(declare-fun e!296628 () Bool)

(assert (=> b!506824 e!296628))

(declare-fun res!307934 () Bool)

(assert (=> b!506824 (=> (not res!307934) (not e!296628))))

(assert (=> b!506824 (= res!307934 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15510 0))(
  ( (Unit!15511) )
))
(declare-fun lt!231371 () Unit!15510)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32528 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15510)

(assert (=> b!506824 (= lt!231371 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506825 () Bool)

(declare-fun e!296627 () Bool)

(assert (=> b!506825 (= e!296626 e!296627)))

(declare-fun res!307930 () Bool)

(assert (=> b!506825 (=> res!307930 e!296627)))

(declare-fun lt!231373 () Bool)

(assert (=> b!506825 (= res!307930 (or (and (not lt!231373) (undefined!4927 lt!231369)) (and (not lt!231373) (not (undefined!4927 lt!231369)))))))

(assert (=> b!506825 (= lt!231373 (not (is-Intermediate!4115 lt!231369)))))

(declare-fun b!506826 () Bool)

(assert (=> b!506826 (= e!296627 true)))

(assert (=> b!506826 false))

(declare-fun b!506827 () Bool)

(declare-fun res!307933 () Bool)

(declare-fun e!296624 () Bool)

(assert (=> b!506827 (=> (not res!307933) (not e!296624))))

(assert (=> b!506827 (= res!307933 (and (= (size!16005 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16005 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16005 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!307939 () Bool)

(assert (=> start!45812 (=> (not res!307939) (not e!296624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45812 (= res!307939 (validMask!0 mask!3524))))

(assert (=> start!45812 e!296624))

(assert (=> start!45812 true))

(declare-fun array_inv!11415 (array!32528) Bool)

(assert (=> start!45812 (array_inv!11415 a!3235)))

(declare-fun b!506823 () Bool)

(assert (=> b!506823 (= e!296624 e!296625)))

(declare-fun res!307936 () Bool)

(assert (=> b!506823 (=> (not res!307936) (not e!296625))))

(declare-fun lt!231372 () SeekEntryResult!4115)

(assert (=> b!506823 (= res!307936 (or (= lt!231372 (MissingZero!4115 i!1204)) (= lt!231372 (MissingVacant!4115 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32528 (_ BitVec 32)) SeekEntryResult!4115)

(assert (=> b!506823 (= lt!231372 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506828 () Bool)

(assert (=> b!506828 (= e!296628 (= (seekEntryOrOpen!0 (select (arr!15641 a!3235) j!176) a!3235 mask!3524) (Found!4115 j!176)))))

(declare-fun b!506829 () Bool)

(declare-fun res!307940 () Bool)

(assert (=> b!506829 (=> (not res!307940) (not e!296624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506829 (= res!307940 (validKeyInArray!0 k!2280))))

(declare-fun b!506830 () Bool)

(declare-fun res!307938 () Bool)

(assert (=> b!506830 (=> (not res!307938) (not e!296624))))

(declare-fun arrayContainsKey!0 (array!32528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506830 (= res!307938 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506831 () Bool)

(declare-fun res!307935 () Bool)

(assert (=> b!506831 (=> (not res!307935) (not e!296624))))

(assert (=> b!506831 (= res!307935 (validKeyInArray!0 (select (arr!15641 a!3235) j!176)))))

(assert (= (and start!45812 res!307939) b!506827))

(assert (= (and b!506827 res!307933) b!506831))

(assert (= (and b!506831 res!307935) b!506829))

(assert (= (and b!506829 res!307940) b!506830))

(assert (= (and b!506830 res!307938) b!506823))

(assert (= (and b!506823 res!307936) b!506821))

(assert (= (and b!506821 res!307937) b!506822))

(assert (= (and b!506822 res!307932) b!506824))

(assert (= (and b!506824 res!307934) b!506828))

(assert (= (and b!506824 (not res!307931)) b!506825))

(assert (= (and b!506825 (not res!307930)) b!506826))

(declare-fun m!487573 () Bool)

(assert (=> b!506823 m!487573))

(declare-fun m!487575 () Bool)

(assert (=> b!506831 m!487575))

(assert (=> b!506831 m!487575))

(declare-fun m!487577 () Bool)

(assert (=> b!506831 m!487577))

(declare-fun m!487579 () Bool)

(assert (=> b!506824 m!487579))

(declare-fun m!487581 () Bool)

(assert (=> b!506824 m!487581))

(declare-fun m!487583 () Bool)

(assert (=> b!506824 m!487583))

(assert (=> b!506824 m!487583))

(declare-fun m!487585 () Bool)

(assert (=> b!506824 m!487585))

(assert (=> b!506824 m!487575))

(declare-fun m!487587 () Bool)

(assert (=> b!506824 m!487587))

(assert (=> b!506824 m!487575))

(declare-fun m!487589 () Bool)

(assert (=> b!506824 m!487589))

(assert (=> b!506824 m!487575))

(declare-fun m!487591 () Bool)

(assert (=> b!506824 m!487591))

(assert (=> b!506824 m!487583))

(declare-fun m!487593 () Bool)

(assert (=> b!506824 m!487593))

(assert (=> b!506828 m!487575))

(assert (=> b!506828 m!487575))

(declare-fun m!487595 () Bool)

(assert (=> b!506828 m!487595))

(declare-fun m!487597 () Bool)

(assert (=> start!45812 m!487597))

(declare-fun m!487599 () Bool)

(assert (=> start!45812 m!487599))

(declare-fun m!487601 () Bool)

(assert (=> b!506821 m!487601))

(declare-fun m!487603 () Bool)

(assert (=> b!506829 m!487603))

(declare-fun m!487605 () Bool)

(assert (=> b!506822 m!487605))

(declare-fun m!487607 () Bool)

(assert (=> b!506830 m!487607))

(push 1)

