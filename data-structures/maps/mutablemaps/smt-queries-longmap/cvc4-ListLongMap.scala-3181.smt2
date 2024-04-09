; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44726 () Bool)

(assert start!44726)

(declare-fun b!490563 () Bool)

(declare-fun e!288342 () Bool)

(declare-fun e!288341 () Bool)

(assert (=> b!490563 (= e!288342 (not e!288341))))

(declare-fun res!293653 () Bool)

(assert (=> b!490563 (=> res!293653 e!288341)))

(declare-datatypes ((array!31745 0))(
  ( (array!31746 (arr!15257 (Array (_ BitVec 32) (_ BitVec 64))) (size!15621 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31745)

(declare-fun lt!221668 () array!31745)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!221667 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3731 0))(
  ( (MissingZero!3731 (index!17103 (_ BitVec 32))) (Found!3731 (index!17104 (_ BitVec 32))) (Intermediate!3731 (undefined!4543 Bool) (index!17105 (_ BitVec 32)) (x!46224 (_ BitVec 32))) (Undefined!3731) (MissingVacant!3731 (index!17106 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31745 (_ BitVec 32)) SeekEntryResult!3731)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490563 (= res!293653 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15257 a!3235) j!176) mask!3524) (select (arr!15257 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221667 mask!3524) lt!221667 lt!221668 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!490563 (= lt!221667 (select (store (arr!15257 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!490563 (= lt!221668 (array!31746 (store (arr!15257 a!3235) i!1204 k!2280) (size!15621 a!3235)))))

(declare-fun lt!221671 () SeekEntryResult!3731)

(assert (=> b!490563 (= lt!221671 (Found!3731 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31745 (_ BitVec 32)) SeekEntryResult!3731)

(assert (=> b!490563 (= lt!221671 (seekEntryOrOpen!0 (select (arr!15257 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31745 (_ BitVec 32)) Bool)

(assert (=> b!490563 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14400 0))(
  ( (Unit!14401) )
))
(declare-fun lt!221670 () Unit!14400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14400)

(assert (=> b!490563 (= lt!221670 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490564 () Bool)

(declare-fun res!293657 () Bool)

(declare-fun e!288340 () Bool)

(assert (=> b!490564 (=> (not res!293657) (not e!288340))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490564 (= res!293657 (validKeyInArray!0 (select (arr!15257 a!3235) j!176)))))

(declare-fun b!490565 () Bool)

(assert (=> b!490565 (= e!288341 true)))

(assert (=> b!490565 (= lt!221671 (seekEntryOrOpen!0 lt!221667 lt!221668 mask!3524))))

(declare-fun lt!221669 () Unit!14400)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31745 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14400)

(assert (=> b!490565 (= lt!221669 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(declare-fun b!490566 () Bool)

(declare-fun res!293651 () Bool)

(assert (=> b!490566 (=> (not res!293651) (not e!288340))))

(assert (=> b!490566 (= res!293651 (validKeyInArray!0 k!2280))))

(declare-fun b!490568 () Bool)

(declare-fun res!293652 () Bool)

(assert (=> b!490568 (=> (not res!293652) (not e!288340))))

(declare-fun arrayContainsKey!0 (array!31745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490568 (= res!293652 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!490569 () Bool)

(declare-fun res!293655 () Bool)

(assert (=> b!490569 (=> (not res!293655) (not e!288340))))

(assert (=> b!490569 (= res!293655 (and (= (size!15621 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15621 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15621 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490570 () Bool)

(declare-fun res!293654 () Bool)

(assert (=> b!490570 (=> (not res!293654) (not e!288342))))

(assert (=> b!490570 (= res!293654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490571 () Bool)

(assert (=> b!490571 (= e!288340 e!288342)))

(declare-fun res!293656 () Bool)

(assert (=> b!490571 (=> (not res!293656) (not e!288342))))

(declare-fun lt!221672 () SeekEntryResult!3731)

(assert (=> b!490571 (= res!293656 (or (= lt!221672 (MissingZero!3731 i!1204)) (= lt!221672 (MissingVacant!3731 i!1204))))))

(assert (=> b!490571 (= lt!221672 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490567 () Bool)

(declare-fun res!293650 () Bool)

(assert (=> b!490567 (=> (not res!293650) (not e!288342))))

(declare-datatypes ((List!9468 0))(
  ( (Nil!9465) (Cons!9464 (h!10326 (_ BitVec 64)) (t!15704 List!9468)) )
))
(declare-fun arrayNoDuplicates!0 (array!31745 (_ BitVec 32) List!9468) Bool)

(assert (=> b!490567 (= res!293650 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9465))))

(declare-fun res!293649 () Bool)

(assert (=> start!44726 (=> (not res!293649) (not e!288340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44726 (= res!293649 (validMask!0 mask!3524))))

(assert (=> start!44726 e!288340))

(assert (=> start!44726 true))

(declare-fun array_inv!11031 (array!31745) Bool)

(assert (=> start!44726 (array_inv!11031 a!3235)))

(assert (= (and start!44726 res!293649) b!490569))

(assert (= (and b!490569 res!293655) b!490564))

(assert (= (and b!490564 res!293657) b!490566))

(assert (= (and b!490566 res!293651) b!490568))

(assert (= (and b!490568 res!293652) b!490571))

(assert (= (and b!490571 res!293656) b!490570))

(assert (= (and b!490570 res!293654) b!490567))

(assert (= (and b!490567 res!293650) b!490563))

(assert (= (and b!490563 (not res!293653)) b!490565))

(declare-fun m!470859 () Bool)

(assert (=> b!490571 m!470859))

(declare-fun m!470861 () Bool)

(assert (=> b!490563 m!470861))

(declare-fun m!470863 () Bool)

(assert (=> b!490563 m!470863))

(declare-fun m!470865 () Bool)

(assert (=> b!490563 m!470865))

(declare-fun m!470867 () Bool)

(assert (=> b!490563 m!470867))

(declare-fun m!470869 () Bool)

(assert (=> b!490563 m!470869))

(declare-fun m!470871 () Bool)

(assert (=> b!490563 m!470871))

(declare-fun m!470873 () Bool)

(assert (=> b!490563 m!470873))

(assert (=> b!490563 m!470871))

(assert (=> b!490563 m!470869))

(assert (=> b!490563 m!470871))

(declare-fun m!470875 () Bool)

(assert (=> b!490563 m!470875))

(assert (=> b!490563 m!470871))

(declare-fun m!470877 () Bool)

(assert (=> b!490563 m!470877))

(declare-fun m!470879 () Bool)

(assert (=> b!490563 m!470879))

(assert (=> b!490563 m!470861))

(declare-fun m!470881 () Bool)

(assert (=> b!490566 m!470881))

(declare-fun m!470883 () Bool)

(assert (=> start!44726 m!470883))

(declare-fun m!470885 () Bool)

(assert (=> start!44726 m!470885))

(declare-fun m!470887 () Bool)

(assert (=> b!490568 m!470887))

(declare-fun m!470889 () Bool)

(assert (=> b!490570 m!470889))

(assert (=> b!490564 m!470871))

(assert (=> b!490564 m!470871))

(declare-fun m!470891 () Bool)

(assert (=> b!490564 m!470891))

(declare-fun m!470893 () Bool)

(assert (=> b!490565 m!470893))

(declare-fun m!470895 () Bool)

(assert (=> b!490565 m!470895))

(declare-fun m!470897 () Bool)

(assert (=> b!490567 m!470897))

(push 1)

