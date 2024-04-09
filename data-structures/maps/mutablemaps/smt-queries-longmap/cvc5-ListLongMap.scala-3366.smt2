; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46258 () Bool)

(assert start!46258)

(declare-fun b!512015 () Bool)

(declare-fun res!312828 () Bool)

(declare-fun e!299068 () Bool)

(assert (=> b!512015 (=> (not res!312828) (not e!299068))))

(declare-datatypes ((array!32872 0))(
  ( (array!32873 (arr!15810 (Array (_ BitVec 32) (_ BitVec 64))) (size!16174 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32872)

(declare-datatypes ((List!10021 0))(
  ( (Nil!10018) (Cons!10017 (h!10897 (_ BitVec 64)) (t!16257 List!10021)) )
))
(declare-fun arrayNoDuplicates!0 (array!32872 (_ BitVec 32) List!10021) Bool)

(assert (=> b!512015 (= res!312828 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10018))))

(declare-fun b!512016 () Bool)

(declare-fun res!312832 () Bool)

(declare-fun e!299065 () Bool)

(assert (=> b!512016 (=> res!312832 e!299065)))

(declare-datatypes ((SeekEntryResult!4284 0))(
  ( (MissingZero!4284 (index!19324 (_ BitVec 32))) (Found!4284 (index!19325 (_ BitVec 32))) (Intermediate!4284 (undefined!5096 Bool) (index!19326 (_ BitVec 32)) (x!48302 (_ BitVec 32))) (Undefined!4284) (MissingVacant!4284 (index!19327 (_ BitVec 32))) )
))
(declare-fun lt!234406 () SeekEntryResult!4284)

(assert (=> b!512016 (= res!312832 (or (not (is-Intermediate!4284 lt!234406)) (not (undefined!5096 lt!234406))))))

(declare-fun b!512017 () Bool)

(declare-fun res!312835 () Bool)

(declare-fun e!299067 () Bool)

(assert (=> b!512017 (=> (not res!312835) (not e!299067))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512017 (= res!312835 (validKeyInArray!0 (select (arr!15810 a!3235) j!176)))))

(declare-fun b!512018 () Bool)

(assert (=> b!512018 (= e!299068 (not e!299065))))

(declare-fun res!312830 () Bool)

(assert (=> b!512018 (=> res!312830 e!299065)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!234408 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32872 (_ BitVec 32)) SeekEntryResult!4284)

(assert (=> b!512018 (= res!312830 (= lt!234406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234408 (select (store (arr!15810 a!3235) i!1204 k!2280) j!176) (array!32873 (store (arr!15810 a!3235) i!1204 k!2280) (size!16174 a!3235)) mask!3524)))))

(declare-fun lt!234410 () (_ BitVec 32))

(assert (=> b!512018 (= lt!234406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234410 (select (arr!15810 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512018 (= lt!234408 (toIndex!0 (select (store (arr!15810 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512018 (= lt!234410 (toIndex!0 (select (arr!15810 a!3235) j!176) mask!3524))))

(declare-fun lt!234405 () SeekEntryResult!4284)

(assert (=> b!512018 (= lt!234405 (Found!4284 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32872 (_ BitVec 32)) SeekEntryResult!4284)

(assert (=> b!512018 (= lt!234405 (seekEntryOrOpen!0 (select (arr!15810 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32872 (_ BitVec 32)) Bool)

(assert (=> b!512018 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15818 0))(
  ( (Unit!15819) )
))
(declare-fun lt!234407 () Unit!15818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15818)

(assert (=> b!512018 (= lt!234407 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512020 () Bool)

(declare-fun res!312834 () Bool)

(assert (=> b!512020 (=> (not res!312834) (not e!299067))))

(assert (=> b!512020 (= res!312834 (validKeyInArray!0 k!2280))))

(declare-fun b!512021 () Bool)

(declare-fun res!312833 () Bool)

(assert (=> b!512021 (=> (not res!312833) (not e!299068))))

(assert (=> b!512021 (= res!312833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512022 () Bool)

(assert (=> b!512022 (= e!299067 e!299068)))

(declare-fun res!312827 () Bool)

(assert (=> b!512022 (=> (not res!312827) (not e!299068))))

(declare-fun lt!234409 () SeekEntryResult!4284)

(assert (=> b!512022 (= res!312827 (or (= lt!234409 (MissingZero!4284 i!1204)) (= lt!234409 (MissingVacant!4284 i!1204))))))

(assert (=> b!512022 (= lt!234409 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512023 () Bool)

(declare-fun res!312831 () Bool)

(assert (=> b!512023 (=> (not res!312831) (not e!299067))))

(declare-fun arrayContainsKey!0 (array!32872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512023 (= res!312831 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512024 () Bool)

(declare-fun res!312829 () Bool)

(assert (=> b!512024 (=> (not res!312829) (not e!299067))))

(assert (=> b!512024 (= res!312829 (and (= (size!16174 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16174 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16174 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512019 () Bool)

(assert (=> b!512019 (= e!299065 true)))

(assert (=> b!512019 (= lt!234405 Undefined!4284)))

(declare-fun res!312836 () Bool)

(assert (=> start!46258 (=> (not res!312836) (not e!299067))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46258 (= res!312836 (validMask!0 mask!3524))))

(assert (=> start!46258 e!299067))

(assert (=> start!46258 true))

(declare-fun array_inv!11584 (array!32872) Bool)

(assert (=> start!46258 (array_inv!11584 a!3235)))

(assert (= (and start!46258 res!312836) b!512024))

(assert (= (and b!512024 res!312829) b!512017))

(assert (= (and b!512017 res!312835) b!512020))

(assert (= (and b!512020 res!312834) b!512023))

(assert (= (and b!512023 res!312831) b!512022))

(assert (= (and b!512022 res!312827) b!512021))

(assert (= (and b!512021 res!312833) b!512015))

(assert (= (and b!512015 res!312828) b!512018))

(assert (= (and b!512018 (not res!312830)) b!512016))

(assert (= (and b!512016 (not res!312832)) b!512019))

(declare-fun m!493663 () Bool)

(assert (=> b!512021 m!493663))

(declare-fun m!493665 () Bool)

(assert (=> b!512022 m!493665))

(declare-fun m!493667 () Bool)

(assert (=> b!512020 m!493667))

(declare-fun m!493669 () Bool)

(assert (=> start!46258 m!493669))

(declare-fun m!493671 () Bool)

(assert (=> start!46258 m!493671))

(declare-fun m!493673 () Bool)

(assert (=> b!512023 m!493673))

(declare-fun m!493675 () Bool)

(assert (=> b!512018 m!493675))

(declare-fun m!493677 () Bool)

(assert (=> b!512018 m!493677))

(declare-fun m!493679 () Bool)

(assert (=> b!512018 m!493679))

(declare-fun m!493681 () Bool)

(assert (=> b!512018 m!493681))

(declare-fun m!493683 () Bool)

(assert (=> b!512018 m!493683))

(declare-fun m!493685 () Bool)

(assert (=> b!512018 m!493685))

(assert (=> b!512018 m!493675))

(assert (=> b!512018 m!493681))

(declare-fun m!493687 () Bool)

(assert (=> b!512018 m!493687))

(assert (=> b!512018 m!493681))

(declare-fun m!493689 () Bool)

(assert (=> b!512018 m!493689))

(assert (=> b!512018 m!493681))

(declare-fun m!493691 () Bool)

(assert (=> b!512018 m!493691))

(assert (=> b!512018 m!493675))

(declare-fun m!493693 () Bool)

(assert (=> b!512018 m!493693))

(declare-fun m!493695 () Bool)

(assert (=> b!512015 m!493695))

(assert (=> b!512017 m!493681))

(assert (=> b!512017 m!493681))

(declare-fun m!493697 () Bool)

(assert (=> b!512017 m!493697))

(push 1)

