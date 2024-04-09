; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123560 () Bool)

(assert start!123560)

(declare-fun res!965662 () Bool)

(declare-fun e!808301 () Bool)

(assert (=> start!123560 (=> (not res!965662) (not e!808301))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123560 (= res!965662 (validMask!0 mask!2608))))

(assert (=> start!123560 e!808301))

(assert (=> start!123560 true))

(declare-datatypes ((array!97450 0))(
  ( (array!97451 (arr!47028 (Array (_ BitVec 32) (_ BitVec 64))) (size!47579 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97450)

(declare-fun array_inv!35973 (array!97450) Bool)

(assert (=> start!123560 (array_inv!35973 a!2831)))

(declare-fun b!1431687 () Bool)

(declare-fun res!965665 () Bool)

(assert (=> b!1431687 (=> (not res!965665) (not e!808301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97450 (_ BitVec 32)) Bool)

(assert (=> b!1431687 (= res!965665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431688 () Bool)

(declare-fun e!808297 () Bool)

(declare-fun e!808299 () Bool)

(assert (=> b!1431688 (= e!808297 (not e!808299))))

(declare-fun res!965666 () Bool)

(assert (=> b!1431688 (=> res!965666 e!808299)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1431688 (= res!965666 (or (= (select (arr!47028 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47028 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47028 a!2831) index!585) (select (arr!47028 a!2831) j!81)) (= (select (store (arr!47028 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808296 () Bool)

(assert (=> b!1431688 e!808296))

(declare-fun res!965663 () Bool)

(assert (=> b!1431688 (=> (not res!965663) (not e!808296))))

(assert (=> b!1431688 (= res!965663 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48352 0))(
  ( (Unit!48353) )
))
(declare-fun lt!630249 () Unit!48352)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97450 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48352)

(assert (=> b!1431688 (= lt!630249 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431689 () Bool)

(declare-fun res!965670 () Bool)

(assert (=> b!1431689 (=> (not res!965670) (not e!808301))))

(declare-datatypes ((List!33718 0))(
  ( (Nil!33715) (Cons!33714 (h!35037 (_ BitVec 64)) (t!48419 List!33718)) )
))
(declare-fun arrayNoDuplicates!0 (array!97450 (_ BitVec 32) List!33718) Bool)

(assert (=> b!1431689 (= res!965670 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33715))))

(declare-fun b!1431690 () Bool)

(declare-fun res!965671 () Bool)

(assert (=> b!1431690 (=> (not res!965671) (not e!808301))))

(assert (=> b!1431690 (= res!965671 (and (= (size!47579 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47579 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47579 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431691 () Bool)

(declare-fun e!808298 () Bool)

(assert (=> b!1431691 (= e!808298 e!808297)))

(declare-fun res!965673 () Bool)

(assert (=> b!1431691 (=> (not res!965673) (not e!808297))))

(declare-datatypes ((SeekEntryResult!11329 0))(
  ( (MissingZero!11329 (index!47707 (_ BitVec 32))) (Found!11329 (index!47708 (_ BitVec 32))) (Intermediate!11329 (undefined!12141 Bool) (index!47709 (_ BitVec 32)) (x!129358 (_ BitVec 32))) (Undefined!11329) (MissingVacant!11329 (index!47710 (_ BitVec 32))) )
))
(declare-fun lt!630250 () SeekEntryResult!11329)

(declare-fun lt!630248 () array!97450)

(declare-fun lt!630247 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97450 (_ BitVec 32)) SeekEntryResult!11329)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431691 (= res!965673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630247 mask!2608) lt!630247 lt!630248 mask!2608) lt!630250))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431691 (= lt!630250 (Intermediate!11329 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431691 (= lt!630247 (select (store (arr!47028 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431691 (= lt!630248 (array!97451 (store (arr!47028 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47579 a!2831)))))

(declare-fun b!1431692 () Bool)

(declare-fun res!965660 () Bool)

(assert (=> b!1431692 (=> (not res!965660) (not e!808297))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1431692 (= res!965660 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431693 () Bool)

(declare-fun res!965672 () Bool)

(assert (=> b!1431693 (=> (not res!965672) (not e!808297))))

(declare-fun lt!630246 () SeekEntryResult!11329)

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1431693 (= res!965672 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47028 a!2831) j!81) a!2831 mask!2608) lt!630246))))

(declare-fun b!1431694 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97450 (_ BitVec 32)) SeekEntryResult!11329)

(assert (=> b!1431694 (= e!808296 (= (seekEntryOrOpen!0 (select (arr!47028 a!2831) j!81) a!2831 mask!2608) (Found!11329 j!81)))))

(declare-fun b!1431695 () Bool)

(declare-fun res!965667 () Bool)

(assert (=> b!1431695 (=> (not res!965667) (not e!808301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431695 (= res!965667 (validKeyInArray!0 (select (arr!47028 a!2831) j!81)))))

(declare-fun b!1431696 () Bool)

(declare-fun res!965669 () Bool)

(assert (=> b!1431696 (=> (not res!965669) (not e!808301))))

(assert (=> b!1431696 (= res!965669 (validKeyInArray!0 (select (arr!47028 a!2831) i!982)))))

(declare-fun b!1431697 () Bool)

(declare-fun res!965668 () Bool)

(assert (=> b!1431697 (=> (not res!965668) (not e!808297))))

(assert (=> b!1431697 (= res!965668 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630247 lt!630248 mask!2608) lt!630250))))

(declare-fun b!1431698 () Bool)

(assert (=> b!1431698 (= e!808301 e!808298)))

(declare-fun res!965661 () Bool)

(assert (=> b!1431698 (=> (not res!965661) (not e!808298))))

(assert (=> b!1431698 (= res!965661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47028 a!2831) j!81) mask!2608) (select (arr!47028 a!2831) j!81) a!2831 mask!2608) lt!630246))))

(assert (=> b!1431698 (= lt!630246 (Intermediate!11329 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431699 () Bool)

(declare-fun res!965664 () Bool)

(assert (=> b!1431699 (=> (not res!965664) (not e!808301))))

(assert (=> b!1431699 (= res!965664 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47579 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47579 a!2831))))))

(declare-fun b!1431700 () Bool)

(assert (=> b!1431700 (= e!808299 true)))

(declare-fun lt!630245 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431700 (= lt!630245 (nextIndex!0 index!585 x!605 mask!2608))))

(assert (= (and start!123560 res!965662) b!1431690))

(assert (= (and b!1431690 res!965671) b!1431696))

(assert (= (and b!1431696 res!965669) b!1431695))

(assert (= (and b!1431695 res!965667) b!1431687))

(assert (= (and b!1431687 res!965665) b!1431689))

(assert (= (and b!1431689 res!965670) b!1431699))

(assert (= (and b!1431699 res!965664) b!1431698))

(assert (= (and b!1431698 res!965661) b!1431691))

(assert (= (and b!1431691 res!965673) b!1431693))

(assert (= (and b!1431693 res!965672) b!1431697))

(assert (= (and b!1431697 res!965668) b!1431692))

(assert (= (and b!1431692 res!965660) b!1431688))

(assert (= (and b!1431688 res!965663) b!1431694))

(assert (= (and b!1431688 (not res!965666)) b!1431700))

(declare-fun m!1321521 () Bool)

(assert (=> b!1431700 m!1321521))

(declare-fun m!1321523 () Bool)

(assert (=> b!1431688 m!1321523))

(declare-fun m!1321525 () Bool)

(assert (=> b!1431688 m!1321525))

(declare-fun m!1321527 () Bool)

(assert (=> b!1431688 m!1321527))

(declare-fun m!1321529 () Bool)

(assert (=> b!1431688 m!1321529))

(declare-fun m!1321531 () Bool)

(assert (=> b!1431688 m!1321531))

(declare-fun m!1321533 () Bool)

(assert (=> b!1431688 m!1321533))

(assert (=> b!1431695 m!1321531))

(assert (=> b!1431695 m!1321531))

(declare-fun m!1321535 () Bool)

(assert (=> b!1431695 m!1321535))

(assert (=> b!1431694 m!1321531))

(assert (=> b!1431694 m!1321531))

(declare-fun m!1321537 () Bool)

(assert (=> b!1431694 m!1321537))

(declare-fun m!1321539 () Bool)

(assert (=> b!1431696 m!1321539))

(assert (=> b!1431696 m!1321539))

(declare-fun m!1321541 () Bool)

(assert (=> b!1431696 m!1321541))

(declare-fun m!1321543 () Bool)

(assert (=> b!1431689 m!1321543))

(declare-fun m!1321545 () Bool)

(assert (=> start!123560 m!1321545))

(declare-fun m!1321547 () Bool)

(assert (=> start!123560 m!1321547))

(assert (=> b!1431693 m!1321531))

(assert (=> b!1431693 m!1321531))

(declare-fun m!1321549 () Bool)

(assert (=> b!1431693 m!1321549))

(declare-fun m!1321551 () Bool)

(assert (=> b!1431691 m!1321551))

(assert (=> b!1431691 m!1321551))

(declare-fun m!1321553 () Bool)

(assert (=> b!1431691 m!1321553))

(assert (=> b!1431691 m!1321523))

(declare-fun m!1321555 () Bool)

(assert (=> b!1431691 m!1321555))

(assert (=> b!1431698 m!1321531))

(assert (=> b!1431698 m!1321531))

(declare-fun m!1321557 () Bool)

(assert (=> b!1431698 m!1321557))

(assert (=> b!1431698 m!1321557))

(assert (=> b!1431698 m!1321531))

(declare-fun m!1321559 () Bool)

(assert (=> b!1431698 m!1321559))

(declare-fun m!1321561 () Bool)

(assert (=> b!1431687 m!1321561))

(declare-fun m!1321563 () Bool)

(assert (=> b!1431697 m!1321563))

(push 1)

