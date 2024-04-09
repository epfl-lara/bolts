; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48118 () Bool)

(assert start!48118)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!308577 () Bool)

(declare-datatypes ((array!33514 0))(
  ( (array!33515 (arr!16101 (Array (_ BitVec 32) (_ BitVec 64))) (size!16465 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33514)

(declare-fun b!529546 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4575 0))(
  ( (MissingZero!4575 (index!20524 (_ BitVec 32))) (Found!4575 (index!20525 (_ BitVec 32))) (Intermediate!4575 (undefined!5387 Bool) (index!20526 (_ BitVec 32)) (x!49528 (_ BitVec 32))) (Undefined!4575) (MissingVacant!4575 (index!20527 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33514 (_ BitVec 32)) SeekEntryResult!4575)

(assert (=> b!529546 (= e!308577 (= (seekEntryOrOpen!0 (select (arr!16101 a!3235) j!176) a!3235 mask!3524) (Found!4575 j!176)))))

(declare-fun b!529547 () Bool)

(declare-fun e!308575 () Bool)

(declare-fun e!308576 () Bool)

(assert (=> b!529547 (= e!308575 (not e!308576))))

(declare-fun res!325408 () Bool)

(assert (=> b!529547 (=> res!325408 e!308576)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!244195 () SeekEntryResult!4575)

(declare-fun lt!244191 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33514 (_ BitVec 32)) SeekEntryResult!4575)

(assert (=> b!529547 (= res!325408 (= lt!244195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244191 (select (store (arr!16101 a!3235) i!1204 k!2280) j!176) (array!33515 (store (arr!16101 a!3235) i!1204 k!2280) (size!16465 a!3235)) mask!3524)))))

(declare-fun lt!244193 () (_ BitVec 32))

(assert (=> b!529547 (= lt!244195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!244193 (select (arr!16101 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529547 (= lt!244191 (toIndex!0 (select (store (arr!16101 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!529547 (= lt!244193 (toIndex!0 (select (arr!16101 a!3235) j!176) mask!3524))))

(assert (=> b!529547 e!308577))

(declare-fun res!325402 () Bool)

(assert (=> b!529547 (=> (not res!325402) (not e!308577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33514 (_ BitVec 32)) Bool)

(assert (=> b!529547 (= res!325402 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16754 0))(
  ( (Unit!16755) )
))
(declare-fun lt!244192 () Unit!16754)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33514 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16754)

(assert (=> b!529547 (= lt!244192 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529548 () Bool)

(declare-fun e!308578 () Bool)

(assert (=> b!529548 (= e!308576 e!308578)))

(declare-fun res!325412 () Bool)

(assert (=> b!529548 (=> res!325412 e!308578)))

(declare-fun lt!244194 () Bool)

(assert (=> b!529548 (= res!325412 (or (and (not lt!244194) (undefined!5387 lt!244195)) (and (not lt!244194) (not (undefined!5387 lt!244195)))))))

(assert (=> b!529548 (= lt!244194 (not (is-Intermediate!4575 lt!244195)))))

(declare-fun b!529549 () Bool)

(assert (=> b!529549 (= e!308578 true)))

(assert (=> b!529549 false))

(declare-fun b!529550 () Bool)

(declare-fun res!325405 () Bool)

(declare-fun e!308573 () Bool)

(assert (=> b!529550 (=> (not res!325405) (not e!308573))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529550 (= res!325405 (validKeyInArray!0 (select (arr!16101 a!3235) j!176)))))

(declare-fun b!529551 () Bool)

(declare-fun res!325410 () Bool)

(assert (=> b!529551 (=> (not res!325410) (not e!308573))))

(declare-fun arrayContainsKey!0 (array!33514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529551 (= res!325410 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529552 () Bool)

(declare-fun res!325406 () Bool)

(assert (=> b!529552 (=> (not res!325406) (not e!308575))))

(assert (=> b!529552 (= res!325406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!325411 () Bool)

(assert (=> start!48118 (=> (not res!325411) (not e!308573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48118 (= res!325411 (validMask!0 mask!3524))))

(assert (=> start!48118 e!308573))

(assert (=> start!48118 true))

(declare-fun array_inv!11875 (array!33514) Bool)

(assert (=> start!48118 (array_inv!11875 a!3235)))

(declare-fun b!529553 () Bool)

(declare-fun res!325404 () Bool)

(assert (=> b!529553 (=> (not res!325404) (not e!308575))))

(declare-datatypes ((List!10312 0))(
  ( (Nil!10309) (Cons!10308 (h!11248 (_ BitVec 64)) (t!16548 List!10312)) )
))
(declare-fun arrayNoDuplicates!0 (array!33514 (_ BitVec 32) List!10312) Bool)

(assert (=> b!529553 (= res!325404 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10309))))

(declare-fun b!529554 () Bool)

(declare-fun res!325409 () Bool)

(assert (=> b!529554 (=> (not res!325409) (not e!308573))))

(assert (=> b!529554 (= res!325409 (and (= (size!16465 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16465 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16465 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529555 () Bool)

(declare-fun res!325407 () Bool)

(assert (=> b!529555 (=> (not res!325407) (not e!308573))))

(assert (=> b!529555 (= res!325407 (validKeyInArray!0 k!2280))))

(declare-fun b!529556 () Bool)

(assert (=> b!529556 (= e!308573 e!308575)))

(declare-fun res!325403 () Bool)

(assert (=> b!529556 (=> (not res!325403) (not e!308575))))

(declare-fun lt!244196 () SeekEntryResult!4575)

(assert (=> b!529556 (= res!325403 (or (= lt!244196 (MissingZero!4575 i!1204)) (= lt!244196 (MissingVacant!4575 i!1204))))))

(assert (=> b!529556 (= lt!244196 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!48118 res!325411) b!529554))

(assert (= (and b!529554 res!325409) b!529550))

(assert (= (and b!529550 res!325405) b!529555))

(assert (= (and b!529555 res!325407) b!529551))

(assert (= (and b!529551 res!325410) b!529556))

(assert (= (and b!529556 res!325403) b!529552))

(assert (= (and b!529552 res!325406) b!529553))

(assert (= (and b!529553 res!325404) b!529547))

(assert (= (and b!529547 res!325402) b!529546))

(assert (= (and b!529547 (not res!325408)) b!529548))

(assert (= (and b!529548 (not res!325412)) b!529549))

(declare-fun m!510067 () Bool)

(assert (=> b!529553 m!510067))

(declare-fun m!510069 () Bool)

(assert (=> b!529550 m!510069))

(assert (=> b!529550 m!510069))

(declare-fun m!510071 () Bool)

(assert (=> b!529550 m!510071))

(assert (=> b!529546 m!510069))

(assert (=> b!529546 m!510069))

(declare-fun m!510073 () Bool)

(assert (=> b!529546 m!510073))

(declare-fun m!510075 () Bool)

(assert (=> start!48118 m!510075))

(declare-fun m!510077 () Bool)

(assert (=> start!48118 m!510077))

(declare-fun m!510079 () Bool)

(assert (=> b!529547 m!510079))

(declare-fun m!510081 () Bool)

(assert (=> b!529547 m!510081))

(declare-fun m!510083 () Bool)

(assert (=> b!529547 m!510083))

(declare-fun m!510085 () Bool)

(assert (=> b!529547 m!510085))

(assert (=> b!529547 m!510069))

(declare-fun m!510087 () Bool)

(assert (=> b!529547 m!510087))

(assert (=> b!529547 m!510069))

(declare-fun m!510089 () Bool)

(assert (=> b!529547 m!510089))

(assert (=> b!529547 m!510083))

(declare-fun m!510091 () Bool)

(assert (=> b!529547 m!510091))

(assert (=> b!529547 m!510069))

(declare-fun m!510093 () Bool)

(assert (=> b!529547 m!510093))

(assert (=> b!529547 m!510083))

(declare-fun m!510095 () Bool)

(assert (=> b!529552 m!510095))

(declare-fun m!510097 () Bool)

(assert (=> b!529551 m!510097))

(declare-fun m!510099 () Bool)

(assert (=> b!529556 m!510099))

(declare-fun m!510101 () Bool)

(assert (=> b!529555 m!510101))

(push 1)

