; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118454 () Bool)

(assert start!118454)

(declare-fun b!1385063 () Bool)

(declare-datatypes ((Unit!46191 0))(
  ( (Unit!46192) )
))
(declare-fun e!784815 () Unit!46191)

(declare-fun lt!609125 () Unit!46191)

(assert (=> b!1385063 (= e!784815 lt!609125)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!609127 () Unit!46191)

(declare-datatypes ((array!94675 0))(
  ( (array!94676 (arr!45711 (Array (_ BitVec 32) (_ BitVec 64))) (size!46262 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94675)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46191)

(assert (=> b!1385063 (= lt!609127 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10125 0))(
  ( (MissingZero!10125 (index!42870 (_ BitVec 32))) (Found!10125 (index!42871 (_ BitVec 32))) (Intermediate!10125 (undefined!10937 Bool) (index!42872 (_ BitVec 32)) (x!124369 (_ BitVec 32))) (Undefined!10125) (MissingVacant!10125 (index!42873 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94675 (_ BitVec 32)) SeekEntryResult!10125)

(assert (=> b!1385063 (= (seekEntryOrOpen!0 (select (arr!45711 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45711 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94676 (store (arr!45711 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46262 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46191)

(assert (=> b!1385063 (= lt!609125 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94675 (_ BitVec 32)) Bool)

(assert (=> b!1385063 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1385064 () Bool)

(declare-fun res!926464 () Bool)

(declare-fun e!784814 () Bool)

(assert (=> b!1385064 (=> (not res!926464) (not e!784814))))

(declare-datatypes ((List!32419 0))(
  ( (Nil!32416) (Cons!32415 (h!33624 (_ BitVec 64)) (t!47120 List!32419)) )
))
(declare-fun arrayNoDuplicates!0 (array!94675 (_ BitVec 32) List!32419) Bool)

(assert (=> b!1385064 (= res!926464 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32416))))

(declare-fun b!1385065 () Bool)

(assert (=> b!1385065 (= e!784814 (and (bvsge startIndex!16 (bvsub (size!46262 a!2938) #b00000000000000000000000000000001)) (bvsgt startIndex!16 (size!46262 a!2938))))))

(declare-fun lt!609126 () Unit!46191)

(assert (=> b!1385065 (= lt!609126 e!784815)))

(declare-fun c!128744 () Bool)

(declare-fun e!784817 () Bool)

(assert (=> b!1385065 (= c!128744 e!784817)))

(declare-fun res!926460 () Bool)

(assert (=> b!1385065 (=> (not res!926460) (not e!784817))))

(assert (=> b!1385065 (= res!926460 (not (= startIndex!16 i!1065)))))

(declare-fun b!1385066 () Bool)

(declare-fun Unit!46193 () Unit!46191)

(assert (=> b!1385066 (= e!784815 Unit!46193)))

(declare-fun res!926462 () Bool)

(assert (=> start!118454 (=> (not res!926462) (not e!784814))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118454 (= res!926462 (validMask!0 mask!2987))))

(assert (=> start!118454 e!784814))

(assert (=> start!118454 true))

(declare-fun array_inv!34656 (array!94675) Bool)

(assert (=> start!118454 (array_inv!34656 a!2938)))

(declare-fun b!1385067 () Bool)

(declare-fun res!926465 () Bool)

(assert (=> b!1385067 (=> (not res!926465) (not e!784814))))

(assert (=> b!1385067 (= res!926465 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385068 () Bool)

(declare-fun res!926463 () Bool)

(assert (=> b!1385068 (=> (not res!926463) (not e!784814))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385068 (= res!926463 (validKeyInArray!0 (select (arr!45711 a!2938) i!1065)))))

(declare-fun b!1385069 () Bool)

(assert (=> b!1385069 (= e!784817 (validKeyInArray!0 (select (arr!45711 a!2938) startIndex!16)))))

(declare-fun b!1385070 () Bool)

(declare-fun res!926466 () Bool)

(assert (=> b!1385070 (=> (not res!926466) (not e!784814))))

(assert (=> b!1385070 (= res!926466 (and (not (= (select (arr!45711 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45711 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1385071 () Bool)

(declare-fun res!926461 () Bool)

(assert (=> b!1385071 (=> (not res!926461) (not e!784814))))

(assert (=> b!1385071 (= res!926461 (and (= (size!46262 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46262 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46262 a!2938))))))

(assert (= (and start!118454 res!926462) b!1385071))

(assert (= (and b!1385071 res!926461) b!1385068))

(assert (= (and b!1385068 res!926463) b!1385064))

(assert (= (and b!1385064 res!926464) b!1385067))

(assert (= (and b!1385067 res!926465) b!1385070))

(assert (= (and b!1385070 res!926466) b!1385065))

(assert (= (and b!1385065 res!926460) b!1385069))

(assert (= (and b!1385065 c!128744) b!1385063))

(assert (= (and b!1385065 (not c!128744)) b!1385066))

(declare-fun m!1270451 () Bool)

(assert (=> b!1385064 m!1270451))

(declare-fun m!1270453 () Bool)

(assert (=> b!1385069 m!1270453))

(assert (=> b!1385069 m!1270453))

(declare-fun m!1270455 () Bool)

(assert (=> b!1385069 m!1270455))

(declare-fun m!1270457 () Bool)

(assert (=> b!1385068 m!1270457))

(assert (=> b!1385068 m!1270457))

(declare-fun m!1270459 () Bool)

(assert (=> b!1385068 m!1270459))

(declare-fun m!1270461 () Bool)

(assert (=> b!1385067 m!1270461))

(declare-fun m!1270463 () Bool)

(assert (=> b!1385063 m!1270463))

(declare-fun m!1270465 () Bool)

(assert (=> b!1385063 m!1270465))

(assert (=> b!1385063 m!1270465))

(declare-fun m!1270467 () Bool)

(assert (=> b!1385063 m!1270467))

(declare-fun m!1270469 () Bool)

(assert (=> b!1385063 m!1270469))

(declare-fun m!1270471 () Bool)

(assert (=> b!1385063 m!1270471))

(assert (=> b!1385063 m!1270453))

(declare-fun m!1270473 () Bool)

(assert (=> b!1385063 m!1270473))

(assert (=> b!1385063 m!1270453))

(declare-fun m!1270475 () Bool)

(assert (=> b!1385063 m!1270475))

(declare-fun m!1270477 () Bool)

(assert (=> start!118454 m!1270477))

(declare-fun m!1270479 () Bool)

(assert (=> start!118454 m!1270479))

(assert (=> b!1385070 m!1270457))

(push 1)

(assert (not b!1385068))

(assert (not b!1385064))

(assert (not b!1385063))

(assert (not start!118454))

(assert (not b!1385067))

(assert (not b!1385069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

