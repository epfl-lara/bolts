; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44962 () Bool)

(assert start!44962)

(declare-fun b!492765 () Bool)

(declare-fun res!295492 () Bool)

(declare-fun e!289462 () Bool)

(assert (=> b!492765 (=> (not res!295492) (not e!289462))))

(declare-datatypes ((array!31867 0))(
  ( (array!31868 (arr!15315 (Array (_ BitVec 32) (_ BitVec 64))) (size!15679 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31867)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31867 (_ BitVec 32)) Bool)

(assert (=> b!492765 (= res!295492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun e!289464 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!492766 () Bool)

(declare-datatypes ((SeekEntryResult!3789 0))(
  ( (MissingZero!3789 (index!17335 (_ BitVec 32))) (Found!3789 (index!17336 (_ BitVec 32))) (Intermediate!3789 (undefined!4601 Bool) (index!17337 (_ BitVec 32)) (x!46454 (_ BitVec 32))) (Undefined!3789) (MissingVacant!3789 (index!17338 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31867 (_ BitVec 32)) SeekEntryResult!3789)

(assert (=> b!492766 (= e!289464 (= (seekEntryOrOpen!0 (select (arr!15315 a!3235) j!176) a!3235 mask!3524) (Found!3789 j!176)))))

(declare-fun b!492767 () Bool)

(declare-fun res!295491 () Bool)

(declare-fun e!289465 () Bool)

(assert (=> b!492767 (=> (not res!295491) (not e!289465))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492767 (= res!295491 (validKeyInArray!0 k!2280))))

(declare-fun b!492768 () Bool)

(declare-fun res!295486 () Bool)

(assert (=> b!492768 (=> (not res!295486) (not e!289462))))

(declare-datatypes ((List!9526 0))(
  ( (Nil!9523) (Cons!9522 (h!10390 (_ BitVec 64)) (t!15762 List!9526)) )
))
(declare-fun arrayNoDuplicates!0 (array!31867 (_ BitVec 32) List!9526) Bool)

(assert (=> b!492768 (= res!295486 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9523))))

(declare-fun b!492769 () Bool)

(declare-fun res!295493 () Bool)

(assert (=> b!492769 (=> (not res!295493) (not e!289465))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!492769 (= res!295493 (and (= (size!15679 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15679 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15679 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492770 () Bool)

(declare-fun res!295488 () Bool)

(assert (=> b!492770 (=> (not res!295488) (not e!289465))))

(assert (=> b!492770 (= res!295488 (validKeyInArray!0 (select (arr!15315 a!3235) j!176)))))

(declare-fun b!492771 () Bool)

(assert (=> b!492771 (= e!289465 e!289462)))

(declare-fun res!295485 () Bool)

(assert (=> b!492771 (=> (not res!295485) (not e!289462))))

(declare-fun lt!222834 () SeekEntryResult!3789)

(assert (=> b!492771 (= res!295485 (or (= lt!222834 (MissingZero!3789 i!1204)) (= lt!222834 (MissingVacant!3789 i!1204))))))

(assert (=> b!492771 (= lt!222834 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492772 () Bool)

(declare-fun res!295487 () Bool)

(assert (=> b!492772 (=> (not res!295487) (not e!289465))))

(declare-fun arrayContainsKey!0 (array!31867 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492772 (= res!295487 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492773 () Bool)

(assert (=> b!492773 (= e!289462 (not true))))

(declare-fun lt!222839 () (_ BitVec 32))

(declare-fun lt!222838 () SeekEntryResult!3789)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31867 (_ BitVec 32)) SeekEntryResult!3789)

(assert (=> b!492773 (= lt!222838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222839 (select (store (arr!15315 a!3235) i!1204 k!2280) j!176) (array!31868 (store (arr!15315 a!3235) i!1204 k!2280) (size!15679 a!3235)) mask!3524))))

(declare-fun lt!222837 () (_ BitVec 32))

(declare-fun lt!222836 () SeekEntryResult!3789)

(assert (=> b!492773 (= lt!222836 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222837 (select (arr!15315 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492773 (= lt!222839 (toIndex!0 (select (store (arr!15315 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492773 (= lt!222837 (toIndex!0 (select (arr!15315 a!3235) j!176) mask!3524))))

(assert (=> b!492773 e!289464))

(declare-fun res!295490 () Bool)

(assert (=> b!492773 (=> (not res!295490) (not e!289464))))

(assert (=> b!492773 (= res!295490 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14516 0))(
  ( (Unit!14517) )
))
(declare-fun lt!222835 () Unit!14516)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31867 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14516)

(assert (=> b!492773 (= lt!222835 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!295489 () Bool)

(assert (=> start!44962 (=> (not res!295489) (not e!289465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44962 (= res!295489 (validMask!0 mask!3524))))

(assert (=> start!44962 e!289465))

(assert (=> start!44962 true))

(declare-fun array_inv!11089 (array!31867) Bool)

(assert (=> start!44962 (array_inv!11089 a!3235)))

(assert (= (and start!44962 res!295489) b!492769))

(assert (= (and b!492769 res!295493) b!492770))

(assert (= (and b!492770 res!295488) b!492767))

(assert (= (and b!492767 res!295491) b!492772))

(assert (= (and b!492772 res!295487) b!492771))

(assert (= (and b!492771 res!295485) b!492765))

(assert (= (and b!492765 res!295492) b!492768))

(assert (= (and b!492768 res!295486) b!492773))

(assert (= (and b!492773 res!295490) b!492766))

(declare-fun m!473509 () Bool)

(assert (=> b!492766 m!473509))

(assert (=> b!492766 m!473509))

(declare-fun m!473511 () Bool)

(assert (=> b!492766 m!473511))

(declare-fun m!473513 () Bool)

(assert (=> b!492772 m!473513))

(declare-fun m!473515 () Bool)

(assert (=> b!492771 m!473515))

(declare-fun m!473517 () Bool)

(assert (=> b!492773 m!473517))

(declare-fun m!473519 () Bool)

(assert (=> b!492773 m!473519))

(declare-fun m!473521 () Bool)

(assert (=> b!492773 m!473521))

(assert (=> b!492773 m!473509))

(declare-fun m!473523 () Bool)

(assert (=> b!492773 m!473523))

(assert (=> b!492773 m!473509))

(declare-fun m!473525 () Bool)

(assert (=> b!492773 m!473525))

(assert (=> b!492773 m!473509))

(declare-fun m!473527 () Bool)

(assert (=> b!492773 m!473527))

(assert (=> b!492773 m!473521))

(declare-fun m!473529 () Bool)

(assert (=> b!492773 m!473529))

(assert (=> b!492773 m!473521))

(declare-fun m!473531 () Bool)

(assert (=> b!492773 m!473531))

(assert (=> b!492770 m!473509))

(assert (=> b!492770 m!473509))

(declare-fun m!473533 () Bool)

(assert (=> b!492770 m!473533))

(declare-fun m!473535 () Bool)

(assert (=> b!492765 m!473535))

(declare-fun m!473537 () Bool)

(assert (=> start!44962 m!473537))

(declare-fun m!473539 () Bool)

(assert (=> start!44962 m!473539))

(declare-fun m!473541 () Bool)

(assert (=> b!492767 m!473541))

(declare-fun m!473543 () Bool)

(assert (=> b!492768 m!473543))

(push 1)

