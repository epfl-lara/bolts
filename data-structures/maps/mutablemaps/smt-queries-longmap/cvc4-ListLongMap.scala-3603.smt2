; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49628 () Bool)

(assert start!49628)

(declare-fun b!545693 () Bool)

(declare-fun e!315408 () Bool)

(declare-fun e!315411 () Bool)

(assert (=> b!545693 (= e!315408 e!315411)))

(declare-fun res!339782 () Bool)

(assert (=> b!545693 (=> (not res!339782) (not e!315411))))

(declare-datatypes ((SeekEntryResult!4988 0))(
  ( (MissingZero!4988 (index!22176 (_ BitVec 32))) (Found!4988 (index!22177 (_ BitVec 32))) (Intermediate!4988 (undefined!5800 Bool) (index!22178 (_ BitVec 32)) (x!51127 (_ BitVec 32))) (Undefined!4988) (MissingVacant!4988 (index!22179 (_ BitVec 32))) )
))
(declare-fun lt!249018 () SeekEntryResult!4988)

(declare-fun lt!249017 () SeekEntryResult!4988)

(declare-fun lt!249019 () SeekEntryResult!4988)

(assert (=> b!545693 (= res!339782 (and (= lt!249017 lt!249019) (= lt!249018 lt!249017)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34397 0))(
  ( (array!34398 (arr!16523 (Array (_ BitVec 32) (_ BitVec 64))) (size!16887 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34397)

(declare-fun lt!249020 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34397 (_ BitVec 32)) SeekEntryResult!4988)

(assert (=> b!545693 (= lt!249017 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249020 (select (arr!16523 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545694 () Bool)

(declare-fun e!315407 () Bool)

(declare-fun e!315409 () Bool)

(assert (=> b!545694 (= e!315407 e!315409)))

(declare-fun res!339781 () Bool)

(assert (=> b!545694 (=> (not res!339781) (not e!315409))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun lt!249023 () SeekEntryResult!4988)

(assert (=> b!545694 (= res!339781 (and (= lt!249018 lt!249023) (not (= (select (arr!16523 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16523 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16523 a!3154) index!1177) (select (arr!16523 a!3154) j!147)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545694 (= lt!249018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16523 a!3154) j!147) mask!3216) (select (arr!16523 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545695 () Bool)

(declare-fun res!339775 () Bool)

(declare-fun e!315412 () Bool)

(assert (=> b!545695 (=> (not res!339775) (not e!315412))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!545695 (= res!339775 (and (= (size!16887 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16887 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16887 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!545696 () Bool)

(declare-fun e!315410 () Bool)

(assert (=> b!545696 (= e!315412 e!315410)))

(declare-fun res!339773 () Bool)

(assert (=> b!545696 (=> (not res!339773) (not e!315410))))

(declare-fun lt!249022 () SeekEntryResult!4988)

(assert (=> b!545696 (= res!339773 (or (= lt!249022 (MissingZero!4988 i!1153)) (= lt!249022 (MissingVacant!4988 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34397 (_ BitVec 32)) SeekEntryResult!4988)

(assert (=> b!545696 (= lt!249022 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!545697 () Bool)

(declare-fun res!339772 () Bool)

(assert (=> b!545697 (=> (not res!339772) (not e!315412))))

(declare-fun arrayContainsKey!0 (array!34397 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!545697 (= res!339772 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!545698 () Bool)

(assert (=> b!545698 (= e!315409 e!315408)))

(declare-fun res!339779 () Bool)

(assert (=> b!545698 (=> (not res!339779) (not e!315408))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!545698 (= res!339779 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!249020 #b00000000000000000000000000000000) (bvslt lt!249020 (size!16887 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!545698 (= lt!249020 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!339770 () Bool)

(assert (=> start!49628 (=> (not res!339770) (not e!315412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49628 (= res!339770 (validMask!0 mask!3216))))

(assert (=> start!49628 e!315412))

(assert (=> start!49628 true))

(declare-fun array_inv!12297 (array!34397) Bool)

(assert (=> start!49628 (array_inv!12297 a!3154)))

(declare-fun b!545699 () Bool)

(declare-fun res!339771 () Bool)

(assert (=> b!545699 (=> (not res!339771) (not e!315412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!545699 (= res!339771 (validKeyInArray!0 (select (arr!16523 a!3154) j!147)))))

(declare-fun b!545700 () Bool)

(assert (=> b!545700 (= e!315410 e!315407)))

(declare-fun res!339776 () Bool)

(assert (=> b!545700 (=> (not res!339776) (not e!315407))))

(assert (=> b!545700 (= res!339776 (= lt!249023 lt!249019))))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!545700 (= lt!249019 (Intermediate!4988 false resIndex!32 resX!32))))

(assert (=> b!545700 (= lt!249023 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16523 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!545701 () Bool)

(declare-fun res!339778 () Bool)

(assert (=> b!545701 (=> (not res!339778) (not e!315410))))

(assert (=> b!545701 (= res!339778 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16887 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16887 a!3154)) (= (select (arr!16523 a!3154) resIndex!32) (select (arr!16523 a!3154) j!147))))))

(declare-fun b!545702 () Bool)

(declare-fun res!339777 () Bool)

(assert (=> b!545702 (=> (not res!339777) (not e!315410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34397 (_ BitVec 32)) Bool)

(assert (=> b!545702 (= res!339777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!545703 () Bool)

(assert (=> b!545703 (= e!315411 (not true))))

(assert (=> b!545703 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!249020 (select (store (arr!16523 a!3154) i!1153 k!1998) j!147) (array!34398 (store (arr!16523 a!3154) i!1153 k!1998) (size!16887 a!3154)) mask!3216) lt!249019)))

(declare-datatypes ((Unit!16908 0))(
  ( (Unit!16909) )
))
(declare-fun lt!249021 () Unit!16908)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!34397 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16908)

(assert (=> b!545703 (= lt!249021 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3154 i!1153 k!1998 j!147 lt!249020 (bvadd #b00000000000000000000000000000001 x!1030) resIndex!32 resX!32 mask!3216))))

(declare-fun b!545704 () Bool)

(declare-fun res!339774 () Bool)

(assert (=> b!545704 (=> (not res!339774) (not e!315410))))

(declare-datatypes ((List!10695 0))(
  ( (Nil!10692) (Cons!10691 (h!11655 (_ BitVec 64)) (t!16931 List!10695)) )
))
(declare-fun arrayNoDuplicates!0 (array!34397 (_ BitVec 32) List!10695) Bool)

(assert (=> b!545704 (= res!339774 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10692))))

(declare-fun b!545705 () Bool)

(declare-fun res!339780 () Bool)

(assert (=> b!545705 (=> (not res!339780) (not e!315412))))

(assert (=> b!545705 (= res!339780 (validKeyInArray!0 k!1998))))

(assert (= (and start!49628 res!339770) b!545695))

(assert (= (and b!545695 res!339775) b!545699))

(assert (= (and b!545699 res!339771) b!545705))

(assert (= (and b!545705 res!339780) b!545697))

(assert (= (and b!545697 res!339772) b!545696))

(assert (= (and b!545696 res!339773) b!545702))

(assert (= (and b!545702 res!339777) b!545704))

(assert (= (and b!545704 res!339774) b!545701))

(assert (= (and b!545701 res!339778) b!545700))

(assert (= (and b!545700 res!339776) b!545694))

(assert (= (and b!545694 res!339781) b!545698))

(assert (= (and b!545698 res!339779) b!545693))

(assert (= (and b!545693 res!339782) b!545703))

(declare-fun m!523275 () Bool)

(assert (=> start!49628 m!523275))

(declare-fun m!523277 () Bool)

(assert (=> start!49628 m!523277))

(declare-fun m!523279 () Bool)

(assert (=> b!545700 m!523279))

(assert (=> b!545700 m!523279))

(declare-fun m!523281 () Bool)

(assert (=> b!545700 m!523281))

(declare-fun m!523283 () Bool)

(assert (=> b!545697 m!523283))

(declare-fun m!523285 () Bool)

(assert (=> b!545702 m!523285))

(declare-fun m!523287 () Bool)

(assert (=> b!545696 m!523287))

(assert (=> b!545699 m!523279))

(assert (=> b!545699 m!523279))

(declare-fun m!523289 () Bool)

(assert (=> b!545699 m!523289))

(declare-fun m!523291 () Bool)

(assert (=> b!545705 m!523291))

(declare-fun m!523293 () Bool)

(assert (=> b!545698 m!523293))

(assert (=> b!545693 m!523279))

(assert (=> b!545693 m!523279))

(declare-fun m!523295 () Bool)

(assert (=> b!545693 m!523295))

(declare-fun m!523297 () Bool)

(assert (=> b!545703 m!523297))

(declare-fun m!523299 () Bool)

(assert (=> b!545703 m!523299))

(assert (=> b!545703 m!523299))

(declare-fun m!523301 () Bool)

(assert (=> b!545703 m!523301))

(declare-fun m!523303 () Bool)

(assert (=> b!545703 m!523303))

(declare-fun m!523305 () Bool)

(assert (=> b!545694 m!523305))

(assert (=> b!545694 m!523279))

(assert (=> b!545694 m!523279))

(declare-fun m!523307 () Bool)

(assert (=> b!545694 m!523307))

(assert (=> b!545694 m!523307))

(assert (=> b!545694 m!523279))

(declare-fun m!523309 () Bool)

(assert (=> b!545694 m!523309))

(declare-fun m!523311 () Bool)

(assert (=> b!545701 m!523311))

(assert (=> b!545701 m!523279))

(declare-fun m!523313 () Bool)

(assert (=> b!545704 m!523313))

(push 1)

(assert (not b!545699))

(assert (not b!545698))

(assert (not b!545696))

(assert (not b!545703))

(assert (not b!545693))

(assert (not b!545704))

(assert (not b!545697))

(assert (not b!545700))

(assert (not b!545702))

(assert (not b!545705))

(assert (not start!49628))

(assert (not b!545694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

