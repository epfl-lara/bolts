; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119692 () Bool)

(assert start!119692)

(declare-fun b!1393677 () Bool)

(declare-fun res!933200 () Bool)

(declare-fun e!789163 () Bool)

(assert (=> b!1393677 (=> (not res!933200) (not e!789163))))

(declare-datatypes ((array!95292 0))(
  ( (array!95293 (arr!46000 (Array (_ BitVec 32) (_ BitVec 64))) (size!46551 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95292)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393677 (= res!933200 (validKeyInArray!0 (select (arr!46000 a!2901) j!112)))))

(declare-fun b!1393678 () Bool)

(declare-fun res!933198 () Bool)

(assert (=> b!1393678 (=> (not res!933198) (not e!789163))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1393678 (= res!933198 (validKeyInArray!0 (select (arr!46000 a!2901) i!1037)))))

(declare-fun b!1393679 () Bool)

(declare-fun res!933201 () Bool)

(assert (=> b!1393679 (=> (not res!933201) (not e!789163))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95292 (_ BitVec 32)) Bool)

(assert (=> b!1393679 (= res!933201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393681 () Bool)

(declare-fun e!789161 () Bool)

(assert (=> b!1393681 (= e!789161 true)))

(declare-datatypes ((SeekEntryResult!10339 0))(
  ( (MissingZero!10339 (index!43726 (_ BitVec 32))) (Found!10339 (index!43727 (_ BitVec 32))) (Intermediate!10339 (undefined!11151 Bool) (index!43728 (_ BitVec 32)) (x!125410 (_ BitVec 32))) (Undefined!10339) (MissingVacant!10339 (index!43729 (_ BitVec 32))) )
))
(declare-fun lt!612051 () SeekEntryResult!10339)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95292 (_ BitVec 32)) SeekEntryResult!10339)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393681 (= lt!612051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46000 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46000 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95293 (store (arr!46000 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46551 a!2901)) mask!2840))))

(declare-fun b!1393682 () Bool)

(assert (=> b!1393682 (= e!789163 (not e!789161))))

(declare-fun res!933195 () Bool)

(assert (=> b!1393682 (=> res!933195 e!789161)))

(declare-fun lt!612050 () SeekEntryResult!10339)

(assert (=> b!1393682 (= res!933195 (or (not (is-Intermediate!10339 lt!612050)) (undefined!11151 lt!612050)))))

(declare-fun e!789164 () Bool)

(assert (=> b!1393682 e!789164))

(declare-fun res!933197 () Bool)

(assert (=> b!1393682 (=> (not res!933197) (not e!789164))))

(assert (=> b!1393682 (= res!933197 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46632 0))(
  ( (Unit!46633) )
))
(declare-fun lt!612052 () Unit!46632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95292 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46632)

(assert (=> b!1393682 (= lt!612052 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393682 (= lt!612050 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46000 a!2901) j!112) mask!2840) (select (arr!46000 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393683 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95292 (_ BitVec 32)) SeekEntryResult!10339)

(assert (=> b!1393683 (= e!789164 (= (seekEntryOrOpen!0 (select (arr!46000 a!2901) j!112) a!2901 mask!2840) (Found!10339 j!112)))))

(declare-fun b!1393684 () Bool)

(declare-fun res!933194 () Bool)

(assert (=> b!1393684 (=> (not res!933194) (not e!789163))))

(assert (=> b!1393684 (= res!933194 (and (= (size!46551 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46551 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46551 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!933199 () Bool)

(assert (=> start!119692 (=> (not res!933199) (not e!789163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119692 (= res!933199 (validMask!0 mask!2840))))

(assert (=> start!119692 e!789163))

(assert (=> start!119692 true))

(declare-fun array_inv!34945 (array!95292) Bool)

(assert (=> start!119692 (array_inv!34945 a!2901)))

(declare-fun b!1393680 () Bool)

(declare-fun res!933196 () Bool)

(assert (=> b!1393680 (=> (not res!933196) (not e!789163))))

(declare-datatypes ((List!32699 0))(
  ( (Nil!32696) (Cons!32695 (h!33928 (_ BitVec 64)) (t!47400 List!32699)) )
))
(declare-fun arrayNoDuplicates!0 (array!95292 (_ BitVec 32) List!32699) Bool)

(assert (=> b!1393680 (= res!933196 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32696))))

(assert (= (and start!119692 res!933199) b!1393684))

(assert (= (and b!1393684 res!933194) b!1393678))

(assert (= (and b!1393678 res!933198) b!1393677))

(assert (= (and b!1393677 res!933200) b!1393679))

(assert (= (and b!1393679 res!933201) b!1393680))

(assert (= (and b!1393680 res!933196) b!1393682))

(assert (= (and b!1393682 res!933197) b!1393683))

(assert (= (and b!1393682 (not res!933195)) b!1393681))

(declare-fun m!1279781 () Bool)

(assert (=> b!1393681 m!1279781))

(declare-fun m!1279783 () Bool)

(assert (=> b!1393681 m!1279783))

(assert (=> b!1393681 m!1279783))

(declare-fun m!1279785 () Bool)

(assert (=> b!1393681 m!1279785))

(assert (=> b!1393681 m!1279785))

(assert (=> b!1393681 m!1279783))

(declare-fun m!1279787 () Bool)

(assert (=> b!1393681 m!1279787))

(declare-fun m!1279789 () Bool)

(assert (=> b!1393677 m!1279789))

(assert (=> b!1393677 m!1279789))

(declare-fun m!1279791 () Bool)

(assert (=> b!1393677 m!1279791))

(declare-fun m!1279793 () Bool)

(assert (=> b!1393680 m!1279793))

(assert (=> b!1393683 m!1279789))

(assert (=> b!1393683 m!1279789))

(declare-fun m!1279795 () Bool)

(assert (=> b!1393683 m!1279795))

(declare-fun m!1279797 () Bool)

(assert (=> start!119692 m!1279797))

(declare-fun m!1279799 () Bool)

(assert (=> start!119692 m!1279799))

(declare-fun m!1279801 () Bool)

(assert (=> b!1393679 m!1279801))

(declare-fun m!1279803 () Bool)

(assert (=> b!1393678 m!1279803))

(assert (=> b!1393678 m!1279803))

(declare-fun m!1279805 () Bool)

(assert (=> b!1393678 m!1279805))

(assert (=> b!1393682 m!1279789))

(declare-fun m!1279807 () Bool)

(assert (=> b!1393682 m!1279807))

(assert (=> b!1393682 m!1279789))

(declare-fun m!1279809 () Bool)

(assert (=> b!1393682 m!1279809))

(assert (=> b!1393682 m!1279807))

(assert (=> b!1393682 m!1279789))

(declare-fun m!1279811 () Bool)

(assert (=> b!1393682 m!1279811))

(declare-fun m!1279813 () Bool)

(assert (=> b!1393682 m!1279813))

(push 1)

(assert (not b!1393680))

(assert (not start!119692))

(assert (not b!1393681))

(assert (not b!1393677))

(assert (not b!1393682))

(assert (not b!1393678))

(assert (not b!1393679))

(assert (not b!1393683))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

