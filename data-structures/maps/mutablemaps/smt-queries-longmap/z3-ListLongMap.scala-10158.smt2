; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119754 () Bool)

(assert start!119754)

(declare-fun b!1394462 () Bool)

(declare-fun e!789534 () Bool)

(declare-fun e!789535 () Bool)

(assert (=> b!1394462 (= e!789534 e!789535)))

(declare-fun res!933982 () Bool)

(assert (=> b!1394462 (=> res!933982 e!789535)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95354 0))(
  ( (array!95355 (arr!46031 (Array (_ BitVec 32) (_ BitVec 64))) (size!46582 (_ BitVec 32))) )
))
(declare-fun lt!612496 () array!95354)

(declare-fun lt!612498 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!10370 0))(
  ( (MissingZero!10370 (index!43850 (_ BitVec 32))) (Found!10370 (index!43851 (_ BitVec 32))) (Intermediate!10370 (undefined!11182 Bool) (index!43852 (_ BitVec 32)) (x!125521 (_ BitVec 32))) (Undefined!10370) (MissingVacant!10370 (index!43853 (_ BitVec 32))) )
))
(declare-fun lt!612497 () SeekEntryResult!10370)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95354 (_ BitVec 32)) SeekEntryResult!10370)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394462 (= res!933982 (not (= lt!612497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!612498 mask!2840) lt!612498 lt!612496 mask!2840))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun a!2901 () array!95354)

(assert (=> b!1394462 (= lt!612498 (select (store (arr!46031 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1394462 (= lt!612496 (array!95355 (store (arr!46031 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46582 a!2901)))))

(declare-fun b!1394463 () Bool)

(declare-fun e!789533 () Bool)

(assert (=> b!1394463 (= e!789533 (not e!789534))))

(declare-fun res!933985 () Bool)

(assert (=> b!1394463 (=> res!933985 e!789534)))

(get-info :version)

(assert (=> b!1394463 (= res!933985 (or (not ((_ is Intermediate!10370) lt!612497)) (undefined!11182 lt!612497)))))

(declare-fun lt!612493 () SeekEntryResult!10370)

(assert (=> b!1394463 (= lt!612493 (Found!10370 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95354 (_ BitVec 32)) SeekEntryResult!10370)

(assert (=> b!1394463 (= lt!612493 (seekEntryOrOpen!0 (select (arr!46031 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95354 (_ BitVec 32)) Bool)

(assert (=> b!1394463 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!46694 0))(
  ( (Unit!46695) )
))
(declare-fun lt!612499 () Unit!46694)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95354 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46694)

(assert (=> b!1394463 (= lt!612499 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!612495 () (_ BitVec 32))

(assert (=> b!1394463 (= lt!612497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!612495 (select (arr!46031 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1394463 (= lt!612495 (toIndex!0 (select (arr!46031 a!2901) j!112) mask!2840))))

(declare-fun b!1394464 () Bool)

(declare-fun res!933984 () Bool)

(assert (=> b!1394464 (=> res!933984 e!789535)))

(assert (=> b!1394464 (= res!933984 (or (bvslt (x!125521 lt!612497) #b00000000000000000000000000000000) (bvsgt (x!125521 lt!612497) #b01111111111111111111111111111110) (bvslt lt!612495 #b00000000000000000000000000000000) (bvsge lt!612495 (size!46582 a!2901)) (bvslt (index!43852 lt!612497) #b00000000000000000000000000000000) (bvsge (index!43852 lt!612497) (size!46582 a!2901)) (not (= lt!612497 (Intermediate!10370 false (index!43852 lt!612497) (x!125521 lt!612497))))))))

(declare-fun b!1394465 () Bool)

(declare-fun res!933980 () Bool)

(assert (=> b!1394465 (=> (not res!933980) (not e!789533))))

(declare-datatypes ((List!32730 0))(
  ( (Nil!32727) (Cons!32726 (h!33959 (_ BitVec 64)) (t!47431 List!32730)) )
))
(declare-fun arrayNoDuplicates!0 (array!95354 (_ BitVec 32) List!32730) Bool)

(assert (=> b!1394465 (= res!933980 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32727))))

(declare-fun res!933986 () Bool)

(assert (=> start!119754 (=> (not res!933986) (not e!789533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119754 (= res!933986 (validMask!0 mask!2840))))

(assert (=> start!119754 e!789533))

(assert (=> start!119754 true))

(declare-fun array_inv!34976 (array!95354) Bool)

(assert (=> start!119754 (array_inv!34976 a!2901)))

(declare-fun b!1394466 () Bool)

(declare-fun res!933987 () Bool)

(assert (=> b!1394466 (=> (not res!933987) (not e!789533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394466 (= res!933987 (validKeyInArray!0 (select (arr!46031 a!2901) j!112)))))

(declare-fun b!1394467 () Bool)

(declare-fun res!933981 () Bool)

(assert (=> b!1394467 (=> (not res!933981) (not e!789533))))

(assert (=> b!1394467 (= res!933981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394468 () Bool)

(declare-fun res!933979 () Bool)

(assert (=> b!1394468 (=> (not res!933979) (not e!789533))))

(assert (=> b!1394468 (= res!933979 (and (= (size!46582 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46582 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46582 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394469 () Bool)

(declare-fun res!933983 () Bool)

(assert (=> b!1394469 (=> (not res!933983) (not e!789533))))

(assert (=> b!1394469 (= res!933983 (validKeyInArray!0 (select (arr!46031 a!2901) i!1037)))))

(declare-fun b!1394470 () Bool)

(assert (=> b!1394470 (= e!789535 true)))

(assert (=> b!1394470 (= lt!612493 (seekEntryOrOpen!0 lt!612498 lt!612496 mask!2840))))

(declare-fun lt!612494 () Unit!46694)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!95354 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46694)

(assert (=> b!1394470 (= lt!612494 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!612495 (x!125521 lt!612497) (index!43852 lt!612497) mask!2840))))

(assert (= (and start!119754 res!933986) b!1394468))

(assert (= (and b!1394468 res!933979) b!1394469))

(assert (= (and b!1394469 res!933983) b!1394466))

(assert (= (and b!1394466 res!933987) b!1394467))

(assert (= (and b!1394467 res!933981) b!1394465))

(assert (= (and b!1394465 res!933980) b!1394463))

(assert (= (and b!1394463 (not res!933985)) b!1394462))

(assert (= (and b!1394462 (not res!933982)) b!1394464))

(assert (= (and b!1394464 (not res!933984)) b!1394470))

(declare-fun m!1280887 () Bool)

(assert (=> b!1394463 m!1280887))

(declare-fun m!1280889 () Bool)

(assert (=> b!1394463 m!1280889))

(assert (=> b!1394463 m!1280887))

(declare-fun m!1280891 () Bool)

(assert (=> b!1394463 m!1280891))

(assert (=> b!1394463 m!1280887))

(declare-fun m!1280893 () Bool)

(assert (=> b!1394463 m!1280893))

(assert (=> b!1394463 m!1280887))

(declare-fun m!1280895 () Bool)

(assert (=> b!1394463 m!1280895))

(declare-fun m!1280897 () Bool)

(assert (=> b!1394463 m!1280897))

(declare-fun m!1280899 () Bool)

(assert (=> start!119754 m!1280899))

(declare-fun m!1280901 () Bool)

(assert (=> start!119754 m!1280901))

(declare-fun m!1280903 () Bool)

(assert (=> b!1394467 m!1280903))

(declare-fun m!1280905 () Bool)

(assert (=> b!1394462 m!1280905))

(assert (=> b!1394462 m!1280905))

(declare-fun m!1280907 () Bool)

(assert (=> b!1394462 m!1280907))

(declare-fun m!1280909 () Bool)

(assert (=> b!1394462 m!1280909))

(declare-fun m!1280911 () Bool)

(assert (=> b!1394462 m!1280911))

(declare-fun m!1280913 () Bool)

(assert (=> b!1394469 m!1280913))

(assert (=> b!1394469 m!1280913))

(declare-fun m!1280915 () Bool)

(assert (=> b!1394469 m!1280915))

(assert (=> b!1394466 m!1280887))

(assert (=> b!1394466 m!1280887))

(declare-fun m!1280917 () Bool)

(assert (=> b!1394466 m!1280917))

(declare-fun m!1280919 () Bool)

(assert (=> b!1394465 m!1280919))

(declare-fun m!1280921 () Bool)

(assert (=> b!1394470 m!1280921))

(declare-fun m!1280923 () Bool)

(assert (=> b!1394470 m!1280923))

(check-sat (not start!119754) (not b!1394462) (not b!1394465) (not b!1394463) (not b!1394469) (not b!1394470) (not b!1394467) (not b!1394466))
(check-sat)
