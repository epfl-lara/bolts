; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122634 () Bool)

(assert start!122634)

(declare-fun b!1419845 () Bool)

(declare-fun res!955391 () Bool)

(declare-fun e!803240 () Bool)

(assert (=> b!1419845 (=> (not res!955391) (not e!803240))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96917 0))(
  ( (array!96918 (arr!46772 (Array (_ BitVec 32) (_ BitVec 64))) (size!47323 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96917)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11079 0))(
  ( (MissingZero!11079 (index!46707 (_ BitVec 32))) (Found!11079 (index!46708 (_ BitVec 32))) (Intermediate!11079 (undefined!11891 Bool) (index!46709 (_ BitVec 32)) (x!128380 (_ BitVec 32))) (Undefined!11079) (MissingVacant!11079 (index!46710 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96917 (_ BitVec 32)) SeekEntryResult!11079)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419845 (= res!955391 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46772 a!2831) j!81) mask!2608) (select (arr!46772 a!2831) j!81) a!2831 mask!2608) (Intermediate!11079 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun res!955394 () Bool)

(assert (=> start!122634 (=> (not res!955394) (not e!803240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122634 (= res!955394 (validMask!0 mask!2608))))

(assert (=> start!122634 e!803240))

(assert (=> start!122634 true))

(declare-fun array_inv!35717 (array!96917) Bool)

(assert (=> start!122634 (array_inv!35717 a!2831)))

(declare-fun b!1419846 () Bool)

(declare-fun res!955395 () Bool)

(assert (=> b!1419846 (=> (not res!955395) (not e!803240))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419846 (= res!955395 (validKeyInArray!0 (select (arr!46772 a!2831) i!982)))))

(declare-fun b!1419847 () Bool)

(declare-fun res!955393 () Bool)

(assert (=> b!1419847 (=> (not res!955393) (not e!803240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96917 (_ BitVec 32)) Bool)

(assert (=> b!1419847 (= res!955393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419848 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419848 (= e!803240 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsge index!585 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun b!1419849 () Bool)

(declare-fun res!955392 () Bool)

(assert (=> b!1419849 (=> (not res!955392) (not e!803240))))

(assert (=> b!1419849 (= res!955392 (and (= (size!47323 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47323 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47323 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419850 () Bool)

(declare-fun res!955390 () Bool)

(assert (=> b!1419850 (=> (not res!955390) (not e!803240))))

(assert (=> b!1419850 (= res!955390 (validKeyInArray!0 (select (arr!46772 a!2831) j!81)))))

(declare-fun b!1419851 () Bool)

(declare-fun res!955389 () Bool)

(assert (=> b!1419851 (=> (not res!955389) (not e!803240))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1419851 (= res!955389 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47323 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47323 a!2831))))))

(declare-fun b!1419852 () Bool)

(declare-fun res!955388 () Bool)

(assert (=> b!1419852 (=> (not res!955388) (not e!803240))))

(declare-datatypes ((List!33462 0))(
  ( (Nil!33459) (Cons!33458 (h!34760 (_ BitVec 64)) (t!48163 List!33462)) )
))
(declare-fun arrayNoDuplicates!0 (array!96917 (_ BitVec 32) List!33462) Bool)

(assert (=> b!1419852 (= res!955388 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33459))))

(declare-fun b!1419853 () Bool)

(declare-fun res!955387 () Bool)

(assert (=> b!1419853 (=> (not res!955387) (not e!803240))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1419853 (= res!955387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46772 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46772 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96918 (store (arr!46772 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47323 a!2831)) mask!2608) (Intermediate!11079 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (= (and start!122634 res!955394) b!1419849))

(assert (= (and b!1419849 res!955392) b!1419846))

(assert (= (and b!1419846 res!955395) b!1419850))

(assert (= (and b!1419850 res!955390) b!1419847))

(assert (= (and b!1419847 res!955393) b!1419852))

(assert (= (and b!1419852 res!955388) b!1419851))

(assert (= (and b!1419851 res!955389) b!1419845))

(assert (= (and b!1419845 res!955391) b!1419853))

(assert (= (and b!1419853 res!955387) b!1419848))

(declare-fun m!1310373 () Bool)

(assert (=> b!1419846 m!1310373))

(assert (=> b!1419846 m!1310373))

(declare-fun m!1310375 () Bool)

(assert (=> b!1419846 m!1310375))

(declare-fun m!1310377 () Bool)

(assert (=> b!1419852 m!1310377))

(declare-fun m!1310379 () Bool)

(assert (=> b!1419850 m!1310379))

(assert (=> b!1419850 m!1310379))

(declare-fun m!1310381 () Bool)

(assert (=> b!1419850 m!1310381))

(declare-fun m!1310383 () Bool)

(assert (=> start!122634 m!1310383))

(declare-fun m!1310385 () Bool)

(assert (=> start!122634 m!1310385))

(declare-fun m!1310387 () Bool)

(assert (=> b!1419847 m!1310387))

(declare-fun m!1310389 () Bool)

(assert (=> b!1419853 m!1310389))

(declare-fun m!1310391 () Bool)

(assert (=> b!1419853 m!1310391))

(assert (=> b!1419853 m!1310391))

(declare-fun m!1310393 () Bool)

(assert (=> b!1419853 m!1310393))

(assert (=> b!1419853 m!1310393))

(assert (=> b!1419853 m!1310391))

(declare-fun m!1310395 () Bool)

(assert (=> b!1419853 m!1310395))

(assert (=> b!1419845 m!1310379))

(assert (=> b!1419845 m!1310379))

(declare-fun m!1310397 () Bool)

(assert (=> b!1419845 m!1310397))

(assert (=> b!1419845 m!1310397))

(assert (=> b!1419845 m!1310379))

(declare-fun m!1310399 () Bool)

(assert (=> b!1419845 m!1310399))

(check-sat (not b!1419845) (not b!1419852) (not b!1419847) (not b!1419846) (not b!1419853) (not start!122634) (not b!1419850))
(check-sat)
