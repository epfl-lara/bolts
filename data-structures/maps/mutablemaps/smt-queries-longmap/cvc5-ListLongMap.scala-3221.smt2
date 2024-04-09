; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45082 () Bool)

(assert start!45082)

(declare-fun b!494531 () Bool)

(declare-fun e!290193 () Bool)

(declare-fun e!290191 () Bool)

(assert (=> b!494531 (= e!290193 (not e!290191))))

(declare-fun res!297252 () Bool)

(assert (=> b!494531 (=> res!297252 e!290191)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3849 0))(
  ( (MissingZero!3849 (index!17575 (_ BitVec 32))) (Found!3849 (index!17576 (_ BitVec 32))) (Intermediate!3849 (undefined!4661 Bool) (index!17577 (_ BitVec 32)) (x!46674 (_ BitVec 32))) (Undefined!3849) (MissingVacant!3849 (index!17578 (_ BitVec 32))) )
))
(declare-fun lt!223909 () SeekEntryResult!3849)

(declare-datatypes ((array!31987 0))(
  ( (array!31988 (arr!15375 (Array (_ BitVec 32) (_ BitVec 64))) (size!15739 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31987)

(declare-fun lt!223906 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31987 (_ BitVec 32)) SeekEntryResult!3849)

(assert (=> b!494531 (= res!297252 (= lt!223909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223906 (select (store (arr!15375 a!3235) i!1204 k!2280) j!176) (array!31988 (store (arr!15375 a!3235) i!1204 k!2280) (size!15739 a!3235)) mask!3524)))))

(declare-fun lt!223910 () (_ BitVec 32))

(assert (=> b!494531 (= lt!223909 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223910 (select (arr!15375 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!494531 (= lt!223906 (toIndex!0 (select (store (arr!15375 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!494531 (= lt!223910 (toIndex!0 (select (arr!15375 a!3235) j!176) mask!3524))))

(declare-fun lt!223905 () SeekEntryResult!3849)

(assert (=> b!494531 (= lt!223905 (Found!3849 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31987 (_ BitVec 32)) SeekEntryResult!3849)

(assert (=> b!494531 (= lt!223905 (seekEntryOrOpen!0 (select (arr!15375 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31987 (_ BitVec 32)) Bool)

(assert (=> b!494531 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14636 0))(
  ( (Unit!14637) )
))
(declare-fun lt!223908 () Unit!14636)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31987 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14636)

(assert (=> b!494531 (= lt!223908 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!494532 () Bool)

(declare-fun res!297260 () Bool)

(declare-fun e!290194 () Bool)

(assert (=> b!494532 (=> (not res!297260) (not e!290194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!494532 (= res!297260 (validKeyInArray!0 (select (arr!15375 a!3235) j!176)))))

(declare-fun res!297258 () Bool)

(assert (=> start!45082 (=> (not res!297258) (not e!290194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45082 (= res!297258 (validMask!0 mask!3524))))

(assert (=> start!45082 e!290194))

(assert (=> start!45082 true))

(declare-fun array_inv!11149 (array!31987) Bool)

(assert (=> start!45082 (array_inv!11149 a!3235)))

(declare-fun b!494533 () Bool)

(declare-fun res!297256 () Bool)

(assert (=> b!494533 (=> (not res!297256) (not e!290193))))

(declare-datatypes ((List!9586 0))(
  ( (Nil!9583) (Cons!9582 (h!10450 (_ BitVec 64)) (t!15822 List!9586)) )
))
(declare-fun arrayNoDuplicates!0 (array!31987 (_ BitVec 32) List!9586) Bool)

(assert (=> b!494533 (= res!297256 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9583))))

(declare-fun b!494534 () Bool)

(assert (=> b!494534 (= e!290194 e!290193)))

(declare-fun res!297259 () Bool)

(assert (=> b!494534 (=> (not res!297259) (not e!290193))))

(declare-fun lt!223907 () SeekEntryResult!3849)

(assert (=> b!494534 (= res!297259 (or (= lt!223907 (MissingZero!3849 i!1204)) (= lt!223907 (MissingVacant!3849 i!1204))))))

(assert (=> b!494534 (= lt!223907 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!494535 () Bool)

(declare-fun res!297255 () Bool)

(assert (=> b!494535 (=> (not res!297255) (not e!290194))))

(assert (=> b!494535 (= res!297255 (validKeyInArray!0 k!2280))))

(declare-fun b!494536 () Bool)

(assert (=> b!494536 (= e!290191 true)))

(assert (=> b!494536 (= lt!223905 Undefined!3849)))

(declare-fun b!494537 () Bool)

(declare-fun res!297251 () Bool)

(assert (=> b!494537 (=> (not res!297251) (not e!290194))))

(assert (=> b!494537 (= res!297251 (and (= (size!15739 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15739 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15739 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!494538 () Bool)

(declare-fun res!297253 () Bool)

(assert (=> b!494538 (=> (not res!297253) (not e!290194))))

(declare-fun arrayContainsKey!0 (array!31987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!494538 (= res!297253 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!494539 () Bool)

(declare-fun res!297254 () Bool)

(assert (=> b!494539 (=> res!297254 e!290191)))

(assert (=> b!494539 (= res!297254 (or (not (is-Intermediate!3849 lt!223909)) (not (undefined!4661 lt!223909))))))

(declare-fun b!494540 () Bool)

(declare-fun res!297257 () Bool)

(assert (=> b!494540 (=> (not res!297257) (not e!290193))))

(assert (=> b!494540 (= res!297257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45082 res!297258) b!494537))

(assert (= (and b!494537 res!297251) b!494532))

(assert (= (and b!494532 res!297260) b!494535))

(assert (= (and b!494535 res!297255) b!494538))

(assert (= (and b!494538 res!297253) b!494534))

(assert (= (and b!494534 res!297259) b!494540))

(assert (= (and b!494540 res!297257) b!494533))

(assert (= (and b!494533 res!297256) b!494531))

(assert (= (and b!494531 (not res!297252)) b!494539))

(assert (= (and b!494539 (not res!297254)) b!494536))

(declare-fun m!475669 () Bool)

(assert (=> b!494533 m!475669))

(declare-fun m!475671 () Bool)

(assert (=> start!45082 m!475671))

(declare-fun m!475673 () Bool)

(assert (=> start!45082 m!475673))

(declare-fun m!475675 () Bool)

(assert (=> b!494538 m!475675))

(declare-fun m!475677 () Bool)

(assert (=> b!494535 m!475677))

(declare-fun m!475679 () Bool)

(assert (=> b!494540 m!475679))

(declare-fun m!475681 () Bool)

(assert (=> b!494531 m!475681))

(declare-fun m!475683 () Bool)

(assert (=> b!494531 m!475683))

(declare-fun m!475685 () Bool)

(assert (=> b!494531 m!475685))

(declare-fun m!475687 () Bool)

(assert (=> b!494531 m!475687))

(declare-fun m!475689 () Bool)

(assert (=> b!494531 m!475689))

(assert (=> b!494531 m!475687))

(declare-fun m!475691 () Bool)

(assert (=> b!494531 m!475691))

(assert (=> b!494531 m!475687))

(assert (=> b!494531 m!475687))

(declare-fun m!475693 () Bool)

(assert (=> b!494531 m!475693))

(assert (=> b!494531 m!475685))

(declare-fun m!475695 () Bool)

(assert (=> b!494531 m!475695))

(assert (=> b!494531 m!475685))

(declare-fun m!475697 () Bool)

(assert (=> b!494531 m!475697))

(declare-fun m!475699 () Bool)

(assert (=> b!494531 m!475699))

(assert (=> b!494532 m!475687))

(assert (=> b!494532 m!475687))

(declare-fun m!475701 () Bool)

(assert (=> b!494532 m!475701))

(declare-fun m!475703 () Bool)

(assert (=> b!494534 m!475703))

(push 1)

