; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49288 () Bool)

(assert start!49288)

(declare-fun b!542199 () Bool)

(declare-fun res!336909 () Bool)

(declare-fun e!313845 () Bool)

(assert (=> b!542199 (=> (not res!336909) (not e!313845))))

(declare-datatypes ((array!34252 0))(
  ( (array!34253 (arr!16455 (Array (_ BitVec 32) (_ BitVec 64))) (size!16819 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34252)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542199 (= res!336909 (validKeyInArray!0 (select (arr!16455 a!3154) j!147)))))

(declare-fun b!542200 () Bool)

(declare-fun res!336906 () Bool)

(assert (=> b!542200 (=> (not res!336906) (not e!313845))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542200 (= res!336906 (and (= (size!16819 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16819 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16819 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542201 () Bool)

(declare-fun res!336907 () Bool)

(declare-fun e!313846 () Bool)

(assert (=> b!542201 (=> (not res!336907) (not e!313846))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!542201 (= res!336907 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16819 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16819 a!3154)) (= (select (arr!16455 a!3154) resIndex!32) (select (arr!16455 a!3154) j!147))))))

(declare-fun b!542202 () Bool)

(declare-fun res!336910 () Bool)

(declare-fun e!313844 () Bool)

(assert (=> b!542202 (=> (not res!336910) (not e!313844))))

(assert (=> b!542202 (= res!336910 (and (not (= (select (arr!16455 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16455 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16455 a!3154) index!1177) (select (arr!16455 a!3154) j!147)))))))

(declare-fun b!542203 () Bool)

(declare-fun res!336911 () Bool)

(assert (=> b!542203 (=> (not res!336911) (not e!313845))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542203 (= res!336911 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542204 () Bool)

(declare-fun res!336905 () Bool)

(assert (=> b!542204 (=> (not res!336905) (not e!313846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34252 (_ BitVec 32)) Bool)

(assert (=> b!542204 (= res!336905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542205 () Bool)

(assert (=> b!542205 (= e!313844 false)))

(declare-fun lt!247873 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542205 (= lt!247873 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542206 () Bool)

(declare-fun res!336902 () Bool)

(assert (=> b!542206 (=> (not res!336902) (not e!313846))))

(declare-datatypes ((List!10627 0))(
  ( (Nil!10624) (Cons!10623 (h!11578 (_ BitVec 64)) (t!16863 List!10627)) )
))
(declare-fun arrayNoDuplicates!0 (array!34252 (_ BitVec 32) List!10627) Bool)

(assert (=> b!542206 (= res!336902 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10624))))

(declare-fun res!336904 () Bool)

(assert (=> start!49288 (=> (not res!336904) (not e!313845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49288 (= res!336904 (validMask!0 mask!3216))))

(assert (=> start!49288 e!313845))

(assert (=> start!49288 true))

(declare-fun array_inv!12229 (array!34252) Bool)

(assert (=> start!49288 (array_inv!12229 a!3154)))

(declare-fun b!542207 () Bool)

(assert (=> b!542207 (= e!313846 e!313844)))

(declare-fun res!336901 () Bool)

(assert (=> b!542207 (=> (not res!336901) (not e!313844))))

(declare-datatypes ((SeekEntryResult!4920 0))(
  ( (MissingZero!4920 (index!21904 (_ BitVec 32))) (Found!4920 (index!21905 (_ BitVec 32))) (Intermediate!4920 (undefined!5732 Bool) (index!21906 (_ BitVec 32)) (x!50850 (_ BitVec 32))) (Undefined!4920) (MissingVacant!4920 (index!21907 (_ BitVec 32))) )
))
(declare-fun lt!247874 () SeekEntryResult!4920)

(assert (=> b!542207 (= res!336901 (= lt!247874 (Intermediate!4920 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34252 (_ BitVec 32)) SeekEntryResult!4920)

(assert (=> b!542207 (= lt!247874 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16455 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542208 () Bool)

(declare-fun res!336908 () Bool)

(assert (=> b!542208 (=> (not res!336908) (not e!313845))))

(assert (=> b!542208 (= res!336908 (validKeyInArray!0 k!1998))))

(declare-fun b!542209 () Bool)

(assert (=> b!542209 (= e!313845 e!313846)))

(declare-fun res!336903 () Bool)

(assert (=> b!542209 (=> (not res!336903) (not e!313846))))

(declare-fun lt!247872 () SeekEntryResult!4920)

(assert (=> b!542209 (= res!336903 (or (= lt!247872 (MissingZero!4920 i!1153)) (= lt!247872 (MissingVacant!4920 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34252 (_ BitVec 32)) SeekEntryResult!4920)

(assert (=> b!542209 (= lt!247872 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542210 () Bool)

(declare-fun res!336900 () Bool)

(assert (=> b!542210 (=> (not res!336900) (not e!313844))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542210 (= res!336900 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16455 a!3154) j!147) mask!3216) (select (arr!16455 a!3154) j!147) a!3154 mask!3216) lt!247874))))

(assert (= (and start!49288 res!336904) b!542200))

(assert (= (and b!542200 res!336906) b!542199))

(assert (= (and b!542199 res!336909) b!542208))

(assert (= (and b!542208 res!336908) b!542203))

(assert (= (and b!542203 res!336911) b!542209))

(assert (= (and b!542209 res!336903) b!542204))

(assert (= (and b!542204 res!336905) b!542206))

(assert (= (and b!542206 res!336902) b!542201))

(assert (= (and b!542201 res!336907) b!542207))

(assert (= (and b!542207 res!336901) b!542210))

(assert (= (and b!542210 res!336900) b!542202))

(assert (= (and b!542202 res!336910) b!542205))

(declare-fun m!520501 () Bool)

(assert (=> b!542208 m!520501))

(declare-fun m!520503 () Bool)

(assert (=> b!542201 m!520503))

(declare-fun m!520505 () Bool)

(assert (=> b!542201 m!520505))

(assert (=> b!542210 m!520505))

(assert (=> b!542210 m!520505))

(declare-fun m!520507 () Bool)

(assert (=> b!542210 m!520507))

(assert (=> b!542210 m!520507))

(assert (=> b!542210 m!520505))

(declare-fun m!520509 () Bool)

(assert (=> b!542210 m!520509))

(declare-fun m!520511 () Bool)

(assert (=> b!542203 m!520511))

(assert (=> b!542199 m!520505))

(assert (=> b!542199 m!520505))

(declare-fun m!520513 () Bool)

(assert (=> b!542199 m!520513))

(declare-fun m!520515 () Bool)

(assert (=> b!542205 m!520515))

(declare-fun m!520517 () Bool)

(assert (=> b!542206 m!520517))

(declare-fun m!520519 () Bool)

(assert (=> b!542209 m!520519))

(declare-fun m!520521 () Bool)

(assert (=> b!542204 m!520521))

(declare-fun m!520523 () Bool)

(assert (=> b!542202 m!520523))

(assert (=> b!542202 m!520505))

(declare-fun m!520525 () Bool)

(assert (=> start!49288 m!520525))

(declare-fun m!520527 () Bool)

(assert (=> start!49288 m!520527))

(assert (=> b!542207 m!520505))

(assert (=> b!542207 m!520505))

(declare-fun m!520529 () Bool)

(assert (=> b!542207 m!520529))

(push 1)

