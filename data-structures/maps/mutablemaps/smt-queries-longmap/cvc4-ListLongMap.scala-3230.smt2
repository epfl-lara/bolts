; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45200 () Bool)

(assert start!45200)

(declare-fun b!495763 () Bool)

(declare-fun res!298302 () Bool)

(declare-fun e!290796 () Bool)

(assert (=> b!495763 (=> (not res!298302) (not e!290796))))

(declare-datatypes ((array!32048 0))(
  ( (array!32049 (arr!15404 (Array (_ BitVec 32) (_ BitVec 64))) (size!15768 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32048)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32048 (_ BitVec 32)) Bool)

(assert (=> b!495763 (= res!298302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495764 () Bool)

(declare-fun e!290797 () Bool)

(assert (=> b!495764 (= e!290797 true)))

(declare-datatypes ((SeekEntryResult!3878 0))(
  ( (MissingZero!3878 (index!17691 (_ BitVec 32))) (Found!3878 (index!17692 (_ BitVec 32))) (Intermediate!3878 (undefined!4690 Bool) (index!17693 (_ BitVec 32)) (x!46781 (_ BitVec 32))) (Undefined!3878) (MissingVacant!3878 (index!17694 (_ BitVec 32))) )
))
(declare-fun lt!224488 () SeekEntryResult!3878)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495764 (and (bvslt (x!46781 lt!224488) #b01111111111111111111111111111110) (or (= (select (arr!15404 a!3235) (index!17693 lt!224488)) (select (arr!15404 a!3235) j!176)) (= (select (arr!15404 a!3235) (index!17693 lt!224488)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15404 a!3235) (index!17693 lt!224488)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495765 () Bool)

(declare-fun res!298310 () Bool)

(declare-fun e!290799 () Bool)

(assert (=> b!495765 (=> (not res!298310) (not e!290799))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495765 (= res!298310 (validKeyInArray!0 k!2280))))

(declare-fun b!495766 () Bool)

(declare-fun res!298301 () Bool)

(assert (=> b!495766 (=> (not res!298301) (not e!290799))))

(assert (=> b!495766 (= res!298301 (validKeyInArray!0 (select (arr!15404 a!3235) j!176)))))

(declare-fun b!495767 () Bool)

(assert (=> b!495767 (= e!290796 (not e!290797))))

(declare-fun res!298308 () Bool)

(assert (=> b!495767 (=> res!298308 e!290797)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!224485 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32048 (_ BitVec 32)) SeekEntryResult!3878)

(assert (=> b!495767 (= res!298308 (= lt!224488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224485 (select (store (arr!15404 a!3235) i!1204 k!2280) j!176) (array!32049 (store (arr!15404 a!3235) i!1204 k!2280) (size!15768 a!3235)) mask!3524)))))

(declare-fun lt!224489 () (_ BitVec 32))

(assert (=> b!495767 (= lt!224488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224489 (select (arr!15404 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495767 (= lt!224485 (toIndex!0 (select (store (arr!15404 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495767 (= lt!224489 (toIndex!0 (select (arr!15404 a!3235) j!176) mask!3524))))

(declare-fun e!290800 () Bool)

(assert (=> b!495767 e!290800))

(declare-fun res!298305 () Bool)

(assert (=> b!495767 (=> (not res!298305) (not e!290800))))

(assert (=> b!495767 (= res!298305 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14694 0))(
  ( (Unit!14695) )
))
(declare-fun lt!224487 () Unit!14694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32048 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14694)

(assert (=> b!495767 (= lt!224487 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495768 () Bool)

(declare-fun res!298303 () Bool)

(assert (=> b!495768 (=> (not res!298303) (not e!290799))))

(assert (=> b!495768 (= res!298303 (and (= (size!15768 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15768 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15768 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495769 () Bool)

(declare-fun res!298306 () Bool)

(assert (=> b!495769 (=> (not res!298306) (not e!290799))))

(declare-fun arrayContainsKey!0 (array!32048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495769 (= res!298306 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!298304 () Bool)

(assert (=> start!45200 (=> (not res!298304) (not e!290799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45200 (= res!298304 (validMask!0 mask!3524))))

(assert (=> start!45200 e!290799))

(assert (=> start!45200 true))

(declare-fun array_inv!11178 (array!32048) Bool)

(assert (=> start!45200 (array_inv!11178 a!3235)))

(declare-fun b!495770 () Bool)

(assert (=> b!495770 (= e!290799 e!290796)))

(declare-fun res!298307 () Bool)

(assert (=> b!495770 (=> (not res!298307) (not e!290796))))

(declare-fun lt!224486 () SeekEntryResult!3878)

(assert (=> b!495770 (= res!298307 (or (= lt!224486 (MissingZero!3878 i!1204)) (= lt!224486 (MissingVacant!3878 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32048 (_ BitVec 32)) SeekEntryResult!3878)

(assert (=> b!495770 (= lt!224486 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495771 () Bool)

(declare-fun res!298300 () Bool)

(assert (=> b!495771 (=> res!298300 e!290797)))

(assert (=> b!495771 (= res!298300 (or (undefined!4690 lt!224488) (not (is-Intermediate!3878 lt!224488))))))

(declare-fun b!495772 () Bool)

(declare-fun res!298309 () Bool)

(assert (=> b!495772 (=> (not res!298309) (not e!290796))))

(declare-datatypes ((List!9615 0))(
  ( (Nil!9612) (Cons!9611 (h!10482 (_ BitVec 64)) (t!15851 List!9615)) )
))
(declare-fun arrayNoDuplicates!0 (array!32048 (_ BitVec 32) List!9615) Bool)

(assert (=> b!495772 (= res!298309 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9612))))

(declare-fun b!495773 () Bool)

(assert (=> b!495773 (= e!290800 (= (seekEntryOrOpen!0 (select (arr!15404 a!3235) j!176) a!3235 mask!3524) (Found!3878 j!176)))))

(assert (= (and start!45200 res!298304) b!495768))

(assert (= (and b!495768 res!298303) b!495766))

(assert (= (and b!495766 res!298301) b!495765))

(assert (= (and b!495765 res!298310) b!495769))

(assert (= (and b!495769 res!298306) b!495770))

(assert (= (and b!495770 res!298307) b!495763))

(assert (= (and b!495763 res!298302) b!495772))

(assert (= (and b!495772 res!298309) b!495767))

(assert (= (and b!495767 res!298305) b!495773))

(assert (= (and b!495767 (not res!298308)) b!495771))

(assert (= (and b!495771 (not res!298300)) b!495764))

(declare-fun m!476963 () Bool)

(assert (=> b!495766 m!476963))

(assert (=> b!495766 m!476963))

(declare-fun m!476965 () Bool)

(assert (=> b!495766 m!476965))

(declare-fun m!476967 () Bool)

(assert (=> b!495763 m!476967))

(assert (=> b!495773 m!476963))

(assert (=> b!495773 m!476963))

(declare-fun m!476969 () Bool)

(assert (=> b!495773 m!476969))

(declare-fun m!476971 () Bool)

(assert (=> b!495772 m!476971))

(declare-fun m!476973 () Bool)

(assert (=> b!495765 m!476973))

(declare-fun m!476975 () Bool)

(assert (=> b!495770 m!476975))

(declare-fun m!476977 () Bool)

(assert (=> start!45200 m!476977))

(declare-fun m!476979 () Bool)

(assert (=> start!45200 m!476979))

(declare-fun m!476981 () Bool)

(assert (=> b!495764 m!476981))

(assert (=> b!495764 m!476963))

(declare-fun m!476983 () Bool)

(assert (=> b!495769 m!476983))

(declare-fun m!476985 () Bool)

(assert (=> b!495767 m!476985))

(declare-fun m!476987 () Bool)

(assert (=> b!495767 m!476987))

(declare-fun m!476989 () Bool)

(assert (=> b!495767 m!476989))

(assert (=> b!495767 m!476963))

(declare-fun m!476991 () Bool)

(assert (=> b!495767 m!476991))

(assert (=> b!495767 m!476963))

(declare-fun m!476993 () Bool)

(assert (=> b!495767 m!476993))

(assert (=> b!495767 m!476963))

(declare-fun m!476995 () Bool)

(assert (=> b!495767 m!476995))

(assert (=> b!495767 m!476989))

(declare-fun m!476997 () Bool)

(assert (=> b!495767 m!476997))

(assert (=> b!495767 m!476989))

(declare-fun m!476999 () Bool)

(assert (=> b!495767 m!476999))

(push 1)

