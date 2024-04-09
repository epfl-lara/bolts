; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52904 () Bool)

(assert start!52904)

(declare-fun b!576347 () Bool)

(declare-fun res!364731 () Bool)

(declare-fun e!331576 () Bool)

(assert (=> b!576347 (=> (not res!364731) (not e!331576))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35946 0))(
  ( (array!35947 (arr!17250 (Array (_ BitVec 32) (_ BitVec 64))) (size!17614 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35946)

(assert (=> b!576347 (= res!364731 (and (= (size!17614 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17614 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17614 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!364732 () Bool)

(assert (=> start!52904 (=> (not res!364732) (not e!331576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52904 (= res!364732 (validMask!0 mask!3119))))

(assert (=> start!52904 e!331576))

(assert (=> start!52904 true))

(declare-fun array_inv!13024 (array!35946) Bool)

(assert (=> start!52904 (array_inv!13024 a!3118)))

(declare-fun b!576348 () Bool)

(declare-fun res!364734 () Bool)

(declare-fun e!331578 () Bool)

(assert (=> b!576348 (=> (not res!364734) (not e!331578))))

(declare-datatypes ((List!11383 0))(
  ( (Nil!11380) (Cons!11379 (h!12421 (_ BitVec 64)) (t!17619 List!11383)) )
))
(declare-fun arrayNoDuplicates!0 (array!35946 (_ BitVec 32) List!11383) Bool)

(assert (=> b!576348 (= res!364734 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11380))))

(declare-fun b!576349 () Bool)

(assert (=> b!576349 (= e!331576 e!331578)))

(declare-fun res!364737 () Bool)

(assert (=> b!576349 (=> (not res!364737) (not e!331578))))

(declare-datatypes ((SeekEntryResult!5706 0))(
  ( (MissingZero!5706 (index!25051 (_ BitVec 32))) (Found!5706 (index!25052 (_ BitVec 32))) (Intermediate!5706 (undefined!6518 Bool) (index!25053 (_ BitVec 32)) (x!53972 (_ BitVec 32))) (Undefined!5706) (MissingVacant!5706 (index!25054 (_ BitVec 32))) )
))
(declare-fun lt!263664 () SeekEntryResult!5706)

(assert (=> b!576349 (= res!364737 (or (= lt!263664 (MissingZero!5706 i!1132)) (= lt!263664 (MissingVacant!5706 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35946 (_ BitVec 32)) SeekEntryResult!5706)

(assert (=> b!576349 (= lt!263664 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!576350 () Bool)

(declare-fun res!364730 () Bool)

(assert (=> b!576350 (=> (not res!364730) (not e!331576))))

(declare-fun arrayContainsKey!0 (array!35946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!576350 (= res!364730 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!576351 () Bool)

(declare-fun res!364738 () Bool)

(assert (=> b!576351 (=> (not res!364738) (not e!331576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!576351 (= res!364738 (validKeyInArray!0 k!1914))))

(declare-fun b!576352 () Bool)

(declare-fun res!364735 () Bool)

(assert (=> b!576352 (=> (not res!364735) (not e!331578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35946 (_ BitVec 32)) Bool)

(assert (=> b!576352 (= res!364735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!576353 () Bool)

(declare-fun res!364739 () Bool)

(assert (=> b!576353 (=> (not res!364739) (not e!331576))))

(assert (=> b!576353 (= res!364739 (validKeyInArray!0 (select (arr!17250 a!3118) j!142)))))

(declare-fun lt!263665 () SeekEntryResult!5706)

(declare-fun lt!263658 () (_ BitVec 64))

(declare-fun b!576354 () Bool)

(declare-fun lt!263663 () array!35946)

(declare-fun e!331575 () Bool)

(assert (=> b!576354 (= e!331575 (= lt!263665 (seekEntryOrOpen!0 lt!263658 lt!263663 mask!3119)))))

(declare-fun b!576355 () Bool)

(declare-fun e!331577 () Bool)

(assert (=> b!576355 (= e!331578 e!331577)))

(declare-fun res!364733 () Bool)

(assert (=> b!576355 (=> (not res!364733) (not e!331577))))

(declare-fun lt!263662 () (_ BitVec 32))

(declare-fun lt!263661 () SeekEntryResult!5706)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35946 (_ BitVec 32)) SeekEntryResult!5706)

(assert (=> b!576355 (= res!364733 (= lt!263661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263662 lt!263658 lt!263663 mask!3119)))))

(declare-fun lt!263660 () (_ BitVec 32))

(assert (=> b!576355 (= lt!263661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263660 (select (arr!17250 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576355 (= lt!263662 (toIndex!0 lt!263658 mask!3119))))

(assert (=> b!576355 (= lt!263658 (select (store (arr!17250 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!576355 (= lt!263660 (toIndex!0 (select (arr!17250 a!3118) j!142) mask!3119))))

(assert (=> b!576355 (= lt!263663 (array!35947 (store (arr!17250 a!3118) i!1132 k!1914) (size!17614 a!3118)))))

(declare-fun b!576356 () Bool)

(assert (=> b!576356 (= e!331577 (not e!331575))))

(declare-fun res!364736 () Bool)

(assert (=> b!576356 (=> res!364736 e!331575)))

(declare-fun lt!263666 () Bool)

(assert (=> b!576356 (= res!364736 (or (and (not lt!263666) (undefined!6518 lt!263661)) (and (not lt!263666) (not (undefined!6518 lt!263661)))))))

(assert (=> b!576356 (= lt!263666 (not (is-Intermediate!5706 lt!263661)))))

(assert (=> b!576356 (= lt!263665 (Found!5706 j!142))))

(assert (=> b!576356 (= lt!263665 (seekEntryOrOpen!0 (select (arr!17250 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!576356 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18114 0))(
  ( (Unit!18115) )
))
(declare-fun lt!263659 () Unit!18114)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35946 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18114)

(assert (=> b!576356 (= lt!263659 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!52904 res!364732) b!576347))

(assert (= (and b!576347 res!364731) b!576353))

(assert (= (and b!576353 res!364739) b!576351))

(assert (= (and b!576351 res!364738) b!576350))

(assert (= (and b!576350 res!364730) b!576349))

(assert (= (and b!576349 res!364737) b!576352))

(assert (= (and b!576352 res!364735) b!576348))

(assert (= (and b!576348 res!364734) b!576355))

(assert (= (and b!576355 res!364733) b!576356))

(assert (= (and b!576356 (not res!364736)) b!576354))

(declare-fun m!555367 () Bool)

(assert (=> b!576352 m!555367))

(declare-fun m!555369 () Bool)

(assert (=> b!576353 m!555369))

(assert (=> b!576353 m!555369))

(declare-fun m!555371 () Bool)

(assert (=> b!576353 m!555371))

(assert (=> b!576355 m!555369))

(declare-fun m!555373 () Bool)

(assert (=> b!576355 m!555373))

(assert (=> b!576355 m!555369))

(declare-fun m!555375 () Bool)

(assert (=> b!576355 m!555375))

(declare-fun m!555377 () Bool)

(assert (=> b!576355 m!555377))

(assert (=> b!576355 m!555369))

(declare-fun m!555379 () Bool)

(assert (=> b!576355 m!555379))

(declare-fun m!555381 () Bool)

(assert (=> b!576355 m!555381))

(declare-fun m!555383 () Bool)

(assert (=> b!576355 m!555383))

(declare-fun m!555385 () Bool)

(assert (=> b!576350 m!555385))

(declare-fun m!555387 () Bool)

(assert (=> b!576351 m!555387))

(declare-fun m!555389 () Bool)

(assert (=> b!576348 m!555389))

(declare-fun m!555391 () Bool)

(assert (=> b!576349 m!555391))

(assert (=> b!576356 m!555369))

(assert (=> b!576356 m!555369))

(declare-fun m!555393 () Bool)

(assert (=> b!576356 m!555393))

(declare-fun m!555395 () Bool)

(assert (=> b!576356 m!555395))

(declare-fun m!555397 () Bool)

(assert (=> b!576356 m!555397))

(declare-fun m!555399 () Bool)

(assert (=> start!52904 m!555399))

(declare-fun m!555401 () Bool)

(assert (=> start!52904 m!555401))

(declare-fun m!555403 () Bool)

(assert (=> b!576354 m!555403))

(push 1)

(assert (not b!576348))

(assert (not b!576352))

(assert (not b!576354))

(assert (not start!52904))

(assert (not b!576351))

(assert (not b!576356))

(assert (not b!576350))

(assert (not b!576353))

(assert (not b!576355))

(assert (not b!576349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!85299 () Bool)

(declare-fun res!364816 () Bool)

(declare-fun e!331646 () Bool)

(assert (=> d!85299 (=> res!364816 e!331646)))

(assert (=> d!85299 (= res!364816 (bvsge #b00000000000000000000000000000000 (size!17614 a!3118)))))

(assert (=> d!85299 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!331646)))

(declare-fun b!576473 () Bool)

(declare-fun e!331645 () Bool)

(declare-fun call!32732 () Bool)

(assert (=> b!576473 (= e!331645 call!32732)))

(declare-fun b!576474 () Bool)

(declare-fun e!331644 () Bool)

(assert (=> b!576474 (= e!331644 call!32732)))

(declare-fun b!576475 () Bool)

(assert (=> b!576475 (= e!331645 e!331644)))

(declare-fun lt!263751 () (_ BitVec 64))

(assert (=> b!576475 (= lt!263751 (select (arr!17250 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!263749 () Unit!18114)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35946 (_ BitVec 64) (_ BitVec 32)) Unit!18114)

(assert (=> b!576475 (= lt!263749 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!263751 #b00000000000000000000000000000000))))

(assert (=> b!576475 (arrayContainsKey!0 a!3118 lt!263751 #b00000000000000000000000000000000)))

(declare-fun lt!263750 () Unit!18114)

(assert (=> b!576475 (= lt!263750 lt!263749)))

(declare-fun res!364817 () Bool)

(assert (=> b!576475 (= res!364817 (= (seekEntryOrOpen!0 (select (arr!17250 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5706 #b00000000000000000000000000000000)))))

(assert (=> b!576475 (=> (not res!364817) (not e!331644))))

(declare-fun bm!32729 () Bool)

(assert (=> bm!32729 (= call!32732 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!576476 () Bool)

(assert (=> b!576476 (= e!331646 e!331645)))

(declare-fun c!66194 () Bool)

(assert (=> b!576476 (= c!66194 (validKeyInArray!0 (select (arr!17250 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!85299 (not res!364816)) b!576476))

(assert (= (and b!576476 c!66194) b!576475))

(assert (= (and b!576476 (not c!66194)) b!576473))

(assert (= (and b!576475 res!364817) b!576474))

(assert (= (or b!576474 b!576473) bm!32729))

(declare-fun m!555505 () Bool)

(assert (=> b!576475 m!555505))

(declare-fun m!555507 () Bool)

(assert (=> b!576475 m!555507))

(declare-fun m!555509 () Bool)

(assert (=> b!576475 m!555509))

(assert (=> b!576475 m!555505))

(declare-fun m!555511 () Bool)

(assert (=> b!576475 m!555511))

(declare-fun m!555513 () Bool)

(assert (=> bm!32729 m!555513))

(assert (=> b!576476 m!555505))

(assert (=> b!576476 m!555505))

(declare-fun m!555515 () Bool)

(assert (=> b!576476 m!555515))

(assert (=> b!576352 d!85299))

(declare-fun b!576529 () Bool)

(declare-fun c!66219 () Bool)

(declare-fun lt!263783 () (_ BitVec 64))

(assert (=> b!576529 (= c!66219 (= lt!263783 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331675 () SeekEntryResult!5706)

(declare-fun e!331677 () SeekEntryResult!5706)

(assert (=> b!576529 (= e!331675 e!331677)))

(declare-fun b!576530 () Bool)

(declare-fun lt!263784 () SeekEntryResult!5706)

(assert (=> b!576530 (= e!331675 (Found!5706 (index!25053 lt!263784)))))

(declare-fun d!85305 () Bool)

(declare-fun lt!263782 () SeekEntryResult!5706)

(assert (=> d!85305 (and (or (is-Undefined!5706 lt!263782) (not (is-Found!5706 lt!263782)) (and (bvsge (index!25052 lt!263782) #b00000000000000000000000000000000) (bvslt (index!25052 lt!263782) (size!17614 a!3118)))) (or (is-Undefined!5706 lt!263782) (is-Found!5706 lt!263782) (not (is-MissingZero!5706 lt!263782)) (and (bvsge (index!25051 lt!263782) #b00000000000000000000000000000000) (bvslt (index!25051 lt!263782) (size!17614 a!3118)))) (or (is-Undefined!5706 lt!263782) (is-Found!5706 lt!263782) (is-MissingZero!5706 lt!263782) (not (is-MissingVacant!5706 lt!263782)) (and (bvsge (index!25054 lt!263782) #b00000000000000000000000000000000) (bvslt (index!25054 lt!263782) (size!17614 a!3118)))) (or (is-Undefined!5706 lt!263782) (ite (is-Found!5706 lt!263782) (= (select (arr!17250 a!3118) (index!25052 lt!263782)) (select (arr!17250 a!3118) j!142)) (ite (is-MissingZero!5706 lt!263782) (= (select (arr!17250 a!3118) (index!25051 lt!263782)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5706 lt!263782) (= (select (arr!17250 a!3118) (index!25054 lt!263782)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!331676 () SeekEntryResult!5706)

(assert (=> d!85305 (= lt!263782 e!331676)))

(declare-fun c!66218 () Bool)

(assert (=> d!85305 (= c!66218 (and (is-Intermediate!5706 lt!263784) (undefined!6518 lt!263784)))))

(assert (=> d!85305 (= lt!263784 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17250 a!3118) j!142) mask!3119) (select (arr!17250 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!85305 (validMask!0 mask!3119)))

(assert (=> d!85305 (= (seekEntryOrOpen!0 (select (arr!17250 a!3118) j!142) a!3118 mask!3119) lt!263782)))

(declare-fun b!576531 () Bool)

(assert (=> b!576531 (= e!331676 Undefined!5706)))

(declare-fun b!576532 () Bool)

(assert (=> b!576532 (= e!331676 e!331675)))

(assert (=> b!576532 (= lt!263783 (select (arr!17250 a!3118) (index!25053 lt!263784)))))

(declare-fun c!66217 () Bool)

(assert (=> b!576532 (= c!66217 (= lt!263783 (select (arr!17250 a!3118) j!142)))))

(declare-fun b!576533 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35946 (_ BitVec 32)) SeekEntryResult!5706)

(assert (=> b!576533 (= e!331677 (seekKeyOrZeroReturnVacant!0 (x!53972 lt!263784) (index!25053 lt!263784) (index!25053 lt!263784) (select (arr!17250 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!576534 () Bool)

(assert (=> b!576534 (= e!331677 (MissingZero!5706 (index!25053 lt!263784)))))

(assert (= (and d!85305 c!66218) b!576531))

(assert (= (and d!85305 (not c!66218)) b!576532))

(assert (= (and b!576532 c!66217) b!576530))

(assert (= (and b!576532 (not c!66217)) b!576529))

(assert (= (and b!576529 c!66219) b!576534))

(assert (= (and b!576529 (not c!66219)) b!576533))

(assert (=> d!85305 m!555373))

(assert (=> d!85305 m!555369))

(declare-fun m!555551 () Bool)

(assert (=> d!85305 m!555551))

(declare-fun m!555553 () Bool)

(assert (=> d!85305 m!555553))

(declare-fun m!555555 () Bool)

(assert (=> d!85305 m!555555))

(declare-fun m!555557 () Bool)

(assert (=> d!85305 m!555557))

(assert (=> d!85305 m!555399))

(assert (=> d!85305 m!555369))

(assert (=> d!85305 m!555373))

(declare-fun m!555559 () Bool)

(assert (=> b!576532 m!555559))

(assert (=> b!576533 m!555369))

(declare-fun m!555561 () Bool)

(assert (=> b!576533 m!555561))

(assert (=> b!576356 d!85305))

(declare-fun d!85325 () Bool)

(declare-fun res!364827 () Bool)

(declare-fun e!331683 () Bool)

(assert (=> d!85325 (=> res!364827 e!331683)))

(assert (=> d!85325 (= res!364827 (bvsge j!142 (size!17614 a!3118)))))

(assert (=> d!85325 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!331683)))

(declare-fun b!576541 () Bool)

(declare-fun e!331682 () Bool)

(declare-fun call!32734 () Bool)

(assert (=> b!576541 (= e!331682 call!32734)))

(declare-fun b!576542 () Bool)

(declare-fun e!331681 () Bool)

(assert (=> b!576542 (= e!331681 call!32734)))

(declare-fun b!576543 () Bool)

(assert (=> b!576543 (= e!331682 e!331681)))

(declare-fun lt!263792 () (_ BitVec 64))

(assert (=> b!576543 (= lt!263792 (select (arr!17250 a!3118) j!142))))

(declare-fun lt!263790 () Unit!18114)

(assert (=> b!576543 (= lt!263790 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!263792 j!142))))

(assert (=> b!576543 (arrayContainsKey!0 a!3118 lt!263792 #b00000000000000000000000000000000)))

(declare-fun lt!263791 () Unit!18114)

(assert (=> b!576543 (= lt!263791 lt!263790)))

(declare-fun res!364828 () Bool)

(assert (=> b!576543 (= res!364828 (= (seekEntryOrOpen!0 (select (arr!17250 a!3118) j!142) a!3118 mask!3119) (Found!5706 j!142)))))

(assert (=> b!576543 (=> (not res!364828) (not e!331681))))

(declare-fun bm!32731 () Bool)

(assert (=> bm!32731 (= call!32734 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!576544 () Bool)

(assert (=> b!576544 (= e!331683 e!331682)))

(declare-fun c!66223 () Bool)

(assert (=> b!576544 (= c!66223 (validKeyInArray!0 (select (arr!17250 a!3118) j!142)))))

(assert (= (and d!85325 (not res!364827)) b!576544))

(assert (= (and b!576544 c!66223) b!576543))

(assert (= (and b!576544 (not c!66223)) b!576541))

(assert (= (and b!576543 res!364828) b!576542))

(assert (= (or b!576542 b!576541) bm!32731))

(assert (=> b!576543 m!555369))

(declare-fun m!555575 () Bool)

(assert (=> b!576543 m!555575))

(declare-fun m!555577 () Bool)

(assert (=> b!576543 m!555577))

(assert (=> b!576543 m!555369))

(assert (=> b!576543 m!555393))

(declare-fun m!555581 () Bool)

(assert (=> bm!32731 m!555581))

(assert (=> b!576544 m!555369))

(assert (=> b!576544 m!555369))

(assert (=> b!576544 m!555371))

(assert (=> b!576356 d!85325))

(declare-fun d!85329 () Bool)

(assert (=> d!85329 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!263796 () Unit!18114)

(declare-fun choose!38 (array!35946 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18114)

(assert (=> d!85329 (= lt!263796 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!85329 (validMask!0 mask!3119)))

(assert (=> d!85329 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!263796)))

(declare-fun bs!17815 () Bool)

(assert (= bs!17815 d!85329))

(assert (=> bs!17815 m!555395))

(declare-fun m!555585 () Bool)

(assert (=> bs!17815 m!555585))

(assert (=> bs!17815 m!555399))

(assert (=> b!576356 d!85329))

(declare-fun d!85333 () Bool)

(assert (=> d!85333 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!576351 d!85333))

(declare-fun b!576565 () Bool)

(declare-fun c!66230 () Bool)

(declare-fun lt!263798 () (_ BitVec 64))

(assert (=> b!576565 (= c!66230 (= lt!263798 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331700 () SeekEntryResult!5706)

(declare-fun e!331702 () SeekEntryResult!5706)

(assert (=> b!576565 (= e!331700 e!331702)))

(declare-fun b!576566 () Bool)

(declare-fun lt!263799 () SeekEntryResult!5706)

(assert (=> b!576566 (= e!331700 (Found!5706 (index!25053 lt!263799)))))

(declare-fun d!85335 () Bool)

(declare-fun lt!263797 () SeekEntryResult!5706)

(assert (=> d!85335 (and (or (is-Undefined!5706 lt!263797) (not (is-Found!5706 lt!263797)) (and (bvsge (index!25052 lt!263797) #b00000000000000000000000000000000) (bvslt (index!25052 lt!263797) (size!17614 a!3118)))) (or (is-Undefined!5706 lt!263797) (is-Found!5706 lt!263797) (not (is-MissingZero!5706 lt!263797)) (and (bvsge (index!25051 lt!263797) #b00000000000000000000000000000000) (bvslt (index!25051 lt!263797) (size!17614 a!3118)))) (or (is-Undefined!5706 lt!263797) (is-Found!5706 lt!263797) (is-MissingZero!5706 lt!263797) (not (is-MissingVacant!5706 lt!263797)) (and (bvsge (index!25054 lt!263797) #b00000000000000000000000000000000) (bvslt (index!25054 lt!263797) (size!17614 a!3118)))) (or (is-Undefined!5706 lt!263797) (ite (is-Found!5706 lt!263797) (= (select (arr!17250 a!3118) (index!25052 lt!263797)) k!1914) (ite (is-MissingZero!5706 lt!263797) (= (select (arr!17250 a!3118) (index!25051 lt!263797)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5706 lt!263797) (= (select (arr!17250 a!3118) (index!25054 lt!263797)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!331701 () SeekEntryResult!5706)

(assert (=> d!85335 (= lt!263797 e!331701)))

(declare-fun c!66229 () Bool)

(assert (=> d!85335 (= c!66229 (and (is-Intermediate!5706 lt!263799) (undefined!6518 lt!263799)))))

(assert (=> d!85335 (= lt!263799 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!85335 (validMask!0 mask!3119)))

(assert (=> d!85335 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!263797)))

(declare-fun b!576567 () Bool)

(assert (=> b!576567 (= e!331701 Undefined!5706)))

(declare-fun b!576568 () Bool)

(assert (=> b!576568 (= e!331701 e!331700)))

(assert (=> b!576568 (= lt!263798 (select (arr!17250 a!3118) (index!25053 lt!263799)))))

(declare-fun c!66228 () Bool)

(assert (=> b!576568 (= c!66228 (= lt!263798 k!1914))))

(declare-fun b!576569 () Bool)

(assert (=> b!576569 (= e!331702 (seekKeyOrZeroReturnVacant!0 (x!53972 lt!263799) (index!25053 lt!263799) (index!25053 lt!263799) k!1914 a!3118 mask!3119))))

(declare-fun b!576570 () Bool)

(assert (=> b!576570 (= e!331702 (MissingZero!5706 (index!25053 lt!263799)))))

(assert (= (and d!85335 c!66229) b!576567))

(assert (= (and d!85335 (not c!66229)) b!576568))

(assert (= (and b!576568 c!66228) b!576566))

(assert (= (and b!576568 (not c!66228)) b!576565))

(assert (= (and b!576565 c!66230) b!576570))

(assert (= (and b!576565 (not c!66230)) b!576569))

(declare-fun m!555587 () Bool)

(assert (=> d!85335 m!555587))

(declare-fun m!555589 () Bool)

(assert (=> d!85335 m!555589))

(declare-fun m!555591 () Bool)

(assert (=> d!85335 m!555591))

(declare-fun m!555593 () Bool)

(assert (=> d!85335 m!555593))

(declare-fun m!555595 () Bool)

(assert (=> d!85335 m!555595))

(assert (=> d!85335 m!555399))

(assert (=> d!85335 m!555587))

(declare-fun m!555597 () Bool)

(assert (=> b!576568 m!555597))

(declare-fun m!555599 () Bool)

(assert (=> b!576569 m!555599))

(assert (=> b!576349 d!85335))

(declare-fun b!576639 () Bool)

(declare-fun e!331751 () Bool)

(declare-fun lt!263828 () SeekEntryResult!5706)

(assert (=> b!576639 (= e!331751 (bvsge (x!53972 lt!263828) #b01111111111111111111111111111110))))

(declare-fun b!576640 () Bool)

(declare-fun e!331752 () SeekEntryResult!5706)

(assert (=> b!576640 (= e!331752 (Intermediate!5706 true lt!263662 #b00000000000000000000000000000000))))

(declare-fun b!576641 () Bool)

(declare-fun e!331749 () SeekEntryResult!5706)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!576641 (= e!331749 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!263662 #b00000000000000000000000000000000 mask!3119) lt!263658 lt!263663 mask!3119))))

(declare-fun b!576642 () Bool)

(assert (=> b!576642 (and (bvsge (index!25053 lt!263828) #b00000000000000000000000000000000) (bvslt (index!25053 lt!263828) (size!17614 lt!263663)))))

(declare-fun res!364869 () Bool)

(assert (=> b!576642 (= res!364869 (= (select (arr!17250 lt!263663) (index!25053 lt!263828)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331750 () Bool)

(assert (=> b!576642 (=> res!364869 e!331750)))

(declare-fun b!576643 () Bool)

(assert (=> b!576643 (= e!331752 e!331749)))

(declare-fun c!66253 () Bool)

(declare-fun lt!263829 () (_ BitVec 64))

(assert (=> b!576643 (= c!66253 (or (= lt!263829 lt!263658) (= (bvadd lt!263829 lt!263829) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!85337 () Bool)

(assert (=> d!85337 e!331751))

(declare-fun c!66254 () Bool)

(assert (=> d!85337 (= c!66254 (and (is-Intermediate!5706 lt!263828) (undefined!6518 lt!263828)))))

(assert (=> d!85337 (= lt!263828 e!331752)))

(declare-fun c!66252 () Bool)

(assert (=> d!85337 (= c!66252 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85337 (= lt!263829 (select (arr!17250 lt!263663) lt!263662))))

(assert (=> d!85337 (validMask!0 mask!3119)))

(assert (=> d!85337 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263662 lt!263658 lt!263663 mask!3119) lt!263828)))

(declare-fun b!576644 () Bool)

(assert (=> b!576644 (and (bvsge (index!25053 lt!263828) #b00000000000000000000000000000000) (bvslt (index!25053 lt!263828) (size!17614 lt!263663)))))

(assert (=> b!576644 (= e!331750 (= (select (arr!17250 lt!263663) (index!25053 lt!263828)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!576645 () Bool)

(assert (=> b!576645 (= e!331749 (Intermediate!5706 false lt!263662 #b00000000000000000000000000000000))))

(declare-fun b!576646 () Bool)

(declare-fun e!331748 () Bool)

(assert (=> b!576646 (= e!331751 e!331748)))

(declare-fun res!364867 () Bool)

(assert (=> b!576646 (= res!364867 (and (is-Intermediate!5706 lt!263828) (not (undefined!6518 lt!263828)) (bvslt (x!53972 lt!263828) #b01111111111111111111111111111110) (bvsge (x!53972 lt!263828) #b00000000000000000000000000000000) (bvsge (x!53972 lt!263828) #b00000000000000000000000000000000)))))

(assert (=> b!576646 (=> (not res!364867) (not e!331748))))

(declare-fun b!576647 () Bool)

(assert (=> b!576647 (and (bvsge (index!25053 lt!263828) #b00000000000000000000000000000000) (bvslt (index!25053 lt!263828) (size!17614 lt!263663)))))

(declare-fun res!364868 () Bool)

(assert (=> b!576647 (= res!364868 (= (select (arr!17250 lt!263663) (index!25053 lt!263828)) lt!263658))))

(assert (=> b!576647 (=> res!364868 e!331750)))

(assert (=> b!576647 (= e!331748 e!331750)))

(assert (= (and d!85337 c!66252) b!576640))

(assert (= (and d!85337 (not c!66252)) b!576643))

(assert (= (and b!576643 c!66253) b!576645))

(assert (= (and b!576643 (not c!66253)) b!576641))

(assert (= (and d!85337 c!66254) b!576639))

(assert (= (and d!85337 (not c!66254)) b!576646))

(assert (= (and b!576646 res!364867) b!576647))

(assert (= (and b!576647 (not res!364868)) b!576642))

(assert (= (and b!576642 (not res!364869)) b!576644))

(declare-fun m!555669 () Bool)

(assert (=> b!576641 m!555669))

(assert (=> b!576641 m!555669))

(declare-fun m!555671 () Bool)

(assert (=> b!576641 m!555671))

(declare-fun m!555673 () Bool)

(assert (=> b!576644 m!555673))

(assert (=> b!576647 m!555673))

(declare-fun m!555675 () Bool)

(assert (=> d!85337 m!555675))

(assert (=> d!85337 m!555399))

(assert (=> b!576642 m!555673))

(assert (=> b!576355 d!85337))

(declare-fun b!576648 () Bool)

(declare-fun e!331756 () Bool)

(declare-fun lt!263830 () SeekEntryResult!5706)

(assert (=> b!576648 (= e!331756 (bvsge (x!53972 lt!263830) #b01111111111111111111111111111110))))

(declare-fun b!576649 () Bool)

(declare-fun e!331757 () SeekEntryResult!5706)

(assert (=> b!576649 (= e!331757 (Intermediate!5706 true lt!263660 #b00000000000000000000000000000000))))

(declare-fun e!331754 () SeekEntryResult!5706)

(declare-fun b!576650 () Bool)

(assert (=> b!576650 (= e!331754 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!263660 #b00000000000000000000000000000000 mask!3119) (select (arr!17250 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!576651 () Bool)

(assert (=> b!576651 (and (bvsge (index!25053 lt!263830) #b00000000000000000000000000000000) (bvslt (index!25053 lt!263830) (size!17614 a!3118)))))

(declare-fun res!364872 () Bool)

(assert (=> b!576651 (= res!364872 (= (select (arr!17250 a!3118) (index!25053 lt!263830)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331755 () Bool)

(assert (=> b!576651 (=> res!364872 e!331755)))

(declare-fun b!576652 () Bool)

(assert (=> b!576652 (= e!331757 e!331754)))

(declare-fun c!66256 () Bool)

(declare-fun lt!263831 () (_ BitVec 64))

(assert (=> b!576652 (= c!66256 (or (= lt!263831 (select (arr!17250 a!3118) j!142)) (= (bvadd lt!263831 lt!263831) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!85361 () Bool)

(assert (=> d!85361 e!331756))

(declare-fun c!66257 () Bool)

(assert (=> d!85361 (= c!66257 (and (is-Intermediate!5706 lt!263830) (undefined!6518 lt!263830)))))

(assert (=> d!85361 (= lt!263830 e!331757)))

(declare-fun c!66255 () Bool)

(assert (=> d!85361 (= c!66255 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85361 (= lt!263831 (select (arr!17250 a!3118) lt!263660))))

(assert (=> d!85361 (validMask!0 mask!3119)))

(assert (=> d!85361 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!263660 (select (arr!17250 a!3118) j!142) a!3118 mask!3119) lt!263830)))

(declare-fun b!576653 () Bool)

(assert (=> b!576653 (and (bvsge (index!25053 lt!263830) #b00000000000000000000000000000000) (bvslt (index!25053 lt!263830) (size!17614 a!3118)))))

(assert (=> b!576653 (= e!331755 (= (select (arr!17250 a!3118) (index!25053 lt!263830)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!576654 () Bool)

(assert (=> b!576654 (= e!331754 (Intermediate!5706 false lt!263660 #b00000000000000000000000000000000))))

(declare-fun b!576655 () Bool)

(declare-fun e!331753 () Bool)

(assert (=> b!576655 (= e!331756 e!331753)))

(declare-fun res!364870 () Bool)

(assert (=> b!576655 (= res!364870 (and (is-Intermediate!5706 lt!263830) (not (undefined!6518 lt!263830)) (bvslt (x!53972 lt!263830) #b01111111111111111111111111111110) (bvsge (x!53972 lt!263830) #b00000000000000000000000000000000) (bvsge (x!53972 lt!263830) #b00000000000000000000000000000000)))))

(assert (=> b!576655 (=> (not res!364870) (not e!331753))))

(declare-fun b!576656 () Bool)

(assert (=> b!576656 (and (bvsge (index!25053 lt!263830) #b00000000000000000000000000000000) (bvslt (index!25053 lt!263830) (size!17614 a!3118)))))

(declare-fun res!364871 () Bool)

(assert (=> b!576656 (= res!364871 (= (select (arr!17250 a!3118) (index!25053 lt!263830)) (select (arr!17250 a!3118) j!142)))))

(assert (=> b!576656 (=> res!364871 e!331755)))

(assert (=> b!576656 (= e!331753 e!331755)))

(assert (= (and d!85361 c!66255) b!576649))

(assert (= (and d!85361 (not c!66255)) b!576652))

(assert (= (and b!576652 c!66256) b!576654))

(assert (= (and b!576652 (not c!66256)) b!576650))

(assert (= (and d!85361 c!66257) b!576648))

(assert (= (and d!85361 (not c!66257)) b!576655))

(assert (= (and b!576655 res!364870) b!576656))

(assert (= (and b!576656 (not res!364871)) b!576651))

(assert (= (and b!576651 (not res!364872)) b!576653))

(declare-fun m!555677 () Bool)

(assert (=> b!576650 m!555677))

(assert (=> b!576650 m!555677))

(assert (=> b!576650 m!555369))

(declare-fun m!555679 () Bool)

(assert (=> b!576650 m!555679))

(declare-fun m!555681 () Bool)

(assert (=> b!576653 m!555681))

(assert (=> b!576656 m!555681))

(declare-fun m!555683 () Bool)

(assert (=> d!85361 m!555683))

(assert (=> d!85361 m!555399))

(assert (=> b!576651 m!555681))

(assert (=> b!576355 d!85361))

(declare-fun d!85363 () Bool)

(declare-fun lt!263837 () (_ BitVec 32))

(declare-fun lt!263836 () (_ BitVec 32))

(assert (=> d!85363 (= lt!263837 (bvmul (bvxor lt!263836 (bvlshr lt!263836 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85363 (= lt!263836 ((_ extract 31 0) (bvand (bvxor lt!263658 (bvlshr lt!263658 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85363 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!364873 (let ((h!12425 ((_ extract 31 0) (bvand (bvxor lt!263658 (bvlshr lt!263658 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53978 (bvmul (bvxor h!12425 (bvlshr h!12425 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53978 (bvlshr x!53978 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!364873 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!364873 #b00000000000000000000000000000000))))))

(assert (=> d!85363 (= (toIndex!0 lt!263658 mask!3119) (bvand (bvxor lt!263837 (bvlshr lt!263837 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!576355 d!85363))

(declare-fun d!85365 () Bool)

(declare-fun lt!263839 () (_ BitVec 32))

(declare-fun lt!263838 () (_ BitVec 32))

(assert (=> d!85365 (= lt!263839 (bvmul (bvxor lt!263838 (bvlshr lt!263838 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85365 (= lt!263838 ((_ extract 31 0) (bvand (bvxor (select (arr!17250 a!3118) j!142) (bvlshr (select (arr!17250 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85365 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!364873 (let ((h!12425 ((_ extract 31 0) (bvand (bvxor (select (arr!17250 a!3118) j!142) (bvlshr (select (arr!17250 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53978 (bvmul (bvxor h!12425 (bvlshr h!12425 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53978 (bvlshr x!53978 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!364873 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!364873 #b00000000000000000000000000000000))))))

(assert (=> d!85365 (= (toIndex!0 (select (arr!17250 a!3118) j!142) mask!3119) (bvand (bvxor lt!263839 (bvlshr lt!263839 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!576355 d!85365))

(declare-fun d!85367 () Bool)

(declare-fun res!364878 () Bool)

(declare-fun e!331766 () Bool)

(assert (=> d!85367 (=> res!364878 e!331766)))

(assert (=> d!85367 (= res!364878 (= (select (arr!17250 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!85367 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!331766)))

(declare-fun b!576669 () Bool)

(declare-fun e!331767 () Bool)

(assert (=> b!576669 (= e!331766 e!331767)))

(declare-fun res!364879 () Bool)

(assert (=> b!576669 (=> (not res!364879) (not e!331767))))

(assert (=> b!576669 (= res!364879 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17614 a!3118)))))

(declare-fun b!576670 () Bool)

(assert (=> b!576670 (= e!331767 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85367 (not res!364878)) b!576669))

(assert (= (and b!576669 res!364879) b!576670))

(assert (=> d!85367 m!555505))

(declare-fun m!555685 () Bool)

(assert (=> b!576670 m!555685))

(assert (=> b!576350 d!85367))

(declare-fun d!85369 () Bool)

(assert (=> d!85369 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52904 d!85369))

(declare-fun d!85375 () Bool)

(assert (=> d!85375 (= (array_inv!13024 a!3118) (bvsge (size!17614 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52904 d!85375))

(declare-fun d!85377 () Bool)

(assert (=> d!85377 (= (validKeyInArray!0 (select (arr!17250 a!3118) j!142)) (and (not (= (select (arr!17250 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17250 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!576353 d!85377))

(declare-fun b!576713 () Bool)

(declare-fun e!331799 () Bool)

(declare-fun call!32747 () Bool)

(assert (=> b!576713 (= e!331799 call!32747)))

(declare-fun b!576714 () Bool)

(declare-fun e!331798 () Bool)

(assert (=> b!576714 (= e!331798 e!331799)))

(declare-fun c!66272 () Bool)

(assert (=> b!576714 (= c!66272 (validKeyInArray!0 (select (arr!17250 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!576715 () Bool)

(declare-fun e!331796 () Bool)

(declare-fun contains!2902 (List!11383 (_ BitVec 64)) Bool)

(assert (=> b!576715 (= e!331796 (contains!2902 Nil!11380 (select (arr!17250 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!576716 () Bool)

(assert (=> b!576716 (= e!331799 call!32747)))

(declare-fun b!576717 () Bool)

(declare-fun e!331797 () Bool)

(assert (=> b!576717 (= e!331797 e!331798)))

(declare-fun res!364903 () Bool)

(assert (=> b!576717 (=> (not res!364903) (not e!331798))))

(assert (=> b!576717 (= res!364903 (not e!331796))))

(declare-fun res!364905 () Bool)

(assert (=> b!576717 (=> (not res!364905) (not e!331796))))

(assert (=> b!576717 (= res!364905 (validKeyInArray!0 (select (arr!17250 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32744 () Bool)

(assert (=> bm!32744 (= call!32747 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66272 (Cons!11379 (select (arr!17250 a!3118) #b00000000000000000000000000000000) Nil!11380) Nil!11380)))))

(declare-fun d!85379 () Bool)

(declare-fun res!364904 () Bool)

(assert (=> d!85379 (=> res!364904 e!331797)))

(assert (=> d!85379 (= res!364904 (bvsge #b00000000000000000000000000000000 (size!17614 a!3118)))))

(assert (=> d!85379 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11380) e!331797)))

(assert (= (and d!85379 (not res!364904)) b!576717))

(assert (= (and b!576717 res!364905) b!576715))

(assert (= (and b!576717 res!364903) b!576714))

(assert (= (and b!576714 c!66272) b!576713))

(assert (= (and b!576714 (not c!66272)) b!576716))

(assert (= (or b!576713 b!576716) bm!32744))

(assert (=> b!576714 m!555505))

(assert (=> b!576714 m!555505))

(assert (=> b!576714 m!555515))

(assert (=> b!576715 m!555505))

(assert (=> b!576715 m!555505))

(declare-fun m!555703 () Bool)

(assert (=> b!576715 m!555703))

(assert (=> b!576717 m!555505))

(assert (=> b!576717 m!555505))

(assert (=> b!576717 m!555515))

(assert (=> bm!32744 m!555505))

(declare-fun m!555705 () Bool)

(assert (=> bm!32744 m!555705))

(assert (=> b!576348 d!85379))

(declare-fun b!576720 () Bool)

(declare-fun c!66275 () Bool)

(declare-fun lt!263857 () (_ BitVec 64))

(assert (=> b!576720 (= c!66275 (= lt!263857 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!331802 () SeekEntryResult!5706)

(declare-fun e!331804 () SeekEntryResult!5706)

(assert (=> b!576720 (= e!331802 e!331804)))

(declare-fun b!576721 () Bool)

(declare-fun lt!263858 () SeekEntryResult!5706)

(assert (=> b!576721 (= e!331802 (Found!5706 (index!25053 lt!263858)))))

(declare-fun d!85385 () Bool)

(declare-fun lt!263856 () SeekEntryResult!5706)

(assert (=> d!85385 (and (or (is-Undefined!5706 lt!263856) (not (is-Found!5706 lt!263856)) (and (bvsge (index!25052 lt!263856) #b00000000000000000000000000000000) (bvslt (index!25052 lt!263856) (size!17614 lt!263663)))) (or (is-Undefined!5706 lt!263856) (is-Found!5706 lt!263856) (not (is-MissingZero!5706 lt!263856)) (and (bvsge (index!25051 lt!263856) #b00000000000000000000000000000000) (bvslt (index!25051 lt!263856) (size!17614 lt!263663)))) (or (is-Undefined!5706 lt!263856) (is-Found!5706 lt!263856) (is-MissingZero!5706 lt!263856) (not (is-MissingVacant!5706 lt!263856)) (and (bvsge (index!25054 lt!263856) #b00000000000000000000000000000000) (bvslt (index!25054 lt!263856) (size!17614 lt!263663)))) (or (is-Undefined!5706 lt!263856) (ite (is-Found!5706 lt!263856) (= (select (arr!17250 lt!263663) (index!25052 lt!263856)) lt!263658) (ite (is-MissingZero!5706 lt!263856) (= (select (arr!17250 lt!263663) (index!25051 lt!263856)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5706 lt!263856) (= (select (arr!17250 lt!263663) (index!25054 lt!263856)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!331803 () SeekEntryResult!5706)

(assert (=> d!85385 (= lt!263856 e!331803)))

(declare-fun c!66274 () Bool)

(assert (=> d!85385 (= c!66274 (and (is-Intermediate!5706 lt!263858) (undefined!6518 lt!263858)))))

(assert (=> d!85385 (= lt!263858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!263658 mask!3119) lt!263658 lt!263663 mask!3119))))

(assert (=> d!85385 (validMask!0 mask!3119)))

(assert (=> d!85385 (= (seekEntryOrOpen!0 lt!263658 lt!263663 mask!3119) lt!263856)))

(declare-fun b!576722 () Bool)

(assert (=> b!576722 (= e!331803 Undefined!5706)))

(declare-fun b!576723 () Bool)

(assert (=> b!576723 (= e!331803 e!331802)))

(assert (=> b!576723 (= lt!263857 (select (arr!17250 lt!263663) (index!25053 lt!263858)))))

(declare-fun c!66273 () Bool)

(assert (=> b!576723 (= c!66273 (= lt!263857 lt!263658))))

(declare-fun b!576724 () Bool)

(assert (=> b!576724 (= e!331804 (seekKeyOrZeroReturnVacant!0 (x!53972 lt!263858) (index!25053 lt!263858) (index!25053 lt!263858) lt!263658 lt!263663 mask!3119))))

(declare-fun b!576725 () Bool)

(assert (=> b!576725 (= e!331804 (MissingZero!5706 (index!25053 lt!263858)))))

(assert (= (and d!85385 c!66274) b!576722))

(assert (= (and d!85385 (not c!66274)) b!576723))

(assert (= (and b!576723 c!66273) b!576721))

(assert (= (and b!576723 (not c!66273)) b!576720))

(assert (= (and b!576720 c!66275) b!576725))

(assert (= (and b!576720 (not c!66275)) b!576724))

(assert (=> d!85385 m!555381))

(declare-fun m!555709 () Bool)

(assert (=> d!85385 m!555709))

(declare-fun m!555711 () Bool)

(assert (=> d!85385 m!555711))

(declare-fun m!555713 () Bool)

(assert (=> d!85385 m!555713))

(declare-fun m!555715 () Bool)

(assert (=> d!85385 m!555715))

(assert (=> d!85385 m!555399))

(assert (=> d!85385 m!555381))

(declare-fun m!555717 () Bool)

(assert (=> b!576723 m!555717))

(declare-fun m!555719 () Bool)

(assert (=> b!576724 m!555719))

(assert (=> b!576354 d!85385))

(push 1)

