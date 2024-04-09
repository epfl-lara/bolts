; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120358 () Bool)

(assert start!120358)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95685 0))(
  ( (array!95686 (arr!46189 (Array (_ BitVec 32) (_ BitVec 64))) (size!46740 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95685)

(declare-fun e!792762 () Bool)

(declare-datatypes ((SeekEntryResult!10528 0))(
  ( (MissingZero!10528 (index!44488 (_ BitVec 32))) (Found!10528 (index!44489 (_ BitVec 32))) (Intermediate!10528 (undefined!11340 Bool) (index!44490 (_ BitVec 32)) (x!126142 (_ BitVec 32))) (Undefined!10528) (MissingVacant!10528 (index!44491 (_ BitVec 32))) )
))
(declare-fun lt!616012 () SeekEntryResult!10528)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!616011 () (_ BitVec 64))

(declare-fun lt!616010 () array!95685)

(declare-fun b!1400169 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95685 (_ BitVec 32)) SeekEntryResult!10528)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95685 (_ BitVec 32)) SeekEntryResult!10528)

(assert (=> b!1400169 (= e!792762 (= (seekEntryOrOpen!0 lt!616011 lt!616010 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126142 lt!616012) (index!44490 lt!616012) (index!44490 lt!616012) (select (arr!46189 a!2901) j!112) lt!616010 mask!2840)))))

(declare-fun b!1400170 () Bool)

(declare-fun e!792761 () Bool)

(declare-fun e!792767 () Bool)

(assert (=> b!1400170 (= e!792761 e!792767)))

(declare-fun res!938793 () Bool)

(assert (=> b!1400170 (=> res!938793 e!792767)))

(declare-fun lt!616015 () SeekEntryResult!10528)

(declare-fun lt!616013 () (_ BitVec 32))

(assert (=> b!1400170 (= res!938793 (or (bvslt (x!126142 lt!616015) #b00000000000000000000000000000000) (bvsgt (x!126142 lt!616015) #b01111111111111111111111111111110) (bvslt (x!126142 lt!616012) #b00000000000000000000000000000000) (bvsgt (x!126142 lt!616012) #b01111111111111111111111111111110) (bvslt lt!616013 #b00000000000000000000000000000000) (bvsge lt!616013 (size!46740 a!2901)) (bvslt (index!44490 lt!616015) #b00000000000000000000000000000000) (bvsge (index!44490 lt!616015) (size!46740 a!2901)) (bvslt (index!44490 lt!616012) #b00000000000000000000000000000000) (bvsge (index!44490 lt!616012) (size!46740 a!2901)) (not (= lt!616015 (Intermediate!10528 false (index!44490 lt!616015) (x!126142 lt!616015)))) (not (= lt!616012 (Intermediate!10528 false (index!44490 lt!616012) (x!126142 lt!616012))))))))

(assert (=> b!1400170 e!792762))

(declare-fun res!938792 () Bool)

(assert (=> b!1400170 (=> (not res!938792) (not e!792762))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1400170 (= res!938792 (and (not (undefined!11340 lt!616012)) (= (index!44490 lt!616012) i!1037) (bvslt (x!126142 lt!616012) (x!126142 lt!616015)) (= (select (store (arr!46189 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44490 lt!616012)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47010 0))(
  ( (Unit!47011) )
))
(declare-fun lt!616014 () Unit!47010)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47010)

(assert (=> b!1400170 (= lt!616014 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!616013 (x!126142 lt!616015) (index!44490 lt!616015) (x!126142 lt!616012) (index!44490 lt!616012) (undefined!11340 lt!616012) mask!2840))))

(declare-fun res!938794 () Bool)

(declare-fun e!792763 () Bool)

(assert (=> start!120358 (=> (not res!938794) (not e!792763))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120358 (= res!938794 (validMask!0 mask!2840))))

(assert (=> start!120358 e!792763))

(assert (=> start!120358 true))

(declare-fun array_inv!35134 (array!95685) Bool)

(assert (=> start!120358 (array_inv!35134 a!2901)))

(declare-fun b!1400171 () Bool)

(declare-fun e!792766 () Bool)

(assert (=> b!1400171 (= e!792766 e!792761)))

(declare-fun res!938799 () Bool)

(assert (=> b!1400171 (=> res!938799 e!792761)))

(assert (=> b!1400171 (= res!938799 (or (= lt!616015 lt!616012) (not (is-Intermediate!10528 lt!616012))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95685 (_ BitVec 32)) SeekEntryResult!10528)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1400171 (= lt!616012 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!616011 mask!2840) lt!616011 lt!616010 mask!2840))))

(assert (=> b!1400171 (= lt!616011 (select (store (arr!46189 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1400171 (= lt!616010 (array!95686 (store (arr!46189 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46740 a!2901)))))

(declare-fun b!1400172 () Bool)

(declare-fun e!792765 () Bool)

(assert (=> b!1400172 (= e!792765 (= (seekEntryOrOpen!0 (select (arr!46189 a!2901) j!112) a!2901 mask!2840) (Found!10528 j!112)))))

(declare-fun b!1400173 () Bool)

(assert (=> b!1400173 (= e!792767 true)))

(declare-fun lt!616008 () SeekEntryResult!10528)

(assert (=> b!1400173 (= lt!616008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616013 lt!616011 lt!616010 mask!2840))))

(declare-fun b!1400174 () Bool)

(declare-fun res!938795 () Bool)

(assert (=> b!1400174 (=> (not res!938795) (not e!792763))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1400174 (= res!938795 (validKeyInArray!0 (select (arr!46189 a!2901) i!1037)))))

(declare-fun b!1400175 () Bool)

(declare-fun res!938789 () Bool)

(assert (=> b!1400175 (=> (not res!938789) (not e!792763))))

(declare-datatypes ((List!32888 0))(
  ( (Nil!32885) (Cons!32884 (h!34132 (_ BitVec 64)) (t!47589 List!32888)) )
))
(declare-fun arrayNoDuplicates!0 (array!95685 (_ BitVec 32) List!32888) Bool)

(assert (=> b!1400175 (= res!938789 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32885))))

(declare-fun b!1400176 () Bool)

(declare-fun res!938798 () Bool)

(assert (=> b!1400176 (=> (not res!938798) (not e!792763))))

(assert (=> b!1400176 (= res!938798 (and (= (size!46740 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46740 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46740 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1400177 () Bool)

(assert (=> b!1400177 (= e!792763 (not e!792766))))

(declare-fun res!938797 () Bool)

(assert (=> b!1400177 (=> res!938797 e!792766)))

(assert (=> b!1400177 (= res!938797 (or (not (is-Intermediate!10528 lt!616015)) (undefined!11340 lt!616015)))))

(assert (=> b!1400177 e!792765))

(declare-fun res!938790 () Bool)

(assert (=> b!1400177 (=> (not res!938790) (not e!792765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95685 (_ BitVec 32)) Bool)

(assert (=> b!1400177 (= res!938790 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!616009 () Unit!47010)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47010)

(assert (=> b!1400177 (= lt!616009 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1400177 (= lt!616015 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!616013 (select (arr!46189 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1400177 (= lt!616013 (toIndex!0 (select (arr!46189 a!2901) j!112) mask!2840))))

(declare-fun b!1400178 () Bool)

(declare-fun res!938796 () Bool)

(assert (=> b!1400178 (=> (not res!938796) (not e!792763))))

(assert (=> b!1400178 (= res!938796 (validKeyInArray!0 (select (arr!46189 a!2901) j!112)))))

(declare-fun b!1400179 () Bool)

(declare-fun res!938791 () Bool)

(assert (=> b!1400179 (=> (not res!938791) (not e!792763))))

(assert (=> b!1400179 (= res!938791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120358 res!938794) b!1400176))

(assert (= (and b!1400176 res!938798) b!1400174))

(assert (= (and b!1400174 res!938795) b!1400178))

(assert (= (and b!1400178 res!938796) b!1400179))

(assert (= (and b!1400179 res!938791) b!1400175))

(assert (= (and b!1400175 res!938789) b!1400177))

(assert (= (and b!1400177 res!938790) b!1400172))

(assert (= (and b!1400177 (not res!938797)) b!1400171))

(assert (= (and b!1400171 (not res!938799)) b!1400170))

(assert (= (and b!1400170 res!938792) b!1400169))

(assert (= (and b!1400170 (not res!938793)) b!1400173))

(declare-fun m!1287617 () Bool)

(assert (=> b!1400175 m!1287617))

(declare-fun m!1287619 () Bool)

(assert (=> b!1400178 m!1287619))

(assert (=> b!1400178 m!1287619))

(declare-fun m!1287621 () Bool)

(assert (=> b!1400178 m!1287621))

(assert (=> b!1400172 m!1287619))

(assert (=> b!1400172 m!1287619))

(declare-fun m!1287623 () Bool)

(assert (=> b!1400172 m!1287623))

(declare-fun m!1287625 () Bool)

(assert (=> start!120358 m!1287625))

(declare-fun m!1287627 () Bool)

(assert (=> start!120358 m!1287627))

(declare-fun m!1287629 () Bool)

(assert (=> b!1400179 m!1287629))

(declare-fun m!1287631 () Bool)

(assert (=> b!1400174 m!1287631))

(assert (=> b!1400174 m!1287631))

(declare-fun m!1287633 () Bool)

(assert (=> b!1400174 m!1287633))

(assert (=> b!1400177 m!1287619))

(declare-fun m!1287635 () Bool)

(assert (=> b!1400177 m!1287635))

(assert (=> b!1400177 m!1287619))

(declare-fun m!1287637 () Bool)

(assert (=> b!1400177 m!1287637))

(assert (=> b!1400177 m!1287619))

(declare-fun m!1287639 () Bool)

(assert (=> b!1400177 m!1287639))

(declare-fun m!1287641 () Bool)

(assert (=> b!1400177 m!1287641))

(declare-fun m!1287643 () Bool)

(assert (=> b!1400171 m!1287643))

(assert (=> b!1400171 m!1287643))

(declare-fun m!1287645 () Bool)

(assert (=> b!1400171 m!1287645))

(declare-fun m!1287647 () Bool)

(assert (=> b!1400171 m!1287647))

(declare-fun m!1287649 () Bool)

(assert (=> b!1400171 m!1287649))

(declare-fun m!1287651 () Bool)

(assert (=> b!1400169 m!1287651))

(assert (=> b!1400169 m!1287619))

(assert (=> b!1400169 m!1287619))

(declare-fun m!1287653 () Bool)

(assert (=> b!1400169 m!1287653))

(assert (=> b!1400170 m!1287647))

(declare-fun m!1287655 () Bool)

(assert (=> b!1400170 m!1287655))

(declare-fun m!1287657 () Bool)

(assert (=> b!1400170 m!1287657))

(declare-fun m!1287659 () Bool)

(assert (=> b!1400173 m!1287659))

(push 1)

