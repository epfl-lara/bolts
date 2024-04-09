; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118262 () Bool)

(assert start!118262)

(declare-fun res!924681 () Bool)

(declare-fun e!783898 () Bool)

(assert (=> start!118262 (=> (not res!924681) (not e!783898))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118262 (= res!924681 (validMask!0 mask!2987))))

(assert (=> start!118262 e!783898))

(assert (=> start!118262 true))

(declare-datatypes ((array!94483 0))(
  ( (array!94484 (arr!45615 (Array (_ BitVec 32) (_ BitVec 64))) (size!46166 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94483)

(declare-fun array_inv!34560 (array!94483) Bool)

(assert (=> start!118262 (array_inv!34560 a!2938)))

(declare-fun b!1382981 () Bool)

(declare-fun res!924684 () Bool)

(assert (=> b!1382981 (=> (not res!924684) (not e!783898))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382981 (= res!924684 (validKeyInArray!0 (select (arr!45615 a!2938) i!1065)))))

(declare-fun b!1382982 () Bool)

(declare-fun res!924682 () Bool)

(assert (=> b!1382982 (=> (not res!924682) (not e!783898))))

(declare-datatypes ((List!32323 0))(
  ( (Nil!32320) (Cons!32319 (h!33528 (_ BitVec 64)) (t!47024 List!32323)) )
))
(declare-fun arrayNoDuplicates!0 (array!94483 (_ BitVec 32) List!32323) Bool)

(assert (=> b!1382982 (= res!924682 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32320))))

(declare-fun b!1382980 () Bool)

(declare-fun res!924683 () Bool)

(assert (=> b!1382980 (=> (not res!924683) (not e!783898))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382980 (= res!924683 (and (= (size!46166 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46166 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46166 a!2938))))))

(declare-fun b!1382983 () Bool)

(assert (=> b!1382983 (= e!783898 false)))

(declare-fun lt!608461 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94483 (_ BitVec 32)) Bool)

(assert (=> b!1382983 (= lt!608461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118262 res!924681) b!1382980))

(assert (= (and b!1382980 res!924683) b!1382981))

(assert (= (and b!1382981 res!924684) b!1382982))

(assert (= (and b!1382982 res!924682) b!1382983))

(declare-fun m!1268141 () Bool)

(assert (=> start!118262 m!1268141))

(declare-fun m!1268143 () Bool)

(assert (=> start!118262 m!1268143))

(declare-fun m!1268145 () Bool)

(assert (=> b!1382981 m!1268145))

(assert (=> b!1382981 m!1268145))

(declare-fun m!1268147 () Bool)

(assert (=> b!1382981 m!1268147))

(declare-fun m!1268149 () Bool)

(assert (=> b!1382982 m!1268149))

(declare-fun m!1268151 () Bool)

(assert (=> b!1382983 m!1268151))

(push 1)

(assert (not start!118262))

(assert (not b!1382982))

(assert (not b!1382983))

(assert (not b!1382981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

