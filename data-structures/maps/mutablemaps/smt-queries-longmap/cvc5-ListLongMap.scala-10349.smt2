; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121684 () Bool)

(assert start!121684)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!799786 () Bool)

(declare-fun b!1413190 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10936 0))(
  ( (MissingZero!10936 (index!46123 (_ BitVec 32))) (Found!10936 (index!46124 (_ BitVec 32))) (Intermediate!10936 (undefined!11748 Bool) (index!46125 (_ BitVec 32)) (x!127714 (_ BitVec 32))) (Undefined!10936) (MissingVacant!10936 (index!46126 (_ BitVec 32))) )
))
(declare-fun lt!622860 () SeekEntryResult!10936)

(declare-datatypes ((array!96540 0))(
  ( (array!96541 (arr!46603 (Array (_ BitVec 32) (_ BitVec 64))) (size!47154 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96540)

(declare-fun lt!622858 () array!96540)

(declare-fun lt!622859 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96540 (_ BitVec 32)) SeekEntryResult!10936)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96540 (_ BitVec 32)) SeekEntryResult!10936)

(assert (=> b!1413190 (= e!799786 (= (seekEntryOrOpen!0 lt!622859 lt!622858 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127714 lt!622860) (index!46125 lt!622860) (index!46125 lt!622860) (select (arr!46603 a!2901) j!112) lt!622858 mask!2840)))))

(declare-fun b!1413191 () Bool)

(declare-fun e!799790 () Bool)

(assert (=> b!1413191 (= e!799790 (= (seekEntryOrOpen!0 (select (arr!46603 a!2901) j!112) a!2901 mask!2840) (Found!10936 j!112)))))

(declare-fun b!1413192 () Bool)

(declare-fun res!950293 () Bool)

(declare-fun e!799788 () Bool)

(assert (=> b!1413192 (=> (not res!950293) (not e!799788))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1413192 (= res!950293 (and (= (size!47154 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47154 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47154 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413193 () Bool)

(declare-fun res!950294 () Bool)

(assert (=> b!1413193 (=> (not res!950294) (not e!799788))))

(declare-datatypes ((List!33302 0))(
  ( (Nil!33299) (Cons!33298 (h!34573 (_ BitVec 64)) (t!48003 List!33302)) )
))
(declare-fun arrayNoDuplicates!0 (array!96540 (_ BitVec 32) List!33302) Bool)

(assert (=> b!1413193 (= res!950294 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33299))))

(declare-fun res!950291 () Bool)

(assert (=> start!121684 (=> (not res!950291) (not e!799788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121684 (= res!950291 (validMask!0 mask!2840))))

(assert (=> start!121684 e!799788))

(assert (=> start!121684 true))

(declare-fun array_inv!35548 (array!96540) Bool)

(assert (=> start!121684 (array_inv!35548 a!2901)))

(declare-fun b!1413194 () Bool)

(declare-fun res!950296 () Bool)

(assert (=> b!1413194 (=> (not res!950296) (not e!799788))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413194 (= res!950296 (validKeyInArray!0 (select (arr!46603 a!2901) j!112)))))

(declare-fun b!1413195 () Bool)

(declare-fun res!950297 () Bool)

(assert (=> b!1413195 (=> (not res!950297) (not e!799788))))

(assert (=> b!1413195 (= res!950297 (validKeyInArray!0 (select (arr!46603 a!2901) i!1037)))))

(declare-fun b!1413196 () Bool)

(declare-fun e!799789 () Bool)

(assert (=> b!1413196 (= e!799789 true)))

(assert (=> b!1413196 e!799786))

(declare-fun res!950289 () Bool)

(assert (=> b!1413196 (=> (not res!950289) (not e!799786))))

(declare-fun lt!622861 () SeekEntryResult!10936)

(assert (=> b!1413196 (= res!950289 (and (not (undefined!11748 lt!622860)) (= (index!46125 lt!622860) i!1037) (bvslt (x!127714 lt!622860) (x!127714 lt!622861)) (= (select (store (arr!46603 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46125 lt!622860)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!47796 0))(
  ( (Unit!47797) )
))
(declare-fun lt!622864 () Unit!47796)

(declare-fun lt!622863 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96540 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47796)

(assert (=> b!1413196 (= lt!622864 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622863 (x!127714 lt!622861) (index!46125 lt!622861) (x!127714 lt!622860) (index!46125 lt!622860) (undefined!11748 lt!622860) mask!2840))))

(declare-fun b!1413197 () Bool)

(declare-fun e!799785 () Bool)

(assert (=> b!1413197 (= e!799788 (not e!799785))))

(declare-fun res!950292 () Bool)

(assert (=> b!1413197 (=> res!950292 e!799785)))

(assert (=> b!1413197 (= res!950292 (or (not (is-Intermediate!10936 lt!622861)) (undefined!11748 lt!622861)))))

(assert (=> b!1413197 e!799790))

(declare-fun res!950295 () Bool)

(assert (=> b!1413197 (=> (not res!950295) (not e!799790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96540 (_ BitVec 32)) Bool)

(assert (=> b!1413197 (= res!950295 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622862 () Unit!47796)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96540 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47796)

(assert (=> b!1413197 (= lt!622862 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96540 (_ BitVec 32)) SeekEntryResult!10936)

(assert (=> b!1413197 (= lt!622861 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622863 (select (arr!46603 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413197 (= lt!622863 (toIndex!0 (select (arr!46603 a!2901) j!112) mask!2840))))

(declare-fun b!1413198 () Bool)

(assert (=> b!1413198 (= e!799785 e!799789)))

(declare-fun res!950290 () Bool)

(assert (=> b!1413198 (=> res!950290 e!799789)))

(assert (=> b!1413198 (= res!950290 (or (= lt!622861 lt!622860) (not (is-Intermediate!10936 lt!622860))))))

(assert (=> b!1413198 (= lt!622860 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622859 mask!2840) lt!622859 lt!622858 mask!2840))))

(assert (=> b!1413198 (= lt!622859 (select (store (arr!46603 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413198 (= lt!622858 (array!96541 (store (arr!46603 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47154 a!2901)))))

(declare-fun b!1413199 () Bool)

(declare-fun res!950298 () Bool)

(assert (=> b!1413199 (=> (not res!950298) (not e!799788))))

(assert (=> b!1413199 (= res!950298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121684 res!950291) b!1413192))

(assert (= (and b!1413192 res!950293) b!1413195))

(assert (= (and b!1413195 res!950297) b!1413194))

(assert (= (and b!1413194 res!950296) b!1413199))

(assert (= (and b!1413199 res!950298) b!1413193))

(assert (= (and b!1413193 res!950294) b!1413197))

(assert (= (and b!1413197 res!950295) b!1413191))

(assert (= (and b!1413197 (not res!950292)) b!1413198))

(assert (= (and b!1413198 (not res!950290)) b!1413196))

(assert (= (and b!1413196 res!950289) b!1413190))

(declare-fun m!1303607 () Bool)

(assert (=> b!1413198 m!1303607))

(assert (=> b!1413198 m!1303607))

(declare-fun m!1303609 () Bool)

(assert (=> b!1413198 m!1303609))

(declare-fun m!1303611 () Bool)

(assert (=> b!1413198 m!1303611))

(declare-fun m!1303613 () Bool)

(assert (=> b!1413198 m!1303613))

(declare-fun m!1303615 () Bool)

(assert (=> b!1413195 m!1303615))

(assert (=> b!1413195 m!1303615))

(declare-fun m!1303617 () Bool)

(assert (=> b!1413195 m!1303617))

(declare-fun m!1303619 () Bool)

(assert (=> b!1413194 m!1303619))

(assert (=> b!1413194 m!1303619))

(declare-fun m!1303621 () Bool)

(assert (=> b!1413194 m!1303621))

(declare-fun m!1303623 () Bool)

(assert (=> b!1413199 m!1303623))

(declare-fun m!1303625 () Bool)

(assert (=> b!1413193 m!1303625))

(assert (=> b!1413196 m!1303611))

(declare-fun m!1303627 () Bool)

(assert (=> b!1413196 m!1303627))

(declare-fun m!1303629 () Bool)

(assert (=> b!1413196 m!1303629))

(declare-fun m!1303631 () Bool)

(assert (=> start!121684 m!1303631))

(declare-fun m!1303633 () Bool)

(assert (=> start!121684 m!1303633))

(declare-fun m!1303635 () Bool)

(assert (=> b!1413190 m!1303635))

(assert (=> b!1413190 m!1303619))

(assert (=> b!1413190 m!1303619))

(declare-fun m!1303637 () Bool)

(assert (=> b!1413190 m!1303637))

(assert (=> b!1413197 m!1303619))

(declare-fun m!1303639 () Bool)

(assert (=> b!1413197 m!1303639))

(assert (=> b!1413197 m!1303619))

(declare-fun m!1303641 () Bool)

(assert (=> b!1413197 m!1303641))

(declare-fun m!1303643 () Bool)

(assert (=> b!1413197 m!1303643))

(assert (=> b!1413197 m!1303619))

(declare-fun m!1303645 () Bool)

(assert (=> b!1413197 m!1303645))

(assert (=> b!1413191 m!1303619))

(assert (=> b!1413191 m!1303619))

(declare-fun m!1303647 () Bool)

(assert (=> b!1413191 m!1303647))

(push 1)

