; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128092 () Bool)

(assert start!128092)

(declare-fun b!1503926 () Bool)

(declare-fun res!1024786 () Bool)

(declare-fun e!840799 () Bool)

(assert (=> b!1503926 (=> (not res!1024786) (not e!840799))))

(declare-datatypes ((array!100281 0))(
  ( (array!100282 (arr!48391 (Array (_ BitVec 32) (_ BitVec 64))) (size!48942 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100281)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1503926 (= res!1024786 (not (= (select (arr!48391 a!2850) index!625) (select (arr!48391 a!2850) j!87))))))

(declare-fun b!1503927 () Bool)

(declare-fun res!1024790 () Bool)

(assert (=> b!1503927 (=> (not res!1024790) (not e!840799))))

(declare-datatypes ((List!35063 0))(
  ( (Nil!35060) (Cons!35059 (h!36457 (_ BitVec 64)) (t!49764 List!35063)) )
))
(declare-fun arrayNoDuplicates!0 (array!100281 (_ BitVec 32) List!35063) Bool)

(assert (=> b!1503927 (= res!1024790 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!35060))))

(declare-fun b!1503928 () Bool)

(declare-fun res!1024789 () Bool)

(assert (=> b!1503928 (=> (not res!1024789) (not e!840799))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1503928 (= res!1024789 (validKeyInArray!0 (select (arr!48391 a!2850) i!996)))))

(declare-fun b!1503929 () Bool)

(declare-fun res!1024788 () Bool)

(assert (=> b!1503929 (=> (not res!1024788) (not e!840799))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1503929 (= res!1024788 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48942 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48942 a!2850)) (= (select (arr!48391 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48391 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48942 a!2850))))))

(declare-fun b!1503930 () Bool)

(declare-fun res!1024792 () Bool)

(assert (=> b!1503930 (=> (not res!1024792) (not e!840799))))

(assert (=> b!1503930 (= res!1024792 (validKeyInArray!0 (select (arr!48391 a!2850) j!87)))))

(declare-fun b!1503931 () Bool)

(declare-fun res!1024793 () Bool)

(assert (=> b!1503931 (=> (not res!1024793) (not e!840799))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100281 (_ BitVec 32)) Bool)

(assert (=> b!1503931 (= res!1024793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1503933 () Bool)

(declare-fun res!1024787 () Bool)

(assert (=> b!1503933 (=> (not res!1024787) (not e!840799))))

(declare-datatypes ((SeekEntryResult!12608 0))(
  ( (MissingZero!12608 (index!52823 (_ BitVec 32))) (Found!12608 (index!52824 (_ BitVec 32))) (Intermediate!12608 (undefined!13420 Bool) (index!52825 (_ BitVec 32)) (x!134523 (_ BitVec 32))) (Undefined!12608) (MissingVacant!12608 (index!52826 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100281 (_ BitVec 32)) SeekEntryResult!12608)

(assert (=> b!1503933 (= res!1024787 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48391 a!2850) j!87) a!2850 mask!2661) (Found!12608 j!87)))))

(declare-fun b!1503934 () Bool)

(declare-fun res!1024794 () Bool)

(assert (=> b!1503934 (=> (not res!1024794) (not e!840799))))

(assert (=> b!1503934 (= res!1024794 (and (= (size!48942 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48942 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48942 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1024791 () Bool)

(assert (=> start!128092 (=> (not res!1024791) (not e!840799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128092 (= res!1024791 (validMask!0 mask!2661))))

(assert (=> start!128092 e!840799))

(assert (=> start!128092 true))

(declare-fun array_inv!37336 (array!100281) Bool)

(assert (=> start!128092 (array_inv!37336 a!2850)))

(declare-fun b!1503932 () Bool)

(assert (=> b!1503932 (= e!840799 false)))

(declare-fun lt!653587 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1503932 (= lt!653587 (nextIndex!0 index!625 x!647 mask!2661))))

(assert (= (and start!128092 res!1024791) b!1503934))

(assert (= (and b!1503934 res!1024794) b!1503928))

(assert (= (and b!1503928 res!1024789) b!1503930))

(assert (= (and b!1503930 res!1024792) b!1503931))

(assert (= (and b!1503931 res!1024793) b!1503927))

(assert (= (and b!1503927 res!1024790) b!1503929))

(assert (= (and b!1503929 res!1024788) b!1503933))

(assert (= (and b!1503933 res!1024787) b!1503926))

(assert (= (and b!1503926 res!1024786) b!1503932))

(declare-fun m!1387185 () Bool)

(assert (=> b!1503928 m!1387185))

(assert (=> b!1503928 m!1387185))

(declare-fun m!1387187 () Bool)

(assert (=> b!1503928 m!1387187))

(declare-fun m!1387189 () Bool)

(assert (=> b!1503927 m!1387189))

(declare-fun m!1387191 () Bool)

(assert (=> b!1503930 m!1387191))

(assert (=> b!1503930 m!1387191))

(declare-fun m!1387193 () Bool)

(assert (=> b!1503930 m!1387193))

(assert (=> b!1503933 m!1387191))

(assert (=> b!1503933 m!1387191))

(declare-fun m!1387195 () Bool)

(assert (=> b!1503933 m!1387195))

(declare-fun m!1387197 () Bool)

(assert (=> b!1503929 m!1387197))

(declare-fun m!1387199 () Bool)

(assert (=> b!1503929 m!1387199))

(declare-fun m!1387201 () Bool)

(assert (=> b!1503929 m!1387201))

(declare-fun m!1387203 () Bool)

(assert (=> b!1503931 m!1387203))

(declare-fun m!1387205 () Bool)

(assert (=> b!1503932 m!1387205))

(declare-fun m!1387207 () Bool)

(assert (=> start!128092 m!1387207))

(declare-fun m!1387209 () Bool)

(assert (=> start!128092 m!1387209))

(declare-fun m!1387211 () Bool)

(assert (=> b!1503926 m!1387211))

(assert (=> b!1503926 m!1387191))

(push 1)

(assert (not b!1503930))

(assert (not b!1503928))

(assert (not b!1503933))

(assert (not b!1503932))

(assert (not b!1503931))

(assert (not start!128092))

(assert (not b!1503927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

