; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86988 () Bool)

(assert start!86988)

(declare-fun b!1008729 () Bool)

(declare-fun e!567562 () Bool)

(declare-fun e!567561 () Bool)

(assert (=> b!1008729 (= e!567562 e!567561)))

(declare-fun res!677785 () Bool)

(assert (=> b!1008729 (=> (not res!677785) (not e!567561))))

(declare-datatypes ((SeekEntryResult!9543 0))(
  ( (MissingZero!9543 (index!40542 (_ BitVec 32))) (Found!9543 (index!40543 (_ BitVec 32))) (Intermediate!9543 (undefined!10355 Bool) (index!40544 (_ BitVec 32)) (x!87958 (_ BitVec 32))) (Undefined!9543) (MissingVacant!9543 (index!40545 (_ BitVec 32))) )
))
(declare-fun lt!445860 () SeekEntryResult!9543)

(declare-fun lt!445859 () SeekEntryResult!9543)

(assert (=> b!1008729 (= res!677785 (= lt!445860 lt!445859))))

(declare-datatypes ((array!63588 0))(
  ( (array!63589 (arr!30611 (Array (_ BitVec 32) (_ BitVec 64))) (size!31114 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63588)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63588 (_ BitVec 32)) SeekEntryResult!9543)

(assert (=> b!1008729 (= lt!445860 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30611 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008730 () Bool)

(declare-fun e!567565 () Bool)

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008730 (= e!567565 (bvsgt (bvadd #b00000000000000000000000000000001 x!1245) resX!38))))

(declare-fun lt!445856 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008730 (= lt!445856 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008731 () Bool)

(declare-fun res!677778 () Bool)

(declare-fun e!567563 () Bool)

(assert (=> b!1008731 (=> (not res!677778) (not e!567563))))

(declare-datatypes ((List!21413 0))(
  ( (Nil!21410) (Cons!21409 (h!22595 (_ BitVec 64)) (t!30422 List!21413)) )
))
(declare-fun arrayNoDuplicates!0 (array!63588 (_ BitVec 32) List!21413) Bool)

(assert (=> b!1008731 (= res!677778 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21410))))

(declare-fun b!1008733 () Bool)

(declare-fun res!677790 () Bool)

(assert (=> b!1008733 (=> (not res!677790) (not e!567563))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1008733 (= res!677790 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31114 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31114 a!3219))))))

(declare-fun b!1008734 () Bool)

(assert (=> b!1008734 (= e!567561 e!567565)))

(declare-fun res!677781 () Bool)

(assert (=> b!1008734 (=> (not res!677781) (not e!567565))))

(declare-fun lt!445857 () (_ BitVec 64))

(declare-fun lt!445855 () SeekEntryResult!9543)

(declare-fun lt!445858 () array!63588)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008734 (= res!677781 (not (= lt!445855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445857 mask!3464) lt!445857 lt!445858 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1008734 (= lt!445857 (select (store (arr!30611 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1008734 (= lt!445858 (array!63589 (store (arr!30611 a!3219) i!1194 k0!2224) (size!31114 a!3219)))))

(declare-fun b!1008735 () Bool)

(declare-fun res!677783 () Bool)

(declare-fun e!567566 () Bool)

(assert (=> b!1008735 (=> (not res!677783) (not e!567566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008735 (= res!677783 (validKeyInArray!0 k0!2224))))

(declare-fun b!1008736 () Bool)

(assert (=> b!1008736 (= e!567563 e!567562)))

(declare-fun res!677786 () Bool)

(assert (=> b!1008736 (=> (not res!677786) (not e!567562))))

(assert (=> b!1008736 (= res!677786 (= lt!445855 lt!445859))))

(assert (=> b!1008736 (= lt!445859 (Intermediate!9543 false resIndex!38 resX!38))))

(assert (=> b!1008736 (= lt!445855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) (select (arr!30611 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008737 () Bool)

(declare-fun res!677779 () Bool)

(assert (=> b!1008737 (=> (not res!677779) (not e!567565))))

(assert (=> b!1008737 (= res!677779 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008738 () Bool)

(declare-fun res!677791 () Bool)

(assert (=> b!1008738 (=> (not res!677791) (not e!567566))))

(assert (=> b!1008738 (= res!677791 (and (= (size!31114 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31114 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31114 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008739 () Bool)

(declare-fun res!677788 () Bool)

(assert (=> b!1008739 (=> (not res!677788) (not e!567566))))

(assert (=> b!1008739 (= res!677788 (validKeyInArray!0 (select (arr!30611 a!3219) j!170)))))

(declare-fun b!1008740 () Bool)

(assert (=> b!1008740 (= e!567566 e!567563)))

(declare-fun res!677787 () Bool)

(assert (=> b!1008740 (=> (not res!677787) (not e!567563))))

(declare-fun lt!445854 () SeekEntryResult!9543)

(assert (=> b!1008740 (= res!677787 (or (= lt!445854 (MissingVacant!9543 i!1194)) (= lt!445854 (MissingZero!9543 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63588 (_ BitVec 32)) SeekEntryResult!9543)

(assert (=> b!1008740 (= lt!445854 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1008732 () Bool)

(declare-fun res!677780 () Bool)

(assert (=> b!1008732 (=> (not res!677780) (not e!567565))))

(assert (=> b!1008732 (= res!677780 (not (= lt!445860 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445857 lt!445858 mask!3464))))))

(declare-fun res!677782 () Bool)

(assert (=> start!86988 (=> (not res!677782) (not e!567566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86988 (= res!677782 (validMask!0 mask!3464))))

(assert (=> start!86988 e!567566))

(declare-fun array_inv!23601 (array!63588) Bool)

(assert (=> start!86988 (array_inv!23601 a!3219)))

(assert (=> start!86988 true))

(declare-fun b!1008741 () Bool)

(declare-fun res!677784 () Bool)

(assert (=> b!1008741 (=> (not res!677784) (not e!567563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63588 (_ BitVec 32)) Bool)

(assert (=> b!1008741 (= res!677784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008742 () Bool)

(declare-fun res!677789 () Bool)

(assert (=> b!1008742 (=> (not res!677789) (not e!567566))))

(declare-fun arrayContainsKey!0 (array!63588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008742 (= res!677789 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86988 res!677782) b!1008738))

(assert (= (and b!1008738 res!677791) b!1008739))

(assert (= (and b!1008739 res!677788) b!1008735))

(assert (= (and b!1008735 res!677783) b!1008742))

(assert (= (and b!1008742 res!677789) b!1008740))

(assert (= (and b!1008740 res!677787) b!1008741))

(assert (= (and b!1008741 res!677784) b!1008731))

(assert (= (and b!1008731 res!677778) b!1008733))

(assert (= (and b!1008733 res!677790) b!1008736))

(assert (= (and b!1008736 res!677786) b!1008729))

(assert (= (and b!1008729 res!677785) b!1008734))

(assert (= (and b!1008734 res!677781) b!1008732))

(assert (= (and b!1008732 res!677780) b!1008737))

(assert (= (and b!1008737 res!677779) b!1008730))

(declare-fun m!933531 () Bool)

(assert (=> b!1008732 m!933531))

(declare-fun m!933533 () Bool)

(assert (=> b!1008729 m!933533))

(assert (=> b!1008729 m!933533))

(declare-fun m!933535 () Bool)

(assert (=> b!1008729 m!933535))

(declare-fun m!933537 () Bool)

(assert (=> b!1008741 m!933537))

(declare-fun m!933539 () Bool)

(assert (=> b!1008734 m!933539))

(assert (=> b!1008734 m!933539))

(declare-fun m!933541 () Bool)

(assert (=> b!1008734 m!933541))

(declare-fun m!933543 () Bool)

(assert (=> b!1008734 m!933543))

(declare-fun m!933545 () Bool)

(assert (=> b!1008734 m!933545))

(declare-fun m!933547 () Bool)

(assert (=> b!1008731 m!933547))

(declare-fun m!933549 () Bool)

(assert (=> b!1008730 m!933549))

(declare-fun m!933551 () Bool)

(assert (=> b!1008742 m!933551))

(declare-fun m!933553 () Bool)

(assert (=> b!1008735 m!933553))

(assert (=> b!1008739 m!933533))

(assert (=> b!1008739 m!933533))

(declare-fun m!933555 () Bool)

(assert (=> b!1008739 m!933555))

(assert (=> b!1008736 m!933533))

(assert (=> b!1008736 m!933533))

(declare-fun m!933557 () Bool)

(assert (=> b!1008736 m!933557))

(assert (=> b!1008736 m!933557))

(assert (=> b!1008736 m!933533))

(declare-fun m!933559 () Bool)

(assert (=> b!1008736 m!933559))

(declare-fun m!933561 () Bool)

(assert (=> start!86988 m!933561))

(declare-fun m!933563 () Bool)

(assert (=> start!86988 m!933563))

(declare-fun m!933565 () Bool)

(assert (=> b!1008740 m!933565))

(check-sat (not b!1008739) (not b!1008741) (not b!1008735) (not b!1008729) (not b!1008736) (not b!1008742) (not start!86988) (not b!1008731) (not b!1008740) (not b!1008730) (not b!1008734) (not b!1008732))
(check-sat)
(get-model)

(declare-fun d!119661 () Bool)

(declare-fun e!567597 () Bool)

(assert (=> d!119661 e!567597))

(declare-fun c!101635 () Bool)

(declare-fun lt!445887 () SeekEntryResult!9543)

(get-info :version)

(assert (=> d!119661 (= c!101635 (and ((_ is Intermediate!9543) lt!445887) (undefined!10355 lt!445887)))))

(declare-fun e!567595 () SeekEntryResult!9543)

(assert (=> d!119661 (= lt!445887 e!567595)))

(declare-fun c!101636 () Bool)

(assert (=> d!119661 (= c!101636 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!445886 () (_ BitVec 64))

(assert (=> d!119661 (= lt!445886 (select (arr!30611 lt!445858) (toIndex!0 lt!445857 mask!3464)))))

(assert (=> d!119661 (validMask!0 mask!3464)))

(assert (=> d!119661 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445857 mask!3464) lt!445857 lt!445858 mask!3464) lt!445887)))

(declare-fun b!1008803 () Bool)

(assert (=> b!1008803 (and (bvsge (index!40544 lt!445887) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445887) (size!31114 lt!445858)))))

(declare-fun res!677841 () Bool)

(assert (=> b!1008803 (= res!677841 (= (select (arr!30611 lt!445858) (index!40544 lt!445887)) lt!445857))))

(declare-fun e!567599 () Bool)

(assert (=> b!1008803 (=> res!677841 e!567599)))

(declare-fun e!567598 () Bool)

(assert (=> b!1008803 (= e!567598 e!567599)))

(declare-fun b!1008804 () Bool)

(declare-fun e!567596 () SeekEntryResult!9543)

(assert (=> b!1008804 (= e!567596 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!445857 lt!445858 mask!3464))))

(declare-fun b!1008805 () Bool)

(assert (=> b!1008805 (and (bvsge (index!40544 lt!445887) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445887) (size!31114 lt!445858)))))

(assert (=> b!1008805 (= e!567599 (= (select (arr!30611 lt!445858) (index!40544 lt!445887)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1008806 () Bool)

(assert (=> b!1008806 (= e!567596 (Intermediate!9543 false (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1008807 () Bool)

(assert (=> b!1008807 (= e!567597 (bvsge (x!87958 lt!445887) #b01111111111111111111111111111110))))

(declare-fun b!1008808 () Bool)

(assert (=> b!1008808 (and (bvsge (index!40544 lt!445887) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445887) (size!31114 lt!445858)))))

(declare-fun res!677840 () Bool)

(assert (=> b!1008808 (= res!677840 (= (select (arr!30611 lt!445858) (index!40544 lt!445887)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1008808 (=> res!677840 e!567599)))

(declare-fun b!1008809 () Bool)

(assert (=> b!1008809 (= e!567597 e!567598)))

(declare-fun res!677842 () Bool)

(assert (=> b!1008809 (= res!677842 (and ((_ is Intermediate!9543) lt!445887) (not (undefined!10355 lt!445887)) (bvslt (x!87958 lt!445887) #b01111111111111111111111111111110) (bvsge (x!87958 lt!445887) #b00000000000000000000000000000000) (bvsge (x!87958 lt!445887) #b00000000000000000000000000000000)))))

(assert (=> b!1008809 (=> (not res!677842) (not e!567598))))

(declare-fun b!1008810 () Bool)

(assert (=> b!1008810 (= e!567595 e!567596)))

(declare-fun c!101637 () Bool)

(assert (=> b!1008810 (= c!101637 (or (= lt!445886 lt!445857) (= (bvadd lt!445886 lt!445886) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1008811 () Bool)

(assert (=> b!1008811 (= e!567595 (Intermediate!9543 true (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119661 c!101636) b!1008811))

(assert (= (and d!119661 (not c!101636)) b!1008810))

(assert (= (and b!1008810 c!101637) b!1008806))

(assert (= (and b!1008810 (not c!101637)) b!1008804))

(assert (= (and d!119661 c!101635) b!1008807))

(assert (= (and d!119661 (not c!101635)) b!1008809))

(assert (= (and b!1008809 res!677842) b!1008803))

(assert (= (and b!1008803 (not res!677841)) b!1008808))

(assert (= (and b!1008808 (not res!677840)) b!1008805))

(declare-fun m!933603 () Bool)

(assert (=> b!1008808 m!933603))

(assert (=> b!1008805 m!933603))

(assert (=> b!1008804 m!933539))

(declare-fun m!933605 () Bool)

(assert (=> b!1008804 m!933605))

(assert (=> b!1008804 m!933605))

(declare-fun m!933607 () Bool)

(assert (=> b!1008804 m!933607))

(assert (=> d!119661 m!933539))

(declare-fun m!933609 () Bool)

(assert (=> d!119661 m!933609))

(assert (=> d!119661 m!933561))

(assert (=> b!1008803 m!933603))

(assert (=> b!1008734 d!119661))

(declare-fun d!119663 () Bool)

(declare-fun lt!445893 () (_ BitVec 32))

(declare-fun lt!445892 () (_ BitVec 32))

(assert (=> d!119663 (= lt!445893 (bvmul (bvxor lt!445892 (bvlshr lt!445892 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119663 (= lt!445892 ((_ extract 31 0) (bvand (bvxor lt!445857 (bvlshr lt!445857 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119663 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!677843 (let ((h!22597 ((_ extract 31 0) (bvand (bvxor lt!445857 (bvlshr lt!445857 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87961 (bvmul (bvxor h!22597 (bvlshr h!22597 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87961 (bvlshr x!87961 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!677843 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!677843 #b00000000000000000000000000000000))))))

(assert (=> d!119663 (= (toIndex!0 lt!445857 mask!3464) (bvand (bvxor lt!445893 (bvlshr lt!445893 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1008734 d!119663))

(declare-fun d!119669 () Bool)

(declare-fun e!567602 () Bool)

(assert (=> d!119669 e!567602))

(declare-fun c!101638 () Bool)

(declare-fun lt!445895 () SeekEntryResult!9543)

(assert (=> d!119669 (= c!101638 (and ((_ is Intermediate!9543) lt!445895) (undefined!10355 lt!445895)))))

(declare-fun e!567600 () SeekEntryResult!9543)

(assert (=> d!119669 (= lt!445895 e!567600)))

(declare-fun c!101639 () Bool)

(assert (=> d!119669 (= c!101639 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!445894 () (_ BitVec 64))

(assert (=> d!119669 (= lt!445894 (select (arr!30611 lt!445858) index!1507))))

(assert (=> d!119669 (validMask!0 mask!3464)))

(assert (=> d!119669 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445857 lt!445858 mask!3464) lt!445895)))

(declare-fun b!1008812 () Bool)

(assert (=> b!1008812 (and (bvsge (index!40544 lt!445895) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445895) (size!31114 lt!445858)))))

(declare-fun res!677845 () Bool)

(assert (=> b!1008812 (= res!677845 (= (select (arr!30611 lt!445858) (index!40544 lt!445895)) lt!445857))))

(declare-fun e!567604 () Bool)

(assert (=> b!1008812 (=> res!677845 e!567604)))

(declare-fun e!567603 () Bool)

(assert (=> b!1008812 (= e!567603 e!567604)))

(declare-fun b!1008813 () Bool)

(declare-fun e!567601 () SeekEntryResult!9543)

(assert (=> b!1008813 (= e!567601 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!445857 lt!445858 mask!3464))))

(declare-fun b!1008814 () Bool)

(assert (=> b!1008814 (and (bvsge (index!40544 lt!445895) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445895) (size!31114 lt!445858)))))

(assert (=> b!1008814 (= e!567604 (= (select (arr!30611 lt!445858) (index!40544 lt!445895)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1008815 () Bool)

(assert (=> b!1008815 (= e!567601 (Intermediate!9543 false index!1507 x!1245))))

(declare-fun b!1008816 () Bool)

(assert (=> b!1008816 (= e!567602 (bvsge (x!87958 lt!445895) #b01111111111111111111111111111110))))

(declare-fun b!1008817 () Bool)

(assert (=> b!1008817 (and (bvsge (index!40544 lt!445895) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445895) (size!31114 lt!445858)))))

(declare-fun res!677844 () Bool)

(assert (=> b!1008817 (= res!677844 (= (select (arr!30611 lt!445858) (index!40544 lt!445895)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1008817 (=> res!677844 e!567604)))

(declare-fun b!1008818 () Bool)

(assert (=> b!1008818 (= e!567602 e!567603)))

(declare-fun res!677846 () Bool)

(assert (=> b!1008818 (= res!677846 (and ((_ is Intermediate!9543) lt!445895) (not (undefined!10355 lt!445895)) (bvslt (x!87958 lt!445895) #b01111111111111111111111111111110) (bvsge (x!87958 lt!445895) #b00000000000000000000000000000000) (bvsge (x!87958 lt!445895) x!1245)))))

(assert (=> b!1008818 (=> (not res!677846) (not e!567603))))

(declare-fun b!1008819 () Bool)

(assert (=> b!1008819 (= e!567600 e!567601)))

(declare-fun c!101640 () Bool)

(assert (=> b!1008819 (= c!101640 (or (= lt!445894 lt!445857) (= (bvadd lt!445894 lt!445894) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1008820 () Bool)

(assert (=> b!1008820 (= e!567600 (Intermediate!9543 true index!1507 x!1245))))

(assert (= (and d!119669 c!101639) b!1008820))

(assert (= (and d!119669 (not c!101639)) b!1008819))

(assert (= (and b!1008819 c!101640) b!1008815))

(assert (= (and b!1008819 (not c!101640)) b!1008813))

(assert (= (and d!119669 c!101638) b!1008816))

(assert (= (and d!119669 (not c!101638)) b!1008818))

(assert (= (and b!1008818 res!677846) b!1008812))

(assert (= (and b!1008812 (not res!677845)) b!1008817))

(assert (= (and b!1008817 (not res!677844)) b!1008814))

(declare-fun m!933611 () Bool)

(assert (=> b!1008817 m!933611))

(assert (=> b!1008814 m!933611))

(assert (=> b!1008813 m!933549))

(assert (=> b!1008813 m!933549))

(declare-fun m!933613 () Bool)

(assert (=> b!1008813 m!933613))

(declare-fun m!933615 () Bool)

(assert (=> d!119669 m!933615))

(assert (=> d!119669 m!933561))

(assert (=> b!1008812 m!933611))

(assert (=> b!1008732 d!119669))

(declare-fun bm!42370 () Bool)

(declare-fun call!42373 () Bool)

(assert (=> bm!42370 (= call!42373 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1008841 () Bool)

(declare-fun e!567622 () Bool)

(assert (=> b!1008841 (= e!567622 call!42373)))

(declare-fun b!1008842 () Bool)

(declare-fun e!567620 () Bool)

(assert (=> b!1008842 (= e!567620 call!42373)))

(declare-fun b!1008843 () Bool)

(declare-fun e!567621 () Bool)

(assert (=> b!1008843 (= e!567621 e!567620)))

(declare-fun c!101646 () Bool)

(assert (=> b!1008843 (= c!101646 (validKeyInArray!0 (select (arr!30611 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1008844 () Bool)

(assert (=> b!1008844 (= e!567620 e!567622)))

(declare-fun lt!445913 () (_ BitVec 64))

(assert (=> b!1008844 (= lt!445913 (select (arr!30611 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32960 0))(
  ( (Unit!32961) )
))
(declare-fun lt!445912 () Unit!32960)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63588 (_ BitVec 64) (_ BitVec 32)) Unit!32960)

(assert (=> b!1008844 (= lt!445912 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!445913 #b00000000000000000000000000000000))))

(assert (=> b!1008844 (arrayContainsKey!0 a!3219 lt!445913 #b00000000000000000000000000000000)))

(declare-fun lt!445911 () Unit!32960)

(assert (=> b!1008844 (= lt!445911 lt!445912)))

(declare-fun res!677857 () Bool)

(assert (=> b!1008844 (= res!677857 (= (seekEntryOrOpen!0 (select (arr!30611 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9543 #b00000000000000000000000000000000)))))

(assert (=> b!1008844 (=> (not res!677857) (not e!567622))))

(declare-fun d!119673 () Bool)

(declare-fun res!677858 () Bool)

(assert (=> d!119673 (=> res!677858 e!567621)))

(assert (=> d!119673 (= res!677858 (bvsge #b00000000000000000000000000000000 (size!31114 a!3219)))))

(assert (=> d!119673 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!567621)))

(assert (= (and d!119673 (not res!677858)) b!1008843))

(assert (= (and b!1008843 c!101646) b!1008844))

(assert (= (and b!1008843 (not c!101646)) b!1008842))

(assert (= (and b!1008844 res!677857) b!1008841))

(assert (= (or b!1008841 b!1008842) bm!42370))

(declare-fun m!933629 () Bool)

(assert (=> bm!42370 m!933629))

(declare-fun m!933631 () Bool)

(assert (=> b!1008843 m!933631))

(assert (=> b!1008843 m!933631))

(declare-fun m!933633 () Bool)

(assert (=> b!1008843 m!933633))

(assert (=> b!1008844 m!933631))

(declare-fun m!933635 () Bool)

(assert (=> b!1008844 m!933635))

(declare-fun m!933637 () Bool)

(assert (=> b!1008844 m!933637))

(assert (=> b!1008844 m!933631))

(declare-fun m!933639 () Bool)

(assert (=> b!1008844 m!933639))

(assert (=> b!1008741 d!119673))

(declare-fun b!1008863 () Bool)

(declare-fun e!567637 () Bool)

(declare-fun e!567636 () Bool)

(assert (=> b!1008863 (= e!567637 e!567636)))

(declare-fun c!101653 () Bool)

(assert (=> b!1008863 (= c!101653 (validKeyInArray!0 (select (arr!30611 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119681 () Bool)

(declare-fun res!677867 () Bool)

(declare-fun e!567635 () Bool)

(assert (=> d!119681 (=> res!677867 e!567635)))

(assert (=> d!119681 (= res!677867 (bvsge #b00000000000000000000000000000000 (size!31114 a!3219)))))

(assert (=> d!119681 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21410) e!567635)))

(declare-fun b!1008864 () Bool)

(assert (=> b!1008864 (= e!567635 e!567637)))

(declare-fun res!677865 () Bool)

(assert (=> b!1008864 (=> (not res!677865) (not e!567637))))

(declare-fun e!567638 () Bool)

(assert (=> b!1008864 (= res!677865 (not e!567638))))

(declare-fun res!677866 () Bool)

(assert (=> b!1008864 (=> (not res!677866) (not e!567638))))

(assert (=> b!1008864 (= res!677866 (validKeyInArray!0 (select (arr!30611 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1008865 () Bool)

(declare-fun call!42376 () Bool)

(assert (=> b!1008865 (= e!567636 call!42376)))

(declare-fun b!1008866 () Bool)

(declare-fun contains!5897 (List!21413 (_ BitVec 64)) Bool)

(assert (=> b!1008866 (= e!567638 (contains!5897 Nil!21410 (select (arr!30611 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42373 () Bool)

(assert (=> bm!42373 (= call!42376 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101653 (Cons!21409 (select (arr!30611 a!3219) #b00000000000000000000000000000000) Nil!21410) Nil!21410)))))

(declare-fun b!1008867 () Bool)

(assert (=> b!1008867 (= e!567636 call!42376)))

(assert (= (and d!119681 (not res!677867)) b!1008864))

(assert (= (and b!1008864 res!677866) b!1008866))

(assert (= (and b!1008864 res!677865) b!1008863))

(assert (= (and b!1008863 c!101653) b!1008867))

(assert (= (and b!1008863 (not c!101653)) b!1008865))

(assert (= (or b!1008867 b!1008865) bm!42373))

(assert (=> b!1008863 m!933631))

(assert (=> b!1008863 m!933631))

(assert (=> b!1008863 m!933633))

(assert (=> b!1008864 m!933631))

(assert (=> b!1008864 m!933631))

(assert (=> b!1008864 m!933633))

(assert (=> b!1008866 m!933631))

(assert (=> b!1008866 m!933631))

(declare-fun m!933641 () Bool)

(assert (=> b!1008866 m!933641))

(assert (=> bm!42373 m!933631))

(declare-fun m!933643 () Bool)

(assert (=> bm!42373 m!933643))

(assert (=> b!1008731 d!119681))

(declare-fun d!119683 () Bool)

(declare-fun res!677878 () Bool)

(declare-fun e!567649 () Bool)

(assert (=> d!119683 (=> res!677878 e!567649)))

(assert (=> d!119683 (= res!677878 (= (select (arr!30611 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119683 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!567649)))

(declare-fun b!1008882 () Bool)

(declare-fun e!567650 () Bool)

(assert (=> b!1008882 (= e!567649 e!567650)))

(declare-fun res!677879 () Bool)

(assert (=> b!1008882 (=> (not res!677879) (not e!567650))))

(assert (=> b!1008882 (= res!677879 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31114 a!3219)))))

(declare-fun b!1008883 () Bool)

(assert (=> b!1008883 (= e!567650 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119683 (not res!677878)) b!1008882))

(assert (= (and b!1008882 res!677879) b!1008883))

(assert (=> d!119683 m!933631))

(declare-fun m!933645 () Bool)

(assert (=> b!1008883 m!933645))

(assert (=> b!1008742 d!119683))

(declare-fun d!119685 () Bool)

(declare-fun e!567653 () Bool)

(assert (=> d!119685 e!567653))

(declare-fun c!101656 () Bool)

(declare-fun lt!445919 () SeekEntryResult!9543)

(assert (=> d!119685 (= c!101656 (and ((_ is Intermediate!9543) lt!445919) (undefined!10355 lt!445919)))))

(declare-fun e!567651 () SeekEntryResult!9543)

(assert (=> d!119685 (= lt!445919 e!567651)))

(declare-fun c!101657 () Bool)

(assert (=> d!119685 (= c!101657 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!445918 () (_ BitVec 64))

(assert (=> d!119685 (= lt!445918 (select (arr!30611 a!3219) index!1507))))

(assert (=> d!119685 (validMask!0 mask!3464)))

(assert (=> d!119685 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30611 a!3219) j!170) a!3219 mask!3464) lt!445919)))

(declare-fun b!1008884 () Bool)

(assert (=> b!1008884 (and (bvsge (index!40544 lt!445919) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445919) (size!31114 a!3219)))))

(declare-fun res!677881 () Bool)

(assert (=> b!1008884 (= res!677881 (= (select (arr!30611 a!3219) (index!40544 lt!445919)) (select (arr!30611 a!3219) j!170)))))

(declare-fun e!567655 () Bool)

(assert (=> b!1008884 (=> res!677881 e!567655)))

(declare-fun e!567654 () Bool)

(assert (=> b!1008884 (= e!567654 e!567655)))

(declare-fun e!567652 () SeekEntryResult!9543)

(declare-fun b!1008885 () Bool)

(assert (=> b!1008885 (= e!567652 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30611 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008886 () Bool)

(assert (=> b!1008886 (and (bvsge (index!40544 lt!445919) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445919) (size!31114 a!3219)))))

(assert (=> b!1008886 (= e!567655 (= (select (arr!30611 a!3219) (index!40544 lt!445919)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1008887 () Bool)

(assert (=> b!1008887 (= e!567652 (Intermediate!9543 false index!1507 x!1245))))

(declare-fun b!1008888 () Bool)

(assert (=> b!1008888 (= e!567653 (bvsge (x!87958 lt!445919) #b01111111111111111111111111111110))))

(declare-fun b!1008889 () Bool)

(assert (=> b!1008889 (and (bvsge (index!40544 lt!445919) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445919) (size!31114 a!3219)))))

(declare-fun res!677880 () Bool)

(assert (=> b!1008889 (= res!677880 (= (select (arr!30611 a!3219) (index!40544 lt!445919)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1008889 (=> res!677880 e!567655)))

(declare-fun b!1008890 () Bool)

(assert (=> b!1008890 (= e!567653 e!567654)))

(declare-fun res!677882 () Bool)

(assert (=> b!1008890 (= res!677882 (and ((_ is Intermediate!9543) lt!445919) (not (undefined!10355 lt!445919)) (bvslt (x!87958 lt!445919) #b01111111111111111111111111111110) (bvsge (x!87958 lt!445919) #b00000000000000000000000000000000) (bvsge (x!87958 lt!445919) x!1245)))))

(assert (=> b!1008890 (=> (not res!677882) (not e!567654))))

(declare-fun b!1008891 () Bool)

(assert (=> b!1008891 (= e!567651 e!567652)))

(declare-fun c!101658 () Bool)

(assert (=> b!1008891 (= c!101658 (or (= lt!445918 (select (arr!30611 a!3219) j!170)) (= (bvadd lt!445918 lt!445918) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1008892 () Bool)

(assert (=> b!1008892 (= e!567651 (Intermediate!9543 true index!1507 x!1245))))

(assert (= (and d!119685 c!101657) b!1008892))

(assert (= (and d!119685 (not c!101657)) b!1008891))

(assert (= (and b!1008891 c!101658) b!1008887))

(assert (= (and b!1008891 (not c!101658)) b!1008885))

(assert (= (and d!119685 c!101656) b!1008888))

(assert (= (and d!119685 (not c!101656)) b!1008890))

(assert (= (and b!1008890 res!677882) b!1008884))

(assert (= (and b!1008884 (not res!677881)) b!1008889))

(assert (= (and b!1008889 (not res!677880)) b!1008886))

(declare-fun m!933647 () Bool)

(assert (=> b!1008889 m!933647))

(assert (=> b!1008886 m!933647))

(assert (=> b!1008885 m!933549))

(assert (=> b!1008885 m!933549))

(assert (=> b!1008885 m!933533))

(declare-fun m!933649 () Bool)

(assert (=> b!1008885 m!933649))

(declare-fun m!933651 () Bool)

(assert (=> d!119685 m!933651))

(assert (=> d!119685 m!933561))

(assert (=> b!1008884 m!933647))

(assert (=> b!1008729 d!119685))

(declare-fun b!1008992 () Bool)

(declare-fun c!101693 () Bool)

(declare-fun lt!445959 () (_ BitVec 64))

(assert (=> b!1008992 (= c!101693 (= lt!445959 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567714 () SeekEntryResult!9543)

(declare-fun e!567716 () SeekEntryResult!9543)

(assert (=> b!1008992 (= e!567714 e!567716)))

(declare-fun b!1008993 () Bool)

(declare-fun e!567715 () SeekEntryResult!9543)

(assert (=> b!1008993 (= e!567715 e!567714)))

(declare-fun lt!445960 () SeekEntryResult!9543)

(assert (=> b!1008993 (= lt!445959 (select (arr!30611 a!3219) (index!40544 lt!445960)))))

(declare-fun c!101694 () Bool)

(assert (=> b!1008993 (= c!101694 (= lt!445959 k0!2224))))

(declare-fun b!1008994 () Bool)

(assert (=> b!1008994 (= e!567714 (Found!9543 (index!40544 lt!445960)))))

(declare-fun b!1008995 () Bool)

(assert (=> b!1008995 (= e!567716 (MissingZero!9543 (index!40544 lt!445960)))))

(declare-fun b!1008996 () Bool)

(assert (=> b!1008996 (= e!567715 Undefined!9543)))

(declare-fun d!119687 () Bool)

(declare-fun lt!445958 () SeekEntryResult!9543)

(assert (=> d!119687 (and (or ((_ is Undefined!9543) lt!445958) (not ((_ is Found!9543) lt!445958)) (and (bvsge (index!40543 lt!445958) #b00000000000000000000000000000000) (bvslt (index!40543 lt!445958) (size!31114 a!3219)))) (or ((_ is Undefined!9543) lt!445958) ((_ is Found!9543) lt!445958) (not ((_ is MissingZero!9543) lt!445958)) (and (bvsge (index!40542 lt!445958) #b00000000000000000000000000000000) (bvslt (index!40542 lt!445958) (size!31114 a!3219)))) (or ((_ is Undefined!9543) lt!445958) ((_ is Found!9543) lt!445958) ((_ is MissingZero!9543) lt!445958) (not ((_ is MissingVacant!9543) lt!445958)) (and (bvsge (index!40545 lt!445958) #b00000000000000000000000000000000) (bvslt (index!40545 lt!445958) (size!31114 a!3219)))) (or ((_ is Undefined!9543) lt!445958) (ite ((_ is Found!9543) lt!445958) (= (select (arr!30611 a!3219) (index!40543 lt!445958)) k0!2224) (ite ((_ is MissingZero!9543) lt!445958) (= (select (arr!30611 a!3219) (index!40542 lt!445958)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9543) lt!445958) (= (select (arr!30611 a!3219) (index!40545 lt!445958)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119687 (= lt!445958 e!567715)))

(declare-fun c!101692 () Bool)

(assert (=> d!119687 (= c!101692 (and ((_ is Intermediate!9543) lt!445960) (undefined!10355 lt!445960)))))

(assert (=> d!119687 (= lt!445960 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!119687 (validMask!0 mask!3464)))

(assert (=> d!119687 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!445958)))

(declare-fun b!1008997 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63588 (_ BitVec 32)) SeekEntryResult!9543)

(assert (=> b!1008997 (= e!567716 (seekKeyOrZeroReturnVacant!0 (x!87958 lt!445960) (index!40544 lt!445960) (index!40544 lt!445960) k0!2224 a!3219 mask!3464))))

(assert (= (and d!119687 c!101692) b!1008996))

(assert (= (and d!119687 (not c!101692)) b!1008993))

(assert (= (and b!1008993 c!101694) b!1008994))

(assert (= (and b!1008993 (not c!101694)) b!1008992))

(assert (= (and b!1008992 c!101693) b!1008995))

(assert (= (and b!1008992 (not c!101693)) b!1008997))

(declare-fun m!933705 () Bool)

(assert (=> b!1008993 m!933705))

(assert (=> d!119687 m!933561))

(declare-fun m!933707 () Bool)

(assert (=> d!119687 m!933707))

(declare-fun m!933709 () Bool)

(assert (=> d!119687 m!933709))

(declare-fun m!933711 () Bool)

(assert (=> d!119687 m!933711))

(assert (=> d!119687 m!933707))

(declare-fun m!933713 () Bool)

(assert (=> d!119687 m!933713))

(declare-fun m!933715 () Bool)

(assert (=> d!119687 m!933715))

(declare-fun m!933717 () Bool)

(assert (=> b!1008997 m!933717))

(assert (=> b!1008740 d!119687))

(declare-fun d!119711 () Bool)

(declare-fun lt!445963 () (_ BitVec 32))

(assert (=> d!119711 (and (bvsge lt!445963 #b00000000000000000000000000000000) (bvslt lt!445963 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!119711 (= lt!445963 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!119711 (validMask!0 mask!3464)))

(assert (=> d!119711 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!445963)))

(declare-fun bs!28688 () Bool)

(assert (= bs!28688 d!119711))

(declare-fun m!933719 () Bool)

(assert (=> bs!28688 m!933719))

(assert (=> bs!28688 m!933561))

(assert (=> b!1008730 d!119711))

(declare-fun d!119713 () Bool)

(assert (=> d!119713 (= (validKeyInArray!0 (select (arr!30611 a!3219) j!170)) (and (not (= (select (arr!30611 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30611 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1008739 d!119713))

(declare-fun d!119715 () Bool)

(declare-fun e!567719 () Bool)

(assert (=> d!119715 e!567719))

(declare-fun c!101695 () Bool)

(declare-fun lt!445965 () SeekEntryResult!9543)

(assert (=> d!119715 (= c!101695 (and ((_ is Intermediate!9543) lt!445965) (undefined!10355 lt!445965)))))

(declare-fun e!567717 () SeekEntryResult!9543)

(assert (=> d!119715 (= lt!445965 e!567717)))

(declare-fun c!101696 () Bool)

(assert (=> d!119715 (= c!101696 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!445964 () (_ BitVec 64))

(assert (=> d!119715 (= lt!445964 (select (arr!30611 a!3219) (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464)))))

(assert (=> d!119715 (validMask!0 mask!3464)))

(assert (=> d!119715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) (select (arr!30611 a!3219) j!170) a!3219 mask!3464) lt!445965)))

(declare-fun b!1008998 () Bool)

(assert (=> b!1008998 (and (bvsge (index!40544 lt!445965) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445965) (size!31114 a!3219)))))

(declare-fun res!677919 () Bool)

(assert (=> b!1008998 (= res!677919 (= (select (arr!30611 a!3219) (index!40544 lt!445965)) (select (arr!30611 a!3219) j!170)))))

(declare-fun e!567721 () Bool)

(assert (=> b!1008998 (=> res!677919 e!567721)))

(declare-fun e!567720 () Bool)

(assert (=> b!1008998 (= e!567720 e!567721)))

(declare-fun b!1008999 () Bool)

(declare-fun e!567718 () SeekEntryResult!9543)

(assert (=> b!1008999 (= e!567718 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30611 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009000 () Bool)

(assert (=> b!1009000 (and (bvsge (index!40544 lt!445965) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445965) (size!31114 a!3219)))))

(assert (=> b!1009000 (= e!567721 (= (select (arr!30611 a!3219) (index!40544 lt!445965)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009001 () Bool)

(assert (=> b!1009001 (= e!567718 (Intermediate!9543 false (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009002 () Bool)

(assert (=> b!1009002 (= e!567719 (bvsge (x!87958 lt!445965) #b01111111111111111111111111111110))))

(declare-fun b!1009003 () Bool)

(assert (=> b!1009003 (and (bvsge (index!40544 lt!445965) #b00000000000000000000000000000000) (bvslt (index!40544 lt!445965) (size!31114 a!3219)))))

(declare-fun res!677918 () Bool)

(assert (=> b!1009003 (= res!677918 (= (select (arr!30611 a!3219) (index!40544 lt!445965)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009003 (=> res!677918 e!567721)))

(declare-fun b!1009004 () Bool)

(assert (=> b!1009004 (= e!567719 e!567720)))

(declare-fun res!677920 () Bool)

(assert (=> b!1009004 (= res!677920 (and ((_ is Intermediate!9543) lt!445965) (not (undefined!10355 lt!445965)) (bvslt (x!87958 lt!445965) #b01111111111111111111111111111110) (bvsge (x!87958 lt!445965) #b00000000000000000000000000000000) (bvsge (x!87958 lt!445965) #b00000000000000000000000000000000)))))

(assert (=> b!1009004 (=> (not res!677920) (not e!567720))))

(declare-fun b!1009005 () Bool)

(assert (=> b!1009005 (= e!567717 e!567718)))

(declare-fun c!101697 () Bool)

(assert (=> b!1009005 (= c!101697 (or (= lt!445964 (select (arr!30611 a!3219) j!170)) (= (bvadd lt!445964 lt!445964) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009006 () Bool)

(assert (=> b!1009006 (= e!567717 (Intermediate!9543 true (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119715 c!101696) b!1009006))

(assert (= (and d!119715 (not c!101696)) b!1009005))

(assert (= (and b!1009005 c!101697) b!1009001))

(assert (= (and b!1009005 (not c!101697)) b!1008999))

(assert (= (and d!119715 c!101695) b!1009002))

(assert (= (and d!119715 (not c!101695)) b!1009004))

(assert (= (and b!1009004 res!677920) b!1008998))

(assert (= (and b!1008998 (not res!677919)) b!1009003))

(assert (= (and b!1009003 (not res!677918)) b!1009000))

(declare-fun m!933721 () Bool)

(assert (=> b!1009003 m!933721))

(assert (=> b!1009000 m!933721))

(assert (=> b!1008999 m!933557))

(declare-fun m!933723 () Bool)

(assert (=> b!1008999 m!933723))

(assert (=> b!1008999 m!933723))

(assert (=> b!1008999 m!933533))

(declare-fun m!933725 () Bool)

(assert (=> b!1008999 m!933725))

(assert (=> d!119715 m!933557))

(declare-fun m!933727 () Bool)

(assert (=> d!119715 m!933727))

(assert (=> d!119715 m!933561))

(assert (=> b!1008998 m!933721))

(assert (=> b!1008736 d!119715))

(declare-fun d!119717 () Bool)

(declare-fun lt!445967 () (_ BitVec 32))

(declare-fun lt!445966 () (_ BitVec 32))

(assert (=> d!119717 (= lt!445967 (bvmul (bvxor lt!445966 (bvlshr lt!445966 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119717 (= lt!445966 ((_ extract 31 0) (bvand (bvxor (select (arr!30611 a!3219) j!170) (bvlshr (select (arr!30611 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119717 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!677843 (let ((h!22597 ((_ extract 31 0) (bvand (bvxor (select (arr!30611 a!3219) j!170) (bvlshr (select (arr!30611 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87961 (bvmul (bvxor h!22597 (bvlshr h!22597 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87961 (bvlshr x!87961 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!677843 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!677843 #b00000000000000000000000000000000))))))

(assert (=> d!119717 (= (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) (bvand (bvxor lt!445967 (bvlshr lt!445967 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1008736 d!119717))

(declare-fun d!119719 () Bool)

(assert (=> d!119719 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86988 d!119719))

(declare-fun d!119723 () Bool)

(assert (=> d!119723 (= (array_inv!23601 a!3219) (bvsge (size!31114 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86988 d!119723))

(declare-fun d!119725 () Bool)

(assert (=> d!119725 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1008735 d!119725))

(check-sat (not b!1008813) (not d!119687) (not b!1008864) (not d!119685) (not b!1008843) (not bm!42370) (not b!1008863) (not d!119661) (not bm!42373) (not b!1008804) (not b!1008885) (not b!1008999) (not d!119669) (not b!1008997) (not d!119711) (not d!119715) (not b!1008883) (not b!1008844) (not b!1008866))
(check-sat)
(get-model)

(declare-fun d!119823 () Bool)

(assert (=> d!119823 (= (validKeyInArray!0 (select (arr!30611 a!3219) #b00000000000000000000000000000000)) (and (not (= (select (arr!30611 a!3219) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30611 a!3219) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1008864 d!119823))

(assert (=> b!1008863 d!119823))

(declare-fun d!119825 () Bool)

(declare-fun e!567893 () Bool)

(assert (=> d!119825 e!567893))

(declare-fun c!101786 () Bool)

(declare-fun lt!446070 () SeekEntryResult!9543)

(assert (=> d!119825 (= c!101786 (and ((_ is Intermediate!9543) lt!446070) (undefined!10355 lt!446070)))))

(declare-fun e!567891 () SeekEntryResult!9543)

(assert (=> d!119825 (= lt!446070 e!567891)))

(declare-fun c!101787 () Bool)

(assert (=> d!119825 (= c!101787 (bvsge (bvadd x!1245 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!446069 () (_ BitVec 64))

(assert (=> d!119825 (= lt!446069 (select (arr!30611 lt!445858) (nextIndex!0 index!1507 x!1245 mask!3464)))))

(assert (=> d!119825 (validMask!0 mask!3464)))

(assert (=> d!119825 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!445857 lt!445858 mask!3464) lt!446070)))

(declare-fun b!1009276 () Bool)

(assert (=> b!1009276 (and (bvsge (index!40544 lt!446070) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446070) (size!31114 lt!445858)))))

(declare-fun res!678021 () Bool)

(assert (=> b!1009276 (= res!678021 (= (select (arr!30611 lt!445858) (index!40544 lt!446070)) lt!445857))))

(declare-fun e!567895 () Bool)

(assert (=> b!1009276 (=> res!678021 e!567895)))

(declare-fun e!567894 () Bool)

(assert (=> b!1009276 (= e!567894 e!567895)))

(declare-fun b!1009277 () Bool)

(declare-fun e!567892 () SeekEntryResult!9543)

(assert (=> b!1009277 (= e!567892 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001) mask!3464) lt!445857 lt!445858 mask!3464))))

(declare-fun b!1009278 () Bool)

(assert (=> b!1009278 (and (bvsge (index!40544 lt!446070) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446070) (size!31114 lt!445858)))))

(assert (=> b!1009278 (= e!567895 (= (select (arr!30611 lt!445858) (index!40544 lt!446070)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009279 () Bool)

(assert (=> b!1009279 (= e!567892 (Intermediate!9543 false (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(declare-fun b!1009280 () Bool)

(assert (=> b!1009280 (= e!567893 (bvsge (x!87958 lt!446070) #b01111111111111111111111111111110))))

(declare-fun b!1009281 () Bool)

(assert (=> b!1009281 (and (bvsge (index!40544 lt!446070) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446070) (size!31114 lt!445858)))))

(declare-fun res!678020 () Bool)

(assert (=> b!1009281 (= res!678020 (= (select (arr!30611 lt!445858) (index!40544 lt!446070)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009281 (=> res!678020 e!567895)))

(declare-fun b!1009282 () Bool)

(assert (=> b!1009282 (= e!567893 e!567894)))

(declare-fun res!678022 () Bool)

(assert (=> b!1009282 (= res!678022 (and ((_ is Intermediate!9543) lt!446070) (not (undefined!10355 lt!446070)) (bvslt (x!87958 lt!446070) #b01111111111111111111111111111110) (bvsge (x!87958 lt!446070) #b00000000000000000000000000000000) (bvsge (x!87958 lt!446070) (bvadd x!1245 #b00000000000000000000000000000001))))))

(assert (=> b!1009282 (=> (not res!678022) (not e!567894))))

(declare-fun b!1009283 () Bool)

(assert (=> b!1009283 (= e!567891 e!567892)))

(declare-fun c!101788 () Bool)

(assert (=> b!1009283 (= c!101788 (or (= lt!446069 lt!445857) (= (bvadd lt!446069 lt!446069) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009284 () Bool)

(assert (=> b!1009284 (= e!567891 (Intermediate!9543 true (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(assert (= (and d!119825 c!101787) b!1009284))

(assert (= (and d!119825 (not c!101787)) b!1009283))

(assert (= (and b!1009283 c!101788) b!1009279))

(assert (= (and b!1009283 (not c!101788)) b!1009277))

(assert (= (and d!119825 c!101786) b!1009280))

(assert (= (and d!119825 (not c!101786)) b!1009282))

(assert (= (and b!1009282 res!678022) b!1009276))

(assert (= (and b!1009276 (not res!678021)) b!1009281))

(assert (= (and b!1009281 (not res!678020)) b!1009278))

(declare-fun m!933973 () Bool)

(assert (=> b!1009281 m!933973))

(assert (=> b!1009278 m!933973))

(assert (=> b!1009277 m!933549))

(declare-fun m!933975 () Bool)

(assert (=> b!1009277 m!933975))

(assert (=> b!1009277 m!933975))

(declare-fun m!933977 () Bool)

(assert (=> b!1009277 m!933977))

(assert (=> d!119825 m!933549))

(declare-fun m!933979 () Bool)

(assert (=> d!119825 m!933979))

(assert (=> d!119825 m!933561))

(assert (=> b!1009276 m!933973))

(assert (=> b!1008813 d!119825))

(assert (=> b!1008813 d!119711))

(declare-fun d!119827 () Bool)

(declare-fun e!567898 () Bool)

(assert (=> d!119827 e!567898))

(declare-fun c!101789 () Bool)

(declare-fun lt!446072 () SeekEntryResult!9543)

(assert (=> d!119827 (= c!101789 (and ((_ is Intermediate!9543) lt!446072) (undefined!10355 lt!446072)))))

(declare-fun e!567896 () SeekEntryResult!9543)

(assert (=> d!119827 (= lt!446072 e!567896)))

(declare-fun c!101790 () Bool)

(assert (=> d!119827 (= c!101790 (bvsge (bvadd x!1245 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!446071 () (_ BitVec 64))

(assert (=> d!119827 (= lt!446071 (select (arr!30611 a!3219) (nextIndex!0 index!1507 x!1245 mask!3464)))))

(assert (=> d!119827 (validMask!0 mask!3464)))

(assert (=> d!119827 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30611 a!3219) j!170) a!3219 mask!3464) lt!446072)))

(declare-fun b!1009285 () Bool)

(assert (=> b!1009285 (and (bvsge (index!40544 lt!446072) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446072) (size!31114 a!3219)))))

(declare-fun res!678024 () Bool)

(assert (=> b!1009285 (= res!678024 (= (select (arr!30611 a!3219) (index!40544 lt!446072)) (select (arr!30611 a!3219) j!170)))))

(declare-fun e!567900 () Bool)

(assert (=> b!1009285 (=> res!678024 e!567900)))

(declare-fun e!567899 () Bool)

(assert (=> b!1009285 (= e!567899 e!567900)))

(declare-fun b!1009286 () Bool)

(declare-fun e!567897 () SeekEntryResult!9543)

(assert (=> b!1009286 (= e!567897 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001) mask!3464) (select (arr!30611 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009287 () Bool)

(assert (=> b!1009287 (and (bvsge (index!40544 lt!446072) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446072) (size!31114 a!3219)))))

(assert (=> b!1009287 (= e!567900 (= (select (arr!30611 a!3219) (index!40544 lt!446072)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009288 () Bool)

(assert (=> b!1009288 (= e!567897 (Intermediate!9543 false (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(declare-fun b!1009289 () Bool)

(assert (=> b!1009289 (= e!567898 (bvsge (x!87958 lt!446072) #b01111111111111111111111111111110))))

(declare-fun b!1009290 () Bool)

(assert (=> b!1009290 (and (bvsge (index!40544 lt!446072) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446072) (size!31114 a!3219)))))

(declare-fun res!678023 () Bool)

(assert (=> b!1009290 (= res!678023 (= (select (arr!30611 a!3219) (index!40544 lt!446072)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009290 (=> res!678023 e!567900)))

(declare-fun b!1009291 () Bool)

(assert (=> b!1009291 (= e!567898 e!567899)))

(declare-fun res!678025 () Bool)

(assert (=> b!1009291 (= res!678025 (and ((_ is Intermediate!9543) lt!446072) (not (undefined!10355 lt!446072)) (bvslt (x!87958 lt!446072) #b01111111111111111111111111111110) (bvsge (x!87958 lt!446072) #b00000000000000000000000000000000) (bvsge (x!87958 lt!446072) (bvadd x!1245 #b00000000000000000000000000000001))))))

(assert (=> b!1009291 (=> (not res!678025) (not e!567899))))

(declare-fun b!1009292 () Bool)

(assert (=> b!1009292 (= e!567896 e!567897)))

(declare-fun c!101791 () Bool)

(assert (=> b!1009292 (= c!101791 (or (= lt!446071 (select (arr!30611 a!3219) j!170)) (= (bvadd lt!446071 lt!446071) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009293 () Bool)

(assert (=> b!1009293 (= e!567896 (Intermediate!9543 true (nextIndex!0 index!1507 x!1245 mask!3464) (bvadd x!1245 #b00000000000000000000000000000001)))))

(assert (= (and d!119827 c!101790) b!1009293))

(assert (= (and d!119827 (not c!101790)) b!1009292))

(assert (= (and b!1009292 c!101791) b!1009288))

(assert (= (and b!1009292 (not c!101791)) b!1009286))

(assert (= (and d!119827 c!101789) b!1009289))

(assert (= (and d!119827 (not c!101789)) b!1009291))

(assert (= (and b!1009291 res!678025) b!1009285))

(assert (= (and b!1009285 (not res!678024)) b!1009290))

(assert (= (and b!1009290 (not res!678023)) b!1009287))

(declare-fun m!933981 () Bool)

(assert (=> b!1009290 m!933981))

(assert (=> b!1009287 m!933981))

(assert (=> b!1009286 m!933549))

(assert (=> b!1009286 m!933975))

(assert (=> b!1009286 m!933975))

(assert (=> b!1009286 m!933533))

(declare-fun m!933983 () Bool)

(assert (=> b!1009286 m!933983))

(assert (=> d!119827 m!933549))

(declare-fun m!933985 () Bool)

(assert (=> d!119827 m!933985))

(assert (=> d!119827 m!933561))

(assert (=> b!1009285 m!933981))

(assert (=> b!1008885 d!119827))

(assert (=> b!1008885 d!119711))

(assert (=> b!1008843 d!119823))

(assert (=> d!119685 d!119719))

(declare-fun d!119829 () Bool)

(declare-fun e!567903 () Bool)

(assert (=> d!119829 e!567903))

(declare-fun c!101792 () Bool)

(declare-fun lt!446074 () SeekEntryResult!9543)

(assert (=> d!119829 (= c!101792 (and ((_ is Intermediate!9543) lt!446074) (undefined!10355 lt!446074)))))

(declare-fun e!567901 () SeekEntryResult!9543)

(assert (=> d!119829 (= lt!446074 e!567901)))

(declare-fun c!101793 () Bool)

(assert (=> d!119829 (= c!101793 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!446073 () (_ BitVec 64))

(assert (=> d!119829 (= lt!446073 (select (arr!30611 lt!445858) (nextIndex!0 (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000 mask!3464)))))

(assert (=> d!119829 (validMask!0 mask!3464)))

(assert (=> d!119829 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!445857 lt!445858 mask!3464) lt!446074)))

(declare-fun b!1009294 () Bool)

(assert (=> b!1009294 (and (bvsge (index!40544 lt!446074) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446074) (size!31114 lt!445858)))))

(declare-fun res!678027 () Bool)

(assert (=> b!1009294 (= res!678027 (= (select (arr!30611 lt!445858) (index!40544 lt!446074)) lt!445857))))

(declare-fun e!567905 () Bool)

(assert (=> b!1009294 (=> res!678027 e!567905)))

(declare-fun e!567904 () Bool)

(assert (=> b!1009294 (= e!567904 e!567905)))

(declare-fun e!567902 () SeekEntryResult!9543)

(declare-fun b!1009295 () Bool)

(assert (=> b!1009295 (= e!567902 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3464) lt!445857 lt!445858 mask!3464))))

(declare-fun b!1009296 () Bool)

(assert (=> b!1009296 (and (bvsge (index!40544 lt!446074) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446074) (size!31114 lt!445858)))))

(assert (=> b!1009296 (= e!567905 (= (select (arr!30611 lt!445858) (index!40544 lt!446074)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009297 () Bool)

(assert (=> b!1009297 (= e!567902 (Intermediate!9543 false (nextIndex!0 (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1009298 () Bool)

(assert (=> b!1009298 (= e!567903 (bvsge (x!87958 lt!446074) #b01111111111111111111111111111110))))

(declare-fun b!1009299 () Bool)

(assert (=> b!1009299 (and (bvsge (index!40544 lt!446074) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446074) (size!31114 lt!445858)))))

(declare-fun res!678026 () Bool)

(assert (=> b!1009299 (= res!678026 (= (select (arr!30611 lt!445858) (index!40544 lt!446074)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009299 (=> res!678026 e!567905)))

(declare-fun b!1009300 () Bool)

(assert (=> b!1009300 (= e!567903 e!567904)))

(declare-fun res!678028 () Bool)

(assert (=> b!1009300 (= res!678028 (and ((_ is Intermediate!9543) lt!446074) (not (undefined!10355 lt!446074)) (bvslt (x!87958 lt!446074) #b01111111111111111111111111111110) (bvsge (x!87958 lt!446074) #b00000000000000000000000000000000) (bvsge (x!87958 lt!446074) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1009300 (=> (not res!678028) (not e!567904))))

(declare-fun b!1009301 () Bool)

(assert (=> b!1009301 (= e!567901 e!567902)))

(declare-fun c!101794 () Bool)

(assert (=> b!1009301 (= c!101794 (or (= lt!446073 lt!445857) (= (bvadd lt!446073 lt!446073) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009302 () Bool)

(assert (=> b!1009302 (= e!567901 (Intermediate!9543 true (nextIndex!0 (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119829 c!101793) b!1009302))

(assert (= (and d!119829 (not c!101793)) b!1009301))

(assert (= (and b!1009301 c!101794) b!1009297))

(assert (= (and b!1009301 (not c!101794)) b!1009295))

(assert (= (and d!119829 c!101792) b!1009298))

(assert (= (and d!119829 (not c!101792)) b!1009300))

(assert (= (and b!1009300 res!678028) b!1009294))

(assert (= (and b!1009294 (not res!678027)) b!1009299))

(assert (= (and b!1009299 (not res!678026)) b!1009296))

(declare-fun m!933987 () Bool)

(assert (=> b!1009299 m!933987))

(assert (=> b!1009296 m!933987))

(assert (=> b!1009295 m!933605))

(declare-fun m!933989 () Bool)

(assert (=> b!1009295 m!933989))

(assert (=> b!1009295 m!933989))

(declare-fun m!933991 () Bool)

(assert (=> b!1009295 m!933991))

(assert (=> d!119829 m!933605))

(declare-fun m!933993 () Bool)

(assert (=> d!119829 m!933993))

(assert (=> d!119829 m!933561))

(assert (=> b!1009294 m!933987))

(assert (=> b!1008804 d!119829))

(declare-fun d!119831 () Bool)

(declare-fun lt!446075 () (_ BitVec 32))

(assert (=> d!119831 (and (bvsge lt!446075 #b00000000000000000000000000000000) (bvslt lt!446075 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(assert (=> d!119831 (= lt!446075 (choose!52 (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000 mask!3464))))

(assert (=> d!119831 (validMask!0 mask!3464)))

(assert (=> d!119831 (= (nextIndex!0 (toIndex!0 lt!445857 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446075)))

(declare-fun bs!28697 () Bool)

(assert (= bs!28697 d!119831))

(assert (=> bs!28697 m!933539))

(declare-fun m!933995 () Bool)

(assert (=> bs!28697 m!933995))

(assert (=> bs!28697 m!933561))

(assert (=> b!1008804 d!119831))

(declare-fun d!119833 () Bool)

(declare-fun lt!446080 () SeekEntryResult!9543)

(assert (=> d!119833 (and (or ((_ is Undefined!9543) lt!446080) (not ((_ is Found!9543) lt!446080)) (and (bvsge (index!40543 lt!446080) #b00000000000000000000000000000000) (bvslt (index!40543 lt!446080) (size!31114 a!3219)))) (or ((_ is Undefined!9543) lt!446080) ((_ is Found!9543) lt!446080) (not ((_ is MissingVacant!9543) lt!446080)) (not (= (index!40545 lt!446080) (index!40544 lt!445960))) (and (bvsge (index!40545 lt!446080) #b00000000000000000000000000000000) (bvslt (index!40545 lt!446080) (size!31114 a!3219)))) (or ((_ is Undefined!9543) lt!446080) (ite ((_ is Found!9543) lt!446080) (= (select (arr!30611 a!3219) (index!40543 lt!446080)) k0!2224) (and ((_ is MissingVacant!9543) lt!446080) (= (index!40545 lt!446080) (index!40544 lt!445960)) (= (select (arr!30611 a!3219) (index!40545 lt!446080)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!567912 () SeekEntryResult!9543)

(assert (=> d!119833 (= lt!446080 e!567912)))

(declare-fun c!101803 () Bool)

(assert (=> d!119833 (= c!101803 (bvsge (x!87958 lt!445960) #b01111111111111111111111111111110))))

(declare-fun lt!446081 () (_ BitVec 64))

(assert (=> d!119833 (= lt!446081 (select (arr!30611 a!3219) (index!40544 lt!445960)))))

(assert (=> d!119833 (validMask!0 mask!3464)))

(assert (=> d!119833 (= (seekKeyOrZeroReturnVacant!0 (x!87958 lt!445960) (index!40544 lt!445960) (index!40544 lt!445960) k0!2224 a!3219 mask!3464) lt!446080)))

(declare-fun b!1009315 () Bool)

(declare-fun e!567914 () SeekEntryResult!9543)

(assert (=> b!1009315 (= e!567914 (seekKeyOrZeroReturnVacant!0 (bvadd (x!87958 lt!445960) #b00000000000000000000000000000001) (nextIndex!0 (index!40544 lt!445960) (x!87958 lt!445960) mask!3464) (index!40544 lt!445960) k0!2224 a!3219 mask!3464))))

(declare-fun b!1009316 () Bool)

(declare-fun e!567913 () SeekEntryResult!9543)

(assert (=> b!1009316 (= e!567913 (Found!9543 (index!40544 lt!445960)))))

(declare-fun b!1009317 () Bool)

(declare-fun c!101801 () Bool)

(assert (=> b!1009317 (= c!101801 (= lt!446081 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009317 (= e!567913 e!567914)))

(declare-fun b!1009318 () Bool)

(assert (=> b!1009318 (= e!567912 Undefined!9543)))

(declare-fun b!1009319 () Bool)

(assert (=> b!1009319 (= e!567914 (MissingVacant!9543 (index!40544 lt!445960)))))

(declare-fun b!1009320 () Bool)

(assert (=> b!1009320 (= e!567912 e!567913)))

(declare-fun c!101802 () Bool)

(assert (=> b!1009320 (= c!101802 (= lt!446081 k0!2224))))

(assert (= (and d!119833 c!101803) b!1009318))

(assert (= (and d!119833 (not c!101803)) b!1009320))

(assert (= (and b!1009320 c!101802) b!1009316))

(assert (= (and b!1009320 (not c!101802)) b!1009317))

(assert (= (and b!1009317 c!101801) b!1009319))

(assert (= (and b!1009317 (not c!101801)) b!1009315))

(declare-fun m!933997 () Bool)

(assert (=> d!119833 m!933997))

(declare-fun m!933999 () Bool)

(assert (=> d!119833 m!933999))

(assert (=> d!119833 m!933705))

(assert (=> d!119833 m!933561))

(declare-fun m!934001 () Bool)

(assert (=> b!1009315 m!934001))

(assert (=> b!1009315 m!934001))

(declare-fun m!934003 () Bool)

(assert (=> b!1009315 m!934003))

(assert (=> b!1008997 d!119833))

(assert (=> d!119661 d!119719))

(assert (=> d!119715 d!119719))

(declare-fun d!119835 () Bool)

(assert (=> d!119835 (arrayContainsKey!0 a!3219 lt!445913 #b00000000000000000000000000000000)))

(declare-fun lt!446084 () Unit!32960)

(declare-fun choose!13 (array!63588 (_ BitVec 64) (_ BitVec 32)) Unit!32960)

(assert (=> d!119835 (= lt!446084 (choose!13 a!3219 lt!445913 #b00000000000000000000000000000000))))

(assert (=> d!119835 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!119835 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!445913 #b00000000000000000000000000000000) lt!446084)))

(declare-fun bs!28698 () Bool)

(assert (= bs!28698 d!119835))

(assert (=> bs!28698 m!933637))

(declare-fun m!934005 () Bool)

(assert (=> bs!28698 m!934005))

(assert (=> b!1008844 d!119835))

(declare-fun d!119837 () Bool)

(declare-fun res!678029 () Bool)

(declare-fun e!567915 () Bool)

(assert (=> d!119837 (=> res!678029 e!567915)))

(assert (=> d!119837 (= res!678029 (= (select (arr!30611 a!3219) #b00000000000000000000000000000000) lt!445913))))

(assert (=> d!119837 (= (arrayContainsKey!0 a!3219 lt!445913 #b00000000000000000000000000000000) e!567915)))

(declare-fun b!1009321 () Bool)

(declare-fun e!567916 () Bool)

(assert (=> b!1009321 (= e!567915 e!567916)))

(declare-fun res!678030 () Bool)

(assert (=> b!1009321 (=> (not res!678030) (not e!567916))))

(assert (=> b!1009321 (= res!678030 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31114 a!3219)))))

(declare-fun b!1009322 () Bool)

(assert (=> b!1009322 (= e!567916 (arrayContainsKey!0 a!3219 lt!445913 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119837 (not res!678029)) b!1009321))

(assert (= (and b!1009321 res!678030) b!1009322))

(assert (=> d!119837 m!933631))

(declare-fun m!934007 () Bool)

(assert (=> b!1009322 m!934007))

(assert (=> b!1008844 d!119837))

(declare-fun b!1009323 () Bool)

(declare-fun c!101805 () Bool)

(declare-fun lt!446086 () (_ BitVec 64))

(assert (=> b!1009323 (= c!101805 (= lt!446086 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!567917 () SeekEntryResult!9543)

(declare-fun e!567919 () SeekEntryResult!9543)

(assert (=> b!1009323 (= e!567917 e!567919)))

(declare-fun b!1009324 () Bool)

(declare-fun e!567918 () SeekEntryResult!9543)

(assert (=> b!1009324 (= e!567918 e!567917)))

(declare-fun lt!446087 () SeekEntryResult!9543)

(assert (=> b!1009324 (= lt!446086 (select (arr!30611 a!3219) (index!40544 lt!446087)))))

(declare-fun c!101806 () Bool)

(assert (=> b!1009324 (= c!101806 (= lt!446086 (select (arr!30611 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009325 () Bool)

(assert (=> b!1009325 (= e!567917 (Found!9543 (index!40544 lt!446087)))))

(declare-fun b!1009326 () Bool)

(assert (=> b!1009326 (= e!567919 (MissingZero!9543 (index!40544 lt!446087)))))

(declare-fun b!1009327 () Bool)

(assert (=> b!1009327 (= e!567918 Undefined!9543)))

(declare-fun d!119839 () Bool)

(declare-fun lt!446085 () SeekEntryResult!9543)

(assert (=> d!119839 (and (or ((_ is Undefined!9543) lt!446085) (not ((_ is Found!9543) lt!446085)) (and (bvsge (index!40543 lt!446085) #b00000000000000000000000000000000) (bvslt (index!40543 lt!446085) (size!31114 a!3219)))) (or ((_ is Undefined!9543) lt!446085) ((_ is Found!9543) lt!446085) (not ((_ is MissingZero!9543) lt!446085)) (and (bvsge (index!40542 lt!446085) #b00000000000000000000000000000000) (bvslt (index!40542 lt!446085) (size!31114 a!3219)))) (or ((_ is Undefined!9543) lt!446085) ((_ is Found!9543) lt!446085) ((_ is MissingZero!9543) lt!446085) (not ((_ is MissingVacant!9543) lt!446085)) (and (bvsge (index!40545 lt!446085) #b00000000000000000000000000000000) (bvslt (index!40545 lt!446085) (size!31114 a!3219)))) (or ((_ is Undefined!9543) lt!446085) (ite ((_ is Found!9543) lt!446085) (= (select (arr!30611 a!3219) (index!40543 lt!446085)) (select (arr!30611 a!3219) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9543) lt!446085) (= (select (arr!30611 a!3219) (index!40542 lt!446085)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9543) lt!446085) (= (select (arr!30611 a!3219) (index!40545 lt!446085)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119839 (= lt!446085 e!567918)))

(declare-fun c!101804 () Bool)

(assert (=> d!119839 (= c!101804 (and ((_ is Intermediate!9543) lt!446087) (undefined!10355 lt!446087)))))

(assert (=> d!119839 (= lt!446087 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30611 a!3219) #b00000000000000000000000000000000) mask!3464) (select (arr!30611 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464))))

(assert (=> d!119839 (validMask!0 mask!3464)))

(assert (=> d!119839 (= (seekEntryOrOpen!0 (select (arr!30611 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) lt!446085)))

(declare-fun b!1009328 () Bool)

(assert (=> b!1009328 (= e!567919 (seekKeyOrZeroReturnVacant!0 (x!87958 lt!446087) (index!40544 lt!446087) (index!40544 lt!446087) (select (arr!30611 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464))))

(assert (= (and d!119839 c!101804) b!1009327))

(assert (= (and d!119839 (not c!101804)) b!1009324))

(assert (= (and b!1009324 c!101806) b!1009325))

(assert (= (and b!1009324 (not c!101806)) b!1009323))

(assert (= (and b!1009323 c!101805) b!1009326))

(assert (= (and b!1009323 (not c!101805)) b!1009328))

(declare-fun m!934009 () Bool)

(assert (=> b!1009324 m!934009))

(assert (=> d!119839 m!933561))

(declare-fun m!934011 () Bool)

(assert (=> d!119839 m!934011))

(assert (=> d!119839 m!933631))

(declare-fun m!934013 () Bool)

(assert (=> d!119839 m!934013))

(declare-fun m!934015 () Bool)

(assert (=> d!119839 m!934015))

(assert (=> d!119839 m!933631))

(assert (=> d!119839 m!934011))

(declare-fun m!934017 () Bool)

(assert (=> d!119839 m!934017))

(declare-fun m!934019 () Bool)

(assert (=> d!119839 m!934019))

(assert (=> b!1009328 m!933631))

(declare-fun m!934021 () Bool)

(assert (=> b!1009328 m!934021))

(assert (=> b!1008844 d!119839))

(declare-fun bm!42387 () Bool)

(declare-fun call!42390 () Bool)

(assert (=> bm!42387 (= call!42390 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1009329 () Bool)

(declare-fun e!567922 () Bool)

(assert (=> b!1009329 (= e!567922 call!42390)))

(declare-fun b!1009330 () Bool)

(declare-fun e!567920 () Bool)

(assert (=> b!1009330 (= e!567920 call!42390)))

(declare-fun b!1009331 () Bool)

(declare-fun e!567921 () Bool)

(assert (=> b!1009331 (= e!567921 e!567920)))

(declare-fun c!101807 () Bool)

(assert (=> b!1009331 (= c!101807 (validKeyInArray!0 (select (arr!30611 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1009332 () Bool)

(assert (=> b!1009332 (= e!567920 e!567922)))

(declare-fun lt!446090 () (_ BitVec 64))

(assert (=> b!1009332 (= lt!446090 (select (arr!30611 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!446089 () Unit!32960)

(assert (=> b!1009332 (= lt!446089 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446090 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1009332 (arrayContainsKey!0 a!3219 lt!446090 #b00000000000000000000000000000000)))

(declare-fun lt!446088 () Unit!32960)

(assert (=> b!1009332 (= lt!446088 lt!446089)))

(declare-fun res!678031 () Bool)

(assert (=> b!1009332 (= res!678031 (= (seekEntryOrOpen!0 (select (arr!30611 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3219 mask!3464) (Found!9543 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1009332 (=> (not res!678031) (not e!567922))))

(declare-fun d!119841 () Bool)

(declare-fun res!678032 () Bool)

(assert (=> d!119841 (=> res!678032 e!567921)))

(assert (=> d!119841 (= res!678032 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31114 a!3219)))))

(assert (=> d!119841 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464) e!567921)))

(assert (= (and d!119841 (not res!678032)) b!1009331))

(assert (= (and b!1009331 c!101807) b!1009332))

(assert (= (and b!1009331 (not c!101807)) b!1009330))

(assert (= (and b!1009332 res!678031) b!1009329))

(assert (= (or b!1009329 b!1009330) bm!42387))

(declare-fun m!934023 () Bool)

(assert (=> bm!42387 m!934023))

(declare-fun m!934025 () Bool)

(assert (=> b!1009331 m!934025))

(assert (=> b!1009331 m!934025))

(declare-fun m!934027 () Bool)

(assert (=> b!1009331 m!934027))

(assert (=> b!1009332 m!934025))

(declare-fun m!934029 () Bool)

(assert (=> b!1009332 m!934029))

(declare-fun m!934031 () Bool)

(assert (=> b!1009332 m!934031))

(assert (=> b!1009332 m!934025))

(declare-fun m!934033 () Bool)

(assert (=> b!1009332 m!934033))

(assert (=> bm!42370 d!119841))

(declare-fun d!119843 () Bool)

(declare-fun e!567925 () Bool)

(assert (=> d!119843 e!567925))

(declare-fun c!101808 () Bool)

(declare-fun lt!446092 () SeekEntryResult!9543)

(assert (=> d!119843 (= c!101808 (and ((_ is Intermediate!9543) lt!446092) (undefined!10355 lt!446092)))))

(declare-fun e!567923 () SeekEntryResult!9543)

(assert (=> d!119843 (= lt!446092 e!567923)))

(declare-fun c!101809 () Bool)

(assert (=> d!119843 (= c!101809 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!446091 () (_ BitVec 64))

(assert (=> d!119843 (= lt!446091 (select (arr!30611 a!3219) (toIndex!0 k0!2224 mask!3464)))))

(assert (=> d!119843 (validMask!0 mask!3464)))

(assert (=> d!119843 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464) lt!446092)))

(declare-fun b!1009333 () Bool)

(assert (=> b!1009333 (and (bvsge (index!40544 lt!446092) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446092) (size!31114 a!3219)))))

(declare-fun res!678034 () Bool)

(assert (=> b!1009333 (= res!678034 (= (select (arr!30611 a!3219) (index!40544 lt!446092)) k0!2224))))

(declare-fun e!567927 () Bool)

(assert (=> b!1009333 (=> res!678034 e!567927)))

(declare-fun e!567926 () Bool)

(assert (=> b!1009333 (= e!567926 e!567927)))

(declare-fun b!1009334 () Bool)

(declare-fun e!567924 () SeekEntryResult!9543)

(assert (=> b!1009334 (= e!567924 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2224 mask!3464) #b00000000000000000000000000000000 mask!3464) k0!2224 a!3219 mask!3464))))

(declare-fun b!1009335 () Bool)

(assert (=> b!1009335 (and (bvsge (index!40544 lt!446092) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446092) (size!31114 a!3219)))))

(assert (=> b!1009335 (= e!567927 (= (select (arr!30611 a!3219) (index!40544 lt!446092)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009336 () Bool)

(assert (=> b!1009336 (= e!567924 (Intermediate!9543 false (toIndex!0 k0!2224 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009337 () Bool)

(assert (=> b!1009337 (= e!567925 (bvsge (x!87958 lt!446092) #b01111111111111111111111111111110))))

(declare-fun b!1009338 () Bool)

(assert (=> b!1009338 (and (bvsge (index!40544 lt!446092) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446092) (size!31114 a!3219)))))

(declare-fun res!678033 () Bool)

(assert (=> b!1009338 (= res!678033 (= (select (arr!30611 a!3219) (index!40544 lt!446092)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009338 (=> res!678033 e!567927)))

(declare-fun b!1009339 () Bool)

(assert (=> b!1009339 (= e!567925 e!567926)))

(declare-fun res!678035 () Bool)

(assert (=> b!1009339 (= res!678035 (and ((_ is Intermediate!9543) lt!446092) (not (undefined!10355 lt!446092)) (bvslt (x!87958 lt!446092) #b01111111111111111111111111111110) (bvsge (x!87958 lt!446092) #b00000000000000000000000000000000) (bvsge (x!87958 lt!446092) #b00000000000000000000000000000000)))))

(assert (=> b!1009339 (=> (not res!678035) (not e!567926))))

(declare-fun b!1009340 () Bool)

(assert (=> b!1009340 (= e!567923 e!567924)))

(declare-fun c!101810 () Bool)

(assert (=> b!1009340 (= c!101810 (or (= lt!446091 k0!2224) (= (bvadd lt!446091 lt!446091) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009341 () Bool)

(assert (=> b!1009341 (= e!567923 (Intermediate!9543 true (toIndex!0 k0!2224 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119843 c!101809) b!1009341))

(assert (= (and d!119843 (not c!101809)) b!1009340))

(assert (= (and b!1009340 c!101810) b!1009336))

(assert (= (and b!1009340 (not c!101810)) b!1009334))

(assert (= (and d!119843 c!101808) b!1009337))

(assert (= (and d!119843 (not c!101808)) b!1009339))

(assert (= (and b!1009339 res!678035) b!1009333))

(assert (= (and b!1009333 (not res!678034)) b!1009338))

(assert (= (and b!1009338 (not res!678033)) b!1009335))

(declare-fun m!934035 () Bool)

(assert (=> b!1009338 m!934035))

(assert (=> b!1009335 m!934035))

(assert (=> b!1009334 m!933707))

(declare-fun m!934037 () Bool)

(assert (=> b!1009334 m!934037))

(assert (=> b!1009334 m!934037))

(declare-fun m!934039 () Bool)

(assert (=> b!1009334 m!934039))

(assert (=> d!119843 m!933707))

(declare-fun m!934041 () Bool)

(assert (=> d!119843 m!934041))

(assert (=> d!119843 m!933561))

(assert (=> b!1009333 m!934035))

(assert (=> d!119687 d!119843))

(declare-fun d!119845 () Bool)

(declare-fun lt!446094 () (_ BitVec 32))

(declare-fun lt!446093 () (_ BitVec 32))

(assert (=> d!119845 (= lt!446094 (bvmul (bvxor lt!446093 (bvlshr lt!446093 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119845 (= lt!446093 ((_ extract 31 0) (bvand (bvxor k0!2224 (bvlshr k0!2224 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119845 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!677843 (let ((h!22597 ((_ extract 31 0) (bvand (bvxor k0!2224 (bvlshr k0!2224 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87961 (bvmul (bvxor h!22597 (bvlshr h!22597 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87961 (bvlshr x!87961 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!677843 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!677843 #b00000000000000000000000000000000))))))

(assert (=> d!119845 (= (toIndex!0 k0!2224 mask!3464) (bvand (bvxor lt!446094 (bvlshr lt!446094 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> d!119687 d!119845))

(assert (=> d!119687 d!119719))

(assert (=> d!119669 d!119719))

(declare-fun d!119847 () Bool)

(declare-fun e!567930 () Bool)

(assert (=> d!119847 e!567930))

(declare-fun c!101811 () Bool)

(declare-fun lt!446096 () SeekEntryResult!9543)

(assert (=> d!119847 (= c!101811 (and ((_ is Intermediate!9543) lt!446096) (undefined!10355 lt!446096)))))

(declare-fun e!567928 () SeekEntryResult!9543)

(assert (=> d!119847 (= lt!446096 e!567928)))

(declare-fun c!101812 () Bool)

(assert (=> d!119847 (= c!101812 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!446095 () (_ BitVec 64))

(assert (=> d!119847 (= lt!446095 (select (arr!30611 a!3219) (nextIndex!0 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464)))))

(assert (=> d!119847 (validMask!0 mask!3464)))

(assert (=> d!119847 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30611 a!3219) j!170) a!3219 mask!3464) lt!446096)))

(declare-fun b!1009342 () Bool)

(assert (=> b!1009342 (and (bvsge (index!40544 lt!446096) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446096) (size!31114 a!3219)))))

(declare-fun res!678037 () Bool)

(assert (=> b!1009342 (= res!678037 (= (select (arr!30611 a!3219) (index!40544 lt!446096)) (select (arr!30611 a!3219) j!170)))))

(declare-fun e!567932 () Bool)

(assert (=> b!1009342 (=> res!678037 e!567932)))

(declare-fun e!567931 () Bool)

(assert (=> b!1009342 (= e!567931 e!567932)))

(declare-fun e!567929 () SeekEntryResult!9543)

(declare-fun b!1009343 () Bool)

(assert (=> b!1009343 (= e!567929 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3464) (select (arr!30611 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009344 () Bool)

(assert (=> b!1009344 (and (bvsge (index!40544 lt!446096) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446096) (size!31114 a!3219)))))

(assert (=> b!1009344 (= e!567932 (= (select (arr!30611 a!3219) (index!40544 lt!446096)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009345 () Bool)

(assert (=> b!1009345 (= e!567929 (Intermediate!9543 false (nextIndex!0 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1009346 () Bool)

(assert (=> b!1009346 (= e!567930 (bvsge (x!87958 lt!446096) #b01111111111111111111111111111110))))

(declare-fun b!1009347 () Bool)

(assert (=> b!1009347 (and (bvsge (index!40544 lt!446096) #b00000000000000000000000000000000) (bvslt (index!40544 lt!446096) (size!31114 a!3219)))))

(declare-fun res!678036 () Bool)

(assert (=> b!1009347 (= res!678036 (= (select (arr!30611 a!3219) (index!40544 lt!446096)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009347 (=> res!678036 e!567932)))

(declare-fun b!1009348 () Bool)

(assert (=> b!1009348 (= e!567930 e!567931)))

(declare-fun res!678038 () Bool)

(assert (=> b!1009348 (= res!678038 (and ((_ is Intermediate!9543) lt!446096) (not (undefined!10355 lt!446096)) (bvslt (x!87958 lt!446096) #b01111111111111111111111111111110) (bvsge (x!87958 lt!446096) #b00000000000000000000000000000000) (bvsge (x!87958 lt!446096) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1009348 (=> (not res!678038) (not e!567931))))

(declare-fun b!1009349 () Bool)

(assert (=> b!1009349 (= e!567928 e!567929)))

(declare-fun c!101813 () Bool)

(assert (=> b!1009349 (= c!101813 (or (= lt!446095 (select (arr!30611 a!3219) j!170)) (= (bvadd lt!446095 lt!446095) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009350 () Bool)

(assert (=> b!1009350 (= e!567928 (Intermediate!9543 true (nextIndex!0 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119847 c!101812) b!1009350))

(assert (= (and d!119847 (not c!101812)) b!1009349))

(assert (= (and b!1009349 c!101813) b!1009345))

(assert (= (and b!1009349 (not c!101813)) b!1009343))

(assert (= (and d!119847 c!101811) b!1009346))

(assert (= (and d!119847 (not c!101811)) b!1009348))

(assert (= (and b!1009348 res!678038) b!1009342))

(assert (= (and b!1009342 (not res!678037)) b!1009347))

(assert (= (and b!1009347 (not res!678036)) b!1009344))

(declare-fun m!934043 () Bool)

(assert (=> b!1009347 m!934043))

(assert (=> b!1009344 m!934043))

(assert (=> b!1009343 m!933723))

(declare-fun m!934045 () Bool)

(assert (=> b!1009343 m!934045))

(assert (=> b!1009343 m!934045))

(assert (=> b!1009343 m!933533))

(declare-fun m!934047 () Bool)

(assert (=> b!1009343 m!934047))

(assert (=> d!119847 m!933723))

(declare-fun m!934049 () Bool)

(assert (=> d!119847 m!934049))

(assert (=> d!119847 m!933561))

(assert (=> b!1009342 m!934043))

(assert (=> b!1008999 d!119847))

(declare-fun d!119849 () Bool)

(declare-fun lt!446097 () (_ BitVec 32))

(assert (=> d!119849 (and (bvsge lt!446097 #b00000000000000000000000000000000) (bvslt lt!446097 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(assert (=> d!119849 (= lt!446097 (choose!52 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464))))

(assert (=> d!119849 (validMask!0 mask!3464)))

(assert (=> d!119849 (= (nextIndex!0 (toIndex!0 (select (arr!30611 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446097)))

(declare-fun bs!28699 () Bool)

(assert (= bs!28699 d!119849))

(assert (=> bs!28699 m!933557))

(declare-fun m!934051 () Bool)

(assert (=> bs!28699 m!934051))

(assert (=> bs!28699 m!933561))

(assert (=> b!1008999 d!119849))

(declare-fun d!119851 () Bool)

(declare-fun lt!446100 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!488 (List!21413) (InoxSet (_ BitVec 64)))

(assert (=> d!119851 (= lt!446100 (select (content!488 Nil!21410) (select (arr!30611 a!3219) #b00000000000000000000000000000000)))))

(declare-fun e!567937 () Bool)

(assert (=> d!119851 (= lt!446100 e!567937)))

(declare-fun res!678043 () Bool)

(assert (=> d!119851 (=> (not res!678043) (not e!567937))))

(assert (=> d!119851 (= res!678043 ((_ is Cons!21409) Nil!21410))))

(assert (=> d!119851 (= (contains!5897 Nil!21410 (select (arr!30611 a!3219) #b00000000000000000000000000000000)) lt!446100)))

(declare-fun b!1009355 () Bool)

(declare-fun e!567938 () Bool)

(assert (=> b!1009355 (= e!567937 e!567938)))

(declare-fun res!678044 () Bool)

(assert (=> b!1009355 (=> res!678044 e!567938)))

(assert (=> b!1009355 (= res!678044 (= (h!22595 Nil!21410) (select (arr!30611 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009356 () Bool)

(assert (=> b!1009356 (= e!567938 (contains!5897 (t!30422 Nil!21410) (select (arr!30611 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119851 res!678043) b!1009355))

(assert (= (and b!1009355 (not res!678044)) b!1009356))

(declare-fun m!934053 () Bool)

(assert (=> d!119851 m!934053))

(assert (=> d!119851 m!933631))

(declare-fun m!934055 () Bool)

(assert (=> d!119851 m!934055))

(assert (=> b!1009356 m!933631))

(declare-fun m!934057 () Bool)

(assert (=> b!1009356 m!934057))

(assert (=> b!1008866 d!119851))

(declare-fun d!119853 () Bool)

(declare-fun res!678047 () (_ BitVec 32))

(assert (=> d!119853 (and (bvsge res!678047 #b00000000000000000000000000000000) (bvslt res!678047 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(assert (=> d!119853 true))

(assert (=> d!119853 (= (choose!52 index!1507 x!1245 mask!3464) res!678047)))

(assert (=> d!119711 d!119853))

(assert (=> d!119711 d!119719))

(declare-fun d!119855 () Bool)

(declare-fun res!678048 () Bool)

(declare-fun e!567939 () Bool)

(assert (=> d!119855 (=> res!678048 e!567939)))

(assert (=> d!119855 (= res!678048 (= (select (arr!30611 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!2224))))

(assert (=> d!119855 (= (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!567939)))

(declare-fun b!1009357 () Bool)

(declare-fun e!567940 () Bool)

(assert (=> b!1009357 (= e!567939 e!567940)))

(declare-fun res!678049 () Bool)

(assert (=> b!1009357 (=> (not res!678049) (not e!567940))))

(assert (=> b!1009357 (= res!678049 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!31114 a!3219)))))

(declare-fun b!1009358 () Bool)

(assert (=> b!1009358 (= e!567940 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!119855 (not res!678048)) b!1009357))

(assert (= (and b!1009357 res!678049) b!1009358))

(assert (=> d!119855 m!934025))

(declare-fun m!934059 () Bool)

(assert (=> b!1009358 m!934059))

(assert (=> b!1008883 d!119855))

(declare-fun b!1009359 () Bool)

(declare-fun e!567943 () Bool)

(declare-fun e!567942 () Bool)

(assert (=> b!1009359 (= e!567943 e!567942)))

(declare-fun c!101814 () Bool)

(assert (=> b!1009359 (= c!101814 (validKeyInArray!0 (select (arr!30611 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!119857 () Bool)

(declare-fun res!678052 () Bool)

(declare-fun e!567941 () Bool)

(assert (=> d!119857 (=> res!678052 e!567941)))

(assert (=> d!119857 (= res!678052 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31114 a!3219)))))

(assert (=> d!119857 (= (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101653 (Cons!21409 (select (arr!30611 a!3219) #b00000000000000000000000000000000) Nil!21410) Nil!21410)) e!567941)))

(declare-fun b!1009360 () Bool)

(assert (=> b!1009360 (= e!567941 e!567943)))

(declare-fun res!678050 () Bool)

(assert (=> b!1009360 (=> (not res!678050) (not e!567943))))

(declare-fun e!567944 () Bool)

(assert (=> b!1009360 (= res!678050 (not e!567944))))

(declare-fun res!678051 () Bool)

(assert (=> b!1009360 (=> (not res!678051) (not e!567944))))

(assert (=> b!1009360 (= res!678051 (validKeyInArray!0 (select (arr!30611 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1009361 () Bool)

(declare-fun call!42391 () Bool)

(assert (=> b!1009361 (= e!567942 call!42391)))

(declare-fun b!1009362 () Bool)

(assert (=> b!1009362 (= e!567944 (contains!5897 (ite c!101653 (Cons!21409 (select (arr!30611 a!3219) #b00000000000000000000000000000000) Nil!21410) Nil!21410) (select (arr!30611 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!42388 () Bool)

(assert (=> bm!42388 (= call!42391 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!101814 (Cons!21409 (select (arr!30611 a!3219) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!101653 (Cons!21409 (select (arr!30611 a!3219) #b00000000000000000000000000000000) Nil!21410) Nil!21410)) (ite c!101653 (Cons!21409 (select (arr!30611 a!3219) #b00000000000000000000000000000000) Nil!21410) Nil!21410))))))

(declare-fun b!1009363 () Bool)

(assert (=> b!1009363 (= e!567942 call!42391)))

(assert (= (and d!119857 (not res!678052)) b!1009360))

(assert (= (and b!1009360 res!678051) b!1009362))

(assert (= (and b!1009360 res!678050) b!1009359))

(assert (= (and b!1009359 c!101814) b!1009363))

(assert (= (and b!1009359 (not c!101814)) b!1009361))

(assert (= (or b!1009363 b!1009361) bm!42388))

(assert (=> b!1009359 m!934025))

(assert (=> b!1009359 m!934025))

(assert (=> b!1009359 m!934027))

(assert (=> b!1009360 m!934025))

(assert (=> b!1009360 m!934025))

(assert (=> b!1009360 m!934027))

(assert (=> b!1009362 m!934025))

(assert (=> b!1009362 m!934025))

(declare-fun m!934061 () Bool)

(assert (=> b!1009362 m!934061))

(assert (=> bm!42388 m!934025))

(declare-fun m!934063 () Bool)

(assert (=> bm!42388 m!934063))

(assert (=> bm!42373 d!119857))

(check-sat (not d!119839) (not d!119847) (not b!1009315) (not d!119851) (not bm!42387) (not d!119827) (not b!1009356) (not b!1009343) (not b!1009332) (not b!1009295) (not d!119835) (not bm!42388) (not b!1009286) (not b!1009322) (not d!119825) (not b!1009331) (not d!119849) (not b!1009360) (not b!1009359) (not b!1009362) (not d!119829) (not d!119831) (not b!1009328) (not d!119833) (not b!1009358) (not d!119843) (not b!1009277) (not b!1009334))
(check-sat)
