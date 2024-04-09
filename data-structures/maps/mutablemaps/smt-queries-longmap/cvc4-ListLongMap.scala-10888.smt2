; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127640 () Bool)

(assert start!127640)

(declare-fun b!1498931 () Bool)

(declare-fun res!1020086 () Bool)

(declare-fun e!839173 () Bool)

(assert (=> b!1498931 (=> (not res!1020086) (not e!839173))))

(declare-datatypes ((array!99934 0))(
  ( (array!99935 (arr!48222 (Array (_ BitVec 32) (_ BitVec 64))) (size!48773 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99934)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun mask!2661 () (_ BitVec 32))

(assert (=> b!1498931 (= res!1020086 (and (= (select (arr!48222 a!2850) index!625) (select (arr!48222 a!2850) j!87)) (= j!87 index!625) (bvsge mask!2661 #b00000000000000000000000000000000) (bvslt index!625 (bvadd #b00000000000000000000000000000001 mask!2661)) (bvslt vacantAfter!10 (bvadd #b00000000000000000000000000000001 mask!2661))))))

(declare-fun b!1498932 () Bool)

(declare-fun res!1020084 () Bool)

(assert (=> b!1498932 (=> (not res!1020084) (not e!839173))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99934 (_ BitVec 32)) Bool)

(assert (=> b!1498932 (= res!1020084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1498933 () Bool)

(declare-fun res!1020083 () Bool)

(assert (=> b!1498933 (=> (not res!1020083) (not e!839173))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12451 0))(
  ( (MissingZero!12451 (index!52195 (_ BitVec 32))) (Found!12451 (index!52196 (_ BitVec 32))) (Intermediate!12451 (undefined!13263 Bool) (index!52197 (_ BitVec 32)) (x!133898 (_ BitVec 32))) (Undefined!12451) (MissingVacant!12451 (index!52198 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99934 (_ BitVec 32)) SeekEntryResult!12451)

(assert (=> b!1498933 (= res!1020083 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48222 a!2850) j!87) a!2850 mask!2661) (Found!12451 j!87)))))

(declare-fun b!1498934 () Bool)

(declare-fun res!1020080 () Bool)

(assert (=> b!1498934 (=> (not res!1020080) (not e!839173))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1498934 (= res!1020080 (validKeyInArray!0 (select (arr!48222 a!2850) j!87)))))

(declare-fun b!1498935 () Bool)

(declare-fun res!1020085 () Bool)

(assert (=> b!1498935 (=> (not res!1020085) (not e!839173))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1498935 (= res!1020085 (and (= (size!48773 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48773 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48773 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1498936 () Bool)

(declare-fun res!1020079 () Bool)

(assert (=> b!1498936 (=> (not res!1020079) (not e!839173))))

(assert (=> b!1498936 (= res!1020079 (validKeyInArray!0 (select (arr!48222 a!2850) i!996)))))

(declare-fun b!1498937 () Bool)

(declare-fun res!1020087 () Bool)

(assert (=> b!1498937 (=> (not res!1020087) (not e!839173))))

(assert (=> b!1498937 (= res!1020087 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48773 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48773 a!2850)) (= (select (arr!48222 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48222 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48773 a!2850))))))

(declare-fun b!1498938 () Bool)

(declare-fun res!1020082 () Bool)

(assert (=> b!1498938 (=> (not res!1020082) (not e!839173))))

(declare-datatypes ((List!34894 0))(
  ( (Nil!34891) (Cons!34890 (h!36288 (_ BitVec 64)) (t!49595 List!34894)) )
))
(declare-fun arrayNoDuplicates!0 (array!99934 (_ BitVec 32) List!34894) Bool)

(assert (=> b!1498938 (= res!1020082 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34891))))

(declare-fun b!1498939 () Bool)

(assert (=> b!1498939 (= e!839173 (not (validKeyInArray!0 (select (store (arr!48222 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) j!87))))))

(declare-fun res!1020081 () Bool)

(assert (=> start!127640 (=> (not res!1020081) (not e!839173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127640 (= res!1020081 (validMask!0 mask!2661))))

(assert (=> start!127640 e!839173))

(assert (=> start!127640 true))

(declare-fun array_inv!37167 (array!99934) Bool)

(assert (=> start!127640 (array_inv!37167 a!2850)))

(assert (= (and start!127640 res!1020081) b!1498935))

(assert (= (and b!1498935 res!1020085) b!1498936))

(assert (= (and b!1498936 res!1020079) b!1498934))

(assert (= (and b!1498934 res!1020080) b!1498932))

(assert (= (and b!1498932 res!1020084) b!1498938))

(assert (= (and b!1498938 res!1020082) b!1498937))

(assert (= (and b!1498937 res!1020087) b!1498933))

(assert (= (and b!1498933 res!1020083) b!1498931))

(assert (= (and b!1498931 res!1020086) b!1498939))

(declare-fun m!1382151 () Bool)

(assert (=> b!1498938 m!1382151))

(declare-fun m!1382153 () Bool)

(assert (=> b!1498933 m!1382153))

(assert (=> b!1498933 m!1382153))

(declare-fun m!1382155 () Bool)

(assert (=> b!1498933 m!1382155))

(declare-fun m!1382157 () Bool)

(assert (=> b!1498932 m!1382157))

(declare-fun m!1382159 () Bool)

(assert (=> b!1498936 m!1382159))

(assert (=> b!1498936 m!1382159))

(declare-fun m!1382161 () Bool)

(assert (=> b!1498936 m!1382161))

(declare-fun m!1382163 () Bool)

(assert (=> b!1498939 m!1382163))

(declare-fun m!1382165 () Bool)

(assert (=> b!1498939 m!1382165))

(assert (=> b!1498939 m!1382165))

(declare-fun m!1382167 () Bool)

(assert (=> b!1498939 m!1382167))

(declare-fun m!1382169 () Bool)

(assert (=> b!1498937 m!1382169))

(assert (=> b!1498937 m!1382163))

(declare-fun m!1382171 () Bool)

(assert (=> b!1498937 m!1382171))

(declare-fun m!1382173 () Bool)

(assert (=> b!1498931 m!1382173))

(assert (=> b!1498931 m!1382153))

(assert (=> b!1498934 m!1382153))

(assert (=> b!1498934 m!1382153))

(declare-fun m!1382175 () Bool)

(assert (=> b!1498934 m!1382175))

(declare-fun m!1382177 () Bool)

(assert (=> start!127640 m!1382177))

(declare-fun m!1382179 () Bool)

(assert (=> start!127640 m!1382179))

(push 1)

(assert (not b!1498934))

(assert (not b!1498938))

(assert (not b!1498932))

(assert (not b!1498939))

(assert (not start!127640))

(assert (not b!1498936))

(assert (not b!1498933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

