; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48602 () Bool)

(assert start!48602)

(declare-fun b!533300 () Bool)

(declare-fun res!328658 () Bool)

(declare-fun e!310320 () Bool)

(assert (=> b!533300 (=> (not res!328658) (not e!310320))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(declare-datatypes ((array!33770 0))(
  ( (array!33771 (arr!16220 (Array (_ BitVec 32) (_ BitVec 64))) (size!16584 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33770)

(assert (=> b!533300 (= res!328658 (and (= (size!16584 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16584 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16584 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533301 () Bool)

(declare-fun res!328655 () Bool)

(assert (=> b!533301 (=> (not res!328655) (not e!310320))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533301 (= res!328655 (validKeyInArray!0 (select (arr!16220 a!3154) j!147)))))

(declare-fun b!533302 () Bool)

(declare-fun res!328663 () Bool)

(declare-fun e!310321 () Bool)

(assert (=> b!533302 (=> (not res!328663) (not e!310321))))

(declare-datatypes ((List!10392 0))(
  ( (Nil!10389) (Cons!10388 (h!11331 (_ BitVec 64)) (t!16628 List!10392)) )
))
(declare-fun arrayNoDuplicates!0 (array!33770 (_ BitVec 32) List!10392) Bool)

(assert (=> b!533302 (= res!328663 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10389))))

(declare-fun res!328664 () Bool)

(assert (=> start!48602 (=> (not res!328664) (not e!310320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48602 (= res!328664 (validMask!0 mask!3216))))

(assert (=> start!48602 e!310320))

(assert (=> start!48602 true))

(declare-fun array_inv!11994 (array!33770) Bool)

(assert (=> start!48602 (array_inv!11994 a!3154)))

(declare-fun b!533303 () Bool)

(assert (=> b!533303 (= e!310320 e!310321)))

(declare-fun res!328661 () Bool)

(assert (=> b!533303 (=> (not res!328661) (not e!310321))))

(declare-datatypes ((SeekEntryResult!4685 0))(
  ( (MissingZero!4685 (index!20964 (_ BitVec 32))) (Found!4685 (index!20965 (_ BitVec 32))) (Intermediate!4685 (undefined!5497 Bool) (index!20966 (_ BitVec 32)) (x!49959 (_ BitVec 32))) (Undefined!4685) (MissingVacant!4685 (index!20967 (_ BitVec 32))) )
))
(declare-fun lt!245414 () SeekEntryResult!4685)

(assert (=> b!533303 (= res!328661 (or (= lt!245414 (MissingZero!4685 i!1153)) (= lt!245414 (MissingVacant!4685 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33770 (_ BitVec 32)) SeekEntryResult!4685)

(assert (=> b!533303 (= lt!245414 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533304 () Bool)

(declare-fun res!328659 () Bool)

(assert (=> b!533304 (=> (not res!328659) (not e!310321))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533304 (= res!328659 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16584 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16584 a!3154)) (= (select (arr!16220 a!3154) resIndex!32) (select (arr!16220 a!3154) j!147))))))

(declare-fun b!533305 () Bool)

(declare-fun res!328656 () Bool)

(assert (=> b!533305 (=> (not res!328656) (not e!310320))))

(declare-fun arrayContainsKey!0 (array!33770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533305 (= res!328656 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533306 () Bool)

(assert (=> b!533306 (= e!310321 (and (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun b!533307 () Bool)

(declare-fun res!328657 () Bool)

(assert (=> b!533307 (=> (not res!328657) (not e!310320))))

(assert (=> b!533307 (= res!328657 (validKeyInArray!0 k!1998))))

(declare-fun b!533308 () Bool)

(declare-fun res!328660 () Bool)

(assert (=> b!533308 (=> (not res!328660) (not e!310321))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33770 (_ BitVec 32)) Bool)

(assert (=> b!533308 (= res!328660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533309 () Bool)

(declare-fun res!328662 () Bool)

(assert (=> b!533309 (=> (not res!328662) (not e!310321))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33770 (_ BitVec 32)) SeekEntryResult!4685)

(assert (=> b!533309 (= res!328662 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16220 a!3154) j!147) a!3154 mask!3216) (Intermediate!4685 false resIndex!32 resX!32)))))

(assert (= (and start!48602 res!328664) b!533300))

(assert (= (and b!533300 res!328658) b!533301))

(assert (= (and b!533301 res!328655) b!533307))

(assert (= (and b!533307 res!328657) b!533305))

(assert (= (and b!533305 res!328656) b!533303))

(assert (= (and b!533303 res!328661) b!533308))

(assert (= (and b!533308 res!328660) b!533302))

(assert (= (and b!533302 res!328663) b!533304))

(assert (= (and b!533304 res!328659) b!533309))

(assert (= (and b!533309 res!328662) b!533306))

(declare-fun m!513201 () Bool)

(assert (=> start!48602 m!513201))

(declare-fun m!513203 () Bool)

(assert (=> start!48602 m!513203))

(declare-fun m!513205 () Bool)

(assert (=> b!533303 m!513205))

(declare-fun m!513207 () Bool)

(assert (=> b!533301 m!513207))

(assert (=> b!533301 m!513207))

(declare-fun m!513209 () Bool)

(assert (=> b!533301 m!513209))

(assert (=> b!533309 m!513207))

(assert (=> b!533309 m!513207))

(declare-fun m!513211 () Bool)

(assert (=> b!533309 m!513211))

(declare-fun m!513213 () Bool)

(assert (=> b!533304 m!513213))

(assert (=> b!533304 m!513207))

(declare-fun m!513215 () Bool)

(assert (=> b!533308 m!513215))

(declare-fun m!513217 () Bool)

(assert (=> b!533307 m!513217))

(declare-fun m!513219 () Bool)

(assert (=> b!533305 m!513219))

(declare-fun m!513221 () Bool)

(assert (=> b!533302 m!513221))

(push 1)

(assert (not b!533308))

(assert (not b!533309))

(assert (not b!533303))

(assert (not b!533307))

(assert (not b!533305))

(assert (not start!48602))

(assert (not b!533301))

(assert (not b!533302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

