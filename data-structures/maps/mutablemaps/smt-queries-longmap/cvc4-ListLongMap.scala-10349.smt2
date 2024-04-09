; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121688 () Bool)

(assert start!121688)

(declare-fun b!1413250 () Bool)

(declare-fun e!799825 () Bool)

(declare-fun e!799822 () Bool)

(assert (=> b!1413250 (= e!799825 (not e!799822))))

(declare-fun res!950352 () Bool)

(assert (=> b!1413250 (=> res!950352 e!799822)))

(declare-datatypes ((SeekEntryResult!10938 0))(
  ( (MissingZero!10938 (index!46131 (_ BitVec 32))) (Found!10938 (index!46132 (_ BitVec 32))) (Intermediate!10938 (undefined!11750 Bool) (index!46133 (_ BitVec 32)) (x!127716 (_ BitVec 32))) (Undefined!10938) (MissingVacant!10938 (index!46134 (_ BitVec 32))) )
))
(declare-fun lt!622906 () SeekEntryResult!10938)

(assert (=> b!1413250 (= res!950352 (or (not (is-Intermediate!10938 lt!622906)) (undefined!11750 lt!622906)))))

(declare-fun e!799824 () Bool)

(assert (=> b!1413250 e!799824))

(declare-fun res!950351 () Bool)

(assert (=> b!1413250 (=> (not res!950351) (not e!799824))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96544 0))(
  ( (array!96545 (arr!46605 (Array (_ BitVec 32) (_ BitVec 64))) (size!47156 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96544)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96544 (_ BitVec 32)) Bool)

(assert (=> b!1413250 (= res!950351 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47800 0))(
  ( (Unit!47801) )
))
(declare-fun lt!622900 () Unit!47800)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96544 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47800)

(assert (=> b!1413250 (= lt!622900 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622904 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96544 (_ BitVec 32)) SeekEntryResult!10938)

(assert (=> b!1413250 (= lt!622906 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622904 (select (arr!46605 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413250 (= lt!622904 (toIndex!0 (select (arr!46605 a!2901) j!112) mask!2840))))

(declare-fun b!1413251 () Bool)

(declare-fun res!950353 () Bool)

(assert (=> b!1413251 (=> (not res!950353) (not e!799825))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413251 (= res!950353 (validKeyInArray!0 (select (arr!46605 a!2901) i!1037)))))

(declare-fun b!1413252 () Bool)

(declare-fun e!799826 () Bool)

(assert (=> b!1413252 (= e!799822 e!799826)))

(declare-fun res!950349 () Bool)

(assert (=> b!1413252 (=> res!950349 e!799826)))

(declare-fun lt!622905 () SeekEntryResult!10938)

(assert (=> b!1413252 (= res!950349 (or (= lt!622906 lt!622905) (not (is-Intermediate!10938 lt!622905))))))

(declare-fun lt!622903 () array!96544)

(declare-fun lt!622901 () (_ BitVec 64))

(assert (=> b!1413252 (= lt!622905 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622901 mask!2840) lt!622901 lt!622903 mask!2840))))

(assert (=> b!1413252 (= lt!622901 (select (store (arr!46605 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413252 (= lt!622903 (array!96545 (store (arr!46605 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47156 a!2901)))))

(declare-fun b!1413253 () Bool)

(assert (=> b!1413253 (= e!799826 true)))

(declare-fun e!799823 () Bool)

(assert (=> b!1413253 e!799823))

(declare-fun res!950350 () Bool)

(assert (=> b!1413253 (=> (not res!950350) (not e!799823))))

(assert (=> b!1413253 (= res!950350 (and (not (undefined!11750 lt!622905)) (= (index!46133 lt!622905) i!1037) (bvslt (x!127716 lt!622905) (x!127716 lt!622906)) (= (select (store (arr!46605 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46133 lt!622905)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622902 () Unit!47800)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96544 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47800)

(assert (=> b!1413253 (= lt!622902 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622904 (x!127716 lt!622906) (index!46133 lt!622906) (x!127716 lt!622905) (index!46133 lt!622905) (undefined!11750 lt!622905) mask!2840))))

(declare-fun b!1413254 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96544 (_ BitVec 32)) SeekEntryResult!10938)

(assert (=> b!1413254 (= e!799824 (= (seekEntryOrOpen!0 (select (arr!46605 a!2901) j!112) a!2901 mask!2840) (Found!10938 j!112)))))

(declare-fun b!1413255 () Bool)

(declare-fun res!950358 () Bool)

(assert (=> b!1413255 (=> (not res!950358) (not e!799825))))

(assert (=> b!1413255 (= res!950358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413256 () Bool)

(declare-fun res!950356 () Bool)

(assert (=> b!1413256 (=> (not res!950356) (not e!799825))))

(assert (=> b!1413256 (= res!950356 (and (= (size!47156 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47156 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47156 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413257 () Bool)

(declare-fun res!950357 () Bool)

(assert (=> b!1413257 (=> (not res!950357) (not e!799825))))

(declare-datatypes ((List!33304 0))(
  ( (Nil!33301) (Cons!33300 (h!34575 (_ BitVec 64)) (t!48005 List!33304)) )
))
(declare-fun arrayNoDuplicates!0 (array!96544 (_ BitVec 32) List!33304) Bool)

(assert (=> b!1413257 (= res!950357 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33301))))

(declare-fun b!1413258 () Bool)

(declare-fun res!950354 () Bool)

(assert (=> b!1413258 (=> (not res!950354) (not e!799825))))

(assert (=> b!1413258 (= res!950354 (validKeyInArray!0 (select (arr!46605 a!2901) j!112)))))

(declare-fun res!950355 () Bool)

(assert (=> start!121688 (=> (not res!950355) (not e!799825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121688 (= res!950355 (validMask!0 mask!2840))))

(assert (=> start!121688 e!799825))

(assert (=> start!121688 true))

(declare-fun array_inv!35550 (array!96544) Bool)

(assert (=> start!121688 (array_inv!35550 a!2901)))

(declare-fun b!1413259 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96544 (_ BitVec 32)) SeekEntryResult!10938)

(assert (=> b!1413259 (= e!799823 (= (seekEntryOrOpen!0 lt!622901 lt!622903 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127716 lt!622905) (index!46133 lt!622905) (index!46133 lt!622905) (select (arr!46605 a!2901) j!112) lt!622903 mask!2840)))))

(assert (= (and start!121688 res!950355) b!1413256))

(assert (= (and b!1413256 res!950356) b!1413251))

(assert (= (and b!1413251 res!950353) b!1413258))

(assert (= (and b!1413258 res!950354) b!1413255))

(assert (= (and b!1413255 res!950358) b!1413257))

(assert (= (and b!1413257 res!950357) b!1413250))

(assert (= (and b!1413250 res!950351) b!1413254))

(assert (= (and b!1413250 (not res!950352)) b!1413252))

(assert (= (and b!1413252 (not res!950349)) b!1413253))

(assert (= (and b!1413253 res!950350) b!1413259))

(declare-fun m!1303691 () Bool)

(assert (=> b!1413255 m!1303691))

(declare-fun m!1303693 () Bool)

(assert (=> b!1413259 m!1303693))

(declare-fun m!1303695 () Bool)

(assert (=> b!1413259 m!1303695))

(assert (=> b!1413259 m!1303695))

(declare-fun m!1303697 () Bool)

(assert (=> b!1413259 m!1303697))

(declare-fun m!1303699 () Bool)

(assert (=> b!1413252 m!1303699))

(assert (=> b!1413252 m!1303699))

(declare-fun m!1303701 () Bool)

(assert (=> b!1413252 m!1303701))

(declare-fun m!1303703 () Bool)

(assert (=> b!1413252 m!1303703))

(declare-fun m!1303705 () Bool)

(assert (=> b!1413252 m!1303705))

(assert (=> b!1413254 m!1303695))

(assert (=> b!1413254 m!1303695))

(declare-fun m!1303707 () Bool)

(assert (=> b!1413254 m!1303707))

(declare-fun m!1303709 () Bool)

(assert (=> start!121688 m!1303709))

(declare-fun m!1303711 () Bool)

(assert (=> start!121688 m!1303711))

(assert (=> b!1413253 m!1303703))

(declare-fun m!1303713 () Bool)

(assert (=> b!1413253 m!1303713))

(declare-fun m!1303715 () Bool)

(assert (=> b!1413253 m!1303715))

(assert (=> b!1413250 m!1303695))

(declare-fun m!1303717 () Bool)

(assert (=> b!1413250 m!1303717))

(assert (=> b!1413250 m!1303695))

(assert (=> b!1413250 m!1303695))

(declare-fun m!1303719 () Bool)

(assert (=> b!1413250 m!1303719))

(declare-fun m!1303721 () Bool)

(assert (=> b!1413250 m!1303721))

(declare-fun m!1303723 () Bool)

(assert (=> b!1413250 m!1303723))

(declare-fun m!1303725 () Bool)

(assert (=> b!1413251 m!1303725))

(assert (=> b!1413251 m!1303725))

(declare-fun m!1303727 () Bool)

(assert (=> b!1413251 m!1303727))

(declare-fun m!1303729 () Bool)

(assert (=> b!1413257 m!1303729))

(assert (=> b!1413258 m!1303695))

(assert (=> b!1413258 m!1303695))

(declare-fun m!1303731 () Bool)

(assert (=> b!1413258 m!1303731))

(push 1)

