; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48248 () Bool)

(assert start!48248)

(declare-fun b!530759 () Bool)

(declare-fun res!326619 () Bool)

(declare-fun e!309161 () Bool)

(assert (=> b!530759 (=> (not res!326619) (not e!309161))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530759 (= res!326619 (validKeyInArray!0 k!1998))))

(declare-fun b!530760 () Bool)

(declare-fun res!326616 () Bool)

(assert (=> b!530760 (=> (not res!326616) (not e!309161))))

(declare-datatypes ((array!33629 0))(
  ( (array!33630 (arr!16157 (Array (_ BitVec 32) (_ BitVec 64))) (size!16521 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33629)

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530760 (= res!326616 (validKeyInArray!0 (select (arr!16157 a!3154) j!147)))))

(declare-fun b!530761 () Bool)

(declare-fun res!326617 () Bool)

(declare-fun e!309163 () Bool)

(assert (=> b!530761 (=> (not res!326617) (not e!309163))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33629 (_ BitVec 32)) Bool)

(assert (=> b!530761 (= res!326617 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!530762 () Bool)

(assert (=> b!530762 (= e!309163 (bvsgt #b00000000000000000000000000000000 (size!16521 a!3154)))))

(declare-fun b!530763 () Bool)

(declare-fun res!326621 () Bool)

(assert (=> b!530763 (=> (not res!326621) (not e!309161))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530763 (= res!326621 (and (= (size!16521 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16521 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16521 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530764 () Bool)

(declare-fun res!326618 () Bool)

(assert (=> b!530764 (=> (not res!326618) (not e!309161))))

(declare-fun arrayContainsKey!0 (array!33629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530764 (= res!326618 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530765 () Bool)

(assert (=> b!530765 (= e!309161 e!309163)))

(declare-fun res!326620 () Bool)

(assert (=> b!530765 (=> (not res!326620) (not e!309163))))

(declare-datatypes ((SeekEntryResult!4622 0))(
  ( (MissingZero!4622 (index!20712 (_ BitVec 32))) (Found!4622 (index!20713 (_ BitVec 32))) (Intermediate!4622 (undefined!5434 Bool) (index!20714 (_ BitVec 32)) (x!49719 (_ BitVec 32))) (Undefined!4622) (MissingVacant!4622 (index!20715 (_ BitVec 32))) )
))
(declare-fun lt!244790 () SeekEntryResult!4622)

(assert (=> b!530765 (= res!326620 (or (= lt!244790 (MissingZero!4622 i!1153)) (= lt!244790 (MissingVacant!4622 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33629 (_ BitVec 32)) SeekEntryResult!4622)

(assert (=> b!530765 (= lt!244790 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!326615 () Bool)

(assert (=> start!48248 (=> (not res!326615) (not e!309161))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48248 (= res!326615 (validMask!0 mask!3216))))

(assert (=> start!48248 e!309161))

(assert (=> start!48248 true))

(declare-fun array_inv!11931 (array!33629) Bool)

(assert (=> start!48248 (array_inv!11931 a!3154)))

(assert (= (and start!48248 res!326615) b!530763))

(assert (= (and b!530763 res!326621) b!530760))

(assert (= (and b!530760 res!326616) b!530759))

(assert (= (and b!530759 res!326619) b!530764))

(assert (= (and b!530764 res!326618) b!530765))

(assert (= (and b!530765 res!326620) b!530761))

(assert (= (and b!530761 res!326617) b!530762))

(declare-fun m!511323 () Bool)

(assert (=> b!530761 m!511323))

(declare-fun m!511325 () Bool)

(assert (=> b!530759 m!511325))

(declare-fun m!511327 () Bool)

(assert (=> start!48248 m!511327))

(declare-fun m!511329 () Bool)

(assert (=> start!48248 m!511329))

(declare-fun m!511331 () Bool)

(assert (=> b!530764 m!511331))

(declare-fun m!511333 () Bool)

(assert (=> b!530765 m!511333))

(declare-fun m!511335 () Bool)

(assert (=> b!530760 m!511335))

(assert (=> b!530760 m!511335))

(declare-fun m!511337 () Bool)

(assert (=> b!530760 m!511337))

(push 1)

(assert (not b!530764))

(assert (not b!530759))

(assert (not start!48248))

(assert (not b!530761))

(assert (not b!530760))

(assert (not b!530765))

(check-sat)

