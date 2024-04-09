; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64510 () Bool)

(assert start!64510)

(declare-fun b!725491 () Bool)

(declare-fun e!406295 () Bool)

(declare-fun e!406292 () Bool)

(assert (=> b!725491 (= e!406295 e!406292)))

(declare-fun res!486711 () Bool)

(assert (=> b!725491 (=> (not res!486711) (not e!406292))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!321373 () (_ BitVec 64))

(declare-datatypes ((array!40981 0))(
  ( (array!40982 (arr!19608 (Array (_ BitVec 32) (_ BitVec 64))) (size!20029 (_ BitVec 32))) )
))
(declare-fun lt!321374 () array!40981)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7215 0))(
  ( (MissingZero!7215 (index!31227 (_ BitVec 32))) (Found!7215 (index!31228 (_ BitVec 32))) (Intermediate!7215 (undefined!8027 Bool) (index!31229 (_ BitVec 32)) (x!62250 (_ BitVec 32))) (Undefined!7215) (MissingVacant!7215 (index!31230 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40981 (_ BitVec 32)) SeekEntryResult!7215)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725491 (= res!486711 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321373 mask!3328) lt!321373 lt!321374 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321373 lt!321374 mask!3328)))))

(declare-fun a!3186 () array!40981)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!725491 (= lt!321373 (select (store (arr!19608 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725491 (= lt!321374 (array!40982 (store (arr!19608 a!3186) i!1173 k!2102) (size!20029 a!3186)))))

(declare-fun b!725492 () Bool)

(declare-fun res!486709 () Bool)

(declare-fun e!406296 () Bool)

(assert (=> b!725492 (=> (not res!486709) (not e!406296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40981 (_ BitVec 32)) Bool)

(assert (=> b!725492 (= res!486709 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725493 () Bool)

(assert (=> b!725493 (= e!406292 (not (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun e!406290 () Bool)

(assert (=> b!725493 e!406290))

(declare-fun res!486714 () Bool)

(assert (=> b!725493 (=> (not res!486714) (not e!406290))))

(assert (=> b!725493 (= res!486714 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24748 0))(
  ( (Unit!24749) )
))
(declare-fun lt!321369 () Unit!24748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40981 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24748)

(assert (=> b!725493 (= lt!321369 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725494 () Bool)

(declare-fun res!486718 () Bool)

(declare-fun e!406294 () Bool)

(assert (=> b!725494 (=> (not res!486718) (not e!406294))))

(declare-fun arrayContainsKey!0 (array!40981 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725494 (= res!486718 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725495 () Bool)

(declare-fun res!486721 () Bool)

(assert (=> b!725495 (=> (not res!486721) (not e!406296))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725495 (= res!486721 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20029 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20029 a!3186))))))

(declare-fun b!725496 () Bool)

(declare-fun res!486719 () Bool)

(assert (=> b!725496 (=> (not res!486719) (not e!406295))))

(assert (=> b!725496 (= res!486719 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19608 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!486712 () Bool)

(assert (=> start!64510 (=> (not res!486712) (not e!406294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64510 (= res!486712 (validMask!0 mask!3328))))

(assert (=> start!64510 e!406294))

(assert (=> start!64510 true))

(declare-fun array_inv!15382 (array!40981) Bool)

(assert (=> start!64510 (array_inv!15382 a!3186)))

(declare-fun b!725497 () Bool)

(declare-fun res!486722 () Bool)

(assert (=> b!725497 (=> (not res!486722) (not e!406294))))

(assert (=> b!725497 (= res!486722 (and (= (size!20029 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20029 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20029 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725498 () Bool)

(declare-fun lt!321370 () SeekEntryResult!7215)

(declare-fun e!406291 () Bool)

(assert (=> b!725498 (= e!406291 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19608 a!3186) j!159) a!3186 mask!3328) lt!321370))))

(declare-fun e!406293 () Bool)

(declare-fun lt!321371 () SeekEntryResult!7215)

(declare-fun b!725499 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40981 (_ BitVec 32)) SeekEntryResult!7215)

(assert (=> b!725499 (= e!406293 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19608 a!3186) j!159) a!3186 mask!3328) lt!321371))))

(declare-fun b!725500 () Bool)

(assert (=> b!725500 (= e!406296 e!406295)))

(declare-fun res!486713 () Bool)

(assert (=> b!725500 (=> (not res!486713) (not e!406295))))

(assert (=> b!725500 (= res!486713 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19608 a!3186) j!159) mask!3328) (select (arr!19608 a!3186) j!159) a!3186 mask!3328) lt!321370))))

(assert (=> b!725500 (= lt!321370 (Intermediate!7215 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725501 () Bool)

(declare-fun res!486723 () Bool)

(assert (=> b!725501 (=> (not res!486723) (not e!406295))))

(assert (=> b!725501 (= res!486723 e!406291)))

(declare-fun c!79764 () Bool)

(assert (=> b!725501 (= c!79764 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725502 () Bool)

(declare-fun res!486720 () Bool)

(assert (=> b!725502 (=> (not res!486720) (not e!406294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725502 (= res!486720 (validKeyInArray!0 k!2102))))

(declare-fun b!725503 () Bool)

(assert (=> b!725503 (= e!406291 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19608 a!3186) j!159) a!3186 mask!3328) (Found!7215 j!159)))))

(declare-fun b!725504 () Bool)

(declare-fun res!486717 () Bool)

(assert (=> b!725504 (=> (not res!486717) (not e!406296))))

(declare-datatypes ((List!13663 0))(
  ( (Nil!13660) (Cons!13659 (h!14716 (_ BitVec 64)) (t!19986 List!13663)) )
))
(declare-fun arrayNoDuplicates!0 (array!40981 (_ BitVec 32) List!13663) Bool)

(assert (=> b!725504 (= res!486717 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13660))))

(declare-fun b!725505 () Bool)

(assert (=> b!725505 (= e!406294 e!406296)))

(declare-fun res!486716 () Bool)

(assert (=> b!725505 (=> (not res!486716) (not e!406296))))

(declare-fun lt!321372 () SeekEntryResult!7215)

(assert (=> b!725505 (= res!486716 (or (= lt!321372 (MissingZero!7215 i!1173)) (= lt!321372 (MissingVacant!7215 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40981 (_ BitVec 32)) SeekEntryResult!7215)

(assert (=> b!725505 (= lt!321372 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725506 () Bool)

(assert (=> b!725506 (= e!406290 e!406293)))

(declare-fun res!486710 () Bool)

(assert (=> b!725506 (=> (not res!486710) (not e!406293))))

(assert (=> b!725506 (= res!486710 (= (seekEntryOrOpen!0 (select (arr!19608 a!3186) j!159) a!3186 mask!3328) lt!321371))))

(assert (=> b!725506 (= lt!321371 (Found!7215 j!159))))

(declare-fun b!725507 () Bool)

(declare-fun res!486715 () Bool)

(assert (=> b!725507 (=> (not res!486715) (not e!406294))))

(assert (=> b!725507 (= res!486715 (validKeyInArray!0 (select (arr!19608 a!3186) j!159)))))

(assert (= (and start!64510 res!486712) b!725497))

(assert (= (and b!725497 res!486722) b!725507))

(assert (= (and b!725507 res!486715) b!725502))

(assert (= (and b!725502 res!486720) b!725494))

(assert (= (and b!725494 res!486718) b!725505))

(assert (= (and b!725505 res!486716) b!725492))

(assert (= (and b!725492 res!486709) b!725504))

(assert (= (and b!725504 res!486717) b!725495))

(assert (= (and b!725495 res!486721) b!725500))

(assert (= (and b!725500 res!486713) b!725496))

(assert (= (and b!725496 res!486719) b!725501))

(assert (= (and b!725501 c!79764) b!725498))

(assert (= (and b!725501 (not c!79764)) b!725503))

(assert (= (and b!725501 res!486723) b!725491))

(assert (= (and b!725491 res!486711) b!725493))

(assert (= (and b!725493 res!486714) b!725506))

(assert (= (and b!725506 res!486710) b!725499))

(declare-fun m!679735 () Bool)

(assert (=> b!725493 m!679735))

(declare-fun m!679737 () Bool)

(assert (=> b!725493 m!679737))

(declare-fun m!679739 () Bool)

(assert (=> start!64510 m!679739))

(declare-fun m!679741 () Bool)

(assert (=> start!64510 m!679741))

(declare-fun m!679743 () Bool)

(assert (=> b!725494 m!679743))

(declare-fun m!679745 () Bool)

(assert (=> b!725507 m!679745))

(assert (=> b!725507 m!679745))

(declare-fun m!679747 () Bool)

(assert (=> b!725507 m!679747))

(assert (=> b!725506 m!679745))

(assert (=> b!725506 m!679745))

(declare-fun m!679749 () Bool)

(assert (=> b!725506 m!679749))

(declare-fun m!679751 () Bool)

(assert (=> b!725492 m!679751))

(declare-fun m!679753 () Bool)

(assert (=> b!725491 m!679753))

(declare-fun m!679755 () Bool)

(assert (=> b!725491 m!679755))

(declare-fun m!679757 () Bool)

(assert (=> b!725491 m!679757))

(declare-fun m!679759 () Bool)

(assert (=> b!725491 m!679759))

(assert (=> b!725491 m!679759))

(declare-fun m!679761 () Bool)

(assert (=> b!725491 m!679761))

(declare-fun m!679763 () Bool)

(assert (=> b!725502 m!679763))

(assert (=> b!725503 m!679745))

(assert (=> b!725503 m!679745))

(declare-fun m!679765 () Bool)

(assert (=> b!725503 m!679765))

(assert (=> b!725499 m!679745))

(assert (=> b!725499 m!679745))

(declare-fun m!679767 () Bool)

(assert (=> b!725499 m!679767))

(declare-fun m!679769 () Bool)

(assert (=> b!725496 m!679769))

(assert (=> b!725500 m!679745))

(assert (=> b!725500 m!679745))

(declare-fun m!679771 () Bool)

(assert (=> b!725500 m!679771))

(assert (=> b!725500 m!679771))

(assert (=> b!725500 m!679745))

(declare-fun m!679773 () Bool)

(assert (=> b!725500 m!679773))

(assert (=> b!725498 m!679745))

(assert (=> b!725498 m!679745))

(declare-fun m!679775 () Bool)

(assert (=> b!725498 m!679775))

(declare-fun m!679777 () Bool)

(assert (=> b!725505 m!679777))

(declare-fun m!679779 () Bool)

(assert (=> b!725504 m!679779))

(push 1)

(assert (not b!725505))

(assert (not b!725506))

(assert (not start!64510))

(assert (not b!725491))

(assert (not b!725499))

(assert (not b!725493))

(assert (not b!725504))

(assert (not b!725498))

(assert (not b!725500))

(assert (not b!725503))

(assert (not b!725492))

(assert (not b!725502))

(assert (not b!725507))

(assert (not b!725494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

