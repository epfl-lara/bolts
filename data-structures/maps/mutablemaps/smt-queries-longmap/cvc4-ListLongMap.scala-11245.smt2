; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131174 () Bool)

(assert start!131174)

(declare-fun b!1538288 () Bool)

(declare-fun res!1055410 () Bool)

(declare-fun e!855943 () Bool)

(assert (=> b!1538288 (=> (not res!1055410) (not e!855943))))

(declare-datatypes ((array!102166 0))(
  ( (array!102167 (arr!49293 (Array (_ BitVec 32) (_ BitVec 64))) (size!49844 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102166)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538288 (= res!1055410 (and (= (size!49844 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49844 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49844 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538289 () Bool)

(declare-fun res!1055405 () Bool)

(assert (=> b!1538289 (=> (not res!1055405) (not e!855943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538289 (= res!1055405 (validKeyInArray!0 (select (arr!49293 a!2792) j!64)))))

(declare-fun b!1538290 () Bool)

(declare-fun res!1055407 () Bool)

(assert (=> b!1538290 (=> (not res!1055407) (not e!855943))))

(declare-datatypes ((List!35947 0))(
  ( (Nil!35944) (Cons!35943 (h!37389 (_ BitVec 64)) (t!50648 List!35947)) )
))
(declare-fun arrayNoDuplicates!0 (array!102166 (_ BitVec 32) List!35947) Bool)

(assert (=> b!1538290 (= res!1055407 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35944))))

(declare-fun b!1538291 () Bool)

(declare-fun res!1055409 () Bool)

(assert (=> b!1538291 (=> (not res!1055409) (not e!855943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102166 (_ BitVec 32)) Bool)

(assert (=> b!1538291 (= res!1055409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1538292 () Bool)

(declare-fun res!1055406 () Bool)

(assert (=> b!1538292 (=> (not res!1055406) (not e!855943))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1538292 (= res!1055406 (not (= (select (arr!49293 a!2792) index!463) (select (arr!49293 a!2792) j!64))))))

(declare-fun b!1538293 () Bool)

(declare-fun res!1055408 () Bool)

(assert (=> b!1538293 (=> (not res!1055408) (not e!855943))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1538293 (= res!1055408 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49844 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49844 a!2792)) (= (select (arr!49293 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1055411 () Bool)

(assert (=> start!131174 (=> (not res!1055411) (not e!855943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131174 (= res!1055411 (validMask!0 mask!2480))))

(assert (=> start!131174 e!855943))

(assert (=> start!131174 true))

(declare-fun array_inv!38238 (array!102166) Bool)

(assert (=> start!131174 (array_inv!38238 a!2792)))

(declare-fun b!1538294 () Bool)

(declare-fun res!1055404 () Bool)

(assert (=> b!1538294 (=> (not res!1055404) (not e!855943))))

(assert (=> b!1538294 (= res!1055404 (validKeyInArray!0 (select (arr!49293 a!2792) i!951)))))

(declare-fun b!1538295 () Bool)

(declare-fun res!1055412 () Bool)

(assert (=> b!1538295 (=> (not res!1055412) (not e!855943))))

(declare-datatypes ((SeekEntryResult!13442 0))(
  ( (MissingZero!13442 (index!56162 (_ BitVec 32))) (Found!13442 (index!56163 (_ BitVec 32))) (Intermediate!13442 (undefined!14254 Bool) (index!56164 (_ BitVec 32)) (x!137898 (_ BitVec 32))) (Undefined!13442) (MissingVacant!13442 (index!56165 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102166 (_ BitVec 32)) SeekEntryResult!13442)

(assert (=> b!1538295 (= res!1055412 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49293 a!2792) j!64) a!2792 mask!2480) (Found!13442 j!64)))))

(declare-fun b!1538296 () Bool)

(assert (=> b!1538296 (= e!855943 false)))

(declare-fun lt!664819 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538296 (= lt!664819 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131174 res!1055411) b!1538288))

(assert (= (and b!1538288 res!1055410) b!1538294))

(assert (= (and b!1538294 res!1055404) b!1538289))

(assert (= (and b!1538289 res!1055405) b!1538291))

(assert (= (and b!1538291 res!1055409) b!1538290))

(assert (= (and b!1538290 res!1055407) b!1538293))

(assert (= (and b!1538293 res!1055408) b!1538295))

(assert (= (and b!1538295 res!1055412) b!1538292))

(assert (= (and b!1538292 res!1055406) b!1538296))

(declare-fun m!1420773 () Bool)

(assert (=> start!131174 m!1420773))

(declare-fun m!1420775 () Bool)

(assert (=> start!131174 m!1420775))

(declare-fun m!1420777 () Bool)

(assert (=> b!1538291 m!1420777))

(declare-fun m!1420779 () Bool)

(assert (=> b!1538296 m!1420779))

(declare-fun m!1420781 () Bool)

(assert (=> b!1538294 m!1420781))

(assert (=> b!1538294 m!1420781))

(declare-fun m!1420783 () Bool)

(assert (=> b!1538294 m!1420783))

(declare-fun m!1420785 () Bool)

(assert (=> b!1538295 m!1420785))

(assert (=> b!1538295 m!1420785))

(declare-fun m!1420787 () Bool)

(assert (=> b!1538295 m!1420787))

(declare-fun m!1420789 () Bool)

(assert (=> b!1538290 m!1420789))

(assert (=> b!1538289 m!1420785))

(assert (=> b!1538289 m!1420785))

(declare-fun m!1420791 () Bool)

(assert (=> b!1538289 m!1420791))

(declare-fun m!1420793 () Bool)

(assert (=> b!1538293 m!1420793))

(declare-fun m!1420795 () Bool)

(assert (=> b!1538292 m!1420795))

(assert (=> b!1538292 m!1420785))

(push 1)

(assert (not b!1538295))

(assert (not b!1538294))

(assert (not b!1538296))

(assert (not start!131174))

(assert (not b!1538289))

(assert (not b!1538291))

(assert (not b!1538290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

