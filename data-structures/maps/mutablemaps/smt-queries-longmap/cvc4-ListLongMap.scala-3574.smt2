; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49142 () Bool)

(assert start!49142)

(declare-fun b!541031 () Bool)

(declare-fun res!336068 () Bool)

(declare-fun e!313293 () Bool)

(assert (=> b!541031 (=> (not res!336068) (not e!313293))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!541031 (= res!336068 (validKeyInArray!0 k!1998))))

(declare-fun res!336073 () Bool)

(assert (=> start!49142 (=> (not res!336073) (not e!313293))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49142 (= res!336073 (validMask!0 mask!3216))))

(assert (=> start!49142 e!313293))

(assert (=> start!49142 true))

(declare-datatypes ((array!34208 0))(
  ( (array!34209 (arr!16436 (Array (_ BitVec 32) (_ BitVec 64))) (size!16800 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34208)

(declare-fun array_inv!12210 (array!34208) Bool)

(assert (=> start!49142 (array_inv!12210 a!3154)))

(declare-fun b!541032 () Bool)

(declare-fun res!336074 () Bool)

(declare-fun e!313294 () Bool)

(assert (=> b!541032 (=> (not res!336074) (not e!313294))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!541032 (= res!336074 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16800 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16800 a!3154)) (= (select (arr!16436 a!3154) resIndex!32) (select (arr!16436 a!3154) j!147))))))

(declare-fun b!541033 () Bool)

(declare-fun res!336069 () Bool)

(assert (=> b!541033 (=> (not res!336069) (not e!313293))))

(declare-fun arrayContainsKey!0 (array!34208 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!541033 (= res!336069 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!541034 () Bool)

(declare-fun res!336070 () Bool)

(assert (=> b!541034 (=> (not res!336070) (not e!313294))))

(declare-datatypes ((List!10608 0))(
  ( (Nil!10605) (Cons!10604 (h!11553 (_ BitVec 64)) (t!16844 List!10608)) )
))
(declare-fun arrayNoDuplicates!0 (array!34208 (_ BitVec 32) List!10608) Bool)

(assert (=> b!541034 (= res!336070 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10605))))

(declare-fun b!541035 () Bool)

(declare-fun res!336075 () Bool)

(assert (=> b!541035 (=> (not res!336075) (not e!313293))))

(assert (=> b!541035 (= res!336075 (validKeyInArray!0 (select (arr!16436 a!3154) j!147)))))

(declare-fun b!541036 () Bool)

(declare-fun res!336072 () Bool)

(assert (=> b!541036 (=> (not res!336072) (not e!313294))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34208 (_ BitVec 32)) Bool)

(assert (=> b!541036 (= res!336072 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!541037 () Bool)

(assert (=> b!541037 (= e!313293 e!313294)))

(declare-fun res!336076 () Bool)

(assert (=> b!541037 (=> (not res!336076) (not e!313294))))

(declare-datatypes ((SeekEntryResult!4901 0))(
  ( (MissingZero!4901 (index!21828 (_ BitVec 32))) (Found!4901 (index!21829 (_ BitVec 32))) (Intermediate!4901 (undefined!5713 Bool) (index!21830 (_ BitVec 32)) (x!50763 (_ BitVec 32))) (Undefined!4901) (MissingVacant!4901 (index!21831 (_ BitVec 32))) )
))
(declare-fun lt!247540 () SeekEntryResult!4901)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!541037 (= res!336076 (or (= lt!247540 (MissingZero!4901 i!1153)) (= lt!247540 (MissingVacant!4901 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34208 (_ BitVec 32)) SeekEntryResult!4901)

(assert (=> b!541037 (= lt!247540 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!541038 () Bool)

(assert (=> b!541038 (= e!313294 false)))

(declare-fun lt!247541 () SeekEntryResult!4901)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34208 (_ BitVec 32)) SeekEntryResult!4901)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!541038 (= lt!247541 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16436 a!3154) j!147) mask!3216) (select (arr!16436 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!541039 () Bool)

(declare-fun res!336077 () Bool)

(assert (=> b!541039 (=> (not res!336077) (not e!313293))))

(assert (=> b!541039 (= res!336077 (and (= (size!16800 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16800 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16800 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!541040 () Bool)

(declare-fun res!336071 () Bool)

(assert (=> b!541040 (=> (not res!336071) (not e!313294))))

(assert (=> b!541040 (= res!336071 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16436 a!3154) j!147) a!3154 mask!3216) (Intermediate!4901 false resIndex!32 resX!32)))))

(assert (= (and start!49142 res!336073) b!541039))

(assert (= (and b!541039 res!336077) b!541035))

(assert (= (and b!541035 res!336075) b!541031))

(assert (= (and b!541031 res!336068) b!541033))

(assert (= (and b!541033 res!336069) b!541037))

(assert (= (and b!541037 res!336076) b!541036))

(assert (= (and b!541036 res!336072) b!541034))

(assert (= (and b!541034 res!336070) b!541032))

(assert (= (and b!541032 res!336074) b!541040))

(assert (= (and b!541040 res!336071) b!541038))

(declare-fun m!519671 () Bool)

(assert (=> start!49142 m!519671))

(declare-fun m!519673 () Bool)

(assert (=> start!49142 m!519673))

(declare-fun m!519675 () Bool)

(assert (=> b!541034 m!519675))

(declare-fun m!519677 () Bool)

(assert (=> b!541036 m!519677))

(declare-fun m!519679 () Bool)

(assert (=> b!541040 m!519679))

(assert (=> b!541040 m!519679))

(declare-fun m!519681 () Bool)

(assert (=> b!541040 m!519681))

(declare-fun m!519683 () Bool)

(assert (=> b!541032 m!519683))

(assert (=> b!541032 m!519679))

(assert (=> b!541038 m!519679))

(assert (=> b!541038 m!519679))

(declare-fun m!519685 () Bool)

(assert (=> b!541038 m!519685))

(assert (=> b!541038 m!519685))

(assert (=> b!541038 m!519679))

(declare-fun m!519687 () Bool)

(assert (=> b!541038 m!519687))

(declare-fun m!519689 () Bool)

(assert (=> b!541037 m!519689))

(declare-fun m!519691 () Bool)

(assert (=> b!541031 m!519691))

(assert (=> b!541035 m!519679))

(assert (=> b!541035 m!519679))

(declare-fun m!519693 () Bool)

(assert (=> b!541035 m!519693))

(declare-fun m!519695 () Bool)

(assert (=> b!541033 m!519695))

(push 1)

(assert (not b!541035))

(assert (not start!49142))

