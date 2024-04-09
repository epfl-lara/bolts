; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130822 () Bool)

(assert start!130822)

(declare-fun b!1533759 () Bool)

(declare-fun res!1050989 () Bool)

(declare-fun e!854303 () Bool)

(assert (=> b!1533759 (=> (not res!1050989) (not e!854303))))

(declare-datatypes ((array!101847 0))(
  ( (array!101848 (arr!49135 (Array (_ BitVec 32) (_ BitVec 64))) (size!49686 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101847)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533759 (= res!1050989 (validKeyInArray!0 (select (arr!49135 a!2792) j!64)))))

(declare-fun res!1050984 () Bool)

(assert (=> start!130822 (=> (not res!1050984) (not e!854303))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130822 (= res!1050984 (validMask!0 mask!2480))))

(assert (=> start!130822 e!854303))

(assert (=> start!130822 true))

(declare-fun array_inv!38080 (array!101847) Bool)

(assert (=> start!130822 (array_inv!38080 a!2792)))

(declare-fun b!1533760 () Bool)

(declare-fun res!1050988 () Bool)

(assert (=> b!1533760 (=> (not res!1050988) (not e!854303))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533760 (= res!1050988 (and (= (size!49686 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49686 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49686 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533761 () Bool)

(declare-fun res!1050990 () Bool)

(assert (=> b!1533761 (=> (not res!1050990) (not e!854303))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533761 (= res!1050990 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49686 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49686 a!2792)) (= (select (arr!49135 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533762 () Bool)

(declare-fun res!1050987 () Bool)

(assert (=> b!1533762 (=> (not res!1050987) (not e!854303))))

(assert (=> b!1533762 (= res!1050987 (validKeyInArray!0 (select (arr!49135 a!2792) i!951)))))

(declare-fun b!1533763 () Bool)

(assert (=> b!1533763 (= e!854303 (and (= (select (arr!49135 a!2792) index!463) (select (arr!49135 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1533764 () Bool)

(declare-fun res!1050985 () Bool)

(assert (=> b!1533764 (=> (not res!1050985) (not e!854303))))

(declare-datatypes ((SeekEntryResult!13290 0))(
  ( (MissingZero!13290 (index!55554 (_ BitVec 32))) (Found!13290 (index!55555 (_ BitVec 32))) (Intermediate!13290 (undefined!14102 Bool) (index!55556 (_ BitVec 32)) (x!137327 (_ BitVec 32))) (Undefined!13290) (MissingVacant!13290 (index!55557 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101847 (_ BitVec 32)) SeekEntryResult!13290)

(assert (=> b!1533764 (= res!1050985 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49135 a!2792) j!64) a!2792 mask!2480) (Found!13290 j!64)))))

(declare-fun b!1533765 () Bool)

(declare-fun res!1050983 () Bool)

(assert (=> b!1533765 (=> (not res!1050983) (not e!854303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101847 (_ BitVec 32)) Bool)

(assert (=> b!1533765 (= res!1050983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533766 () Bool)

(declare-fun res!1050986 () Bool)

(assert (=> b!1533766 (=> (not res!1050986) (not e!854303))))

(declare-datatypes ((List!35789 0))(
  ( (Nil!35786) (Cons!35785 (h!37231 (_ BitVec 64)) (t!50490 List!35789)) )
))
(declare-fun arrayNoDuplicates!0 (array!101847 (_ BitVec 32) List!35789) Bool)

(assert (=> b!1533766 (= res!1050986 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35786))))

(assert (= (and start!130822 res!1050984) b!1533760))

(assert (= (and b!1533760 res!1050988) b!1533762))

(assert (= (and b!1533762 res!1050987) b!1533759))

(assert (= (and b!1533759 res!1050989) b!1533765))

(assert (= (and b!1533765 res!1050983) b!1533766))

(assert (= (and b!1533766 res!1050986) b!1533761))

(assert (= (and b!1533761 res!1050990) b!1533764))

(assert (= (and b!1533764 res!1050985) b!1533763))

(declare-fun m!1416495 () Bool)

(assert (=> b!1533766 m!1416495))

(declare-fun m!1416497 () Bool)

(assert (=> b!1533765 m!1416497))

(declare-fun m!1416499 () Bool)

(assert (=> b!1533761 m!1416499))

(declare-fun m!1416501 () Bool)

(assert (=> b!1533762 m!1416501))

(assert (=> b!1533762 m!1416501))

(declare-fun m!1416503 () Bool)

(assert (=> b!1533762 m!1416503))

(declare-fun m!1416505 () Bool)

(assert (=> b!1533759 m!1416505))

(assert (=> b!1533759 m!1416505))

(declare-fun m!1416507 () Bool)

(assert (=> b!1533759 m!1416507))

(assert (=> b!1533764 m!1416505))

(assert (=> b!1533764 m!1416505))

(declare-fun m!1416509 () Bool)

(assert (=> b!1533764 m!1416509))

(declare-fun m!1416511 () Bool)

(assert (=> start!130822 m!1416511))

(declare-fun m!1416513 () Bool)

(assert (=> start!130822 m!1416513))

(declare-fun m!1416515 () Bool)

(assert (=> b!1533763 m!1416515))

(assert (=> b!1533763 m!1416505))

(push 1)

(assert (not b!1533764))

(assert (not b!1533766))

(assert (not start!130822))

(assert (not b!1533762))

(assert (not b!1533765))

(assert (not b!1533759))

(check-sat)

(pop 1)

(push 1)

(check-sat)

