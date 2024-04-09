; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122674 () Bool)

(assert start!122674)

(declare-fun b!1420385 () Bool)

(declare-fun res!955928 () Bool)

(declare-fun e!803377 () Bool)

(assert (=> b!1420385 (=> (not res!955928) (not e!803377))))

(declare-datatypes ((array!96957 0))(
  ( (array!96958 (arr!46792 (Array (_ BitVec 32) (_ BitVec 64))) (size!47343 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96957)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420385 (= res!955928 (validKeyInArray!0 (select (arr!46792 a!2831) i!982)))))

(declare-fun b!1420386 () Bool)

(declare-fun res!955934 () Bool)

(assert (=> b!1420386 (=> (not res!955934) (not e!803377))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1420386 (= res!955934 (validKeyInArray!0 (select (arr!46792 a!2831) j!81)))))

(declare-fun res!955931 () Bool)

(assert (=> start!122674 (=> (not res!955931) (not e!803377))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122674 (= res!955931 (validMask!0 mask!2608))))

(assert (=> start!122674 e!803377))

(assert (=> start!122674 true))

(declare-fun array_inv!35737 (array!96957) Bool)

(assert (=> start!122674 (array_inv!35737 a!2831)))

(declare-fun b!1420387 () Bool)

(declare-fun res!955927 () Bool)

(assert (=> b!1420387 (=> (not res!955927) (not e!803377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96957 (_ BitVec 32)) Bool)

(assert (=> b!1420387 (= res!955927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420388 () Bool)

(assert (=> b!1420388 (= e!803377 false)))

(declare-datatypes ((SeekEntryResult!11099 0))(
  ( (MissingZero!11099 (index!46787 (_ BitVec 32))) (Found!11099 (index!46788 (_ BitVec 32))) (Intermediate!11099 (undefined!11911 Bool) (index!46789 (_ BitVec 32)) (x!128456 (_ BitVec 32))) (Undefined!11099) (MissingVacant!11099 (index!46790 (_ BitVec 32))) )
))
(declare-fun lt!625858 () SeekEntryResult!11099)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96957 (_ BitVec 32)) SeekEntryResult!11099)

(assert (=> b!1420388 (= lt!625858 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46792 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1420389 () Bool)

(declare-fun res!955933 () Bool)

(assert (=> b!1420389 (=> (not res!955933) (not e!803377))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420389 (= res!955933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46792 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46792 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96958 (store (arr!46792 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47343 a!2831)) mask!2608) (Intermediate!11099 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420390 () Bool)

(declare-fun res!955929 () Bool)

(assert (=> b!1420390 (=> (not res!955929) (not e!803377))))

(declare-datatypes ((List!33482 0))(
  ( (Nil!33479) (Cons!33478 (h!34780 (_ BitVec 64)) (t!48183 List!33482)) )
))
(declare-fun arrayNoDuplicates!0 (array!96957 (_ BitVec 32) List!33482) Bool)

(assert (=> b!1420390 (= res!955929 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33479))))

(declare-fun b!1420391 () Bool)

(declare-fun res!955930 () Bool)

(assert (=> b!1420391 (=> (not res!955930) (not e!803377))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1420391 (= res!955930 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46792 a!2831) j!81) mask!2608) (select (arr!46792 a!2831) j!81) a!2831 mask!2608) (Intermediate!11099 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420392 () Bool)

(declare-fun res!955932 () Bool)

(assert (=> b!1420392 (=> (not res!955932) (not e!803377))))

(assert (=> b!1420392 (= res!955932 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47343 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47343 a!2831))))))

(declare-fun b!1420393 () Bool)

(declare-fun res!955935 () Bool)

(assert (=> b!1420393 (=> (not res!955935) (not e!803377))))

(assert (=> b!1420393 (= res!955935 (and (= (size!47343 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47343 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47343 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122674 res!955931) b!1420393))

(assert (= (and b!1420393 res!955935) b!1420385))

(assert (= (and b!1420385 res!955928) b!1420386))

(assert (= (and b!1420386 res!955934) b!1420387))

(assert (= (and b!1420387 res!955927) b!1420390))

(assert (= (and b!1420390 res!955929) b!1420392))

(assert (= (and b!1420392 res!955932) b!1420391))

(assert (= (and b!1420391 res!955930) b!1420389))

(assert (= (and b!1420389 res!955933) b!1420388))

(declare-fun m!1310957 () Bool)

(assert (=> b!1420388 m!1310957))

(assert (=> b!1420388 m!1310957))

(declare-fun m!1310959 () Bool)

(assert (=> b!1420388 m!1310959))

(declare-fun m!1310961 () Bool)

(assert (=> b!1420385 m!1310961))

(assert (=> b!1420385 m!1310961))

(declare-fun m!1310963 () Bool)

(assert (=> b!1420385 m!1310963))

(declare-fun m!1310965 () Bool)

(assert (=> start!122674 m!1310965))

(declare-fun m!1310967 () Bool)

(assert (=> start!122674 m!1310967))

(declare-fun m!1310969 () Bool)

(assert (=> b!1420390 m!1310969))

(assert (=> b!1420386 m!1310957))

(assert (=> b!1420386 m!1310957))

(declare-fun m!1310971 () Bool)

(assert (=> b!1420386 m!1310971))

(declare-fun m!1310973 () Bool)

(assert (=> b!1420387 m!1310973))

(declare-fun m!1310975 () Bool)

(assert (=> b!1420389 m!1310975))

(declare-fun m!1310977 () Bool)

(assert (=> b!1420389 m!1310977))

(assert (=> b!1420389 m!1310977))

(declare-fun m!1310979 () Bool)

(assert (=> b!1420389 m!1310979))

(assert (=> b!1420389 m!1310979))

(assert (=> b!1420389 m!1310977))

(declare-fun m!1310981 () Bool)

(assert (=> b!1420389 m!1310981))

(assert (=> b!1420391 m!1310957))

(assert (=> b!1420391 m!1310957))

(declare-fun m!1310983 () Bool)

(assert (=> b!1420391 m!1310983))

(assert (=> b!1420391 m!1310983))

(assert (=> b!1420391 m!1310957))

(declare-fun m!1310985 () Bool)

(assert (=> b!1420391 m!1310985))

(push 1)

(assert (not b!1420386))

(assert (not b!1420391))

(assert (not b!1420390))

(assert (not b!1420389))

(assert (not b!1420385))

(assert (not start!122674))

(assert (not b!1420387))

(assert (not b!1420388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

