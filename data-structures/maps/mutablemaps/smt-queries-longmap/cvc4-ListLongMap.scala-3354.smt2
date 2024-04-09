; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46130 () Bool)

(assert start!46130)

(declare-fun b!510723 () Bool)

(declare-fun res!311720 () Bool)

(declare-fun e!298471 () Bool)

(assert (=> b!510723 (=> (not res!311720) (not e!298471))))

(declare-datatypes ((array!32801 0))(
  ( (array!32802 (arr!15776 (Array (_ BitVec 32) (_ BitVec 64))) (size!16140 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32801)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510723 (= res!311720 (validKeyInArray!0 (select (arr!15776 a!3235) j!176)))))

(declare-fun res!311724 () Bool)

(assert (=> start!46130 (=> (not res!311724) (not e!298471))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46130 (= res!311724 (validMask!0 mask!3524))))

(assert (=> start!46130 e!298471))

(assert (=> start!46130 true))

(declare-fun array_inv!11550 (array!32801) Bool)

(assert (=> start!46130 (array_inv!11550 a!3235)))

(declare-fun b!510724 () Bool)

(declare-fun res!311725 () Bool)

(declare-fun e!298474 () Bool)

(assert (=> b!510724 (=> (not res!311725) (not e!298474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32801 (_ BitVec 32)) Bool)

(assert (=> b!510724 (= res!311725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510725 () Bool)

(declare-fun res!311719 () Bool)

(assert (=> b!510725 (=> (not res!311719) (not e!298471))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510725 (= res!311719 (and (= (size!16140 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16140 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16140 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510726 () Bool)

(declare-fun res!311722 () Bool)

(assert (=> b!510726 (=> (not res!311722) (not e!298471))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!510726 (= res!311722 (validKeyInArray!0 k!2280))))

(declare-fun b!510727 () Bool)

(assert (=> b!510727 (= e!298474 (not true))))

(declare-fun lt!233666 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4250 0))(
  ( (MissingZero!4250 (index!19188 (_ BitVec 32))) (Found!4250 (index!19189 (_ BitVec 32))) (Intermediate!4250 (undefined!5062 Bool) (index!19190 (_ BitVec 32)) (x!48166 (_ BitVec 32))) (Undefined!4250) (MissingVacant!4250 (index!19191 (_ BitVec 32))) )
))
(declare-fun lt!233668 () SeekEntryResult!4250)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32801 (_ BitVec 32)) SeekEntryResult!4250)

(assert (=> b!510727 (= lt!233668 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233666 (select (store (arr!15776 a!3235) i!1204 k!2280) j!176) (array!32802 (store (arr!15776 a!3235) i!1204 k!2280) (size!16140 a!3235)) mask!3524))))

(declare-fun lt!233669 () (_ BitVec 32))

(declare-fun lt!233665 () SeekEntryResult!4250)

(assert (=> b!510727 (= lt!233665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233669 (select (arr!15776 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510727 (= lt!233666 (toIndex!0 (select (store (arr!15776 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!510727 (= lt!233669 (toIndex!0 (select (arr!15776 a!3235) j!176) mask!3524))))

(declare-fun e!298473 () Bool)

(assert (=> b!510727 e!298473))

(declare-fun res!311726 () Bool)

(assert (=> b!510727 (=> (not res!311726) (not e!298473))))

(assert (=> b!510727 (= res!311726 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15750 0))(
  ( (Unit!15751) )
))
(declare-fun lt!233667 () Unit!15750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15750)

(assert (=> b!510727 (= lt!233667 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510728 () Bool)

(declare-fun res!311718 () Bool)

(assert (=> b!510728 (=> (not res!311718) (not e!298471))))

(declare-fun arrayContainsKey!0 (array!32801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510728 (= res!311718 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510729 () Bool)

(assert (=> b!510729 (= e!298471 e!298474)))

(declare-fun res!311723 () Bool)

(assert (=> b!510729 (=> (not res!311723) (not e!298474))))

(declare-fun lt!233664 () SeekEntryResult!4250)

(assert (=> b!510729 (= res!311723 (or (= lt!233664 (MissingZero!4250 i!1204)) (= lt!233664 (MissingVacant!4250 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32801 (_ BitVec 32)) SeekEntryResult!4250)

(assert (=> b!510729 (= lt!233664 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!510730 () Bool)

(assert (=> b!510730 (= e!298473 (= (seekEntryOrOpen!0 (select (arr!15776 a!3235) j!176) a!3235 mask!3524) (Found!4250 j!176)))))

(declare-fun b!510731 () Bool)

(declare-fun res!311721 () Bool)

(assert (=> b!510731 (=> (not res!311721) (not e!298474))))

(declare-datatypes ((List!9987 0))(
  ( (Nil!9984) (Cons!9983 (h!10860 (_ BitVec 64)) (t!16223 List!9987)) )
))
(declare-fun arrayNoDuplicates!0 (array!32801 (_ BitVec 32) List!9987) Bool)

(assert (=> b!510731 (= res!311721 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9984))))

(assert (= (and start!46130 res!311724) b!510725))

(assert (= (and b!510725 res!311719) b!510723))

(assert (= (and b!510723 res!311720) b!510726))

(assert (= (and b!510726 res!311722) b!510728))

(assert (= (and b!510728 res!311718) b!510729))

(assert (= (and b!510729 res!311723) b!510724))

(assert (= (and b!510724 res!311725) b!510731))

(assert (= (and b!510731 res!311721) b!510727))

(assert (= (and b!510727 res!311726) b!510730))

(declare-fun m!492235 () Bool)

(assert (=> start!46130 m!492235))

(declare-fun m!492237 () Bool)

(assert (=> start!46130 m!492237))

(declare-fun m!492239 () Bool)

(assert (=> b!510723 m!492239))

(assert (=> b!510723 m!492239))

(declare-fun m!492241 () Bool)

(assert (=> b!510723 m!492241))

(assert (=> b!510730 m!492239))

(assert (=> b!510730 m!492239))

(declare-fun m!492243 () Bool)

(assert (=> b!510730 m!492243))

(declare-fun m!492245 () Bool)

(assert (=> b!510724 m!492245))

(declare-fun m!492247 () Bool)

(assert (=> b!510731 m!492247))

(declare-fun m!492249 () Bool)

(assert (=> b!510726 m!492249))

(declare-fun m!492251 () Bool)

(assert (=> b!510729 m!492251))

(declare-fun m!492253 () Bool)

(assert (=> b!510727 m!492253))

(declare-fun m!492255 () Bool)

(assert (=> b!510727 m!492255))

(declare-fun m!492257 () Bool)

(assert (=> b!510727 m!492257))

(declare-fun m!492259 () Bool)

(assert (=> b!510727 m!492259))

(assert (=> b!510727 m!492253))

(assert (=> b!510727 m!492239))

(declare-fun m!492261 () Bool)

(assert (=> b!510727 m!492261))

(assert (=> b!510727 m!492239))

(declare-fun m!492263 () Bool)

(assert (=> b!510727 m!492263))

(assert (=> b!510727 m!492239))

(declare-fun m!492265 () Bool)

(assert (=> b!510727 m!492265))

(assert (=> b!510727 m!492253))

(declare-fun m!492267 () Bool)

(assert (=> b!510727 m!492267))

(declare-fun m!492269 () Bool)

(assert (=> b!510728 m!492269))

(push 1)

