; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130928 () Bool)

(assert start!130928)

(declare-fun b!1535146 () Bool)

(declare-fun res!1052377 () Bool)

(declare-fun e!854701 () Bool)

(assert (=> b!1535146 (=> (not res!1052377) (not e!854701))))

(declare-datatypes ((array!101953 0))(
  ( (array!101954 (arr!49188 (Array (_ BitVec 32) (_ BitVec 64))) (size!49739 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101953)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101953 (_ BitVec 32)) Bool)

(assert (=> b!1535146 (= res!1052377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535147 () Bool)

(declare-fun e!854702 () Bool)

(assert (=> b!1535147 (= e!854701 e!854702)))

(declare-fun res!1052371 () Bool)

(assert (=> b!1535147 (=> (not res!1052371) (not e!854702))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!663948 () (_ BitVec 32))

(assert (=> b!1535147 (= res!1052371 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663948 #b00000000000000000000000000000000) (bvslt lt!663948 (size!49739 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535147 (= lt!663948 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535148 () Bool)

(declare-fun res!1052375 () Bool)

(assert (=> b!1535148 (=> (not res!1052375) (not e!854701))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13343 0))(
  ( (MissingZero!13343 (index!55766 (_ BitVec 32))) (Found!13343 (index!55767 (_ BitVec 32))) (Intermediate!13343 (undefined!14155 Bool) (index!55768 (_ BitVec 32)) (x!137516 (_ BitVec 32))) (Undefined!13343) (MissingVacant!13343 (index!55769 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101953 (_ BitVec 32)) SeekEntryResult!13343)

(assert (=> b!1535148 (= res!1052375 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49188 a!2792) j!64) a!2792 mask!2480) (Found!13343 j!64)))))

(declare-fun b!1535149 () Bool)

(declare-fun res!1052379 () Bool)

(assert (=> b!1535149 (=> (not res!1052379) (not e!854701))))

(declare-datatypes ((List!35842 0))(
  ( (Nil!35839) (Cons!35838 (h!37284 (_ BitVec 64)) (t!50543 List!35842)) )
))
(declare-fun arrayNoDuplicates!0 (array!101953 (_ BitVec 32) List!35842) Bool)

(assert (=> b!1535149 (= res!1052379 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35839))))

(declare-fun b!1535150 () Bool)

(declare-fun res!1052372 () Bool)

(assert (=> b!1535150 (=> (not res!1052372) (not e!854701))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535150 (= res!1052372 (validKeyInArray!0 (select (arr!49188 a!2792) i!951)))))

(declare-fun b!1535151 () Bool)

(declare-fun res!1052376 () Bool)

(assert (=> b!1535151 (=> (not res!1052376) (not e!854701))))

(assert (=> b!1535151 (= res!1052376 (validKeyInArray!0 (select (arr!49188 a!2792) j!64)))))

(declare-fun b!1535152 () Bool)

(declare-fun res!1052373 () Bool)

(assert (=> b!1535152 (=> (not res!1052373) (not e!854701))))

(assert (=> b!1535152 (= res!1052373 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49739 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49739 a!2792)) (= (select (arr!49188 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535153 () Bool)

(declare-fun res!1052370 () Bool)

(assert (=> b!1535153 (=> (not res!1052370) (not e!854701))))

(assert (=> b!1535153 (= res!1052370 (not (= (select (arr!49188 a!2792) index!463) (select (arr!49188 a!2792) j!64))))))

(declare-fun res!1052378 () Bool)

(assert (=> start!130928 (=> (not res!1052378) (not e!854701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130928 (= res!1052378 (validMask!0 mask!2480))))

(assert (=> start!130928 e!854701))

(assert (=> start!130928 true))

(declare-fun array_inv!38133 (array!101953) Bool)

(assert (=> start!130928 (array_inv!38133 a!2792)))

(declare-fun b!1535154 () Bool)

(assert (=> b!1535154 (= e!854702 false)))

(declare-fun lt!663949 () SeekEntryResult!13343)

(assert (=> b!1535154 (= lt!663949 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663948 vacantIndex!5 (select (arr!49188 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535155 () Bool)

(declare-fun res!1052374 () Bool)

(assert (=> b!1535155 (=> (not res!1052374) (not e!854701))))

(assert (=> b!1535155 (= res!1052374 (and (= (size!49739 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49739 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49739 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130928 res!1052378) b!1535155))

(assert (= (and b!1535155 res!1052374) b!1535150))

(assert (= (and b!1535150 res!1052372) b!1535151))

(assert (= (and b!1535151 res!1052376) b!1535146))

(assert (= (and b!1535146 res!1052377) b!1535149))

(assert (= (and b!1535149 res!1052379) b!1535152))

(assert (= (and b!1535152 res!1052373) b!1535148))

(assert (= (and b!1535148 res!1052375) b!1535153))

(assert (= (and b!1535153 res!1052370) b!1535147))

(assert (= (and b!1535147 res!1052371) b!1535154))

(declare-fun m!1417735 () Bool)

(assert (=> b!1535148 m!1417735))

(assert (=> b!1535148 m!1417735))

(declare-fun m!1417737 () Bool)

(assert (=> b!1535148 m!1417737))

(declare-fun m!1417739 () Bool)

(assert (=> start!130928 m!1417739))

(declare-fun m!1417741 () Bool)

(assert (=> start!130928 m!1417741))

(declare-fun m!1417743 () Bool)

(assert (=> b!1535149 m!1417743))

(assert (=> b!1535151 m!1417735))

(assert (=> b!1535151 m!1417735))

(declare-fun m!1417745 () Bool)

(assert (=> b!1535151 m!1417745))

(declare-fun m!1417747 () Bool)

(assert (=> b!1535152 m!1417747))

(declare-fun m!1417749 () Bool)

(assert (=> b!1535150 m!1417749))

(assert (=> b!1535150 m!1417749))

(declare-fun m!1417751 () Bool)

(assert (=> b!1535150 m!1417751))

(declare-fun m!1417753 () Bool)

(assert (=> b!1535153 m!1417753))

(assert (=> b!1535153 m!1417735))

(assert (=> b!1535154 m!1417735))

(assert (=> b!1535154 m!1417735))

(declare-fun m!1417755 () Bool)

(assert (=> b!1535154 m!1417755))

(declare-fun m!1417757 () Bool)

(assert (=> b!1535147 m!1417757))

(declare-fun m!1417759 () Bool)

(assert (=> b!1535146 m!1417759))

(push 1)

(assert (not start!130928))

(assert (not b!1535149))

(assert (not b!1535154))

(assert (not b!1535150))

