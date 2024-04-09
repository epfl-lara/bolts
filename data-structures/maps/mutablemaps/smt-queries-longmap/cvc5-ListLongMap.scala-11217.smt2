; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130966 () Bool)

(assert start!130966)

(declare-fun b!1535716 () Bool)

(declare-fun e!854871 () Bool)

(declare-fun e!854872 () Bool)

(assert (=> b!1535716 (= e!854871 e!854872)))

(declare-fun res!1052941 () Bool)

(assert (=> b!1535716 (=> (not res!1052941) (not e!854872))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101991 0))(
  ( (array!101992 (arr!49207 (Array (_ BitVec 32) (_ BitVec 64))) (size!49758 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101991)

(declare-fun lt!664062 () (_ BitVec 32))

(assert (=> b!1535716 (= res!1052941 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664062 #b00000000000000000000000000000000) (bvslt lt!664062 (size!49758 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535716 (= lt!664062 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535717 () Bool)

(declare-fun res!1052948 () Bool)

(assert (=> b!1535717 (=> (not res!1052948) (not e!854871))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13362 0))(
  ( (MissingZero!13362 (index!55842 (_ BitVec 32))) (Found!13362 (index!55843 (_ BitVec 32))) (Intermediate!13362 (undefined!14174 Bool) (index!55844 (_ BitVec 32)) (x!137591 (_ BitVec 32))) (Undefined!13362) (MissingVacant!13362 (index!55845 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101991 (_ BitVec 32)) SeekEntryResult!13362)

(assert (=> b!1535717 (= res!1052948 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49207 a!2792) j!64) a!2792 mask!2480) (Found!13362 j!64)))))

(declare-fun b!1535718 () Bool)

(declare-fun res!1052946 () Bool)

(assert (=> b!1535718 (=> (not res!1052946) (not e!854871))))

(assert (=> b!1535718 (= res!1052946 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49758 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49758 a!2792)) (= (select (arr!49207 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535719 () Bool)

(declare-fun res!1052940 () Bool)

(assert (=> b!1535719 (=> (not res!1052940) (not e!854871))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535719 (= res!1052940 (and (= (size!49758 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49758 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49758 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535720 () Bool)

(declare-fun res!1052947 () Bool)

(assert (=> b!1535720 (=> (not res!1052947) (not e!854871))))

(assert (=> b!1535720 (= res!1052947 (not (= (select (arr!49207 a!2792) index!463) (select (arr!49207 a!2792) j!64))))))

(declare-fun b!1535721 () Bool)

(declare-fun res!1052949 () Bool)

(assert (=> b!1535721 (=> (not res!1052949) (not e!854871))))

(declare-datatypes ((List!35861 0))(
  ( (Nil!35858) (Cons!35857 (h!37303 (_ BitVec 64)) (t!50562 List!35861)) )
))
(declare-fun arrayNoDuplicates!0 (array!101991 (_ BitVec 32) List!35861) Bool)

(assert (=> b!1535721 (= res!1052949 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35858))))

(declare-fun b!1535722 () Bool)

(assert (=> b!1535722 (= e!854872 false)))

(declare-fun lt!664063 () SeekEntryResult!13362)

(assert (=> b!1535722 (= lt!664063 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664062 vacantIndex!5 (select (arr!49207 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535723 () Bool)

(declare-fun res!1052942 () Bool)

(assert (=> b!1535723 (=> (not res!1052942) (not e!854871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535723 (= res!1052942 (validKeyInArray!0 (select (arr!49207 a!2792) i!951)))))

(declare-fun res!1052945 () Bool)

(assert (=> start!130966 (=> (not res!1052945) (not e!854871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130966 (= res!1052945 (validMask!0 mask!2480))))

(assert (=> start!130966 e!854871))

(assert (=> start!130966 true))

(declare-fun array_inv!38152 (array!101991) Bool)

(assert (=> start!130966 (array_inv!38152 a!2792)))

(declare-fun b!1535724 () Bool)

(declare-fun res!1052943 () Bool)

(assert (=> b!1535724 (=> (not res!1052943) (not e!854871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101991 (_ BitVec 32)) Bool)

(assert (=> b!1535724 (= res!1052943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535725 () Bool)

(declare-fun res!1052944 () Bool)

(assert (=> b!1535725 (=> (not res!1052944) (not e!854871))))

(assert (=> b!1535725 (= res!1052944 (validKeyInArray!0 (select (arr!49207 a!2792) j!64)))))

(assert (= (and start!130966 res!1052945) b!1535719))

(assert (= (and b!1535719 res!1052940) b!1535723))

(assert (= (and b!1535723 res!1052942) b!1535725))

(assert (= (and b!1535725 res!1052944) b!1535724))

(assert (= (and b!1535724 res!1052943) b!1535721))

(assert (= (and b!1535721 res!1052949) b!1535718))

(assert (= (and b!1535718 res!1052946) b!1535717))

(assert (= (and b!1535717 res!1052948) b!1535720))

(assert (= (and b!1535720 res!1052947) b!1535716))

(assert (= (and b!1535716 res!1052941) b!1535722))

(declare-fun m!1418229 () Bool)

(assert (=> b!1535721 m!1418229))

(declare-fun m!1418231 () Bool)

(assert (=> b!1535724 m!1418231))

(declare-fun m!1418233 () Bool)

(assert (=> b!1535720 m!1418233))

(declare-fun m!1418235 () Bool)

(assert (=> b!1535720 m!1418235))

(declare-fun m!1418237 () Bool)

(assert (=> start!130966 m!1418237))

(declare-fun m!1418239 () Bool)

(assert (=> start!130966 m!1418239))

(assert (=> b!1535725 m!1418235))

(assert (=> b!1535725 m!1418235))

(declare-fun m!1418241 () Bool)

(assert (=> b!1535725 m!1418241))

(assert (=> b!1535722 m!1418235))

(assert (=> b!1535722 m!1418235))

(declare-fun m!1418243 () Bool)

(assert (=> b!1535722 m!1418243))

(declare-fun m!1418245 () Bool)

(assert (=> b!1535723 m!1418245))

(assert (=> b!1535723 m!1418245))

(declare-fun m!1418247 () Bool)

(assert (=> b!1535723 m!1418247))

(assert (=> b!1535717 m!1418235))

(assert (=> b!1535717 m!1418235))

(declare-fun m!1418249 () Bool)

(assert (=> b!1535717 m!1418249))

(declare-fun m!1418251 () Bool)

(assert (=> b!1535718 m!1418251))

(declare-fun m!1418253 () Bool)

(assert (=> b!1535716 m!1418253))

(push 1)

