; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118242 () Bool)

(assert start!118242)

(declare-fun res!924575 () Bool)

(declare-fun e!783839 () Bool)

(assert (=> start!118242 (=> (not res!924575) (not e!783839))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118242 (= res!924575 (validMask!0 mask!2987))))

(assert (=> start!118242 e!783839))

(assert (=> start!118242 true))

(declare-datatypes ((array!94463 0))(
  ( (array!94464 (arr!45605 (Array (_ BitVec 32) (_ BitVec 64))) (size!46156 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94463)

(declare-fun array_inv!34550 (array!94463) Bool)

(assert (=> start!118242 (array_inv!34550 a!2938)))

(declare-fun b!1382873 () Bool)

(declare-fun res!924574 () Bool)

(assert (=> b!1382873 (=> (not res!924574) (not e!783839))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382873 (= res!924574 (and (= (size!46156 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46156 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46156 a!2938))))))

(declare-fun b!1382874 () Bool)

(declare-fun res!924576 () Bool)

(assert (=> b!1382874 (=> (not res!924576) (not e!783839))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382874 (= res!924576 (validKeyInArray!0 (select (arr!45605 a!2938) i!1065)))))

(declare-fun b!1382875 () Bool)

(assert (=> b!1382875 (= e!783839 false)))

(declare-fun lt!608440 () Bool)

(declare-datatypes ((List!32313 0))(
  ( (Nil!32310) (Cons!32309 (h!33518 (_ BitVec 64)) (t!47014 List!32313)) )
))
(declare-fun arrayNoDuplicates!0 (array!94463 (_ BitVec 32) List!32313) Bool)

(assert (=> b!1382875 (= lt!608440 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32310))))

(assert (= (and start!118242 res!924575) b!1382873))

(assert (= (and b!1382873 res!924574) b!1382874))

(assert (= (and b!1382874 res!924576) b!1382875))

(declare-fun m!1268037 () Bool)

(assert (=> start!118242 m!1268037))

(declare-fun m!1268039 () Bool)

(assert (=> start!118242 m!1268039))

(declare-fun m!1268041 () Bool)

(assert (=> b!1382874 m!1268041))

(assert (=> b!1382874 m!1268041))

(declare-fun m!1268043 () Bool)

(assert (=> b!1382874 m!1268043))

(declare-fun m!1268045 () Bool)

(assert (=> b!1382875 m!1268045))

(check-sat (not b!1382874) (not b!1382875) (not start!118242))
