; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130814 () Bool)

(assert start!130814)

(declare-fun b!1533672 () Bool)

(declare-fun res!1050898 () Bool)

(declare-fun e!854279 () Bool)

(assert (=> b!1533672 (=> (not res!1050898) (not e!854279))))

(declare-datatypes ((array!101839 0))(
  ( (array!101840 (arr!49131 (Array (_ BitVec 32) (_ BitVec 64))) (size!49682 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101839)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1533672 (= res!1050898 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49682 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49682 a!2792)) (= (select (arr!49131 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533673 () Bool)

(declare-fun res!1050900 () Bool)

(assert (=> b!1533673 (=> (not res!1050900) (not e!854279))))

(declare-datatypes ((List!35785 0))(
  ( (Nil!35782) (Cons!35781 (h!37227 (_ BitVec 64)) (t!50486 List!35785)) )
))
(declare-fun arrayNoDuplicates!0 (array!101839 (_ BitVec 32) List!35785) Bool)

(assert (=> b!1533673 (= res!1050900 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35782))))

(declare-fun b!1533674 () Bool)

(declare-fun res!1050902 () Bool)

(assert (=> b!1533674 (=> (not res!1050902) (not e!854279))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533674 (= res!1050902 (validKeyInArray!0 (select (arr!49131 a!2792) j!64)))))

(declare-fun b!1533675 () Bool)

(declare-fun res!1050901 () Bool)

(assert (=> b!1533675 (=> (not res!1050901) (not e!854279))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533675 (= res!1050901 (validKeyInArray!0 (select (arr!49131 a!2792) i!951)))))

(declare-fun b!1533676 () Bool)

(declare-fun res!1050896 () Bool)

(assert (=> b!1533676 (=> (not res!1050896) (not e!854279))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101839 (_ BitVec 32)) Bool)

(assert (=> b!1533676 (= res!1050896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533677 () Bool)

(assert (=> b!1533677 (= e!854279 (and (= (select (arr!49131 a!2792) index!463) (select (arr!49131 a!2792) j!64)) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1533678 () Bool)

(declare-fun res!1050903 () Bool)

(assert (=> b!1533678 (=> (not res!1050903) (not e!854279))))

(declare-datatypes ((SeekEntryResult!13286 0))(
  ( (MissingZero!13286 (index!55538 (_ BitVec 32))) (Found!13286 (index!55539 (_ BitVec 32))) (Intermediate!13286 (undefined!14098 Bool) (index!55540 (_ BitVec 32)) (x!137307 (_ BitVec 32))) (Undefined!13286) (MissingVacant!13286 (index!55541 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101839 (_ BitVec 32)) SeekEntryResult!13286)

(assert (=> b!1533678 (= res!1050903 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49131 a!2792) j!64) a!2792 mask!2480) (Found!13286 j!64)))))

(declare-fun res!1050897 () Bool)

(assert (=> start!130814 (=> (not res!1050897) (not e!854279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130814 (= res!1050897 (validMask!0 mask!2480))))

(assert (=> start!130814 e!854279))

(assert (=> start!130814 true))

(declare-fun array_inv!38076 (array!101839) Bool)

(assert (=> start!130814 (array_inv!38076 a!2792)))

(declare-fun b!1533679 () Bool)

(declare-fun res!1050899 () Bool)

(assert (=> b!1533679 (=> (not res!1050899) (not e!854279))))

(assert (=> b!1533679 (= res!1050899 (and (= (size!49682 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49682 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49682 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130814 res!1050897) b!1533679))

(assert (= (and b!1533679 res!1050899) b!1533675))

(assert (= (and b!1533675 res!1050901) b!1533674))

(assert (= (and b!1533674 res!1050902) b!1533676))

(assert (= (and b!1533676 res!1050896) b!1533673))

(assert (= (and b!1533673 res!1050900) b!1533672))

(assert (= (and b!1533672 res!1050898) b!1533678))

(assert (= (and b!1533678 res!1050903) b!1533677))

(declare-fun m!1416413 () Bool)

(assert (=> b!1533673 m!1416413))

(declare-fun m!1416415 () Bool)

(assert (=> b!1533677 m!1416415))

(declare-fun m!1416417 () Bool)

(assert (=> b!1533677 m!1416417))

(declare-fun m!1416419 () Bool)

(assert (=> b!1533675 m!1416419))

(assert (=> b!1533675 m!1416419))

(declare-fun m!1416421 () Bool)

(assert (=> b!1533675 m!1416421))

(assert (=> b!1533674 m!1416417))

(assert (=> b!1533674 m!1416417))

(declare-fun m!1416423 () Bool)

(assert (=> b!1533674 m!1416423))

(declare-fun m!1416425 () Bool)

(assert (=> b!1533672 m!1416425))

(assert (=> b!1533678 m!1416417))

(assert (=> b!1533678 m!1416417))

(declare-fun m!1416427 () Bool)

(assert (=> b!1533678 m!1416427))

(declare-fun m!1416429 () Bool)

(assert (=> start!130814 m!1416429))

(declare-fun m!1416431 () Bool)

(assert (=> start!130814 m!1416431))

(declare-fun m!1416433 () Bool)

(assert (=> b!1533676 m!1416433))

(push 1)

(assert (not b!1533676))

(assert (not b!1533675))

(assert (not b!1533674))

(assert (not b!1533673))

(assert (not start!130814))

(assert (not b!1533678))

(check-sat)

(pop 1)

