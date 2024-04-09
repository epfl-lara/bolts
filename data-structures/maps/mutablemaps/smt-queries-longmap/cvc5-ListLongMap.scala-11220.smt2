; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130984 () Bool)

(assert start!130984)

(declare-fun res!1053238 () Bool)

(declare-fun e!854992 () Bool)

(assert (=> start!130984 (=> (not res!1053238) (not e!854992))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130984 (= res!1053238 (validMask!0 mask!2480))))

(assert (=> start!130984 e!854992))

(assert (=> start!130984 true))

(declare-datatypes ((array!102009 0))(
  ( (array!102010 (arr!49216 (Array (_ BitVec 32) (_ BitVec 64))) (size!49767 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102009)

(declare-fun array_inv!38161 (array!102009) Bool)

(assert (=> start!130984 (array_inv!38161 a!2792)))

(declare-fun b!1536006 () Bool)

(declare-fun e!854995 () Bool)

(declare-fun e!854994 () Bool)

(assert (=> b!1536006 (= e!854995 e!854994)))

(declare-fun res!1053231 () Bool)

(assert (=> b!1536006 (=> (not res!1053231) (not e!854994))))

(declare-fun lt!664157 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1536006 (= res!1053231 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664157 #b00000000000000000000000000000000) (bvslt lt!664157 (size!49767 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536006 (= lt!664157 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536007 () Bool)

(declare-fun res!1053235 () Bool)

(assert (=> b!1536007 (=> (not res!1053235) (not e!854992))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1536007 (= res!1053235 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49767 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49767 a!2792)) (= (select (arr!49216 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536008 () Bool)

(declare-fun res!1053232 () Bool)

(assert (=> b!1536008 (=> (not res!1053232) (not e!854992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102009 (_ BitVec 32)) Bool)

(assert (=> b!1536008 (= res!1053232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536009 () Bool)

(declare-fun res!1053237 () Bool)

(assert (=> b!1536009 (=> (not res!1053237) (not e!854992))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536009 (= res!1053237 (validKeyInArray!0 (select (arr!49216 a!2792) i!951)))))

(declare-fun b!1536010 () Bool)

(declare-fun res!1053236 () Bool)

(assert (=> b!1536010 (=> (not res!1053236) (not e!854992))))

(declare-datatypes ((List!35870 0))(
  ( (Nil!35867) (Cons!35866 (h!37312 (_ BitVec 64)) (t!50571 List!35870)) )
))
(declare-fun arrayNoDuplicates!0 (array!102009 (_ BitVec 32) List!35870) Bool)

(assert (=> b!1536010 (= res!1053236 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35867))))

(declare-fun b!1536011 () Bool)

(assert (=> b!1536011 (= e!854992 e!854995)))

(declare-fun res!1053233 () Bool)

(assert (=> b!1536011 (=> (not res!1053233) (not e!854995))))

(declare-datatypes ((SeekEntryResult!13371 0))(
  ( (MissingZero!13371 (index!55878 (_ BitVec 32))) (Found!13371 (index!55879 (_ BitVec 32))) (Intermediate!13371 (undefined!14183 Bool) (index!55880 (_ BitVec 32)) (x!137624 (_ BitVec 32))) (Undefined!13371) (MissingVacant!13371 (index!55881 (_ BitVec 32))) )
))
(declare-fun lt!664156 () SeekEntryResult!13371)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102009 (_ BitVec 32)) SeekEntryResult!13371)

(assert (=> b!1536011 (= res!1053233 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49216 a!2792) j!64) a!2792 mask!2480) lt!664156))))

(assert (=> b!1536011 (= lt!664156 (Found!13371 j!64))))

(declare-fun b!1536012 () Bool)

(declare-fun e!854993 () Bool)

(assert (=> b!1536012 (= e!854993 (not true))))

(declare-fun lt!664158 () SeekEntryResult!13371)

(assert (=> b!1536012 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664157 vacantIndex!5 (select (store (arr!49216 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102010 (store (arr!49216 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49767 a!2792)) mask!2480) lt!664158)))

(declare-datatypes ((Unit!51266 0))(
  ( (Unit!51267) )
))
(declare-fun lt!664159 () Unit!51266)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102009 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51266)

(assert (=> b!1536012 (= lt!664159 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664157 vacantIndex!5 mask!2480))))

(declare-fun b!1536013 () Bool)

(assert (=> b!1536013 (= e!854994 e!854993)))

(declare-fun res!1053234 () Bool)

(assert (=> b!1536013 (=> (not res!1053234) (not e!854993))))

(assert (=> b!1536013 (= res!1053234 (= lt!664158 lt!664156))))

(assert (=> b!1536013 (= lt!664158 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664157 vacantIndex!5 (select (arr!49216 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536014 () Bool)

(declare-fun res!1053240 () Bool)

(assert (=> b!1536014 (=> (not res!1053240) (not e!854992))))

(assert (=> b!1536014 (= res!1053240 (validKeyInArray!0 (select (arr!49216 a!2792) j!64)))))

(declare-fun b!1536015 () Bool)

(declare-fun res!1053239 () Bool)

(assert (=> b!1536015 (=> (not res!1053239) (not e!854995))))

(assert (=> b!1536015 (= res!1053239 (not (= (select (arr!49216 a!2792) index!463) (select (arr!49216 a!2792) j!64))))))

(declare-fun b!1536016 () Bool)

(declare-fun res!1053230 () Bool)

(assert (=> b!1536016 (=> (not res!1053230) (not e!854992))))

(assert (=> b!1536016 (= res!1053230 (and (= (size!49767 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49767 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49767 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130984 res!1053238) b!1536016))

(assert (= (and b!1536016 res!1053230) b!1536009))

(assert (= (and b!1536009 res!1053237) b!1536014))

(assert (= (and b!1536014 res!1053240) b!1536008))

(assert (= (and b!1536008 res!1053232) b!1536010))

(assert (= (and b!1536010 res!1053236) b!1536007))

(assert (= (and b!1536007 res!1053235) b!1536011))

(assert (= (and b!1536011 res!1053233) b!1536015))

(assert (= (and b!1536015 res!1053239) b!1536006))

(assert (= (and b!1536006 res!1053231) b!1536013))

(assert (= (and b!1536013 res!1053234) b!1536012))

(declare-fun m!1418511 () Bool)

(assert (=> b!1536006 m!1418511))

(declare-fun m!1418513 () Bool)

(assert (=> b!1536015 m!1418513))

(declare-fun m!1418515 () Bool)

(assert (=> b!1536015 m!1418515))

(assert (=> b!1536014 m!1418515))

(assert (=> b!1536014 m!1418515))

(declare-fun m!1418517 () Bool)

(assert (=> b!1536014 m!1418517))

(assert (=> b!1536013 m!1418515))

(assert (=> b!1536013 m!1418515))

(declare-fun m!1418519 () Bool)

(assert (=> b!1536013 m!1418519))

(declare-fun m!1418521 () Bool)

(assert (=> start!130984 m!1418521))

(declare-fun m!1418523 () Bool)

(assert (=> start!130984 m!1418523))

(declare-fun m!1418525 () Bool)

(assert (=> b!1536012 m!1418525))

(declare-fun m!1418527 () Bool)

(assert (=> b!1536012 m!1418527))

(assert (=> b!1536012 m!1418527))

(declare-fun m!1418529 () Bool)

(assert (=> b!1536012 m!1418529))

(declare-fun m!1418531 () Bool)

(assert (=> b!1536012 m!1418531))

(declare-fun m!1418533 () Bool)

(assert (=> b!1536009 m!1418533))

(assert (=> b!1536009 m!1418533))

(declare-fun m!1418535 () Bool)

(assert (=> b!1536009 m!1418535))

(declare-fun m!1418537 () Bool)

(assert (=> b!1536010 m!1418537))

(declare-fun m!1418539 () Bool)

(assert (=> b!1536008 m!1418539))

(declare-fun m!1418541 () Bool)

(assert (=> b!1536007 m!1418541))

(assert (=> b!1536011 m!1418515))

(assert (=> b!1536011 m!1418515))

(declare-fun m!1418543 () Bool)

(assert (=> b!1536011 m!1418543))

(push 1)

