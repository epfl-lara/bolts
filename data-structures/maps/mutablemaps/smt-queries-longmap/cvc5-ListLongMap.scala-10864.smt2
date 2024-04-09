; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127402 () Bool)

(assert start!127402)

(declare-fun b!1496836 () Bool)

(declare-fun res!1018190 () Bool)

(declare-fun e!838349 () Bool)

(assert (=> b!1496836 (=> (not res!1018190) (not e!838349))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1496836 (= res!1018190 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1496837 () Bool)

(declare-fun res!1018178 () Bool)

(declare-fun e!838341 () Bool)

(assert (=> b!1496837 (=> res!1018178 e!838341)))

(declare-datatypes ((SeekEntryResult!12411 0))(
  ( (MissingZero!12411 (index!52035 (_ BitVec 32))) (Found!12411 (index!52036 (_ BitVec 32))) (Intermediate!12411 (undefined!13223 Bool) (index!52037 (_ BitVec 32)) (x!133666 (_ BitVec 32))) (Undefined!12411) (MissingVacant!12411 (index!52038 (_ BitVec 32))) )
))
(declare-fun lt!652199 () SeekEntryResult!12411)

(declare-fun lt!652203 () (_ BitVec 32))

(declare-datatypes ((array!99777 0))(
  ( (array!99778 (arr!48148 (Array (_ BitVec 32) (_ BitVec 64))) (size!48699 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99777)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99777 (_ BitVec 32)) SeekEntryResult!12411)

(assert (=> b!1496837 (= res!1018178 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652203 (select (arr!48148 a!2862) j!93) a!2862 mask!2687) lt!652199)))))

(declare-fun b!1496838 () Bool)

(declare-fun res!1018187 () Bool)

(assert (=> b!1496838 (=> res!1018187 e!838341)))

(assert (=> b!1496838 (= res!1018187 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1496839 () Bool)

(declare-fun res!1018182 () Bool)

(declare-fun e!838348 () Bool)

(assert (=> b!1496839 (=> (not res!1018182) (not e!838348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99777 (_ BitVec 32)) Bool)

(assert (=> b!1496839 (= res!1018182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1496840 () Bool)

(declare-fun res!1018175 () Bool)

(assert (=> b!1496840 (=> (not res!1018175) (not e!838348))))

(declare-datatypes ((List!34829 0))(
  ( (Nil!34826) (Cons!34825 (h!36223 (_ BitVec 64)) (t!49530 List!34829)) )
))
(declare-fun arrayNoDuplicates!0 (array!99777 (_ BitVec 32) List!34829) Bool)

(assert (=> b!1496840 (= res!1018175 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34826))))

(declare-fun b!1496841 () Bool)

(declare-fun res!1018189 () Bool)

(assert (=> b!1496841 (=> res!1018189 e!838341)))

(declare-fun e!838347 () Bool)

(assert (=> b!1496841 (= res!1018189 e!838347)))

(declare-fun c!138868 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1496841 (= c!138868 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1496842 () Bool)

(declare-fun e!838345 () Bool)

(assert (=> b!1496842 (= e!838345 e!838341)))

(declare-fun res!1018186 () Bool)

(assert (=> b!1496842 (=> res!1018186 e!838341)))

(assert (=> b!1496842 (= res!1018186 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!652203 #b00000000000000000000000000000000) (bvsge lt!652203 (size!48699 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496842 (= lt!652203 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1496843 () Bool)

(declare-fun res!1018184 () Bool)

(assert (=> b!1496843 (=> (not res!1018184) (not e!838349))))

(declare-fun e!838343 () Bool)

(assert (=> b!1496843 (= res!1018184 e!838343)))

(declare-fun c!138869 () Bool)

(assert (=> b!1496843 (= c!138869 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1496844 () Bool)

(assert (=> b!1496844 (= e!838341 true)))

(declare-fun lt!652202 () (_ BitVec 64))

(declare-fun lt!652198 () SeekEntryResult!12411)

(declare-fun lt!652200 () array!99777)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99777 (_ BitVec 32)) SeekEntryResult!12411)

(assert (=> b!1496844 (= lt!652198 (seekEntryOrOpen!0 lt!652202 lt!652200 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!50110 0))(
  ( (Unit!50111) )
))
(declare-fun lt!652204 () Unit!50110)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50110)

(assert (=> b!1496844 (= lt!652204 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!652203 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1496845 () Bool)

(assert (=> b!1496845 (= e!838349 (not e!838345))))

(declare-fun res!1018179 () Bool)

(assert (=> b!1496845 (=> res!1018179 e!838345)))

(assert (=> b!1496845 (= res!1018179 (or (and (= (select (arr!48148 a!2862) index!646) (select (store (arr!48148 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48148 a!2862) index!646) (select (arr!48148 a!2862) j!93))) (= (select (arr!48148 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1496845 (and (= lt!652198 (Found!12411 j!93)) (or (= (select (arr!48148 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48148 a!2862) intermediateBeforeIndex!19) (select (arr!48148 a!2862) j!93))))))

(assert (=> b!1496845 (= lt!652198 (seekEntryOrOpen!0 (select (arr!48148 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1496845 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!652201 () Unit!50110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50110)

(assert (=> b!1496845 (= lt!652201 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!652197 () SeekEntryResult!12411)

(declare-fun b!1496846 () Bool)

(assert (=> b!1496846 (= e!838347 (not (= lt!652197 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652203 lt!652202 lt!652200 mask!2687))))))

(declare-fun b!1496847 () Bool)

(assert (=> b!1496847 (= e!838343 (= lt!652197 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!652202 lt!652200 mask!2687)))))

(declare-fun b!1496848 () Bool)

(declare-fun res!1018180 () Bool)

(assert (=> b!1496848 (=> (not res!1018180) (not e!838348))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1496848 (= res!1018180 (validKeyInArray!0 (select (arr!48148 a!2862) j!93)))))

(declare-fun b!1496849 () Bool)

(declare-fun res!1018174 () Bool)

(declare-fun e!838342 () Bool)

(assert (=> b!1496849 (=> (not res!1018174) (not e!838342))))

(assert (=> b!1496849 (= res!1018174 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48148 a!2862) j!93) a!2862 mask!2687) lt!652199))))

(declare-fun b!1496850 () Bool)

(declare-fun e!838344 () Bool)

(assert (=> b!1496850 (= e!838348 e!838344)))

(declare-fun res!1018181 () Bool)

(assert (=> b!1496850 (=> (not res!1018181) (not e!838344))))

(assert (=> b!1496850 (= res!1018181 (= (select (store (arr!48148 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1496850 (= lt!652200 (array!99778 (store (arr!48148 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48699 a!2862)))))

(declare-fun b!1496851 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99777 (_ BitVec 32)) SeekEntryResult!12411)

(assert (=> b!1496851 (= e!838347 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!652203 intermediateAfterIndex!19 lt!652202 lt!652200 mask!2687) (seekEntryOrOpen!0 lt!652202 lt!652200 mask!2687))))))

(declare-fun res!1018176 () Bool)

(assert (=> start!127402 (=> (not res!1018176) (not e!838348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127402 (= res!1018176 (validMask!0 mask!2687))))

(assert (=> start!127402 e!838348))

(assert (=> start!127402 true))

(declare-fun array_inv!37093 (array!99777) Bool)

(assert (=> start!127402 (array_inv!37093 a!2862)))

(declare-fun b!1496852 () Bool)

(assert (=> b!1496852 (= e!838342 e!838349)))

(declare-fun res!1018185 () Bool)

(assert (=> b!1496852 (=> (not res!1018185) (not e!838349))))

(assert (=> b!1496852 (= res!1018185 (= lt!652197 (Intermediate!12411 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1496852 (= lt!652197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!652202 mask!2687) lt!652202 lt!652200 mask!2687))))

(assert (=> b!1496852 (= lt!652202 (select (store (arr!48148 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1496853 () Bool)

(assert (=> b!1496853 (= e!838343 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!652202 lt!652200 mask!2687) (seekEntryOrOpen!0 lt!652202 lt!652200 mask!2687)))))

(declare-fun b!1496854 () Bool)

(assert (=> b!1496854 (= e!838344 e!838342)))

(declare-fun res!1018191 () Bool)

(assert (=> b!1496854 (=> (not res!1018191) (not e!838342))))

(assert (=> b!1496854 (= res!1018191 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48148 a!2862) j!93) mask!2687) (select (arr!48148 a!2862) j!93) a!2862 mask!2687) lt!652199))))

(assert (=> b!1496854 (= lt!652199 (Intermediate!12411 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1496855 () Bool)

(declare-fun res!1018183 () Bool)

(assert (=> b!1496855 (=> (not res!1018183) (not e!838348))))

(assert (=> b!1496855 (= res!1018183 (and (= (size!48699 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48699 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48699 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1496856 () Bool)

(declare-fun res!1018188 () Bool)

(assert (=> b!1496856 (=> (not res!1018188) (not e!838348))))

(assert (=> b!1496856 (= res!1018188 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48699 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48699 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48699 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1496857 () Bool)

(declare-fun res!1018177 () Bool)

(assert (=> b!1496857 (=> (not res!1018177) (not e!838348))))

(assert (=> b!1496857 (= res!1018177 (validKeyInArray!0 (select (arr!48148 a!2862) i!1006)))))

(assert (= (and start!127402 res!1018176) b!1496855))

(assert (= (and b!1496855 res!1018183) b!1496857))

(assert (= (and b!1496857 res!1018177) b!1496848))

(assert (= (and b!1496848 res!1018180) b!1496839))

(assert (= (and b!1496839 res!1018182) b!1496840))

(assert (= (and b!1496840 res!1018175) b!1496856))

(assert (= (and b!1496856 res!1018188) b!1496850))

(assert (= (and b!1496850 res!1018181) b!1496854))

(assert (= (and b!1496854 res!1018191) b!1496849))

(assert (= (and b!1496849 res!1018174) b!1496852))

(assert (= (and b!1496852 res!1018185) b!1496843))

(assert (= (and b!1496843 c!138869) b!1496847))

(assert (= (and b!1496843 (not c!138869)) b!1496853))

(assert (= (and b!1496843 res!1018184) b!1496836))

(assert (= (and b!1496836 res!1018190) b!1496845))

(assert (= (and b!1496845 (not res!1018179)) b!1496842))

(assert (= (and b!1496842 (not res!1018186)) b!1496837))

(assert (= (and b!1496837 (not res!1018178)) b!1496841))

(assert (= (and b!1496841 c!138868) b!1496846))

(assert (= (and b!1496841 (not c!138868)) b!1496851))

(assert (= (and b!1496841 (not res!1018189)) b!1496838))

(assert (= (and b!1496838 (not res!1018187)) b!1496844))

(declare-fun m!1380021 () Bool)

(assert (=> b!1496854 m!1380021))

(assert (=> b!1496854 m!1380021))

(declare-fun m!1380023 () Bool)

(assert (=> b!1496854 m!1380023))

(assert (=> b!1496854 m!1380023))

(assert (=> b!1496854 m!1380021))

(declare-fun m!1380025 () Bool)

(assert (=> b!1496854 m!1380025))

(declare-fun m!1380027 () Bool)

(assert (=> b!1496847 m!1380027))

(assert (=> b!1496848 m!1380021))

(assert (=> b!1496848 m!1380021))

(declare-fun m!1380029 () Bool)

(assert (=> b!1496848 m!1380029))

(declare-fun m!1380031 () Bool)

(assert (=> b!1496844 m!1380031))

(declare-fun m!1380033 () Bool)

(assert (=> b!1496844 m!1380033))

(declare-fun m!1380035 () Bool)

(assert (=> b!1496853 m!1380035))

(assert (=> b!1496853 m!1380031))

(declare-fun m!1380037 () Bool)

(assert (=> b!1496839 m!1380037))

(declare-fun m!1380039 () Bool)

(assert (=> b!1496845 m!1380039))

(declare-fun m!1380041 () Bool)

(assert (=> b!1496845 m!1380041))

(declare-fun m!1380043 () Bool)

(assert (=> b!1496845 m!1380043))

(declare-fun m!1380045 () Bool)

(assert (=> b!1496845 m!1380045))

(declare-fun m!1380047 () Bool)

(assert (=> b!1496845 m!1380047))

(assert (=> b!1496845 m!1380021))

(declare-fun m!1380049 () Bool)

(assert (=> b!1496845 m!1380049))

(declare-fun m!1380051 () Bool)

(assert (=> b!1496845 m!1380051))

(assert (=> b!1496845 m!1380021))

(declare-fun m!1380053 () Bool)

(assert (=> b!1496842 m!1380053))

(assert (=> b!1496837 m!1380021))

(assert (=> b!1496837 m!1380021))

(declare-fun m!1380055 () Bool)

(assert (=> b!1496837 m!1380055))

(assert (=> b!1496849 m!1380021))

(assert (=> b!1496849 m!1380021))

(declare-fun m!1380057 () Bool)

(assert (=> b!1496849 m!1380057))

(declare-fun m!1380059 () Bool)

(assert (=> b!1496851 m!1380059))

(assert (=> b!1496851 m!1380031))

(declare-fun m!1380061 () Bool)

(assert (=> b!1496857 m!1380061))

(assert (=> b!1496857 m!1380061))

(declare-fun m!1380063 () Bool)

(assert (=> b!1496857 m!1380063))

(declare-fun m!1380065 () Bool)

(assert (=> b!1496846 m!1380065))

(assert (=> b!1496850 m!1380041))

(declare-fun m!1380067 () Bool)

(assert (=> b!1496850 m!1380067))

(declare-fun m!1380069 () Bool)

(assert (=> start!127402 m!1380069))

(declare-fun m!1380071 () Bool)

(assert (=> start!127402 m!1380071))

(declare-fun m!1380073 () Bool)

(assert (=> b!1496840 m!1380073))

(declare-fun m!1380075 () Bool)

(assert (=> b!1496852 m!1380075))

(assert (=> b!1496852 m!1380075))

(declare-fun m!1380077 () Bool)

(assert (=> b!1496852 m!1380077))

(assert (=> b!1496852 m!1380041))

(declare-fun m!1380079 () Bool)

(assert (=> b!1496852 m!1380079))

(push 1)

