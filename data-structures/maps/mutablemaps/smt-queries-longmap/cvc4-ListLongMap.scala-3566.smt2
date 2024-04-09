; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49040 () Bool)

(assert start!49040)

(declare-fun b!540041 () Bool)

(declare-fun res!335245 () Bool)

(declare-fun e!312900 () Bool)

(assert (=> b!540041 (=> (not res!335245) (not e!312900))))

(declare-datatypes ((array!34157 0))(
  ( (array!34158 (arr!16412 (Array (_ BitVec 32) (_ BitVec 64))) (size!16776 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34157)

(declare-datatypes ((List!10584 0))(
  ( (Nil!10581) (Cons!10580 (h!11526 (_ BitVec 64)) (t!16820 List!10584)) )
))
(declare-fun arrayNoDuplicates!0 (array!34157 (_ BitVec 32) List!10584) Bool)

(assert (=> b!540041 (= res!335245 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10581))))

(declare-fun b!540042 () Bool)

(assert (=> b!540042 (= e!312900 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4877 0))(
  ( (MissingZero!4877 (index!21732 (_ BitVec 32))) (Found!4877 (index!21733 (_ BitVec 32))) (Intermediate!4877 (undefined!5689 Bool) (index!21734 (_ BitVec 32)) (x!50669 (_ BitVec 32))) (Undefined!4877) (MissingVacant!4877 (index!21735 (_ BitVec 32))) )
))
(declare-fun lt!247300 () SeekEntryResult!4877)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34157 (_ BitVec 32)) SeekEntryResult!4877)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540042 (= lt!247300 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16412 a!3154) j!147) mask!3216) (select (arr!16412 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540043 () Bool)

(declare-fun res!335241 () Bool)

(declare-fun e!312899 () Bool)

(assert (=> b!540043 (=> (not res!335241) (not e!312899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540043 (= res!335241 (validKeyInArray!0 (select (arr!16412 a!3154) j!147)))))

(declare-fun res!335240 () Bool)

(assert (=> start!49040 (=> (not res!335240) (not e!312899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49040 (= res!335240 (validMask!0 mask!3216))))

(assert (=> start!49040 e!312899))

(assert (=> start!49040 true))

(declare-fun array_inv!12186 (array!34157) Bool)

(assert (=> start!49040 (array_inv!12186 a!3154)))

(declare-fun b!540044 () Bool)

(assert (=> b!540044 (= e!312899 e!312900)))

(declare-fun res!335243 () Bool)

(assert (=> b!540044 (=> (not res!335243) (not e!312900))))

(declare-fun lt!247301 () SeekEntryResult!4877)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540044 (= res!335243 (or (= lt!247301 (MissingZero!4877 i!1153)) (= lt!247301 (MissingVacant!4877 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34157 (_ BitVec 32)) SeekEntryResult!4877)

(assert (=> b!540044 (= lt!247301 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540045 () Bool)

(declare-fun res!335246 () Bool)

(assert (=> b!540045 (=> (not res!335246) (not e!312899))))

(assert (=> b!540045 (= res!335246 (and (= (size!16776 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16776 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16776 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540046 () Bool)

(declare-fun res!335244 () Bool)

(assert (=> b!540046 (=> (not res!335244) (not e!312899))))

(declare-fun arrayContainsKey!0 (array!34157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540046 (= res!335244 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540047 () Bool)

(declare-fun res!335239 () Bool)

(assert (=> b!540047 (=> (not res!335239) (not e!312900))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540047 (= res!335239 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16412 a!3154) j!147) a!3154 mask!3216) (Intermediate!4877 false resIndex!32 resX!32)))))

(declare-fun b!540048 () Bool)

(declare-fun res!335242 () Bool)

(assert (=> b!540048 (=> (not res!335242) (not e!312899))))

(assert (=> b!540048 (= res!335242 (validKeyInArray!0 k!1998))))

(declare-fun b!540049 () Bool)

(declare-fun res!335238 () Bool)

(assert (=> b!540049 (=> (not res!335238) (not e!312900))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34157 (_ BitVec 32)) Bool)

(assert (=> b!540049 (= res!335238 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540050 () Bool)

(declare-fun res!335237 () Bool)

(assert (=> b!540050 (=> (not res!335237) (not e!312900))))

(assert (=> b!540050 (= res!335237 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16776 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16776 a!3154)) (= (select (arr!16412 a!3154) resIndex!32) (select (arr!16412 a!3154) j!147))))))

(assert (= (and start!49040 res!335240) b!540045))

(assert (= (and b!540045 res!335246) b!540043))

(assert (= (and b!540043 res!335241) b!540048))

(assert (= (and b!540048 res!335242) b!540046))

(assert (= (and b!540046 res!335244) b!540044))

(assert (= (and b!540044 res!335243) b!540049))

(assert (= (and b!540049 res!335238) b!540041))

(assert (= (and b!540041 res!335245) b!540050))

(assert (= (and b!540050 res!335237) b!540047))

(assert (= (and b!540047 res!335239) b!540042))

(declare-fun m!518903 () Bool)

(assert (=> b!540043 m!518903))

(assert (=> b!540043 m!518903))

(declare-fun m!518905 () Bool)

(assert (=> b!540043 m!518905))

(declare-fun m!518907 () Bool)

(assert (=> b!540046 m!518907))

(declare-fun m!518909 () Bool)

(assert (=> b!540044 m!518909))

(declare-fun m!518911 () Bool)

(assert (=> b!540048 m!518911))

(declare-fun m!518913 () Bool)

(assert (=> b!540050 m!518913))

(assert (=> b!540050 m!518903))

(declare-fun m!518915 () Bool)

(assert (=> start!49040 m!518915))

(declare-fun m!518917 () Bool)

(assert (=> start!49040 m!518917))

(assert (=> b!540042 m!518903))

(assert (=> b!540042 m!518903))

(declare-fun m!518919 () Bool)

(assert (=> b!540042 m!518919))

(assert (=> b!540042 m!518919))

(assert (=> b!540042 m!518903))

(declare-fun m!518921 () Bool)

(assert (=> b!540042 m!518921))

(declare-fun m!518923 () Bool)

(assert (=> b!540049 m!518923))

(assert (=> b!540047 m!518903))

(assert (=> b!540047 m!518903))

(declare-fun m!518925 () Bool)

(assert (=> b!540047 m!518925))

(declare-fun m!518927 () Bool)

(assert (=> b!540041 m!518927))

(push 1)

(assert (not b!540048))

(assert (not start!49040))

(assert (not b!540042))

(assert (not b!540044))

(assert (not b!540043))

(assert (not b!540046))

(assert (not b!540041))

(assert (not b!540049))

(assert (not b!540047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

