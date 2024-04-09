; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130742 () Bool)

(assert start!130742)

(declare-fun b!1532891 () Bool)

(declare-fun res!1050119 () Bool)

(declare-fun e!854063 () Bool)

(assert (=> b!1532891 (=> (not res!1050119) (not e!854063))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-datatypes ((array!101767 0))(
  ( (array!101768 (arr!49095 (Array (_ BitVec 32) (_ BitVec 64))) (size!49646 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101767)

(assert (=> b!1532891 (= res!1050119 (and (= (size!49646 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49646 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49646 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532892 () Bool)

(declare-fun res!1050115 () Bool)

(assert (=> b!1532892 (=> (not res!1050115) (not e!854063))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532892 (= res!1050115 (validKeyInArray!0 (select (arr!49095 a!2792) j!64)))))

(declare-fun res!1050118 () Bool)

(assert (=> start!130742 (=> (not res!1050118) (not e!854063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130742 (= res!1050118 (validMask!0 mask!2480))))

(assert (=> start!130742 e!854063))

(assert (=> start!130742 true))

(declare-fun array_inv!38040 (array!101767) Bool)

(assert (=> start!130742 (array_inv!38040 a!2792)))

(declare-fun b!1532893 () Bool)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1532893 (= e!854063 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49646 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49646 a!2792)) (= (select (arr!49095 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1532894 () Bool)

(declare-fun res!1050117 () Bool)

(assert (=> b!1532894 (=> (not res!1050117) (not e!854063))))

(assert (=> b!1532894 (= res!1050117 (validKeyInArray!0 (select (arr!49095 a!2792) i!951)))))

(declare-fun b!1532895 () Bool)

(declare-fun res!1050116 () Bool)

(assert (=> b!1532895 (=> (not res!1050116) (not e!854063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101767 (_ BitVec 32)) Bool)

(assert (=> b!1532895 (= res!1050116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532896 () Bool)

(declare-fun res!1050120 () Bool)

(assert (=> b!1532896 (=> (not res!1050120) (not e!854063))))

(declare-datatypes ((List!35749 0))(
  ( (Nil!35746) (Cons!35745 (h!37191 (_ BitVec 64)) (t!50450 List!35749)) )
))
(declare-fun arrayNoDuplicates!0 (array!101767 (_ BitVec 32) List!35749) Bool)

(assert (=> b!1532896 (= res!1050120 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35746))))

(assert (= (and start!130742 res!1050118) b!1532891))

(assert (= (and b!1532891 res!1050119) b!1532894))

(assert (= (and b!1532894 res!1050117) b!1532892))

(assert (= (and b!1532892 res!1050115) b!1532895))

(assert (= (and b!1532895 res!1050116) b!1532896))

(assert (= (and b!1532896 res!1050120) b!1532893))

(declare-fun m!1415649 () Bool)

(assert (=> b!1532892 m!1415649))

(assert (=> b!1532892 m!1415649))

(declare-fun m!1415651 () Bool)

(assert (=> b!1532892 m!1415651))

(declare-fun m!1415653 () Bool)

(assert (=> b!1532895 m!1415653))

(declare-fun m!1415655 () Bool)

(assert (=> b!1532893 m!1415655))

(declare-fun m!1415657 () Bool)

(assert (=> start!130742 m!1415657))

(declare-fun m!1415659 () Bool)

(assert (=> start!130742 m!1415659))

(declare-fun m!1415661 () Bool)

(assert (=> b!1532896 m!1415661))

(declare-fun m!1415663 () Bool)

(assert (=> b!1532894 m!1415663))

(assert (=> b!1532894 m!1415663))

(declare-fun m!1415665 () Bool)

(assert (=> b!1532894 m!1415665))

(push 1)

(assert (not start!130742))

(assert (not b!1532895))

(assert (not b!1532892))

(assert (not b!1532896))

(assert (not b!1532894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

