; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130840 () Bool)

(assert start!130840)

(declare-fun res!1051190 () Bool)

(declare-fun e!854357 () Bool)

(assert (=> start!130840 (=> (not res!1051190) (not e!854357))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130840 (= res!1051190 (validMask!0 mask!2480))))

(assert (=> start!130840 e!854357))

(assert (=> start!130840 true))

(declare-datatypes ((array!101865 0))(
  ( (array!101866 (arr!49144 (Array (_ BitVec 32) (_ BitVec 64))) (size!49695 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101865)

(declare-fun array_inv!38089 (array!101865) Bool)

(assert (=> start!130840 (array_inv!38089 a!2792)))

(declare-fun b!1533964 () Bool)

(assert (=> b!1533964 (= e!854357 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13299 0))(
  ( (MissingZero!13299 (index!55590 (_ BitVec 32))) (Found!13299 (index!55591 (_ BitVec 32))) (Intermediate!13299 (undefined!14111 Bool) (index!55592 (_ BitVec 32)) (x!137360 (_ BitVec 32))) (Undefined!13299) (MissingVacant!13299 (index!55593 (_ BitVec 32))) )
))
(declare-fun lt!663754 () SeekEntryResult!13299)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101865 (_ BitVec 32)) SeekEntryResult!13299)

(assert (=> b!1533964 (= lt!663754 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49144 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533965 () Bool)

(declare-fun res!1051194 () Bool)

(assert (=> b!1533965 (=> (not res!1051194) (not e!854357))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533965 (= res!1051194 (validKeyInArray!0 (select (arr!49144 a!2792) i!951)))))

(declare-fun b!1533966 () Bool)

(declare-fun res!1051191 () Bool)

(assert (=> b!1533966 (=> (not res!1051191) (not e!854357))))

(declare-datatypes ((List!35798 0))(
  ( (Nil!35795) (Cons!35794 (h!37240 (_ BitVec 64)) (t!50499 List!35798)) )
))
(declare-fun arrayNoDuplicates!0 (array!101865 (_ BitVec 32) List!35798) Bool)

(assert (=> b!1533966 (= res!1051191 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35795))))

(declare-fun b!1533967 () Bool)

(declare-fun res!1051192 () Bool)

(assert (=> b!1533967 (=> (not res!1051192) (not e!854357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101865 (_ BitVec 32)) Bool)

(assert (=> b!1533967 (= res!1051192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533968 () Bool)

(declare-fun res!1051188 () Bool)

(assert (=> b!1533968 (=> (not res!1051188) (not e!854357))))

(assert (=> b!1533968 (= res!1051188 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49695 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49695 a!2792)) (= (select (arr!49144 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533969 () Bool)

(declare-fun res!1051193 () Bool)

(assert (=> b!1533969 (=> (not res!1051193) (not e!854357))))

(assert (=> b!1533969 (= res!1051193 (validKeyInArray!0 (select (arr!49144 a!2792) j!64)))))

(declare-fun b!1533970 () Bool)

(declare-fun res!1051189 () Bool)

(assert (=> b!1533970 (=> (not res!1051189) (not e!854357))))

(assert (=> b!1533970 (= res!1051189 (and (= (size!49695 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49695 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49695 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130840 res!1051190) b!1533970))

(assert (= (and b!1533970 res!1051189) b!1533965))

(assert (= (and b!1533965 res!1051194) b!1533969))

(assert (= (and b!1533969 res!1051193) b!1533967))

(assert (= (and b!1533967 res!1051192) b!1533966))

(assert (= (and b!1533966 res!1051191) b!1533968))

(assert (= (and b!1533968 res!1051188) b!1533964))

(declare-fun m!1416687 () Bool)

(assert (=> b!1533967 m!1416687))

(declare-fun m!1416689 () Bool)

(assert (=> b!1533968 m!1416689))

(declare-fun m!1416691 () Bool)

(assert (=> b!1533969 m!1416691))

(assert (=> b!1533969 m!1416691))

(declare-fun m!1416693 () Bool)

(assert (=> b!1533969 m!1416693))

(declare-fun m!1416695 () Bool)

(assert (=> b!1533965 m!1416695))

(assert (=> b!1533965 m!1416695))

(declare-fun m!1416697 () Bool)

(assert (=> b!1533965 m!1416697))

(assert (=> b!1533964 m!1416691))

(assert (=> b!1533964 m!1416691))

(declare-fun m!1416699 () Bool)

(assert (=> b!1533964 m!1416699))

(declare-fun m!1416701 () Bool)

(assert (=> start!130840 m!1416701))

(declare-fun m!1416703 () Bool)

(assert (=> start!130840 m!1416703))

(declare-fun m!1416705 () Bool)

(assert (=> b!1533966 m!1416705))

(push 1)

(assert (not b!1533964))

(assert (not b!1533965))

(assert (not b!1533966))

(assert (not start!130840))

(assert (not b!1533967))

(assert (not b!1533969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

