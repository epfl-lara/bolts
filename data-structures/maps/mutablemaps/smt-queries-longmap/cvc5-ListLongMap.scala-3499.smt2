; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48580 () Bool)

(assert start!48580)

(declare-fun b!532986 () Bool)

(declare-fun res!328349 () Bool)

(declare-fun e!310221 () Bool)

(assert (=> b!532986 (=> (not res!328349) (not e!310221))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33748 0))(
  ( (array!33749 (arr!16209 (Array (_ BitVec 32) (_ BitVec 64))) (size!16573 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33748)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!532986 (= res!328349 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16573 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16573 a!3154)) (= (select (arr!16209 a!3154) resIndex!32) (select (arr!16209 a!3154) j!147))))))

(declare-fun b!532987 () Bool)

(declare-fun res!328341 () Bool)

(assert (=> b!532987 (=> (not res!328341) (not e!310221))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33748 (_ BitVec 32)) Bool)

(assert (=> b!532987 (= res!328341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532988 () Bool)

(declare-fun res!328347 () Bool)

(declare-fun e!310222 () Bool)

(assert (=> b!532988 (=> (not res!328347) (not e!310222))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33748 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532988 (= res!328347 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532989 () Bool)

(assert (=> b!532989 (= e!310221 false)))

(declare-datatypes ((SeekEntryResult!4674 0))(
  ( (MissingZero!4674 (index!20920 (_ BitVec 32))) (Found!4674 (index!20921 (_ BitVec 32))) (Intermediate!4674 (undefined!5486 Bool) (index!20922 (_ BitVec 32)) (x!49924 (_ BitVec 32))) (Undefined!4674) (MissingVacant!4674 (index!20923 (_ BitVec 32))) )
))
(declare-fun lt!245365 () SeekEntryResult!4674)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33748 (_ BitVec 32)) SeekEntryResult!4674)

(assert (=> b!532989 (= lt!245365 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16209 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!532991 () Bool)

(declare-fun res!328345 () Bool)

(assert (=> b!532991 (=> (not res!328345) (not e!310221))))

(declare-datatypes ((List!10381 0))(
  ( (Nil!10378) (Cons!10377 (h!11320 (_ BitVec 64)) (t!16617 List!10381)) )
))
(declare-fun arrayNoDuplicates!0 (array!33748 (_ BitVec 32) List!10381) Bool)

(assert (=> b!532991 (= res!328345 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10378))))

(declare-fun b!532992 () Bool)

(assert (=> b!532992 (= e!310222 e!310221)))

(declare-fun res!328344 () Bool)

(assert (=> b!532992 (=> (not res!328344) (not e!310221))))

(declare-fun lt!245366 () SeekEntryResult!4674)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532992 (= res!328344 (or (= lt!245366 (MissingZero!4674 i!1153)) (= lt!245366 (MissingVacant!4674 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33748 (_ BitVec 32)) SeekEntryResult!4674)

(assert (=> b!532992 (= lt!245366 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532993 () Bool)

(declare-fun res!328348 () Bool)

(assert (=> b!532993 (=> (not res!328348) (not e!310222))))

(assert (=> b!532993 (= res!328348 (and (= (size!16573 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16573 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16573 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532994 () Bool)

(declare-fun res!328342 () Bool)

(assert (=> b!532994 (=> (not res!328342) (not e!310222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532994 (= res!328342 (validKeyInArray!0 (select (arr!16209 a!3154) j!147)))))

(declare-fun b!532990 () Bool)

(declare-fun res!328343 () Bool)

(assert (=> b!532990 (=> (not res!328343) (not e!310222))))

(assert (=> b!532990 (= res!328343 (validKeyInArray!0 k!1998))))

(declare-fun res!328346 () Bool)

(assert (=> start!48580 (=> (not res!328346) (not e!310222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48580 (= res!328346 (validMask!0 mask!3216))))

(assert (=> start!48580 e!310222))

(assert (=> start!48580 true))

(declare-fun array_inv!11983 (array!33748) Bool)

(assert (=> start!48580 (array_inv!11983 a!3154)))

(assert (= (and start!48580 res!328346) b!532993))

(assert (= (and b!532993 res!328348) b!532994))

(assert (= (and b!532994 res!328342) b!532990))

(assert (= (and b!532990 res!328343) b!532988))

(assert (= (and b!532988 res!328347) b!532992))

(assert (= (and b!532992 res!328344) b!532987))

(assert (= (and b!532987 res!328341) b!532991))

(assert (= (and b!532991 res!328345) b!532986))

(assert (= (and b!532986 res!328349) b!532989))

(declare-fun m!512959 () Bool)

(assert (=> b!532992 m!512959))

(declare-fun m!512961 () Bool)

(assert (=> b!532986 m!512961))

(declare-fun m!512963 () Bool)

(assert (=> b!532986 m!512963))

(declare-fun m!512965 () Bool)

(assert (=> b!532990 m!512965))

(assert (=> b!532994 m!512963))

(assert (=> b!532994 m!512963))

(declare-fun m!512967 () Bool)

(assert (=> b!532994 m!512967))

(declare-fun m!512969 () Bool)

(assert (=> b!532988 m!512969))

(declare-fun m!512971 () Bool)

(assert (=> start!48580 m!512971))

(declare-fun m!512973 () Bool)

(assert (=> start!48580 m!512973))

(declare-fun m!512975 () Bool)

(assert (=> b!532987 m!512975))

(assert (=> b!532989 m!512963))

(assert (=> b!532989 m!512963))

(declare-fun m!512977 () Bool)

(assert (=> b!532989 m!512977))

(declare-fun m!512979 () Bool)

(assert (=> b!532991 m!512979))

(push 1)

(assert (not b!532988))

(assert (not b!532994))

(assert (not b!532992))

(assert (not b!532989))

(assert (not b!532987))

(assert (not b!532990))

(assert (not b!532991))

(assert (not start!48580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

