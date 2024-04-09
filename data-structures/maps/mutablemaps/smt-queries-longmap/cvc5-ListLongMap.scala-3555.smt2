; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48916 () Bool)

(assert start!48916)

(declare-fun b!538778 () Bool)

(declare-fun e!312398 () Bool)

(assert (=> b!538778 (= e!312398 false)))

(declare-fun lt!246994 () Bool)

(declare-datatypes ((array!34084 0))(
  ( (array!34085 (arr!16377 (Array (_ BitVec 32) (_ BitVec 64))) (size!16741 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34084)

(declare-datatypes ((List!10549 0))(
  ( (Nil!10546) (Cons!10545 (h!11488 (_ BitVec 64)) (t!16785 List!10549)) )
))
(declare-fun arrayNoDuplicates!0 (array!34084 (_ BitVec 32) List!10549) Bool)

(assert (=> b!538778 (= lt!246994 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10546))))

(declare-fun b!538779 () Bool)

(declare-fun res!334134 () Bool)

(declare-fun e!312399 () Bool)

(assert (=> b!538779 (=> (not res!334134) (not e!312399))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538779 (= res!334134 (validKeyInArray!0 k!1998))))

(declare-fun b!538780 () Bool)

(declare-fun res!334138 () Bool)

(assert (=> b!538780 (=> (not res!334138) (not e!312399))))

(declare-fun arrayContainsKey!0 (array!34084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538780 (= res!334138 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538781 () Bool)

(assert (=> b!538781 (= e!312399 e!312398)))

(declare-fun res!334139 () Bool)

(assert (=> b!538781 (=> (not res!334139) (not e!312398))))

(declare-datatypes ((SeekEntryResult!4842 0))(
  ( (MissingZero!4842 (index!21592 (_ BitVec 32))) (Found!4842 (index!21593 (_ BitVec 32))) (Intermediate!4842 (undefined!5654 Bool) (index!21594 (_ BitVec 32)) (x!50540 (_ BitVec 32))) (Undefined!4842) (MissingVacant!4842 (index!21595 (_ BitVec 32))) )
))
(declare-fun lt!246995 () SeekEntryResult!4842)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538781 (= res!334139 (or (= lt!246995 (MissingZero!4842 i!1153)) (= lt!246995 (MissingVacant!4842 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34084 (_ BitVec 32)) SeekEntryResult!4842)

(assert (=> b!538781 (= lt!246995 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!538783 () Bool)

(declare-fun res!334135 () Bool)

(assert (=> b!538783 (=> (not res!334135) (not e!312399))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!538783 (= res!334135 (validKeyInArray!0 (select (arr!16377 a!3154) j!147)))))

(declare-fun b!538784 () Bool)

(declare-fun res!334133 () Bool)

(assert (=> b!538784 (=> (not res!334133) (not e!312398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34084 (_ BitVec 32)) Bool)

(assert (=> b!538784 (= res!334133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!334137 () Bool)

(assert (=> start!48916 (=> (not res!334137) (not e!312399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48916 (= res!334137 (validMask!0 mask!3216))))

(assert (=> start!48916 e!312399))

(assert (=> start!48916 true))

(declare-fun array_inv!12151 (array!34084) Bool)

(assert (=> start!48916 (array_inv!12151 a!3154)))

(declare-fun b!538782 () Bool)

(declare-fun res!334136 () Bool)

(assert (=> b!538782 (=> (not res!334136) (not e!312399))))

(assert (=> b!538782 (= res!334136 (and (= (size!16741 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16741 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16741 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48916 res!334137) b!538782))

(assert (= (and b!538782 res!334136) b!538783))

(assert (= (and b!538783 res!334135) b!538779))

(assert (= (and b!538779 res!334134) b!538780))

(assert (= (and b!538780 res!334138) b!538781))

(assert (= (and b!538781 res!334139) b!538784))

(assert (= (and b!538784 res!334133) b!538778))

(declare-fun m!517927 () Bool)

(assert (=> b!538778 m!517927))

(declare-fun m!517929 () Bool)

(assert (=> b!538783 m!517929))

(assert (=> b!538783 m!517929))

(declare-fun m!517931 () Bool)

(assert (=> b!538783 m!517931))

(declare-fun m!517933 () Bool)

(assert (=> b!538781 m!517933))

(declare-fun m!517935 () Bool)

(assert (=> start!48916 m!517935))

(declare-fun m!517937 () Bool)

(assert (=> start!48916 m!517937))

(declare-fun m!517939 () Bool)

(assert (=> b!538784 m!517939))

(declare-fun m!517941 () Bool)

(assert (=> b!538780 m!517941))

(declare-fun m!517943 () Bool)

(assert (=> b!538779 m!517943))

(push 1)

(assert (not b!538778))

(assert (not start!48916))

(assert (not b!538781))

(assert (not b!538780))

(assert (not b!538779))

(assert (not b!538783))

(assert (not b!538784))

(check-sat)

(pop 1)

