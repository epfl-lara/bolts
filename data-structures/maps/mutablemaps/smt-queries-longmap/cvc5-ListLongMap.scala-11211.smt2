; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130930 () Bool)

(assert start!130930)

(declare-fun b!1535176 () Bool)

(declare-fun res!1052405 () Bool)

(declare-fun e!854709 () Bool)

(assert (=> b!1535176 (=> (not res!1052405) (not e!854709))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101955 0))(
  ( (array!101956 (arr!49189 (Array (_ BitVec 32) (_ BitVec 64))) (size!49740 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101955)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535176 (= res!1052405 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49740 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49740 a!2792)) (= (select (arr!49189 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535177 () Bool)

(declare-fun res!1052401 () Bool)

(assert (=> b!1535177 (=> (not res!1052401) (not e!854709))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535177 (= res!1052401 (and (= (size!49740 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49740 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49740 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535178 () Bool)

(declare-fun res!1052408 () Bool)

(assert (=> b!1535178 (=> (not res!1052408) (not e!854709))))

(declare-datatypes ((List!35843 0))(
  ( (Nil!35840) (Cons!35839 (h!37285 (_ BitVec 64)) (t!50544 List!35843)) )
))
(declare-fun arrayNoDuplicates!0 (array!101955 (_ BitVec 32) List!35843) Bool)

(assert (=> b!1535178 (= res!1052408 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35840))))

(declare-fun b!1535179 () Bool)

(declare-fun e!854711 () Bool)

(assert (=> b!1535179 (= e!854709 e!854711)))

(declare-fun res!1052403 () Bool)

(assert (=> b!1535179 (=> (not res!1052403) (not e!854711))))

(declare-fun lt!663954 () (_ BitVec 32))

(assert (=> b!1535179 (= res!1052403 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663954 #b00000000000000000000000000000000) (bvslt lt!663954 (size!49740 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535179 (= lt!663954 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun res!1052402 () Bool)

(assert (=> start!130930 (=> (not res!1052402) (not e!854709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130930 (= res!1052402 (validMask!0 mask!2480))))

(assert (=> start!130930 e!854709))

(assert (=> start!130930 true))

(declare-fun array_inv!38134 (array!101955) Bool)

(assert (=> start!130930 (array_inv!38134 a!2792)))

(declare-fun b!1535180 () Bool)

(declare-fun res!1052406 () Bool)

(assert (=> b!1535180 (=> (not res!1052406) (not e!854709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535180 (= res!1052406 (validKeyInArray!0 (select (arr!49189 a!2792) j!64)))))

(declare-fun b!1535181 () Bool)

(declare-fun res!1052404 () Bool)

(assert (=> b!1535181 (=> (not res!1052404) (not e!854709))))

(declare-datatypes ((SeekEntryResult!13344 0))(
  ( (MissingZero!13344 (index!55770 (_ BitVec 32))) (Found!13344 (index!55771 (_ BitVec 32))) (Intermediate!13344 (undefined!14156 Bool) (index!55772 (_ BitVec 32)) (x!137525 (_ BitVec 32))) (Undefined!13344) (MissingVacant!13344 (index!55773 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101955 (_ BitVec 32)) SeekEntryResult!13344)

(assert (=> b!1535181 (= res!1052404 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49189 a!2792) j!64) a!2792 mask!2480) (Found!13344 j!64)))))

(declare-fun b!1535182 () Bool)

(declare-fun res!1052409 () Bool)

(assert (=> b!1535182 (=> (not res!1052409) (not e!854709))))

(assert (=> b!1535182 (= res!1052409 (not (= (select (arr!49189 a!2792) index!463) (select (arr!49189 a!2792) j!64))))))

(declare-fun b!1535183 () Bool)

(declare-fun res!1052407 () Bool)

(assert (=> b!1535183 (=> (not res!1052407) (not e!854709))))

(assert (=> b!1535183 (= res!1052407 (validKeyInArray!0 (select (arr!49189 a!2792) i!951)))))

(declare-fun b!1535184 () Bool)

(declare-fun res!1052400 () Bool)

(assert (=> b!1535184 (=> (not res!1052400) (not e!854709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101955 (_ BitVec 32)) Bool)

(assert (=> b!1535184 (= res!1052400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535185 () Bool)

(assert (=> b!1535185 (= e!854711 false)))

(declare-fun lt!663955 () SeekEntryResult!13344)

(assert (=> b!1535185 (= lt!663955 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663954 vacantIndex!5 (select (arr!49189 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!130930 res!1052402) b!1535177))

(assert (= (and b!1535177 res!1052401) b!1535183))

(assert (= (and b!1535183 res!1052407) b!1535180))

(assert (= (and b!1535180 res!1052406) b!1535184))

(assert (= (and b!1535184 res!1052400) b!1535178))

(assert (= (and b!1535178 res!1052408) b!1535176))

(assert (= (and b!1535176 res!1052405) b!1535181))

(assert (= (and b!1535181 res!1052404) b!1535182))

(assert (= (and b!1535182 res!1052409) b!1535179))

(assert (= (and b!1535179 res!1052403) b!1535185))

(declare-fun m!1417761 () Bool)

(assert (=> b!1535184 m!1417761))

(declare-fun m!1417763 () Bool)

(assert (=> b!1535176 m!1417763))

(declare-fun m!1417765 () Bool)

(assert (=> b!1535185 m!1417765))

(assert (=> b!1535185 m!1417765))

(declare-fun m!1417767 () Bool)

(assert (=> b!1535185 m!1417767))

(declare-fun m!1417769 () Bool)

(assert (=> start!130930 m!1417769))

(declare-fun m!1417771 () Bool)

(assert (=> start!130930 m!1417771))

(assert (=> b!1535181 m!1417765))

(assert (=> b!1535181 m!1417765))

(declare-fun m!1417773 () Bool)

(assert (=> b!1535181 m!1417773))

(assert (=> b!1535180 m!1417765))

(assert (=> b!1535180 m!1417765))

(declare-fun m!1417775 () Bool)

(assert (=> b!1535180 m!1417775))

(declare-fun m!1417777 () Bool)

(assert (=> b!1535182 m!1417777))

(assert (=> b!1535182 m!1417765))

(declare-fun m!1417779 () Bool)

(assert (=> b!1535178 m!1417779))

(declare-fun m!1417781 () Bool)

(assert (=> b!1535183 m!1417781))

(assert (=> b!1535183 m!1417781))

(declare-fun m!1417783 () Bool)

(assert (=> b!1535183 m!1417783))

(declare-fun m!1417785 () Bool)

(assert (=> b!1535179 m!1417785))

(push 1)

