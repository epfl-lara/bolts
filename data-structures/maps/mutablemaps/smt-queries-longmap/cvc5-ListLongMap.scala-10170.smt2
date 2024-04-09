; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119932 () Bool)

(assert start!119932)

(declare-fun res!935094 () Bool)

(declare-fun e!790301 () Bool)

(assert (=> start!119932 (=> (not res!935094) (not e!790301))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119932 (= res!935094 (validMask!0 mask!2840))))

(assert (=> start!119932 e!790301))

(assert (=> start!119932 true))

(declare-datatypes ((array!95430 0))(
  ( (array!95431 (arr!46066 (Array (_ BitVec 32) (_ BitVec 64))) (size!46617 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95430)

(declare-fun array_inv!35011 (array!95430) Bool)

(assert (=> start!119932 (array_inv!35011 a!2901)))

(declare-fun b!1395906 () Bool)

(declare-fun res!935099 () Bool)

(assert (=> b!1395906 (=> (not res!935099) (not e!790301))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395906 (= res!935099 (validKeyInArray!0 (select (arr!46066 a!2901) i!1037)))))

(declare-fun e!790300 () Bool)

(declare-fun b!1395907 () Bool)

(declare-datatypes ((SeekEntryResult!10405 0))(
  ( (MissingZero!10405 (index!43990 (_ BitVec 32))) (Found!10405 (index!43991 (_ BitVec 32))) (Intermediate!10405 (undefined!11217 Bool) (index!43992 (_ BitVec 32)) (x!125664 (_ BitVec 32))) (Undefined!10405) (MissingVacant!10405 (index!43993 (_ BitVec 32))) )
))
(declare-fun lt!613147 () SeekEntryResult!10405)

(declare-fun lt!613146 () SeekEntryResult!10405)

(assert (=> b!1395907 (= e!790300 (or (= lt!613146 lt!613147) (not (is-Intermediate!10405 lt!613147)) (bvsge mask!2840 #b00000000000000000000000000000000)))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95430 (_ BitVec 32)) SeekEntryResult!10405)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395907 (= lt!613147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46066 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46066 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95431 (store (arr!46066 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46617 a!2901)) mask!2840))))

(declare-fun b!1395908 () Bool)

(declare-fun res!935096 () Bool)

(assert (=> b!1395908 (=> (not res!935096) (not e!790301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95430 (_ BitVec 32)) Bool)

(assert (=> b!1395908 (= res!935096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395909 () Bool)

(declare-fun e!790299 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95430 (_ BitVec 32)) SeekEntryResult!10405)

(assert (=> b!1395909 (= e!790299 (= (seekEntryOrOpen!0 (select (arr!46066 a!2901) j!112) a!2901 mask!2840) (Found!10405 j!112)))))

(declare-fun b!1395910 () Bool)

(declare-fun res!935098 () Bool)

(assert (=> b!1395910 (=> (not res!935098) (not e!790301))))

(declare-datatypes ((List!32765 0))(
  ( (Nil!32762) (Cons!32761 (h!34000 (_ BitVec 64)) (t!47466 List!32765)) )
))
(declare-fun arrayNoDuplicates!0 (array!95430 (_ BitVec 32) List!32765) Bool)

(assert (=> b!1395910 (= res!935098 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32762))))

(declare-fun b!1395911 () Bool)

(declare-fun res!935093 () Bool)

(assert (=> b!1395911 (=> (not res!935093) (not e!790301))))

(assert (=> b!1395911 (= res!935093 (and (= (size!46617 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46617 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46617 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395912 () Bool)

(declare-fun res!935100 () Bool)

(assert (=> b!1395912 (=> (not res!935100) (not e!790301))))

(assert (=> b!1395912 (= res!935100 (validKeyInArray!0 (select (arr!46066 a!2901) j!112)))))

(declare-fun b!1395913 () Bool)

(assert (=> b!1395913 (= e!790301 (not e!790300))))

(declare-fun res!935097 () Bool)

(assert (=> b!1395913 (=> res!935097 e!790300)))

(assert (=> b!1395913 (= res!935097 (or (not (is-Intermediate!10405 lt!613146)) (undefined!11217 lt!613146)))))

(assert (=> b!1395913 e!790299))

(declare-fun res!935095 () Bool)

(assert (=> b!1395913 (=> (not res!935095) (not e!790299))))

(assert (=> b!1395913 (= res!935095 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46764 0))(
  ( (Unit!46765) )
))
(declare-fun lt!613145 () Unit!46764)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95430 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46764)

(assert (=> b!1395913 (= lt!613145 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395913 (= lt!613146 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46066 a!2901) j!112) mask!2840) (select (arr!46066 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119932 res!935094) b!1395911))

(assert (= (and b!1395911 res!935093) b!1395906))

(assert (= (and b!1395906 res!935099) b!1395912))

(assert (= (and b!1395912 res!935100) b!1395908))

(assert (= (and b!1395908 res!935096) b!1395910))

(assert (= (and b!1395910 res!935098) b!1395913))

(assert (= (and b!1395913 res!935095) b!1395909))

(assert (= (and b!1395913 (not res!935097)) b!1395907))

(declare-fun m!1282433 () Bool)

(assert (=> b!1395907 m!1282433))

(declare-fun m!1282435 () Bool)

(assert (=> b!1395907 m!1282435))

(assert (=> b!1395907 m!1282435))

(declare-fun m!1282437 () Bool)

(assert (=> b!1395907 m!1282437))

(assert (=> b!1395907 m!1282437))

(assert (=> b!1395907 m!1282435))

(declare-fun m!1282439 () Bool)

(assert (=> b!1395907 m!1282439))

(declare-fun m!1282441 () Bool)

(assert (=> b!1395909 m!1282441))

(assert (=> b!1395909 m!1282441))

(declare-fun m!1282443 () Bool)

(assert (=> b!1395909 m!1282443))

(assert (=> b!1395912 m!1282441))

(assert (=> b!1395912 m!1282441))

(declare-fun m!1282445 () Bool)

(assert (=> b!1395912 m!1282445))

(declare-fun m!1282447 () Bool)

(assert (=> b!1395908 m!1282447))

(declare-fun m!1282449 () Bool)

(assert (=> b!1395906 m!1282449))

(assert (=> b!1395906 m!1282449))

(declare-fun m!1282451 () Bool)

(assert (=> b!1395906 m!1282451))

(declare-fun m!1282453 () Bool)

(assert (=> start!119932 m!1282453))

(declare-fun m!1282455 () Bool)

(assert (=> start!119932 m!1282455))

(assert (=> b!1395913 m!1282441))

(declare-fun m!1282457 () Bool)

(assert (=> b!1395913 m!1282457))

(assert (=> b!1395913 m!1282441))

(declare-fun m!1282459 () Bool)

(assert (=> b!1395913 m!1282459))

(assert (=> b!1395913 m!1282457))

(assert (=> b!1395913 m!1282441))

(declare-fun m!1282461 () Bool)

(assert (=> b!1395913 m!1282461))

(declare-fun m!1282463 () Bool)

(assert (=> b!1395913 m!1282463))

(declare-fun m!1282465 () Bool)

(assert (=> b!1395910 m!1282465))

(push 1)

