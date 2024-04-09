; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130740 () Bool)

(assert start!130740)

(declare-fun b!1532873 () Bool)

(declare-fun res!1050102 () Bool)

(declare-fun e!854057 () Bool)

(assert (=> b!1532873 (=> (not res!1050102) (not e!854057))))

(declare-datatypes ((array!101765 0))(
  ( (array!101766 (arr!49094 (Array (_ BitVec 32) (_ BitVec 64))) (size!49645 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101765)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1532873 (= res!1050102 (and (= (size!49645 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49645 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49645 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1532874 () Bool)

(declare-fun res!1050099 () Bool)

(assert (=> b!1532874 (=> (not res!1050099) (not e!854057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101765 (_ BitVec 32)) Bool)

(assert (=> b!1532874 (= res!1050099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1050097 () Bool)

(assert (=> start!130740 (=> (not res!1050097) (not e!854057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130740 (= res!1050097 (validMask!0 mask!2480))))

(assert (=> start!130740 e!854057))

(assert (=> start!130740 true))

(declare-fun array_inv!38039 (array!101765) Bool)

(assert (=> start!130740 (array_inv!38039 a!2792)))

(declare-fun b!1532875 () Bool)

(declare-fun res!1050100 () Bool)

(assert (=> b!1532875 (=> (not res!1050100) (not e!854057))))

(declare-datatypes ((List!35748 0))(
  ( (Nil!35745) (Cons!35744 (h!37190 (_ BitVec 64)) (t!50449 List!35748)) )
))
(declare-fun arrayNoDuplicates!0 (array!101765 (_ BitVec 32) List!35748) Bool)

(assert (=> b!1532875 (= res!1050100 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35745))))

(declare-fun b!1532876 () Bool)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1532876 (= e!854057 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49645 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49645 a!2792)) (= (select (arr!49094 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1532877 () Bool)

(declare-fun res!1050101 () Bool)

(assert (=> b!1532877 (=> (not res!1050101) (not e!854057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532877 (= res!1050101 (validKeyInArray!0 (select (arr!49094 a!2792) i!951)))))

(declare-fun b!1532878 () Bool)

(declare-fun res!1050098 () Bool)

(assert (=> b!1532878 (=> (not res!1050098) (not e!854057))))

(assert (=> b!1532878 (= res!1050098 (validKeyInArray!0 (select (arr!49094 a!2792) j!64)))))

(assert (= (and start!130740 res!1050097) b!1532873))

(assert (= (and b!1532873 res!1050102) b!1532877))

(assert (= (and b!1532877 res!1050101) b!1532878))

(assert (= (and b!1532878 res!1050098) b!1532874))

(assert (= (and b!1532874 res!1050099) b!1532875))

(assert (= (and b!1532875 res!1050100) b!1532876))

(declare-fun m!1415631 () Bool)

(assert (=> b!1532874 m!1415631))

(declare-fun m!1415633 () Bool)

(assert (=> b!1532877 m!1415633))

(assert (=> b!1532877 m!1415633))

(declare-fun m!1415635 () Bool)

(assert (=> b!1532877 m!1415635))

(declare-fun m!1415637 () Bool)

(assert (=> start!130740 m!1415637))

(declare-fun m!1415639 () Bool)

(assert (=> start!130740 m!1415639))

(declare-fun m!1415641 () Bool)

(assert (=> b!1532875 m!1415641))

(declare-fun m!1415643 () Bool)

(assert (=> b!1532876 m!1415643))

(declare-fun m!1415645 () Bool)

(assert (=> b!1532878 m!1415645))

(assert (=> b!1532878 m!1415645))

(declare-fun m!1415647 () Bool)

(assert (=> b!1532878 m!1415647))

(check-sat (not b!1532874) (not b!1532877) (not b!1532878) (not b!1532875) (not start!130740))
(check-sat)
