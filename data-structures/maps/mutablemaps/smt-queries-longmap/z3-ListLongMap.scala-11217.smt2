; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130968 () Bool)

(assert start!130968)

(declare-fun b!1535746 () Bool)

(declare-fun res!1052972 () Bool)

(declare-fun e!854881 () Bool)

(assert (=> b!1535746 (=> (not res!1052972) (not e!854881))))

(declare-datatypes ((array!101993 0))(
  ( (array!101994 (arr!49208 (Array (_ BitVec 32) (_ BitVec 64))) (size!49759 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101993)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535746 (= res!1052972 (validKeyInArray!0 (select (arr!49208 a!2792) j!64)))))

(declare-fun res!1052971 () Bool)

(assert (=> start!130968 (=> (not res!1052971) (not e!854881))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130968 (= res!1052971 (validMask!0 mask!2480))))

(assert (=> start!130968 e!854881))

(assert (=> start!130968 true))

(declare-fun array_inv!38153 (array!101993) Bool)

(assert (=> start!130968 (array_inv!38153 a!2792)))

(declare-fun b!1535747 () Bool)

(declare-fun res!1052970 () Bool)

(assert (=> b!1535747 (=> (not res!1052970) (not e!854881))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535747 (= res!1052970 (and (= (size!49759 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49759 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49759 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535748 () Bool)

(declare-fun e!854882 () Bool)

(assert (=> b!1535748 (= e!854882 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13363 0))(
  ( (MissingZero!13363 (index!55846 (_ BitVec 32))) (Found!13363 (index!55847 (_ BitVec 32))) (Intermediate!13363 (undefined!14175 Bool) (index!55848 (_ BitVec 32)) (x!137592 (_ BitVec 32))) (Undefined!13363) (MissingVacant!13363 (index!55849 (_ BitVec 32))) )
))
(declare-fun lt!664068 () SeekEntryResult!13363)

(declare-fun lt!664069 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101993 (_ BitVec 32)) SeekEntryResult!13363)

(assert (=> b!1535748 (= lt!664068 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664069 vacantIndex!5 (select (arr!49208 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535749 () Bool)

(declare-fun res!1052979 () Bool)

(assert (=> b!1535749 (=> (not res!1052979) (not e!854881))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535749 (= res!1052979 (not (= (select (arr!49208 a!2792) index!463) (select (arr!49208 a!2792) j!64))))))

(declare-fun b!1535750 () Bool)

(assert (=> b!1535750 (= e!854881 e!854882)))

(declare-fun res!1052976 () Bool)

(assert (=> b!1535750 (=> (not res!1052976) (not e!854882))))

(assert (=> b!1535750 (= res!1052976 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664069 #b00000000000000000000000000000000) (bvslt lt!664069 (size!49759 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535750 (= lt!664069 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535751 () Bool)

(declare-fun res!1052973 () Bool)

(assert (=> b!1535751 (=> (not res!1052973) (not e!854881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101993 (_ BitVec 32)) Bool)

(assert (=> b!1535751 (= res!1052973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535752 () Bool)

(declare-fun res!1052975 () Bool)

(assert (=> b!1535752 (=> (not res!1052975) (not e!854881))))

(assert (=> b!1535752 (= res!1052975 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49208 a!2792) j!64) a!2792 mask!2480) (Found!13363 j!64)))))

(declare-fun b!1535753 () Bool)

(declare-fun res!1052978 () Bool)

(assert (=> b!1535753 (=> (not res!1052978) (not e!854881))))

(assert (=> b!1535753 (= res!1052978 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49759 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49759 a!2792)) (= (select (arr!49208 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535754 () Bool)

(declare-fun res!1052974 () Bool)

(assert (=> b!1535754 (=> (not res!1052974) (not e!854881))))

(declare-datatypes ((List!35862 0))(
  ( (Nil!35859) (Cons!35858 (h!37304 (_ BitVec 64)) (t!50563 List!35862)) )
))
(declare-fun arrayNoDuplicates!0 (array!101993 (_ BitVec 32) List!35862) Bool)

(assert (=> b!1535754 (= res!1052974 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35859))))

(declare-fun b!1535755 () Bool)

(declare-fun res!1052977 () Bool)

(assert (=> b!1535755 (=> (not res!1052977) (not e!854881))))

(assert (=> b!1535755 (= res!1052977 (validKeyInArray!0 (select (arr!49208 a!2792) i!951)))))

(assert (= (and start!130968 res!1052971) b!1535747))

(assert (= (and b!1535747 res!1052970) b!1535755))

(assert (= (and b!1535755 res!1052977) b!1535746))

(assert (= (and b!1535746 res!1052972) b!1535751))

(assert (= (and b!1535751 res!1052973) b!1535754))

(assert (= (and b!1535754 res!1052974) b!1535753))

(assert (= (and b!1535753 res!1052978) b!1535752))

(assert (= (and b!1535752 res!1052975) b!1535749))

(assert (= (and b!1535749 res!1052979) b!1535750))

(assert (= (and b!1535750 res!1052976) b!1535748))

(declare-fun m!1418255 () Bool)

(assert (=> b!1535749 m!1418255))

(declare-fun m!1418257 () Bool)

(assert (=> b!1535749 m!1418257))

(assert (=> b!1535748 m!1418257))

(assert (=> b!1535748 m!1418257))

(declare-fun m!1418259 () Bool)

(assert (=> b!1535748 m!1418259))

(declare-fun m!1418261 () Bool)

(assert (=> start!130968 m!1418261))

(declare-fun m!1418263 () Bool)

(assert (=> start!130968 m!1418263))

(declare-fun m!1418265 () Bool)

(assert (=> b!1535751 m!1418265))

(declare-fun m!1418267 () Bool)

(assert (=> b!1535750 m!1418267))

(declare-fun m!1418269 () Bool)

(assert (=> b!1535753 m!1418269))

(declare-fun m!1418271 () Bool)

(assert (=> b!1535754 m!1418271))

(assert (=> b!1535752 m!1418257))

(assert (=> b!1535752 m!1418257))

(declare-fun m!1418273 () Bool)

(assert (=> b!1535752 m!1418273))

(declare-fun m!1418275 () Bool)

(assert (=> b!1535755 m!1418275))

(assert (=> b!1535755 m!1418275))

(declare-fun m!1418277 () Bool)

(assert (=> b!1535755 m!1418277))

(assert (=> b!1535746 m!1418257))

(assert (=> b!1535746 m!1418257))

(declare-fun m!1418279 () Bool)

(assert (=> b!1535746 m!1418279))

(check-sat (not b!1535754) (not b!1535752) (not start!130968) (not b!1535746) (not b!1535755) (not b!1535751) (not b!1535748) (not b!1535750))
(check-sat)
