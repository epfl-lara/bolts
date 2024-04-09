; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120328 () Bool)

(assert start!120328)

(declare-fun b!1399674 () Bool)

(declare-fun res!938295 () Bool)

(declare-fun e!792452 () Bool)

(assert (=> b!1399674 (=> (not res!938295) (not e!792452))))

(declare-datatypes ((array!95655 0))(
  ( (array!95656 (arr!46174 (Array (_ BitVec 32) (_ BitVec 64))) (size!46725 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95655)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399674 (= res!938295 (validKeyInArray!0 (select (arr!46174 a!2901) i!1037)))))

(declare-fun b!1399675 () Bool)

(declare-fun e!792449 () Bool)

(declare-fun e!792450 () Bool)

(assert (=> b!1399675 (= e!792449 e!792450)))

(declare-fun res!938298 () Bool)

(assert (=> b!1399675 (=> res!938298 e!792450)))

(declare-datatypes ((SeekEntryResult!10513 0))(
  ( (MissingZero!10513 (index!44428 (_ BitVec 32))) (Found!10513 (index!44429 (_ BitVec 32))) (Intermediate!10513 (undefined!11325 Bool) (index!44430 (_ BitVec 32)) (x!126087 (_ BitVec 32))) (Undefined!10513) (MissingVacant!10513 (index!44431 (_ BitVec 32))) )
))
(declare-fun lt!615655 () SeekEntryResult!10513)

(declare-fun lt!615653 () SeekEntryResult!10513)

(assert (=> b!1399675 (= res!938298 (or (= lt!615655 lt!615653) (not (is-Intermediate!10513 lt!615653))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!615650 () array!95655)

(declare-fun lt!615651 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95655 (_ BitVec 32)) SeekEntryResult!10513)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399675 (= lt!615653 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615651 mask!2840) lt!615651 lt!615650 mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399675 (= lt!615651 (select (store (arr!46174 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399675 (= lt!615650 (array!95656 (store (arr!46174 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46725 a!2901)))))

(declare-fun res!938299 () Bool)

(assert (=> start!120328 (=> (not res!938299) (not e!792452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120328 (= res!938299 (validMask!0 mask!2840))))

(assert (=> start!120328 e!792452))

(assert (=> start!120328 true))

(declare-fun array_inv!35119 (array!95655) Bool)

(assert (=> start!120328 (array_inv!35119 a!2901)))

(declare-fun b!1399676 () Bool)

(assert (=> b!1399676 (= e!792452 (not e!792449))))

(declare-fun res!938297 () Bool)

(assert (=> b!1399676 (=> res!938297 e!792449)))

(assert (=> b!1399676 (= res!938297 (or (not (is-Intermediate!10513 lt!615655)) (undefined!11325 lt!615655)))))

(declare-fun e!792447 () Bool)

(assert (=> b!1399676 e!792447))

(declare-fun res!938304 () Bool)

(assert (=> b!1399676 (=> (not res!938304) (not e!792447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95655 (_ BitVec 32)) Bool)

(assert (=> b!1399676 (= res!938304 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46980 0))(
  ( (Unit!46981) )
))
(declare-fun lt!615652 () Unit!46980)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46980)

(assert (=> b!1399676 (= lt!615652 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615654 () (_ BitVec 32))

(assert (=> b!1399676 (= lt!615655 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615654 (select (arr!46174 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399676 (= lt!615654 (toIndex!0 (select (arr!46174 a!2901) j!112) mask!2840))))

(declare-fun b!1399677 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95655 (_ BitVec 32)) SeekEntryResult!10513)

(assert (=> b!1399677 (= e!792447 (= (seekEntryOrOpen!0 (select (arr!46174 a!2901) j!112) a!2901 mask!2840) (Found!10513 j!112)))))

(declare-fun b!1399678 () Bool)

(declare-fun e!792451 () Bool)

(assert (=> b!1399678 (= e!792450 e!792451)))

(declare-fun res!938294 () Bool)

(assert (=> b!1399678 (=> res!938294 e!792451)))

(assert (=> b!1399678 (= res!938294 (or (bvslt (x!126087 lt!615655) #b00000000000000000000000000000000) (bvsgt (x!126087 lt!615655) #b01111111111111111111111111111110) (bvslt (x!126087 lt!615653) #b00000000000000000000000000000000) (bvsgt (x!126087 lt!615653) #b01111111111111111111111111111110) (bvslt lt!615654 #b00000000000000000000000000000000) (bvsge lt!615654 (size!46725 a!2901)) (bvslt (index!44430 lt!615655) #b00000000000000000000000000000000) (bvsge (index!44430 lt!615655) (size!46725 a!2901)) (bvslt (index!44430 lt!615653) #b00000000000000000000000000000000) (bvsge (index!44430 lt!615653) (size!46725 a!2901)) (not (= lt!615655 (Intermediate!10513 false (index!44430 lt!615655) (x!126087 lt!615655)))) (not (= lt!615653 (Intermediate!10513 false (index!44430 lt!615653) (x!126087 lt!615653))))))))

(declare-fun e!792446 () Bool)

(assert (=> b!1399678 e!792446))

(declare-fun res!938300 () Bool)

(assert (=> b!1399678 (=> (not res!938300) (not e!792446))))

(assert (=> b!1399678 (= res!938300 (and (not (undefined!11325 lt!615653)) (= (index!44430 lt!615653) i!1037) (bvslt (x!126087 lt!615653) (x!126087 lt!615655)) (= (select (store (arr!46174 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44430 lt!615653)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!615648 () Unit!46980)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46980)

(assert (=> b!1399678 (= lt!615648 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615654 (x!126087 lt!615655) (index!44430 lt!615655) (x!126087 lt!615653) (index!44430 lt!615653) (undefined!11325 lt!615653) mask!2840))))

(declare-fun b!1399679 () Bool)

(declare-fun res!938301 () Bool)

(assert (=> b!1399679 (=> (not res!938301) (not e!792452))))

(assert (=> b!1399679 (= res!938301 (validKeyInArray!0 (select (arr!46174 a!2901) j!112)))))

(declare-fun b!1399680 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95655 (_ BitVec 32)) SeekEntryResult!10513)

(assert (=> b!1399680 (= e!792446 (= (seekEntryOrOpen!0 lt!615651 lt!615650 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126087 lt!615653) (index!44430 lt!615653) (index!44430 lt!615653) (select (arr!46174 a!2901) j!112) lt!615650 mask!2840)))))

(declare-fun b!1399681 () Bool)

(declare-fun res!938296 () Bool)

(assert (=> b!1399681 (=> (not res!938296) (not e!792452))))

(assert (=> b!1399681 (= res!938296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399682 () Bool)

(declare-fun res!938303 () Bool)

(assert (=> b!1399682 (=> (not res!938303) (not e!792452))))

(assert (=> b!1399682 (= res!938303 (and (= (size!46725 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46725 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46725 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399683 () Bool)

(declare-fun res!938302 () Bool)

(assert (=> b!1399683 (=> (not res!938302) (not e!792452))))

(declare-datatypes ((List!32873 0))(
  ( (Nil!32870) (Cons!32869 (h!34117 (_ BitVec 64)) (t!47574 List!32873)) )
))
(declare-fun arrayNoDuplicates!0 (array!95655 (_ BitVec 32) List!32873) Bool)

(assert (=> b!1399683 (= res!938302 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32870))))

(declare-fun b!1399684 () Bool)

(assert (=> b!1399684 (= e!792451 true)))

(declare-fun lt!615649 () SeekEntryResult!10513)

(assert (=> b!1399684 (= lt!615649 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615654 lt!615651 lt!615650 mask!2840))))

(assert (= (and start!120328 res!938299) b!1399682))

(assert (= (and b!1399682 res!938303) b!1399674))

(assert (= (and b!1399674 res!938295) b!1399679))

(assert (= (and b!1399679 res!938301) b!1399681))

(assert (= (and b!1399681 res!938296) b!1399683))

(assert (= (and b!1399683 res!938302) b!1399676))

(assert (= (and b!1399676 res!938304) b!1399677))

(assert (= (and b!1399676 (not res!938297)) b!1399675))

(assert (= (and b!1399675 (not res!938298)) b!1399678))

(assert (= (and b!1399678 res!938300) b!1399680))

(assert (= (and b!1399678 (not res!938294)) b!1399684))

(declare-fun m!1286957 () Bool)

(assert (=> b!1399676 m!1286957))

(declare-fun m!1286959 () Bool)

(assert (=> b!1399676 m!1286959))

(assert (=> b!1399676 m!1286957))

(declare-fun m!1286961 () Bool)

(assert (=> b!1399676 m!1286961))

(declare-fun m!1286963 () Bool)

(assert (=> b!1399676 m!1286963))

(assert (=> b!1399676 m!1286957))

(declare-fun m!1286965 () Bool)

(assert (=> b!1399676 m!1286965))

(declare-fun m!1286967 () Bool)

(assert (=> b!1399683 m!1286967))

(declare-fun m!1286969 () Bool)

(assert (=> start!120328 m!1286969))

(declare-fun m!1286971 () Bool)

(assert (=> start!120328 m!1286971))

(declare-fun m!1286973 () Bool)

(assert (=> b!1399684 m!1286973))

(declare-fun m!1286975 () Bool)

(assert (=> b!1399674 m!1286975))

(assert (=> b!1399674 m!1286975))

(declare-fun m!1286977 () Bool)

(assert (=> b!1399674 m!1286977))

(declare-fun m!1286979 () Bool)

(assert (=> b!1399681 m!1286979))

(declare-fun m!1286981 () Bool)

(assert (=> b!1399678 m!1286981))

(declare-fun m!1286983 () Bool)

(assert (=> b!1399678 m!1286983))

(declare-fun m!1286985 () Bool)

(assert (=> b!1399678 m!1286985))

(declare-fun m!1286987 () Bool)

(assert (=> b!1399675 m!1286987))

(assert (=> b!1399675 m!1286987))

(declare-fun m!1286989 () Bool)

(assert (=> b!1399675 m!1286989))

(assert (=> b!1399675 m!1286981))

(declare-fun m!1286991 () Bool)

(assert (=> b!1399675 m!1286991))

(assert (=> b!1399679 m!1286957))

(assert (=> b!1399679 m!1286957))

(declare-fun m!1286993 () Bool)

(assert (=> b!1399679 m!1286993))

(declare-fun m!1286995 () Bool)

(assert (=> b!1399680 m!1286995))

(assert (=> b!1399680 m!1286957))

(assert (=> b!1399680 m!1286957))

(declare-fun m!1286997 () Bool)

(assert (=> b!1399680 m!1286997))

(assert (=> b!1399677 m!1286957))

(assert (=> b!1399677 m!1286957))

(declare-fun m!1286999 () Bool)

(assert (=> b!1399677 m!1286999))

(push 1)

