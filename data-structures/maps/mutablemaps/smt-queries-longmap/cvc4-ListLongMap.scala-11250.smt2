; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131204 () Bool)

(assert start!131204)

(declare-fun res!1055810 () Bool)

(declare-fun e!856033 () Bool)

(assert (=> start!131204 (=> (not res!1055810) (not e!856033))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131204 (= res!1055810 (validMask!0 mask!2480))))

(assert (=> start!131204 e!856033))

(assert (=> start!131204 true))

(declare-datatypes ((array!102196 0))(
  ( (array!102197 (arr!49308 (Array (_ BitVec 32) (_ BitVec 64))) (size!49859 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102196)

(declare-fun array_inv!38253 (array!102196) Bool)

(assert (=> start!131204 (array_inv!38253 a!2792)))

(declare-fun b!1538693 () Bool)

(declare-fun res!1055814 () Bool)

(assert (=> b!1538693 (=> (not res!1055814) (not e!856033))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13457 0))(
  ( (MissingZero!13457 (index!56222 (_ BitVec 32))) (Found!13457 (index!56223 (_ BitVec 32))) (Intermediate!13457 (undefined!14269 Bool) (index!56224 (_ BitVec 32)) (x!137953 (_ BitVec 32))) (Undefined!13457) (MissingVacant!13457 (index!56225 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102196 (_ BitVec 32)) SeekEntryResult!13457)

(assert (=> b!1538693 (= res!1055814 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49308 a!2792) j!64) a!2792 mask!2480) (Found!13457 j!64)))))

(declare-fun b!1538694 () Bool)

(declare-fun res!1055811 () Bool)

(assert (=> b!1538694 (=> (not res!1055811) (not e!856033))))

(declare-datatypes ((List!35962 0))(
  ( (Nil!35959) (Cons!35958 (h!37404 (_ BitVec 64)) (t!50663 List!35962)) )
))
(declare-fun arrayNoDuplicates!0 (array!102196 (_ BitVec 32) List!35962) Bool)

(assert (=> b!1538694 (= res!1055811 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35959))))

(declare-fun b!1538695 () Bool)

(declare-fun res!1055817 () Bool)

(assert (=> b!1538695 (=> (not res!1055817) (not e!856033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538695 (= res!1055817 (validKeyInArray!0 (select (arr!49308 a!2792) j!64)))))

(declare-fun b!1538696 () Bool)

(declare-fun res!1055816 () Bool)

(assert (=> b!1538696 (=> (not res!1055816) (not e!856033))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538696 (= res!1055816 (and (= (size!49859 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49859 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49859 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538697 () Bool)

(declare-fun res!1055813 () Bool)

(assert (=> b!1538697 (=> (not res!1055813) (not e!856033))))

(assert (=> b!1538697 (= res!1055813 (validKeyInArray!0 (select (arr!49308 a!2792) i!951)))))

(declare-fun b!1538698 () Bool)

(declare-fun res!1055809 () Bool)

(assert (=> b!1538698 (=> (not res!1055809) (not e!856033))))

(assert (=> b!1538698 (= res!1055809 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49859 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49859 a!2792)) (= (select (arr!49308 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538699 () Bool)

(declare-fun res!1055815 () Bool)

(assert (=> b!1538699 (=> (not res!1055815) (not e!856033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102196 (_ BitVec 32)) Bool)

(assert (=> b!1538699 (= res!1055815 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538700 () Bool)

(declare-fun res!1055812 () Bool)

(assert (=> b!1538700 (=> (not res!1055812) (not e!856033))))

(assert (=> b!1538700 (= res!1055812 (not (= (select (arr!49308 a!2792) index!463) (select (arr!49308 a!2792) j!64))))))

(declare-fun b!1538701 () Bool)

(assert (=> b!1538701 (= e!856033 false)))

(declare-fun lt!664864 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538701 (= lt!664864 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131204 res!1055810) b!1538696))

(assert (= (and b!1538696 res!1055816) b!1538697))

(assert (= (and b!1538697 res!1055813) b!1538695))

(assert (= (and b!1538695 res!1055817) b!1538699))

(assert (= (and b!1538699 res!1055815) b!1538694))

(assert (= (and b!1538694 res!1055811) b!1538698))

(assert (= (and b!1538698 res!1055809) b!1538693))

(assert (= (and b!1538693 res!1055814) b!1538700))

(assert (= (and b!1538700 res!1055812) b!1538701))

(declare-fun m!1421133 () Bool)

(assert (=> b!1538698 m!1421133))

(declare-fun m!1421135 () Bool)

(assert (=> b!1538693 m!1421135))

(assert (=> b!1538693 m!1421135))

(declare-fun m!1421137 () Bool)

(assert (=> b!1538693 m!1421137))

(declare-fun m!1421139 () Bool)

(assert (=> b!1538700 m!1421139))

(assert (=> b!1538700 m!1421135))

(declare-fun m!1421141 () Bool)

(assert (=> b!1538699 m!1421141))

(assert (=> b!1538695 m!1421135))

(assert (=> b!1538695 m!1421135))

(declare-fun m!1421143 () Bool)

(assert (=> b!1538695 m!1421143))

(declare-fun m!1421145 () Bool)

(assert (=> b!1538694 m!1421145))

(declare-fun m!1421147 () Bool)

(assert (=> b!1538701 m!1421147))

(declare-fun m!1421149 () Bool)

(assert (=> start!131204 m!1421149))

(declare-fun m!1421151 () Bool)

(assert (=> start!131204 m!1421151))

(declare-fun m!1421153 () Bool)

(assert (=> b!1538697 m!1421153))

(assert (=> b!1538697 m!1421153))

(declare-fun m!1421155 () Bool)

(assert (=> b!1538697 m!1421155))

(push 1)

(assert (not b!1538701))

(assert (not b!1538695))

(assert (not b!1538693))

(assert (not b!1538694))

(assert (not b!1538699))

(assert (not b!1538697))

(assert (not start!131204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

