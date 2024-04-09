; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46732 () Bool)

(assert start!46732)

(declare-fun b!515581 () Bool)

(declare-fun e!300993 () Bool)

(assert (=> b!515581 (= e!300993 true)))

(declare-datatypes ((SeekEntryResult!4341 0))(
  ( (MissingZero!4341 (index!19552 (_ BitVec 32))) (Found!4341 (index!19553 (_ BitVec 32))) (Intermediate!4341 (undefined!5153 Bool) (index!19554 (_ BitVec 32)) (x!48547 (_ BitVec 32))) (Undefined!4341) (MissingVacant!4341 (index!19555 (_ BitVec 32))) )
))
(declare-fun lt!236078 () SeekEntryResult!4341)

(declare-datatypes ((array!33004 0))(
  ( (array!33005 (arr!15867 (Array (_ BitVec 32) (_ BitVec 64))) (size!16231 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33004)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515581 (and (bvslt (x!48547 lt!236078) #b01111111111111111111111111111110) (or (= (select (arr!15867 a!3235) (index!19554 lt!236078)) (select (arr!15867 a!3235) j!176)) (= (select (arr!15867 a!3235) (index!19554 lt!236078)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15867 a!3235) (index!19554 lt!236078)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515582 () Bool)

(declare-fun res!315296 () Bool)

(declare-fun e!300996 () Bool)

(assert (=> b!515582 (=> (not res!315296) (not e!300996))))

(declare-datatypes ((List!10078 0))(
  ( (Nil!10075) (Cons!10074 (h!10972 (_ BitVec 64)) (t!16314 List!10078)) )
))
(declare-fun arrayNoDuplicates!0 (array!33004 (_ BitVec 32) List!10078) Bool)

(assert (=> b!515582 (= res!315296 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10075))))

(declare-fun b!515583 () Bool)

(declare-fun res!315301 () Bool)

(declare-fun e!300995 () Bool)

(assert (=> b!515583 (=> (not res!315301) (not e!300995))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515583 (= res!315301 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!300994 () Bool)

(declare-fun b!515584 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33004 (_ BitVec 32)) SeekEntryResult!4341)

(assert (=> b!515584 (= e!300994 (= (seekEntryOrOpen!0 (select (arr!15867 a!3235) j!176) a!3235 mask!3524) (Found!4341 j!176)))))

(declare-fun b!515585 () Bool)

(declare-fun res!315298 () Bool)

(assert (=> b!515585 (=> res!315298 e!300993)))

(assert (=> b!515585 (= res!315298 (or (undefined!5153 lt!236078) (not (is-Intermediate!4341 lt!236078))))))

(declare-fun b!515586 () Bool)

(declare-fun res!315297 () Bool)

(assert (=> b!515586 (=> (not res!315297) (not e!300996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33004 (_ BitVec 32)) Bool)

(assert (=> b!515586 (= res!315297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515587 () Bool)

(assert (=> b!515587 (= e!300995 e!300996)))

(declare-fun res!315300 () Bool)

(assert (=> b!515587 (=> (not res!315300) (not e!300996))))

(declare-fun lt!236079 () SeekEntryResult!4341)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515587 (= res!315300 (or (= lt!236079 (MissingZero!4341 i!1204)) (= lt!236079 (MissingVacant!4341 i!1204))))))

(assert (=> b!515587 (= lt!236079 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515588 () Bool)

(declare-fun res!315295 () Bool)

(assert (=> b!515588 (=> (not res!315295) (not e!300995))))

(assert (=> b!515588 (= res!315295 (and (= (size!16231 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16231 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16231 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515589 () Bool)

(declare-fun res!315304 () Bool)

(assert (=> b!515589 (=> (not res!315304) (not e!300995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515589 (= res!315304 (validKeyInArray!0 k!2280))))

(declare-fun res!315303 () Bool)

(assert (=> start!46732 (=> (not res!315303) (not e!300995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46732 (= res!315303 (validMask!0 mask!3524))))

(assert (=> start!46732 e!300995))

(assert (=> start!46732 true))

(declare-fun array_inv!11641 (array!33004) Bool)

(assert (=> start!46732 (array_inv!11641 a!3235)))

(declare-fun b!515590 () Bool)

(assert (=> b!515590 (= e!300996 (not e!300993))))

(declare-fun res!315305 () Bool)

(assert (=> b!515590 (=> res!315305 e!300993)))

(declare-fun lt!236081 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33004 (_ BitVec 32)) SeekEntryResult!4341)

(assert (=> b!515590 (= res!315305 (= lt!236078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236081 (select (store (arr!15867 a!3235) i!1204 k!2280) j!176) (array!33005 (store (arr!15867 a!3235) i!1204 k!2280) (size!16231 a!3235)) mask!3524)))))

(declare-fun lt!236077 () (_ BitVec 32))

(assert (=> b!515590 (= lt!236078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236077 (select (arr!15867 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515590 (= lt!236081 (toIndex!0 (select (store (arr!15867 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515590 (= lt!236077 (toIndex!0 (select (arr!15867 a!3235) j!176) mask!3524))))

(assert (=> b!515590 e!300994))

(declare-fun res!315299 () Bool)

(assert (=> b!515590 (=> (not res!315299) (not e!300994))))

(assert (=> b!515590 (= res!315299 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15932 0))(
  ( (Unit!15933) )
))
(declare-fun lt!236080 () Unit!15932)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33004 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15932)

(assert (=> b!515590 (= lt!236080 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515591 () Bool)

(declare-fun res!315302 () Bool)

(assert (=> b!515591 (=> (not res!315302) (not e!300995))))

(assert (=> b!515591 (= res!315302 (validKeyInArray!0 (select (arr!15867 a!3235) j!176)))))

(assert (= (and start!46732 res!315303) b!515588))

(assert (= (and b!515588 res!315295) b!515591))

(assert (= (and b!515591 res!315302) b!515589))

(assert (= (and b!515589 res!315304) b!515583))

(assert (= (and b!515583 res!315301) b!515587))

(assert (= (and b!515587 res!315300) b!515586))

(assert (= (and b!515586 res!315297) b!515582))

(assert (= (and b!515582 res!315296) b!515590))

(assert (= (and b!515590 res!315299) b!515584))

(assert (= (and b!515590 (not res!315305)) b!515585))

(assert (= (and b!515585 (not res!315298)) b!515581))

(declare-fun m!497005 () Bool)

(assert (=> b!515583 m!497005))

(declare-fun m!497007 () Bool)

(assert (=> b!515590 m!497007))

(declare-fun m!497009 () Bool)

(assert (=> b!515590 m!497009))

(declare-fun m!497011 () Bool)

(assert (=> b!515590 m!497011))

(declare-fun m!497013 () Bool)

(assert (=> b!515590 m!497013))

(assert (=> b!515590 m!497011))

(declare-fun m!497015 () Bool)

(assert (=> b!515590 m!497015))

(assert (=> b!515590 m!497009))

(declare-fun m!497017 () Bool)

(assert (=> b!515590 m!497017))

(assert (=> b!515590 m!497009))

(declare-fun m!497019 () Bool)

(assert (=> b!515590 m!497019))

(assert (=> b!515590 m!497011))

(declare-fun m!497021 () Bool)

(assert (=> b!515590 m!497021))

(declare-fun m!497023 () Bool)

(assert (=> b!515590 m!497023))

(declare-fun m!497025 () Bool)

(assert (=> b!515581 m!497025))

(assert (=> b!515581 m!497011))

(declare-fun m!497027 () Bool)

(assert (=> b!515586 m!497027))

(declare-fun m!497029 () Bool)

(assert (=> b!515587 m!497029))

(assert (=> b!515591 m!497011))

(assert (=> b!515591 m!497011))

(declare-fun m!497031 () Bool)

(assert (=> b!515591 m!497031))

(declare-fun m!497033 () Bool)

(assert (=> b!515582 m!497033))

(declare-fun m!497035 () Bool)

(assert (=> start!46732 m!497035))

(declare-fun m!497037 () Bool)

(assert (=> start!46732 m!497037))

(assert (=> b!515584 m!497011))

(assert (=> b!515584 m!497011))

(declare-fun m!497039 () Bool)

(assert (=> b!515584 m!497039))

(declare-fun m!497041 () Bool)

(assert (=> b!515589 m!497041))

(push 1)

