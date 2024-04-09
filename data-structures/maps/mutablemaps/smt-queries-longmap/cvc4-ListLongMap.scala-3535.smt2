; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48800 () Bool)

(assert start!48800)

(declare-fun b!536573 () Bool)

(declare-fun res!331934 () Bool)

(declare-fun e!311436 () Bool)

(assert (=> b!536573 (=> (not res!331934) (not e!311436))))

(declare-datatypes ((array!33968 0))(
  ( (array!33969 (arr!16319 (Array (_ BitVec 32) (_ BitVec 64))) (size!16683 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33968)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!536573 (= res!331934 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!536574 () Bool)

(declare-fun e!311433 () Bool)

(assert (=> b!536574 (= e!311433 false)))

(declare-datatypes ((SeekEntryResult!4784 0))(
  ( (MissingZero!4784 (index!21360 (_ BitVec 32))) (Found!4784 (index!21361 (_ BitVec 32))) (Intermediate!4784 (undefined!5596 Bool) (index!21362 (_ BitVec 32)) (x!50322 (_ BitVec 32))) (Undefined!4784) (MissingVacant!4784 (index!21363 (_ BitVec 32))) )
))
(declare-fun lt!246160 () SeekEntryResult!4784)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!246158 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33968 (_ BitVec 32)) SeekEntryResult!4784)

(assert (=> b!536574 (= lt!246160 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!246158 (select (arr!16319 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536575 () Bool)

(declare-fun res!331939 () Bool)

(declare-fun e!311435 () Bool)

(assert (=> b!536575 (=> (not res!331939) (not e!311435))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!536575 (= res!331939 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16683 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16683 a!3154)) (= (select (arr!16319 a!3154) resIndex!32) (select (arr!16319 a!3154) j!147))))))

(declare-fun b!536576 () Bool)

(declare-fun res!331929 () Bool)

(assert (=> b!536576 (=> (not res!331929) (not e!311435))))

(declare-datatypes ((List!10491 0))(
  ( (Nil!10488) (Cons!10487 (h!11430 (_ BitVec 64)) (t!16727 List!10491)) )
))
(declare-fun arrayNoDuplicates!0 (array!33968 (_ BitVec 32) List!10491) Bool)

(assert (=> b!536576 (= res!331929 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10488))))

(declare-fun b!536577 () Bool)

(declare-fun res!331928 () Bool)

(assert (=> b!536577 (=> (not res!331928) (not e!311436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!536577 (= res!331928 (validKeyInArray!0 k!1998))))

(declare-fun b!536578 () Bool)

(declare-fun res!331937 () Bool)

(assert (=> b!536578 (=> (not res!331937) (not e!311436))))

(assert (=> b!536578 (= res!331937 (validKeyInArray!0 (select (arr!16319 a!3154) j!147)))))

(declare-fun b!536579 () Bool)

(declare-fun res!331935 () Bool)

(assert (=> b!536579 (=> (not res!331935) (not e!311435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33968 (_ BitVec 32)) Bool)

(assert (=> b!536579 (= res!331935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!536580 () Bool)

(declare-fun res!331940 () Bool)

(assert (=> b!536580 (=> (not res!331940) (not e!311436))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!536580 (= res!331940 (and (= (size!16683 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16683 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16683 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!536582 () Bool)

(declare-fun res!331936 () Bool)

(declare-fun e!311434 () Bool)

(assert (=> b!536582 (=> (not res!331936) (not e!311434))))

(assert (=> b!536582 (= res!331936 (and (not (= (select (arr!16319 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16319 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16319 a!3154) index!1177) (select (arr!16319 a!3154) j!147)))))))

(declare-fun b!536583 () Bool)

(assert (=> b!536583 (= e!311434 e!311433)))

(declare-fun res!331930 () Bool)

(assert (=> b!536583 (=> (not res!331930) (not e!311433))))

(assert (=> b!536583 (= res!331930 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!246158 #b00000000000000000000000000000000) (bvslt lt!246158 (size!16683 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536583 (= lt!246158 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!536584 () Bool)

(assert (=> b!536584 (= e!311436 e!311435)))

(declare-fun res!331931 () Bool)

(assert (=> b!536584 (=> (not res!331931) (not e!311435))))

(declare-fun lt!246159 () SeekEntryResult!4784)

(assert (=> b!536584 (= res!331931 (or (= lt!246159 (MissingZero!4784 i!1153)) (= lt!246159 (MissingVacant!4784 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33968 (_ BitVec 32)) SeekEntryResult!4784)

(assert (=> b!536584 (= lt!246159 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!536585 () Bool)

(assert (=> b!536585 (= e!311435 e!311434)))

(declare-fun res!331933 () Bool)

(assert (=> b!536585 (=> (not res!331933) (not e!311434))))

(declare-fun lt!246161 () SeekEntryResult!4784)

(assert (=> b!536585 (= res!331933 (= lt!246161 (Intermediate!4784 false resIndex!32 resX!32)))))

(assert (=> b!536585 (= lt!246161 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16319 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!536581 () Bool)

(declare-fun res!331938 () Bool)

(assert (=> b!536581 (=> (not res!331938) (not e!311434))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!536581 (= res!331938 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16319 a!3154) j!147) mask!3216) (select (arr!16319 a!3154) j!147) a!3154 mask!3216) lt!246161))))

(declare-fun res!331932 () Bool)

(assert (=> start!48800 (=> (not res!331932) (not e!311436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48800 (= res!331932 (validMask!0 mask!3216))))

(assert (=> start!48800 e!311436))

(assert (=> start!48800 true))

(declare-fun array_inv!12093 (array!33968) Bool)

(assert (=> start!48800 (array_inv!12093 a!3154)))

(assert (= (and start!48800 res!331932) b!536580))

(assert (= (and b!536580 res!331940) b!536578))

(assert (= (and b!536578 res!331937) b!536577))

(assert (= (and b!536577 res!331928) b!536573))

(assert (= (and b!536573 res!331934) b!536584))

(assert (= (and b!536584 res!331931) b!536579))

(assert (= (and b!536579 res!331935) b!536576))

(assert (= (and b!536576 res!331929) b!536575))

(assert (= (and b!536575 res!331939) b!536585))

(assert (= (and b!536585 res!331933) b!536581))

(assert (= (and b!536581 res!331938) b!536582))

(assert (= (and b!536582 res!331936) b!536583))

(assert (= (and b!536583 res!331930) b!536574))

(declare-fun m!515963 () Bool)

(assert (=> b!536582 m!515963))

(declare-fun m!515965 () Bool)

(assert (=> b!536582 m!515965))

(declare-fun m!515967 () Bool)

(assert (=> b!536577 m!515967))

(declare-fun m!515969 () Bool)

(assert (=> b!536584 m!515969))

(declare-fun m!515971 () Bool)

(assert (=> b!536576 m!515971))

(assert (=> b!536578 m!515965))

(assert (=> b!536578 m!515965))

(declare-fun m!515973 () Bool)

(assert (=> b!536578 m!515973))

(assert (=> b!536581 m!515965))

(assert (=> b!536581 m!515965))

(declare-fun m!515975 () Bool)

(assert (=> b!536581 m!515975))

(assert (=> b!536581 m!515975))

(assert (=> b!536581 m!515965))

(declare-fun m!515977 () Bool)

(assert (=> b!536581 m!515977))

(declare-fun m!515979 () Bool)

(assert (=> b!536579 m!515979))

(declare-fun m!515981 () Bool)

(assert (=> b!536575 m!515981))

(assert (=> b!536575 m!515965))

(assert (=> b!536585 m!515965))

(assert (=> b!536585 m!515965))

(declare-fun m!515983 () Bool)

(assert (=> b!536585 m!515983))

(declare-fun m!515985 () Bool)

(assert (=> start!48800 m!515985))

(declare-fun m!515987 () Bool)

(assert (=> start!48800 m!515987))

(declare-fun m!515989 () Bool)

(assert (=> b!536583 m!515989))

(declare-fun m!515991 () Bool)

(assert (=> b!536573 m!515991))

(assert (=> b!536574 m!515965))

(assert (=> b!536574 m!515965))

(declare-fun m!515993 () Bool)

(assert (=> b!536574 m!515993))

(push 1)

(assert (not b!536573))

(assert (not b!536581))

(assert (not b!536574))

(assert (not b!536579))

(assert (not b!536583))

(assert (not b!536578))

(assert (not b!536576))

(assert (not b!536584))

(assert (not b!536585))

