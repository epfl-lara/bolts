; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48718 () Bool)

(assert start!48718)

(declare-fun b!535062 () Bool)

(declare-fun res!330421 () Bool)

(declare-fun e!310870 () Bool)

(assert (=> b!535062 (=> (not res!330421) (not e!310870))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33886 0))(
  ( (array!33887 (arr!16278 (Array (_ BitVec 32) (_ BitVec 64))) (size!16642 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33886)

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!535062 (= res!330421 (and (not (= (select (arr!16278 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16278 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16278 a!3154) index!1177) (select (arr!16278 a!3154) j!147)) (= index!1177 resIndex!32) (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsle x!1030 #b01111111111111111111111111111110)))))

(declare-fun res!330417 () Bool)

(declare-fun e!310872 () Bool)

(assert (=> start!48718 (=> (not res!330417) (not e!310872))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48718 (= res!330417 (validMask!0 mask!3216))))

(assert (=> start!48718 e!310872))

(assert (=> start!48718 true))

(declare-fun array_inv!12052 (array!33886) Bool)

(assert (=> start!48718 (array_inv!12052 a!3154)))

(declare-fun b!535063 () Bool)

(declare-fun res!330427 () Bool)

(assert (=> b!535063 (=> (not res!330427) (not e!310872))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535063 (= res!330427 (validKeyInArray!0 k!1998))))

(declare-fun b!535064 () Bool)

(declare-fun res!330422 () Bool)

(assert (=> b!535064 (=> (not res!330422) (not e!310872))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535064 (= res!330422 (and (= (size!16642 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16642 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16642 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535065 () Bool)

(declare-fun res!330418 () Bool)

(assert (=> b!535065 (=> (not res!330418) (not e!310872))))

(assert (=> b!535065 (= res!330418 (validKeyInArray!0 (select (arr!16278 a!3154) j!147)))))

(declare-fun b!535066 () Bool)

(declare-fun res!330428 () Bool)

(declare-fun e!310871 () Bool)

(assert (=> b!535066 (=> (not res!330428) (not e!310871))))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535066 (= res!330428 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16642 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16642 a!3154)) (= (select (arr!16278 a!3154) resIndex!32) (select (arr!16278 a!3154) j!147))))))

(declare-fun b!535067 () Bool)

(declare-fun res!330419 () Bool)

(assert (=> b!535067 (=> (not res!330419) (not e!310872))))

(declare-fun arrayContainsKey!0 (array!33886 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535067 (= res!330419 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535068 () Bool)

(assert (=> b!535068 (= e!310872 e!310871)))

(declare-fun res!330423 () Bool)

(assert (=> b!535068 (=> (not res!330423) (not e!310871))))

(declare-datatypes ((SeekEntryResult!4743 0))(
  ( (MissingZero!4743 (index!21196 (_ BitVec 32))) (Found!4743 (index!21197 (_ BitVec 32))) (Intermediate!4743 (undefined!5555 Bool) (index!21198 (_ BitVec 32)) (x!50177 (_ BitVec 32))) (Undefined!4743) (MissingVacant!4743 (index!21199 (_ BitVec 32))) )
))
(declare-fun lt!245752 () SeekEntryResult!4743)

(assert (=> b!535068 (= res!330423 (or (= lt!245752 (MissingZero!4743 i!1153)) (= lt!245752 (MissingVacant!4743 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33886 (_ BitVec 32)) SeekEntryResult!4743)

(assert (=> b!535068 (= lt!245752 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535069 () Bool)

(assert (=> b!535069 (= e!310871 e!310870)))

(declare-fun res!330425 () Bool)

(assert (=> b!535069 (=> (not res!330425) (not e!310870))))

(declare-fun lt!245753 () SeekEntryResult!4743)

(assert (=> b!535069 (= res!330425 (= lt!245753 (Intermediate!4743 false resIndex!32 resX!32)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33886 (_ BitVec 32)) SeekEntryResult!4743)

(assert (=> b!535069 (= lt!245753 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16278 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535070 () Bool)

(declare-fun res!330420 () Bool)

(assert (=> b!535070 (=> (not res!330420) (not e!310871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33886 (_ BitVec 32)) Bool)

(assert (=> b!535070 (= res!330420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535071 () Bool)

(assert (=> b!535071 (= e!310870 (not (validKeyInArray!0 (select (store (arr!16278 a!3154) i!1153 k!1998) j!147))))))

(declare-fun b!535072 () Bool)

(declare-fun res!330426 () Bool)

(assert (=> b!535072 (=> (not res!330426) (not e!310871))))

(declare-datatypes ((List!10450 0))(
  ( (Nil!10447) (Cons!10446 (h!11389 (_ BitVec 64)) (t!16686 List!10450)) )
))
(declare-fun arrayNoDuplicates!0 (array!33886 (_ BitVec 32) List!10450) Bool)

(assert (=> b!535072 (= res!330426 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10447))))

(declare-fun b!535073 () Bool)

(declare-fun res!330424 () Bool)

(assert (=> b!535073 (=> (not res!330424) (not e!310870))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535073 (= res!330424 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16278 a!3154) j!147) mask!3216) (select (arr!16278 a!3154) j!147) a!3154 mask!3216) lt!245753))))

(assert (= (and start!48718 res!330417) b!535064))

(assert (= (and b!535064 res!330422) b!535065))

(assert (= (and b!535065 res!330418) b!535063))

(assert (= (and b!535063 res!330427) b!535067))

(assert (= (and b!535067 res!330419) b!535068))

(assert (= (and b!535068 res!330423) b!535070))

(assert (= (and b!535070 res!330420) b!535072))

(assert (= (and b!535072 res!330426) b!535066))

(assert (= (and b!535066 res!330428) b!535069))

(assert (= (and b!535069 res!330425) b!535073))

(assert (= (and b!535073 res!330424) b!535062))

(assert (= (and b!535062 res!330421) b!535071))

(declare-fun m!514699 () Bool)

(assert (=> b!535073 m!514699))

(assert (=> b!535073 m!514699))

(declare-fun m!514701 () Bool)

(assert (=> b!535073 m!514701))

(assert (=> b!535073 m!514701))

(assert (=> b!535073 m!514699))

(declare-fun m!514703 () Bool)

(assert (=> b!535073 m!514703))

(declare-fun m!514705 () Bool)

(assert (=> b!535062 m!514705))

(assert (=> b!535062 m!514699))

(declare-fun m!514707 () Bool)

(assert (=> b!535071 m!514707))

(declare-fun m!514709 () Bool)

(assert (=> b!535071 m!514709))

(assert (=> b!535071 m!514709))

(declare-fun m!514711 () Bool)

(assert (=> b!535071 m!514711))

(declare-fun m!514713 () Bool)

(assert (=> b!535068 m!514713))

(assert (=> b!535069 m!514699))

(assert (=> b!535069 m!514699))

(declare-fun m!514715 () Bool)

(assert (=> b!535069 m!514715))

(declare-fun m!514717 () Bool)

(assert (=> b!535072 m!514717))

(declare-fun m!514719 () Bool)

(assert (=> b!535067 m!514719))

(declare-fun m!514721 () Bool)

(assert (=> b!535070 m!514721))

(declare-fun m!514723 () Bool)

(assert (=> b!535063 m!514723))

(declare-fun m!514725 () Bool)

(assert (=> b!535066 m!514725))

(assert (=> b!535066 m!514699))

(assert (=> b!535065 m!514699))

(assert (=> b!535065 m!514699))

(declare-fun m!514727 () Bool)

(assert (=> b!535065 m!514727))

(declare-fun m!514729 () Bool)

(assert (=> start!48718 m!514729))

(declare-fun m!514731 () Bool)

(assert (=> start!48718 m!514731))

(push 1)

