; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122668 () Bool)

(assert start!122668)

(declare-fun b!1420297 () Bool)

(declare-fun res!955840 () Bool)

(declare-fun e!803353 () Bool)

(assert (=> b!1420297 (=> (not res!955840) (not e!803353))))

(declare-datatypes ((array!96951 0))(
  ( (array!96952 (arr!46789 (Array (_ BitVec 32) (_ BitVec 64))) (size!47340 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96951)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420297 (= res!955840 (validKeyInArray!0 (select (arr!46789 a!2831) i!982)))))

(declare-fun b!1420298 () Bool)

(declare-fun res!955846 () Bool)

(assert (=> b!1420298 (=> (not res!955846) (not e!803353))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420298 (= res!955846 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47340 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47340 a!2831))))))

(declare-fun b!1420299 () Bool)

(declare-fun e!803352 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1420299 (= e!803352 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsge index!585 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun b!1420300 () Bool)

(assert (=> b!1420300 (= e!803353 e!803352)))

(declare-fun res!955841 () Bool)

(assert (=> b!1420300 (=> (not res!955841) (not e!803352))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11096 0))(
  ( (MissingZero!11096 (index!46775 (_ BitVec 32))) (Found!11096 (index!46776 (_ BitVec 32))) (Intermediate!11096 (undefined!11908 Bool) (index!46777 (_ BitVec 32)) (x!128445 (_ BitVec 32))) (Undefined!11096) (MissingVacant!11096 (index!46778 (_ BitVec 32))) )
))
(declare-fun lt!625849 () SeekEntryResult!11096)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96951 (_ BitVec 32)) SeekEntryResult!11096)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420300 (= res!955841 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46789 a!2831) j!81) mask!2608) (select (arr!46789 a!2831) j!81) a!2831 mask!2608) lt!625849))))

(assert (=> b!1420300 (= lt!625849 (Intermediate!11096 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!955845 () Bool)

(assert (=> start!122668 (=> (not res!955845) (not e!803353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122668 (= res!955845 (validMask!0 mask!2608))))

(assert (=> start!122668 e!803353))

(assert (=> start!122668 true))

(declare-fun array_inv!35734 (array!96951) Bool)

(assert (=> start!122668 (array_inv!35734 a!2831)))

(declare-fun b!1420301 () Bool)

(declare-fun res!955847 () Bool)

(assert (=> b!1420301 (=> (not res!955847) (not e!803352))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420301 (= res!955847 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46789 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46789 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96952 (store (arr!46789 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47340 a!2831)) mask!2608) (Intermediate!11096 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420302 () Bool)

(declare-fun res!955839 () Bool)

(assert (=> b!1420302 (=> (not res!955839) (not e!803353))))

(assert (=> b!1420302 (= res!955839 (validKeyInArray!0 (select (arr!46789 a!2831) j!81)))))

(declare-fun b!1420303 () Bool)

(declare-fun res!955844 () Bool)

(assert (=> b!1420303 (=> (not res!955844) (not e!803353))))

(declare-datatypes ((List!33479 0))(
  ( (Nil!33476) (Cons!33475 (h!34777 (_ BitVec 64)) (t!48180 List!33479)) )
))
(declare-fun arrayNoDuplicates!0 (array!96951 (_ BitVec 32) List!33479) Bool)

(assert (=> b!1420303 (= res!955844 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33476))))

(declare-fun b!1420304 () Bool)

(declare-fun res!955843 () Bool)

(assert (=> b!1420304 (=> (not res!955843) (not e!803353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96951 (_ BitVec 32)) Bool)

(assert (=> b!1420304 (= res!955843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420305 () Bool)

(declare-fun res!955848 () Bool)

(assert (=> b!1420305 (=> (not res!955848) (not e!803353))))

(assert (=> b!1420305 (= res!955848 (and (= (size!47340 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47340 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47340 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420306 () Bool)

(declare-fun res!955842 () Bool)

(assert (=> b!1420306 (=> (not res!955842) (not e!803352))))

(assert (=> b!1420306 (= res!955842 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46789 a!2831) j!81) a!2831 mask!2608) lt!625849))))

(assert (= (and start!122668 res!955845) b!1420305))

(assert (= (and b!1420305 res!955848) b!1420297))

(assert (= (and b!1420297 res!955840) b!1420302))

(assert (= (and b!1420302 res!955839) b!1420304))

(assert (= (and b!1420304 res!955843) b!1420303))

(assert (= (and b!1420303 res!955844) b!1420298))

(assert (= (and b!1420298 res!955846) b!1420300))

(assert (= (and b!1420300 res!955841) b!1420301))

(assert (= (and b!1420301 res!955847) b!1420306))

(assert (= (and b!1420306 res!955842) b!1420299))

(declare-fun m!1310867 () Bool)

(assert (=> b!1420301 m!1310867))

(declare-fun m!1310869 () Bool)

(assert (=> b!1420301 m!1310869))

(assert (=> b!1420301 m!1310869))

(declare-fun m!1310871 () Bool)

(assert (=> b!1420301 m!1310871))

(assert (=> b!1420301 m!1310871))

(assert (=> b!1420301 m!1310869))

(declare-fun m!1310873 () Bool)

(assert (=> b!1420301 m!1310873))

(declare-fun m!1310875 () Bool)

(assert (=> b!1420297 m!1310875))

(assert (=> b!1420297 m!1310875))

(declare-fun m!1310877 () Bool)

(assert (=> b!1420297 m!1310877))

(declare-fun m!1310879 () Bool)

(assert (=> b!1420300 m!1310879))

(assert (=> b!1420300 m!1310879))

(declare-fun m!1310881 () Bool)

(assert (=> b!1420300 m!1310881))

(assert (=> b!1420300 m!1310881))

(assert (=> b!1420300 m!1310879))

(declare-fun m!1310883 () Bool)

(assert (=> b!1420300 m!1310883))

(assert (=> b!1420302 m!1310879))

(assert (=> b!1420302 m!1310879))

(declare-fun m!1310885 () Bool)

(assert (=> b!1420302 m!1310885))

(assert (=> b!1420306 m!1310879))

(assert (=> b!1420306 m!1310879))

(declare-fun m!1310887 () Bool)

(assert (=> b!1420306 m!1310887))

(declare-fun m!1310889 () Bool)

(assert (=> b!1420304 m!1310889))

(declare-fun m!1310891 () Bool)

(assert (=> b!1420303 m!1310891))

(declare-fun m!1310893 () Bool)

(assert (=> start!122668 m!1310893))

(declare-fun m!1310895 () Bool)

(assert (=> start!122668 m!1310895))

(push 1)

(assert (not b!1420303))

(assert (not b!1420297))

(assert (not start!122668))

(assert (not b!1420306))

(assert (not b!1420301))

(assert (not b!1420302))

(assert (not b!1420300))

(assert (not b!1420304))

(check-sat)

(pop 1)

(push 1)

(check-sat)

