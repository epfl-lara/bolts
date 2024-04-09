; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86848 () Bool)

(assert start!86848)

(declare-fun b!1006615 () Bool)

(declare-fun res!675864 () Bool)

(declare-fun e!566589 () Bool)

(assert (=> b!1006615 (=> (not res!675864) (not e!566589))))

(declare-datatypes ((array!63499 0))(
  ( (array!63500 (arr!30568 (Array (_ BitVec 32) (_ BitVec 64))) (size!31071 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63499)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63499 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1006615 (= res!675864 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!675868 () Bool)

(assert (=> start!86848 (=> (not res!675868) (not e!566589))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86848 (= res!675868 (validMask!0 mask!3464))))

(assert (=> start!86848 e!566589))

(declare-fun array_inv!23558 (array!63499) Bool)

(assert (=> start!86848 (array_inv!23558 a!3219)))

(assert (=> start!86848 true))

(declare-fun b!1006616 () Bool)

(declare-fun res!675871 () Bool)

(declare-fun e!566592 () Bool)

(assert (=> b!1006616 (=> (not res!675871) (not e!566592))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1006616 (= res!675871 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31071 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31071 a!3219))))))

(declare-fun b!1006617 () Bool)

(declare-fun e!566594 () Bool)

(assert (=> b!1006617 (= e!566592 e!566594)))

(declare-fun res!675867 () Bool)

(assert (=> b!1006617 (=> (not res!675867) (not e!566594))))

(declare-datatypes ((SeekEntryResult!9500 0))(
  ( (MissingZero!9500 (index!40370 (_ BitVec 32))) (Found!9500 (index!40371 (_ BitVec 32))) (Intermediate!9500 (undefined!10312 Bool) (index!40372 (_ BitVec 32)) (x!87797 (_ BitVec 32))) (Undefined!9500) (MissingVacant!9500 (index!40373 (_ BitVec 32))) )
))
(declare-fun lt!444849 () SeekEntryResult!9500)

(declare-fun lt!444847 () SeekEntryResult!9500)

(assert (=> b!1006617 (= res!675867 (= lt!444849 lt!444847))))

(assert (=> b!1006617 (= lt!444847 (Intermediate!9500 false resIndex!38 resX!38))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63499 (_ BitVec 32)) SeekEntryResult!9500)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006617 (= lt!444849 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30568 a!3219) j!170) mask!3464) (select (arr!30568 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006618 () Bool)

(declare-fun res!675869 () Bool)

(assert (=> b!1006618 (=> (not res!675869) (not e!566589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1006618 (= res!675869 (validKeyInArray!0 (select (arr!30568 a!3219) j!170)))))

(declare-fun b!1006619 () Bool)

(declare-fun res!675861 () Bool)

(declare-fun e!566593 () Bool)

(assert (=> b!1006619 (=> (not res!675861) (not e!566593))))

(declare-fun lt!444845 () (_ BitVec 64))

(declare-fun lt!444848 () array!63499)

(declare-fun lt!444844 () SeekEntryResult!9500)

(assert (=> b!1006619 (= res!675861 (not (= lt!444844 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444845 lt!444848 mask!3464))))))

(declare-fun b!1006620 () Bool)

(declare-fun res!675860 () Bool)

(assert (=> b!1006620 (=> (not res!675860) (not e!566592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63499 (_ BitVec 32)) Bool)

(assert (=> b!1006620 (= res!675860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1006621 () Bool)

(declare-fun e!566591 () Bool)

(assert (=> b!1006621 (= e!566591 e!566593)))

(declare-fun res!675870 () Bool)

(assert (=> b!1006621 (=> (not res!675870) (not e!566593))))

(assert (=> b!1006621 (= res!675870 (not (= lt!444849 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444845 mask!3464) lt!444845 lt!444848 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1006621 (= lt!444845 (select (store (arr!30568 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1006621 (= lt!444848 (array!63500 (store (arr!30568 a!3219) i!1194 k!2224) (size!31071 a!3219)))))

(declare-fun b!1006622 () Bool)

(declare-fun res!675865 () Bool)

(assert (=> b!1006622 (=> (not res!675865) (not e!566589))))

(assert (=> b!1006622 (= res!675865 (validKeyInArray!0 k!2224))))

(declare-fun b!1006623 () Bool)

(assert (=> b!1006623 (= e!566589 e!566592)))

(declare-fun res!675863 () Bool)

(assert (=> b!1006623 (=> (not res!675863) (not e!566592))))

(declare-fun lt!444846 () SeekEntryResult!9500)

(assert (=> b!1006623 (= res!675863 (or (= lt!444846 (MissingVacant!9500 i!1194)) (= lt!444846 (MissingZero!9500 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63499 (_ BitVec 32)) SeekEntryResult!9500)

(assert (=> b!1006623 (= lt!444846 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1006624 () Bool)

(assert (=> b!1006624 (= e!566594 e!566591)))

(declare-fun res!675866 () Bool)

(assert (=> b!1006624 (=> (not res!675866) (not e!566591))))

(assert (=> b!1006624 (= res!675866 (= lt!444844 lt!444847))))

(assert (=> b!1006624 (= lt!444844 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30568 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006625 () Bool)

(declare-fun res!675862 () Bool)

(assert (=> b!1006625 (=> (not res!675862) (not e!566589))))

(assert (=> b!1006625 (= res!675862 (and (= (size!31071 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31071 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31071 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1006626 () Bool)

(declare-fun res!675859 () Bool)

(assert (=> b!1006626 (=> (not res!675859) (not e!566592))))

(declare-datatypes ((List!21370 0))(
  ( (Nil!21367) (Cons!21366 (h!22549 (_ BitVec 64)) (t!30379 List!21370)) )
))
(declare-fun arrayNoDuplicates!0 (array!63499 (_ BitVec 32) List!21370) Bool)

(assert (=> b!1006626 (= res!675859 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21367))))

(declare-fun b!1006627 () Bool)

(assert (=> b!1006627 (= e!566593 (and (= index!1507 resIndex!38) (= x!1245 resX!38) (not (= resIndex!38 i!1194))))))

(assert (= (and start!86848 res!675868) b!1006625))

(assert (= (and b!1006625 res!675862) b!1006618))

(assert (= (and b!1006618 res!675869) b!1006622))

(assert (= (and b!1006622 res!675865) b!1006615))

(assert (= (and b!1006615 res!675864) b!1006623))

(assert (= (and b!1006623 res!675863) b!1006620))

(assert (= (and b!1006620 res!675860) b!1006626))

(assert (= (and b!1006626 res!675859) b!1006616))

(assert (= (and b!1006616 res!675871) b!1006617))

(assert (= (and b!1006617 res!675867) b!1006624))

(assert (= (and b!1006624 res!675866) b!1006621))

(assert (= (and b!1006621 res!675870) b!1006619))

(assert (= (and b!1006619 res!675861) b!1006627))

(declare-fun m!931803 () Bool)

(assert (=> b!1006626 m!931803))

(declare-fun m!931805 () Bool)

(assert (=> start!86848 m!931805))

(declare-fun m!931807 () Bool)

(assert (=> start!86848 m!931807))

(declare-fun m!931809 () Bool)

(assert (=> b!1006620 m!931809))

(declare-fun m!931811 () Bool)

(assert (=> b!1006615 m!931811))

(declare-fun m!931813 () Bool)

(assert (=> b!1006621 m!931813))

(assert (=> b!1006621 m!931813))

(declare-fun m!931815 () Bool)

(assert (=> b!1006621 m!931815))

(declare-fun m!931817 () Bool)

(assert (=> b!1006621 m!931817))

(declare-fun m!931819 () Bool)

(assert (=> b!1006621 m!931819))

(declare-fun m!931821 () Bool)

(assert (=> b!1006617 m!931821))

(assert (=> b!1006617 m!931821))

(declare-fun m!931823 () Bool)

(assert (=> b!1006617 m!931823))

(assert (=> b!1006617 m!931823))

(assert (=> b!1006617 m!931821))

(declare-fun m!931825 () Bool)

(assert (=> b!1006617 m!931825))

(assert (=> b!1006624 m!931821))

(assert (=> b!1006624 m!931821))

(declare-fun m!931827 () Bool)

(assert (=> b!1006624 m!931827))

(declare-fun m!931829 () Bool)

(assert (=> b!1006619 m!931829))

(assert (=> b!1006618 m!931821))

(assert (=> b!1006618 m!931821))

(declare-fun m!931831 () Bool)

(assert (=> b!1006618 m!931831))

(declare-fun m!931833 () Bool)

(assert (=> b!1006622 m!931833))

(declare-fun m!931835 () Bool)

(assert (=> b!1006623 m!931835))

(push 1)

(assert (not b!1006623))

(assert (not b!1006620))

(assert (not b!1006619))

(assert (not b!1006615))

(assert (not b!1006621))

(assert (not b!1006624))

(assert (not start!86848))

(assert (not b!1006618))

(assert (not b!1006622))

(assert (not b!1006626))

(assert (not b!1006617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1006821 () Bool)

(declare-fun e!566705 () Bool)

(declare-fun e!566707 () Bool)

(assert (=> b!1006821 (= e!566705 e!566707)))

(declare-fun res!675999 () Bool)

(declare-fun lt!444920 () SeekEntryResult!9500)

(assert (=> b!1006821 (= res!675999 (and (is-Intermediate!9500 lt!444920) (not (undefined!10312 lt!444920)) (bvslt (x!87797 lt!444920) #b01111111111111111111111111111110) (bvsge (x!87797 lt!444920) #b00000000000000000000000000000000) (bvsge (x!87797 lt!444920) x!1245)))))

(assert (=> b!1006821 (=> (not res!675999) (not e!566707))))

(declare-fun b!1006822 () Bool)

(declare-fun e!566704 () SeekEntryResult!9500)

(declare-fun e!566706 () SeekEntryResult!9500)

(assert (=> b!1006822 (= e!566704 e!566706)))

(declare-fun lt!444919 () (_ BitVec 64))

(declare-fun c!101564 () Bool)

(assert (=> b!1006822 (= c!101564 (or (= lt!444919 (select (arr!30568 a!3219) j!170)) (= (bvadd lt!444919 lt!444919) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006823 () Bool)

(assert (=> b!1006823 (= e!566706 (Intermediate!9500 false index!1507 x!1245))))

(declare-fun b!1006824 () Bool)

(assert (=> b!1006824 (and (bvsge (index!40372 lt!444920) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444920) (size!31071 a!3219)))))

(declare-fun res!676000 () Bool)

(assert (=> b!1006824 (= res!676000 (= (select (arr!30568 a!3219) (index!40372 lt!444920)) (select (arr!30568 a!3219) j!170)))))

(declare-fun e!566703 () Bool)

(assert (=> b!1006824 (=> res!676000 e!566703)))

(assert (=> b!1006824 (= e!566707 e!566703)))

(declare-fun b!1006825 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1006825 (= e!566706 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30568 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006826 () Bool)

(assert (=> b!1006826 (= e!566704 (Intermediate!9500 true index!1507 x!1245))))

(declare-fun b!1006827 () Bool)

(assert (=> b!1006827 (= e!566705 (bvsge (x!87797 lt!444920) #b01111111111111111111111111111110))))

(declare-fun b!1006828 () Bool)

(assert (=> b!1006828 (and (bvsge (index!40372 lt!444920) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444920) (size!31071 a!3219)))))

(declare-fun res!676001 () Bool)

(assert (=> b!1006828 (= res!676001 (= (select (arr!30568 a!3219) (index!40372 lt!444920)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1006828 (=> res!676001 e!566703)))

(declare-fun b!1006820 () Bool)

(assert (=> b!1006820 (and (bvsge (index!40372 lt!444920) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444920) (size!31071 a!3219)))))

(assert (=> b!1006820 (= e!566703 (= (select (arr!30568 a!3219) (index!40372 lt!444920)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119563 () Bool)

(assert (=> d!119563 e!566705))

(declare-fun c!101563 () Bool)

(assert (=> d!119563 (= c!101563 (and (is-Intermediate!9500 lt!444920) (undefined!10312 lt!444920)))))

(assert (=> d!119563 (= lt!444920 e!566704)))

(declare-fun c!101565 () Bool)

(assert (=> d!119563 (= c!101565 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119563 (= lt!444919 (select (arr!30568 a!3219) index!1507))))

(assert (=> d!119563 (validMask!0 mask!3464)))

(assert (=> d!119563 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30568 a!3219) j!170) a!3219 mask!3464) lt!444920)))

(assert (= (and d!119563 c!101565) b!1006826))

(assert (= (and d!119563 (not c!101565)) b!1006822))

(assert (= (and b!1006822 c!101564) b!1006823))

(assert (= (and b!1006822 (not c!101564)) b!1006825))

(assert (= (and d!119563 c!101563) b!1006827))

(assert (= (and d!119563 (not c!101563)) b!1006821))

(assert (= (and b!1006821 res!675999) b!1006824))

(assert (= (and b!1006824 (not res!676000)) b!1006828))

(assert (= (and b!1006828 (not res!676001)) b!1006820))

(declare-fun m!931945 () Bool)

(assert (=> d!119563 m!931945))

(assert (=> d!119563 m!931805))

(declare-fun m!931947 () Bool)

(assert (=> b!1006828 m!931947))

(declare-fun m!931949 () Bool)

(assert (=> b!1006825 m!931949))

(assert (=> b!1006825 m!931949))

(assert (=> b!1006825 m!931821))

(declare-fun m!931951 () Bool)

(assert (=> b!1006825 m!931951))

(assert (=> b!1006820 m!931947))

(assert (=> b!1006824 m!931947))

(assert (=> b!1006624 d!119563))

(declare-fun b!1006883 () Bool)

(declare-fun e!566742 () SeekEntryResult!9500)

(declare-fun lt!444945 () SeekEntryResult!9500)

(assert (=> b!1006883 (= e!566742 (Found!9500 (index!40372 lt!444945)))))

(declare-fun e!566740 () SeekEntryResult!9500)

(declare-fun b!1006884 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63499 (_ BitVec 32)) SeekEntryResult!9500)

(assert (=> b!1006884 (= e!566740 (seekKeyOrZeroReturnVacant!0 (x!87797 lt!444945) (index!40372 lt!444945) (index!40372 lt!444945) k!2224 a!3219 mask!3464))))

(declare-fun b!1006885 () Bool)

(assert (=> b!1006885 (= e!566740 (MissingZero!9500 (index!40372 lt!444945)))))

(declare-fun b!1006886 () Bool)

(declare-fun c!101588 () Bool)

(declare-fun lt!444944 () (_ BitVec 64))

(assert (=> b!1006886 (= c!101588 (= lt!444944 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1006886 (= e!566742 e!566740)))

(declare-fun b!1006887 () Bool)

(declare-fun e!566741 () SeekEntryResult!9500)

(assert (=> b!1006887 (= e!566741 e!566742)))

(assert (=> b!1006887 (= lt!444944 (select (arr!30568 a!3219) (index!40372 lt!444945)))))

(declare-fun c!101587 () Bool)

(assert (=> b!1006887 (= c!101587 (= lt!444944 k!2224))))

(declare-fun d!119573 () Bool)

(declare-fun lt!444946 () SeekEntryResult!9500)

(assert (=> d!119573 (and (or (is-Undefined!9500 lt!444946) (not (is-Found!9500 lt!444946)) (and (bvsge (index!40371 lt!444946) #b00000000000000000000000000000000) (bvslt (index!40371 lt!444946) (size!31071 a!3219)))) (or (is-Undefined!9500 lt!444946) (is-Found!9500 lt!444946) (not (is-MissingZero!9500 lt!444946)) (and (bvsge (index!40370 lt!444946) #b00000000000000000000000000000000) (bvslt (index!40370 lt!444946) (size!31071 a!3219)))) (or (is-Undefined!9500 lt!444946) (is-Found!9500 lt!444946) (is-MissingZero!9500 lt!444946) (not (is-MissingVacant!9500 lt!444946)) (and (bvsge (index!40373 lt!444946) #b00000000000000000000000000000000) (bvslt (index!40373 lt!444946) (size!31071 a!3219)))) (or (is-Undefined!9500 lt!444946) (ite (is-Found!9500 lt!444946) (= (select (arr!30568 a!3219) (index!40371 lt!444946)) k!2224) (ite (is-MissingZero!9500 lt!444946) (= (select (arr!30568 a!3219) (index!40370 lt!444946)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9500 lt!444946) (= (select (arr!30568 a!3219) (index!40373 lt!444946)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119573 (= lt!444946 e!566741)))

(declare-fun c!101589 () Bool)

(assert (=> d!119573 (= c!101589 (and (is-Intermediate!9500 lt!444945) (undefined!10312 lt!444945)))))

(assert (=> d!119573 (= lt!444945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119573 (validMask!0 mask!3464)))

(assert (=> d!119573 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!444946)))

(declare-fun b!1006888 () Bool)

(assert (=> b!1006888 (= e!566741 Undefined!9500)))

(assert (= (and d!119573 c!101589) b!1006888))

(assert (= (and d!119573 (not c!101589)) b!1006887))

(assert (= (and b!1006887 c!101587) b!1006883))

(assert (= (and b!1006887 (not c!101587)) b!1006886))

(assert (= (and b!1006886 c!101588) b!1006885))

(assert (= (and b!1006886 (not c!101588)) b!1006884))

(declare-fun m!931983 () Bool)

(assert (=> b!1006884 m!931983))

(declare-fun m!931985 () Bool)

(assert (=> b!1006887 m!931985))

(assert (=> d!119573 m!931805))

(declare-fun m!931987 () Bool)

(assert (=> d!119573 m!931987))

(declare-fun m!931989 () Bool)

(assert (=> d!119573 m!931989))

(declare-fun m!931991 () Bool)

(assert (=> d!119573 m!931991))

(assert (=> d!119573 m!931987))

(declare-fun m!931993 () Bool)

(assert (=> d!119573 m!931993))

(declare-fun m!931995 () Bool)

(assert (=> d!119573 m!931995))

(assert (=> b!1006623 d!119573))

(declare-fun d!119583 () Bool)

(declare-fun res!676019 () Bool)

(declare-fun e!566747 () Bool)

(assert (=> d!119583 (=> res!676019 e!566747)))

(assert (=> d!119583 (= res!676019 (= (select (arr!30568 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119583 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!566747)))

(declare-fun b!1006893 () Bool)

(declare-fun e!566748 () Bool)

(assert (=> b!1006893 (= e!566747 e!566748)))

(declare-fun res!676020 () Bool)

(assert (=> b!1006893 (=> (not res!676020) (not e!566748))))

(assert (=> b!1006893 (= res!676020 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31071 a!3219)))))

(declare-fun b!1006894 () Bool)

(assert (=> b!1006894 (= e!566748 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119583 (not res!676019)) b!1006893))

(assert (= (and b!1006893 res!676020) b!1006894))

(declare-fun m!931997 () Bool)

(assert (=> d!119583 m!931997))

(declare-fun m!931999 () Bool)

(assert (=> b!1006894 m!931999))

(assert (=> b!1006615 d!119583))

(declare-fun b!1006941 () Bool)

(declare-fun e!566779 () Bool)

(declare-fun e!566780 () Bool)

(assert (=> b!1006941 (= e!566779 e!566780)))

(declare-fun c!101604 () Bool)

(assert (=> b!1006941 (= c!101604 (validKeyInArray!0 (select (arr!30568 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1006942 () Bool)

(declare-fun call!42361 () Bool)

(assert (=> b!1006942 (= e!566780 call!42361)))

(declare-fun b!1006943 () Bool)

(declare-fun e!566778 () Bool)

(declare-fun contains!5896 (List!21370 (_ BitVec 64)) Bool)

(assert (=> b!1006943 (= e!566778 (contains!5896 Nil!21367 (select (arr!30568 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42358 () Bool)

(assert (=> bm!42358 (= call!42361 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101604 (Cons!21366 (select (arr!30568 a!3219) #b00000000000000000000000000000000) Nil!21367) Nil!21367)))))

(declare-fun d!119589 () Bool)

(declare-fun res!676040 () Bool)

(declare-fun e!566777 () Bool)

(assert (=> d!119589 (=> res!676040 e!566777)))

(assert (=> d!119589 (= res!676040 (bvsge #b00000000000000000000000000000000 (size!31071 a!3219)))))

(assert (=> d!119589 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21367) e!566777)))

(declare-fun b!1006944 () Bool)

(assert (=> b!1006944 (= e!566780 call!42361)))

(declare-fun b!1006945 () Bool)

(assert (=> b!1006945 (= e!566777 e!566779)))

(declare-fun res!676041 () Bool)

(assert (=> b!1006945 (=> (not res!676041) (not e!566779))))

(assert (=> b!1006945 (= res!676041 (not e!566778))))

(declare-fun res!676039 () Bool)

(assert (=> b!1006945 (=> (not res!676039) (not e!566778))))

(assert (=> b!1006945 (= res!676039 (validKeyInArray!0 (select (arr!30568 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119589 (not res!676040)) b!1006945))

(assert (= (and b!1006945 res!676039) b!1006943))

(assert (= (and b!1006945 res!676041) b!1006941))

(assert (= (and b!1006941 c!101604) b!1006944))

(assert (= (and b!1006941 (not c!101604)) b!1006942))

(assert (= (or b!1006944 b!1006942) bm!42358))

(assert (=> b!1006941 m!931997))

(assert (=> b!1006941 m!931997))

(declare-fun m!932031 () Bool)

(assert (=> b!1006941 m!932031))

(assert (=> b!1006943 m!931997))

(assert (=> b!1006943 m!931997))

(declare-fun m!932033 () Bool)

(assert (=> b!1006943 m!932033))

(assert (=> bm!42358 m!931997))

(declare-fun m!932035 () Bool)

(assert (=> bm!42358 m!932035))

(assert (=> b!1006945 m!931997))

(assert (=> b!1006945 m!931997))

(assert (=> b!1006945 m!932031))

(assert (=> b!1006626 d!119589))

(declare-fun b!1006947 () Bool)

(declare-fun e!566783 () Bool)

(declare-fun e!566785 () Bool)

(assert (=> b!1006947 (= e!566783 e!566785)))

(declare-fun res!676042 () Bool)

(declare-fun lt!444960 () SeekEntryResult!9500)

(assert (=> b!1006947 (= res!676042 (and (is-Intermediate!9500 lt!444960) (not (undefined!10312 lt!444960)) (bvslt (x!87797 lt!444960) #b01111111111111111111111111111110) (bvsge (x!87797 lt!444960) #b00000000000000000000000000000000) (bvsge (x!87797 lt!444960) x!1245)))))

(assert (=> b!1006947 (=> (not res!676042) (not e!566785))))

(declare-fun b!1006948 () Bool)

(declare-fun e!566782 () SeekEntryResult!9500)

(declare-fun e!566784 () SeekEntryResult!9500)

(assert (=> b!1006948 (= e!566782 e!566784)))

(declare-fun c!101606 () Bool)

(declare-fun lt!444959 () (_ BitVec 64))

(assert (=> b!1006948 (= c!101606 (or (= lt!444959 lt!444845) (= (bvadd lt!444959 lt!444959) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006949 () Bool)

(assert (=> b!1006949 (= e!566784 (Intermediate!9500 false index!1507 x!1245))))

(declare-fun b!1006950 () Bool)

(assert (=> b!1006950 (and (bvsge (index!40372 lt!444960) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444960) (size!31071 lt!444848)))))

(declare-fun res!676043 () Bool)

(assert (=> b!1006950 (= res!676043 (= (select (arr!30568 lt!444848) (index!40372 lt!444960)) lt!444845))))

(declare-fun e!566781 () Bool)

(assert (=> b!1006950 (=> res!676043 e!566781)))

(assert (=> b!1006950 (= e!566785 e!566781)))

(declare-fun b!1006951 () Bool)

(assert (=> b!1006951 (= e!566784 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!444845 lt!444848 mask!3464))))

(declare-fun b!1006952 () Bool)

(assert (=> b!1006952 (= e!566782 (Intermediate!9500 true index!1507 x!1245))))

(declare-fun b!1006953 () Bool)

(assert (=> b!1006953 (= e!566783 (bvsge (x!87797 lt!444960) #b01111111111111111111111111111110))))

(declare-fun b!1006954 () Bool)

(assert (=> b!1006954 (and (bvsge (index!40372 lt!444960) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444960) (size!31071 lt!444848)))))

(declare-fun res!676044 () Bool)

(assert (=> b!1006954 (= res!676044 (= (select (arr!30568 lt!444848) (index!40372 lt!444960)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1006954 (=> res!676044 e!566781)))

(declare-fun b!1006946 () Bool)

(assert (=> b!1006946 (and (bvsge (index!40372 lt!444960) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444960) (size!31071 lt!444848)))))

(assert (=> b!1006946 (= e!566781 (= (select (arr!30568 lt!444848) (index!40372 lt!444960)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119607 () Bool)

(assert (=> d!119607 e!566783))

(declare-fun c!101605 () Bool)

(assert (=> d!119607 (= c!101605 (and (is-Intermediate!9500 lt!444960) (undefined!10312 lt!444960)))))

(assert (=> d!119607 (= lt!444960 e!566782)))

(declare-fun c!101607 () Bool)

(assert (=> d!119607 (= c!101607 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119607 (= lt!444959 (select (arr!30568 lt!444848) index!1507))))

(assert (=> d!119607 (validMask!0 mask!3464)))

(assert (=> d!119607 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!444845 lt!444848 mask!3464) lt!444960)))

(assert (= (and d!119607 c!101607) b!1006952))

(assert (= (and d!119607 (not c!101607)) b!1006948))

(assert (= (and b!1006948 c!101606) b!1006949))

(assert (= (and b!1006948 (not c!101606)) b!1006951))

(assert (= (and d!119607 c!101605) b!1006953))

(assert (= (and d!119607 (not c!101605)) b!1006947))

(assert (= (and b!1006947 res!676042) b!1006950))

(assert (= (and b!1006950 (not res!676043)) b!1006954))

(assert (= (and b!1006954 (not res!676044)) b!1006946))

(declare-fun m!932037 () Bool)

(assert (=> d!119607 m!932037))

(assert (=> d!119607 m!931805))

(declare-fun m!932039 () Bool)

(assert (=> b!1006954 m!932039))

(assert (=> b!1006951 m!931949))

(assert (=> b!1006951 m!931949))

(declare-fun m!932041 () Bool)

(assert (=> b!1006951 m!932041))

(assert (=> b!1006946 m!932039))

(assert (=> b!1006950 m!932039))

(assert (=> b!1006619 d!119607))

(declare-fun d!119609 () Bool)

(assert (=> d!119609 (= (validKeyInArray!0 (select (arr!30568 a!3219) j!170)) (and (not (= (select (arr!30568 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30568 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1006618 d!119609))

(declare-fun b!1006956 () Bool)

(declare-fun e!566788 () Bool)

(declare-fun e!566790 () Bool)

(assert (=> b!1006956 (= e!566788 e!566790)))

(declare-fun res!676045 () Bool)

(declare-fun lt!444962 () SeekEntryResult!9500)

(assert (=> b!1006956 (= res!676045 (and (is-Intermediate!9500 lt!444962) (not (undefined!10312 lt!444962)) (bvslt (x!87797 lt!444962) #b01111111111111111111111111111110) (bvsge (x!87797 lt!444962) #b00000000000000000000000000000000) (bvsge (x!87797 lt!444962) #b00000000000000000000000000000000)))))

(assert (=> b!1006956 (=> (not res!676045) (not e!566790))))

(declare-fun b!1006957 () Bool)

(declare-fun e!566787 () SeekEntryResult!9500)

(declare-fun e!566789 () SeekEntryResult!9500)

(assert (=> b!1006957 (= e!566787 e!566789)))

(declare-fun lt!444961 () (_ BitVec 64))

(declare-fun c!101609 () Bool)

(assert (=> b!1006957 (= c!101609 (or (= lt!444961 (select (arr!30568 a!3219) j!170)) (= (bvadd lt!444961 lt!444961) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006958 () Bool)

(assert (=> b!1006958 (= e!566789 (Intermediate!9500 false (toIndex!0 (select (arr!30568 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006959 () Bool)

(assert (=> b!1006959 (and (bvsge (index!40372 lt!444962) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444962) (size!31071 a!3219)))))

(declare-fun res!676046 () Bool)

(assert (=> b!1006959 (= res!676046 (= (select (arr!30568 a!3219) (index!40372 lt!444962)) (select (arr!30568 a!3219) j!170)))))

(declare-fun e!566786 () Bool)

(assert (=> b!1006959 (=> res!676046 e!566786)))

(assert (=> b!1006959 (= e!566790 e!566786)))

(declare-fun b!1006960 () Bool)

(assert (=> b!1006960 (= e!566789 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30568 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30568 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1006961 () Bool)

(assert (=> b!1006961 (= e!566787 (Intermediate!9500 true (toIndex!0 (select (arr!30568 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006962 () Bool)

(assert (=> b!1006962 (= e!566788 (bvsge (x!87797 lt!444962) #b01111111111111111111111111111110))))

(declare-fun b!1006963 () Bool)

(assert (=> b!1006963 (and (bvsge (index!40372 lt!444962) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444962) (size!31071 a!3219)))))

(declare-fun res!676047 () Bool)

(assert (=> b!1006963 (= res!676047 (= (select (arr!30568 a!3219) (index!40372 lt!444962)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1006963 (=> res!676047 e!566786)))

(declare-fun b!1006955 () Bool)

(assert (=> b!1006955 (and (bvsge (index!40372 lt!444962) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444962) (size!31071 a!3219)))))

(assert (=> b!1006955 (= e!566786 (= (select (arr!30568 a!3219) (index!40372 lt!444962)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119611 () Bool)

(assert (=> d!119611 e!566788))

(declare-fun c!101608 () Bool)

(assert (=> d!119611 (= c!101608 (and (is-Intermediate!9500 lt!444962) (undefined!10312 lt!444962)))))

(assert (=> d!119611 (= lt!444962 e!566787)))

(declare-fun c!101610 () Bool)

(assert (=> d!119611 (= c!101610 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119611 (= lt!444961 (select (arr!30568 a!3219) (toIndex!0 (select (arr!30568 a!3219) j!170) mask!3464)))))

(assert (=> d!119611 (validMask!0 mask!3464)))

(assert (=> d!119611 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30568 a!3219) j!170) mask!3464) (select (arr!30568 a!3219) j!170) a!3219 mask!3464) lt!444962)))

(assert (= (and d!119611 c!101610) b!1006961))

(assert (= (and d!119611 (not c!101610)) b!1006957))

(assert (= (and b!1006957 c!101609) b!1006958))

(assert (= (and b!1006957 (not c!101609)) b!1006960))

(assert (= (and d!119611 c!101608) b!1006962))

(assert (= (and d!119611 (not c!101608)) b!1006956))

(assert (= (and b!1006956 res!676045) b!1006959))

(assert (= (and b!1006959 (not res!676046)) b!1006963))

(assert (= (and b!1006963 (not res!676047)) b!1006955))

(assert (=> d!119611 m!931823))

(declare-fun m!932043 () Bool)

(assert (=> d!119611 m!932043))

(assert (=> d!119611 m!931805))

(declare-fun m!932045 () Bool)

(assert (=> b!1006963 m!932045))

(assert (=> b!1006960 m!931823))

(declare-fun m!932047 () Bool)

(assert (=> b!1006960 m!932047))

(assert (=> b!1006960 m!932047))

(assert (=> b!1006960 m!931821))

(declare-fun m!932049 () Bool)

(assert (=> b!1006960 m!932049))

(assert (=> b!1006955 m!932045))

(assert (=> b!1006959 m!932045))

(assert (=> b!1006617 d!119611))

(declare-fun d!119613 () Bool)

(declare-fun lt!444977 () (_ BitVec 32))

(declare-fun lt!444976 () (_ BitVec 32))

(assert (=> d!119613 (= lt!444977 (bvmul (bvxor lt!444976 (bvlshr lt!444976 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119613 (= lt!444976 ((_ extract 31 0) (bvand (bvxor (select (arr!30568 a!3219) j!170) (bvlshr (select (arr!30568 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119613 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!676052 (let ((h!22554 ((_ extract 31 0) (bvand (bvxor (select (arr!30568 a!3219) j!170) (bvlshr (select (arr!30568 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87805 (bvmul (bvxor h!22554 (bvlshr h!22554 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87805 (bvlshr x!87805 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!676052 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!676052 #b00000000000000000000000000000000))))))

(assert (=> d!119613 (= (toIndex!0 (select (arr!30568 a!3219) j!170) mask!3464) (bvand (bvxor lt!444977 (bvlshr lt!444977 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1006617 d!119613))

(declare-fun d!119619 () Bool)

(assert (=> d!119619 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1006622 d!119619))

(declare-fun b!1006977 () Bool)

(declare-fun e!566802 () Bool)

(declare-fun e!566804 () Bool)

(assert (=> b!1006977 (= e!566802 e!566804)))

(declare-fun res!676055 () Bool)

(declare-fun lt!444979 () SeekEntryResult!9500)

(assert (=> b!1006977 (= res!676055 (and (is-Intermediate!9500 lt!444979) (not (undefined!10312 lt!444979)) (bvslt (x!87797 lt!444979) #b01111111111111111111111111111110) (bvsge (x!87797 lt!444979) #b00000000000000000000000000000000) (bvsge (x!87797 lt!444979) #b00000000000000000000000000000000)))))

(assert (=> b!1006977 (=> (not res!676055) (not e!566804))))

(declare-fun b!1006978 () Bool)

(declare-fun e!566801 () SeekEntryResult!9500)

(declare-fun e!566803 () SeekEntryResult!9500)

(assert (=> b!1006978 (= e!566801 e!566803)))

(declare-fun c!101615 () Bool)

(declare-fun lt!444978 () (_ BitVec 64))

(assert (=> b!1006978 (= c!101615 (or (= lt!444978 lt!444845) (= (bvadd lt!444978 lt!444978) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1006979 () Bool)

(assert (=> b!1006979 (= e!566803 (Intermediate!9500 false (toIndex!0 lt!444845 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006980 () Bool)

(assert (=> b!1006980 (and (bvsge (index!40372 lt!444979) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444979) (size!31071 lt!444848)))))

(declare-fun res!676056 () Bool)

(assert (=> b!1006980 (= res!676056 (= (select (arr!30568 lt!444848) (index!40372 lt!444979)) lt!444845))))

(declare-fun e!566800 () Bool)

(assert (=> b!1006980 (=> res!676056 e!566800)))

(assert (=> b!1006980 (= e!566804 e!566800)))

(declare-fun b!1006981 () Bool)

(assert (=> b!1006981 (= e!566803 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!444845 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!444845 lt!444848 mask!3464))))

(declare-fun b!1006982 () Bool)

(assert (=> b!1006982 (= e!566801 (Intermediate!9500 true (toIndex!0 lt!444845 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1006983 () Bool)

(assert (=> b!1006983 (= e!566802 (bvsge (x!87797 lt!444979) #b01111111111111111111111111111110))))

(declare-fun b!1006984 () Bool)

(assert (=> b!1006984 (and (bvsge (index!40372 lt!444979) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444979) (size!31071 lt!444848)))))

(declare-fun res!676057 () Bool)

(assert (=> b!1006984 (= res!676057 (= (select (arr!30568 lt!444848) (index!40372 lt!444979)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1006984 (=> res!676057 e!566800)))

(declare-fun b!1006976 () Bool)

(assert (=> b!1006976 (and (bvsge (index!40372 lt!444979) #b00000000000000000000000000000000) (bvslt (index!40372 lt!444979) (size!31071 lt!444848)))))

(assert (=> b!1006976 (= e!566800 (= (select (arr!30568 lt!444848) (index!40372 lt!444979)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119621 () Bool)

(assert (=> d!119621 e!566802))

(declare-fun c!101614 () Bool)

(assert (=> d!119621 (= c!101614 (and (is-Intermediate!9500 lt!444979) (undefined!10312 lt!444979)))))

(assert (=> d!119621 (= lt!444979 e!566801)))

(declare-fun c!101616 () Bool)

(assert (=> d!119621 (= c!101616 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119621 (= lt!444978 (select (arr!30568 lt!444848) (toIndex!0 lt!444845 mask!3464)))))

(assert (=> d!119621 (validMask!0 mask!3464)))

(assert (=> d!119621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!444845 mask!3464) lt!444845 lt!444848 mask!3464) lt!444979)))

(assert (= (and d!119621 c!101616) b!1006982))

(assert (= (and d!119621 (not c!101616)) b!1006978))

(assert (= (and b!1006978 c!101615) b!1006979))

(assert (= (and b!1006978 (not c!101615)) b!1006981))

(assert (= (and d!119621 c!101614) b!1006983))

(assert (= (and d!119621 (not c!101614)) b!1006977))

(assert (= (and b!1006977 res!676055) b!1006980))

(assert (= (and b!1006980 (not res!676056)) b!1006984))

(assert (= (and b!1006984 (not res!676057)) b!1006976))

(assert (=> d!119621 m!931813))

(declare-fun m!932059 () Bool)

(assert (=> d!119621 m!932059))

(assert (=> d!119621 m!931805))

(declare-fun m!932061 () Bool)

(assert (=> b!1006984 m!932061))

(assert (=> b!1006981 m!931813))

(declare-fun m!932063 () Bool)

(assert (=> b!1006981 m!932063))

(assert (=> b!1006981 m!932063))

(declare-fun m!932065 () Bool)

(assert (=> b!1006981 m!932065))

(assert (=> b!1006976 m!932061))

(assert (=> b!1006980 m!932061))

(assert (=> b!1006621 d!119621))

(declare-fun d!119623 () Bool)

(declare-fun lt!444981 () (_ BitVec 32))

(declare-fun lt!444980 () (_ BitVec 32))

(assert (=> d!119623 (= lt!444981 (bvmul (bvxor lt!444980 (bvlshr lt!444980 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119623 (= lt!444980 ((_ extract 31 0) (bvand (bvxor lt!444845 (bvlshr lt!444845 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119623 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!676052 (let ((h!22554 ((_ extract 31 0) (bvand (bvxor lt!444845 (bvlshr lt!444845 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87805 (bvmul (bvxor h!22554 (bvlshr h!22554 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87805 (bvlshr x!87805 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!676052 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!676052 #b00000000000000000000000000000000))))))

(assert (=> d!119623 (= (toIndex!0 lt!444845 mask!3464) (bvand (bvxor lt!444981 (bvlshr lt!444981 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1006621 d!119623))

(declare-fun d!119625 () Bool)

(assert (=> d!119625 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86848 d!119625))

(declare-fun d!119627 () Bool)

(assert (=> d!119627 (= (array_inv!23558 a!3219) (bvsge (size!31071 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86848 d!119627))

(declare-fun b!1007017 () Bool)

(declare-fun e!566827 () Bool)

(declare-fun e!566826 () Bool)

(assert (=> b!1007017 (= e!566827 e!566826)))

(declare-fun c!101628 () Bool)

(assert (=> b!1007017 (= c!101628 (validKeyInArray!0 (select (arr!30568 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42364 () Bool)

(declare-fun call!42367 () Bool)

(assert (=> bm!42364 (= call!42367 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1007018 () Bool)

(declare-fun e!566828 () Bool)

(assert (=> b!1007018 (= e!566828 call!42367)))

(declare-fun b!1007019 () Bool)

(assert (=> b!1007019 (= e!566826 call!42367)))

(declare-fun b!1007020 () Bool)

(assert (=> b!1007020 (= e!566826 e!566828)))

(declare-fun lt!444997 () (_ BitVec 64))

(assert (=> b!1007020 (= lt!444997 (select (arr!30568 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32958 0))(
  ( (Unit!32959) )
))
(declare-fun lt!444998 () Unit!32958)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63499 (_ BitVec 64) (_ BitVec 32)) Unit!32958)

(assert (=> b!1007020 (= lt!444998 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!444997 #b00000000000000000000000000000000))))

(assert (=> b!1007020 (arrayContainsKey!0 a!3219 lt!444997 #b00000000000000000000000000000000)))

(declare-fun lt!444999 () Unit!32958)

(assert (=> b!1007020 (= lt!444999 lt!444998)))

(declare-fun res!676069 () Bool)

(assert (=> b!1007020 (= res!676069 (= (seekEntryOrOpen!0 (select (arr!30568 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9500 #b00000000000000000000000000000000)))))

(assert (=> b!1007020 (=> (not res!676069) (not e!566828))))

(declare-fun d!119629 () Bool)

(declare-fun res!676068 () Bool)

(assert (=> d!119629 (=> res!676068 e!566827)))

(assert (=> d!119629 (= res!676068 (bvsge #b00000000000000000000000000000000 (size!31071 a!3219)))))

(assert (=> d!119629 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!566827)))

(assert (= (and d!119629 (not res!676068)) b!1007017))

(assert (= (and b!1007017 c!101628) b!1007020))

(assert (= (and b!1007017 (not c!101628)) b!1007019))

(assert (= (and b!1007020 res!676069) b!1007018))

(assert (= (or b!1007018 b!1007019) bm!42364))

(assert (=> b!1007017 m!931997))

(assert (=> b!1007017 m!931997))

(assert (=> b!1007017 m!932031))

(declare-fun m!932083 () Bool)

(assert (=> bm!42364 m!932083))

(assert (=> b!1007020 m!931997))

(declare-fun m!932085 () Bool)

(assert (=> b!1007020 m!932085))

(declare-fun m!932087 () Bool)

(assert (=> b!1007020 m!932087))

(assert (=> b!1007020 m!931997))

(declare-fun m!932089 () Bool)

(assert (=> b!1007020 m!932089))

(assert (=> b!1006620 d!119629))

(push 1)

(assert (not b!1006884))

(assert (not b!1006941))

(assert (not b!1006825))

(assert (not b!1007020))

(assert (not d!119621))

(assert (not bm!42364))

(assert (not b!1006945))

(assert (not d!119611))

(assert (not d!119563))

(assert (not b!1006981))

(assert (not bm!42358))

(assert (not b!1006960))

(assert (not b!1006943))

(assert (not d!119573))

(assert (not d!119607))

(assert (not b!1006951))

(assert (not b!1006894))

(assert (not b!1007017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

