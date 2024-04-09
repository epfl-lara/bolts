; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131104 () Bool)

(assert start!131104)

(declare-fun b!1537735 () Bool)

(declare-fun e!855733 () Bool)

(assert (=> b!1537735 (= e!855733 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102129 0))(
  ( (array!102130 (arr!49276 (Array (_ BitVec 32) (_ BitVec 64))) (size!49827 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102129)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13425 0))(
  ( (MissingZero!13425 (index!56094 (_ BitVec 32))) (Found!13425 (index!56095 (_ BitVec 32))) (Intermediate!13425 (undefined!14237 Bool) (index!56096 (_ BitVec 32)) (x!137838 (_ BitVec 32))) (Undefined!13425) (MissingVacant!13425 (index!56097 (_ BitVec 32))) )
))
(declare-fun lt!664717 () SeekEntryResult!13425)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102129 (_ BitVec 32)) SeekEntryResult!13425)

(assert (=> b!1537735 (= lt!664717 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49276 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537736 () Bool)

(declare-fun res!1054961 () Bool)

(assert (=> b!1537736 (=> (not res!1054961) (not e!855733))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537736 (= res!1054961 (validKeyInArray!0 (select (arr!49276 a!2792) i!951)))))

(declare-fun b!1537737 () Bool)

(declare-fun res!1054964 () Bool)

(assert (=> b!1537737 (=> (not res!1054964) (not e!855733))))

(assert (=> b!1537737 (= res!1054964 (and (= (size!49827 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49827 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49827 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537738 () Bool)

(declare-fun res!1054960 () Bool)

(assert (=> b!1537738 (=> (not res!1054960) (not e!855733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102129 (_ BitVec 32)) Bool)

(assert (=> b!1537738 (= res!1054960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537739 () Bool)

(declare-fun res!1054965 () Bool)

(assert (=> b!1537739 (=> (not res!1054965) (not e!855733))))

(assert (=> b!1537739 (= res!1054965 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49827 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49827 a!2792)) (= (select (arr!49276 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537740 () Bool)

(declare-fun res!1054962 () Bool)

(assert (=> b!1537740 (=> (not res!1054962) (not e!855733))))

(assert (=> b!1537740 (= res!1054962 (validKeyInArray!0 (select (arr!49276 a!2792) j!64)))))

(declare-fun b!1537741 () Bool)

(declare-fun res!1054963 () Bool)

(assert (=> b!1537741 (=> (not res!1054963) (not e!855733))))

(declare-datatypes ((List!35930 0))(
  ( (Nil!35927) (Cons!35926 (h!37372 (_ BitVec 64)) (t!50631 List!35930)) )
))
(declare-fun arrayNoDuplicates!0 (array!102129 (_ BitVec 32) List!35930) Bool)

(assert (=> b!1537741 (= res!1054963 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35927))))

(declare-fun res!1054959 () Bool)

(assert (=> start!131104 (=> (not res!1054959) (not e!855733))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131104 (= res!1054959 (validMask!0 mask!2480))))

(assert (=> start!131104 e!855733))

(assert (=> start!131104 true))

(declare-fun array_inv!38221 (array!102129) Bool)

(assert (=> start!131104 (array_inv!38221 a!2792)))

(assert (= (and start!131104 res!1054959) b!1537737))

(assert (= (and b!1537737 res!1054964) b!1537736))

(assert (= (and b!1537736 res!1054961) b!1537740))

(assert (= (and b!1537740 res!1054962) b!1537738))

(assert (= (and b!1537738 res!1054960) b!1537741))

(assert (= (and b!1537741 res!1054963) b!1537739))

(assert (= (and b!1537739 res!1054965) b!1537735))

(declare-fun m!1420293 () Bool)

(assert (=> b!1537738 m!1420293))

(declare-fun m!1420295 () Bool)

(assert (=> b!1537739 m!1420295))

(declare-fun m!1420297 () Bool)

(assert (=> b!1537735 m!1420297))

(assert (=> b!1537735 m!1420297))

(declare-fun m!1420299 () Bool)

(assert (=> b!1537735 m!1420299))

(declare-fun m!1420301 () Bool)

(assert (=> start!131104 m!1420301))

(declare-fun m!1420303 () Bool)

(assert (=> start!131104 m!1420303))

(declare-fun m!1420305 () Bool)

(assert (=> b!1537736 m!1420305))

(assert (=> b!1537736 m!1420305))

(declare-fun m!1420307 () Bool)

(assert (=> b!1537736 m!1420307))

(assert (=> b!1537740 m!1420297))

(assert (=> b!1537740 m!1420297))

(declare-fun m!1420309 () Bool)

(assert (=> b!1537740 m!1420309))

(declare-fun m!1420311 () Bool)

(assert (=> b!1537741 m!1420311))

(push 1)

(assert (not b!1537735))

(assert (not b!1537738))

(assert (not start!131104))

(assert (not b!1537736))

(assert (not b!1537741))

(assert (not b!1537740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

