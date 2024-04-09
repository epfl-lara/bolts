; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130718 () Bool)

(assert start!130718)

(declare-fun b!1532693 () Bool)

(declare-fun res!1049920 () Bool)

(declare-fun e!853990 () Bool)

(assert (=> b!1532693 (=> (not res!1049920) (not e!853990))))

(declare-datatypes ((array!101743 0))(
  ( (array!101744 (arr!49083 (Array (_ BitVec 32) (_ BitVec 64))) (size!49634 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101743)

(declare-datatypes ((List!35737 0))(
  ( (Nil!35734) (Cons!35733 (h!37179 (_ BitVec 64)) (t!50438 List!35737)) )
))
(declare-fun arrayNoDuplicates!0 (array!101743 (_ BitVec 32) List!35737) Bool)

(assert (=> b!1532693 (= res!1049920 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35734))))

(declare-fun b!1532694 () Bool)

(declare-fun res!1049917 () Bool)

(assert (=> b!1532694 (=> (not res!1049917) (not e!853990))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101743 (_ BitVec 32)) Bool)

(assert (=> b!1532694 (= res!1049917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1532695 () Bool)

(declare-fun res!1049921 () Bool)

(assert (=> b!1532695 (=> (not res!1049921) (not e!853990))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532695 (= res!1049921 (validKeyInArray!0 (select (arr!49083 a!2792) i!951)))))

(declare-fun res!1049918 () Bool)

(assert (=> start!130718 (=> (not res!1049918) (not e!853990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130718 (= res!1049918 (validMask!0 mask!2480))))

(assert (=> start!130718 e!853990))

(assert (=> start!130718 true))

(declare-fun array_inv!38028 (array!101743) Bool)

(assert (=> start!130718 (array_inv!38028 a!2792)))

(declare-fun b!1532696 () Bool)

(declare-fun res!1049919 () Bool)

(assert (=> b!1532696 (=> (not res!1049919) (not e!853990))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1532696 (= res!1049919 (and (= (size!49634 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49634 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49634 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532697 () Bool)

(declare-fun res!1049922 () Bool)

(assert (=> b!1532697 (=> (not res!1049922) (not e!853990))))

(assert (=> b!1532697 (= res!1049922 (validKeyInArray!0 (select (arr!49083 a!2792) j!64)))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun b!1532698 () Bool)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1532698 (= e!853990 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49634 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49634 a!2792)) (= (select (arr!49083 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(assert (= (and start!130718 res!1049918) b!1532696))

(assert (= (and b!1532696 res!1049919) b!1532695))

(assert (= (and b!1532695 res!1049921) b!1532697))

(assert (= (and b!1532697 res!1049922) b!1532694))

(assert (= (and b!1532694 res!1049917) b!1532693))

(assert (= (and b!1532693 res!1049920) b!1532698))

(declare-fun m!1415445 () Bool)

(assert (=> b!1532694 m!1415445))

(declare-fun m!1415447 () Bool)

(assert (=> b!1532695 m!1415447))

(assert (=> b!1532695 m!1415447))

(declare-fun m!1415449 () Bool)

(assert (=> b!1532695 m!1415449))

(declare-fun m!1415451 () Bool)

(assert (=> b!1532697 m!1415451))

(assert (=> b!1532697 m!1415451))

(declare-fun m!1415453 () Bool)

(assert (=> b!1532697 m!1415453))

(declare-fun m!1415455 () Bool)

(assert (=> start!130718 m!1415455))

(declare-fun m!1415457 () Bool)

(assert (=> start!130718 m!1415457))

(declare-fun m!1415459 () Bool)

(assert (=> b!1532698 m!1415459))

(declare-fun m!1415461 () Bool)

(assert (=> b!1532693 m!1415461))

(push 1)

(assert (not b!1532693))

(assert (not b!1532694))

(assert (not start!130718))

(assert (not b!1532697))

(assert (not b!1532695))

(check-sat)

(pop 1)

(push 1)

(check-sat)

