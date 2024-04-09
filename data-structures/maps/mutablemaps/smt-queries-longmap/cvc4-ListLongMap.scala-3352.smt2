; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46118 () Bool)

(assert start!46118)

(declare-fun b!510561 () Bool)

(declare-fun res!311557 () Bool)

(declare-fun e!298399 () Bool)

(assert (=> b!510561 (=> (not res!311557) (not e!298399))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510561 (= res!311557 (validKeyInArray!0 k!2280))))

(declare-fun b!510562 () Bool)

(declare-fun e!298401 () Bool)

(assert (=> b!510562 (= e!298399 e!298401)))

(declare-fun res!311564 () Bool)

(assert (=> b!510562 (=> (not res!311564) (not e!298401))))

(declare-datatypes ((SeekEntryResult!4244 0))(
  ( (MissingZero!4244 (index!19164 (_ BitVec 32))) (Found!4244 (index!19165 (_ BitVec 32))) (Intermediate!4244 (undefined!5056 Bool) (index!19166 (_ BitVec 32)) (x!48144 (_ BitVec 32))) (Undefined!4244) (MissingVacant!4244 (index!19167 (_ BitVec 32))) )
))
(declare-fun lt!233560 () SeekEntryResult!4244)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510562 (= res!311564 (or (= lt!233560 (MissingZero!4244 i!1204)) (= lt!233560 (MissingVacant!4244 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32789 0))(
  ( (array!32790 (arr!15770 (Array (_ BitVec 32) (_ BitVec 64))) (size!16134 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32789)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32789 (_ BitVec 32)) SeekEntryResult!4244)

(assert (=> b!510562 (= lt!233560 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510563 () Bool)

(declare-fun res!311562 () Bool)

(assert (=> b!510563 (=> (not res!311562) (not e!298401))))

(declare-datatypes ((List!9981 0))(
  ( (Nil!9978) (Cons!9977 (h!10854 (_ BitVec 64)) (t!16217 List!9981)) )
))
(declare-fun arrayNoDuplicates!0 (array!32789 (_ BitVec 32) List!9981) Bool)

(assert (=> b!510563 (= res!311562 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9978))))

(declare-fun b!510564 () Bool)

(declare-fun res!311563 () Bool)

(assert (=> b!510564 (=> (not res!311563) (not e!298399))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!510564 (= res!311563 (and (= (size!16134 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16134 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16134 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510565 () Bool)

(declare-fun res!311558 () Bool)

(assert (=> b!510565 (=> (not res!311558) (not e!298399))))

(assert (=> b!510565 (= res!311558 (validKeyInArray!0 (select (arr!15770 a!3235) j!176)))))

(declare-fun b!510566 () Bool)

(declare-fun e!298400 () Bool)

(assert (=> b!510566 (= e!298400 true)))

(declare-fun lt!233557 () array!32789)

(declare-fun lt!233559 () SeekEntryResult!4244)

(declare-fun lt!233558 () (_ BitVec 64))

(assert (=> b!510566 (= lt!233559 (seekEntryOrOpen!0 lt!233558 lt!233557 mask!3524))))

(declare-datatypes ((Unit!15738 0))(
  ( (Unit!15739) )
))
(declare-fun lt!233556 () Unit!15738)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32789 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15738)

(assert (=> b!510566 (= lt!233556 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!510568 () Bool)

(declare-fun res!311561 () Bool)

(assert (=> b!510568 (=> (not res!311561) (not e!298401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32789 (_ BitVec 32)) Bool)

(assert (=> b!510568 (= res!311561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510569 () Bool)

(declare-fun res!311560 () Bool)

(assert (=> b!510569 (=> (not res!311560) (not e!298399))))

(declare-fun arrayContainsKey!0 (array!32789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510569 (= res!311560 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510567 () Bool)

(assert (=> b!510567 (= e!298401 (not e!298400))))

(declare-fun res!311559 () Bool)

(assert (=> b!510567 (=> res!311559 e!298400)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32789 (_ BitVec 32)) SeekEntryResult!4244)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510567 (= res!311559 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15770 a!3235) j!176) mask!3524) (select (arr!15770 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233558 mask!3524) lt!233558 lt!233557 mask!3524))))))

(assert (=> b!510567 (= lt!233558 (select (store (arr!15770 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510567 (= lt!233557 (array!32790 (store (arr!15770 a!3235) i!1204 k!2280) (size!16134 a!3235)))))

(assert (=> b!510567 (= lt!233559 (Found!4244 j!176))))

(assert (=> b!510567 (= lt!233559 (seekEntryOrOpen!0 (select (arr!15770 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!510567 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!233561 () Unit!15738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15738)

(assert (=> b!510567 (= lt!233561 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!311556 () Bool)

(assert (=> start!46118 (=> (not res!311556) (not e!298399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46118 (= res!311556 (validMask!0 mask!3524))))

(assert (=> start!46118 e!298399))

(assert (=> start!46118 true))

(declare-fun array_inv!11544 (array!32789) Bool)

(assert (=> start!46118 (array_inv!11544 a!3235)))

(assert (= (and start!46118 res!311556) b!510564))

(assert (= (and b!510564 res!311563) b!510565))

(assert (= (and b!510565 res!311558) b!510561))

(assert (= (and b!510561 res!311557) b!510569))

(assert (= (and b!510569 res!311560) b!510562))

(assert (= (and b!510562 res!311564) b!510568))

(assert (= (and b!510568 res!311561) b!510563))

(assert (= (and b!510563 res!311562) b!510567))

(assert (= (and b!510567 (not res!311559)) b!510566))

(declare-fun m!492015 () Bool)

(assert (=> start!46118 m!492015))

(declare-fun m!492017 () Bool)

(assert (=> start!46118 m!492017))

(declare-fun m!492019 () Bool)

(assert (=> b!510566 m!492019))

(declare-fun m!492021 () Bool)

(assert (=> b!510566 m!492021))

(declare-fun m!492023 () Bool)

(assert (=> b!510567 m!492023))

(declare-fun m!492025 () Bool)

(assert (=> b!510567 m!492025))

(declare-fun m!492027 () Bool)

(assert (=> b!510567 m!492027))

(declare-fun m!492029 () Bool)

(assert (=> b!510567 m!492029))

(declare-fun m!492031 () Bool)

(assert (=> b!510567 m!492031))

(declare-fun m!492033 () Bool)

(assert (=> b!510567 m!492033))

(assert (=> b!510567 m!492031))

(assert (=> b!510567 m!492029))

(declare-fun m!492035 () Bool)

(assert (=> b!510567 m!492035))

(assert (=> b!510567 m!492031))

(declare-fun m!492037 () Bool)

(assert (=> b!510567 m!492037))

(assert (=> b!510567 m!492035))

(declare-fun m!492039 () Bool)

(assert (=> b!510567 m!492039))

(assert (=> b!510567 m!492031))

(declare-fun m!492041 () Bool)

(assert (=> b!510567 m!492041))

(declare-fun m!492043 () Bool)

(assert (=> b!510563 m!492043))

(assert (=> b!510565 m!492031))

(assert (=> b!510565 m!492031))

(declare-fun m!492045 () Bool)

(assert (=> b!510565 m!492045))

(declare-fun m!492047 () Bool)

(assert (=> b!510562 m!492047))

(declare-fun m!492049 () Bool)

(assert (=> b!510561 m!492049))

(declare-fun m!492051 () Bool)

(assert (=> b!510568 m!492051))

(declare-fun m!492053 () Bool)

(assert (=> b!510569 m!492053))

(push 1)

