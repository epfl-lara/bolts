; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129396 () Bool)

(assert start!129396)

(declare-fun res!1039578 () Bool)

(declare-fun e!847669 () Bool)

(assert (=> start!129396 (=> (not res!1039578) (not e!847669))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129396 (= res!1039578 (validMask!0 mask!2512))))

(assert (=> start!129396 e!847669))

(assert (=> start!129396 true))

(declare-datatypes ((array!101165 0))(
  ( (array!101166 (arr!48815 (Array (_ BitVec 32) (_ BitVec 64))) (size!49366 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101165)

(declare-fun array_inv!37760 (array!101165) Bool)

(assert (=> start!129396 (array_inv!37760 a!2804)))

(declare-fun b!1519602 () Bool)

(declare-fun e!847667 () Bool)

(assert (=> b!1519602 (= e!847669 e!847667)))

(declare-fun res!1039586 () Bool)

(assert (=> b!1519602 (=> (not res!1039586) (not e!847667))))

(declare-datatypes ((SeekEntryResult!13007 0))(
  ( (MissingZero!13007 (index!54422 (_ BitVec 32))) (Found!13007 (index!54423 (_ BitVec 32))) (Intermediate!13007 (undefined!13819 Bool) (index!54424 (_ BitVec 32)) (x!136098 (_ BitVec 32))) (Undefined!13007) (MissingVacant!13007 (index!54425 (_ BitVec 32))) )
))
(declare-fun lt!658689 () SeekEntryResult!13007)

(declare-fun lt!658688 () SeekEntryResult!13007)

(assert (=> b!1519602 (= res!1039586 (= lt!658689 lt!658688))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1519602 (= lt!658688 (Intermediate!13007 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101165 (_ BitVec 32)) SeekEntryResult!13007)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519602 (= lt!658689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519603 () Bool)

(declare-fun res!1039579 () Bool)

(assert (=> b!1519603 (=> (not res!1039579) (not e!847669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519603 (= res!1039579 (validKeyInArray!0 (select (arr!48815 a!2804) j!70)))))

(declare-fun b!1519604 () Bool)

(declare-fun res!1039583 () Bool)

(assert (=> b!1519604 (=> (not res!1039583) (not e!847667))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1519604 (= res!1039583 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48815 a!2804) j!70) a!2804 mask!2512) lt!658688))))

(declare-fun b!1519605 () Bool)

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1519605 (= e!847667 (not (or (not (= (select (arr!48815 a!2804) j!70) (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (= index!487 resIndex!21))))))

(declare-fun e!847668 () Bool)

(assert (=> b!1519605 e!847668))

(declare-fun res!1039581 () Bool)

(assert (=> b!1519605 (=> (not res!1039581) (not e!847668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101165 (_ BitVec 32)) Bool)

(assert (=> b!1519605 (= res!1039581 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50838 0))(
  ( (Unit!50839) )
))
(declare-fun lt!658690 () Unit!50838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50838)

(assert (=> b!1519605 (= lt!658690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519606 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101165 (_ BitVec 32)) SeekEntryResult!13007)

(assert (=> b!1519606 (= e!847668 (= (seekEntry!0 (select (arr!48815 a!2804) j!70) a!2804 mask!2512) (Found!13007 j!70)))))

(declare-fun b!1519607 () Bool)

(declare-fun res!1039584 () Bool)

(assert (=> b!1519607 (=> (not res!1039584) (not e!847667))))

(assert (=> b!1519607 (= res!1039584 (= lt!658689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)) mask!2512)))))

(declare-fun b!1519608 () Bool)

(declare-fun res!1039585 () Bool)

(assert (=> b!1519608 (=> (not res!1039585) (not e!847669))))

(assert (=> b!1519608 (= res!1039585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519609 () Bool)

(declare-fun res!1039587 () Bool)

(assert (=> b!1519609 (=> (not res!1039587) (not e!847669))))

(assert (=> b!1519609 (= res!1039587 (validKeyInArray!0 (select (arr!48815 a!2804) i!961)))))

(declare-fun b!1519610 () Bool)

(declare-fun res!1039582 () Bool)

(assert (=> b!1519610 (=> (not res!1039582) (not e!847669))))

(assert (=> b!1519610 (= res!1039582 (and (= (size!49366 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49366 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49366 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1519611 () Bool)

(declare-fun res!1039580 () Bool)

(assert (=> b!1519611 (=> (not res!1039580) (not e!847669))))

(declare-datatypes ((List!35478 0))(
  ( (Nil!35475) (Cons!35474 (h!36887 (_ BitVec 64)) (t!50179 List!35478)) )
))
(declare-fun arrayNoDuplicates!0 (array!101165 (_ BitVec 32) List!35478) Bool)

(assert (=> b!1519611 (= res!1039580 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35475))))

(declare-fun b!1519612 () Bool)

(declare-fun res!1039577 () Bool)

(assert (=> b!1519612 (=> (not res!1039577) (not e!847669))))

(assert (=> b!1519612 (= res!1039577 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49366 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49366 a!2804))))))

(assert (= (and start!129396 res!1039578) b!1519610))

(assert (= (and b!1519610 res!1039582) b!1519609))

(assert (= (and b!1519609 res!1039587) b!1519603))

(assert (= (and b!1519603 res!1039579) b!1519608))

(assert (= (and b!1519608 res!1039585) b!1519611))

(assert (= (and b!1519611 res!1039580) b!1519612))

(assert (= (and b!1519612 res!1039577) b!1519602))

(assert (= (and b!1519602 res!1039586) b!1519604))

(assert (= (and b!1519604 res!1039583) b!1519607))

(assert (= (and b!1519607 res!1039584) b!1519605))

(assert (= (and b!1519605 res!1039581) b!1519606))

(declare-fun m!1403085 () Bool)

(assert (=> b!1519603 m!1403085))

(assert (=> b!1519603 m!1403085))

(declare-fun m!1403087 () Bool)

(assert (=> b!1519603 m!1403087))

(declare-fun m!1403089 () Bool)

(assert (=> b!1519611 m!1403089))

(declare-fun m!1403091 () Bool)

(assert (=> start!129396 m!1403091))

(declare-fun m!1403093 () Bool)

(assert (=> start!129396 m!1403093))

(assert (=> b!1519605 m!1403085))

(declare-fun m!1403095 () Bool)

(assert (=> b!1519605 m!1403095))

(declare-fun m!1403097 () Bool)

(assert (=> b!1519605 m!1403097))

(declare-fun m!1403099 () Bool)

(assert (=> b!1519605 m!1403099))

(declare-fun m!1403101 () Bool)

(assert (=> b!1519605 m!1403101))

(assert (=> b!1519604 m!1403085))

(assert (=> b!1519604 m!1403085))

(declare-fun m!1403103 () Bool)

(assert (=> b!1519604 m!1403103))

(assert (=> b!1519607 m!1403097))

(assert (=> b!1519607 m!1403099))

(assert (=> b!1519607 m!1403099))

(declare-fun m!1403105 () Bool)

(assert (=> b!1519607 m!1403105))

(assert (=> b!1519607 m!1403105))

(assert (=> b!1519607 m!1403099))

(declare-fun m!1403107 () Bool)

(assert (=> b!1519607 m!1403107))

(assert (=> b!1519602 m!1403085))

(assert (=> b!1519602 m!1403085))

(declare-fun m!1403109 () Bool)

(assert (=> b!1519602 m!1403109))

(assert (=> b!1519602 m!1403109))

(assert (=> b!1519602 m!1403085))

(declare-fun m!1403111 () Bool)

(assert (=> b!1519602 m!1403111))

(assert (=> b!1519606 m!1403085))

(assert (=> b!1519606 m!1403085))

(declare-fun m!1403113 () Bool)

(assert (=> b!1519606 m!1403113))

(declare-fun m!1403115 () Bool)

(assert (=> b!1519609 m!1403115))

(assert (=> b!1519609 m!1403115))

(declare-fun m!1403117 () Bool)

(assert (=> b!1519609 m!1403117))

(declare-fun m!1403119 () Bool)

(assert (=> b!1519608 m!1403119))

(check-sat (not b!1519603) (not start!129396) (not b!1519607) (not b!1519602) (not b!1519605) (not b!1519606) (not b!1519604) (not b!1519608) (not b!1519611) (not b!1519609))
(check-sat)
(get-model)

(declare-fun b!1519656 () Bool)

(declare-fun e!847691 () Bool)

(declare-fun call!68313 () Bool)

(assert (=> b!1519656 (= e!847691 call!68313)))

(declare-fun b!1519657 () Bool)

(declare-fun e!847692 () Bool)

(declare-fun contains!9986 (List!35478 (_ BitVec 64)) Bool)

(assert (=> b!1519657 (= e!847692 (contains!9986 Nil!35475 (select (arr!48815 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1519658 () Bool)

(declare-fun e!847693 () Bool)

(assert (=> b!1519658 (= e!847693 e!847691)))

(declare-fun c!139559 () Bool)

(assert (=> b!1519658 (= c!139559 (validKeyInArray!0 (select (arr!48815 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68310 () Bool)

(assert (=> bm!68310 (= call!68313 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139559 (Cons!35474 (select (arr!48815 a!2804) #b00000000000000000000000000000000) Nil!35475) Nil!35475)))))

(declare-fun b!1519659 () Bool)

(declare-fun e!847694 () Bool)

(assert (=> b!1519659 (= e!847694 e!847693)))

(declare-fun res!1039629 () Bool)

(assert (=> b!1519659 (=> (not res!1039629) (not e!847693))))

(assert (=> b!1519659 (= res!1039629 (not e!847692))))

(declare-fun res!1039627 () Bool)

(assert (=> b!1519659 (=> (not res!1039627) (not e!847692))))

(assert (=> b!1519659 (= res!1039627 (validKeyInArray!0 (select (arr!48815 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158657 () Bool)

(declare-fun res!1039628 () Bool)

(assert (=> d!158657 (=> res!1039628 e!847694)))

(assert (=> d!158657 (= res!1039628 (bvsge #b00000000000000000000000000000000 (size!49366 a!2804)))))

(assert (=> d!158657 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35475) e!847694)))

(declare-fun b!1519660 () Bool)

(assert (=> b!1519660 (= e!847691 call!68313)))

(assert (= (and d!158657 (not res!1039628)) b!1519659))

(assert (= (and b!1519659 res!1039627) b!1519657))

(assert (= (and b!1519659 res!1039629) b!1519658))

(assert (= (and b!1519658 c!139559) b!1519660))

(assert (= (and b!1519658 (not c!139559)) b!1519656))

(assert (= (or b!1519660 b!1519656) bm!68310))

(declare-fun m!1403157 () Bool)

(assert (=> b!1519657 m!1403157))

(assert (=> b!1519657 m!1403157))

(declare-fun m!1403159 () Bool)

(assert (=> b!1519657 m!1403159))

(assert (=> b!1519658 m!1403157))

(assert (=> b!1519658 m!1403157))

(declare-fun m!1403161 () Bool)

(assert (=> b!1519658 m!1403161))

(assert (=> bm!68310 m!1403157))

(declare-fun m!1403163 () Bool)

(assert (=> bm!68310 m!1403163))

(assert (=> b!1519659 m!1403157))

(assert (=> b!1519659 m!1403157))

(assert (=> b!1519659 m!1403161))

(assert (=> b!1519611 d!158657))

(declare-fun b!1519673 () Bool)

(declare-fun e!847701 () SeekEntryResult!13007)

(declare-fun lt!658709 () SeekEntryResult!13007)

(assert (=> b!1519673 (= e!847701 (MissingZero!13007 (index!54424 lt!658709)))))

(declare-fun d!158659 () Bool)

(declare-fun lt!658711 () SeekEntryResult!13007)

(get-info :version)

(assert (=> d!158659 (and (or ((_ is MissingVacant!13007) lt!658711) (not ((_ is Found!13007) lt!658711)) (and (bvsge (index!54423 lt!658711) #b00000000000000000000000000000000) (bvslt (index!54423 lt!658711) (size!49366 a!2804)))) (not ((_ is MissingVacant!13007) lt!658711)) (or (not ((_ is Found!13007) lt!658711)) (= (select (arr!48815 a!2804) (index!54423 lt!658711)) (select (arr!48815 a!2804) j!70))))))

(declare-fun e!847702 () SeekEntryResult!13007)

(assert (=> d!158659 (= lt!658711 e!847702)))

(declare-fun c!139567 () Bool)

(assert (=> d!158659 (= c!139567 (and ((_ is Intermediate!13007) lt!658709) (undefined!13819 lt!658709)))))

(assert (=> d!158659 (= lt!658709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158659 (validMask!0 mask!2512)))

(assert (=> d!158659 (= (seekEntry!0 (select (arr!48815 a!2804) j!70) a!2804 mask!2512) lt!658711)))

(declare-fun b!1519674 () Bool)

(declare-fun e!847703 () SeekEntryResult!13007)

(assert (=> b!1519674 (= e!847703 (Found!13007 (index!54424 lt!658709)))))

(declare-fun b!1519675 () Bool)

(assert (=> b!1519675 (= e!847702 Undefined!13007)))

(declare-fun b!1519676 () Bool)

(declare-fun lt!658708 () SeekEntryResult!13007)

(assert (=> b!1519676 (= e!847701 (ite ((_ is MissingVacant!13007) lt!658708) (MissingZero!13007 (index!54425 lt!658708)) lt!658708))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101165 (_ BitVec 32)) SeekEntryResult!13007)

(assert (=> b!1519676 (= lt!658708 (seekKeyOrZeroReturnVacant!0 (x!136098 lt!658709) (index!54424 lt!658709) (index!54424 lt!658709) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519677 () Bool)

(assert (=> b!1519677 (= e!847702 e!847703)))

(declare-fun lt!658710 () (_ BitVec 64))

(assert (=> b!1519677 (= lt!658710 (select (arr!48815 a!2804) (index!54424 lt!658709)))))

(declare-fun c!139568 () Bool)

(assert (=> b!1519677 (= c!139568 (= lt!658710 (select (arr!48815 a!2804) j!70)))))

(declare-fun b!1519678 () Bool)

(declare-fun c!139566 () Bool)

(assert (=> b!1519678 (= c!139566 (= lt!658710 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1519678 (= e!847703 e!847701)))

(assert (= (and d!158659 c!139567) b!1519675))

(assert (= (and d!158659 (not c!139567)) b!1519677))

(assert (= (and b!1519677 c!139568) b!1519674))

(assert (= (and b!1519677 (not c!139568)) b!1519678))

(assert (= (and b!1519678 c!139566) b!1519673))

(assert (= (and b!1519678 (not c!139566)) b!1519676))

(declare-fun m!1403165 () Bool)

(assert (=> d!158659 m!1403165))

(assert (=> d!158659 m!1403085))

(assert (=> d!158659 m!1403109))

(assert (=> d!158659 m!1403109))

(assert (=> d!158659 m!1403085))

(assert (=> d!158659 m!1403111))

(assert (=> d!158659 m!1403091))

(assert (=> b!1519676 m!1403085))

(declare-fun m!1403167 () Bool)

(assert (=> b!1519676 m!1403167))

(declare-fun m!1403169 () Bool)

(assert (=> b!1519677 m!1403169))

(assert (=> b!1519606 d!158659))

(declare-fun b!1519742 () Bool)

(declare-fun e!847742 () SeekEntryResult!13007)

(declare-fun e!847740 () SeekEntryResult!13007)

(assert (=> b!1519742 (= e!847742 e!847740)))

(declare-fun lt!658730 () (_ BitVec 64))

(declare-fun c!139590 () Bool)

(assert (=> b!1519742 (= c!139590 (or (= lt!658730 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!658730 lt!658730) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519743 () Bool)

(declare-fun lt!658731 () SeekEntryResult!13007)

(assert (=> b!1519743 (and (bvsge (index!54424 lt!658731) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658731) (size!49366 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)))))))

(declare-fun res!1039654 () Bool)

(assert (=> b!1519743 (= res!1039654 (= (select (arr!48815 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804))) (index!54424 lt!658731)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847743 () Bool)

(assert (=> b!1519743 (=> res!1039654 e!847743)))

(declare-fun b!1519744 () Bool)

(assert (=> b!1519744 (= e!847740 (Intermediate!13007 false (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun d!158665 () Bool)

(declare-fun e!847739 () Bool)

(assert (=> d!158665 e!847739))

(declare-fun c!139591 () Bool)

(assert (=> d!158665 (= c!139591 (and ((_ is Intermediate!13007) lt!658731) (undefined!13819 lt!658731)))))

(assert (=> d!158665 (= lt!658731 e!847742)))

(declare-fun c!139592 () Bool)

(assert (=> d!158665 (= c!139592 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158665 (= lt!658730 (select (arr!48815 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804))) (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158665 (validMask!0 mask!2512)))

(assert (=> d!158665 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)) mask!2512) lt!658731)))

(declare-fun b!1519745 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519745 (= e!847740 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)) mask!2512))))

(declare-fun b!1519746 () Bool)

(assert (=> b!1519746 (and (bvsge (index!54424 lt!658731) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658731) (size!49366 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)))))))

(declare-fun res!1039652 () Bool)

(assert (=> b!1519746 (= res!1039652 (= (select (arr!48815 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804))) (index!54424 lt!658731)) (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1519746 (=> res!1039652 e!847743)))

(declare-fun e!847741 () Bool)

(assert (=> b!1519746 (= e!847741 e!847743)))

(declare-fun b!1519747 () Bool)

(assert (=> b!1519747 (= e!847742 (Intermediate!13007 true (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1519748 () Bool)

(assert (=> b!1519748 (= e!847739 e!847741)))

(declare-fun res!1039653 () Bool)

(assert (=> b!1519748 (= res!1039653 (and ((_ is Intermediate!13007) lt!658731) (not (undefined!13819 lt!658731)) (bvslt (x!136098 lt!658731) #b01111111111111111111111111111110) (bvsge (x!136098 lt!658731) #b00000000000000000000000000000000) (bvsge (x!136098 lt!658731) #b00000000000000000000000000000000)))))

(assert (=> b!1519748 (=> (not res!1039653) (not e!847741))))

(declare-fun b!1519749 () Bool)

(assert (=> b!1519749 (and (bvsge (index!54424 lt!658731) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658731) (size!49366 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)))))))

(assert (=> b!1519749 (= e!847743 (= (select (arr!48815 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804))) (index!54424 lt!658731)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1519750 () Bool)

(assert (=> b!1519750 (= e!847739 (bvsge (x!136098 lt!658731) #b01111111111111111111111111111110))))

(assert (= (and d!158665 c!139592) b!1519747))

(assert (= (and d!158665 (not c!139592)) b!1519742))

(assert (= (and b!1519742 c!139590) b!1519744))

(assert (= (and b!1519742 (not c!139590)) b!1519745))

(assert (= (and d!158665 c!139591) b!1519750))

(assert (= (and d!158665 (not c!139591)) b!1519748))

(assert (= (and b!1519748 res!1039653) b!1519746))

(assert (= (and b!1519746 (not res!1039652)) b!1519743))

(assert (= (and b!1519743 (not res!1039654)) b!1519749))

(declare-fun m!1403179 () Bool)

(assert (=> b!1519746 m!1403179))

(assert (=> b!1519749 m!1403179))

(assert (=> d!158665 m!1403105))

(declare-fun m!1403181 () Bool)

(assert (=> d!158665 m!1403181))

(assert (=> d!158665 m!1403091))

(assert (=> b!1519745 m!1403105))

(declare-fun m!1403183 () Bool)

(assert (=> b!1519745 m!1403183))

(assert (=> b!1519745 m!1403183))

(assert (=> b!1519745 m!1403099))

(declare-fun m!1403185 () Bool)

(assert (=> b!1519745 m!1403185))

(assert (=> b!1519743 m!1403179))

(assert (=> b!1519607 d!158665))

(declare-fun d!158679 () Bool)

(declare-fun lt!658743 () (_ BitVec 32))

(declare-fun lt!658742 () (_ BitVec 32))

(assert (=> d!158679 (= lt!658743 (bvmul (bvxor lt!658742 (bvlshr lt!658742 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158679 (= lt!658742 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158679 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039655 (let ((h!36890 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136104 (bvmul (bvxor h!36890 (bvlshr h!36890 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136104 (bvlshr x!136104 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039655 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039655 #b00000000000000000000000000000000))))))

(assert (=> d!158679 (= (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!658743 (bvlshr lt!658743 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1519607 d!158679))

(declare-fun b!1519775 () Bool)

(declare-fun e!847761 () SeekEntryResult!13007)

(declare-fun e!847759 () SeekEntryResult!13007)

(assert (=> b!1519775 (= e!847761 e!847759)))

(declare-fun c!139601 () Bool)

(declare-fun lt!658750 () (_ BitVec 64))

(assert (=> b!1519775 (= c!139601 (or (= lt!658750 (select (arr!48815 a!2804) j!70)) (= (bvadd lt!658750 lt!658750) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519776 () Bool)

(declare-fun lt!658751 () SeekEntryResult!13007)

(assert (=> b!1519776 (and (bvsge (index!54424 lt!658751) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658751) (size!49366 a!2804)))))

(declare-fun res!1039666 () Bool)

(assert (=> b!1519776 (= res!1039666 (= (select (arr!48815 a!2804) (index!54424 lt!658751)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847762 () Bool)

(assert (=> b!1519776 (=> res!1039666 e!847762)))

(declare-fun b!1519777 () Bool)

(assert (=> b!1519777 (= e!847759 (Intermediate!13007 false (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun d!158685 () Bool)

(declare-fun e!847758 () Bool)

(assert (=> d!158685 e!847758))

(declare-fun c!139602 () Bool)

(assert (=> d!158685 (= c!139602 (and ((_ is Intermediate!13007) lt!658751) (undefined!13819 lt!658751)))))

(assert (=> d!158685 (= lt!658751 e!847761)))

(declare-fun c!139603 () Bool)

(assert (=> d!158685 (= c!139603 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158685 (= lt!658750 (select (arr!48815 a!2804) (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512)))))

(assert (=> d!158685 (validMask!0 mask!2512)))

(assert (=> d!158685 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512) lt!658751)))

(declare-fun b!1519778 () Bool)

(assert (=> b!1519778 (= e!847759 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519779 () Bool)

(assert (=> b!1519779 (and (bvsge (index!54424 lt!658751) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658751) (size!49366 a!2804)))))

(declare-fun res!1039664 () Bool)

(assert (=> b!1519779 (= res!1039664 (= (select (arr!48815 a!2804) (index!54424 lt!658751)) (select (arr!48815 a!2804) j!70)))))

(assert (=> b!1519779 (=> res!1039664 e!847762)))

(declare-fun e!847760 () Bool)

(assert (=> b!1519779 (= e!847760 e!847762)))

(declare-fun b!1519780 () Bool)

(assert (=> b!1519780 (= e!847761 (Intermediate!13007 true (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1519781 () Bool)

(assert (=> b!1519781 (= e!847758 e!847760)))

(declare-fun res!1039665 () Bool)

(assert (=> b!1519781 (= res!1039665 (and ((_ is Intermediate!13007) lt!658751) (not (undefined!13819 lt!658751)) (bvslt (x!136098 lt!658751) #b01111111111111111111111111111110) (bvsge (x!136098 lt!658751) #b00000000000000000000000000000000) (bvsge (x!136098 lt!658751) #b00000000000000000000000000000000)))))

(assert (=> b!1519781 (=> (not res!1039665) (not e!847760))))

(declare-fun b!1519782 () Bool)

(assert (=> b!1519782 (and (bvsge (index!54424 lt!658751) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658751) (size!49366 a!2804)))))

(assert (=> b!1519782 (= e!847762 (= (select (arr!48815 a!2804) (index!54424 lt!658751)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1519783 () Bool)

(assert (=> b!1519783 (= e!847758 (bvsge (x!136098 lt!658751) #b01111111111111111111111111111110))))

(assert (= (and d!158685 c!139603) b!1519780))

(assert (= (and d!158685 (not c!139603)) b!1519775))

(assert (= (and b!1519775 c!139601) b!1519777))

(assert (= (and b!1519775 (not c!139601)) b!1519778))

(assert (= (and d!158685 c!139602) b!1519783))

(assert (= (and d!158685 (not c!139602)) b!1519781))

(assert (= (and b!1519781 res!1039665) b!1519779))

(assert (= (and b!1519779 (not res!1039664)) b!1519776))

(assert (= (and b!1519776 (not res!1039666)) b!1519782))

(declare-fun m!1403203 () Bool)

(assert (=> b!1519779 m!1403203))

(assert (=> b!1519782 m!1403203))

(assert (=> d!158685 m!1403109))

(declare-fun m!1403205 () Bool)

(assert (=> d!158685 m!1403205))

(assert (=> d!158685 m!1403091))

(assert (=> b!1519778 m!1403109))

(declare-fun m!1403207 () Bool)

(assert (=> b!1519778 m!1403207))

(assert (=> b!1519778 m!1403207))

(assert (=> b!1519778 m!1403085))

(declare-fun m!1403209 () Bool)

(assert (=> b!1519778 m!1403209))

(assert (=> b!1519776 m!1403203))

(assert (=> b!1519602 d!158685))

(declare-fun d!158687 () Bool)

(declare-fun lt!658753 () (_ BitVec 32))

(declare-fun lt!658752 () (_ BitVec 32))

(assert (=> d!158687 (= lt!658753 (bvmul (bvxor lt!658752 (bvlshr lt!658752 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158687 (= lt!658752 ((_ extract 31 0) (bvand (bvxor (select (arr!48815 a!2804) j!70) (bvlshr (select (arr!48815 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158687 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039655 (let ((h!36890 ((_ extract 31 0) (bvand (bvxor (select (arr!48815 a!2804) j!70) (bvlshr (select (arr!48815 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136104 (bvmul (bvxor h!36890 (bvlshr h!36890 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136104 (bvlshr x!136104 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039655 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039655 #b00000000000000000000000000000000))))))

(assert (=> d!158687 (= (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) (bvand (bvxor lt!658753 (bvlshr lt!658753 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1519602 d!158687))

(declare-fun b!1519802 () Bool)

(declare-fun e!847779 () Bool)

(declare-fun call!68320 () Bool)

(assert (=> b!1519802 (= e!847779 call!68320)))

(declare-fun b!1519803 () Bool)

(declare-fun e!847778 () Bool)

(assert (=> b!1519803 (= e!847778 call!68320)))

(declare-fun b!1519804 () Bool)

(declare-fun e!847777 () Bool)

(assert (=> b!1519804 (= e!847777 e!847779)))

(declare-fun c!139608 () Bool)

(assert (=> b!1519804 (= c!139608 (validKeyInArray!0 (select (arr!48815 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158689 () Bool)

(declare-fun res!1039679 () Bool)

(assert (=> d!158689 (=> res!1039679 e!847777)))

(assert (=> d!158689 (= res!1039679 (bvsge #b00000000000000000000000000000000 (size!49366 a!2804)))))

(assert (=> d!158689 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!847777)))

(declare-fun b!1519805 () Bool)

(assert (=> b!1519805 (= e!847779 e!847778)))

(declare-fun lt!658775 () (_ BitVec 64))

(assert (=> b!1519805 (= lt!658775 (select (arr!48815 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!658777 () Unit!50838)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101165 (_ BitVec 64) (_ BitVec 32)) Unit!50838)

(assert (=> b!1519805 (= lt!658777 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658775 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1519805 (arrayContainsKey!0 a!2804 lt!658775 #b00000000000000000000000000000000)))

(declare-fun lt!658776 () Unit!50838)

(assert (=> b!1519805 (= lt!658776 lt!658777)))

(declare-fun res!1039678 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101165 (_ BitVec 32)) SeekEntryResult!13007)

(assert (=> b!1519805 (= res!1039678 (= (seekEntryOrOpen!0 (select (arr!48815 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13007 #b00000000000000000000000000000000)))))

(assert (=> b!1519805 (=> (not res!1039678) (not e!847778))))

(declare-fun bm!68317 () Bool)

(assert (=> bm!68317 (= call!68320 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158689 (not res!1039679)) b!1519804))

(assert (= (and b!1519804 c!139608) b!1519805))

(assert (= (and b!1519804 (not c!139608)) b!1519802))

(assert (= (and b!1519805 res!1039678) b!1519803))

(assert (= (or b!1519803 b!1519802) bm!68317))

(assert (=> b!1519804 m!1403157))

(assert (=> b!1519804 m!1403157))

(assert (=> b!1519804 m!1403161))

(assert (=> b!1519805 m!1403157))

(declare-fun m!1403233 () Bool)

(assert (=> b!1519805 m!1403233))

(declare-fun m!1403235 () Bool)

(assert (=> b!1519805 m!1403235))

(assert (=> b!1519805 m!1403157))

(declare-fun m!1403237 () Bool)

(assert (=> b!1519805 m!1403237))

(declare-fun m!1403239 () Bool)

(assert (=> bm!68317 m!1403239))

(assert (=> b!1519608 d!158689))

(declare-fun d!158699 () Bool)

(assert (=> d!158699 (= (validKeyInArray!0 (select (arr!48815 a!2804) j!70)) (and (not (= (select (arr!48815 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48815 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1519603 d!158699))

(declare-fun d!158701 () Bool)

(assert (=> d!158701 (= (validKeyInArray!0 (select (arr!48815 a!2804) i!961)) (and (not (= (select (arr!48815 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48815 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1519609 d!158701))

(declare-fun b!1519806 () Bool)

(declare-fun e!847783 () SeekEntryResult!13007)

(declare-fun e!847781 () SeekEntryResult!13007)

(assert (=> b!1519806 (= e!847783 e!847781)))

(declare-fun lt!658778 () (_ BitVec 64))

(declare-fun c!139609 () Bool)

(assert (=> b!1519806 (= c!139609 (or (= lt!658778 (select (arr!48815 a!2804) j!70)) (= (bvadd lt!658778 lt!658778) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519807 () Bool)

(declare-fun lt!658779 () SeekEntryResult!13007)

(assert (=> b!1519807 (and (bvsge (index!54424 lt!658779) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658779) (size!49366 a!2804)))))

(declare-fun res!1039682 () Bool)

(assert (=> b!1519807 (= res!1039682 (= (select (arr!48815 a!2804) (index!54424 lt!658779)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847784 () Bool)

(assert (=> b!1519807 (=> res!1039682 e!847784)))

(declare-fun b!1519808 () Bool)

(assert (=> b!1519808 (= e!847781 (Intermediate!13007 false index!487 x!534))))

(declare-fun d!158703 () Bool)

(declare-fun e!847780 () Bool)

(assert (=> d!158703 e!847780))

(declare-fun c!139610 () Bool)

(assert (=> d!158703 (= c!139610 (and ((_ is Intermediate!13007) lt!658779) (undefined!13819 lt!658779)))))

(assert (=> d!158703 (= lt!658779 e!847783)))

(declare-fun c!139611 () Bool)

(assert (=> d!158703 (= c!139611 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158703 (= lt!658778 (select (arr!48815 a!2804) index!487))))

(assert (=> d!158703 (validMask!0 mask!2512)))

(assert (=> d!158703 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48815 a!2804) j!70) a!2804 mask!2512) lt!658779)))

(declare-fun b!1519809 () Bool)

(assert (=> b!1519809 (= e!847781 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519810 () Bool)

(assert (=> b!1519810 (and (bvsge (index!54424 lt!658779) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658779) (size!49366 a!2804)))))

(declare-fun res!1039680 () Bool)

(assert (=> b!1519810 (= res!1039680 (= (select (arr!48815 a!2804) (index!54424 lt!658779)) (select (arr!48815 a!2804) j!70)))))

(assert (=> b!1519810 (=> res!1039680 e!847784)))

(declare-fun e!847782 () Bool)

(assert (=> b!1519810 (= e!847782 e!847784)))

(declare-fun b!1519811 () Bool)

(assert (=> b!1519811 (= e!847783 (Intermediate!13007 true index!487 x!534))))

(declare-fun b!1519812 () Bool)

(assert (=> b!1519812 (= e!847780 e!847782)))

(declare-fun res!1039681 () Bool)

(assert (=> b!1519812 (= res!1039681 (and ((_ is Intermediate!13007) lt!658779) (not (undefined!13819 lt!658779)) (bvslt (x!136098 lt!658779) #b01111111111111111111111111111110) (bvsge (x!136098 lt!658779) #b00000000000000000000000000000000) (bvsge (x!136098 lt!658779) x!534)))))

(assert (=> b!1519812 (=> (not res!1039681) (not e!847782))))

(declare-fun b!1519813 () Bool)

(assert (=> b!1519813 (and (bvsge (index!54424 lt!658779) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658779) (size!49366 a!2804)))))

(assert (=> b!1519813 (= e!847784 (= (select (arr!48815 a!2804) (index!54424 lt!658779)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1519814 () Bool)

(assert (=> b!1519814 (= e!847780 (bvsge (x!136098 lt!658779) #b01111111111111111111111111111110))))

(assert (= (and d!158703 c!139611) b!1519811))

(assert (= (and d!158703 (not c!139611)) b!1519806))

(assert (= (and b!1519806 c!139609) b!1519808))

(assert (= (and b!1519806 (not c!139609)) b!1519809))

(assert (= (and d!158703 c!139610) b!1519814))

(assert (= (and d!158703 (not c!139610)) b!1519812))

(assert (= (and b!1519812 res!1039681) b!1519810))

(assert (= (and b!1519810 (not res!1039680)) b!1519807))

(assert (= (and b!1519807 (not res!1039682)) b!1519813))

(declare-fun m!1403241 () Bool)

(assert (=> b!1519810 m!1403241))

(assert (=> b!1519813 m!1403241))

(declare-fun m!1403243 () Bool)

(assert (=> d!158703 m!1403243))

(assert (=> d!158703 m!1403091))

(declare-fun m!1403245 () Bool)

(assert (=> b!1519809 m!1403245))

(assert (=> b!1519809 m!1403245))

(assert (=> b!1519809 m!1403085))

(declare-fun m!1403247 () Bool)

(assert (=> b!1519809 m!1403247))

(assert (=> b!1519807 m!1403241))

(assert (=> b!1519604 d!158703))

(declare-fun d!158705 () Bool)

(assert (=> d!158705 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129396 d!158705))

(declare-fun d!158713 () Bool)

(assert (=> d!158713 (= (array_inv!37760 a!2804) (bvsge (size!49366 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129396 d!158713))

(declare-fun b!1519860 () Bool)

(declare-fun e!847810 () Bool)

(declare-fun call!68321 () Bool)

(assert (=> b!1519860 (= e!847810 call!68321)))

(declare-fun b!1519861 () Bool)

(declare-fun e!847809 () Bool)

(assert (=> b!1519861 (= e!847809 call!68321)))

(declare-fun b!1519862 () Bool)

(declare-fun e!847808 () Bool)

(assert (=> b!1519862 (= e!847808 e!847810)))

(declare-fun c!139633 () Bool)

(assert (=> b!1519862 (= c!139633 (validKeyInArray!0 (select (arr!48815 a!2804) j!70)))))

(declare-fun d!158715 () Bool)

(declare-fun res!1039687 () Bool)

(assert (=> d!158715 (=> res!1039687 e!847808)))

(assert (=> d!158715 (= res!1039687 (bvsge j!70 (size!49366 a!2804)))))

(assert (=> d!158715 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!847808)))

(declare-fun b!1519863 () Bool)

(assert (=> b!1519863 (= e!847810 e!847809)))

(declare-fun lt!658808 () (_ BitVec 64))

(assert (=> b!1519863 (= lt!658808 (select (arr!48815 a!2804) j!70))))

(declare-fun lt!658810 () Unit!50838)

(assert (=> b!1519863 (= lt!658810 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658808 j!70))))

(assert (=> b!1519863 (arrayContainsKey!0 a!2804 lt!658808 #b00000000000000000000000000000000)))

(declare-fun lt!658809 () Unit!50838)

(assert (=> b!1519863 (= lt!658809 lt!658810)))

(declare-fun res!1039686 () Bool)

(assert (=> b!1519863 (= res!1039686 (= (seekEntryOrOpen!0 (select (arr!48815 a!2804) j!70) a!2804 mask!2512) (Found!13007 j!70)))))

(assert (=> b!1519863 (=> (not res!1039686) (not e!847809))))

(declare-fun bm!68318 () Bool)

(assert (=> bm!68318 (= call!68321 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158715 (not res!1039687)) b!1519862))

(assert (= (and b!1519862 c!139633) b!1519863))

(assert (= (and b!1519862 (not c!139633)) b!1519860))

(assert (= (and b!1519863 res!1039686) b!1519861))

(assert (= (or b!1519861 b!1519860) bm!68318))

(assert (=> b!1519862 m!1403085))

(assert (=> b!1519862 m!1403085))

(assert (=> b!1519862 m!1403087))

(assert (=> b!1519863 m!1403085))

(declare-fun m!1403269 () Bool)

(assert (=> b!1519863 m!1403269))

(declare-fun m!1403271 () Bool)

(assert (=> b!1519863 m!1403271))

(assert (=> b!1519863 m!1403085))

(declare-fun m!1403273 () Bool)

(assert (=> b!1519863 m!1403273))

(declare-fun m!1403275 () Bool)

(assert (=> bm!68318 m!1403275))

(assert (=> b!1519605 d!158715))

(declare-fun d!158719 () Bool)

(assert (=> d!158719 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!658813 () Unit!50838)

(declare-fun choose!38 (array!101165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50838)

(assert (=> d!158719 (= lt!658813 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!158719 (validMask!0 mask!2512)))

(assert (=> d!158719 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!658813)))

(declare-fun bs!43611 () Bool)

(assert (= bs!43611 d!158719))

(assert (=> bs!43611 m!1403101))

(declare-fun m!1403285 () Bool)

(assert (=> bs!43611 m!1403285))

(assert (=> bs!43611 m!1403091))

(assert (=> b!1519605 d!158719))

(check-sat (not b!1519676) (not d!158665) (not bm!68310) (not b!1519657) (not b!1519658) (not b!1519659) (not d!158685) (not b!1519863) (not b!1519778) (not b!1519862) (not b!1519809) (not b!1519804) (not bm!68317) (not bm!68318) (not b!1519805) (not d!158659) (not d!158719) (not b!1519745) (not d!158703))
(check-sat)
(get-model)

(declare-fun b!1519928 () Bool)

(declare-fun e!847859 () Bool)

(declare-fun call!68332 () Bool)

(assert (=> b!1519928 (= e!847859 call!68332)))

(declare-fun b!1519929 () Bool)

(declare-fun e!847858 () Bool)

(assert (=> b!1519929 (= e!847858 call!68332)))

(declare-fun b!1519930 () Bool)

(declare-fun e!847857 () Bool)

(assert (=> b!1519930 (= e!847857 e!847859)))

(declare-fun c!139650 () Bool)

(assert (=> b!1519930 (= c!139650 (validKeyInArray!0 (select (arr!48815 a!2804) (bvadd j!70 #b00000000000000000000000000000001))))))

(declare-fun d!158741 () Bool)

(declare-fun res!1039721 () Bool)

(assert (=> d!158741 (=> res!1039721 e!847857)))

(assert (=> d!158741 (= res!1039721 (bvsge (bvadd j!70 #b00000000000000000000000000000001) (size!49366 a!2804)))))

(assert (=> d!158741 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512) e!847857)))

(declare-fun b!1519931 () Bool)

(assert (=> b!1519931 (= e!847859 e!847858)))

(declare-fun lt!658835 () (_ BitVec 64))

(assert (=> b!1519931 (= lt!658835 (select (arr!48815 a!2804) (bvadd j!70 #b00000000000000000000000000000001)))))

(declare-fun lt!658837 () Unit!50838)

(assert (=> b!1519931 (= lt!658837 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658835 (bvadd j!70 #b00000000000000000000000000000001)))))

(assert (=> b!1519931 (arrayContainsKey!0 a!2804 lt!658835 #b00000000000000000000000000000000)))

(declare-fun lt!658836 () Unit!50838)

(assert (=> b!1519931 (= lt!658836 lt!658837)))

(declare-fun res!1039720 () Bool)

(assert (=> b!1519931 (= res!1039720 (= (seekEntryOrOpen!0 (select (arr!48815 a!2804) (bvadd j!70 #b00000000000000000000000000000001)) a!2804 mask!2512) (Found!13007 (bvadd j!70 #b00000000000000000000000000000001))))))

(assert (=> b!1519931 (=> (not res!1039720) (not e!847858))))

(declare-fun bm!68329 () Bool)

(assert (=> bm!68329 (= call!68332 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158741 (not res!1039721)) b!1519930))

(assert (= (and b!1519930 c!139650) b!1519931))

(assert (= (and b!1519930 (not c!139650)) b!1519928))

(assert (= (and b!1519931 res!1039720) b!1519929))

(assert (= (or b!1519929 b!1519928) bm!68329))

(declare-fun m!1403325 () Bool)

(assert (=> b!1519930 m!1403325))

(assert (=> b!1519930 m!1403325))

(declare-fun m!1403327 () Bool)

(assert (=> b!1519930 m!1403327))

(assert (=> b!1519931 m!1403325))

(declare-fun m!1403329 () Bool)

(assert (=> b!1519931 m!1403329))

(declare-fun m!1403331 () Bool)

(assert (=> b!1519931 m!1403331))

(assert (=> b!1519931 m!1403325))

(declare-fun m!1403333 () Bool)

(assert (=> b!1519931 m!1403333))

(declare-fun m!1403335 () Bool)

(assert (=> bm!68329 m!1403335))

(assert (=> bm!68318 d!158741))

(declare-fun d!158743 () Bool)

(declare-fun lt!658840 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!790 (List!35478) (InoxSet (_ BitVec 64)))

(assert (=> d!158743 (= lt!658840 (select (content!790 Nil!35475) (select (arr!48815 a!2804) #b00000000000000000000000000000000)))))

(declare-fun e!847865 () Bool)

(assert (=> d!158743 (= lt!658840 e!847865)))

(declare-fun res!1039727 () Bool)

(assert (=> d!158743 (=> (not res!1039727) (not e!847865))))

(assert (=> d!158743 (= res!1039727 ((_ is Cons!35474) Nil!35475))))

(assert (=> d!158743 (= (contains!9986 Nil!35475 (select (arr!48815 a!2804) #b00000000000000000000000000000000)) lt!658840)))

(declare-fun b!1519936 () Bool)

(declare-fun e!847864 () Bool)

(assert (=> b!1519936 (= e!847865 e!847864)))

(declare-fun res!1039726 () Bool)

(assert (=> b!1519936 (=> res!1039726 e!847864)))

(assert (=> b!1519936 (= res!1039726 (= (h!36887 Nil!35475) (select (arr!48815 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1519937 () Bool)

(assert (=> b!1519937 (= e!847864 (contains!9986 (t!50179 Nil!35475) (select (arr!48815 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158743 res!1039727) b!1519936))

(assert (= (and b!1519936 (not res!1039726)) b!1519937))

(declare-fun m!1403337 () Bool)

(assert (=> d!158743 m!1403337))

(assert (=> d!158743 m!1403157))

(declare-fun m!1403339 () Bool)

(assert (=> d!158743 m!1403339))

(assert (=> b!1519937 m!1403157))

(declare-fun m!1403341 () Bool)

(assert (=> b!1519937 m!1403341))

(assert (=> b!1519657 d!158743))

(assert (=> d!158685 d!158705))

(declare-fun b!1519938 () Bool)

(declare-fun e!847869 () SeekEntryResult!13007)

(declare-fun e!847867 () SeekEntryResult!13007)

(assert (=> b!1519938 (= e!847869 e!847867)))

(declare-fun c!139651 () Bool)

(declare-fun lt!658841 () (_ BitVec 64))

(assert (=> b!1519938 (= c!139651 (or (= lt!658841 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!658841 lt!658841) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519939 () Bool)

(declare-fun lt!658842 () SeekEntryResult!13007)

(assert (=> b!1519939 (and (bvsge (index!54424 lt!658842) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658842) (size!49366 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)))))))

(declare-fun res!1039730 () Bool)

(assert (=> b!1519939 (= res!1039730 (= (select (arr!48815 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804))) (index!54424 lt!658842)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847870 () Bool)

(assert (=> b!1519939 (=> res!1039730 e!847870)))

(declare-fun b!1519940 () Bool)

(assert (=> b!1519940 (= e!847867 (Intermediate!13007 false (nextIndex!0 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun d!158745 () Bool)

(declare-fun e!847866 () Bool)

(assert (=> d!158745 e!847866))

(declare-fun c!139652 () Bool)

(assert (=> d!158745 (= c!139652 (and ((_ is Intermediate!13007) lt!658842) (undefined!13819 lt!658842)))))

(assert (=> d!158745 (= lt!658842 e!847869)))

(declare-fun c!139653 () Bool)

(assert (=> d!158745 (= c!139653 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!158745 (= lt!658841 (select (arr!48815 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804))) (nextIndex!0 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512)))))

(assert (=> d!158745 (validMask!0 mask!2512)))

(assert (=> d!158745 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)) mask!2512) lt!658842)))

(declare-fun b!1519941 () Bool)

(assert (=> b!1519941 (= e!847867 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2512) (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)) mask!2512))))

(declare-fun b!1519942 () Bool)

(assert (=> b!1519942 (and (bvsge (index!54424 lt!658842) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658842) (size!49366 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)))))))

(declare-fun res!1039728 () Bool)

(assert (=> b!1519942 (= res!1039728 (= (select (arr!48815 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804))) (index!54424 lt!658842)) (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1519942 (=> res!1039728 e!847870)))

(declare-fun e!847868 () Bool)

(assert (=> b!1519942 (= e!847868 e!847870)))

(declare-fun b!1519943 () Bool)

(assert (=> b!1519943 (= e!847869 (Intermediate!13007 true (nextIndex!0 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1519944 () Bool)

(assert (=> b!1519944 (= e!847866 e!847868)))

(declare-fun res!1039729 () Bool)

(assert (=> b!1519944 (= res!1039729 (and ((_ is Intermediate!13007) lt!658842) (not (undefined!13819 lt!658842)) (bvslt (x!136098 lt!658842) #b01111111111111111111111111111110) (bvsge (x!136098 lt!658842) #b00000000000000000000000000000000) (bvsge (x!136098 lt!658842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1519944 (=> (not res!1039729) (not e!847868))))

(declare-fun b!1519945 () Bool)

(assert (=> b!1519945 (and (bvsge (index!54424 lt!658842) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658842) (size!49366 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804)))))))

(assert (=> b!1519945 (= e!847870 (= (select (arr!48815 (array!101166 (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49366 a!2804))) (index!54424 lt!658842)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1519946 () Bool)

(assert (=> b!1519946 (= e!847866 (bvsge (x!136098 lt!658842) #b01111111111111111111111111111110))))

(assert (= (and d!158745 c!139653) b!1519943))

(assert (= (and d!158745 (not c!139653)) b!1519938))

(assert (= (and b!1519938 c!139651) b!1519940))

(assert (= (and b!1519938 (not c!139651)) b!1519941))

(assert (= (and d!158745 c!139652) b!1519946))

(assert (= (and d!158745 (not c!139652)) b!1519944))

(assert (= (and b!1519944 res!1039729) b!1519942))

(assert (= (and b!1519942 (not res!1039728)) b!1519939))

(assert (= (and b!1519939 (not res!1039730)) b!1519945))

(declare-fun m!1403343 () Bool)

(assert (=> b!1519942 m!1403343))

(assert (=> b!1519945 m!1403343))

(assert (=> d!158745 m!1403183))

(declare-fun m!1403345 () Bool)

(assert (=> d!158745 m!1403345))

(assert (=> d!158745 m!1403091))

(assert (=> b!1519941 m!1403183))

(declare-fun m!1403347 () Bool)

(assert (=> b!1519941 m!1403347))

(assert (=> b!1519941 m!1403347))

(assert (=> b!1519941 m!1403099))

(declare-fun m!1403349 () Bool)

(assert (=> b!1519941 m!1403349))

(assert (=> b!1519939 m!1403343))

(assert (=> b!1519745 d!158745))

(declare-fun d!158747 () Bool)

(declare-fun lt!658845 () (_ BitVec 32))

(assert (=> d!158747 (and (bvsge lt!658845 #b00000000000000000000000000000000) (bvslt lt!658845 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!158747 (= lt!658845 (choose!52 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512))))

(assert (=> d!158747 (validMask!0 mask!2512)))

(assert (=> d!158747 (= (nextIndex!0 (toIndex!0 (select (store (arr!48815 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) lt!658845)))

(declare-fun bs!43613 () Bool)

(assert (= bs!43613 d!158747))

(assert (=> bs!43613 m!1403105))

(declare-fun m!1403351 () Bool)

(assert (=> bs!43613 m!1403351))

(assert (=> bs!43613 m!1403091))

(assert (=> b!1519745 d!158747))

(declare-fun d!158749 () Bool)

(assert (=> d!158749 (arrayContainsKey!0 a!2804 lt!658808 #b00000000000000000000000000000000)))

(declare-fun lt!658848 () Unit!50838)

(declare-fun choose!13 (array!101165 (_ BitVec 64) (_ BitVec 32)) Unit!50838)

(assert (=> d!158749 (= lt!658848 (choose!13 a!2804 lt!658808 j!70))))

(assert (=> d!158749 (bvsge j!70 #b00000000000000000000000000000000)))

(assert (=> d!158749 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658808 j!70) lt!658848)))

(declare-fun bs!43614 () Bool)

(assert (= bs!43614 d!158749))

(assert (=> bs!43614 m!1403271))

(declare-fun m!1403353 () Bool)

(assert (=> bs!43614 m!1403353))

(assert (=> b!1519863 d!158749))

(declare-fun d!158751 () Bool)

(declare-fun res!1039735 () Bool)

(declare-fun e!847875 () Bool)

(assert (=> d!158751 (=> res!1039735 e!847875)))

(assert (=> d!158751 (= res!1039735 (= (select (arr!48815 a!2804) #b00000000000000000000000000000000) lt!658808))))

(assert (=> d!158751 (= (arrayContainsKey!0 a!2804 lt!658808 #b00000000000000000000000000000000) e!847875)))

(declare-fun b!1519951 () Bool)

(declare-fun e!847876 () Bool)

(assert (=> b!1519951 (= e!847875 e!847876)))

(declare-fun res!1039736 () Bool)

(assert (=> b!1519951 (=> (not res!1039736) (not e!847876))))

(assert (=> b!1519951 (= res!1039736 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49366 a!2804)))))

(declare-fun b!1519952 () Bool)

(assert (=> b!1519952 (= e!847876 (arrayContainsKey!0 a!2804 lt!658808 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!158751 (not res!1039735)) b!1519951))

(assert (= (and b!1519951 res!1039736) b!1519952))

(assert (=> d!158751 m!1403157))

(declare-fun m!1403355 () Bool)

(assert (=> b!1519952 m!1403355))

(assert (=> b!1519863 d!158751))

(declare-fun b!1519965 () Bool)

(declare-fun c!139662 () Bool)

(declare-fun lt!658857 () (_ BitVec 64))

(assert (=> b!1519965 (= c!139662 (= lt!658857 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847883 () SeekEntryResult!13007)

(declare-fun e!847885 () SeekEntryResult!13007)

(assert (=> b!1519965 (= e!847883 e!847885)))

(declare-fun d!158753 () Bool)

(declare-fun lt!658855 () SeekEntryResult!13007)

(assert (=> d!158753 (and (or ((_ is Undefined!13007) lt!658855) (not ((_ is Found!13007) lt!658855)) (and (bvsge (index!54423 lt!658855) #b00000000000000000000000000000000) (bvslt (index!54423 lt!658855) (size!49366 a!2804)))) (or ((_ is Undefined!13007) lt!658855) ((_ is Found!13007) lt!658855) (not ((_ is MissingZero!13007) lt!658855)) (and (bvsge (index!54422 lt!658855) #b00000000000000000000000000000000) (bvslt (index!54422 lt!658855) (size!49366 a!2804)))) (or ((_ is Undefined!13007) lt!658855) ((_ is Found!13007) lt!658855) ((_ is MissingZero!13007) lt!658855) (not ((_ is MissingVacant!13007) lt!658855)) (and (bvsge (index!54425 lt!658855) #b00000000000000000000000000000000) (bvslt (index!54425 lt!658855) (size!49366 a!2804)))) (or ((_ is Undefined!13007) lt!658855) (ite ((_ is Found!13007) lt!658855) (= (select (arr!48815 a!2804) (index!54423 lt!658855)) (select (arr!48815 a!2804) j!70)) (ite ((_ is MissingZero!13007) lt!658855) (= (select (arr!48815 a!2804) (index!54422 lt!658855)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13007) lt!658855) (= (select (arr!48815 a!2804) (index!54425 lt!658855)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!847884 () SeekEntryResult!13007)

(assert (=> d!158753 (= lt!658855 e!847884)))

(declare-fun c!139660 () Bool)

(declare-fun lt!658856 () SeekEntryResult!13007)

(assert (=> d!158753 (= c!139660 (and ((_ is Intermediate!13007) lt!658856) (undefined!13819 lt!658856)))))

(assert (=> d!158753 (= lt!658856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158753 (validMask!0 mask!2512)))

(assert (=> d!158753 (= (seekEntryOrOpen!0 (select (arr!48815 a!2804) j!70) a!2804 mask!2512) lt!658855)))

(declare-fun b!1519966 () Bool)

(assert (=> b!1519966 (= e!847885 (MissingZero!13007 (index!54424 lt!658856)))))

(declare-fun b!1519967 () Bool)

(assert (=> b!1519967 (= e!847885 (seekKeyOrZeroReturnVacant!0 (x!136098 lt!658856) (index!54424 lt!658856) (index!54424 lt!658856) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519968 () Bool)

(assert (=> b!1519968 (= e!847883 (Found!13007 (index!54424 lt!658856)))))

(declare-fun b!1519969 () Bool)

(assert (=> b!1519969 (= e!847884 e!847883)))

(assert (=> b!1519969 (= lt!658857 (select (arr!48815 a!2804) (index!54424 lt!658856)))))

(declare-fun c!139661 () Bool)

(assert (=> b!1519969 (= c!139661 (= lt!658857 (select (arr!48815 a!2804) j!70)))))

(declare-fun b!1519970 () Bool)

(assert (=> b!1519970 (= e!847884 Undefined!13007)))

(assert (= (and d!158753 c!139660) b!1519970))

(assert (= (and d!158753 (not c!139660)) b!1519969))

(assert (= (and b!1519969 c!139661) b!1519968))

(assert (= (and b!1519969 (not c!139661)) b!1519965))

(assert (= (and b!1519965 c!139662) b!1519966))

(assert (= (and b!1519965 (not c!139662)) b!1519967))

(assert (=> d!158753 m!1403085))

(assert (=> d!158753 m!1403109))

(assert (=> d!158753 m!1403091))

(declare-fun m!1403357 () Bool)

(assert (=> d!158753 m!1403357))

(declare-fun m!1403359 () Bool)

(assert (=> d!158753 m!1403359))

(assert (=> d!158753 m!1403109))

(assert (=> d!158753 m!1403085))

(assert (=> d!158753 m!1403111))

(declare-fun m!1403361 () Bool)

(assert (=> d!158753 m!1403361))

(assert (=> b!1519967 m!1403085))

(declare-fun m!1403363 () Bool)

(assert (=> b!1519967 m!1403363))

(declare-fun m!1403365 () Bool)

(assert (=> b!1519969 m!1403365))

(assert (=> b!1519863 d!158753))

(declare-fun d!158755 () Bool)

(assert (=> d!158755 (= (validKeyInArray!0 (select (arr!48815 a!2804) #b00000000000000000000000000000000)) (and (not (= (select (arr!48815 a!2804) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48815 a!2804) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1519658 d!158755))

(assert (=> d!158703 d!158705))

(assert (=> b!1519862 d!158699))

(declare-fun b!1519971 () Bool)

(declare-fun e!847886 () Bool)

(declare-fun call!68333 () Bool)

(assert (=> b!1519971 (= e!847886 call!68333)))

(declare-fun b!1519972 () Bool)

(declare-fun e!847887 () Bool)

(assert (=> b!1519972 (= e!847887 (contains!9986 (ite c!139559 (Cons!35474 (select (arr!48815 a!2804) #b00000000000000000000000000000000) Nil!35475) Nil!35475) (select (arr!48815 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1519973 () Bool)

(declare-fun e!847888 () Bool)

(assert (=> b!1519973 (= e!847888 e!847886)))

(declare-fun c!139663 () Bool)

(assert (=> b!1519973 (= c!139663 (validKeyInArray!0 (select (arr!48815 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!68330 () Bool)

(assert (=> bm!68330 (= call!68333 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!139663 (Cons!35474 (select (arr!48815 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!139559 (Cons!35474 (select (arr!48815 a!2804) #b00000000000000000000000000000000) Nil!35475) Nil!35475)) (ite c!139559 (Cons!35474 (select (arr!48815 a!2804) #b00000000000000000000000000000000) Nil!35475) Nil!35475))))))

(declare-fun b!1519974 () Bool)

(declare-fun e!847889 () Bool)

(assert (=> b!1519974 (= e!847889 e!847888)))

(declare-fun res!1039739 () Bool)

(assert (=> b!1519974 (=> (not res!1039739) (not e!847888))))

(assert (=> b!1519974 (= res!1039739 (not e!847887))))

(declare-fun res!1039737 () Bool)

(assert (=> b!1519974 (=> (not res!1039737) (not e!847887))))

(assert (=> b!1519974 (= res!1039737 (validKeyInArray!0 (select (arr!48815 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!158757 () Bool)

(declare-fun res!1039738 () Bool)

(assert (=> d!158757 (=> res!1039738 e!847889)))

(assert (=> d!158757 (= res!1039738 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49366 a!2804)))))

(assert (=> d!158757 (= (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139559 (Cons!35474 (select (arr!48815 a!2804) #b00000000000000000000000000000000) Nil!35475) Nil!35475)) e!847889)))

(declare-fun b!1519975 () Bool)

(assert (=> b!1519975 (= e!847886 call!68333)))

(assert (= (and d!158757 (not res!1039738)) b!1519974))

(assert (= (and b!1519974 res!1039737) b!1519972))

(assert (= (and b!1519974 res!1039739) b!1519973))

(assert (= (and b!1519973 c!139663) b!1519975))

(assert (= (and b!1519973 (not c!139663)) b!1519971))

(assert (= (or b!1519975 b!1519971) bm!68330))

(declare-fun m!1403367 () Bool)

(assert (=> b!1519972 m!1403367))

(assert (=> b!1519972 m!1403367))

(declare-fun m!1403369 () Bool)

(assert (=> b!1519972 m!1403369))

(assert (=> b!1519973 m!1403367))

(assert (=> b!1519973 m!1403367))

(declare-fun m!1403371 () Bool)

(assert (=> b!1519973 m!1403371))

(assert (=> bm!68330 m!1403367))

(declare-fun m!1403373 () Bool)

(assert (=> bm!68330 m!1403373))

(assert (=> b!1519974 m!1403367))

(assert (=> b!1519974 m!1403367))

(assert (=> b!1519974 m!1403371))

(assert (=> bm!68310 d!158757))

(declare-fun b!1519976 () Bool)

(declare-fun e!847893 () SeekEntryResult!13007)

(declare-fun e!847891 () SeekEntryResult!13007)

(assert (=> b!1519976 (= e!847893 e!847891)))

(declare-fun c!139664 () Bool)

(declare-fun lt!658858 () (_ BitVec 64))

(assert (=> b!1519976 (= c!139664 (or (= lt!658858 (select (arr!48815 a!2804) j!70)) (= (bvadd lt!658858 lt!658858) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1519977 () Bool)

(declare-fun lt!658859 () SeekEntryResult!13007)

(assert (=> b!1519977 (and (bvsge (index!54424 lt!658859) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658859) (size!49366 a!2804)))))

(declare-fun res!1039742 () Bool)

(assert (=> b!1519977 (= res!1039742 (= (select (arr!48815 a!2804) (index!54424 lt!658859)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847894 () Bool)

(assert (=> b!1519977 (=> res!1039742 e!847894)))

(declare-fun b!1519978 () Bool)

(assert (=> b!1519978 (= e!847891 (Intermediate!13007 false (nextIndex!0 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun d!158759 () Bool)

(declare-fun e!847890 () Bool)

(assert (=> d!158759 e!847890))

(declare-fun c!139665 () Bool)

(assert (=> d!158759 (= c!139665 (and ((_ is Intermediate!13007) lt!658859) (undefined!13819 lt!658859)))))

(assert (=> d!158759 (= lt!658859 e!847893)))

(declare-fun c!139666 () Bool)

(assert (=> d!158759 (= c!139666 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!158759 (= lt!658858 (select (arr!48815 a!2804) (nextIndex!0 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512)))))

(assert (=> d!158759 (validMask!0 mask!2512)))

(assert (=> d!158759 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512) lt!658859)))

(declare-fun b!1519979 () Bool)

(assert (=> b!1519979 (= e!847891 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519980 () Bool)

(assert (=> b!1519980 (and (bvsge (index!54424 lt!658859) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658859) (size!49366 a!2804)))))

(declare-fun res!1039740 () Bool)

(assert (=> b!1519980 (= res!1039740 (= (select (arr!48815 a!2804) (index!54424 lt!658859)) (select (arr!48815 a!2804) j!70)))))

(assert (=> b!1519980 (=> res!1039740 e!847894)))

(declare-fun e!847892 () Bool)

(assert (=> b!1519980 (= e!847892 e!847894)))

(declare-fun b!1519981 () Bool)

(assert (=> b!1519981 (= e!847893 (Intermediate!13007 true (nextIndex!0 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1519982 () Bool)

(assert (=> b!1519982 (= e!847890 e!847892)))

(declare-fun res!1039741 () Bool)

(assert (=> b!1519982 (= res!1039741 (and ((_ is Intermediate!13007) lt!658859) (not (undefined!13819 lt!658859)) (bvslt (x!136098 lt!658859) #b01111111111111111111111111111110) (bvsge (x!136098 lt!658859) #b00000000000000000000000000000000) (bvsge (x!136098 lt!658859) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1519982 (=> (not res!1039741) (not e!847892))))

(declare-fun b!1519983 () Bool)

(assert (=> b!1519983 (and (bvsge (index!54424 lt!658859) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658859) (size!49366 a!2804)))))

(assert (=> b!1519983 (= e!847894 (= (select (arr!48815 a!2804) (index!54424 lt!658859)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1519984 () Bool)

(assert (=> b!1519984 (= e!847890 (bvsge (x!136098 lt!658859) #b01111111111111111111111111111110))))

(assert (= (and d!158759 c!139666) b!1519981))

(assert (= (and d!158759 (not c!139666)) b!1519976))

(assert (= (and b!1519976 c!139664) b!1519978))

(assert (= (and b!1519976 (not c!139664)) b!1519979))

(assert (= (and d!158759 c!139665) b!1519984))

(assert (= (and d!158759 (not c!139665)) b!1519982))

(assert (= (and b!1519982 res!1039741) b!1519980))

(assert (= (and b!1519980 (not res!1039740)) b!1519977))

(assert (= (and b!1519977 (not res!1039742)) b!1519983))

(declare-fun m!1403375 () Bool)

(assert (=> b!1519980 m!1403375))

(assert (=> b!1519983 m!1403375))

(assert (=> d!158759 m!1403207))

(declare-fun m!1403377 () Bool)

(assert (=> d!158759 m!1403377))

(assert (=> d!158759 m!1403091))

(assert (=> b!1519979 m!1403207))

(declare-fun m!1403379 () Bool)

(assert (=> b!1519979 m!1403379))

(assert (=> b!1519979 m!1403379))

(assert (=> b!1519979 m!1403085))

(declare-fun m!1403381 () Bool)

(assert (=> b!1519979 m!1403381))

(assert (=> b!1519977 m!1403375))

(assert (=> b!1519778 d!158759))

(declare-fun d!158761 () Bool)

(declare-fun lt!658860 () (_ BitVec 32))

(assert (=> d!158761 (and (bvsge lt!658860 #b00000000000000000000000000000000) (bvslt lt!658860 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(assert (=> d!158761 (= lt!658860 (choose!52 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512))))

(assert (=> d!158761 (validMask!0 mask!2512)))

(assert (=> d!158761 (= (nextIndex!0 (toIndex!0 (select (arr!48815 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) lt!658860)))

(declare-fun bs!43615 () Bool)

(assert (= bs!43615 d!158761))

(assert (=> bs!43615 m!1403109))

(declare-fun m!1403383 () Bool)

(assert (=> bs!43615 m!1403383))

(assert (=> bs!43615 m!1403091))

(assert (=> b!1519778 d!158761))

(assert (=> d!158719 d!158715))

(declare-fun d!158763 () Bool)

(assert (=> d!158763 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(assert (=> d!158763 true))

(declare-fun _$72!161 () Unit!50838)

(assert (=> d!158763 (= (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) _$72!161)))

(declare-fun bs!43616 () Bool)

(assert (= bs!43616 d!158763))

(assert (=> bs!43616 m!1403101))

(assert (=> d!158719 d!158763))

(assert (=> d!158719 d!158705))

(assert (=> b!1519659 d!158755))

(assert (=> d!158659 d!158685))

(assert (=> d!158659 d!158687))

(assert (=> d!158659 d!158705))

(assert (=> b!1519804 d!158755))

(declare-fun d!158765 () Bool)

(assert (=> d!158765 (arrayContainsKey!0 a!2804 lt!658775 #b00000000000000000000000000000000)))

(declare-fun lt!658861 () Unit!50838)

(assert (=> d!158765 (= lt!658861 (choose!13 a!2804 lt!658775 #b00000000000000000000000000000000))))

(assert (=> d!158765 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!158765 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658775 #b00000000000000000000000000000000) lt!658861)))

(declare-fun bs!43617 () Bool)

(assert (= bs!43617 d!158765))

(assert (=> bs!43617 m!1403235))

(declare-fun m!1403385 () Bool)

(assert (=> bs!43617 m!1403385))

(assert (=> b!1519805 d!158765))

(declare-fun d!158767 () Bool)

(declare-fun res!1039743 () Bool)

(declare-fun e!847895 () Bool)

(assert (=> d!158767 (=> res!1039743 e!847895)))

(assert (=> d!158767 (= res!1039743 (= (select (arr!48815 a!2804) #b00000000000000000000000000000000) lt!658775))))

(assert (=> d!158767 (= (arrayContainsKey!0 a!2804 lt!658775 #b00000000000000000000000000000000) e!847895)))

(declare-fun b!1519985 () Bool)

(declare-fun e!847896 () Bool)

(assert (=> b!1519985 (= e!847895 e!847896)))

(declare-fun res!1039744 () Bool)

(assert (=> b!1519985 (=> (not res!1039744) (not e!847896))))

(assert (=> b!1519985 (= res!1039744 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49366 a!2804)))))

(declare-fun b!1519986 () Bool)

(assert (=> b!1519986 (= e!847896 (arrayContainsKey!0 a!2804 lt!658775 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!158767 (not res!1039743)) b!1519985))

(assert (= (and b!1519985 res!1039744) b!1519986))

(assert (=> d!158767 m!1403157))

(declare-fun m!1403387 () Bool)

(assert (=> b!1519986 m!1403387))

(assert (=> b!1519805 d!158767))

(declare-fun b!1519987 () Bool)

(declare-fun c!139669 () Bool)

(declare-fun lt!658864 () (_ BitVec 64))

(assert (=> b!1519987 (= c!139669 (= lt!658864 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847897 () SeekEntryResult!13007)

(declare-fun e!847899 () SeekEntryResult!13007)

(assert (=> b!1519987 (= e!847897 e!847899)))

(declare-fun d!158769 () Bool)

(declare-fun lt!658862 () SeekEntryResult!13007)

(assert (=> d!158769 (and (or ((_ is Undefined!13007) lt!658862) (not ((_ is Found!13007) lt!658862)) (and (bvsge (index!54423 lt!658862) #b00000000000000000000000000000000) (bvslt (index!54423 lt!658862) (size!49366 a!2804)))) (or ((_ is Undefined!13007) lt!658862) ((_ is Found!13007) lt!658862) (not ((_ is MissingZero!13007) lt!658862)) (and (bvsge (index!54422 lt!658862) #b00000000000000000000000000000000) (bvslt (index!54422 lt!658862) (size!49366 a!2804)))) (or ((_ is Undefined!13007) lt!658862) ((_ is Found!13007) lt!658862) ((_ is MissingZero!13007) lt!658862) (not ((_ is MissingVacant!13007) lt!658862)) (and (bvsge (index!54425 lt!658862) #b00000000000000000000000000000000) (bvslt (index!54425 lt!658862) (size!49366 a!2804)))) (or ((_ is Undefined!13007) lt!658862) (ite ((_ is Found!13007) lt!658862) (= (select (arr!48815 a!2804) (index!54423 lt!658862)) (select (arr!48815 a!2804) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!13007) lt!658862) (= (select (arr!48815 a!2804) (index!54422 lt!658862)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13007) lt!658862) (= (select (arr!48815 a!2804) (index!54425 lt!658862)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!847898 () SeekEntryResult!13007)

(assert (=> d!158769 (= lt!658862 e!847898)))

(declare-fun c!139667 () Bool)

(declare-fun lt!658863 () SeekEntryResult!13007)

(assert (=> d!158769 (= c!139667 (and ((_ is Intermediate!13007) lt!658863) (undefined!13819 lt!658863)))))

(assert (=> d!158769 (= lt!658863 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48815 a!2804) #b00000000000000000000000000000000) mask!2512) (select (arr!48815 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512))))

(assert (=> d!158769 (validMask!0 mask!2512)))

(assert (=> d!158769 (= (seekEntryOrOpen!0 (select (arr!48815 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) lt!658862)))

(declare-fun b!1519988 () Bool)

(assert (=> b!1519988 (= e!847899 (MissingZero!13007 (index!54424 lt!658863)))))

(declare-fun b!1519989 () Bool)

(assert (=> b!1519989 (= e!847899 (seekKeyOrZeroReturnVacant!0 (x!136098 lt!658863) (index!54424 lt!658863) (index!54424 lt!658863) (select (arr!48815 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512))))

(declare-fun b!1519990 () Bool)

(assert (=> b!1519990 (= e!847897 (Found!13007 (index!54424 lt!658863)))))

(declare-fun b!1519991 () Bool)

(assert (=> b!1519991 (= e!847898 e!847897)))

(assert (=> b!1519991 (= lt!658864 (select (arr!48815 a!2804) (index!54424 lt!658863)))))

(declare-fun c!139668 () Bool)

(assert (=> b!1519991 (= c!139668 (= lt!658864 (select (arr!48815 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1519992 () Bool)

(assert (=> b!1519992 (= e!847898 Undefined!13007)))

(assert (= (and d!158769 c!139667) b!1519992))

(assert (= (and d!158769 (not c!139667)) b!1519991))

(assert (= (and b!1519991 c!139668) b!1519990))

(assert (= (and b!1519991 (not c!139668)) b!1519987))

(assert (= (and b!1519987 c!139669) b!1519988))

(assert (= (and b!1519987 (not c!139669)) b!1519989))

(assert (=> d!158769 m!1403157))

(declare-fun m!1403389 () Bool)

(assert (=> d!158769 m!1403389))

(assert (=> d!158769 m!1403091))

(declare-fun m!1403391 () Bool)

(assert (=> d!158769 m!1403391))

(declare-fun m!1403393 () Bool)

(assert (=> d!158769 m!1403393))

(assert (=> d!158769 m!1403389))

(assert (=> d!158769 m!1403157))

(declare-fun m!1403395 () Bool)

(assert (=> d!158769 m!1403395))

(declare-fun m!1403397 () Bool)

(assert (=> d!158769 m!1403397))

(assert (=> b!1519989 m!1403157))

(declare-fun m!1403399 () Bool)

(assert (=> b!1519989 m!1403399))

(declare-fun m!1403401 () Bool)

(assert (=> b!1519991 m!1403401))

(assert (=> b!1519805 d!158769))

(assert (=> d!158665 d!158705))

(declare-fun b!1520005 () Bool)

(declare-fun e!847908 () SeekEntryResult!13007)

(assert (=> b!1520005 (= e!847908 (Found!13007 (index!54424 lt!658709)))))

(declare-fun b!1520006 () Bool)

(declare-fun c!139678 () Bool)

(declare-fun lt!658869 () (_ BitVec 64))

(assert (=> b!1520006 (= c!139678 (= lt!658869 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847906 () SeekEntryResult!13007)

(assert (=> b!1520006 (= e!847908 e!847906)))

(declare-fun lt!658870 () SeekEntryResult!13007)

(declare-fun d!158771 () Bool)

(assert (=> d!158771 (and (or ((_ is Undefined!13007) lt!658870) (not ((_ is Found!13007) lt!658870)) (and (bvsge (index!54423 lt!658870) #b00000000000000000000000000000000) (bvslt (index!54423 lt!658870) (size!49366 a!2804)))) (or ((_ is Undefined!13007) lt!658870) ((_ is Found!13007) lt!658870) (not ((_ is MissingVacant!13007) lt!658870)) (not (= (index!54425 lt!658870) (index!54424 lt!658709))) (and (bvsge (index!54425 lt!658870) #b00000000000000000000000000000000) (bvslt (index!54425 lt!658870) (size!49366 a!2804)))) (or ((_ is Undefined!13007) lt!658870) (ite ((_ is Found!13007) lt!658870) (= (select (arr!48815 a!2804) (index!54423 lt!658870)) (select (arr!48815 a!2804) j!70)) (and ((_ is MissingVacant!13007) lt!658870) (= (index!54425 lt!658870) (index!54424 lt!658709)) (= (select (arr!48815 a!2804) (index!54425 lt!658870)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!847907 () SeekEntryResult!13007)

(assert (=> d!158771 (= lt!658870 e!847907)))

(declare-fun c!139677 () Bool)

(assert (=> d!158771 (= c!139677 (bvsge (x!136098 lt!658709) #b01111111111111111111111111111110))))

(assert (=> d!158771 (= lt!658869 (select (arr!48815 a!2804) (index!54424 lt!658709)))))

(assert (=> d!158771 (validMask!0 mask!2512)))

(assert (=> d!158771 (= (seekKeyOrZeroReturnVacant!0 (x!136098 lt!658709) (index!54424 lt!658709) (index!54424 lt!658709) (select (arr!48815 a!2804) j!70) a!2804 mask!2512) lt!658870)))

(declare-fun b!1520007 () Bool)

(assert (=> b!1520007 (= e!847906 (MissingVacant!13007 (index!54424 lt!658709)))))

(declare-fun b!1520008 () Bool)

(assert (=> b!1520008 (= e!847906 (seekKeyOrZeroReturnVacant!0 (bvadd (x!136098 lt!658709) #b00000000000000000000000000000001) (nextIndex!0 (index!54424 lt!658709) (x!136098 lt!658709) mask!2512) (index!54424 lt!658709) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520009 () Bool)

(assert (=> b!1520009 (= e!847907 e!847908)))

(declare-fun c!139676 () Bool)

(assert (=> b!1520009 (= c!139676 (= lt!658869 (select (arr!48815 a!2804) j!70)))))

(declare-fun b!1520010 () Bool)

(assert (=> b!1520010 (= e!847907 Undefined!13007)))

(assert (= (and d!158771 c!139677) b!1520010))

(assert (= (and d!158771 (not c!139677)) b!1520009))

(assert (= (and b!1520009 c!139676) b!1520005))

(assert (= (and b!1520009 (not c!139676)) b!1520006))

(assert (= (and b!1520006 c!139678) b!1520007))

(assert (= (and b!1520006 (not c!139678)) b!1520008))

(declare-fun m!1403403 () Bool)

(assert (=> d!158771 m!1403403))

(declare-fun m!1403405 () Bool)

(assert (=> d!158771 m!1403405))

(assert (=> d!158771 m!1403169))

(assert (=> d!158771 m!1403091))

(declare-fun m!1403407 () Bool)

(assert (=> b!1520008 m!1403407))

(assert (=> b!1520008 m!1403407))

(assert (=> b!1520008 m!1403085))

(declare-fun m!1403409 () Bool)

(assert (=> b!1520008 m!1403409))

(assert (=> b!1519676 d!158771))

(declare-fun b!1520011 () Bool)

(declare-fun e!847911 () Bool)

(declare-fun call!68334 () Bool)

(assert (=> b!1520011 (= e!847911 call!68334)))

(declare-fun b!1520012 () Bool)

(declare-fun e!847910 () Bool)

(assert (=> b!1520012 (= e!847910 call!68334)))

(declare-fun b!1520013 () Bool)

(declare-fun e!847909 () Bool)

(assert (=> b!1520013 (= e!847909 e!847911)))

(declare-fun c!139679 () Bool)

(assert (=> b!1520013 (= c!139679 (validKeyInArray!0 (select (arr!48815 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!158773 () Bool)

(declare-fun res!1039746 () Bool)

(assert (=> d!158773 (=> res!1039746 e!847909)))

(assert (=> d!158773 (= res!1039746 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49366 a!2804)))))

(assert (=> d!158773 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512) e!847909)))

(declare-fun b!1520014 () Bool)

(assert (=> b!1520014 (= e!847911 e!847910)))

(declare-fun lt!658871 () (_ BitVec 64))

(assert (=> b!1520014 (= lt!658871 (select (arr!48815 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!658873 () Unit!50838)

(assert (=> b!1520014 (= lt!658873 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658871 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1520014 (arrayContainsKey!0 a!2804 lt!658871 #b00000000000000000000000000000000)))

(declare-fun lt!658872 () Unit!50838)

(assert (=> b!1520014 (= lt!658872 lt!658873)))

(declare-fun res!1039745 () Bool)

(assert (=> b!1520014 (= res!1039745 (= (seekEntryOrOpen!0 (select (arr!48815 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2804 mask!2512) (Found!13007 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1520014 (=> (not res!1039745) (not e!847910))))

(declare-fun bm!68331 () Bool)

(assert (=> bm!68331 (= call!68334 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158773 (not res!1039746)) b!1520013))

(assert (= (and b!1520013 c!139679) b!1520014))

(assert (= (and b!1520013 (not c!139679)) b!1520011))

(assert (= (and b!1520014 res!1039745) b!1520012))

(assert (= (or b!1520012 b!1520011) bm!68331))

(assert (=> b!1520013 m!1403367))

(assert (=> b!1520013 m!1403367))

(assert (=> b!1520013 m!1403371))

(assert (=> b!1520014 m!1403367))

(declare-fun m!1403411 () Bool)

(assert (=> b!1520014 m!1403411))

(declare-fun m!1403413 () Bool)

(assert (=> b!1520014 m!1403413))

(assert (=> b!1520014 m!1403367))

(declare-fun m!1403415 () Bool)

(assert (=> b!1520014 m!1403415))

(declare-fun m!1403417 () Bool)

(assert (=> bm!68331 m!1403417))

(assert (=> bm!68317 d!158773))

(declare-fun b!1520015 () Bool)

(declare-fun e!847915 () SeekEntryResult!13007)

(declare-fun e!847913 () SeekEntryResult!13007)

(assert (=> b!1520015 (= e!847915 e!847913)))

(declare-fun lt!658874 () (_ BitVec 64))

(declare-fun c!139680 () Bool)

(assert (=> b!1520015 (= c!139680 (or (= lt!658874 (select (arr!48815 a!2804) j!70)) (= (bvadd lt!658874 lt!658874) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1520016 () Bool)

(declare-fun lt!658875 () SeekEntryResult!13007)

(assert (=> b!1520016 (and (bvsge (index!54424 lt!658875) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658875) (size!49366 a!2804)))))

(declare-fun res!1039749 () Bool)

(assert (=> b!1520016 (= res!1039749 (= (select (arr!48815 a!2804) (index!54424 lt!658875)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847916 () Bool)

(assert (=> b!1520016 (=> res!1039749 e!847916)))

(declare-fun b!1520017 () Bool)

(assert (=> b!1520017 (= e!847913 (Intermediate!13007 false (nextIndex!0 index!487 x!534 mask!2512) (bvadd x!534 #b00000000000000000000000000000001)))))

(declare-fun d!158775 () Bool)

(declare-fun e!847912 () Bool)

(assert (=> d!158775 e!847912))

(declare-fun c!139681 () Bool)

(assert (=> d!158775 (= c!139681 (and ((_ is Intermediate!13007) lt!658875) (undefined!13819 lt!658875)))))

(assert (=> d!158775 (= lt!658875 e!847915)))

(declare-fun c!139682 () Bool)

(assert (=> d!158775 (= c!139682 (bvsge (bvadd x!534 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!158775 (= lt!658874 (select (arr!48815 a!2804) (nextIndex!0 index!487 x!534 mask!2512)))))

(assert (=> d!158775 (validMask!0 mask!2512)))

(assert (=> d!158775 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512) lt!658875)))

(declare-fun b!1520018 () Bool)

(assert (=> b!1520018 (= e!847913 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!487 x!534 mask!2512) (bvadd x!534 #b00000000000000000000000000000001) mask!2512) (select (arr!48815 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520019 () Bool)

(assert (=> b!1520019 (and (bvsge (index!54424 lt!658875) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658875) (size!49366 a!2804)))))

(declare-fun res!1039747 () Bool)

(assert (=> b!1520019 (= res!1039747 (= (select (arr!48815 a!2804) (index!54424 lt!658875)) (select (arr!48815 a!2804) j!70)))))

(assert (=> b!1520019 (=> res!1039747 e!847916)))

(declare-fun e!847914 () Bool)

(assert (=> b!1520019 (= e!847914 e!847916)))

(declare-fun b!1520020 () Bool)

(assert (=> b!1520020 (= e!847915 (Intermediate!13007 true (nextIndex!0 index!487 x!534 mask!2512) (bvadd x!534 #b00000000000000000000000000000001)))))

(declare-fun b!1520021 () Bool)

(assert (=> b!1520021 (= e!847912 e!847914)))

(declare-fun res!1039748 () Bool)

(assert (=> b!1520021 (= res!1039748 (and ((_ is Intermediate!13007) lt!658875) (not (undefined!13819 lt!658875)) (bvslt (x!136098 lt!658875) #b01111111111111111111111111111110) (bvsge (x!136098 lt!658875) #b00000000000000000000000000000000) (bvsge (x!136098 lt!658875) (bvadd x!534 #b00000000000000000000000000000001))))))

(assert (=> b!1520021 (=> (not res!1039748) (not e!847914))))

(declare-fun b!1520022 () Bool)

(assert (=> b!1520022 (and (bvsge (index!54424 lt!658875) #b00000000000000000000000000000000) (bvslt (index!54424 lt!658875) (size!49366 a!2804)))))

(assert (=> b!1520022 (= e!847916 (= (select (arr!48815 a!2804) (index!54424 lt!658875)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1520023 () Bool)

(assert (=> b!1520023 (= e!847912 (bvsge (x!136098 lt!658875) #b01111111111111111111111111111110))))

(assert (= (and d!158775 c!139682) b!1520020))

(assert (= (and d!158775 (not c!139682)) b!1520015))

(assert (= (and b!1520015 c!139680) b!1520017))

(assert (= (and b!1520015 (not c!139680)) b!1520018))

(assert (= (and d!158775 c!139681) b!1520023))

(assert (= (and d!158775 (not c!139681)) b!1520021))

(assert (= (and b!1520021 res!1039748) b!1520019))

(assert (= (and b!1520019 (not res!1039747)) b!1520016))

(assert (= (and b!1520016 (not res!1039749)) b!1520022))

(declare-fun m!1403419 () Bool)

(assert (=> b!1520019 m!1403419))

(assert (=> b!1520022 m!1403419))

(assert (=> d!158775 m!1403245))

(declare-fun m!1403421 () Bool)

(assert (=> d!158775 m!1403421))

(assert (=> d!158775 m!1403091))

(assert (=> b!1520018 m!1403245))

(declare-fun m!1403423 () Bool)

(assert (=> b!1520018 m!1403423))

(assert (=> b!1520018 m!1403423))

(assert (=> b!1520018 m!1403085))

(declare-fun m!1403425 () Bool)

(assert (=> b!1520018 m!1403425))

(assert (=> b!1520016 m!1403419))

(assert (=> b!1519809 d!158775))

(declare-fun d!158777 () Bool)

(declare-fun lt!658876 () (_ BitVec 32))

(assert (=> d!158777 (and (bvsge lt!658876 #b00000000000000000000000000000000) (bvslt lt!658876 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(assert (=> d!158777 (= lt!658876 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!158777 (validMask!0 mask!2512)))

(assert (=> d!158777 (= (nextIndex!0 index!487 x!534 mask!2512) lt!658876)))

(declare-fun bs!43618 () Bool)

(assert (= bs!43618 d!158777))

(declare-fun m!1403427 () Bool)

(assert (=> bs!43618 m!1403427))

(assert (=> bs!43618 m!1403091))

(assert (=> b!1519809 d!158777))

(check-sat (not d!158759) (not d!158765) (not d!158753) (not b!1520018) (not b!1519941) (not d!158747) (not b!1520013) (not b!1519937) (not d!158775) (not b!1519989) (not d!158745) (not d!158749) (not b!1519967) (not b!1520008) (not bm!68331) (not b!1519973) (not d!158743) (not bm!68329) (not b!1519972) (not b!1519974) (not d!158777) (not b!1519979) (not b!1519986) (not d!158763) (not b!1519931) (not d!158761) (not d!158771) (not d!158769) (not bm!68330) (not b!1519930) (not b!1519952) (not b!1520014))
(check-sat)
