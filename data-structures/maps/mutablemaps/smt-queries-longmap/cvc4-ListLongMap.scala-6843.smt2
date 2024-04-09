; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86186 () Bool)

(assert start!86186)

(declare-fun b!997677 () Bool)

(declare-fun e!562705 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!441483 () (_ BitVec 32))

(assert (=> b!997677 (= e!562705 (and (bvsge mask!3464 #b00000000000000000000000000000000) (or (bvslt lt!441483 #b00000000000000000000000000000000) (bvsge lt!441483 (bvadd #b00000000000000000000000000000001 mask!3464)))))))

(declare-fun b!997678 () Bool)

(declare-fun res!667791 () Bool)

(declare-fun e!562706 () Bool)

(assert (=> b!997678 (=> (not res!667791) (not e!562706))))

(declare-datatypes ((array!63092 0))(
  ( (array!63093 (arr!30372 (Array (_ BitVec 32) (_ BitVec 64))) (size!30875 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63092)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!997678 (= res!667791 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!997679 () Bool)

(declare-fun res!667788 () Bool)

(assert (=> b!997679 (=> (not res!667788) (not e!562706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!997679 (= res!667788 (validKeyInArray!0 k!2224))))

(declare-fun b!997680 () Bool)

(declare-fun e!562704 () Bool)

(assert (=> b!997680 (= e!562704 e!562705)))

(declare-fun res!667795 () Bool)

(assert (=> b!997680 (=> (not res!667795) (not e!562705))))

(declare-datatypes ((SeekEntryResult!9304 0))(
  ( (MissingZero!9304 (index!39586 (_ BitVec 32))) (Found!9304 (index!39587 (_ BitVec 32))) (Intermediate!9304 (undefined!10116 Bool) (index!39588 (_ BitVec 32)) (x!87043 (_ BitVec 32))) (Undefined!9304) (MissingVacant!9304 (index!39589 (_ BitVec 32))) )
))
(declare-fun lt!441481 () SeekEntryResult!9304)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63092 (_ BitVec 32)) SeekEntryResult!9304)

(assert (=> b!997680 (= res!667795 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!441483 (select (arr!30372 a!3219) j!170) a!3219 mask!3464) lt!441481))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!997680 (= lt!441481 (Intermediate!9304 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997680 (= lt!441483 (toIndex!0 (select (arr!30372 a!3219) j!170) mask!3464))))

(declare-fun b!997682 () Bool)

(declare-fun res!667790 () Bool)

(assert (=> b!997682 (=> (not res!667790) (not e!562704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63092 (_ BitVec 32)) Bool)

(assert (=> b!997682 (= res!667790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!997683 () Bool)

(declare-fun res!667796 () Bool)

(assert (=> b!997683 (=> (not res!667796) (not e!562706))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!997683 (= res!667796 (and (= (size!30875 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30875 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30875 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!997684 () Bool)

(declare-fun res!667798 () Bool)

(assert (=> b!997684 (=> (not res!667798) (not e!562704))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!997684 (= res!667798 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30875 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30875 a!3219))))))

(declare-fun b!997685 () Bool)

(assert (=> b!997685 (= e!562706 e!562704)))

(declare-fun res!667794 () Bool)

(assert (=> b!997685 (=> (not res!667794) (not e!562704))))

(declare-fun lt!441482 () SeekEntryResult!9304)

(assert (=> b!997685 (= res!667794 (or (= lt!441482 (MissingVacant!9304 i!1194)) (= lt!441482 (MissingZero!9304 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63092 (_ BitVec 32)) SeekEntryResult!9304)

(assert (=> b!997685 (= lt!441482 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!997686 () Bool)

(declare-fun res!667792 () Bool)

(assert (=> b!997686 (=> (not res!667792) (not e!562704))))

(declare-datatypes ((List!21174 0))(
  ( (Nil!21171) (Cons!21170 (h!22338 (_ BitVec 64)) (t!30183 List!21174)) )
))
(declare-fun arrayNoDuplicates!0 (array!63092 (_ BitVec 32) List!21174) Bool)

(assert (=> b!997686 (= res!667792 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21171))))

(declare-fun b!997687 () Bool)

(declare-fun res!667789 () Bool)

(assert (=> b!997687 (=> (not res!667789) (not e!562705))))

(assert (=> b!997687 (= res!667789 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30372 a!3219) j!170) a!3219 mask!3464) lt!441481))))

(declare-fun b!997681 () Bool)

(declare-fun res!667797 () Bool)

(assert (=> b!997681 (=> (not res!667797) (not e!562706))))

(assert (=> b!997681 (= res!667797 (validKeyInArray!0 (select (arr!30372 a!3219) j!170)))))

(declare-fun res!667793 () Bool)

(assert (=> start!86186 (=> (not res!667793) (not e!562706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86186 (= res!667793 (validMask!0 mask!3464))))

(assert (=> start!86186 e!562706))

(declare-fun array_inv!23362 (array!63092) Bool)

(assert (=> start!86186 (array_inv!23362 a!3219)))

(assert (=> start!86186 true))

(assert (= (and start!86186 res!667793) b!997683))

(assert (= (and b!997683 res!667796) b!997681))

(assert (= (and b!997681 res!667797) b!997679))

(assert (= (and b!997679 res!667788) b!997678))

(assert (= (and b!997678 res!667791) b!997685))

(assert (= (and b!997685 res!667794) b!997682))

(assert (= (and b!997682 res!667790) b!997686))

(assert (= (and b!997686 res!667792) b!997684))

(assert (= (and b!997684 res!667798) b!997680))

(assert (= (and b!997680 res!667795) b!997687))

(assert (= (and b!997687 res!667789) b!997677))

(declare-fun m!924525 () Bool)

(assert (=> b!997685 m!924525))

(declare-fun m!924527 () Bool)

(assert (=> b!997681 m!924527))

(assert (=> b!997681 m!924527))

(declare-fun m!924529 () Bool)

(assert (=> b!997681 m!924529))

(declare-fun m!924531 () Bool)

(assert (=> b!997679 m!924531))

(assert (=> b!997687 m!924527))

(assert (=> b!997687 m!924527))

(declare-fun m!924533 () Bool)

(assert (=> b!997687 m!924533))

(declare-fun m!924535 () Bool)

(assert (=> b!997678 m!924535))

(declare-fun m!924537 () Bool)

(assert (=> b!997686 m!924537))

(declare-fun m!924539 () Bool)

(assert (=> b!997682 m!924539))

(assert (=> b!997680 m!924527))

(assert (=> b!997680 m!924527))

(declare-fun m!924541 () Bool)

(assert (=> b!997680 m!924541))

(assert (=> b!997680 m!924527))

(declare-fun m!924543 () Bool)

(assert (=> b!997680 m!924543))

(declare-fun m!924545 () Bool)

(assert (=> start!86186 m!924545))

(declare-fun m!924547 () Bool)

(assert (=> start!86186 m!924547))

(push 1)

(assert (not b!997679))

(assert (not b!997680))

(assert (not b!997685))

(assert (not start!86186))

(assert (not b!997687))

(assert (not b!997682))

(assert (not b!997686))

(assert (not b!997678))

(assert (not b!997681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!997766 () Bool)

(declare-fun lt!441511 () SeekEntryResult!9304)

(assert (=> b!997766 (and (bvsge (index!39588 lt!441511) #b00000000000000000000000000000000) (bvslt (index!39588 lt!441511) (size!30875 a!3219)))))

(declare-fun res!667818 () Bool)

(assert (=> b!997766 (= res!667818 (= (select (arr!30372 a!3219) (index!39588 lt!441511)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!562751 () Bool)

(assert (=> b!997766 (=> res!667818 e!562751)))

(declare-fun b!997767 () Bool)

(assert (=> b!997767 (and (bvsge (index!39588 lt!441511) #b00000000000000000000000000000000) (bvslt (index!39588 lt!441511) (size!30875 a!3219)))))

(assert (=> b!997767 (= e!562751 (= (select (arr!30372 a!3219) (index!39588 lt!441511)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!997768 () Bool)

(declare-fun e!562754 () Bool)

(declare-fun e!562755 () Bool)

(assert (=> b!997768 (= e!562754 e!562755)))

(declare-fun res!667817 () Bool)

(assert (=> b!997768 (= res!667817 (and (is-Intermediate!9304 lt!441511) (not (undefined!10116 lt!441511)) (bvslt (x!87043 lt!441511) #b01111111111111111111111111111110) (bvsge (x!87043 lt!441511) #b00000000000000000000000000000000) (bvsge (x!87043 lt!441511) #b00000000000000000000000000000000)))))

(assert (=> b!997768 (=> (not res!667817) (not e!562755))))

(declare-fun b!997769 () Bool)

(assert (=> b!997769 (and (bvsge (index!39588 lt!441511) #b00000000000000000000000000000000) (bvslt (index!39588 lt!441511) (size!30875 a!3219)))))

(declare-fun res!667819 () Bool)

(assert (=> b!997769 (= res!667819 (= (select (arr!30372 a!3219) (index!39588 lt!441511)) (select (arr!30372 a!3219) j!170)))))

(assert (=> b!997769 (=> res!667819 e!562751)))

(assert (=> b!997769 (= e!562755 e!562751)))

(declare-fun d!119051 () Bool)

(assert (=> d!119051 e!562754))

(declare-fun c!101119 () Bool)

(assert (=> d!119051 (= c!101119 (and (is-Intermediate!9304 lt!441511) (undefined!10116 lt!441511)))))

(declare-fun e!562752 () SeekEntryResult!9304)

(assert (=> d!119051 (= lt!441511 e!562752)))

(declare-fun c!101120 () Bool)

(assert (=> d!119051 (= c!101120 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!441510 () (_ BitVec 64))

(assert (=> d!119051 (= lt!441510 (select (arr!30372 a!3219) lt!441483))))

(assert (=> d!119051 (validMask!0 mask!3464)))

(assert (=> d!119051 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!441483 (select (arr!30372 a!3219) j!170) a!3219 mask!3464) lt!441511)))

(declare-fun b!997770 () Bool)

(assert (=> b!997770 (= e!562754 (bvsge (x!87043 lt!441511) #b01111111111111111111111111111110))))

(declare-fun b!997771 () Bool)

(assert (=> b!997771 (= e!562752 (Intermediate!9304 true lt!441483 #b00000000000000000000000000000000))))

(declare-fun b!997772 () Bool)

(declare-fun e!562753 () SeekEntryResult!9304)

(assert (=> b!997772 (= e!562753 (Intermediate!9304 false lt!441483 #b00000000000000000000000000000000))))

(declare-fun b!997773 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!997773 (= e!562753 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!441483 #b00000000000000000000000000000000 mask!3464) (select (arr!30372 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997774 () Bool)

(assert (=> b!997774 (= e!562752 e!562753)))

(declare-fun c!101121 () Bool)

(assert (=> b!997774 (= c!101121 (or (= lt!441510 (select (arr!30372 a!3219) j!170)) (= (bvadd lt!441510 lt!441510) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119051 c!101120) b!997771))

(assert (= (and d!119051 (not c!101120)) b!997774))

(assert (= (and b!997774 c!101121) b!997772))

(assert (= (and b!997774 (not c!101121)) b!997773))

(assert (= (and d!119051 c!101119) b!997770))

(assert (= (and d!119051 (not c!101119)) b!997768))

(assert (= (and b!997768 res!667817) b!997769))

(assert (= (and b!997769 (not res!667819)) b!997766))

(assert (= (and b!997766 (not res!667818)) b!997767))

(declare-fun m!924581 () Bool)

(assert (=> b!997767 m!924581))

(declare-fun m!924583 () Bool)

(assert (=> b!997773 m!924583))

(assert (=> b!997773 m!924583))

(assert (=> b!997773 m!924527))

(declare-fun m!924585 () Bool)

(assert (=> b!997773 m!924585))

(assert (=> b!997766 m!924581))

(declare-fun m!924587 () Bool)

(assert (=> d!119051 m!924587))

(assert (=> d!119051 m!924545))

(assert (=> b!997769 m!924581))

(assert (=> b!997680 d!119051))

(declare-fun d!119059 () Bool)

(declare-fun lt!441525 () (_ BitVec 32))

(declare-fun lt!441524 () (_ BitVec 32))

(assert (=> d!119059 (= lt!441525 (bvmul (bvxor lt!441524 (bvlshr lt!441524 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119059 (= lt!441524 ((_ extract 31 0) (bvand (bvxor (select (arr!30372 a!3219) j!170) (bvlshr (select (arr!30372 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119059 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!667823 (let ((h!22339 ((_ extract 31 0) (bvand (bvxor (select (arr!30372 a!3219) j!170) (bvlshr (select (arr!30372 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87046 (bvmul (bvxor h!22339 (bvlshr h!22339 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87046 (bvlshr x!87046 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!667823 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!667823 #b00000000000000000000000000000000))))))

(assert (=> d!119059 (= (toIndex!0 (select (arr!30372 a!3219) j!170) mask!3464) (bvand (bvxor lt!441525 (bvlshr lt!441525 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!997680 d!119059))

(declare-fun d!119063 () Bool)

(assert (=> d!119063 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86186 d!119063))

(declare-fun d!119075 () Bool)

(assert (=> d!119075 (= (array_inv!23362 a!3219) (bvsge (size!30875 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86186 d!119075))

(declare-fun b!997883 () Bool)

(declare-fun e!562832 () SeekEntryResult!9304)

(assert (=> b!997883 (= e!562832 Undefined!9304)))

(declare-fun b!997885 () Bool)

(declare-fun e!562830 () SeekEntryResult!9304)

(assert (=> b!997885 (= e!562832 e!562830)))

(declare-fun lt!441556 () (_ BitVec 64))

(declare-fun lt!441557 () SeekEntryResult!9304)

(assert (=> b!997885 (= lt!441556 (select (arr!30372 a!3219) (index!39588 lt!441557)))))

(declare-fun c!101153 () Bool)

(assert (=> b!997885 (= c!101153 (= lt!441556 k!2224))))

(declare-fun b!997886 () Bool)

(declare-fun c!101152 () Bool)

(assert (=> b!997886 (= c!101152 (= lt!441556 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!562831 () SeekEntryResult!9304)

(assert (=> b!997886 (= e!562830 e!562831)))

(declare-fun b!997884 () Bool)

(assert (=> b!997884 (= e!562830 (Found!9304 (index!39588 lt!441557)))))

(declare-fun d!119079 () Bool)

(declare-fun lt!441558 () SeekEntryResult!9304)

(assert (=> d!119079 (and (or (is-Undefined!9304 lt!441558) (not (is-Found!9304 lt!441558)) (and (bvsge (index!39587 lt!441558) #b00000000000000000000000000000000) (bvslt (index!39587 lt!441558) (size!30875 a!3219)))) (or (is-Undefined!9304 lt!441558) (is-Found!9304 lt!441558) (not (is-MissingZero!9304 lt!441558)) (and (bvsge (index!39586 lt!441558) #b00000000000000000000000000000000) (bvslt (index!39586 lt!441558) (size!30875 a!3219)))) (or (is-Undefined!9304 lt!441558) (is-Found!9304 lt!441558) (is-MissingZero!9304 lt!441558) (not (is-MissingVacant!9304 lt!441558)) (and (bvsge (index!39589 lt!441558) #b00000000000000000000000000000000) (bvslt (index!39589 lt!441558) (size!30875 a!3219)))) (or (is-Undefined!9304 lt!441558) (ite (is-Found!9304 lt!441558) (= (select (arr!30372 a!3219) (index!39587 lt!441558)) k!2224) (ite (is-MissingZero!9304 lt!441558) (= (select (arr!30372 a!3219) (index!39586 lt!441558)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9304 lt!441558) (= (select (arr!30372 a!3219) (index!39589 lt!441558)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119079 (= lt!441558 e!562832)))

(declare-fun c!101154 () Bool)

(assert (=> d!119079 (= c!101154 (and (is-Intermediate!9304 lt!441557) (undefined!10116 lt!441557)))))

(assert (=> d!119079 (= lt!441557 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119079 (validMask!0 mask!3464)))

(assert (=> d!119079 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441558)))

(declare-fun b!997887 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63092 (_ BitVec 32)) SeekEntryResult!9304)

(assert (=> b!997887 (= e!562831 (seekKeyOrZeroReturnVacant!0 (x!87043 lt!441557) (index!39588 lt!441557) (index!39588 lt!441557) k!2224 a!3219 mask!3464))))

(declare-fun b!997888 () Bool)

(assert (=> b!997888 (= e!562831 (MissingZero!9304 (index!39588 lt!441557)))))

(assert (= (and d!119079 c!101154) b!997883))

(assert (= (and d!119079 (not c!101154)) b!997885))

(assert (= (and b!997885 c!101153) b!997884))

(assert (= (and b!997885 (not c!101153)) b!997886))

(assert (= (and b!997886 c!101152) b!997888))

(assert (= (and b!997886 (not c!101152)) b!997887))

(declare-fun m!924637 () Bool)

(assert (=> b!997885 m!924637))

(declare-fun m!924639 () Bool)

(assert (=> d!119079 m!924639))

(declare-fun m!924641 () Bool)

(assert (=> d!119079 m!924641))

(declare-fun m!924643 () Bool)

(assert (=> d!119079 m!924643))

(assert (=> d!119079 m!924643))

(declare-fun m!924645 () Bool)

(assert (=> d!119079 m!924645))

(declare-fun m!924647 () Bool)

(assert (=> d!119079 m!924647))

(assert (=> d!119079 m!924545))

(declare-fun m!924649 () Bool)

(assert (=> b!997887 m!924649))

(assert (=> b!997685 d!119079))

(declare-fun b!997898 () Bool)

(declare-fun lt!441562 () SeekEntryResult!9304)

(assert (=> b!997898 (and (bvsge (index!39588 lt!441562) #b00000000000000000000000000000000) (bvslt (index!39588 lt!441562) (size!30875 a!3219)))))

(declare-fun res!667874 () Bool)

(assert (=> b!997898 (= res!667874 (= (select (arr!30372 a!3219) (index!39588 lt!441562)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!562838 () Bool)

(assert (=> b!997898 (=> res!667874 e!562838)))

(declare-fun b!997899 () Bool)

(assert (=> b!997899 (and (bvsge (index!39588 lt!441562) #b00000000000000000000000000000000) (bvslt (index!39588 lt!441562) (size!30875 a!3219)))))

(assert (=> b!997899 (= e!562838 (= (select (arr!30372 a!3219) (index!39588 lt!441562)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!997900 () Bool)

(declare-fun e!562841 () Bool)

(declare-fun e!562842 () Bool)

(assert (=> b!997900 (= e!562841 e!562842)))

(declare-fun res!667873 () Bool)

(assert (=> b!997900 (= res!667873 (and (is-Intermediate!9304 lt!441562) (not (undefined!10116 lt!441562)) (bvslt (x!87043 lt!441562) #b01111111111111111111111111111110) (bvsge (x!87043 lt!441562) #b00000000000000000000000000000000) (bvsge (x!87043 lt!441562) x!1245)))))

(assert (=> b!997900 (=> (not res!667873) (not e!562842))))

(declare-fun b!997901 () Bool)

(assert (=> b!997901 (and (bvsge (index!39588 lt!441562) #b00000000000000000000000000000000) (bvslt (index!39588 lt!441562) (size!30875 a!3219)))))

(declare-fun res!667875 () Bool)

(assert (=> b!997901 (= res!667875 (= (select (arr!30372 a!3219) (index!39588 lt!441562)) (select (arr!30372 a!3219) j!170)))))

(assert (=> b!997901 (=> res!667875 e!562838)))

(assert (=> b!997901 (= e!562842 e!562838)))

(declare-fun d!119085 () Bool)

(assert (=> d!119085 e!562841))

(declare-fun c!101158 () Bool)

(assert (=> d!119085 (= c!101158 (and (is-Intermediate!9304 lt!441562) (undefined!10116 lt!441562)))))

(declare-fun e!562839 () SeekEntryResult!9304)

(assert (=> d!119085 (= lt!441562 e!562839)))

(declare-fun c!101159 () Bool)

(assert (=> d!119085 (= c!101159 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!441561 () (_ BitVec 64))

(assert (=> d!119085 (= lt!441561 (select (arr!30372 a!3219) index!1507))))

(assert (=> d!119085 (validMask!0 mask!3464)))

(assert (=> d!119085 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30372 a!3219) j!170) a!3219 mask!3464) lt!441562)))

(declare-fun b!997902 () Bool)

(assert (=> b!997902 (= e!562841 (bvsge (x!87043 lt!441562) #b01111111111111111111111111111110))))

(declare-fun b!997903 () Bool)

(assert (=> b!997903 (= e!562839 (Intermediate!9304 true index!1507 x!1245))))

(declare-fun b!997904 () Bool)

(declare-fun e!562840 () SeekEntryResult!9304)

(assert (=> b!997904 (= e!562840 (Intermediate!9304 false index!1507 x!1245))))

(declare-fun b!997905 () Bool)

(assert (=> b!997905 (= e!562840 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30372 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!997906 () Bool)

(assert (=> b!997906 (= e!562839 e!562840)))

(declare-fun c!101160 () Bool)

(assert (=> b!997906 (= c!101160 (or (= lt!441561 (select (arr!30372 a!3219) j!170)) (= (bvadd lt!441561 lt!441561) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119085 c!101159) b!997903))

(assert (= (and d!119085 (not c!101159)) b!997906))

(assert (= (and b!997906 c!101160) b!997904))

(assert (= (and b!997906 (not c!101160)) b!997905))

(assert (= (and d!119085 c!101158) b!997902))

(assert (= (and d!119085 (not c!101158)) b!997900))

(assert (= (and b!997900 res!667873) b!997901))

(assert (= (and b!997901 (not res!667875)) b!997898))

(assert (= (and b!997898 (not res!667874)) b!997899))

(declare-fun m!924659 () Bool)

(assert (=> b!997899 m!924659))

(declare-fun m!924661 () Bool)

(assert (=> b!997905 m!924661))

(assert (=> b!997905 m!924661))

(assert (=> b!997905 m!924527))

(declare-fun m!924663 () Bool)

(assert (=> b!997905 m!924663))

(assert (=> b!997898 m!924659))

(declare-fun m!924665 () Bool)

(assert (=> d!119085 m!924665))

(assert (=> d!119085 m!924545))

(assert (=> b!997901 m!924659))

(assert (=> b!997687 d!119085))

(declare-fun bm!42271 () Bool)

(declare-fun call!42274 () Bool)

(declare-fun c!101163 () Bool)

(assert (=> bm!42271 (= call!42274 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101163 (Cons!21170 (select (arr!30372 a!3219) #b00000000000000000000000000000000) Nil!21171) Nil!21171)))))

(declare-fun b!997917 () Bool)

(declare-fun e!562854 () Bool)

(declare-fun contains!5881 (List!21174 (_ BitVec 64)) Bool)

(assert (=> b!997917 (= e!562854 (contains!5881 Nil!21171 (select (arr!30372 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997918 () Bool)

(declare-fun e!562853 () Bool)

(assert (=> b!997918 (= e!562853 call!42274)))

(declare-fun b!997919 () Bool)

(declare-fun e!562851 () Bool)

(declare-fun e!562852 () Bool)

(assert (=> b!997919 (= e!562851 e!562852)))

(declare-fun res!667883 () Bool)

(assert (=> b!997919 (=> (not res!667883) (not e!562852))))

(assert (=> b!997919 (= res!667883 (not e!562854))))

(declare-fun res!667882 () Bool)

(assert (=> b!997919 (=> (not res!667882) (not e!562854))))

(assert (=> b!997919 (= res!667882 (validKeyInArray!0 (select (arr!30372 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!997920 () Bool)

(assert (=> b!997920 (= e!562852 e!562853)))

(assert (=> b!997920 (= c!101163 (validKeyInArray!0 (select (arr!30372 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119091 () Bool)

(declare-fun res!667884 () Bool)

(assert (=> d!119091 (=> res!667884 e!562851)))

(assert (=> d!119091 (= res!667884 (bvsge #b00000000000000000000000000000000 (size!30875 a!3219)))))

(assert (=> d!119091 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21171) e!562851)))

(declare-fun b!997921 () Bool)

(assert (=> b!997921 (= e!562853 call!42274)))

(assert (= (and d!119091 (not res!667884)) b!997919))

(assert (= (and b!997919 res!667882) b!997917))

