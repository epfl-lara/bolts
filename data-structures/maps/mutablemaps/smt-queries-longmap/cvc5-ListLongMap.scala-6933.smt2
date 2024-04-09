; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87310 () Bool)

(assert start!87310)

(declare-fun b!1011621 () Bool)

(declare-fun e!569143 () Bool)

(declare-fun e!569145 () Bool)

(assert (=> b!1011621 (= e!569143 e!569145)))

(declare-fun res!679684 () Bool)

(assert (=> b!1011621 (=> (not res!679684) (not e!569145))))

(declare-datatypes ((SeekEntryResult!9572 0))(
  ( (MissingZero!9572 (index!40658 (_ BitVec 32))) (Found!9572 (index!40659 (_ BitVec 32))) (Intermediate!9572 (undefined!10384 Bool) (index!40660 (_ BitVec 32)) (x!88109 (_ BitVec 32))) (Undefined!9572) (MissingVacant!9572 (index!40661 (_ BitVec 32))) )
))
(declare-fun lt!447100 () SeekEntryResult!9572)

(declare-fun lt!447101 () SeekEntryResult!9572)

(assert (=> b!1011621 (= res!679684 (= lt!447100 lt!447101))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((array!63658 0))(
  ( (array!63659 (arr!30640 (Array (_ BitVec 32) (_ BitVec 64))) (size!31143 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63658)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63658 (_ BitVec 32)) SeekEntryResult!9572)

(assert (=> b!1011621 (= lt!447100 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30640 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011622 () Bool)

(declare-fun e!569146 () Bool)

(assert (=> b!1011622 (= e!569146 (not true))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1011622 (= resIndex!38 i!1194)))

(declare-fun lt!447107 () (_ BitVec 32))

(declare-datatypes ((Unit!32984 0))(
  ( (Unit!32985) )
))
(declare-fun lt!447105 () Unit!32984)

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!63658 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32984)

(assert (=> b!1011622 (= lt!447105 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3219 i!1194 k!2224 j!170 lt!447107 (bvadd #b00000000000000000000000000000001 x!1245) resIndex!38 resX!38 mask!3464))))

(declare-fun b!1011623 () Bool)

(declare-fun res!679685 () Bool)

(declare-fun e!569147 () Bool)

(assert (=> b!1011623 (=> (not res!679685) (not e!569147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1011623 (= res!679685 (validKeyInArray!0 k!2224))))

(declare-fun b!1011624 () Bool)

(declare-fun res!679687 () Bool)

(declare-fun e!569140 () Bool)

(assert (=> b!1011624 (=> (not res!679687) (not e!569140))))

(assert (=> b!1011624 (= res!679687 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1011626 () Bool)

(declare-fun res!679680 () Bool)

(declare-fun e!569142 () Bool)

(assert (=> b!1011626 (=> (not res!679680) (not e!569142))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63658 (_ BitVec 32)) Bool)

(assert (=> b!1011626 (= res!679680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1011627 () Bool)

(declare-fun res!679672 () Bool)

(assert (=> b!1011627 (=> (not res!679672) (not e!569140))))

(declare-fun lt!447106 () array!63658)

(declare-fun lt!447102 () (_ BitVec 64))

(assert (=> b!1011627 (= res!679672 (not (= lt!447100 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!447102 lt!447106 mask!3464))))))

(declare-fun b!1011628 () Bool)

(declare-fun res!679682 () Bool)

(assert (=> b!1011628 (=> (not res!679682) (not e!569147))))

(assert (=> b!1011628 (= res!679682 (validKeyInArray!0 (select (arr!30640 a!3219) j!170)))))

(declare-fun b!1011629 () Bool)

(declare-fun e!569144 () Bool)

(assert (=> b!1011629 (= e!569140 e!569144)))

(declare-fun res!679677 () Bool)

(assert (=> b!1011629 (=> (not res!679677) (not e!569144))))

(assert (=> b!1011629 (= res!679677 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!447107 #b00000000000000000000000000000000) (bvslt lt!447107 (size!31143 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011629 (= lt!447107 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1011630 () Bool)

(declare-fun res!679674 () Bool)

(assert (=> b!1011630 (=> (not res!679674) (not e!569146))))

(declare-fun lt!447108 () SeekEntryResult!9572)

(assert (=> b!1011630 (= res!679674 (not (= lt!447108 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447107 lt!447102 lt!447106 mask!3464))))))

(declare-fun b!1011631 () Bool)

(declare-fun res!679679 () Bool)

(assert (=> b!1011631 (=> (not res!679679) (not e!569142))))

(declare-datatypes ((List!21442 0))(
  ( (Nil!21439) (Cons!21438 (h!22636 (_ BitVec 64)) (t!30451 List!21442)) )
))
(declare-fun arrayNoDuplicates!0 (array!63658 (_ BitVec 32) List!21442) Bool)

(assert (=> b!1011631 (= res!679679 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21439))))

(declare-fun b!1011632 () Bool)

(assert (=> b!1011632 (= e!569144 e!569146)))

(declare-fun res!679673 () Bool)

(assert (=> b!1011632 (=> (not res!679673) (not e!569146))))

(assert (=> b!1011632 (= res!679673 (= lt!447108 lt!447101))))

(assert (=> b!1011632 (= lt!447108 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447107 (select (arr!30640 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011633 () Bool)

(declare-fun res!679681 () Bool)

(assert (=> b!1011633 (=> (not res!679681) (not e!569147))))

(assert (=> b!1011633 (= res!679681 (and (= (size!31143 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31143 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31143 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1011634 () Bool)

(assert (=> b!1011634 (= e!569142 e!569143)))

(declare-fun res!679678 () Bool)

(assert (=> b!1011634 (=> (not res!679678) (not e!569143))))

(declare-fun lt!447104 () SeekEntryResult!9572)

(assert (=> b!1011634 (= res!679678 (= lt!447104 lt!447101))))

(assert (=> b!1011634 (= lt!447101 (Intermediate!9572 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011634 (= lt!447104 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30640 a!3219) j!170) mask!3464) (select (arr!30640 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011635 () Bool)

(assert (=> b!1011635 (= e!569145 e!569140)))

(declare-fun res!679675 () Bool)

(assert (=> b!1011635 (=> (not res!679675) (not e!569140))))

(assert (=> b!1011635 (= res!679675 (not (= lt!447104 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!447102 mask!3464) lt!447102 lt!447106 mask!3464))))))

(assert (=> b!1011635 (= lt!447102 (select (store (arr!30640 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1011635 (= lt!447106 (array!63659 (store (arr!30640 a!3219) i!1194 k!2224) (size!31143 a!3219)))))

(declare-fun res!679686 () Bool)

(assert (=> start!87310 (=> (not res!679686) (not e!569147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87310 (= res!679686 (validMask!0 mask!3464))))

(assert (=> start!87310 e!569147))

(declare-fun array_inv!23630 (array!63658) Bool)

(assert (=> start!87310 (array_inv!23630 a!3219)))

(assert (=> start!87310 true))

(declare-fun b!1011625 () Bool)

(assert (=> b!1011625 (= e!569147 e!569142)))

(declare-fun res!679683 () Bool)

(assert (=> b!1011625 (=> (not res!679683) (not e!569142))))

(declare-fun lt!447103 () SeekEntryResult!9572)

(assert (=> b!1011625 (= res!679683 (or (= lt!447103 (MissingVacant!9572 i!1194)) (= lt!447103 (MissingZero!9572 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63658 (_ BitVec 32)) SeekEntryResult!9572)

(assert (=> b!1011625 (= lt!447103 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1011636 () Bool)

(declare-fun res!679671 () Bool)

(assert (=> b!1011636 (=> (not res!679671) (not e!569142))))

(assert (=> b!1011636 (= res!679671 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31143 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31143 a!3219))))))

(declare-fun b!1011637 () Bool)

(declare-fun res!679676 () Bool)

(assert (=> b!1011637 (=> (not res!679676) (not e!569147))))

(declare-fun arrayContainsKey!0 (array!63658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1011637 (= res!679676 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!87310 res!679686) b!1011633))

(assert (= (and b!1011633 res!679681) b!1011628))

(assert (= (and b!1011628 res!679682) b!1011623))

(assert (= (and b!1011623 res!679685) b!1011637))

(assert (= (and b!1011637 res!679676) b!1011625))

(assert (= (and b!1011625 res!679683) b!1011626))

(assert (= (and b!1011626 res!679680) b!1011631))

(assert (= (and b!1011631 res!679679) b!1011636))

(assert (= (and b!1011636 res!679671) b!1011634))

(assert (= (and b!1011634 res!679678) b!1011621))

(assert (= (and b!1011621 res!679684) b!1011635))

(assert (= (and b!1011635 res!679675) b!1011627))

(assert (= (and b!1011627 res!679672) b!1011624))

(assert (= (and b!1011624 res!679687) b!1011629))

(assert (= (and b!1011629 res!679677) b!1011632))

(assert (= (and b!1011632 res!679673) b!1011630))

(assert (= (and b!1011630 res!679674) b!1011622))

(declare-fun m!935697 () Bool)

(assert (=> b!1011632 m!935697))

(assert (=> b!1011632 m!935697))

(declare-fun m!935699 () Bool)

(assert (=> b!1011632 m!935699))

(declare-fun m!935701 () Bool)

(assert (=> b!1011625 m!935701))

(assert (=> b!1011628 m!935697))

(assert (=> b!1011628 m!935697))

(declare-fun m!935703 () Bool)

(assert (=> b!1011628 m!935703))

(assert (=> b!1011621 m!935697))

(assert (=> b!1011621 m!935697))

(declare-fun m!935705 () Bool)

(assert (=> b!1011621 m!935705))

(declare-fun m!935707 () Bool)

(assert (=> b!1011631 m!935707))

(declare-fun m!935709 () Bool)

(assert (=> b!1011629 m!935709))

(assert (=> b!1011634 m!935697))

(assert (=> b!1011634 m!935697))

(declare-fun m!935711 () Bool)

(assert (=> b!1011634 m!935711))

(assert (=> b!1011634 m!935711))

(assert (=> b!1011634 m!935697))

(declare-fun m!935713 () Bool)

(assert (=> b!1011634 m!935713))

(declare-fun m!935715 () Bool)

(assert (=> b!1011626 m!935715))

(declare-fun m!935717 () Bool)

(assert (=> b!1011637 m!935717))

(declare-fun m!935719 () Bool)

(assert (=> start!87310 m!935719))

(declare-fun m!935721 () Bool)

(assert (=> start!87310 m!935721))

(declare-fun m!935723 () Bool)

(assert (=> b!1011630 m!935723))

(declare-fun m!935725 () Bool)

(assert (=> b!1011627 m!935725))

(declare-fun m!935727 () Bool)

(assert (=> b!1011635 m!935727))

(assert (=> b!1011635 m!935727))

(declare-fun m!935729 () Bool)

(assert (=> b!1011635 m!935729))

(declare-fun m!935731 () Bool)

(assert (=> b!1011635 m!935731))

(declare-fun m!935733 () Bool)

(assert (=> b!1011635 m!935733))

(declare-fun m!935735 () Bool)

(assert (=> b!1011622 m!935735))

(declare-fun m!935737 () Bool)

(assert (=> b!1011623 m!935737))

(push 1)

