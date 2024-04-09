; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71988 () Bool)

(assert start!71988)

(declare-fun b!836025 () Bool)

(declare-fun res!568933 () Bool)

(declare-fun e!466413 () Bool)

(assert (=> b!836025 (=> (not res!568933) (not e!466413))))

(declare-fun to!390 () (_ BitVec 32))

(declare-datatypes ((array!46842 0))(
  ( (array!46843 (arr!22451 (Array (_ BitVec 32) (_ BitVec 64))) (size!22872 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46842)

(assert (=> b!836025 (= res!568933 (= to!390 (size!22872 a!4227)))))

(declare-fun b!836026 () Bool)

(declare-fun res!568929 () Bool)

(declare-fun e!466415 () Bool)

(assert (=> b!836026 (=> (not res!568929) (not e!466415))))

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> b!836026 (= res!568929 (and (bvslt (size!22872 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22872 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!836027 () Bool)

(declare-fun res!568930 () Bool)

(assert (=> b!836027 (=> (not res!568930) (not e!466415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!836027 (= res!568930 (not (validKeyInArray!0 (select (arr!22451 a!4227) i!1466))))))

(declare-fun lt!380325 () array!46842)

(declare-fun b!836028 () Bool)

(declare-fun arrayCountValidKeys!0 (array!46842 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!836028 (= e!466413 (not (= (arrayCountValidKeys!0 lt!380325 (bvadd #b00000000000000000000000000000001 i!1466) (size!22872 a!4227)) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) (size!22872 a!4227)))))))

(declare-fun res!568931 () Bool)

(assert (=> start!71988 (=> (not res!568931) (not e!466415))))

(assert (=> start!71988 (= res!568931 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22872 a!4227))))))

(assert (=> start!71988 e!466415))

(assert (=> start!71988 true))

(declare-fun array_inv!17874 (array!46842) Bool)

(assert (=> start!71988 (array_inv!17874 a!4227)))

(declare-fun b!836029 () Bool)

(assert (=> b!836029 (= e!466415 e!466413)))

(declare-fun res!568932 () Bool)

(assert (=> b!836029 (=> (not res!568932) (not e!466413))))

(assert (=> b!836029 (= res!568932 (= (arrayCountValidKeys!0 lt!380325 (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun k0!2968 () (_ BitVec 64))

(assert (=> b!836029 (= lt!380325 (array!46843 (store (arr!22451 a!4227) i!1466 k0!2968) (size!22872 a!4227)))))

(declare-fun b!836030 () Bool)

(declare-fun res!568928 () Bool)

(assert (=> b!836030 (=> (not res!568928) (not e!466415))))

(assert (=> b!836030 (= res!568928 (validKeyInArray!0 k0!2968))))

(assert (= (and start!71988 res!568931) b!836027))

(assert (= (and b!836027 res!568930) b!836030))

(assert (= (and b!836030 res!568928) b!836026))

(assert (= (and b!836026 res!568929) b!836029))

(assert (= (and b!836029 res!568932) b!836025))

(assert (= (and b!836025 res!568933) b!836028))

(declare-fun m!781537 () Bool)

(assert (=> b!836028 m!781537))

(declare-fun m!781539 () Bool)

(assert (=> b!836028 m!781539))

(declare-fun m!781541 () Bool)

(assert (=> start!71988 m!781541))

(declare-fun m!781543 () Bool)

(assert (=> b!836030 m!781543))

(declare-fun m!781545 () Bool)

(assert (=> b!836027 m!781545))

(assert (=> b!836027 m!781545))

(declare-fun m!781547 () Bool)

(assert (=> b!836027 m!781547))

(declare-fun m!781549 () Bool)

(assert (=> b!836029 m!781549))

(declare-fun m!781551 () Bool)

(assert (=> b!836029 m!781551))

(declare-fun m!781553 () Bool)

(assert (=> b!836029 m!781553))

(check-sat (not b!836029) (not b!836028) (not b!836030) (not start!71988) (not b!836027))
(check-sat)
