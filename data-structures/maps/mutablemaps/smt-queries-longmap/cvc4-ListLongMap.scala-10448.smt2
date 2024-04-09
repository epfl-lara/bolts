; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122894 () Bool)

(assert start!122894)

(declare-fun b!1424878 () Bool)

(declare-fun e!805216 () Bool)

(assert (=> b!1424878 (= e!805216 false)))

(declare-fun lt!627691 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97177 0))(
  ( (array!97178 (arr!46902 (Array (_ BitVec 32) (_ BitVec 64))) (size!47453 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97177)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424878 (= lt!627691 (toIndex!0 (select (arr!46902 a!2831) j!81) mask!2608))))

(declare-fun b!1424879 () Bool)

(declare-fun res!960420 () Bool)

(assert (=> b!1424879 (=> (not res!960420) (not e!805216))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424879 (= res!960420 (validKeyInArray!0 (select (arr!46902 a!2831) i!982)))))

(declare-fun b!1424880 () Bool)

(declare-fun res!960426 () Bool)

(assert (=> b!1424880 (=> (not res!960426) (not e!805216))))

(assert (=> b!1424880 (= res!960426 (and (= (size!47453 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47453 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47453 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424881 () Bool)

(declare-fun res!960423 () Bool)

(assert (=> b!1424881 (=> (not res!960423) (not e!805216))))

(assert (=> b!1424881 (= res!960423 (validKeyInArray!0 (select (arr!46902 a!2831) j!81)))))

(declare-fun b!1424882 () Bool)

(declare-fun res!960422 () Bool)

(assert (=> b!1424882 (=> (not res!960422) (not e!805216))))

(declare-datatypes ((List!33592 0))(
  ( (Nil!33589) (Cons!33588 (h!34890 (_ BitVec 64)) (t!48293 List!33592)) )
))
(declare-fun arrayNoDuplicates!0 (array!97177 (_ BitVec 32) List!33592) Bool)

(assert (=> b!1424882 (= res!960422 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33589))))

(declare-fun res!960425 () Bool)

(assert (=> start!122894 (=> (not res!960425) (not e!805216))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122894 (= res!960425 (validMask!0 mask!2608))))

(assert (=> start!122894 e!805216))

(assert (=> start!122894 true))

(declare-fun array_inv!35847 (array!97177) Bool)

(assert (=> start!122894 (array_inv!35847 a!2831)))

(declare-fun b!1424883 () Bool)

(declare-fun res!960421 () Bool)

(assert (=> b!1424883 (=> (not res!960421) (not e!805216))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424883 (= res!960421 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47453 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47453 a!2831))))))

(declare-fun b!1424884 () Bool)

(declare-fun res!960424 () Bool)

(assert (=> b!1424884 (=> (not res!960424) (not e!805216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97177 (_ BitVec 32)) Bool)

(assert (=> b!1424884 (= res!960424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122894 res!960425) b!1424880))

(assert (= (and b!1424880 res!960426) b!1424879))

(assert (= (and b!1424879 res!960420) b!1424881))

(assert (= (and b!1424881 res!960423) b!1424884))

(assert (= (and b!1424884 res!960424) b!1424882))

(assert (= (and b!1424882 res!960422) b!1424883))

(assert (= (and b!1424883 res!960421) b!1424878))

(declare-fun m!1315499 () Bool)

(assert (=> b!1424884 m!1315499))

(declare-fun m!1315501 () Bool)

(assert (=> b!1424878 m!1315501))

(assert (=> b!1424878 m!1315501))

(declare-fun m!1315503 () Bool)

(assert (=> b!1424878 m!1315503))

(declare-fun m!1315505 () Bool)

(assert (=> b!1424882 m!1315505))

(declare-fun m!1315507 () Bool)

(assert (=> b!1424879 m!1315507))

(assert (=> b!1424879 m!1315507))

(declare-fun m!1315509 () Bool)

(assert (=> b!1424879 m!1315509))

(assert (=> b!1424881 m!1315501))

(assert (=> b!1424881 m!1315501))

(declare-fun m!1315511 () Bool)

(assert (=> b!1424881 m!1315511))

(declare-fun m!1315513 () Bool)

(assert (=> start!122894 m!1315513))

(declare-fun m!1315515 () Bool)

(assert (=> start!122894 m!1315515))

(push 1)

(assert (not b!1424879))

(assert (not b!1424881))

(assert (not start!122894))

(assert (not b!1424884))

(assert (not b!1424882))

(assert (not b!1424878))

(check-sat)

(pop 1)

(push 1)

(check-sat)

