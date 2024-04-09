; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123286 () Bool)

(assert start!123286)

(declare-fun b!1428973 () Bool)

(declare-fun e!806976 () Bool)

(declare-fun e!806975 () Bool)

(assert (=> b!1428973 (= e!806976 e!806975)))

(declare-fun res!963720 () Bool)

(assert (=> b!1428973 (=> (not res!963720) (not e!806975))))

(declare-datatypes ((SeekEntryResult!11291 0))(
  ( (MissingZero!11291 (index!47555 (_ BitVec 32))) (Found!11291 (index!47556 (_ BitVec 32))) (Intermediate!11291 (undefined!12103 Bool) (index!47557 (_ BitVec 32)) (x!129200 (_ BitVec 32))) (Undefined!11291) (MissingVacant!11291 (index!47558 (_ BitVec 32))) )
))
(declare-fun lt!629160 () SeekEntryResult!11291)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97365 0))(
  ( (array!97366 (arr!46990 (Array (_ BitVec 32) (_ BitVec 64))) (size!47541 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97365)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97365 (_ BitVec 32)) SeekEntryResult!11291)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428973 (= res!963720 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46990 a!2831) j!81) mask!2608) (select (arr!46990 a!2831) j!81) a!2831 mask!2608) lt!629160))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1428973 (= lt!629160 (Intermediate!11291 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428974 () Bool)

(declare-fun res!963712 () Bool)

(assert (=> b!1428974 (=> (not res!963712) (not e!806976))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428974 (= res!963712 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47541 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47541 a!2831))))))

(declare-fun b!1428975 () Bool)

(declare-fun res!963723 () Bool)

(assert (=> b!1428975 (=> (not res!963723) (not e!806976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97365 (_ BitVec 32)) Bool)

(assert (=> b!1428975 (= res!963723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428976 () Bool)

(declare-fun res!963718 () Bool)

(declare-fun e!806978 () Bool)

(assert (=> b!1428976 (=> (not res!963718) (not e!806978))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1428976 (= res!963718 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428977 () Bool)

(declare-fun res!963717 () Bool)

(assert (=> b!1428977 (=> (not res!963717) (not e!806976))))

(declare-datatypes ((List!33680 0))(
  ( (Nil!33677) (Cons!33676 (h!34990 (_ BitVec 64)) (t!48381 List!33680)) )
))
(declare-fun arrayNoDuplicates!0 (array!97365 (_ BitVec 32) List!33680) Bool)

(assert (=> b!1428977 (= res!963717 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33677))))

(declare-fun b!1428978 () Bool)

(assert (=> b!1428978 (= e!806978 (not true))))

(declare-fun e!806974 () Bool)

(assert (=> b!1428978 e!806974))

(declare-fun res!963715 () Bool)

(assert (=> b!1428978 (=> (not res!963715) (not e!806974))))

(assert (=> b!1428978 (= res!963715 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48276 0))(
  ( (Unit!48277) )
))
(declare-fun lt!629159 () Unit!48276)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97365 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48276)

(assert (=> b!1428978 (= lt!629159 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!963721 () Bool)

(assert (=> start!123286 (=> (not res!963721) (not e!806976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123286 (= res!963721 (validMask!0 mask!2608))))

(assert (=> start!123286 e!806976))

(assert (=> start!123286 true))

(declare-fun array_inv!35935 (array!97365) Bool)

(assert (=> start!123286 (array_inv!35935 a!2831)))

(declare-fun b!1428979 () Bool)

(declare-fun res!963722 () Bool)

(assert (=> b!1428979 (=> (not res!963722) (not e!806978))))

(declare-fun lt!629161 () array!97365)

(declare-fun lt!629158 () (_ BitVec 64))

(declare-fun lt!629157 () SeekEntryResult!11291)

(assert (=> b!1428979 (= res!963722 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629158 lt!629161 mask!2608) lt!629157))))

(declare-fun b!1428980 () Bool)

(assert (=> b!1428980 (= e!806975 e!806978)))

(declare-fun res!963711 () Bool)

(assert (=> b!1428980 (=> (not res!963711) (not e!806978))))

(assert (=> b!1428980 (= res!963711 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629158 mask!2608) lt!629158 lt!629161 mask!2608) lt!629157))))

(assert (=> b!1428980 (= lt!629157 (Intermediate!11291 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428980 (= lt!629158 (select (store (arr!46990 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428980 (= lt!629161 (array!97366 (store (arr!46990 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47541 a!2831)))))

(declare-fun b!1428981 () Bool)

(declare-fun res!963716 () Bool)

(assert (=> b!1428981 (=> (not res!963716) (not e!806976))))

(assert (=> b!1428981 (= res!963716 (and (= (size!47541 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47541 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47541 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428982 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97365 (_ BitVec 32)) SeekEntryResult!11291)

(assert (=> b!1428982 (= e!806974 (= (seekEntryOrOpen!0 (select (arr!46990 a!2831) j!81) a!2831 mask!2608) (Found!11291 j!81)))))

(declare-fun b!1428983 () Bool)

(declare-fun res!963714 () Bool)

(assert (=> b!1428983 (=> (not res!963714) (not e!806976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428983 (= res!963714 (validKeyInArray!0 (select (arr!46990 a!2831) i!982)))))

(declare-fun b!1428984 () Bool)

(declare-fun res!963713 () Bool)

(assert (=> b!1428984 (=> (not res!963713) (not e!806978))))

(assert (=> b!1428984 (= res!963713 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46990 a!2831) j!81) a!2831 mask!2608) lt!629160))))

(declare-fun b!1428985 () Bool)

(declare-fun res!963719 () Bool)

(assert (=> b!1428985 (=> (not res!963719) (not e!806976))))

(assert (=> b!1428985 (= res!963719 (validKeyInArray!0 (select (arr!46990 a!2831) j!81)))))

(assert (= (and start!123286 res!963721) b!1428981))

(assert (= (and b!1428981 res!963716) b!1428983))

(assert (= (and b!1428983 res!963714) b!1428985))

(assert (= (and b!1428985 res!963719) b!1428975))

(assert (= (and b!1428975 res!963723) b!1428977))

(assert (= (and b!1428977 res!963717) b!1428974))

(assert (= (and b!1428974 res!963712) b!1428973))

(assert (= (and b!1428973 res!963720) b!1428980))

(assert (= (and b!1428980 res!963711) b!1428984))

(assert (= (and b!1428984 res!963713) b!1428979))

(assert (= (and b!1428979 res!963722) b!1428976))

(assert (= (and b!1428976 res!963718) b!1428978))

(assert (= (and b!1428978 res!963715) b!1428982))

(declare-fun m!1319141 () Bool)

(assert (=> b!1428980 m!1319141))

(assert (=> b!1428980 m!1319141))

(declare-fun m!1319143 () Bool)

(assert (=> b!1428980 m!1319143))

(declare-fun m!1319145 () Bool)

(assert (=> b!1428980 m!1319145))

(declare-fun m!1319147 () Bool)

(assert (=> b!1428980 m!1319147))

(declare-fun m!1319149 () Bool)

(assert (=> b!1428984 m!1319149))

(assert (=> b!1428984 m!1319149))

(declare-fun m!1319151 () Bool)

(assert (=> b!1428984 m!1319151))

(assert (=> b!1428973 m!1319149))

(assert (=> b!1428973 m!1319149))

(declare-fun m!1319153 () Bool)

(assert (=> b!1428973 m!1319153))

(assert (=> b!1428973 m!1319153))

(assert (=> b!1428973 m!1319149))

(declare-fun m!1319155 () Bool)

(assert (=> b!1428973 m!1319155))

(declare-fun m!1319157 () Bool)

(assert (=> b!1428983 m!1319157))

(assert (=> b!1428983 m!1319157))

(declare-fun m!1319159 () Bool)

(assert (=> b!1428983 m!1319159))

(assert (=> b!1428985 m!1319149))

(assert (=> b!1428985 m!1319149))

(declare-fun m!1319161 () Bool)

(assert (=> b!1428985 m!1319161))

(declare-fun m!1319163 () Bool)

(assert (=> b!1428977 m!1319163))

(declare-fun m!1319165 () Bool)

(assert (=> b!1428975 m!1319165))

(assert (=> b!1428982 m!1319149))

(assert (=> b!1428982 m!1319149))

(declare-fun m!1319167 () Bool)

(assert (=> b!1428982 m!1319167))

(declare-fun m!1319169 () Bool)

(assert (=> b!1428978 m!1319169))

(declare-fun m!1319171 () Bool)

(assert (=> b!1428978 m!1319171))

(declare-fun m!1319173 () Bool)

(assert (=> b!1428979 m!1319173))

(declare-fun m!1319175 () Bool)

(assert (=> start!123286 m!1319175))

(declare-fun m!1319177 () Bool)

(assert (=> start!123286 m!1319177))

(push 1)

