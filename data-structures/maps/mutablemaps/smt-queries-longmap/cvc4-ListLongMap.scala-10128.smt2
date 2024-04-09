; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119468 () Bool)

(assert start!119468)

(declare-fun b!1391775 () Bool)

(declare-fun res!931610 () Bool)

(declare-fun e!788154 () Bool)

(assert (=> b!1391775 (=> (not res!931610) (not e!788154))))

(declare-datatypes ((array!95170 0))(
  ( (array!95171 (arr!45942 (Array (_ BitVec 32) (_ BitVec 64))) (size!46493 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95170)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391775 (= res!931610 (validKeyInArray!0 (select (arr!45942 a!2901) j!112)))))

(declare-fun b!1391776 () Bool)

(declare-fun e!788155 () Bool)

(assert (=> b!1391776 (= e!788155 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!611314 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391776 (= lt!611314 (toIndex!0 (select (store (arr!45942 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun res!931607 () Bool)

(assert (=> start!119468 (=> (not res!931607) (not e!788154))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119468 (= res!931607 (validMask!0 mask!2840))))

(assert (=> start!119468 e!788154))

(assert (=> start!119468 true))

(declare-fun array_inv!34887 (array!95170) Bool)

(assert (=> start!119468 (array_inv!34887 a!2901)))

(declare-fun b!1391777 () Bool)

(declare-fun res!931604 () Bool)

(assert (=> b!1391777 (=> (not res!931604) (not e!788154))))

(declare-datatypes ((List!32641 0))(
  ( (Nil!32638) (Cons!32637 (h!33864 (_ BitVec 64)) (t!47342 List!32641)) )
))
(declare-fun arrayNoDuplicates!0 (array!95170 (_ BitVec 32) List!32641) Bool)

(assert (=> b!1391777 (= res!931604 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32638))))

(declare-fun b!1391778 () Bool)

(assert (=> b!1391778 (= e!788154 (not e!788155))))

(declare-fun res!931609 () Bool)

(assert (=> b!1391778 (=> res!931609 e!788155)))

(declare-datatypes ((SeekEntryResult!10281 0))(
  ( (MissingZero!10281 (index!43494 (_ BitVec 32))) (Found!10281 (index!43495 (_ BitVec 32))) (Intermediate!10281 (undefined!11093 Bool) (index!43496 (_ BitVec 32)) (x!125180 (_ BitVec 32))) (Undefined!10281) (MissingVacant!10281 (index!43497 (_ BitVec 32))) )
))
(declare-fun lt!611313 () SeekEntryResult!10281)

(assert (=> b!1391778 (= res!931609 (or (not (is-Intermediate!10281 lt!611313)) (undefined!11093 lt!611313)))))

(declare-fun e!788156 () Bool)

(assert (=> b!1391778 e!788156))

(declare-fun res!931606 () Bool)

(assert (=> b!1391778 (=> (not res!931606) (not e!788156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95170 (_ BitVec 32)) Bool)

(assert (=> b!1391778 (= res!931606 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46516 0))(
  ( (Unit!46517) )
))
(declare-fun lt!611312 () Unit!46516)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95170 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46516)

(assert (=> b!1391778 (= lt!611312 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95170 (_ BitVec 32)) SeekEntryResult!10281)

(assert (=> b!1391778 (= lt!611313 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45942 a!2901) j!112) mask!2840) (select (arr!45942 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391779 () Bool)

(declare-fun res!931608 () Bool)

(assert (=> b!1391779 (=> (not res!931608) (not e!788154))))

(assert (=> b!1391779 (= res!931608 (and (= (size!46493 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46493 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46493 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391780 () Bool)

(declare-fun res!931605 () Bool)

(assert (=> b!1391780 (=> (not res!931605) (not e!788154))))

(assert (=> b!1391780 (= res!931605 (validKeyInArray!0 (select (arr!45942 a!2901) i!1037)))))

(declare-fun b!1391781 () Bool)

(declare-fun res!931611 () Bool)

(assert (=> b!1391781 (=> (not res!931611) (not e!788154))))

(assert (=> b!1391781 (= res!931611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391782 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95170 (_ BitVec 32)) SeekEntryResult!10281)

(assert (=> b!1391782 (= e!788156 (= (seekEntryOrOpen!0 (select (arr!45942 a!2901) j!112) a!2901 mask!2840) (Found!10281 j!112)))))

(assert (= (and start!119468 res!931607) b!1391779))

(assert (= (and b!1391779 res!931608) b!1391780))

(assert (= (and b!1391780 res!931605) b!1391775))

(assert (= (and b!1391775 res!931610) b!1391781))

(assert (= (and b!1391781 res!931611) b!1391777))

(assert (= (and b!1391777 res!931604) b!1391778))

(assert (= (and b!1391778 res!931606) b!1391782))

(assert (= (and b!1391778 (not res!931609)) b!1391776))

(declare-fun m!1277559 () Bool)

(assert (=> b!1391781 m!1277559))

(declare-fun m!1277561 () Bool)

(assert (=> b!1391780 m!1277561))

(assert (=> b!1391780 m!1277561))

(declare-fun m!1277563 () Bool)

(assert (=> b!1391780 m!1277563))

(declare-fun m!1277565 () Bool)

(assert (=> b!1391782 m!1277565))

(assert (=> b!1391782 m!1277565))

(declare-fun m!1277567 () Bool)

(assert (=> b!1391782 m!1277567))

(declare-fun m!1277569 () Bool)

(assert (=> b!1391777 m!1277569))

(assert (=> b!1391778 m!1277565))

(declare-fun m!1277571 () Bool)

(assert (=> b!1391778 m!1277571))

(assert (=> b!1391778 m!1277565))

(declare-fun m!1277573 () Bool)

(assert (=> b!1391778 m!1277573))

(assert (=> b!1391778 m!1277571))

(assert (=> b!1391778 m!1277565))

(declare-fun m!1277575 () Bool)

(assert (=> b!1391778 m!1277575))

(declare-fun m!1277577 () Bool)

(assert (=> b!1391778 m!1277577))

(declare-fun m!1277579 () Bool)

(assert (=> start!119468 m!1277579))

(declare-fun m!1277581 () Bool)

(assert (=> start!119468 m!1277581))

(declare-fun m!1277583 () Bool)

(assert (=> b!1391776 m!1277583))

(declare-fun m!1277585 () Bool)

(assert (=> b!1391776 m!1277585))

(assert (=> b!1391776 m!1277585))

(declare-fun m!1277587 () Bool)

(assert (=> b!1391776 m!1277587))

(assert (=> b!1391775 m!1277565))

(assert (=> b!1391775 m!1277565))

(declare-fun m!1277589 () Bool)

(assert (=> b!1391775 m!1277589))

(push 1)

(assert (not b!1391777))

(assert (not b!1391776))

(assert (not b!1391778))

(assert (not b!1391775))

(assert (not b!1391782))

(assert (not start!119468))

(assert (not b!1391780))

(assert (not b!1391781))

(check-sat)

(pop 1)

(push 1)

