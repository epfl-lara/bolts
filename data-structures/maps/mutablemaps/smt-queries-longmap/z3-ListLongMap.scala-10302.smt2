; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121176 () Bool)

(assert start!121176)

(declare-fun b!1408392 () Bool)

(declare-fun e!797099 () Bool)

(declare-fun e!797096 () Bool)

(assert (=> b!1408392 (= e!797099 (not e!797096))))

(declare-fun res!946228 () Bool)

(assert (=> b!1408392 (=> res!946228 e!797096)))

(declare-datatypes ((SeekEntryResult!10796 0))(
  ( (MissingZero!10796 (index!45560 (_ BitVec 32))) (Found!10796 (index!45561 (_ BitVec 32))) (Intermediate!10796 (undefined!11608 Bool) (index!45562 (_ BitVec 32)) (x!127168 (_ BitVec 32))) (Undefined!10796) (MissingVacant!10796 (index!45563 (_ BitVec 32))) )
))
(declare-fun lt!620301 () SeekEntryResult!10796)

(get-info :version)

(assert (=> b!1408392 (= res!946228 (or (not ((_ is Intermediate!10796) lt!620301)) (undefined!11608 lt!620301)))))

(declare-fun e!797098 () Bool)

(assert (=> b!1408392 e!797098))

(declare-fun res!946223 () Bool)

(assert (=> b!1408392 (=> (not res!946223) (not e!797098))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96248 0))(
  ( (array!96249 (arr!46463 (Array (_ BitVec 32) (_ BitVec 64))) (size!47014 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96248)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96248 (_ BitVec 32)) Bool)

(assert (=> b!1408392 (= res!946223 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47516 0))(
  ( (Unit!47517) )
))
(declare-fun lt!620300 () Unit!47516)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96248 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47516)

(assert (=> b!1408392 (= lt!620300 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96248 (_ BitVec 32)) SeekEntryResult!10796)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408392 (= lt!620301 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46463 a!2901) j!112) mask!2840) (select (arr!46463 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408393 () Bool)

(declare-fun res!946227 () Bool)

(assert (=> b!1408393 (=> (not res!946227) (not e!797099))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408393 (= res!946227 (validKeyInArray!0 (select (arr!46463 a!2901) j!112)))))

(declare-fun b!1408394 () Bool)

(declare-fun res!946229 () Bool)

(assert (=> b!1408394 (=> (not res!946229) (not e!797099))))

(assert (=> b!1408394 (= res!946229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408395 () Bool)

(assert (=> b!1408395 (= e!797096 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620302 () SeekEntryResult!10796)

(assert (=> b!1408395 (= lt!620302 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46463 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46463 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96249 (store (arr!46463 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47014 a!2901)) mask!2840))))

(declare-fun b!1408396 () Bool)

(declare-fun res!946224 () Bool)

(assert (=> b!1408396 (=> (not res!946224) (not e!797099))))

(assert (=> b!1408396 (= res!946224 (validKeyInArray!0 (select (arr!46463 a!2901) i!1037)))))

(declare-fun res!946226 () Bool)

(assert (=> start!121176 (=> (not res!946226) (not e!797099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121176 (= res!946226 (validMask!0 mask!2840))))

(assert (=> start!121176 e!797099))

(assert (=> start!121176 true))

(declare-fun array_inv!35408 (array!96248) Bool)

(assert (=> start!121176 (array_inv!35408 a!2901)))

(declare-fun b!1408397 () Bool)

(declare-fun res!946230 () Bool)

(assert (=> b!1408397 (=> (not res!946230) (not e!797099))))

(assert (=> b!1408397 (= res!946230 (and (= (size!47014 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47014 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47014 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408398 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96248 (_ BitVec 32)) SeekEntryResult!10796)

(assert (=> b!1408398 (= e!797098 (= (seekEntryOrOpen!0 (select (arr!46463 a!2901) j!112) a!2901 mask!2840) (Found!10796 j!112)))))

(declare-fun b!1408399 () Bool)

(declare-fun res!946225 () Bool)

(assert (=> b!1408399 (=> (not res!946225) (not e!797099))))

(declare-datatypes ((List!33162 0))(
  ( (Nil!33159) (Cons!33158 (h!34421 (_ BitVec 64)) (t!47863 List!33162)) )
))
(declare-fun arrayNoDuplicates!0 (array!96248 (_ BitVec 32) List!33162) Bool)

(assert (=> b!1408399 (= res!946225 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33159))))

(assert (= (and start!121176 res!946226) b!1408397))

(assert (= (and b!1408397 res!946230) b!1408396))

(assert (= (and b!1408396 res!946224) b!1408393))

(assert (= (and b!1408393 res!946227) b!1408394))

(assert (= (and b!1408394 res!946229) b!1408399))

(assert (= (and b!1408399 res!946225) b!1408392))

(assert (= (and b!1408392 res!946223) b!1408398))

(assert (= (and b!1408392 (not res!946228)) b!1408395))

(declare-fun m!1297767 () Bool)

(assert (=> b!1408395 m!1297767))

(declare-fun m!1297769 () Bool)

(assert (=> b!1408395 m!1297769))

(assert (=> b!1408395 m!1297769))

(declare-fun m!1297771 () Bool)

(assert (=> b!1408395 m!1297771))

(assert (=> b!1408395 m!1297771))

(assert (=> b!1408395 m!1297769))

(declare-fun m!1297773 () Bool)

(assert (=> b!1408395 m!1297773))

(declare-fun m!1297775 () Bool)

(assert (=> start!121176 m!1297775))

(declare-fun m!1297777 () Bool)

(assert (=> start!121176 m!1297777))

(declare-fun m!1297779 () Bool)

(assert (=> b!1408393 m!1297779))

(assert (=> b!1408393 m!1297779))

(declare-fun m!1297781 () Bool)

(assert (=> b!1408393 m!1297781))

(declare-fun m!1297783 () Bool)

(assert (=> b!1408399 m!1297783))

(declare-fun m!1297785 () Bool)

(assert (=> b!1408396 m!1297785))

(assert (=> b!1408396 m!1297785))

(declare-fun m!1297787 () Bool)

(assert (=> b!1408396 m!1297787))

(declare-fun m!1297789 () Bool)

(assert (=> b!1408394 m!1297789))

(assert (=> b!1408398 m!1297779))

(assert (=> b!1408398 m!1297779))

(declare-fun m!1297791 () Bool)

(assert (=> b!1408398 m!1297791))

(assert (=> b!1408392 m!1297779))

(declare-fun m!1297793 () Bool)

(assert (=> b!1408392 m!1297793))

(assert (=> b!1408392 m!1297779))

(declare-fun m!1297795 () Bool)

(assert (=> b!1408392 m!1297795))

(assert (=> b!1408392 m!1297793))

(assert (=> b!1408392 m!1297779))

(declare-fun m!1297797 () Bool)

(assert (=> b!1408392 m!1297797))

(declare-fun m!1297799 () Bool)

(assert (=> b!1408392 m!1297799))

(check-sat (not b!1408399) (not start!121176) (not b!1408396) (not b!1408393) (not b!1408392) (not b!1408398) (not b!1408395) (not b!1408394))
