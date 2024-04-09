; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130924 () Bool)

(assert start!130924)

(declare-fun b!1535086 () Bool)

(declare-fun e!854682 () Bool)

(assert (=> b!1535086 (= e!854682 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101949 0))(
  ( (array!101950 (arr!49186 (Array (_ BitVec 32) (_ BitVec 64))) (size!49737 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101949)

(declare-fun lt!663937 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13341 0))(
  ( (MissingZero!13341 (index!55758 (_ BitVec 32))) (Found!13341 (index!55759 (_ BitVec 32))) (Intermediate!13341 (undefined!14153 Bool) (index!55760 (_ BitVec 32)) (x!137514 (_ BitVec 32))) (Undefined!13341) (MissingVacant!13341 (index!55761 (_ BitVec 32))) )
))
(declare-fun lt!663936 () SeekEntryResult!13341)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101949 (_ BitVec 32)) SeekEntryResult!13341)

(assert (=> b!1535086 (= lt!663936 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663937 vacantIndex!5 (select (arr!49186 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535087 () Bool)

(declare-fun e!854684 () Bool)

(assert (=> b!1535087 (= e!854684 e!854682)))

(declare-fun res!1052312 () Bool)

(assert (=> b!1535087 (=> (not res!1052312) (not e!854682))))

(assert (=> b!1535087 (= res!1052312 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663937 #b00000000000000000000000000000000) (bvslt lt!663937 (size!49737 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535087 (= lt!663937 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun res!1052316 () Bool)

(assert (=> start!130924 (=> (not res!1052316) (not e!854684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130924 (= res!1052316 (validMask!0 mask!2480))))

(assert (=> start!130924 e!854684))

(assert (=> start!130924 true))

(declare-fun array_inv!38131 (array!101949) Bool)

(assert (=> start!130924 (array_inv!38131 a!2792)))

(declare-fun b!1535088 () Bool)

(declare-fun res!1052310 () Bool)

(assert (=> b!1535088 (=> (not res!1052310) (not e!854684))))

(assert (=> b!1535088 (= res!1052310 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49186 a!2792) j!64) a!2792 mask!2480) (Found!13341 j!64)))))

(declare-fun b!1535089 () Bool)

(declare-fun res!1052318 () Bool)

(assert (=> b!1535089 (=> (not res!1052318) (not e!854684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535089 (= res!1052318 (validKeyInArray!0 (select (arr!49186 a!2792) j!64)))))

(declare-fun b!1535090 () Bool)

(declare-fun res!1052314 () Bool)

(assert (=> b!1535090 (=> (not res!1052314) (not e!854684))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535090 (= res!1052314 (validKeyInArray!0 (select (arr!49186 a!2792) i!951)))))

(declare-fun b!1535091 () Bool)

(declare-fun res!1052313 () Bool)

(assert (=> b!1535091 (=> (not res!1052313) (not e!854684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101949 (_ BitVec 32)) Bool)

(assert (=> b!1535091 (= res!1052313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535092 () Bool)

(declare-fun res!1052319 () Bool)

(assert (=> b!1535092 (=> (not res!1052319) (not e!854684))))

(assert (=> b!1535092 (= res!1052319 (and (= (size!49737 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49737 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49737 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535093 () Bool)

(declare-fun res!1052311 () Bool)

(assert (=> b!1535093 (=> (not res!1052311) (not e!854684))))

(assert (=> b!1535093 (= res!1052311 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49737 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49737 a!2792)) (= (select (arr!49186 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535094 () Bool)

(declare-fun res!1052317 () Bool)

(assert (=> b!1535094 (=> (not res!1052317) (not e!854684))))

(declare-datatypes ((List!35840 0))(
  ( (Nil!35837) (Cons!35836 (h!37282 (_ BitVec 64)) (t!50541 List!35840)) )
))
(declare-fun arrayNoDuplicates!0 (array!101949 (_ BitVec 32) List!35840) Bool)

(assert (=> b!1535094 (= res!1052317 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35837))))

(declare-fun b!1535095 () Bool)

(declare-fun res!1052315 () Bool)

(assert (=> b!1535095 (=> (not res!1052315) (not e!854684))))

(assert (=> b!1535095 (= res!1052315 (not (= (select (arr!49186 a!2792) index!463) (select (arr!49186 a!2792) j!64))))))

(assert (= (and start!130924 res!1052316) b!1535092))

(assert (= (and b!1535092 res!1052319) b!1535090))

(assert (= (and b!1535090 res!1052314) b!1535089))

(assert (= (and b!1535089 res!1052318) b!1535091))

(assert (= (and b!1535091 res!1052313) b!1535094))

(assert (= (and b!1535094 res!1052317) b!1535093))

(assert (= (and b!1535093 res!1052311) b!1535088))

(assert (= (and b!1535088 res!1052310) b!1535095))

(assert (= (and b!1535095 res!1052315) b!1535087))

(assert (= (and b!1535087 res!1052312) b!1535086))

(declare-fun m!1417683 () Bool)

(assert (=> b!1535091 m!1417683))

(declare-fun m!1417685 () Bool)

(assert (=> b!1535087 m!1417685))

(declare-fun m!1417687 () Bool)

(assert (=> start!130924 m!1417687))

(declare-fun m!1417689 () Bool)

(assert (=> start!130924 m!1417689))

(declare-fun m!1417691 () Bool)

(assert (=> b!1535093 m!1417691))

(declare-fun m!1417693 () Bool)

(assert (=> b!1535090 m!1417693))

(assert (=> b!1535090 m!1417693))

(declare-fun m!1417695 () Bool)

(assert (=> b!1535090 m!1417695))

(declare-fun m!1417697 () Bool)

(assert (=> b!1535095 m!1417697))

(declare-fun m!1417699 () Bool)

(assert (=> b!1535095 m!1417699))

(assert (=> b!1535086 m!1417699))

(assert (=> b!1535086 m!1417699))

(declare-fun m!1417701 () Bool)

(assert (=> b!1535086 m!1417701))

(assert (=> b!1535088 m!1417699))

(assert (=> b!1535088 m!1417699))

(declare-fun m!1417703 () Bool)

(assert (=> b!1535088 m!1417703))

(assert (=> b!1535089 m!1417699))

(assert (=> b!1535089 m!1417699))

(declare-fun m!1417705 () Bool)

(assert (=> b!1535089 m!1417705))

(declare-fun m!1417707 () Bool)

(assert (=> b!1535094 m!1417707))

(push 1)

