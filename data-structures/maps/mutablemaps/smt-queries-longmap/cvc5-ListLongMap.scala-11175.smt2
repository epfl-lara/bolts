; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130714 () Bool)

(assert start!130714)

(declare-fun b!1532657 () Bool)

(declare-fun res!1049885 () Bool)

(declare-fun e!853979 () Bool)

(assert (=> b!1532657 (=> (not res!1049885) (not e!853979))))

(declare-datatypes ((array!101739 0))(
  ( (array!101740 (arr!49081 (Array (_ BitVec 32) (_ BitVec 64))) (size!49632 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101739)

(declare-datatypes ((List!35735 0))(
  ( (Nil!35732) (Cons!35731 (h!37177 (_ BitVec 64)) (t!50436 List!35735)) )
))
(declare-fun arrayNoDuplicates!0 (array!101739 (_ BitVec 32) List!35735) Bool)

(assert (=> b!1532657 (= res!1049885 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35732))))

(declare-fun b!1532658 () Bool)

(declare-fun res!1049883 () Bool)

(assert (=> b!1532658 (=> (not res!1049883) (not e!853979))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532658 (= res!1049883 (and (= (size!49632 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49632 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49632 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532659 () Bool)

(declare-fun res!1049882 () Bool)

(assert (=> b!1532659 (=> (not res!1049882) (not e!853979))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532659 (= res!1049882 (validKeyInArray!0 (select (arr!49081 a!2792) j!64)))))

(declare-fun b!1532661 () Bool)

(declare-fun res!1049886 () Bool)

(assert (=> b!1532661 (=> (not res!1049886) (not e!853979))))

(assert (=> b!1532661 (= res!1049886 (validKeyInArray!0 (select (arr!49081 a!2792) i!951)))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun b!1532662 () Bool)

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1532662 (= e!853979 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49632 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49632 a!2792)) (= (select (arr!49081 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1532660 () Bool)

(declare-fun res!1049884 () Bool)

(assert (=> b!1532660 (=> (not res!1049884) (not e!853979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101739 (_ BitVec 32)) Bool)

(assert (=> b!1532660 (= res!1049884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1049881 () Bool)

(assert (=> start!130714 (=> (not res!1049881) (not e!853979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130714 (= res!1049881 (validMask!0 mask!2480))))

(assert (=> start!130714 e!853979))

(assert (=> start!130714 true))

(declare-fun array_inv!38026 (array!101739) Bool)

(assert (=> start!130714 (array_inv!38026 a!2792)))

(assert (= (and start!130714 res!1049881) b!1532658))

(assert (= (and b!1532658 res!1049883) b!1532661))

(assert (= (and b!1532661 res!1049886) b!1532659))

(assert (= (and b!1532659 res!1049882) b!1532660))

(assert (= (and b!1532660 res!1049884) b!1532657))

(assert (= (and b!1532657 res!1049885) b!1532662))

(declare-fun m!1415409 () Bool)

(assert (=> b!1532659 m!1415409))

(assert (=> b!1532659 m!1415409))

(declare-fun m!1415411 () Bool)

(assert (=> b!1532659 m!1415411))

(declare-fun m!1415413 () Bool)

(assert (=> b!1532660 m!1415413))

(declare-fun m!1415415 () Bool)

(assert (=> b!1532661 m!1415415))

(assert (=> b!1532661 m!1415415))

(declare-fun m!1415417 () Bool)

(assert (=> b!1532661 m!1415417))

(declare-fun m!1415419 () Bool)

(assert (=> b!1532657 m!1415419))

(declare-fun m!1415421 () Bool)

(assert (=> b!1532662 m!1415421))

(declare-fun m!1415423 () Bool)

(assert (=> start!130714 m!1415423))

(declare-fun m!1415425 () Bool)

(assert (=> start!130714 m!1415425))

(push 1)

(assert (not b!1532661))

(assert (not b!1532657))

(assert (not b!1532659))

(assert (not start!130714))

(assert (not b!1532660))

(check-sat)

(pop 1)

