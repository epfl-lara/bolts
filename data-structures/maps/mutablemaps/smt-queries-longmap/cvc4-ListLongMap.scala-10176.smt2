; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120026 () Bool)

(assert start!120026)

(declare-fun b!1396685 () Bool)

(declare-fun res!935712 () Bool)

(declare-fun e!790743 () Bool)

(assert (=> b!1396685 (=> (not res!935712) (not e!790743))))

(declare-datatypes ((array!95473 0))(
  ( (array!95474 (arr!46086 (Array (_ BitVec 32) (_ BitVec 64))) (size!46637 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95473)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396685 (= res!935712 (validKeyInArray!0 (select (arr!46086 a!2901) i!1037)))))

(declare-fun b!1396686 () Bool)

(declare-fun e!790741 () Bool)

(assert (=> b!1396686 (= e!790743 (not e!790741))))

(declare-fun res!935713 () Bool)

(assert (=> b!1396686 (=> res!935713 e!790741)))

(declare-datatypes ((SeekEntryResult!10425 0))(
  ( (MissingZero!10425 (index!44070 (_ BitVec 32))) (Found!10425 (index!44071 (_ BitVec 32))) (Intermediate!10425 (undefined!11237 Bool) (index!44072 (_ BitVec 32)) (x!125738 (_ BitVec 32))) (Undefined!10425) (MissingVacant!10425 (index!44073 (_ BitVec 32))) )
))
(declare-fun lt!613626 () SeekEntryResult!10425)

(assert (=> b!1396686 (= res!935713 (or (not (is-Intermediate!10425 lt!613626)) (undefined!11237 lt!613626)))))

(declare-fun e!790744 () Bool)

(assert (=> b!1396686 e!790744))

(declare-fun res!935709 () Bool)

(assert (=> b!1396686 (=> (not res!935709) (not e!790744))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95473 (_ BitVec 32)) Bool)

(assert (=> b!1396686 (= res!935709 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46804 0))(
  ( (Unit!46805) )
))
(declare-fun lt!613625 () Unit!46804)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95473 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46804)

(assert (=> b!1396686 (= lt!613625 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613624 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95473 (_ BitVec 32)) SeekEntryResult!10425)

(assert (=> b!1396686 (= lt!613626 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613624 (select (arr!46086 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396686 (= lt!613624 (toIndex!0 (select (arr!46086 a!2901) j!112) mask!2840))))

(declare-fun b!1396687 () Bool)

(declare-fun res!935711 () Bool)

(assert (=> b!1396687 (=> (not res!935711) (not e!790743))))

(assert (=> b!1396687 (= res!935711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!935714 () Bool)

(assert (=> start!120026 (=> (not res!935714) (not e!790743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120026 (= res!935714 (validMask!0 mask!2840))))

(assert (=> start!120026 e!790743))

(assert (=> start!120026 true))

(declare-fun array_inv!35031 (array!95473) Bool)

(assert (=> start!120026 (array_inv!35031 a!2901)))

(declare-fun b!1396688 () Bool)

(declare-fun res!935715 () Bool)

(assert (=> b!1396688 (=> (not res!935715) (not e!790743))))

(declare-datatypes ((List!32785 0))(
  ( (Nil!32782) (Cons!32781 (h!34023 (_ BitVec 64)) (t!47486 List!32785)) )
))
(declare-fun arrayNoDuplicates!0 (array!95473 (_ BitVec 32) List!32785) Bool)

(assert (=> b!1396688 (= res!935715 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32782))))

(declare-fun b!1396689 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95473 (_ BitVec 32)) SeekEntryResult!10425)

(assert (=> b!1396689 (= e!790744 (= (seekEntryOrOpen!0 (select (arr!46086 a!2901) j!112) a!2901 mask!2840) (Found!10425 j!112)))))

(declare-fun b!1396690 () Bool)

(declare-fun res!935707 () Bool)

(assert (=> b!1396690 (=> (not res!935707) (not e!790743))))

(assert (=> b!1396690 (= res!935707 (and (= (size!46637 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46637 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46637 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396691 () Bool)

(declare-fun res!935708 () Bool)

(assert (=> b!1396691 (=> (not res!935708) (not e!790743))))

(assert (=> b!1396691 (= res!935708 (validKeyInArray!0 (select (arr!46086 a!2901) j!112)))))

(declare-fun b!1396692 () Bool)

(declare-fun e!790745 () Bool)

(assert (=> b!1396692 (= e!790745 true)))

(declare-fun lt!613622 () array!95473)

(declare-fun lt!613623 () SeekEntryResult!10425)

(declare-fun lt!613627 () (_ BitVec 64))

(assert (=> b!1396692 (= lt!613623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613624 lt!613627 lt!613622 mask!2840))))

(declare-fun b!1396693 () Bool)

(assert (=> b!1396693 (= e!790741 e!790745)))

(declare-fun res!935710 () Bool)

(assert (=> b!1396693 (=> res!935710 e!790745)))

(declare-fun lt!613621 () SeekEntryResult!10425)

(assert (=> b!1396693 (= res!935710 (or (= lt!613626 lt!613621) (not (is-Intermediate!10425 lt!613621)) (bvslt (x!125738 lt!613626) #b00000000000000000000000000000000) (bvsgt (x!125738 lt!613626) #b01111111111111111111111111111110) (bvslt lt!613624 #b00000000000000000000000000000000) (bvsge lt!613624 (size!46637 a!2901)) (bvslt (index!44072 lt!613626) #b00000000000000000000000000000000) (bvsge (index!44072 lt!613626) (size!46637 a!2901)) (not (= lt!613626 (Intermediate!10425 false (index!44072 lt!613626) (x!125738 lt!613626)))) (not (= lt!613621 (Intermediate!10425 (undefined!11237 lt!613621) (index!44072 lt!613621) (x!125738 lt!613621))))))))

(assert (=> b!1396693 (= lt!613621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613627 mask!2840) lt!613627 lt!613622 mask!2840))))

(assert (=> b!1396693 (= lt!613627 (select (store (arr!46086 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396693 (= lt!613622 (array!95474 (store (arr!46086 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46637 a!2901)))))

(assert (= (and start!120026 res!935714) b!1396690))

(assert (= (and b!1396690 res!935707) b!1396685))

(assert (= (and b!1396685 res!935712) b!1396691))

(assert (= (and b!1396691 res!935708) b!1396687))

(assert (= (and b!1396687 res!935711) b!1396688))

(assert (= (and b!1396688 res!935715) b!1396686))

(assert (= (and b!1396686 res!935709) b!1396689))

(assert (= (and b!1396686 (not res!935713)) b!1396693))

(assert (= (and b!1396693 (not res!935710)) b!1396692))

(declare-fun m!1283291 () Bool)

(assert (=> b!1396687 m!1283291))

(declare-fun m!1283293 () Bool)

(assert (=> start!120026 m!1283293))

(declare-fun m!1283295 () Bool)

(assert (=> start!120026 m!1283295))

(declare-fun m!1283297 () Bool)

(assert (=> b!1396685 m!1283297))

(assert (=> b!1396685 m!1283297))

(declare-fun m!1283299 () Bool)

(assert (=> b!1396685 m!1283299))

(declare-fun m!1283301 () Bool)

(assert (=> b!1396691 m!1283301))

(assert (=> b!1396691 m!1283301))

(declare-fun m!1283303 () Bool)

(assert (=> b!1396691 m!1283303))

(declare-fun m!1283305 () Bool)

(assert (=> b!1396693 m!1283305))

(assert (=> b!1396693 m!1283305))

(declare-fun m!1283307 () Bool)

(assert (=> b!1396693 m!1283307))

(declare-fun m!1283309 () Bool)

(assert (=> b!1396693 m!1283309))

(declare-fun m!1283311 () Bool)

(assert (=> b!1396693 m!1283311))

(assert (=> b!1396686 m!1283301))

(declare-fun m!1283313 () Bool)

(assert (=> b!1396686 m!1283313))

(assert (=> b!1396686 m!1283301))

(assert (=> b!1396686 m!1283301))

(declare-fun m!1283315 () Bool)

(assert (=> b!1396686 m!1283315))

(declare-fun m!1283317 () Bool)

(assert (=> b!1396686 m!1283317))

(declare-fun m!1283319 () Bool)

(assert (=> b!1396686 m!1283319))

(assert (=> b!1396689 m!1283301))

(assert (=> b!1396689 m!1283301))

(declare-fun m!1283321 () Bool)

(assert (=> b!1396689 m!1283321))

(declare-fun m!1283323 () Bool)

(assert (=> b!1396688 m!1283323))

(declare-fun m!1283325 () Bool)

(assert (=> b!1396692 m!1283325))

(push 1)

