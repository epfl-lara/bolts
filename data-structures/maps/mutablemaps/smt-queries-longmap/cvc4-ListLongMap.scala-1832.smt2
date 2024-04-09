; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33214 () Bool)

(assert start!33214)

(declare-fun b!329871 () Bool)

(declare-datatypes ((Unit!10231 0))(
  ( (Unit!10232) )
))
(declare-fun e!202584 () Unit!10231)

(declare-fun e!202587 () Unit!10231)

(assert (=> b!329871 (= e!202584 e!202587)))

(declare-fun c!51664 () Bool)

(declare-datatypes ((array!16869 0))(
  ( (array!16870 (arr!7974 (Array (_ BitVec 32) (_ BitVec 64))) (size!8326 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16869)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!329871 (= c!51664 (or (= (select (arr!7974 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7974 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329872 () Bool)

(declare-fun res!181832 () Bool)

(declare-fun e!202585 () Bool)

(assert (=> b!329872 (=> (not res!181832) (not e!202585))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!329872 (= res!181832 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7974 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!329873 () Bool)

(assert (=> b!329873 false))

(declare-fun lt!158403 () Unit!10231)

(declare-fun e!202583 () Unit!10231)

(assert (=> b!329873 (= lt!158403 e!202583)))

(declare-fun c!51665 () Bool)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3116 0))(
  ( (MissingZero!3116 (index!14640 (_ BitVec 32))) (Found!3116 (index!14641 (_ BitVec 32))) (Intermediate!3116 (undefined!3928 Bool) (index!14642 (_ BitVec 32)) (x!32886 (_ BitVec 32))) (Undefined!3116) (MissingVacant!3116 (index!14643 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16869 (_ BitVec 32)) SeekEntryResult!3116)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329873 (= c!51665 (is-Intermediate!3116 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10233 () Unit!10231)

(assert (=> b!329873 (= e!202587 Unit!10233)))

(declare-fun b!329874 () Bool)

(declare-fun res!181833 () Bool)

(assert (=> b!329874 (=> (not res!181833) (not e!202585))))

(declare-fun lt!158405 () SeekEntryResult!3116)

(assert (=> b!329874 (= res!181833 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158405))))

(declare-fun b!329875 () Bool)

(declare-fun res!181838 () Bool)

(declare-fun e!202586 () Bool)

(assert (=> b!329875 (=> (not res!181838) (not e!202586))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16869 (_ BitVec 32)) SeekEntryResult!3116)

(assert (=> b!329875 (= res!181838 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3116 i!1250)))))

(declare-fun b!329876 () Bool)

(declare-fun res!181839 () Bool)

(assert (=> b!329876 (=> (not res!181839) (not e!202586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16869 (_ BitVec 32)) Bool)

(assert (=> b!329876 (= res!181839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329877 () Bool)

(declare-fun res!181831 () Bool)

(assert (=> b!329877 (=> (not res!181831) (not e!202586))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329877 (= res!181831 (validKeyInArray!0 k!2497))))

(declare-fun res!181834 () Bool)

(assert (=> start!33214 (=> (not res!181834) (not e!202586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33214 (= res!181834 (validMask!0 mask!3777))))

(assert (=> start!33214 e!202586))

(declare-fun array_inv!5928 (array!16869) Bool)

(assert (=> start!33214 (array_inv!5928 a!3305)))

(assert (=> start!33214 true))

(declare-fun b!329878 () Bool)

(declare-fun res!181835 () Bool)

(assert (=> b!329878 (=> (not res!181835) (not e!202586))))

(assert (=> b!329878 (= res!181835 (and (= (size!8326 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8326 a!3305))))))

(declare-fun b!329879 () Bool)

(declare-fun Unit!10234 () Unit!10231)

(assert (=> b!329879 (= e!202583 Unit!10234)))

(declare-fun b!329880 () Bool)

(declare-fun res!181836 () Bool)

(assert (=> b!329880 (=> (not res!181836) (not e!202586))))

(declare-fun arrayContainsKey!0 (array!16869 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329880 (= res!181836 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329881 () Bool)

(declare-fun Unit!10235 () Unit!10231)

(assert (=> b!329881 (= e!202583 Unit!10235)))

(assert (=> b!329881 false))

(declare-fun b!329882 () Bool)

(declare-fun Unit!10236 () Unit!10231)

(assert (=> b!329882 (= e!202584 Unit!10236)))

(declare-fun b!329883 () Bool)

(declare-fun res!181837 () Bool)

(assert (=> b!329883 (=> (not res!181837) (not e!202585))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!329883 (= res!181837 (and (= (select (arr!7974 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8326 a!3305))))))

(declare-fun b!329884 () Bool)

(assert (=> b!329884 (= e!202585 (not (= index!1840 resIndex!58)))))

(declare-fun lt!158404 () Unit!10231)

(assert (=> b!329884 (= lt!158404 e!202584)))

(declare-fun c!51663 () Bool)

(assert (=> b!329884 (= c!51663 (not (= resIndex!58 index!1840)))))

(declare-fun b!329885 () Bool)

(assert (=> b!329885 false))

(declare-fun Unit!10237 () Unit!10231)

(assert (=> b!329885 (= e!202587 Unit!10237)))

(declare-fun b!329886 () Bool)

(assert (=> b!329886 (= e!202586 e!202585)))

(declare-fun res!181830 () Bool)

(assert (=> b!329886 (=> (not res!181830) (not e!202585))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329886 (= res!181830 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158405))))

(assert (=> b!329886 (= lt!158405 (Intermediate!3116 false resIndex!58 resX!58))))

(assert (= (and start!33214 res!181834) b!329878))

(assert (= (and b!329878 res!181835) b!329877))

(assert (= (and b!329877 res!181831) b!329880))

(assert (= (and b!329880 res!181836) b!329875))

(assert (= (and b!329875 res!181838) b!329876))

(assert (= (and b!329876 res!181839) b!329886))

(assert (= (and b!329886 res!181830) b!329883))

(assert (= (and b!329883 res!181837) b!329874))

(assert (= (and b!329874 res!181833) b!329872))

(assert (= (and b!329872 res!181832) b!329884))

(assert (= (and b!329884 c!51663) b!329871))

(assert (= (and b!329884 (not c!51663)) b!329882))

(assert (= (and b!329871 c!51664) b!329885))

(assert (= (and b!329871 (not c!51664)) b!329873))

(assert (= (and b!329873 c!51665) b!329879))

(assert (= (and b!329873 (not c!51665)) b!329881))

(declare-fun m!335315 () Bool)

(assert (=> b!329874 m!335315))

(declare-fun m!335317 () Bool)

(assert (=> b!329886 m!335317))

(assert (=> b!329886 m!335317))

(declare-fun m!335319 () Bool)

(assert (=> b!329886 m!335319))

(declare-fun m!335321 () Bool)

(assert (=> b!329883 m!335321))

(declare-fun m!335323 () Bool)

(assert (=> b!329880 m!335323))

(declare-fun m!335325 () Bool)

(assert (=> b!329876 m!335325))

(declare-fun m!335327 () Bool)

(assert (=> b!329875 m!335327))

(declare-fun m!335329 () Bool)

(assert (=> b!329873 m!335329))

(assert (=> b!329873 m!335329))

(declare-fun m!335331 () Bool)

(assert (=> b!329873 m!335331))

(declare-fun m!335333 () Bool)

(assert (=> start!33214 m!335333))

(declare-fun m!335335 () Bool)

(assert (=> start!33214 m!335335))

(declare-fun m!335337 () Bool)

(assert (=> b!329877 m!335337))

(declare-fun m!335339 () Bool)

(assert (=> b!329871 m!335339))

(assert (=> b!329872 m!335339))

(push 1)

(assert (not b!329875))

(assert (not b!329880))

(assert (not b!329873))

(assert (not b!329886))

