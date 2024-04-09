; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48644 () Bool)

(assert start!48644)

(declare-fun b!533921 () Bool)

(declare-fun res!329279 () Bool)

(declare-fun e!310508 () Bool)

(assert (=> b!533921 (=> (not res!329279) (not e!310508))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533921 (= res!329279 (validKeyInArray!0 k!1998))))

(declare-fun res!329276 () Bool)

(assert (=> start!48644 (=> (not res!329276) (not e!310508))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48644 (= res!329276 (validMask!0 mask!3216))))

(assert (=> start!48644 e!310508))

(assert (=> start!48644 true))

(declare-datatypes ((array!33812 0))(
  ( (array!33813 (arr!16241 (Array (_ BitVec 32) (_ BitVec 64))) (size!16605 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33812)

(declare-fun array_inv!12015 (array!33812) Bool)

(assert (=> start!48644 (array_inv!12015 a!3154)))

(declare-fun b!533922 () Bool)

(declare-fun res!329280 () Bool)

(declare-fun e!310509 () Bool)

(assert (=> b!533922 (=> (not res!329280) (not e!310509))))

(declare-datatypes ((List!10413 0))(
  ( (Nil!10410) (Cons!10409 (h!11352 (_ BitVec 64)) (t!16649 List!10413)) )
))
(declare-fun arrayNoDuplicates!0 (array!33812 (_ BitVec 32) List!10413) Bool)

(assert (=> b!533922 (= res!329280 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10410))))

(declare-fun b!533923 () Bool)

(declare-fun res!329282 () Bool)

(assert (=> b!533923 (=> (not res!329282) (not e!310508))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533923 (= res!329282 (and (= (size!16605 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16605 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16605 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533924 () Bool)

(assert (=> b!533924 (= e!310508 e!310509)))

(declare-fun res!329284 () Bool)

(assert (=> b!533924 (=> (not res!329284) (not e!310509))))

(declare-datatypes ((SeekEntryResult!4706 0))(
  ( (MissingZero!4706 (index!21048 (_ BitVec 32))) (Found!4706 (index!21049 (_ BitVec 32))) (Intermediate!4706 (undefined!5518 Bool) (index!21050 (_ BitVec 32)) (x!50036 (_ BitVec 32))) (Undefined!4706) (MissingVacant!4706 (index!21051 (_ BitVec 32))) )
))
(declare-fun lt!245530 () SeekEntryResult!4706)

(assert (=> b!533924 (= res!329284 (or (= lt!245530 (MissingZero!4706 i!1153)) (= lt!245530 (MissingVacant!4706 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33812 (_ BitVec 32)) SeekEntryResult!4706)

(assert (=> b!533924 (= lt!245530 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533925 () Bool)

(declare-fun res!329277 () Bool)

(assert (=> b!533925 (=> (not res!329277) (not e!310508))))

(assert (=> b!533925 (= res!329277 (validKeyInArray!0 (select (arr!16241 a!3154) j!147)))))

(declare-fun b!533926 () Bool)

(assert (=> b!533926 (= e!310509 false)))

(declare-fun lt!245531 () SeekEntryResult!4706)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33812 (_ BitVec 32)) SeekEntryResult!4706)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!533926 (= lt!245531 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16241 a!3154) j!147) mask!3216) (select (arr!16241 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533927 () Bool)

(declare-fun res!329285 () Bool)

(assert (=> b!533927 (=> (not res!329285) (not e!310508))))

(declare-fun arrayContainsKey!0 (array!33812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533927 (= res!329285 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533928 () Bool)

(declare-fun res!329283 () Bool)

(assert (=> b!533928 (=> (not res!329283) (not e!310509))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533928 (= res!329283 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16605 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16605 a!3154)) (= (select (arr!16241 a!3154) resIndex!32) (select (arr!16241 a!3154) j!147))))))

(declare-fun b!533929 () Bool)

(declare-fun res!329281 () Bool)

(assert (=> b!533929 (=> (not res!329281) (not e!310509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33812 (_ BitVec 32)) Bool)

(assert (=> b!533929 (= res!329281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533930 () Bool)

(declare-fun res!329278 () Bool)

(assert (=> b!533930 (=> (not res!329278) (not e!310509))))

(assert (=> b!533930 (= res!329278 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16241 a!3154) j!147) a!3154 mask!3216) (Intermediate!4706 false resIndex!32 resX!32)))))

(assert (= (and start!48644 res!329276) b!533923))

(assert (= (and b!533923 res!329282) b!533925))

(assert (= (and b!533925 res!329277) b!533921))

(assert (= (and b!533921 res!329279) b!533927))

(assert (= (and b!533927 res!329285) b!533924))

(assert (= (and b!533924 res!329284) b!533929))

(assert (= (and b!533929 res!329281) b!533922))

(assert (= (and b!533922 res!329280) b!533928))

(assert (= (and b!533928 res!329283) b!533930))

(assert (= (and b!533930 res!329278) b!533926))

(declare-fun m!513719 () Bool)

(assert (=> b!533929 m!513719))

(declare-fun m!513721 () Bool)

(assert (=> start!48644 m!513721))

(declare-fun m!513723 () Bool)

(assert (=> start!48644 m!513723))

(declare-fun m!513725 () Bool)

(assert (=> b!533924 m!513725))

(declare-fun m!513727 () Bool)

(assert (=> b!533930 m!513727))

(assert (=> b!533930 m!513727))

(declare-fun m!513729 () Bool)

(assert (=> b!533930 m!513729))

(declare-fun m!513731 () Bool)

(assert (=> b!533927 m!513731))

(assert (=> b!533926 m!513727))

(assert (=> b!533926 m!513727))

(declare-fun m!513733 () Bool)

(assert (=> b!533926 m!513733))

(assert (=> b!533926 m!513733))

(assert (=> b!533926 m!513727))

(declare-fun m!513735 () Bool)

(assert (=> b!533926 m!513735))

(declare-fun m!513737 () Bool)

(assert (=> b!533928 m!513737))

(assert (=> b!533928 m!513727))

(assert (=> b!533925 m!513727))

(assert (=> b!533925 m!513727))

(declare-fun m!513739 () Bool)

(assert (=> b!533925 m!513739))

(declare-fun m!513741 () Bool)

(assert (=> b!533922 m!513741))

(declare-fun m!513743 () Bool)

(assert (=> b!533921 m!513743))

(push 1)

(assert (not b!533926))

(assert (not b!533929))

(assert (not b!533930))

(assert (not b!533927))

(assert (not b!533924))

(assert (not start!48644))

