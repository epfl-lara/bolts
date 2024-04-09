; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49292 () Bool)

(assert start!49292)

(declare-fun b!542271 () Bool)

(declare-fun res!336983 () Bool)

(declare-fun e!313868 () Bool)

(assert (=> b!542271 (=> (not res!336983) (not e!313868))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34256 0))(
  ( (array!34257 (arr!16457 (Array (_ BitVec 32) (_ BitVec 64))) (size!16821 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34256)

(assert (=> b!542271 (= res!336983 (and (not (= (select (arr!16457 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16457 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16457 a!3154) index!1177) (select (arr!16457 a!3154) j!147)))))))

(declare-fun res!336973 () Bool)

(declare-fun e!313869 () Bool)

(assert (=> start!49292 (=> (not res!336973) (not e!313869))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49292 (= res!336973 (validMask!0 mask!3216))))

(assert (=> start!49292 e!313869))

(assert (=> start!49292 true))

(declare-fun array_inv!12231 (array!34256) Bool)

(assert (=> start!49292 (array_inv!12231 a!3154)))

(declare-fun b!542272 () Bool)

(declare-fun res!336978 () Bool)

(assert (=> b!542272 (=> (not res!336978) (not e!313869))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542272 (= res!336978 (validKeyInArray!0 k!1998))))

(declare-fun b!542273 () Bool)

(declare-fun res!336975 () Bool)

(declare-fun e!313870 () Bool)

(assert (=> b!542273 (=> (not res!336975) (not e!313870))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!542273 (= res!336975 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16821 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16821 a!3154)) (= (select (arr!16457 a!3154) resIndex!32) (select (arr!16457 a!3154) j!147))))))

(declare-fun b!542274 () Bool)

(declare-fun res!336980 () Bool)

(assert (=> b!542274 (=> (not res!336980) (not e!313869))))

(assert (=> b!542274 (= res!336980 (validKeyInArray!0 (select (arr!16457 a!3154) j!147)))))

(declare-fun b!542275 () Bool)

(declare-fun res!336972 () Bool)

(assert (=> b!542275 (=> (not res!336972) (not e!313870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34256 (_ BitVec 32)) Bool)

(assert (=> b!542275 (= res!336972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542276 () Bool)

(declare-fun res!336977 () Bool)

(assert (=> b!542276 (=> (not res!336977) (not e!313869))))

(declare-fun arrayContainsKey!0 (array!34256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542276 (= res!336977 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542277 () Bool)

(assert (=> b!542277 (= e!313870 e!313868)))

(declare-fun res!336974 () Bool)

(assert (=> b!542277 (=> (not res!336974) (not e!313868))))

(declare-datatypes ((SeekEntryResult!4922 0))(
  ( (MissingZero!4922 (index!21912 (_ BitVec 32))) (Found!4922 (index!21913 (_ BitVec 32))) (Intermediate!4922 (undefined!5734 Bool) (index!21914 (_ BitVec 32)) (x!50852 (_ BitVec 32))) (Undefined!4922) (MissingVacant!4922 (index!21915 (_ BitVec 32))) )
))
(declare-fun lt!247890 () SeekEntryResult!4922)

(assert (=> b!542277 (= res!336974 (= lt!247890 (Intermediate!4922 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34256 (_ BitVec 32)) SeekEntryResult!4922)

(assert (=> b!542277 (= lt!247890 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16457 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542278 () Bool)

(declare-fun res!336981 () Bool)

(assert (=> b!542278 (=> (not res!336981) (not e!313869))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542278 (= res!336981 (and (= (size!16821 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16821 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16821 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542279 () Bool)

(assert (=> b!542279 (= e!313868 false)))

(declare-fun lt!247891 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542279 (= lt!247891 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!542280 () Bool)

(assert (=> b!542280 (= e!313869 e!313870)))

(declare-fun res!336982 () Bool)

(assert (=> b!542280 (=> (not res!336982) (not e!313870))))

(declare-fun lt!247892 () SeekEntryResult!4922)

(assert (=> b!542280 (= res!336982 (or (= lt!247892 (MissingZero!4922 i!1153)) (= lt!247892 (MissingVacant!4922 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34256 (_ BitVec 32)) SeekEntryResult!4922)

(assert (=> b!542280 (= lt!247892 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!542281 () Bool)

(declare-fun res!336976 () Bool)

(assert (=> b!542281 (=> (not res!336976) (not e!313868))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542281 (= res!336976 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16457 a!3154) j!147) mask!3216) (select (arr!16457 a!3154) j!147) a!3154 mask!3216) lt!247890))))

(declare-fun b!542282 () Bool)

(declare-fun res!336979 () Bool)

(assert (=> b!542282 (=> (not res!336979) (not e!313870))))

(declare-datatypes ((List!10629 0))(
  ( (Nil!10626) (Cons!10625 (h!11580 (_ BitVec 64)) (t!16865 List!10629)) )
))
(declare-fun arrayNoDuplicates!0 (array!34256 (_ BitVec 32) List!10629) Bool)

(assert (=> b!542282 (= res!336979 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10626))))

(assert (= (and start!49292 res!336973) b!542278))

(assert (= (and b!542278 res!336981) b!542274))

(assert (= (and b!542274 res!336980) b!542272))

(assert (= (and b!542272 res!336978) b!542276))

(assert (= (and b!542276 res!336977) b!542280))

(assert (= (and b!542280 res!336982) b!542275))

(assert (= (and b!542275 res!336972) b!542282))

(assert (= (and b!542282 res!336979) b!542273))

(assert (= (and b!542273 res!336975) b!542277))

(assert (= (and b!542277 res!336974) b!542281))

(assert (= (and b!542281 res!336976) b!542271))

(assert (= (and b!542271 res!336983) b!542279))

(declare-fun m!520561 () Bool)

(assert (=> b!542280 m!520561))

(declare-fun m!520563 () Bool)

(assert (=> b!542273 m!520563))

(declare-fun m!520565 () Bool)

(assert (=> b!542273 m!520565))

(declare-fun m!520567 () Bool)

(assert (=> b!542271 m!520567))

(assert (=> b!542271 m!520565))

(declare-fun m!520569 () Bool)

(assert (=> b!542275 m!520569))

(declare-fun m!520571 () Bool)

(assert (=> start!49292 m!520571))

(declare-fun m!520573 () Bool)

(assert (=> start!49292 m!520573))

(assert (=> b!542274 m!520565))

(assert (=> b!542274 m!520565))

(declare-fun m!520575 () Bool)

(assert (=> b!542274 m!520575))

(assert (=> b!542281 m!520565))

(assert (=> b!542281 m!520565))

(declare-fun m!520577 () Bool)

(assert (=> b!542281 m!520577))

(assert (=> b!542281 m!520577))

(assert (=> b!542281 m!520565))

(declare-fun m!520579 () Bool)

(assert (=> b!542281 m!520579))

(declare-fun m!520581 () Bool)

(assert (=> b!542276 m!520581))

(declare-fun m!520583 () Bool)

(assert (=> b!542282 m!520583))

(assert (=> b!542277 m!520565))

(assert (=> b!542277 m!520565))

(declare-fun m!520585 () Bool)

(assert (=> b!542277 m!520585))

(declare-fun m!520587 () Bool)

(assert (=> b!542272 m!520587))

(declare-fun m!520589 () Bool)

(assert (=> b!542279 m!520589))

(push 1)

(assert (not b!542281))

(assert (not b!542277))

(assert (not b!542282))

(assert (not b!542272))

