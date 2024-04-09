; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46210 () Bool)

(assert start!46210)

(declare-fun res!312110 () Bool)

(declare-fun e!298777 () Bool)

(assert (=> start!46210 (=> (not res!312110) (not e!298777))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46210 (= res!312110 (validMask!0 mask!3524))))

(assert (=> start!46210 e!298777))

(assert (=> start!46210 true))

(declare-datatypes ((array!32824 0))(
  ( (array!32825 (arr!15786 (Array (_ BitVec 32) (_ BitVec 64))) (size!16150 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32824)

(declare-fun array_inv!11560 (array!32824) Bool)

(assert (=> start!46210 (array_inv!11560 a!3235)))

(declare-fun b!511295 () Bool)

(declare-fun res!312108 () Bool)

(assert (=> b!511295 (=> (not res!312108) (not e!298777))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511295 (= res!312108 (and (= (size!16150 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16150 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16150 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511296 () Bool)

(declare-fun res!312116 () Bool)

(declare-fun e!298780 () Bool)

(assert (=> b!511296 (=> (not res!312116) (not e!298780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32824 (_ BitVec 32)) Bool)

(assert (=> b!511296 (= res!312116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511297 () Bool)

(assert (=> b!511297 (= e!298777 e!298780)))

(declare-fun res!312109 () Bool)

(assert (=> b!511297 (=> (not res!312109) (not e!298780))))

(declare-datatypes ((SeekEntryResult!4260 0))(
  ( (MissingZero!4260 (index!19228 (_ BitVec 32))) (Found!4260 (index!19229 (_ BitVec 32))) (Intermediate!4260 (undefined!5072 Bool) (index!19230 (_ BitVec 32)) (x!48214 (_ BitVec 32))) (Undefined!4260) (MissingVacant!4260 (index!19231 (_ BitVec 32))) )
))
(declare-fun lt!233977 () SeekEntryResult!4260)

(assert (=> b!511297 (= res!312109 (or (= lt!233977 (MissingZero!4260 i!1204)) (= lt!233977 (MissingVacant!4260 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32824 (_ BitVec 32)) SeekEntryResult!4260)

(assert (=> b!511297 (= lt!233977 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511298 () Bool)

(declare-fun e!298778 () Bool)

(assert (=> b!511298 (= e!298780 (not e!298778))))

(declare-fun res!312113 () Bool)

(assert (=> b!511298 (=> res!312113 e!298778)))

(declare-fun lt!233973 () SeekEntryResult!4260)

(declare-fun lt!233975 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32824 (_ BitVec 32)) SeekEntryResult!4260)

(assert (=> b!511298 (= res!312113 (= lt!233973 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233975 (select (store (arr!15786 a!3235) i!1204 k!2280) j!176) (array!32825 (store (arr!15786 a!3235) i!1204 k!2280) (size!16150 a!3235)) mask!3524)))))

(declare-fun lt!233974 () (_ BitVec 32))

(assert (=> b!511298 (= lt!233973 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!233974 (select (arr!15786 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511298 (= lt!233975 (toIndex!0 (select (store (arr!15786 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511298 (= lt!233974 (toIndex!0 (select (arr!15786 a!3235) j!176) mask!3524))))

(declare-fun lt!233978 () SeekEntryResult!4260)

(assert (=> b!511298 (= lt!233978 (Found!4260 j!176))))

(assert (=> b!511298 (= lt!233978 (seekEntryOrOpen!0 (select (arr!15786 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!511298 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15770 0))(
  ( (Unit!15771) )
))
(declare-fun lt!233976 () Unit!15770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32824 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15770)

(assert (=> b!511298 (= lt!233976 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511299 () Bool)

(declare-fun res!312115 () Bool)

(assert (=> b!511299 (=> (not res!312115) (not e!298777))))

(declare-fun arrayContainsKey!0 (array!32824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511299 (= res!312115 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511300 () Bool)

(declare-fun res!312114 () Bool)

(assert (=> b!511300 (=> (not res!312114) (not e!298777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511300 (= res!312114 (validKeyInArray!0 k!2280))))

(declare-fun b!511301 () Bool)

(declare-fun res!312107 () Bool)

(assert (=> b!511301 (=> (not res!312107) (not e!298777))))

(assert (=> b!511301 (= res!312107 (validKeyInArray!0 (select (arr!15786 a!3235) j!176)))))

(declare-fun b!511302 () Bool)

(declare-fun res!312112 () Bool)

(assert (=> b!511302 (=> (not res!312112) (not e!298780))))

(declare-datatypes ((List!9997 0))(
  ( (Nil!9994) (Cons!9993 (h!10873 (_ BitVec 64)) (t!16233 List!9997)) )
))
(declare-fun arrayNoDuplicates!0 (array!32824 (_ BitVec 32) List!9997) Bool)

(assert (=> b!511302 (= res!312112 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9994))))

(declare-fun b!511303 () Bool)

(assert (=> b!511303 (= e!298778 true)))

(assert (=> b!511303 (= lt!233978 Undefined!4260)))

(declare-fun b!511304 () Bool)

(declare-fun res!312111 () Bool)

(assert (=> b!511304 (=> res!312111 e!298778)))

(assert (=> b!511304 (= res!312111 (or (not (is-Intermediate!4260 lt!233973)) (not (undefined!5072 lt!233973))))))

(assert (= (and start!46210 res!312110) b!511295))

(assert (= (and b!511295 res!312108) b!511301))

(assert (= (and b!511301 res!312107) b!511300))

(assert (= (and b!511300 res!312114) b!511299))

(assert (= (and b!511299 res!312115) b!511297))

(assert (= (and b!511297 res!312109) b!511296))

(assert (= (and b!511296 res!312116) b!511302))

(assert (= (and b!511302 res!312112) b!511298))

(assert (= (and b!511298 (not res!312113)) b!511304))

(assert (= (and b!511304 (not res!312111)) b!511303))

(declare-fun m!492799 () Bool)

(assert (=> b!511302 m!492799))

(declare-fun m!492801 () Bool)

(assert (=> start!46210 m!492801))

(declare-fun m!492803 () Bool)

(assert (=> start!46210 m!492803))

(declare-fun m!492805 () Bool)

(assert (=> b!511301 m!492805))

(assert (=> b!511301 m!492805))

(declare-fun m!492807 () Bool)

(assert (=> b!511301 m!492807))

(declare-fun m!492809 () Bool)

(assert (=> b!511300 m!492809))

(declare-fun m!492811 () Bool)

(assert (=> b!511297 m!492811))

(declare-fun m!492813 () Bool)

(assert (=> b!511299 m!492813))

(declare-fun m!492815 () Bool)

(assert (=> b!511298 m!492815))

(assert (=> b!511298 m!492805))

(declare-fun m!492817 () Bool)

(assert (=> b!511298 m!492817))

(declare-fun m!492819 () Bool)

(assert (=> b!511298 m!492819))

(declare-fun m!492821 () Bool)

(assert (=> b!511298 m!492821))

(assert (=> b!511298 m!492821))

(declare-fun m!492823 () Bool)

(assert (=> b!511298 m!492823))

(assert (=> b!511298 m!492805))

(declare-fun m!492825 () Bool)

(assert (=> b!511298 m!492825))

(assert (=> b!511298 m!492805))

(declare-fun m!492827 () Bool)

(assert (=> b!511298 m!492827))

(assert (=> b!511298 m!492805))

(declare-fun m!492829 () Bool)

(assert (=> b!511298 m!492829))

(assert (=> b!511298 m!492821))

(declare-fun m!492831 () Bool)

(assert (=> b!511298 m!492831))

(declare-fun m!492833 () Bool)

(assert (=> b!511296 m!492833))

(push 1)

