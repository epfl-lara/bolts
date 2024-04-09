; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44966 () Bool)

(assert start!44966)

(declare-fun b!492819 () Bool)

(declare-fun res!295543 () Bool)

(declare-fun e!289489 () Bool)

(assert (=> b!492819 (=> (not res!295543) (not e!289489))))

(declare-datatypes ((array!31871 0))(
  ( (array!31872 (arr!15317 (Array (_ BitVec 32) (_ BitVec 64))) (size!15681 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31871)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492819 (= res!295543 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492820 () Bool)

(declare-fun e!289488 () Bool)

(assert (=> b!492820 (= e!289489 e!289488)))

(declare-fun res!295540 () Bool)

(assert (=> b!492820 (=> (not res!295540) (not e!289488))))

(declare-datatypes ((SeekEntryResult!3791 0))(
  ( (MissingZero!3791 (index!17343 (_ BitVec 32))) (Found!3791 (index!17344 (_ BitVec 32))) (Intermediate!3791 (undefined!4603 Bool) (index!17345 (_ BitVec 32)) (x!46456 (_ BitVec 32))) (Undefined!3791) (MissingVacant!3791 (index!17346 (_ BitVec 32))) )
))
(declare-fun lt!222871 () SeekEntryResult!3791)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!492820 (= res!295540 (or (= lt!222871 (MissingZero!3791 i!1204)) (= lt!222871 (MissingVacant!3791 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31871 (_ BitVec 32)) SeekEntryResult!3791)

(assert (=> b!492820 (= lt!222871 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun e!289487 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!492821 () Bool)

(assert (=> b!492821 (= e!289487 (= (seekEntryOrOpen!0 (select (arr!15317 a!3235) j!176) a!3235 mask!3524) (Found!3791 j!176)))))

(declare-fun b!492822 () Bool)

(declare-fun res!295546 () Bool)

(assert (=> b!492822 (=> (not res!295546) (not e!289489))))

(assert (=> b!492822 (= res!295546 (and (= (size!15681 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15681 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15681 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492823 () Bool)

(declare-fun res!295541 () Bool)

(assert (=> b!492823 (=> (not res!295541) (not e!289488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31871 (_ BitVec 32)) Bool)

(assert (=> b!492823 (= res!295541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!492824 () Bool)

(declare-fun res!295547 () Bool)

(assert (=> b!492824 (=> (not res!295547) (not e!289489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492824 (= res!295547 (validKeyInArray!0 (select (arr!15317 a!3235) j!176)))))

(declare-fun b!492825 () Bool)

(declare-fun res!295539 () Bool)

(assert (=> b!492825 (=> (not res!295539) (not e!289489))))

(assert (=> b!492825 (= res!295539 (validKeyInArray!0 k!2280))))

(declare-fun res!295542 () Bool)

(assert (=> start!44966 (=> (not res!295542) (not e!289489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44966 (= res!295542 (validMask!0 mask!3524))))

(assert (=> start!44966 e!289489))

(assert (=> start!44966 true))

(declare-fun array_inv!11091 (array!31871) Bool)

(assert (=> start!44966 (array_inv!11091 a!3235)))

(declare-fun b!492826 () Bool)

(declare-fun res!295545 () Bool)

(assert (=> b!492826 (=> (not res!295545) (not e!289488))))

(declare-datatypes ((List!9528 0))(
  ( (Nil!9525) (Cons!9524 (h!10392 (_ BitVec 64)) (t!15764 List!9528)) )
))
(declare-fun arrayNoDuplicates!0 (array!31871 (_ BitVec 32) List!9528) Bool)

(assert (=> b!492826 (= res!295545 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9525))))

(declare-fun b!492827 () Bool)

(assert (=> b!492827 (= e!289488 (not true))))

(declare-fun lt!222874 () SeekEntryResult!3791)

(declare-fun lt!222870 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31871 (_ BitVec 32)) SeekEntryResult!3791)

(assert (=> b!492827 (= lt!222874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222870 (select (store (arr!15317 a!3235) i!1204 k!2280) j!176) (array!31872 (store (arr!15317 a!3235) i!1204 k!2280) (size!15681 a!3235)) mask!3524))))

(declare-fun lt!222873 () (_ BitVec 32))

(declare-fun lt!222875 () SeekEntryResult!3791)

(assert (=> b!492827 (= lt!222875 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222873 (select (arr!15317 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492827 (= lt!222870 (toIndex!0 (select (store (arr!15317 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492827 (= lt!222873 (toIndex!0 (select (arr!15317 a!3235) j!176) mask!3524))))

(assert (=> b!492827 e!289487))

(declare-fun res!295544 () Bool)

(assert (=> b!492827 (=> (not res!295544) (not e!289487))))

(assert (=> b!492827 (= res!295544 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14520 0))(
  ( (Unit!14521) )
))
(declare-fun lt!222872 () Unit!14520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31871 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14520)

(assert (=> b!492827 (= lt!222872 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!44966 res!295542) b!492822))

(assert (= (and b!492822 res!295546) b!492824))

(assert (= (and b!492824 res!295547) b!492825))

(assert (= (and b!492825 res!295539) b!492819))

(assert (= (and b!492819 res!295543) b!492820))

(assert (= (and b!492820 res!295540) b!492823))

(assert (= (and b!492823 res!295541) b!492826))

(assert (= (and b!492826 res!295545) b!492827))

(assert (= (and b!492827 res!295544) b!492821))

(declare-fun m!473581 () Bool)

(assert (=> b!492820 m!473581))

(declare-fun m!473583 () Bool)

(assert (=> start!44966 m!473583))

(declare-fun m!473585 () Bool)

(assert (=> start!44966 m!473585))

(declare-fun m!473587 () Bool)

(assert (=> b!492819 m!473587))

(declare-fun m!473589 () Bool)

(assert (=> b!492824 m!473589))

(assert (=> b!492824 m!473589))

(declare-fun m!473591 () Bool)

(assert (=> b!492824 m!473591))

(assert (=> b!492821 m!473589))

(assert (=> b!492821 m!473589))

(declare-fun m!473593 () Bool)

(assert (=> b!492821 m!473593))

(declare-fun m!473595 () Bool)

(assert (=> b!492823 m!473595))

(declare-fun m!473597 () Bool)

(assert (=> b!492826 m!473597))

(declare-fun m!473599 () Bool)

(assert (=> b!492827 m!473599))

(declare-fun m!473601 () Bool)

(assert (=> b!492827 m!473601))

(declare-fun m!473603 () Bool)

(assert (=> b!492827 m!473603))

(assert (=> b!492827 m!473589))

(declare-fun m!473605 () Bool)

(assert (=> b!492827 m!473605))

(assert (=> b!492827 m!473589))

(declare-fun m!473607 () Bool)

(assert (=> b!492827 m!473607))

(assert (=> b!492827 m!473589))

(declare-fun m!473609 () Bool)

(assert (=> b!492827 m!473609))

(assert (=> b!492827 m!473603))

(declare-fun m!473611 () Bool)

(assert (=> b!492827 m!473611))

(assert (=> b!492827 m!473603))

(declare-fun m!473613 () Bool)

(assert (=> b!492827 m!473613))

(declare-fun m!473615 () Bool)

(assert (=> b!492825 m!473615))

(push 1)

