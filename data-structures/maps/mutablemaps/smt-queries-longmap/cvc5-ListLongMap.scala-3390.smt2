; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46762 () Bool)

(assert start!46762)

(declare-fun e!301219 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33034 0))(
  ( (array!33035 (arr!15882 (Array (_ BitVec 32) (_ BitVec 64))) (size!16246 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33034)

(declare-fun b!516076 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4356 0))(
  ( (MissingZero!4356 (index!19612 (_ BitVec 32))) (Found!4356 (index!19613 (_ BitVec 32))) (Intermediate!4356 (undefined!5168 Bool) (index!19614 (_ BitVec 32)) (x!48602 (_ BitVec 32))) (Undefined!4356) (MissingVacant!4356 (index!19615 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33034 (_ BitVec 32)) SeekEntryResult!4356)

(assert (=> b!516076 (= e!301219 (= (seekEntryOrOpen!0 (select (arr!15882 a!3235) j!176) a!3235 mask!3524) (Found!4356 j!176)))))

(declare-fun b!516077 () Bool)

(declare-fun res!315799 () Bool)

(declare-fun e!301218 () Bool)

(assert (=> b!516077 (=> (not res!315799) (not e!301218))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516077 (= res!315799 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516078 () Bool)

(declare-fun res!315795 () Bool)

(assert (=> b!516078 (=> (not res!315795) (not e!301218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516078 (= res!315795 (validKeyInArray!0 k!2280))))

(declare-fun b!516079 () Bool)

(declare-fun res!315800 () Bool)

(assert (=> b!516079 (=> (not res!315800) (not e!301218))))

(assert (=> b!516079 (= res!315800 (validKeyInArray!0 (select (arr!15882 a!3235) j!176)))))

(declare-fun b!516080 () Bool)

(declare-fun e!301222 () Bool)

(assert (=> b!516080 (= e!301222 true)))

(declare-fun lt!236302 () SeekEntryResult!4356)

(assert (=> b!516080 (and (bvslt (x!48602 lt!236302) #b01111111111111111111111111111110) (or (= (select (arr!15882 a!3235) (index!19614 lt!236302)) (select (arr!15882 a!3235) j!176)) (= (select (arr!15882 a!3235) (index!19614 lt!236302)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15882 a!3235) (index!19614 lt!236302)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516082 () Bool)

(declare-fun res!315793 () Bool)

(declare-fun e!301220 () Bool)

(assert (=> b!516082 (=> (not res!315793) (not e!301220))))

(declare-datatypes ((List!10093 0))(
  ( (Nil!10090) (Cons!10089 (h!10987 (_ BitVec 64)) (t!16329 List!10093)) )
))
(declare-fun arrayNoDuplicates!0 (array!33034 (_ BitVec 32) List!10093) Bool)

(assert (=> b!516082 (= res!315793 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10090))))

(declare-fun b!516083 () Bool)

(declare-fun res!315798 () Bool)

(assert (=> b!516083 (=> (not res!315798) (not e!301220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33034 (_ BitVec 32)) Bool)

(assert (=> b!516083 (= res!315798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516084 () Bool)

(assert (=> b!516084 (= e!301218 e!301220)))

(declare-fun res!315792 () Bool)

(assert (=> b!516084 (=> (not res!315792) (not e!301220))))

(declare-fun lt!236306 () SeekEntryResult!4356)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516084 (= res!315792 (or (= lt!236306 (MissingZero!4356 i!1204)) (= lt!236306 (MissingVacant!4356 i!1204))))))

(assert (=> b!516084 (= lt!236306 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516081 () Bool)

(declare-fun res!315794 () Bool)

(assert (=> b!516081 (=> (not res!315794) (not e!301218))))

(assert (=> b!516081 (= res!315794 (and (= (size!16246 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16246 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16246 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!315796 () Bool)

(assert (=> start!46762 (=> (not res!315796) (not e!301218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46762 (= res!315796 (validMask!0 mask!3524))))

(assert (=> start!46762 e!301218))

(assert (=> start!46762 true))

(declare-fun array_inv!11656 (array!33034) Bool)

(assert (=> start!46762 (array_inv!11656 a!3235)))

(declare-fun b!516085 () Bool)

(declare-fun res!315790 () Bool)

(assert (=> b!516085 (=> res!315790 e!301222)))

(assert (=> b!516085 (= res!315790 (or (undefined!5168 lt!236302) (not (is-Intermediate!4356 lt!236302))))))

(declare-fun b!516086 () Bool)

(assert (=> b!516086 (= e!301220 (not e!301222))))

(declare-fun res!315791 () Bool)

(assert (=> b!516086 (=> res!315791 e!301222)))

(declare-fun lt!236305 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33034 (_ BitVec 32)) SeekEntryResult!4356)

(assert (=> b!516086 (= res!315791 (= lt!236302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236305 (select (store (arr!15882 a!3235) i!1204 k!2280) j!176) (array!33035 (store (arr!15882 a!3235) i!1204 k!2280) (size!16246 a!3235)) mask!3524)))))

(declare-fun lt!236304 () (_ BitVec 32))

(assert (=> b!516086 (= lt!236302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236304 (select (arr!15882 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516086 (= lt!236305 (toIndex!0 (select (store (arr!15882 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516086 (= lt!236304 (toIndex!0 (select (arr!15882 a!3235) j!176) mask!3524))))

(assert (=> b!516086 e!301219))

(declare-fun res!315797 () Bool)

(assert (=> b!516086 (=> (not res!315797) (not e!301219))))

(assert (=> b!516086 (= res!315797 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15962 0))(
  ( (Unit!15963) )
))
(declare-fun lt!236303 () Unit!15962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33034 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15962)

(assert (=> b!516086 (= lt!236303 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!46762 res!315796) b!516081))

(assert (= (and b!516081 res!315794) b!516079))

(assert (= (and b!516079 res!315800) b!516078))

(assert (= (and b!516078 res!315795) b!516077))

(assert (= (and b!516077 res!315799) b!516084))

(assert (= (and b!516084 res!315792) b!516083))

(assert (= (and b!516083 res!315798) b!516082))

(assert (= (and b!516082 res!315793) b!516086))

(assert (= (and b!516086 res!315797) b!516076))

(assert (= (and b!516086 (not res!315791)) b!516085))

(assert (= (and b!516085 (not res!315790)) b!516080))

(declare-fun m!497575 () Bool)

(assert (=> b!516083 m!497575))

(declare-fun m!497577 () Bool)

(assert (=> b!516076 m!497577))

(assert (=> b!516076 m!497577))

(declare-fun m!497579 () Bool)

(assert (=> b!516076 m!497579))

(assert (=> b!516079 m!497577))

(assert (=> b!516079 m!497577))

(declare-fun m!497581 () Bool)

(assert (=> b!516079 m!497581))

(declare-fun m!497583 () Bool)

(assert (=> b!516078 m!497583))

(declare-fun m!497585 () Bool)

(assert (=> b!516082 m!497585))

(declare-fun m!497587 () Bool)

(assert (=> b!516077 m!497587))

(declare-fun m!497589 () Bool)

(assert (=> b!516086 m!497589))

(declare-fun m!497591 () Bool)

(assert (=> b!516086 m!497591))

(declare-fun m!497593 () Bool)

(assert (=> b!516086 m!497593))

(assert (=> b!516086 m!497577))

(declare-fun m!497595 () Bool)

(assert (=> b!516086 m!497595))

(assert (=> b!516086 m!497577))

(declare-fun m!497597 () Bool)

(assert (=> b!516086 m!497597))

(assert (=> b!516086 m!497593))

(declare-fun m!497599 () Bool)

(assert (=> b!516086 m!497599))

(assert (=> b!516086 m!497577))

(declare-fun m!497601 () Bool)

(assert (=> b!516086 m!497601))

(assert (=> b!516086 m!497593))

(declare-fun m!497603 () Bool)

(assert (=> b!516086 m!497603))

(declare-fun m!497605 () Bool)

(assert (=> start!46762 m!497605))

(declare-fun m!497607 () Bool)

(assert (=> start!46762 m!497607))

(declare-fun m!497609 () Bool)

(assert (=> b!516080 m!497609))

(assert (=> b!516080 m!497577))

(declare-fun m!497611 () Bool)

(assert (=> b!516084 m!497611))

(push 1)

