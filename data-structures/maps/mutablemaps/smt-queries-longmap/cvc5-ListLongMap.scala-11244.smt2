; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131164 () Bool)

(assert start!131164)

(declare-fun res!1055276 () Bool)

(declare-fun e!855914 () Bool)

(assert (=> start!131164 (=> (not res!1055276) (not e!855914))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131164 (= res!1055276 (validMask!0 mask!2480))))

(assert (=> start!131164 e!855914))

(assert (=> start!131164 true))

(declare-datatypes ((array!102156 0))(
  ( (array!102157 (arr!49288 (Array (_ BitVec 32) (_ BitVec 64))) (size!49839 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102156)

(declare-fun array_inv!38233 (array!102156) Bool)

(assert (=> start!131164 (array_inv!38233 a!2792)))

(declare-fun b!1538153 () Bool)

(declare-fun res!1055274 () Bool)

(assert (=> b!1538153 (=> (not res!1055274) (not e!855914))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538153 (= res!1055274 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49839 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49839 a!2792)) (= (select (arr!49288 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538154 () Bool)

(declare-fun res!1055273 () Bool)

(assert (=> b!1538154 (=> (not res!1055273) (not e!855914))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538154 (= res!1055273 (validKeyInArray!0 (select (arr!49288 a!2792) j!64)))))

(declare-fun b!1538155 () Bool)

(declare-fun res!1055277 () Bool)

(assert (=> b!1538155 (=> (not res!1055277) (not e!855914))))

(assert (=> b!1538155 (= res!1055277 (not (= (select (arr!49288 a!2792) index!463) (select (arr!49288 a!2792) j!64))))))

(declare-fun b!1538156 () Bool)

(declare-fun res!1055271 () Bool)

(assert (=> b!1538156 (=> (not res!1055271) (not e!855914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102156 (_ BitVec 32)) Bool)

(assert (=> b!1538156 (= res!1055271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538157 () Bool)

(declare-fun res!1055269 () Bool)

(assert (=> b!1538157 (=> (not res!1055269) (not e!855914))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538157 (= res!1055269 (and (= (size!49839 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49839 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49839 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538158 () Bool)

(declare-fun res!1055272 () Bool)

(assert (=> b!1538158 (=> (not res!1055272) (not e!855914))))

(declare-datatypes ((List!35942 0))(
  ( (Nil!35939) (Cons!35938 (h!37384 (_ BitVec 64)) (t!50643 List!35942)) )
))
(declare-fun arrayNoDuplicates!0 (array!102156 (_ BitVec 32) List!35942) Bool)

(assert (=> b!1538158 (= res!1055272 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35939))))

(declare-fun b!1538159 () Bool)

(declare-fun res!1055275 () Bool)

(assert (=> b!1538159 (=> (not res!1055275) (not e!855914))))

(declare-datatypes ((SeekEntryResult!13437 0))(
  ( (MissingZero!13437 (index!56142 (_ BitVec 32))) (Found!13437 (index!56143 (_ BitVec 32))) (Intermediate!13437 (undefined!14249 Bool) (index!56144 (_ BitVec 32)) (x!137885 (_ BitVec 32))) (Undefined!13437) (MissingVacant!13437 (index!56145 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102156 (_ BitVec 32)) SeekEntryResult!13437)

(assert (=> b!1538159 (= res!1055275 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49288 a!2792) j!64) a!2792 mask!2480) (Found!13437 j!64)))))

(declare-fun b!1538160 () Bool)

(declare-fun res!1055270 () Bool)

(assert (=> b!1538160 (=> (not res!1055270) (not e!855914))))

(assert (=> b!1538160 (= res!1055270 (validKeyInArray!0 (select (arr!49288 a!2792) i!951)))))

(declare-fun b!1538161 () Bool)

(assert (=> b!1538161 (= e!855914 false)))

(declare-fun lt!664804 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538161 (= lt!664804 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131164 res!1055276) b!1538157))

(assert (= (and b!1538157 res!1055269) b!1538160))

(assert (= (and b!1538160 res!1055270) b!1538154))

(assert (= (and b!1538154 res!1055273) b!1538156))

(assert (= (and b!1538156 res!1055271) b!1538158))

(assert (= (and b!1538158 res!1055272) b!1538153))

(assert (= (and b!1538153 res!1055274) b!1538159))

(assert (= (and b!1538159 res!1055275) b!1538155))

(assert (= (and b!1538155 res!1055277) b!1538161))

(declare-fun m!1420653 () Bool)

(assert (=> b!1538161 m!1420653))

(declare-fun m!1420655 () Bool)

(assert (=> b!1538160 m!1420655))

(assert (=> b!1538160 m!1420655))

(declare-fun m!1420657 () Bool)

(assert (=> b!1538160 m!1420657))

(declare-fun m!1420659 () Bool)

(assert (=> b!1538158 m!1420659))

(declare-fun m!1420661 () Bool)

(assert (=> b!1538156 m!1420661))

(declare-fun m!1420663 () Bool)

(assert (=> b!1538159 m!1420663))

(assert (=> b!1538159 m!1420663))

(declare-fun m!1420665 () Bool)

(assert (=> b!1538159 m!1420665))

(declare-fun m!1420667 () Bool)

(assert (=> start!131164 m!1420667))

(declare-fun m!1420669 () Bool)

(assert (=> start!131164 m!1420669))

(declare-fun m!1420671 () Bool)

(assert (=> b!1538153 m!1420671))

(declare-fun m!1420673 () Bool)

(assert (=> b!1538155 m!1420673))

(assert (=> b!1538155 m!1420663))

(assert (=> b!1538154 m!1420663))

(assert (=> b!1538154 m!1420663))

(declare-fun m!1420675 () Bool)

(assert (=> b!1538154 m!1420675))

(push 1)

(assert (not start!131164))

(assert (not b!1538156))

(assert (not b!1538161))

(assert (not b!1538160))

(assert (not b!1538158))

(assert (not b!1538159))

(assert (not b!1538154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

