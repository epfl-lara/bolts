; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119752 () Bool)

(assert start!119752)

(declare-fun b!1394435 () Bool)

(declare-fun res!933954 () Bool)

(declare-fun e!789521 () Bool)

(assert (=> b!1394435 (=> res!933954 e!789521)))

(declare-datatypes ((array!95352 0))(
  ( (array!95353 (arr!46030 (Array (_ BitVec 32) (_ BitVec 64))) (size!46581 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95352)

(declare-datatypes ((SeekEntryResult!10369 0))(
  ( (MissingZero!10369 (index!43846 (_ BitVec 32))) (Found!10369 (index!43847 (_ BitVec 32))) (Intermediate!10369 (undefined!11181 Bool) (index!43848 (_ BitVec 32)) (x!125520 (_ BitVec 32))) (Undefined!10369) (MissingVacant!10369 (index!43849 (_ BitVec 32))) )
))
(declare-fun lt!612475 () SeekEntryResult!10369)

(declare-fun lt!612478 () (_ BitVec 32))

(assert (=> b!1394435 (= res!933954 (or (bvslt (x!125520 lt!612475) #b00000000000000000000000000000000) (bvsgt (x!125520 lt!612475) #b01111111111111111111111111111110) (bvslt lt!612478 #b00000000000000000000000000000000) (bvsge lt!612478 (size!46581 a!2901)) (bvslt (index!43848 lt!612475) #b00000000000000000000000000000000) (bvsge (index!43848 lt!612475) (size!46581 a!2901)) (not (= lt!612475 (Intermediate!10369 false (index!43848 lt!612475) (x!125520 lt!612475))))))))

(declare-fun b!1394436 () Bool)

(declare-fun res!933960 () Bool)

(declare-fun e!789523 () Bool)

(assert (=> b!1394436 (=> (not res!933960) (not e!789523))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394436 (= res!933960 (validKeyInArray!0 (select (arr!46030 a!2901) i!1037)))))

(declare-fun b!1394437 () Bool)

(declare-fun e!789524 () Bool)

(assert (=> b!1394437 (= e!789523 (not e!789524))))

(declare-fun res!933958 () Bool)

(assert (=> b!1394437 (=> res!933958 e!789524)))

(assert (=> b!1394437 (= res!933958 (or (not (is-Intermediate!10369 lt!612475)) (undefined!11181 lt!612475)))))

(declare-fun lt!612473 () SeekEntryResult!10369)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394437 (= lt!612473 (Found!10369 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95352 (_ BitVec 32)) SeekEntryResult!10369)

(assert (=> b!1394437 (= lt!612473 (seekEntryOrOpen!0 (select (arr!46030 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95352 (_ BitVec 32)) Bool)

(assert (=> b!1394437 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46692 0))(
  ( (Unit!46693) )
))
(declare-fun lt!612472 () Unit!46692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46692)

(assert (=> b!1394437 (= lt!612472 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95352 (_ BitVec 32)) SeekEntryResult!10369)

(assert (=> b!1394437 (= lt!612475 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612478 (select (arr!46030 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394437 (= lt!612478 (toIndex!0 (select (arr!46030 a!2901) j!112) mask!2840))))

(declare-fun b!1394438 () Bool)

(assert (=> b!1394438 (= e!789521 true)))

(declare-fun lt!612477 () (_ BitVec 64))

(declare-fun lt!612476 () array!95352)

(assert (=> b!1394438 (= lt!612473 (seekEntryOrOpen!0 lt!612477 lt!612476 mask!2840))))

(declare-fun lt!612474 () Unit!46692)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46692)

(assert (=> b!1394438 (= lt!612474 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612478 (x!125520 lt!612475) (index!43848 lt!612475) mask!2840))))

(declare-fun b!1394439 () Bool)

(declare-fun res!933957 () Bool)

(assert (=> b!1394439 (=> (not res!933957) (not e!789523))))

(assert (=> b!1394439 (= res!933957 (and (= (size!46581 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46581 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46581 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394441 () Bool)

(assert (=> b!1394441 (= e!789524 e!789521)))

(declare-fun res!933956 () Bool)

(assert (=> b!1394441 (=> res!933956 e!789521)))

(assert (=> b!1394441 (= res!933956 (not (= lt!612475 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612477 mask!2840) lt!612477 lt!612476 mask!2840))))))

(assert (=> b!1394441 (= lt!612477 (select (store (arr!46030 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394441 (= lt!612476 (array!95353 (store (arr!46030 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46581 a!2901)))))

(declare-fun b!1394442 () Bool)

(declare-fun res!933952 () Bool)

(assert (=> b!1394442 (=> (not res!933952) (not e!789523))))

(declare-datatypes ((List!32729 0))(
  ( (Nil!32726) (Cons!32725 (h!33958 (_ BitVec 64)) (t!47430 List!32729)) )
))
(declare-fun arrayNoDuplicates!0 (array!95352 (_ BitVec 32) List!32729) Bool)

(assert (=> b!1394442 (= res!933952 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32726))))

(declare-fun b!1394443 () Bool)

(declare-fun res!933955 () Bool)

(assert (=> b!1394443 (=> (not res!933955) (not e!789523))))

(assert (=> b!1394443 (= res!933955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394440 () Bool)

(declare-fun res!933953 () Bool)

(assert (=> b!1394440 (=> (not res!933953) (not e!789523))))

(assert (=> b!1394440 (= res!933953 (validKeyInArray!0 (select (arr!46030 a!2901) j!112)))))

(declare-fun res!933959 () Bool)

(assert (=> start!119752 (=> (not res!933959) (not e!789523))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119752 (= res!933959 (validMask!0 mask!2840))))

(assert (=> start!119752 e!789523))

(assert (=> start!119752 true))

(declare-fun array_inv!34975 (array!95352) Bool)

(assert (=> start!119752 (array_inv!34975 a!2901)))

(assert (= (and start!119752 res!933959) b!1394439))

(assert (= (and b!1394439 res!933957) b!1394436))

(assert (= (and b!1394436 res!933960) b!1394440))

(assert (= (and b!1394440 res!933953) b!1394443))

(assert (= (and b!1394443 res!933955) b!1394442))

(assert (= (and b!1394442 res!933952) b!1394437))

(assert (= (and b!1394437 (not res!933958)) b!1394441))

(assert (= (and b!1394441 (not res!933956)) b!1394435))

(assert (= (and b!1394435 (not res!933954)) b!1394438))

(declare-fun m!1280849 () Bool)

(assert (=> b!1394440 m!1280849))

(assert (=> b!1394440 m!1280849))

(declare-fun m!1280851 () Bool)

(assert (=> b!1394440 m!1280851))

(declare-fun m!1280853 () Bool)

(assert (=> b!1394438 m!1280853))

(declare-fun m!1280855 () Bool)

(assert (=> b!1394438 m!1280855))

(assert (=> b!1394437 m!1280849))

(declare-fun m!1280857 () Bool)

(assert (=> b!1394437 m!1280857))

(assert (=> b!1394437 m!1280849))

(assert (=> b!1394437 m!1280849))

(declare-fun m!1280859 () Bool)

(assert (=> b!1394437 m!1280859))

(declare-fun m!1280861 () Bool)

(assert (=> b!1394437 m!1280861))

(assert (=> b!1394437 m!1280849))

(declare-fun m!1280863 () Bool)

(assert (=> b!1394437 m!1280863))

(declare-fun m!1280865 () Bool)

(assert (=> b!1394437 m!1280865))

(declare-fun m!1280867 () Bool)

(assert (=> start!119752 m!1280867))

(declare-fun m!1280869 () Bool)

(assert (=> start!119752 m!1280869))

(declare-fun m!1280871 () Bool)

(assert (=> b!1394443 m!1280871))

(declare-fun m!1280873 () Bool)

(assert (=> b!1394441 m!1280873))

(assert (=> b!1394441 m!1280873))

(declare-fun m!1280875 () Bool)

(assert (=> b!1394441 m!1280875))

(declare-fun m!1280877 () Bool)

(assert (=> b!1394441 m!1280877))

(declare-fun m!1280879 () Bool)

(assert (=> b!1394441 m!1280879))

(declare-fun m!1280881 () Bool)

(assert (=> b!1394442 m!1280881))

(declare-fun m!1280883 () Bool)

(assert (=> b!1394436 m!1280883))

(assert (=> b!1394436 m!1280883))

(declare-fun m!1280885 () Bool)

(assert (=> b!1394436 m!1280885))

(push 1)

