; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32440 () Bool)

(assert start!32440)

(declare-fun b!323769 () Bool)

(declare-fun res!177269 () Bool)

(declare-fun e!200021 () Bool)

(assert (=> b!323769 (=> (not res!177269) (not e!200021))))

(declare-datatypes ((array!16575 0))(
  ( (array!16576 (arr!7842 (Array (_ BitVec 32) (_ BitVec 64))) (size!8194 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16575)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!323769 (= res!177269 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7842 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323770 () Bool)

(declare-datatypes ((Unit!10074 0))(
  ( (Unit!10075) )
))
(declare-fun e!200022 () Unit!10074)

(declare-fun e!200025 () Unit!10074)

(assert (=> b!323770 (= e!200022 e!200025)))

(declare-fun c!50881 () Bool)

(assert (=> b!323770 (= c!50881 (or (= (select (arr!7842 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7842 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323771 () Bool)

(declare-fun e!200026 () Bool)

(assert (=> b!323771 (= e!200026 e!200021)))

(declare-fun res!177268 () Bool)

(assert (=> b!323771 (=> (not res!177268) (not e!200021))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2984 0))(
  ( (MissingZero!2984 (index!14112 (_ BitVec 32))) (Found!2984 (index!14113 (_ BitVec 32))) (Intermediate!2984 (undefined!3796 Bool) (index!14114 (_ BitVec 32)) (x!32327 (_ BitVec 32))) (Undefined!2984) (MissingVacant!2984 (index!14115 (_ BitVec 32))) )
))
(declare-fun lt!156697 () SeekEntryResult!2984)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16575 (_ BitVec 32)) SeekEntryResult!2984)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323771 (= res!177268 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156697))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!323771 (= lt!156697 (Intermediate!2984 false resIndex!58 resX!58))))

(declare-fun b!323772 () Bool)

(declare-fun res!177270 () Bool)

(assert (=> b!323772 (=> (not res!177270) (not e!200026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323772 (= res!177270 (validKeyInArray!0 k!2497))))

(declare-fun b!323773 () Bool)

(declare-fun res!177272 () Bool)

(assert (=> b!323773 (=> (not res!177272) (not e!200021))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323773 (= res!177272 (and (= (select (arr!7842 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8194 a!3305))))))

(declare-fun b!323774 () Bool)

(declare-fun e!200024 () Unit!10074)

(declare-fun Unit!10076 () Unit!10074)

(assert (=> b!323774 (= e!200024 Unit!10076)))

(assert (=> b!323774 false))

(declare-fun b!323775 () Bool)

(declare-fun res!177267 () Bool)

(assert (=> b!323775 (=> (not res!177267) (not e!200026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16575 (_ BitVec 32)) Bool)

(assert (=> b!323775 (= res!177267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323776 () Bool)

(declare-fun res!177265 () Bool)

(assert (=> b!323776 (=> (not res!177265) (not e!200021))))

(assert (=> b!323776 (= res!177265 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156697))))

(declare-fun b!323778 () Bool)

(assert (=> b!323778 (= e!200021 (not true))))

(assert (=> b!323778 (= index!1840 resIndex!58)))

(declare-fun lt!156698 () Unit!10074)

(assert (=> b!323778 (= lt!156698 e!200022)))

(declare-fun c!50882 () Bool)

(assert (=> b!323778 (= c!50882 (not (= resIndex!58 index!1840)))))

(declare-fun b!323779 () Bool)

(assert (=> b!323779 false))

(declare-fun Unit!10077 () Unit!10074)

(assert (=> b!323779 (= e!200025 Unit!10077)))

(declare-fun b!323780 () Bool)

(declare-fun Unit!10078 () Unit!10074)

(assert (=> b!323780 (= e!200022 Unit!10078)))

(declare-fun b!323781 () Bool)

(declare-fun res!177273 () Bool)

(assert (=> b!323781 (=> (not res!177273) (not e!200026))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16575 (_ BitVec 32)) SeekEntryResult!2984)

(assert (=> b!323781 (= res!177273 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2984 i!1250)))))

(declare-fun b!323782 () Bool)

(assert (=> b!323782 false))

(declare-fun lt!156696 () Unit!10074)

(assert (=> b!323782 (= lt!156696 e!200024)))

(declare-fun c!50880 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323782 (= c!50880 (is-Intermediate!2984 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10079 () Unit!10074)

(assert (=> b!323782 (= e!200025 Unit!10079)))

(declare-fun b!323783 () Bool)

(declare-fun res!177266 () Bool)

(assert (=> b!323783 (=> (not res!177266) (not e!200026))))

(assert (=> b!323783 (= res!177266 (and (= (size!8194 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8194 a!3305))))))

(declare-fun b!323784 () Bool)

(declare-fun res!177264 () Bool)

(assert (=> b!323784 (=> (not res!177264) (not e!200026))))

(declare-fun arrayContainsKey!0 (array!16575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323784 (= res!177264 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!177271 () Bool)

(assert (=> start!32440 (=> (not res!177271) (not e!200026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32440 (= res!177271 (validMask!0 mask!3777))))

(assert (=> start!32440 e!200026))

(declare-fun array_inv!5796 (array!16575) Bool)

(assert (=> start!32440 (array_inv!5796 a!3305)))

(assert (=> start!32440 true))

(declare-fun b!323777 () Bool)

(declare-fun Unit!10080 () Unit!10074)

(assert (=> b!323777 (= e!200024 Unit!10080)))

(assert (= (and start!32440 res!177271) b!323783))

(assert (= (and b!323783 res!177266) b!323772))

(assert (= (and b!323772 res!177270) b!323784))

(assert (= (and b!323784 res!177264) b!323781))

(assert (= (and b!323781 res!177273) b!323775))

(assert (= (and b!323775 res!177267) b!323771))

(assert (= (and b!323771 res!177268) b!323773))

(assert (= (and b!323773 res!177272) b!323776))

(assert (= (and b!323776 res!177265) b!323769))

(assert (= (and b!323769 res!177269) b!323778))

(assert (= (and b!323778 c!50882) b!323770))

(assert (= (and b!323778 (not c!50882)) b!323780))

(assert (= (and b!323770 c!50881) b!323779))

(assert (= (and b!323770 (not c!50881)) b!323782))

(assert (= (and b!323782 c!50880) b!323777))

(assert (= (and b!323782 (not c!50880)) b!323774))

(declare-fun m!330947 () Bool)

(assert (=> b!323775 m!330947))

(declare-fun m!330949 () Bool)

(assert (=> b!323782 m!330949))

(assert (=> b!323782 m!330949))

(declare-fun m!330951 () Bool)

(assert (=> b!323782 m!330951))

(declare-fun m!330953 () Bool)

(assert (=> b!323773 m!330953))

(declare-fun m!330955 () Bool)

(assert (=> b!323776 m!330955))

(declare-fun m!330957 () Bool)

(assert (=> b!323771 m!330957))

(assert (=> b!323771 m!330957))

(declare-fun m!330959 () Bool)

(assert (=> b!323771 m!330959))

(declare-fun m!330961 () Bool)

(assert (=> start!32440 m!330961))

(declare-fun m!330963 () Bool)

(assert (=> start!32440 m!330963))

(declare-fun m!330965 () Bool)

(assert (=> b!323770 m!330965))

(declare-fun m!330967 () Bool)

(assert (=> b!323781 m!330967))

(assert (=> b!323769 m!330965))

(declare-fun m!330969 () Bool)

(assert (=> b!323784 m!330969))

(declare-fun m!330971 () Bool)

(assert (=> b!323772 m!330971))

(push 1)

(assert (not b!323776))

(assert (not b!323784))

(assert (not b!323771))

(assert (not b!323775))

(assert (not start!32440))

(assert (not b!323772))

(assert (not b!323781))

(assert (not b!323782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

