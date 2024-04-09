; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120154 () Bool)

(assert start!120154)

(declare-fun b!1398422 () Bool)

(declare-fun res!937451 () Bool)

(declare-fun e!791710 () Bool)

(assert (=> b!1398422 (=> (not res!937451) (not e!791710))))

(declare-datatypes ((array!95601 0))(
  ( (array!95602 (arr!46150 (Array (_ BitVec 32) (_ BitVec 64))) (size!46701 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95601)

(declare-datatypes ((List!32849 0))(
  ( (Nil!32846) (Cons!32845 (h!34087 (_ BitVec 64)) (t!47550 List!32849)) )
))
(declare-fun arrayNoDuplicates!0 (array!95601 (_ BitVec 32) List!32849) Bool)

(assert (=> b!1398422 (= res!937451 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32846))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!791711 () Bool)

(declare-fun b!1398423 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10489 0))(
  ( (MissingZero!10489 (index!44326 (_ BitVec 32))) (Found!10489 (index!44327 (_ BitVec 32))) (Intermediate!10489 (undefined!11301 Bool) (index!44328 (_ BitVec 32)) (x!125978 (_ BitVec 32))) (Undefined!10489) (MissingVacant!10489 (index!44329 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95601 (_ BitVec 32)) SeekEntryResult!10489)

(assert (=> b!1398423 (= e!791711 (= (seekEntryOrOpen!0 (select (arr!46150 a!2901) j!112) a!2901 mask!2840) (Found!10489 j!112)))))

(declare-fun res!937446 () Bool)

(assert (=> start!120154 (=> (not res!937446) (not e!791710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120154 (= res!937446 (validMask!0 mask!2840))))

(assert (=> start!120154 e!791710))

(assert (=> start!120154 true))

(declare-fun array_inv!35095 (array!95601) Bool)

(assert (=> start!120154 (array_inv!35095 a!2901)))

(declare-fun b!1398424 () Bool)

(declare-fun res!937445 () Bool)

(assert (=> b!1398424 (=> (not res!937445) (not e!791710))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1398424 (= res!937445 (and (= (size!46701 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46701 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46701 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1398425 () Bool)

(declare-fun e!791713 () Bool)

(assert (=> b!1398425 (= e!791710 (not e!791713))))

(declare-fun res!937450 () Bool)

(assert (=> b!1398425 (=> res!937450 e!791713)))

(declare-fun lt!614913 () SeekEntryResult!10489)

(assert (=> b!1398425 (= res!937450 (or (not (is-Intermediate!10489 lt!614913)) (undefined!11301 lt!614913)))))

(assert (=> b!1398425 e!791711))

(declare-fun res!937449 () Bool)

(assert (=> b!1398425 (=> (not res!937449) (not e!791711))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95601 (_ BitVec 32)) Bool)

(assert (=> b!1398425 (= res!937449 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46932 0))(
  ( (Unit!46933) )
))
(declare-fun lt!614909 () Unit!46932)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95601 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46932)

(assert (=> b!1398425 (= lt!614909 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614914 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95601 (_ BitVec 32)) SeekEntryResult!10489)

(assert (=> b!1398425 (= lt!614913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614914 (select (arr!46150 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398425 (= lt!614914 (toIndex!0 (select (arr!46150 a!2901) j!112) mask!2840))))

(declare-fun b!1398426 () Bool)

(declare-fun res!937444 () Bool)

(assert (=> b!1398426 (=> (not res!937444) (not e!791710))))

(assert (=> b!1398426 (= res!937444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1398427 () Bool)

(declare-fun e!791712 () Bool)

(assert (=> b!1398427 (= e!791713 e!791712)))

(declare-fun res!937452 () Bool)

(assert (=> b!1398427 (=> res!937452 e!791712)))

(declare-fun lt!614910 () SeekEntryResult!10489)

(assert (=> b!1398427 (= res!937452 (or (= lt!614913 lt!614910) (not (is-Intermediate!10489 lt!614910))))))

(declare-fun lt!614912 () (_ BitVec 64))

(assert (=> b!1398427 (= lt!614910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614912 mask!2840) lt!614912 (array!95602 (store (arr!46150 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46701 a!2901)) mask!2840))))

(assert (=> b!1398427 (= lt!614912 (select (store (arr!46150 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398428 () Bool)

(declare-fun res!937447 () Bool)

(assert (=> b!1398428 (=> (not res!937447) (not e!791710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398428 (= res!937447 (validKeyInArray!0 (select (arr!46150 a!2901) i!1037)))))

(declare-fun b!1398429 () Bool)

(declare-fun res!937448 () Bool)

(assert (=> b!1398429 (=> (not res!937448) (not e!791710))))

(assert (=> b!1398429 (= res!937448 (validKeyInArray!0 (select (arr!46150 a!2901) j!112)))))

(declare-fun b!1398430 () Bool)

(assert (=> b!1398430 (= e!791712 true)))

(assert (=> b!1398430 (and (not (undefined!11301 lt!614910)) (= (index!44328 lt!614910) i!1037) (bvslt (x!125978 lt!614910) (x!125978 lt!614913)) (= (select (store (arr!46150 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44328 lt!614910)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614911 () Unit!46932)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95601 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46932)

(assert (=> b!1398430 (= lt!614911 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614914 (x!125978 lt!614913) (index!44328 lt!614913) (x!125978 lt!614910) (index!44328 lt!614910) (undefined!11301 lt!614910) mask!2840))))

(assert (= (and start!120154 res!937446) b!1398424))

(assert (= (and b!1398424 res!937445) b!1398428))

(assert (= (and b!1398428 res!937447) b!1398429))

(assert (= (and b!1398429 res!937448) b!1398426))

(assert (= (and b!1398426 res!937444) b!1398422))

(assert (= (and b!1398422 res!937451) b!1398425))

(assert (= (and b!1398425 res!937449) b!1398423))

(assert (= (and b!1398425 (not res!937450)) b!1398427))

(assert (= (and b!1398427 (not res!937452)) b!1398430))

(declare-fun m!1285637 () Bool)

(assert (=> b!1398426 m!1285637))

(declare-fun m!1285639 () Bool)

(assert (=> b!1398427 m!1285639))

(declare-fun m!1285641 () Bool)

(assert (=> b!1398427 m!1285641))

(assert (=> b!1398427 m!1285639))

(declare-fun m!1285643 () Bool)

(assert (=> b!1398427 m!1285643))

(declare-fun m!1285645 () Bool)

(assert (=> b!1398427 m!1285645))

(declare-fun m!1285647 () Bool)

(assert (=> start!120154 m!1285647))

(declare-fun m!1285649 () Bool)

(assert (=> start!120154 m!1285649))

(declare-fun m!1285651 () Bool)

(assert (=> b!1398425 m!1285651))

(declare-fun m!1285653 () Bool)

(assert (=> b!1398425 m!1285653))

(assert (=> b!1398425 m!1285651))

(declare-fun m!1285655 () Bool)

(assert (=> b!1398425 m!1285655))

(assert (=> b!1398425 m!1285651))

(declare-fun m!1285657 () Bool)

(assert (=> b!1398425 m!1285657))

(declare-fun m!1285659 () Bool)

(assert (=> b!1398425 m!1285659))

(declare-fun m!1285661 () Bool)

(assert (=> b!1398428 m!1285661))

(assert (=> b!1398428 m!1285661))

(declare-fun m!1285663 () Bool)

(assert (=> b!1398428 m!1285663))

(assert (=> b!1398429 m!1285651))

(assert (=> b!1398429 m!1285651))

(declare-fun m!1285665 () Bool)

(assert (=> b!1398429 m!1285665))

(assert (=> b!1398423 m!1285651))

(assert (=> b!1398423 m!1285651))

(declare-fun m!1285667 () Bool)

(assert (=> b!1398423 m!1285667))

(assert (=> b!1398430 m!1285641))

(declare-fun m!1285669 () Bool)

(assert (=> b!1398430 m!1285669))

(declare-fun m!1285671 () Bool)

(assert (=> b!1398430 m!1285671))

(declare-fun m!1285673 () Bool)

(assert (=> b!1398422 m!1285673))

(push 1)

