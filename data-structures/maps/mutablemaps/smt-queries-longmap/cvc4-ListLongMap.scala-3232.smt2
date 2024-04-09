; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45212 () Bool)

(assert start!45212)

(declare-fun b!495961 () Bool)

(declare-fun res!298499 () Bool)

(declare-fun e!290886 () Bool)

(assert (=> b!495961 (=> (not res!298499) (not e!290886))))

(declare-datatypes ((array!32060 0))(
  ( (array!32061 (arr!15410 (Array (_ BitVec 32) (_ BitVec 64))) (size!15774 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32060)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495961 (= res!298499 (validKeyInArray!0 (select (arr!15410 a!3235) j!176)))))

(declare-fun b!495962 () Bool)

(declare-fun res!298501 () Bool)

(assert (=> b!495962 (=> (not res!298501) (not e!290886))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32060 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495962 (= res!298501 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495963 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!290887 () Bool)

(declare-datatypes ((SeekEntryResult!3884 0))(
  ( (MissingZero!3884 (index!17715 (_ BitVec 32))) (Found!3884 (index!17716 (_ BitVec 32))) (Intermediate!3884 (undefined!4696 Bool) (index!17717 (_ BitVec 32)) (x!46803 (_ BitVec 32))) (Undefined!3884) (MissingVacant!3884 (index!17718 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32060 (_ BitVec 32)) SeekEntryResult!3884)

(assert (=> b!495963 (= e!290887 (= (seekEntryOrOpen!0 (select (arr!15410 a!3235) j!176) a!3235 mask!3524) (Found!3884 j!176)))))

(declare-fun b!495964 () Bool)

(declare-fun res!298508 () Bool)

(declare-fun e!290890 () Bool)

(assert (=> b!495964 (=> (not res!298508) (not e!290890))))

(declare-datatypes ((List!9621 0))(
  ( (Nil!9618) (Cons!9617 (h!10488 (_ BitVec 64)) (t!15857 List!9621)) )
))
(declare-fun arrayNoDuplicates!0 (array!32060 (_ BitVec 32) List!9621) Bool)

(assert (=> b!495964 (= res!298508 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9618))))

(declare-fun b!495965 () Bool)

(declare-fun res!298505 () Bool)

(declare-fun e!290888 () Bool)

(assert (=> b!495965 (=> res!298505 e!290888)))

(declare-fun lt!224578 () SeekEntryResult!3884)

(assert (=> b!495965 (= res!298505 (or (undefined!4696 lt!224578) (not (is-Intermediate!3884 lt!224578))))))

(declare-fun b!495966 () Bool)

(declare-fun res!298507 () Bool)

(assert (=> b!495966 (=> (not res!298507) (not e!290886))))

(assert (=> b!495966 (= res!298507 (validKeyInArray!0 k!2280))))

(declare-fun b!495967 () Bool)

(assert (=> b!495967 (= e!290886 e!290890)))

(declare-fun res!298500 () Bool)

(assert (=> b!495967 (=> (not res!298500) (not e!290890))))

(declare-fun lt!224579 () SeekEntryResult!3884)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495967 (= res!298500 (or (= lt!224579 (MissingZero!3884 i!1204)) (= lt!224579 (MissingVacant!3884 i!1204))))))

(assert (=> b!495967 (= lt!224579 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495968 () Bool)

(assert (=> b!495968 (= e!290890 (not e!290888))))

(declare-fun res!298506 () Bool)

(assert (=> b!495968 (=> res!298506 e!290888)))

(declare-fun lt!224575 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32060 (_ BitVec 32)) SeekEntryResult!3884)

(assert (=> b!495968 (= res!298506 (= lt!224578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224575 (select (store (arr!15410 a!3235) i!1204 k!2280) j!176) (array!32061 (store (arr!15410 a!3235) i!1204 k!2280) (size!15774 a!3235)) mask!3524)))))

(declare-fun lt!224577 () (_ BitVec 32))

(assert (=> b!495968 (= lt!224578 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224577 (select (arr!15410 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495968 (= lt!224575 (toIndex!0 (select (store (arr!15410 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495968 (= lt!224577 (toIndex!0 (select (arr!15410 a!3235) j!176) mask!3524))))

(assert (=> b!495968 e!290887))

(declare-fun res!298498 () Bool)

(assert (=> b!495968 (=> (not res!298498) (not e!290887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32060 (_ BitVec 32)) Bool)

(assert (=> b!495968 (= res!298498 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14706 0))(
  ( (Unit!14707) )
))
(declare-fun lt!224576 () Unit!14706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32060 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14706)

(assert (=> b!495968 (= lt!224576 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495969 () Bool)

(declare-fun res!298503 () Bool)

(assert (=> b!495969 (=> (not res!298503) (not e!290890))))

(assert (=> b!495969 (= res!298503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!298504 () Bool)

(assert (=> start!45212 (=> (not res!298504) (not e!290886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45212 (= res!298504 (validMask!0 mask!3524))))

(assert (=> start!45212 e!290886))

(assert (=> start!45212 true))

(declare-fun array_inv!11184 (array!32060) Bool)

(assert (=> start!45212 (array_inv!11184 a!3235)))

(declare-fun b!495970 () Bool)

(assert (=> b!495970 (= e!290888 true)))

(assert (=> b!495970 (and (bvslt (x!46803 lt!224578) #b01111111111111111111111111111110) (or (= (select (arr!15410 a!3235) (index!17717 lt!224578)) (select (arr!15410 a!3235) j!176)) (= (select (arr!15410 a!3235) (index!17717 lt!224578)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15410 a!3235) (index!17717 lt!224578)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495971 () Bool)

(declare-fun res!298502 () Bool)

(assert (=> b!495971 (=> (not res!298502) (not e!290886))))

(assert (=> b!495971 (= res!298502 (and (= (size!15774 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15774 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15774 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45212 res!298504) b!495971))

(assert (= (and b!495971 res!298502) b!495961))

(assert (= (and b!495961 res!298499) b!495966))

(assert (= (and b!495966 res!298507) b!495962))

(assert (= (and b!495962 res!298501) b!495967))

(assert (= (and b!495967 res!298500) b!495969))

(assert (= (and b!495969 res!298503) b!495964))

(assert (= (and b!495964 res!298508) b!495968))

(assert (= (and b!495968 res!298498) b!495963))

(assert (= (and b!495968 (not res!298506)) b!495965))

(assert (= (and b!495965 (not res!298505)) b!495970))

(declare-fun m!477191 () Bool)

(assert (=> b!495970 m!477191))

(declare-fun m!477193 () Bool)

(assert (=> b!495970 m!477193))

(declare-fun m!477195 () Bool)

(assert (=> b!495966 m!477195))

(declare-fun m!477197 () Bool)

(assert (=> b!495964 m!477197))

(declare-fun m!477199 () Bool)

(assert (=> start!45212 m!477199))

(declare-fun m!477201 () Bool)

(assert (=> start!45212 m!477201))

(assert (=> b!495961 m!477193))

(assert (=> b!495961 m!477193))

(declare-fun m!477203 () Bool)

(assert (=> b!495961 m!477203))

(assert (=> b!495963 m!477193))

(assert (=> b!495963 m!477193))

(declare-fun m!477205 () Bool)

(assert (=> b!495963 m!477205))

(declare-fun m!477207 () Bool)

(assert (=> b!495969 m!477207))

(assert (=> b!495968 m!477193))

(declare-fun m!477209 () Bool)

(assert (=> b!495968 m!477209))

(declare-fun m!477211 () Bool)

(assert (=> b!495968 m!477211))

(declare-fun m!477213 () Bool)

(assert (=> b!495968 m!477213))

(declare-fun m!477215 () Bool)

(assert (=> b!495968 m!477215))

(assert (=> b!495968 m!477193))

(declare-fun m!477217 () Bool)

(assert (=> b!495968 m!477217))

(assert (=> b!495968 m!477193))

(declare-fun m!477219 () Bool)

(assert (=> b!495968 m!477219))

(assert (=> b!495968 m!477215))

(declare-fun m!477221 () Bool)

(assert (=> b!495968 m!477221))

(assert (=> b!495968 m!477215))

(declare-fun m!477223 () Bool)

(assert (=> b!495968 m!477223))

(declare-fun m!477225 () Bool)

(assert (=> b!495967 m!477225))

(declare-fun m!477227 () Bool)

(assert (=> b!495962 m!477227))

(push 1)

