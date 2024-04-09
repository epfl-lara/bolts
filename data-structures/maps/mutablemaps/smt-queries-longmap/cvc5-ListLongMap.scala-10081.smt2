; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118660 () Bool)

(assert start!118660)

(declare-fun b!1386710 () Bool)

(declare-fun res!927945 () Bool)

(declare-fun e!785538 () Bool)

(assert (=> b!1386710 (=> (not res!927945) (not e!785538))))

(declare-datatypes ((array!94854 0))(
  ( (array!94855 (arr!45799 (Array (_ BitVec 32) (_ BitVec 64))) (size!46350 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94854)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386710 (= res!927945 (validKeyInArray!0 (select (arr!45799 a!2938) i!1065)))))

(declare-fun b!1386711 () Bool)

(declare-fun res!927944 () Bool)

(assert (=> b!1386711 (=> (not res!927944) (not e!785538))))

(assert (=> b!1386711 (= res!927944 (and (not (= (select (arr!45799 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45799 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386713 () Bool)

(declare-fun e!785539 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1386713 (= e!785539 (validKeyInArray!0 (select (arr!45799 a!2938) startIndex!16)))))

(declare-fun b!1386714 () Bool)

(declare-fun res!927940 () Bool)

(assert (=> b!1386714 (=> (not res!927940) (not e!785538))))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1386714 (= res!927940 (and (= (size!46350 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46350 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46350 a!2938))))))

(declare-fun b!1386715 () Bool)

(declare-datatypes ((Unit!46291 0))(
  ( (Unit!46292) )
))
(declare-fun e!785540 () Unit!46291)

(declare-fun lt!609521 () Unit!46291)

(assert (=> b!1386715 (= e!785540 lt!609521)))

(declare-fun lt!609523 () Unit!46291)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94854 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46291)

(assert (=> b!1386715 (= lt!609523 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10164 0))(
  ( (MissingZero!10164 (index!43026 (_ BitVec 32))) (Found!10164 (index!43027 (_ BitVec 32))) (Intermediate!10164 (undefined!10976 Bool) (index!43028 (_ BitVec 32)) (x!124648 (_ BitVec 32))) (Undefined!10164) (MissingVacant!10164 (index!43029 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94854 (_ BitVec 32)) SeekEntryResult!10164)

(assert (=> b!1386715 (= (seekEntryOrOpen!0 (select (arr!45799 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45799 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94855 (store (arr!45799 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46350 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94854 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46291)

(assert (=> b!1386715 (= lt!609521 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94854 (_ BitVec 32)) Bool)

(assert (=> b!1386715 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386716 () Bool)

(declare-fun res!927943 () Bool)

(assert (=> b!1386716 (=> (not res!927943) (not e!785538))))

(declare-datatypes ((List!32507 0))(
  ( (Nil!32504) (Cons!32503 (h!33712 (_ BitVec 64)) (t!47208 List!32507)) )
))
(declare-fun arrayNoDuplicates!0 (array!94854 (_ BitVec 32) List!32507) Bool)

(assert (=> b!1386716 (= res!927943 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32504))))

(declare-fun b!1386717 () Bool)

(declare-fun Unit!46293 () Unit!46291)

(assert (=> b!1386717 (= e!785540 Unit!46293)))

(declare-fun b!1386718 () Bool)

(declare-fun res!927941 () Bool)

(assert (=> b!1386718 (=> (not res!927941) (not e!785538))))

(assert (=> b!1386718 (= res!927941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!927939 () Bool)

(assert (=> start!118660 (=> (not res!927939) (not e!785538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118660 (= res!927939 (validMask!0 mask!2987))))

(assert (=> start!118660 e!785538))

(assert (=> start!118660 true))

(declare-fun array_inv!34744 (array!94854) Bool)

(assert (=> start!118660 (array_inv!34744 a!2938)))

(declare-fun b!1386712 () Bool)

(assert (=> b!1386712 (= e!785538 false)))

(declare-fun lt!609522 () Unit!46291)

(assert (=> b!1386712 (= lt!609522 e!785540)))

(declare-fun c!128828 () Bool)

(assert (=> b!1386712 (= c!128828 e!785539)))

(declare-fun res!927942 () Bool)

(assert (=> b!1386712 (=> (not res!927942) (not e!785539))))

(assert (=> b!1386712 (= res!927942 (not (= startIndex!16 i!1065)))))

(assert (= (and start!118660 res!927939) b!1386714))

(assert (= (and b!1386714 res!927940) b!1386710))

(assert (= (and b!1386710 res!927945) b!1386716))

(assert (= (and b!1386716 res!927943) b!1386718))

(assert (= (and b!1386718 res!927941) b!1386711))

(assert (= (and b!1386711 res!927944) b!1386712))

(assert (= (and b!1386712 res!927942) b!1386713))

(assert (= (and b!1386712 c!128828) b!1386715))

(assert (= (and b!1386712 (not c!128828)) b!1386717))

(declare-fun m!1272173 () Bool)

(assert (=> start!118660 m!1272173))

(declare-fun m!1272175 () Bool)

(assert (=> start!118660 m!1272175))

(declare-fun m!1272177 () Bool)

(assert (=> b!1386711 m!1272177))

(declare-fun m!1272179 () Bool)

(assert (=> b!1386718 m!1272179))

(declare-fun m!1272181 () Bool)

(assert (=> b!1386716 m!1272181))

(declare-fun m!1272183 () Bool)

(assert (=> b!1386715 m!1272183))

(declare-fun m!1272185 () Bool)

(assert (=> b!1386715 m!1272185))

(assert (=> b!1386715 m!1272185))

(declare-fun m!1272187 () Bool)

(assert (=> b!1386715 m!1272187))

(declare-fun m!1272189 () Bool)

(assert (=> b!1386715 m!1272189))

(declare-fun m!1272191 () Bool)

(assert (=> b!1386715 m!1272191))

(declare-fun m!1272193 () Bool)

(assert (=> b!1386715 m!1272193))

(declare-fun m!1272195 () Bool)

(assert (=> b!1386715 m!1272195))

(assert (=> b!1386715 m!1272193))

(declare-fun m!1272197 () Bool)

(assert (=> b!1386715 m!1272197))

(assert (=> b!1386713 m!1272193))

(assert (=> b!1386713 m!1272193))

(declare-fun m!1272199 () Bool)

(assert (=> b!1386713 m!1272199))

(assert (=> b!1386710 m!1272177))

(assert (=> b!1386710 m!1272177))

(declare-fun m!1272201 () Bool)

(assert (=> b!1386710 m!1272201))

(push 1)

(assert (not b!1386710))

(assert (not b!1386716))

(assert (not b!1386713))

(assert (not b!1386715))

(assert (not start!118660))

(assert (not b!1386718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

