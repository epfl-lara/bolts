; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46774 () Bool)

(assert start!46774)

(declare-fun b!516274 () Bool)

(declare-fun res!315991 () Bool)

(declare-fun e!301308 () Bool)

(assert (=> b!516274 (=> (not res!315991) (not e!301308))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516274 (= res!315991 (validKeyInArray!0 k!2280))))

(declare-fun res!315995 () Bool)

(assert (=> start!46774 (=> (not res!315995) (not e!301308))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46774 (= res!315995 (validMask!0 mask!3524))))

(assert (=> start!46774 e!301308))

(assert (=> start!46774 true))

(declare-datatypes ((array!33046 0))(
  ( (array!33047 (arr!15888 (Array (_ BitVec 32) (_ BitVec 64))) (size!16252 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33046)

(declare-fun array_inv!11662 (array!33046) Bool)

(assert (=> start!46774 (array_inv!11662 a!3235)))

(declare-fun b!516275 () Bool)

(declare-fun e!301312 () Bool)

(declare-fun e!301309 () Bool)

(assert (=> b!516275 (= e!301312 (not e!301309))))

(declare-fun res!315998 () Bool)

(assert (=> b!516275 (=> res!315998 e!301309)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!236393 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4362 0))(
  ( (MissingZero!4362 (index!19636 (_ BitVec 32))) (Found!4362 (index!19637 (_ BitVec 32))) (Intermediate!4362 (undefined!5174 Bool) (index!19638 (_ BitVec 32)) (x!48624 (_ BitVec 32))) (Undefined!4362) (MissingVacant!4362 (index!19639 (_ BitVec 32))) )
))
(declare-fun lt!236396 () SeekEntryResult!4362)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33046 (_ BitVec 32)) SeekEntryResult!4362)

(assert (=> b!516275 (= res!315998 (= lt!236396 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236393 (select (store (arr!15888 a!3235) i!1204 k!2280) j!176) (array!33047 (store (arr!15888 a!3235) i!1204 k!2280) (size!16252 a!3235)) mask!3524)))))

(declare-fun lt!236392 () (_ BitVec 32))

(assert (=> b!516275 (= lt!236396 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236392 (select (arr!15888 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516275 (= lt!236393 (toIndex!0 (select (store (arr!15888 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516275 (= lt!236392 (toIndex!0 (select (arr!15888 a!3235) j!176) mask!3524))))

(declare-fun e!301311 () Bool)

(assert (=> b!516275 e!301311))

(declare-fun res!315997 () Bool)

(assert (=> b!516275 (=> (not res!315997) (not e!301311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33046 (_ BitVec 32)) Bool)

(assert (=> b!516275 (= res!315997 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15974 0))(
  ( (Unit!15975) )
))
(declare-fun lt!236394 () Unit!15974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33046 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15974)

(assert (=> b!516275 (= lt!236394 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516276 () Bool)

(assert (=> b!516276 (= e!301309 true)))

(assert (=> b!516276 (and (bvslt (x!48624 lt!236396) #b01111111111111111111111111111110) (or (= (select (arr!15888 a!3235) (index!19638 lt!236396)) (select (arr!15888 a!3235) j!176)) (= (select (arr!15888 a!3235) (index!19638 lt!236396)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15888 a!3235) (index!19638 lt!236396)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516277 () Bool)

(declare-fun res!315990 () Bool)

(assert (=> b!516277 (=> (not res!315990) (not e!301312))))

(assert (=> b!516277 (= res!315990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516278 () Bool)

(assert (=> b!516278 (= e!301308 e!301312)))

(declare-fun res!315992 () Bool)

(assert (=> b!516278 (=> (not res!315992) (not e!301312))))

(declare-fun lt!236395 () SeekEntryResult!4362)

(assert (=> b!516278 (= res!315992 (or (= lt!236395 (MissingZero!4362 i!1204)) (= lt!236395 (MissingVacant!4362 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33046 (_ BitVec 32)) SeekEntryResult!4362)

(assert (=> b!516278 (= lt!236395 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516279 () Bool)

(declare-fun res!315988 () Bool)

(assert (=> b!516279 (=> res!315988 e!301309)))

(assert (=> b!516279 (= res!315988 (or (undefined!5174 lt!236396) (not (is-Intermediate!4362 lt!236396))))))

(declare-fun b!516280 () Bool)

(assert (=> b!516280 (= e!301311 (= (seekEntryOrOpen!0 (select (arr!15888 a!3235) j!176) a!3235 mask!3524) (Found!4362 j!176)))))

(declare-fun b!516281 () Bool)

(declare-fun res!315993 () Bool)

(assert (=> b!516281 (=> (not res!315993) (not e!301308))))

(declare-fun arrayContainsKey!0 (array!33046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516281 (= res!315993 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516282 () Bool)

(declare-fun res!315994 () Bool)

(assert (=> b!516282 (=> (not res!315994) (not e!301308))))

(assert (=> b!516282 (= res!315994 (validKeyInArray!0 (select (arr!15888 a!3235) j!176)))))

(declare-fun b!516283 () Bool)

(declare-fun res!315996 () Bool)

(assert (=> b!516283 (=> (not res!315996) (not e!301308))))

(assert (=> b!516283 (= res!315996 (and (= (size!16252 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16252 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16252 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516284 () Bool)

(declare-fun res!315989 () Bool)

(assert (=> b!516284 (=> (not res!315989) (not e!301312))))

(declare-datatypes ((List!10099 0))(
  ( (Nil!10096) (Cons!10095 (h!10993 (_ BitVec 64)) (t!16335 List!10099)) )
))
(declare-fun arrayNoDuplicates!0 (array!33046 (_ BitVec 32) List!10099) Bool)

(assert (=> b!516284 (= res!315989 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10096))))

(assert (= (and start!46774 res!315995) b!516283))

(assert (= (and b!516283 res!315996) b!516282))

(assert (= (and b!516282 res!315994) b!516274))

(assert (= (and b!516274 res!315991) b!516281))

(assert (= (and b!516281 res!315993) b!516278))

(assert (= (and b!516278 res!315992) b!516277))

(assert (= (and b!516277 res!315990) b!516284))

(assert (= (and b!516284 res!315989) b!516275))

(assert (= (and b!516275 res!315997) b!516280))

(assert (= (and b!516275 (not res!315998)) b!516279))

(assert (= (and b!516279 (not res!315988)) b!516276))

(declare-fun m!497803 () Bool)

(assert (=> b!516281 m!497803))

(declare-fun m!497805 () Bool)

(assert (=> b!516278 m!497805))

(declare-fun m!497807 () Bool)

(assert (=> b!516277 m!497807))

(declare-fun m!497809 () Bool)

(assert (=> b!516276 m!497809))

(declare-fun m!497811 () Bool)

(assert (=> b!516276 m!497811))

(assert (=> b!516280 m!497811))

(assert (=> b!516280 m!497811))

(declare-fun m!497813 () Bool)

(assert (=> b!516280 m!497813))

(declare-fun m!497815 () Bool)

(assert (=> start!46774 m!497815))

(declare-fun m!497817 () Bool)

(assert (=> start!46774 m!497817))

(declare-fun m!497819 () Bool)

(assert (=> b!516275 m!497819))

(declare-fun m!497821 () Bool)

(assert (=> b!516275 m!497821))

(declare-fun m!497823 () Bool)

(assert (=> b!516275 m!497823))

(declare-fun m!497825 () Bool)

(assert (=> b!516275 m!497825))

(assert (=> b!516275 m!497819))

(assert (=> b!516275 m!497811))

(declare-fun m!497827 () Bool)

(assert (=> b!516275 m!497827))

(assert (=> b!516275 m!497811))

(declare-fun m!497829 () Bool)

(assert (=> b!516275 m!497829))

(assert (=> b!516275 m!497811))

(declare-fun m!497831 () Bool)

(assert (=> b!516275 m!497831))

(assert (=> b!516275 m!497819))

(declare-fun m!497833 () Bool)

(assert (=> b!516275 m!497833))

(assert (=> b!516282 m!497811))

(assert (=> b!516282 m!497811))

(declare-fun m!497835 () Bool)

(assert (=> b!516282 m!497835))

(declare-fun m!497837 () Bool)

(assert (=> b!516284 m!497837))

(declare-fun m!497839 () Bool)

(assert (=> b!516274 m!497839))

(push 1)

