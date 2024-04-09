; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49046 () Bool)

(assert start!49046)

(declare-fun res!335329 () Bool)

(declare-fun e!312928 () Bool)

(assert (=> start!49046 (=> (not res!335329) (not e!312928))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49046 (= res!335329 (validMask!0 mask!3216))))

(assert (=> start!49046 e!312928))

(assert (=> start!49046 true))

(declare-datatypes ((array!34163 0))(
  ( (array!34164 (arr!16415 (Array (_ BitVec 32) (_ BitVec 64))) (size!16779 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34163)

(declare-fun array_inv!12189 (array!34163) Bool)

(assert (=> start!49046 (array_inv!12189 a!3154)))

(declare-fun b!540131 () Bool)

(declare-fun e!312926 () Bool)

(assert (=> b!540131 (= e!312926 false)))

(declare-datatypes ((SeekEntryResult!4880 0))(
  ( (MissingZero!4880 (index!21744 (_ BitVec 32))) (Found!4880 (index!21745 (_ BitVec 32))) (Intermediate!4880 (undefined!5692 Bool) (index!21746 (_ BitVec 32)) (x!50680 (_ BitVec 32))) (Undefined!4880) (MissingVacant!4880 (index!21747 (_ BitVec 32))) )
))
(declare-fun lt!247318 () SeekEntryResult!4880)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34163 (_ BitVec 32)) SeekEntryResult!4880)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540131 (= lt!247318 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16415 a!3154) j!147) mask!3216) (select (arr!16415 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540132 () Bool)

(assert (=> b!540132 (= e!312928 e!312926)))

(declare-fun res!335335 () Bool)

(assert (=> b!540132 (=> (not res!335335) (not e!312926))))

(declare-fun lt!247319 () SeekEntryResult!4880)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540132 (= res!335335 (or (= lt!247319 (MissingZero!4880 i!1153)) (= lt!247319 (MissingVacant!4880 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34163 (_ BitVec 32)) SeekEntryResult!4880)

(assert (=> b!540132 (= lt!247319 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540133 () Bool)

(declare-fun res!335327 () Bool)

(assert (=> b!540133 (=> (not res!335327) (not e!312928))))

(declare-fun arrayContainsKey!0 (array!34163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540133 (= res!335327 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540134 () Bool)

(declare-fun res!335332 () Bool)

(assert (=> b!540134 (=> (not res!335332) (not e!312928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540134 (= res!335332 (validKeyInArray!0 (select (arr!16415 a!3154) j!147)))))

(declare-fun b!540135 () Bool)

(declare-fun res!335330 () Bool)

(assert (=> b!540135 (=> (not res!335330) (not e!312928))))

(assert (=> b!540135 (= res!335330 (validKeyInArray!0 k!1998))))

(declare-fun b!540136 () Bool)

(declare-fun res!335328 () Bool)

(assert (=> b!540136 (=> (not res!335328) (not e!312926))))

(declare-datatypes ((List!10587 0))(
  ( (Nil!10584) (Cons!10583 (h!11529 (_ BitVec 64)) (t!16823 List!10587)) )
))
(declare-fun arrayNoDuplicates!0 (array!34163 (_ BitVec 32) List!10587) Bool)

(assert (=> b!540136 (= res!335328 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10584))))

(declare-fun b!540137 () Bool)

(declare-fun res!335333 () Bool)

(assert (=> b!540137 (=> (not res!335333) (not e!312928))))

(assert (=> b!540137 (= res!335333 (and (= (size!16779 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16779 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16779 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540138 () Bool)

(declare-fun res!335334 () Bool)

(assert (=> b!540138 (=> (not res!335334) (not e!312926))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540138 (= res!335334 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16415 a!3154) j!147) a!3154 mask!3216) (Intermediate!4880 false resIndex!32 resX!32)))))

(declare-fun b!540139 () Bool)

(declare-fun res!335336 () Bool)

(assert (=> b!540139 (=> (not res!335336) (not e!312926))))

(assert (=> b!540139 (= res!335336 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16779 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16779 a!3154)) (= (select (arr!16415 a!3154) resIndex!32) (select (arr!16415 a!3154) j!147))))))

(declare-fun b!540140 () Bool)

(declare-fun res!335331 () Bool)

(assert (=> b!540140 (=> (not res!335331) (not e!312926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34163 (_ BitVec 32)) Bool)

(assert (=> b!540140 (= res!335331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!49046 res!335329) b!540137))

(assert (= (and b!540137 res!335333) b!540134))

(assert (= (and b!540134 res!335332) b!540135))

(assert (= (and b!540135 res!335330) b!540133))

(assert (= (and b!540133 res!335327) b!540132))

(assert (= (and b!540132 res!335335) b!540140))

(assert (= (and b!540140 res!335331) b!540136))

(assert (= (and b!540136 res!335328) b!540139))

(assert (= (and b!540139 res!335336) b!540138))

(assert (= (and b!540138 res!335334) b!540131))

(declare-fun m!518981 () Bool)

(assert (=> b!540138 m!518981))

(assert (=> b!540138 m!518981))

(declare-fun m!518983 () Bool)

(assert (=> b!540138 m!518983))

(declare-fun m!518985 () Bool)

(assert (=> b!540136 m!518985))

(declare-fun m!518987 () Bool)

(assert (=> b!540133 m!518987))

(declare-fun m!518989 () Bool)

(assert (=> b!540139 m!518989))

(assert (=> b!540139 m!518981))

(assert (=> b!540131 m!518981))

(assert (=> b!540131 m!518981))

(declare-fun m!518991 () Bool)

(assert (=> b!540131 m!518991))

(assert (=> b!540131 m!518991))

(assert (=> b!540131 m!518981))

(declare-fun m!518993 () Bool)

(assert (=> b!540131 m!518993))

(declare-fun m!518995 () Bool)

(assert (=> start!49046 m!518995))

(declare-fun m!518997 () Bool)

(assert (=> start!49046 m!518997))

(declare-fun m!518999 () Bool)

(assert (=> b!540140 m!518999))

(assert (=> b!540134 m!518981))

(assert (=> b!540134 m!518981))

(declare-fun m!519001 () Bool)

(assert (=> b!540134 m!519001))

(declare-fun m!519003 () Bool)

(assert (=> b!540132 m!519003))

(declare-fun m!519005 () Bool)

(assert (=> b!540135 m!519005))

(push 1)

(assert (not start!49046))

(assert (not b!540134))

(assert (not b!540135))

(assert (not b!540132))

(assert (not b!540136))

(assert (not b!540133))

(assert (not b!540138))

