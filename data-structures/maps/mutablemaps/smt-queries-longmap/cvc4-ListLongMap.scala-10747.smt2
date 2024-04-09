; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125726 () Bool)

(assert start!125726)

(declare-fun b!1470694 () Bool)

(declare-fun e!825575 () Bool)

(declare-fun e!825578 () Bool)

(assert (=> b!1470694 (= e!825575 e!825578)))

(declare-fun res!998902 () Bool)

(assert (=> b!1470694 (=> (not res!998902) (not e!825578))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12062 0))(
  ( (MissingZero!12062 (index!50639 (_ BitVec 32))) (Found!12062 (index!50640 (_ BitVec 32))) (Intermediate!12062 (undefined!12874 Bool) (index!50641 (_ BitVec 32)) (x!132219 (_ BitVec 32))) (Undefined!12062) (MissingVacant!12062 (index!50642 (_ BitVec 32))) )
))
(declare-fun lt!642972 () SeekEntryResult!12062)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1470694 (= res!998902 (= lt!642972 (Intermediate!12062 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99034 0))(
  ( (array!99035 (arr!47799 (Array (_ BitVec 32) (_ BitVec 64))) (size!48350 (_ BitVec 32))) )
))
(declare-fun lt!642970 () array!99034)

(declare-fun lt!642973 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99034 (_ BitVec 32)) SeekEntryResult!12062)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470694 (= lt!642972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642973 mask!2687) lt!642973 lt!642970 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99034)

(assert (=> b!1470694 (= lt!642973 (select (store (arr!47799 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1470695 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!825572 () Bool)

(assert (=> b!1470695 (= e!825572 (= lt!642972 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642973 lt!642970 mask!2687)))))

(declare-fun b!1470696 () Bool)

(declare-fun res!998894 () Bool)

(assert (=> b!1470696 (=> (not res!998894) (not e!825578))))

(assert (=> b!1470696 (= res!998894 e!825572)))

(declare-fun c!135416 () Bool)

(assert (=> b!1470696 (= c!135416 (bvsle x!665 intermediateAfterX!19))))

(declare-fun e!825573 () Bool)

(declare-fun b!1470697 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99034 (_ BitVec 32)) SeekEntryResult!12062)

(assert (=> b!1470697 (= e!825573 (= (seekEntryOrOpen!0 (select (arr!47799 a!2862) j!93) a!2862 mask!2687) (Found!12062 j!93)))))

(declare-fun res!998903 () Bool)

(declare-fun e!825574 () Bool)

(assert (=> start!125726 (=> (not res!998903) (not e!825574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125726 (= res!998903 (validMask!0 mask!2687))))

(assert (=> start!125726 e!825574))

(assert (=> start!125726 true))

(declare-fun array_inv!36744 (array!99034) Bool)

(assert (=> start!125726 (array_inv!36744 a!2862)))

(declare-fun b!1470698 () Bool)

(declare-fun res!998901 () Bool)

(assert (=> b!1470698 (=> (not res!998901) (not e!825575))))

(declare-fun lt!642969 () SeekEntryResult!12062)

(assert (=> b!1470698 (= res!998901 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47799 a!2862) j!93) a!2862 mask!2687) lt!642969))))

(declare-fun b!1470699 () Bool)

(declare-fun res!998898 () Bool)

(assert (=> b!1470699 (=> (not res!998898) (not e!825574))))

(declare-datatypes ((List!34480 0))(
  ( (Nil!34477) (Cons!34476 (h!35829 (_ BitVec 64)) (t!49181 List!34480)) )
))
(declare-fun arrayNoDuplicates!0 (array!99034 (_ BitVec 32) List!34480) Bool)

(assert (=> b!1470699 (= res!998898 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34477))))

(declare-fun b!1470700 () Bool)

(assert (=> b!1470700 (= e!825578 (not true))))

(assert (=> b!1470700 e!825573))

(declare-fun res!998897 () Bool)

(assert (=> b!1470700 (=> (not res!998897) (not e!825573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99034 (_ BitVec 32)) Bool)

(assert (=> b!1470700 (= res!998897 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49412 0))(
  ( (Unit!49413) )
))
(declare-fun lt!642971 () Unit!49412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99034 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49412)

(assert (=> b!1470700 (= lt!642971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1470701 () Bool)

(declare-fun res!998900 () Bool)

(assert (=> b!1470701 (=> (not res!998900) (not e!825574))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1470701 (= res!998900 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48350 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48350 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48350 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1470702 () Bool)

(declare-fun res!998896 () Bool)

(assert (=> b!1470702 (=> (not res!998896) (not e!825578))))

(assert (=> b!1470702 (= res!998896 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1470703 () Bool)

(declare-fun res!998895 () Bool)

(assert (=> b!1470703 (=> (not res!998895) (not e!825574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1470703 (= res!998895 (validKeyInArray!0 (select (arr!47799 a!2862) j!93)))))

(declare-fun b!1470704 () Bool)

(declare-fun res!998892 () Bool)

(assert (=> b!1470704 (=> (not res!998892) (not e!825574))))

(assert (=> b!1470704 (= res!998892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1470705 () Bool)

(declare-fun res!998891 () Bool)

(assert (=> b!1470705 (=> (not res!998891) (not e!825574))))

(assert (=> b!1470705 (= res!998891 (and (= (size!48350 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48350 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48350 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1470706 () Bool)

(declare-fun res!998904 () Bool)

(assert (=> b!1470706 (=> (not res!998904) (not e!825574))))

(assert (=> b!1470706 (= res!998904 (validKeyInArray!0 (select (arr!47799 a!2862) i!1006)))))

(declare-fun b!1470707 () Bool)

(declare-fun e!825577 () Bool)

(assert (=> b!1470707 (= e!825574 e!825577)))

(declare-fun res!998893 () Bool)

(assert (=> b!1470707 (=> (not res!998893) (not e!825577))))

(assert (=> b!1470707 (= res!998893 (= (select (store (arr!47799 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470707 (= lt!642970 (array!99035 (store (arr!47799 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48350 a!2862)))))

(declare-fun b!1470708 () Bool)

(assert (=> b!1470708 (= e!825577 e!825575)))

(declare-fun res!998899 () Bool)

(assert (=> b!1470708 (=> (not res!998899) (not e!825575))))

(assert (=> b!1470708 (= res!998899 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47799 a!2862) j!93) mask!2687) (select (arr!47799 a!2862) j!93) a!2862 mask!2687) lt!642969))))

(assert (=> b!1470708 (= lt!642969 (Intermediate!12062 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1470709 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99034 (_ BitVec 32)) SeekEntryResult!12062)

(assert (=> b!1470709 (= e!825572 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642973 lt!642970 mask!2687) (seekEntryOrOpen!0 lt!642973 lt!642970 mask!2687)))))

(assert (= (and start!125726 res!998903) b!1470705))

(assert (= (and b!1470705 res!998891) b!1470706))

(assert (= (and b!1470706 res!998904) b!1470703))

(assert (= (and b!1470703 res!998895) b!1470704))

(assert (= (and b!1470704 res!998892) b!1470699))

(assert (= (and b!1470699 res!998898) b!1470701))

(assert (= (and b!1470701 res!998900) b!1470707))

(assert (= (and b!1470707 res!998893) b!1470708))

(assert (= (and b!1470708 res!998899) b!1470698))

(assert (= (and b!1470698 res!998901) b!1470694))

(assert (= (and b!1470694 res!998902) b!1470696))

(assert (= (and b!1470696 c!135416) b!1470695))

(assert (= (and b!1470696 (not c!135416)) b!1470709))

(assert (= (and b!1470696 res!998894) b!1470702))

(assert (= (and b!1470702 res!998896) b!1470700))

(assert (= (and b!1470700 res!998897) b!1470697))

(declare-fun m!1357723 () Bool)

(assert (=> b!1470707 m!1357723))

(declare-fun m!1357725 () Bool)

(assert (=> b!1470707 m!1357725))

(declare-fun m!1357727 () Bool)

(assert (=> b!1470709 m!1357727))

(declare-fun m!1357729 () Bool)

(assert (=> b!1470709 m!1357729))

(declare-fun m!1357731 () Bool)

(assert (=> b!1470698 m!1357731))

(assert (=> b!1470698 m!1357731))

(declare-fun m!1357733 () Bool)

(assert (=> b!1470698 m!1357733))

(declare-fun m!1357735 () Bool)

(assert (=> b!1470695 m!1357735))

(assert (=> b!1470708 m!1357731))

(assert (=> b!1470708 m!1357731))

(declare-fun m!1357737 () Bool)

(assert (=> b!1470708 m!1357737))

(assert (=> b!1470708 m!1357737))

(assert (=> b!1470708 m!1357731))

(declare-fun m!1357739 () Bool)

(assert (=> b!1470708 m!1357739))

(declare-fun m!1357741 () Bool)

(assert (=> b!1470704 m!1357741))

(declare-fun m!1357743 () Bool)

(assert (=> start!125726 m!1357743))

(declare-fun m!1357745 () Bool)

(assert (=> start!125726 m!1357745))

(declare-fun m!1357747 () Bool)

(assert (=> b!1470706 m!1357747))

(assert (=> b!1470706 m!1357747))

(declare-fun m!1357749 () Bool)

(assert (=> b!1470706 m!1357749))

(declare-fun m!1357751 () Bool)

(assert (=> b!1470699 m!1357751))

(declare-fun m!1357753 () Bool)

(assert (=> b!1470694 m!1357753))

(assert (=> b!1470694 m!1357753))

(declare-fun m!1357755 () Bool)

(assert (=> b!1470694 m!1357755))

(assert (=> b!1470694 m!1357723))

(declare-fun m!1357757 () Bool)

(assert (=> b!1470694 m!1357757))

(declare-fun m!1357759 () Bool)

(assert (=> b!1470700 m!1357759))

(declare-fun m!1357761 () Bool)

(assert (=> b!1470700 m!1357761))

(assert (=> b!1470703 m!1357731))

(assert (=> b!1470703 m!1357731))

(declare-fun m!1357763 () Bool)

(assert (=> b!1470703 m!1357763))

(assert (=> b!1470697 m!1357731))

(assert (=> b!1470697 m!1357731))

(declare-fun m!1357765 () Bool)

(assert (=> b!1470697 m!1357765))

(push 1)

