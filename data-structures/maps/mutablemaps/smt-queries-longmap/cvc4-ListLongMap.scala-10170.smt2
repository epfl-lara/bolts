; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119936 () Bool)

(assert start!119936)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10407 0))(
  ( (MissingZero!10407 (index!43998 (_ BitVec 32))) (Found!10407 (index!43999 (_ BitVec 32))) (Intermediate!10407 (undefined!11219 Bool) (index!44000 (_ BitVec 32)) (x!125666 (_ BitVec 32))) (Undefined!10407) (MissingVacant!10407 (index!44001 (_ BitVec 32))) )
))
(declare-fun lt!613165 () SeekEntryResult!10407)

(declare-fun e!790323 () Bool)

(declare-fun lt!613163 () SeekEntryResult!10407)

(declare-fun b!1395954 () Bool)

(assert (=> b!1395954 (= e!790323 (or (= lt!613165 lt!613163) (not (is-Intermediate!10407 lt!613163)) (bvsge mask!2840 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!95434 0))(
  ( (array!95435 (arr!46068 (Array (_ BitVec 32) (_ BitVec 64))) (size!46619 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95434)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95434 (_ BitVec 32)) SeekEntryResult!10407)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395954 (= lt!613163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46068 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46068 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95435 (store (arr!46068 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46619 a!2901)) mask!2840))))

(declare-fun b!1395955 () Bool)

(declare-fun res!935146 () Bool)

(declare-fun e!790325 () Bool)

(assert (=> b!1395955 (=> (not res!935146) (not e!790325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395955 (= res!935146 (validKeyInArray!0 (select (arr!46068 a!2901) i!1037)))))

(declare-fun res!935147 () Bool)

(assert (=> start!119936 (=> (not res!935147) (not e!790325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119936 (= res!935147 (validMask!0 mask!2840))))

(assert (=> start!119936 e!790325))

(assert (=> start!119936 true))

(declare-fun array_inv!35013 (array!95434) Bool)

(assert (=> start!119936 (array_inv!35013 a!2901)))

(declare-fun b!1395956 () Bool)

(declare-fun res!935148 () Bool)

(assert (=> b!1395956 (=> (not res!935148) (not e!790325))))

(assert (=> b!1395956 (= res!935148 (and (= (size!46619 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46619 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46619 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395957 () Bool)

(declare-fun res!935143 () Bool)

(assert (=> b!1395957 (=> (not res!935143) (not e!790325))))

(declare-datatypes ((List!32767 0))(
  ( (Nil!32764) (Cons!32763 (h!34002 (_ BitVec 64)) (t!47468 List!32767)) )
))
(declare-fun arrayNoDuplicates!0 (array!95434 (_ BitVec 32) List!32767) Bool)

(assert (=> b!1395957 (= res!935143 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32764))))

(declare-fun b!1395958 () Bool)

(declare-fun e!790324 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95434 (_ BitVec 32)) SeekEntryResult!10407)

(assert (=> b!1395958 (= e!790324 (= (seekEntryOrOpen!0 (select (arr!46068 a!2901) j!112) a!2901 mask!2840) (Found!10407 j!112)))))

(declare-fun b!1395959 () Bool)

(declare-fun res!935141 () Bool)

(assert (=> b!1395959 (=> (not res!935141) (not e!790325))))

(assert (=> b!1395959 (= res!935141 (validKeyInArray!0 (select (arr!46068 a!2901) j!112)))))

(declare-fun b!1395960 () Bool)

(declare-fun res!935142 () Bool)

(assert (=> b!1395960 (=> (not res!935142) (not e!790325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95434 (_ BitVec 32)) Bool)

(assert (=> b!1395960 (= res!935142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395961 () Bool)

(assert (=> b!1395961 (= e!790325 (not e!790323))))

(declare-fun res!935145 () Bool)

(assert (=> b!1395961 (=> res!935145 e!790323)))

(assert (=> b!1395961 (= res!935145 (or (not (is-Intermediate!10407 lt!613165)) (undefined!11219 lt!613165)))))

(assert (=> b!1395961 e!790324))

(declare-fun res!935144 () Bool)

(assert (=> b!1395961 (=> (not res!935144) (not e!790324))))

(assert (=> b!1395961 (= res!935144 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46768 0))(
  ( (Unit!46769) )
))
(declare-fun lt!613164 () Unit!46768)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95434 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46768)

(assert (=> b!1395961 (= lt!613164 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395961 (= lt!613165 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46068 a!2901) j!112) mask!2840) (select (arr!46068 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119936 res!935147) b!1395956))

(assert (= (and b!1395956 res!935148) b!1395955))

(assert (= (and b!1395955 res!935146) b!1395959))

(assert (= (and b!1395959 res!935141) b!1395960))

(assert (= (and b!1395960 res!935142) b!1395957))

(assert (= (and b!1395957 res!935143) b!1395961))

(assert (= (and b!1395961 res!935144) b!1395958))

(assert (= (and b!1395961 (not res!935145)) b!1395954))

(declare-fun m!1282501 () Bool)

(assert (=> b!1395954 m!1282501))

(declare-fun m!1282503 () Bool)

(assert (=> b!1395954 m!1282503))

(assert (=> b!1395954 m!1282503))

(declare-fun m!1282505 () Bool)

(assert (=> b!1395954 m!1282505))

(assert (=> b!1395954 m!1282505))

(assert (=> b!1395954 m!1282503))

(declare-fun m!1282507 () Bool)

(assert (=> b!1395954 m!1282507))

(declare-fun m!1282509 () Bool)

(assert (=> start!119936 m!1282509))

(declare-fun m!1282511 () Bool)

(assert (=> start!119936 m!1282511))

(declare-fun m!1282513 () Bool)

(assert (=> b!1395958 m!1282513))

(assert (=> b!1395958 m!1282513))

(declare-fun m!1282515 () Bool)

(assert (=> b!1395958 m!1282515))

(declare-fun m!1282517 () Bool)

(assert (=> b!1395960 m!1282517))

(assert (=> b!1395959 m!1282513))

(assert (=> b!1395959 m!1282513))

(declare-fun m!1282519 () Bool)

(assert (=> b!1395959 m!1282519))

(declare-fun m!1282521 () Bool)

(assert (=> b!1395955 m!1282521))

(assert (=> b!1395955 m!1282521))

(declare-fun m!1282523 () Bool)

(assert (=> b!1395955 m!1282523))

(assert (=> b!1395961 m!1282513))

(declare-fun m!1282525 () Bool)

(assert (=> b!1395961 m!1282525))

(assert (=> b!1395961 m!1282513))

(declare-fun m!1282527 () Bool)

(assert (=> b!1395961 m!1282527))

(assert (=> b!1395961 m!1282525))

(assert (=> b!1395961 m!1282513))

(declare-fun m!1282529 () Bool)

(assert (=> b!1395961 m!1282529))

(declare-fun m!1282531 () Bool)

(assert (=> b!1395961 m!1282531))

(declare-fun m!1282533 () Bool)

(assert (=> b!1395957 m!1282533))

(push 1)

(assert (not b!1395955))

(assert (not start!119936))

