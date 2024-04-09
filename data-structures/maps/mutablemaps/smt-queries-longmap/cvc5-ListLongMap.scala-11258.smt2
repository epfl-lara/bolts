; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131332 () Bool)

(assert start!131332)

(declare-fun b!1539557 () Bool)

(declare-fun res!1056500 () Bool)

(declare-fun e!856346 () Bool)

(assert (=> b!1539557 (=> (not res!1056500) (not e!856346))))

(declare-datatypes ((array!102246 0))(
  ( (array!102247 (arr!49330 (Array (_ BitVec 32) (_ BitVec 64))) (size!49881 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102246)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102246 (_ BitVec 32)) Bool)

(assert (=> b!1539557 (= res!1056500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539558 () Bool)

(declare-fun res!1056497 () Bool)

(assert (=> b!1539558 (=> (not res!1056497) (not e!856346))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13479 0))(
  ( (MissingZero!13479 (index!56310 (_ BitVec 32))) (Found!13479 (index!56311 (_ BitVec 32))) (Intermediate!13479 (undefined!14291 Bool) (index!56312 (_ BitVec 32)) (x!138051 (_ BitVec 32))) (Undefined!13479) (MissingVacant!13479 (index!56313 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102246 (_ BitVec 32)) SeekEntryResult!13479)

(assert (=> b!1539558 (= res!1056497 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49330 a!2792) j!64) a!2792 mask!2480) (Found!13479 j!64)))))

(declare-fun res!1056493 () Bool)

(assert (=> start!131332 (=> (not res!1056493) (not e!856346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131332 (= res!1056493 (validMask!0 mask!2480))))

(assert (=> start!131332 e!856346))

(assert (=> start!131332 true))

(declare-fun array_inv!38275 (array!102246) Bool)

(assert (=> start!131332 (array_inv!38275 a!2792)))

(declare-fun b!1539559 () Bool)

(declare-fun res!1056496 () Bool)

(assert (=> b!1539559 (=> (not res!1056496) (not e!856346))))

(assert (=> b!1539559 (= res!1056496 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49881 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49881 a!2792)) (= (select (arr!49330 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539560 () Bool)

(declare-fun res!1056494 () Bool)

(assert (=> b!1539560 (=> (not res!1056494) (not e!856346))))

(declare-datatypes ((List!35984 0))(
  ( (Nil!35981) (Cons!35980 (h!37426 (_ BitVec 64)) (t!50685 List!35984)) )
))
(declare-fun arrayNoDuplicates!0 (array!102246 (_ BitVec 32) List!35984) Bool)

(assert (=> b!1539560 (= res!1056494 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35981))))

(declare-fun b!1539561 () Bool)

(declare-fun res!1056499 () Bool)

(assert (=> b!1539561 (=> (not res!1056499) (not e!856346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539561 (= res!1056499 (validKeyInArray!0 (select (arr!49330 a!2792) j!64)))))

(declare-fun b!1539562 () Bool)

(assert (=> b!1539562 (= e!856346 false)))

(declare-fun lt!665038 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539562 (= lt!665038 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539563 () Bool)

(declare-fun res!1056498 () Bool)

(assert (=> b!1539563 (=> (not res!1056498) (not e!856346))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539563 (= res!1056498 (validKeyInArray!0 (select (arr!49330 a!2792) i!951)))))

(declare-fun b!1539564 () Bool)

(declare-fun res!1056495 () Bool)

(assert (=> b!1539564 (=> (not res!1056495) (not e!856346))))

(assert (=> b!1539564 (= res!1056495 (not (= (select (arr!49330 a!2792) index!463) (select (arr!49330 a!2792) j!64))))))

(declare-fun b!1539565 () Bool)

(declare-fun res!1056501 () Bool)

(assert (=> b!1539565 (=> (not res!1056501) (not e!856346))))

(assert (=> b!1539565 (= res!1056501 (and (= (size!49881 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49881 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49881 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!131332 res!1056493) b!1539565))

(assert (= (and b!1539565 res!1056501) b!1539563))

(assert (= (and b!1539563 res!1056498) b!1539561))

(assert (= (and b!1539561 res!1056499) b!1539557))

(assert (= (and b!1539557 res!1056500) b!1539560))

(assert (= (and b!1539560 res!1056494) b!1539559))

(assert (= (and b!1539559 res!1056496) b!1539558))

(assert (= (and b!1539558 res!1056497) b!1539564))

(assert (= (and b!1539564 res!1056495) b!1539562))

(declare-fun m!1421805 () Bool)

(assert (=> b!1539557 m!1421805))

(declare-fun m!1421807 () Bool)

(assert (=> b!1539563 m!1421807))

(assert (=> b!1539563 m!1421807))

(declare-fun m!1421809 () Bool)

(assert (=> b!1539563 m!1421809))

(declare-fun m!1421811 () Bool)

(assert (=> b!1539559 m!1421811))

(declare-fun m!1421813 () Bool)

(assert (=> b!1539558 m!1421813))

(assert (=> b!1539558 m!1421813))

(declare-fun m!1421815 () Bool)

(assert (=> b!1539558 m!1421815))

(assert (=> b!1539561 m!1421813))

(assert (=> b!1539561 m!1421813))

(declare-fun m!1421817 () Bool)

(assert (=> b!1539561 m!1421817))

(declare-fun m!1421819 () Bool)

(assert (=> b!1539562 m!1421819))

(declare-fun m!1421821 () Bool)

(assert (=> b!1539560 m!1421821))

(declare-fun m!1421823 () Bool)

(assert (=> b!1539564 m!1421823))

(assert (=> b!1539564 m!1421813))

(declare-fun m!1421825 () Bool)

(assert (=> start!131332 m!1421825))

(declare-fun m!1421827 () Bool)

(assert (=> start!131332 m!1421827))

(push 1)

(assert (not start!131332))

(assert (not b!1539563))

(assert (not b!1539560))

(assert (not b!1539557))

(assert (not b!1539562))

(assert (not b!1539558))

(assert (not b!1539561))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

