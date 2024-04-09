; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118308 () Bool)

(assert start!118308)

(declare-fun b!1383259 () Bool)

(declare-fun e!784036 () Bool)

(assert (=> b!1383259 (= e!784036 false)))

(declare-fun lt!608530 () Bool)

(declare-datatypes ((array!94529 0))(
  ( (array!94530 (arr!45638 (Array (_ BitVec 32) (_ BitVec 64))) (size!46189 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94529)

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94529 (_ BitVec 32)) Bool)

(assert (=> b!1383259 (= lt!608530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383257 () Bool)

(declare-fun res!924959 () Bool)

(assert (=> b!1383257 (=> (not res!924959) (not e!784036))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383257 (= res!924959 (validKeyInArray!0 (select (arr!45638 a!2938) i!1065)))))

(declare-fun b!1383258 () Bool)

(declare-fun res!924960 () Bool)

(assert (=> b!1383258 (=> (not res!924960) (not e!784036))))

(declare-datatypes ((List!32346 0))(
  ( (Nil!32343) (Cons!32342 (h!33551 (_ BitVec 64)) (t!47047 List!32346)) )
))
(declare-fun arrayNoDuplicates!0 (array!94529 (_ BitVec 32) List!32346) Bool)

(assert (=> b!1383258 (= res!924960 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32343))))

(declare-fun res!924957 () Bool)

(assert (=> start!118308 (=> (not res!924957) (not e!784036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118308 (= res!924957 (validMask!0 mask!2987))))

(assert (=> start!118308 e!784036))

(assert (=> start!118308 true))

(declare-fun array_inv!34583 (array!94529) Bool)

(assert (=> start!118308 (array_inv!34583 a!2938)))

(declare-fun b!1383256 () Bool)

(declare-fun res!924958 () Bool)

(assert (=> b!1383256 (=> (not res!924958) (not e!784036))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383256 (= res!924958 (and (= (size!46189 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46189 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46189 a!2938))))))

(assert (= (and start!118308 res!924957) b!1383256))

(assert (= (and b!1383256 res!924958) b!1383257))

(assert (= (and b!1383257 res!924959) b!1383258))

(assert (= (and b!1383258 res!924960) b!1383259))

(declare-fun m!1268417 () Bool)

(assert (=> b!1383259 m!1268417))

(declare-fun m!1268419 () Bool)

(assert (=> b!1383257 m!1268419))

(assert (=> b!1383257 m!1268419))

(declare-fun m!1268421 () Bool)

(assert (=> b!1383257 m!1268421))

(declare-fun m!1268423 () Bool)

(assert (=> b!1383258 m!1268423))

(declare-fun m!1268425 () Bool)

(assert (=> start!118308 m!1268425))

(declare-fun m!1268427 () Bool)

(assert (=> start!118308 m!1268427))

(check-sat (not b!1383259) (not start!118308) (not b!1383258) (not b!1383257))
