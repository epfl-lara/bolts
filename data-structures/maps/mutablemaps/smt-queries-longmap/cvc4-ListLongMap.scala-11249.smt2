; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131198 () Bool)

(assert start!131198)

(declare-fun b!1538612 () Bool)

(declare-fun res!1055729 () Bool)

(declare-fun e!856016 () Bool)

(assert (=> b!1538612 (=> (not res!1055729) (not e!856016))))

(declare-datatypes ((array!102190 0))(
  ( (array!102191 (arr!49305 (Array (_ BitVec 32) (_ BitVec 64))) (size!49856 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102190)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538612 (= res!1055729 (validKeyInArray!0 (select (arr!49305 a!2792) j!64)))))

(declare-fun res!1055735 () Bool)

(assert (=> start!131198 (=> (not res!1055735) (not e!856016))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131198 (= res!1055735 (validMask!0 mask!2480))))

(assert (=> start!131198 e!856016))

(assert (=> start!131198 true))

(declare-fun array_inv!38250 (array!102190) Bool)

(assert (=> start!131198 (array_inv!38250 a!2792)))

(declare-fun b!1538613 () Bool)

(declare-fun res!1055736 () Bool)

(assert (=> b!1538613 (=> (not res!1055736) (not e!856016))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13454 0))(
  ( (MissingZero!13454 (index!56210 (_ BitVec 32))) (Found!13454 (index!56211 (_ BitVec 32))) (Intermediate!13454 (undefined!14266 Bool) (index!56212 (_ BitVec 32)) (x!137942 (_ BitVec 32))) (Undefined!13454) (MissingVacant!13454 (index!56213 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102190 (_ BitVec 32)) SeekEntryResult!13454)

(assert (=> b!1538613 (= res!1055736 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49305 a!2792) j!64) a!2792 mask!2480) (Found!13454 j!64)))))

(declare-fun b!1538614 () Bool)

(declare-fun res!1055728 () Bool)

(assert (=> b!1538614 (=> (not res!1055728) (not e!856016))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538614 (= res!1055728 (and (= (size!49856 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49856 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49856 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538615 () Bool)

(assert (=> b!1538615 (= e!856016 false)))

(declare-fun lt!664855 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538615 (= lt!664855 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538616 () Bool)

(declare-fun res!1055730 () Bool)

(assert (=> b!1538616 (=> (not res!1055730) (not e!856016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102190 (_ BitVec 32)) Bool)

(assert (=> b!1538616 (= res!1055730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538617 () Bool)

(declare-fun res!1055732 () Bool)

(assert (=> b!1538617 (=> (not res!1055732) (not e!856016))))

(declare-datatypes ((List!35959 0))(
  ( (Nil!35956) (Cons!35955 (h!37401 (_ BitVec 64)) (t!50660 List!35959)) )
))
(declare-fun arrayNoDuplicates!0 (array!102190 (_ BitVec 32) List!35959) Bool)

(assert (=> b!1538617 (= res!1055732 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35956))))

(declare-fun b!1538618 () Bool)

(declare-fun res!1055734 () Bool)

(assert (=> b!1538618 (=> (not res!1055734) (not e!856016))))

(assert (=> b!1538618 (= res!1055734 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49856 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49856 a!2792)) (= (select (arr!49305 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538619 () Bool)

(declare-fun res!1055731 () Bool)

(assert (=> b!1538619 (=> (not res!1055731) (not e!856016))))

(assert (=> b!1538619 (= res!1055731 (validKeyInArray!0 (select (arr!49305 a!2792) i!951)))))

(declare-fun b!1538620 () Bool)

(declare-fun res!1055733 () Bool)

(assert (=> b!1538620 (=> (not res!1055733) (not e!856016))))

(assert (=> b!1538620 (= res!1055733 (not (= (select (arr!49305 a!2792) index!463) (select (arr!49305 a!2792) j!64))))))

(assert (= (and start!131198 res!1055735) b!1538614))

(assert (= (and b!1538614 res!1055728) b!1538619))

(assert (= (and b!1538619 res!1055731) b!1538612))

(assert (= (and b!1538612 res!1055729) b!1538616))

(assert (= (and b!1538616 res!1055730) b!1538617))

(assert (= (and b!1538617 res!1055732) b!1538618))

(assert (= (and b!1538618 res!1055734) b!1538613))

(assert (= (and b!1538613 res!1055736) b!1538620))

(assert (= (and b!1538620 res!1055733) b!1538615))

(declare-fun m!1421061 () Bool)

(assert (=> b!1538617 m!1421061))

(declare-fun m!1421063 () Bool)

(assert (=> b!1538613 m!1421063))

(assert (=> b!1538613 m!1421063))

(declare-fun m!1421065 () Bool)

(assert (=> b!1538613 m!1421065))

(assert (=> b!1538612 m!1421063))

(assert (=> b!1538612 m!1421063))

(declare-fun m!1421067 () Bool)

(assert (=> b!1538612 m!1421067))

(declare-fun m!1421069 () Bool)

(assert (=> start!131198 m!1421069))

(declare-fun m!1421071 () Bool)

(assert (=> start!131198 m!1421071))

(declare-fun m!1421073 () Bool)

(assert (=> b!1538620 m!1421073))

(assert (=> b!1538620 m!1421063))

(declare-fun m!1421075 () Bool)

(assert (=> b!1538619 m!1421075))

(assert (=> b!1538619 m!1421075))

(declare-fun m!1421077 () Bool)

(assert (=> b!1538619 m!1421077))

(declare-fun m!1421079 () Bool)

(assert (=> b!1538618 m!1421079))

(declare-fun m!1421081 () Bool)

(assert (=> b!1538615 m!1421081))

(declare-fun m!1421083 () Bool)

(assert (=> b!1538616 m!1421083))

(push 1)

(assert (not b!1538619))

(assert (not b!1538615))

(assert (not b!1538613))

(assert (not start!131198))

(assert (not b!1538617))

(assert (not b!1538612))

(assert (not b!1538616))

(check-sat)

(pop 1)

(push 1)

