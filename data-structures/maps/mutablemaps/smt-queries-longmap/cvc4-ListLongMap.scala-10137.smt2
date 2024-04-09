; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119630 () Bool)

(assert start!119630)

(declare-fun b!1392933 () Bool)

(declare-fun res!932456 () Bool)

(declare-fun e!788792 () Bool)

(assert (=> b!1392933 (=> (not res!932456) (not e!788792))))

(declare-datatypes ((array!95230 0))(
  ( (array!95231 (arr!45969 (Array (_ BitVec 32) (_ BitVec 64))) (size!46520 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95230)

(declare-datatypes ((List!32668 0))(
  ( (Nil!32665) (Cons!32664 (h!33897 (_ BitVec 64)) (t!47369 List!32668)) )
))
(declare-fun arrayNoDuplicates!0 (array!95230 (_ BitVec 32) List!32668) Bool)

(assert (=> b!1392933 (= res!932456 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32665))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!788790 () Bool)

(declare-fun b!1392934 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10308 0))(
  ( (MissingZero!10308 (index!43602 (_ BitVec 32))) (Found!10308 (index!43603 (_ BitVec 32))) (Intermediate!10308 (undefined!11120 Bool) (index!43604 (_ BitVec 32)) (x!125291 (_ BitVec 32))) (Undefined!10308) (MissingVacant!10308 (index!43605 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95230 (_ BitVec 32)) SeekEntryResult!10308)

(assert (=> b!1392934 (= e!788790 (= (seekEntryOrOpen!0 (select (arr!45969 a!2901) j!112) a!2901 mask!2840) (Found!10308 j!112)))))

(declare-fun b!1392935 () Bool)

(declare-fun e!788791 () Bool)

(assert (=> b!1392935 (= e!788792 (not e!788791))))

(declare-fun res!932455 () Bool)

(assert (=> b!1392935 (=> res!932455 e!788791)))

(declare-fun lt!611771 () SeekEntryResult!10308)

(assert (=> b!1392935 (= res!932455 (or (not (is-Intermediate!10308 lt!611771)) (undefined!11120 lt!611771)))))

(assert (=> b!1392935 e!788790))

(declare-fun res!932454 () Bool)

(assert (=> b!1392935 (=> (not res!932454) (not e!788790))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95230 (_ BitVec 32)) Bool)

(assert (=> b!1392935 (= res!932454 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46570 0))(
  ( (Unit!46571) )
))
(declare-fun lt!611772 () Unit!46570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95230 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46570)

(assert (=> b!1392935 (= lt!611772 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95230 (_ BitVec 32)) SeekEntryResult!10308)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392935 (= lt!611771 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45969 a!2901) j!112) mask!2840) (select (arr!45969 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392936 () Bool)

(declare-fun res!932452 () Bool)

(assert (=> b!1392936 (=> (not res!932452) (not e!788792))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392936 (= res!932452 (validKeyInArray!0 (select (arr!45969 a!2901) j!112)))))

(declare-fun b!1392937 () Bool)

(assert (=> b!1392937 (= e!788791 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!611773 () SeekEntryResult!10308)

(assert (=> b!1392937 (= lt!611773 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45969 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45969 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95231 (store (arr!45969 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46520 a!2901)) mask!2840))))

(declare-fun b!1392938 () Bool)

(declare-fun res!932450 () Bool)

(assert (=> b!1392938 (=> (not res!932450) (not e!788792))))

(assert (=> b!1392938 (= res!932450 (and (= (size!46520 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46520 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46520 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!932453 () Bool)

(assert (=> start!119630 (=> (not res!932453) (not e!788792))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119630 (= res!932453 (validMask!0 mask!2840))))

(assert (=> start!119630 e!788792))

(assert (=> start!119630 true))

(declare-fun array_inv!34914 (array!95230) Bool)

(assert (=> start!119630 (array_inv!34914 a!2901)))

(declare-fun b!1392939 () Bool)

(declare-fun res!932457 () Bool)

(assert (=> b!1392939 (=> (not res!932457) (not e!788792))))

(assert (=> b!1392939 (= res!932457 (validKeyInArray!0 (select (arr!45969 a!2901) i!1037)))))

(declare-fun b!1392940 () Bool)

(declare-fun res!932451 () Bool)

(assert (=> b!1392940 (=> (not res!932451) (not e!788792))))

(assert (=> b!1392940 (= res!932451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119630 res!932453) b!1392938))

(assert (= (and b!1392938 res!932450) b!1392939))

(assert (= (and b!1392939 res!932457) b!1392936))

(assert (= (and b!1392936 res!932452) b!1392940))

(assert (= (and b!1392940 res!932451) b!1392933))

(assert (= (and b!1392933 res!932456) b!1392935))

(assert (= (and b!1392935 res!932454) b!1392934))

(assert (= (and b!1392935 (not res!932455)) b!1392937))

(declare-fun m!1278727 () Bool)

(assert (=> b!1392933 m!1278727))

(declare-fun m!1278729 () Bool)

(assert (=> b!1392940 m!1278729))

(declare-fun m!1278731 () Bool)

(assert (=> start!119630 m!1278731))

(declare-fun m!1278733 () Bool)

(assert (=> start!119630 m!1278733))

(declare-fun m!1278735 () Bool)

(assert (=> b!1392939 m!1278735))

(assert (=> b!1392939 m!1278735))

(declare-fun m!1278737 () Bool)

(assert (=> b!1392939 m!1278737))

(declare-fun m!1278739 () Bool)

(assert (=> b!1392934 m!1278739))

(assert (=> b!1392934 m!1278739))

(declare-fun m!1278741 () Bool)

(assert (=> b!1392934 m!1278741))

(assert (=> b!1392935 m!1278739))

(declare-fun m!1278743 () Bool)

(assert (=> b!1392935 m!1278743))

(assert (=> b!1392935 m!1278739))

(declare-fun m!1278745 () Bool)

(assert (=> b!1392935 m!1278745))

(assert (=> b!1392935 m!1278743))

(assert (=> b!1392935 m!1278739))

(declare-fun m!1278747 () Bool)

(assert (=> b!1392935 m!1278747))

(declare-fun m!1278749 () Bool)

(assert (=> b!1392935 m!1278749))

(assert (=> b!1392936 m!1278739))

(assert (=> b!1392936 m!1278739))

(declare-fun m!1278751 () Bool)

(assert (=> b!1392936 m!1278751))

(declare-fun m!1278753 () Bool)

(assert (=> b!1392937 m!1278753))

(declare-fun m!1278755 () Bool)

(assert (=> b!1392937 m!1278755))

(assert (=> b!1392937 m!1278755))

(declare-fun m!1278757 () Bool)

(assert (=> b!1392937 m!1278757))

(assert (=> b!1392937 m!1278757))

(assert (=> b!1392937 m!1278755))

(declare-fun m!1278759 () Bool)

(assert (=> b!1392937 m!1278759))

(push 1)

(assert (not b!1392933))

(assert (not b!1392939))

(assert (not b!1392940))

(assert (not b!1392936))

(assert (not b!1392937))

(assert (not b!1392935))

(assert (not start!119630))

(assert (not b!1392934))

(check-sat)

(pop 1)

