; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48930 () Bool)

(assert start!48930)

(declare-fun b!538935 () Bool)

(declare-fun res!334292 () Bool)

(declare-fun e!312462 () Bool)

(assert (=> b!538935 (=> (not res!334292) (not e!312462))))

(declare-datatypes ((array!34098 0))(
  ( (array!34099 (arr!16384 (Array (_ BitVec 32) (_ BitVec 64))) (size!16748 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34098)

(declare-datatypes ((List!10556 0))(
  ( (Nil!10553) (Cons!10552 (h!11495 (_ BitVec 64)) (t!16792 List!10556)) )
))
(declare-fun arrayNoDuplicates!0 (array!34098 (_ BitVec 32) List!10556) Bool)

(assert (=> b!538935 (= res!334292 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10553))))

(declare-fun b!538936 () Bool)

(declare-fun res!334295 () Bool)

(assert (=> b!538936 (=> (not res!334295) (not e!312462))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538936 (= res!334295 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16748 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16748 a!3154)) (= (select (arr!16384 a!3154) resIndex!32) (select (arr!16384 a!3154) j!147))))))

(declare-fun b!538937 () Bool)

(declare-fun res!334294 () Bool)

(declare-fun e!312463 () Bool)

(assert (=> b!538937 (=> (not res!334294) (not e!312463))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538937 (= res!334294 (validKeyInArray!0 k0!1998))))

(declare-fun b!538938 () Bool)

(assert (=> b!538938 (= e!312463 e!312462)))

(declare-fun res!334290 () Bool)

(assert (=> b!538938 (=> (not res!334290) (not e!312462))))

(declare-datatypes ((SeekEntryResult!4849 0))(
  ( (MissingZero!4849 (index!21620 (_ BitVec 32))) (Found!4849 (index!21621 (_ BitVec 32))) (Intermediate!4849 (undefined!5661 Bool) (index!21622 (_ BitVec 32)) (x!50563 (_ BitVec 32))) (Undefined!4849) (MissingVacant!4849 (index!21623 (_ BitVec 32))) )
))
(declare-fun lt!247037 () SeekEntryResult!4849)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538938 (= res!334290 (or (= lt!247037 (MissingZero!4849 i!1153)) (= lt!247037 (MissingVacant!4849 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34098 (_ BitVec 32)) SeekEntryResult!4849)

(assert (=> b!538938 (= lt!247037 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!538939 () Bool)

(declare-fun res!334296 () Bool)

(assert (=> b!538939 (=> (not res!334296) (not e!312463))))

(assert (=> b!538939 (= res!334296 (and (= (size!16748 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16748 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16748 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538940 () Bool)

(declare-fun res!334297 () Bool)

(assert (=> b!538940 (=> (not res!334297) (not e!312462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34098 (_ BitVec 32)) Bool)

(assert (=> b!538940 (= res!334297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538941 () Bool)

(declare-fun res!334293 () Bool)

(assert (=> b!538941 (=> (not res!334293) (not e!312463))))

(declare-fun arrayContainsKey!0 (array!34098 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538941 (= res!334293 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun res!334291 () Bool)

(assert (=> start!48930 (=> (not res!334291) (not e!312463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48930 (= res!334291 (validMask!0 mask!3216))))

(assert (=> start!48930 e!312463))

(assert (=> start!48930 true))

(declare-fun array_inv!12158 (array!34098) Bool)

(assert (=> start!48930 (array_inv!12158 a!3154)))

(declare-fun b!538942 () Bool)

(declare-fun res!334298 () Bool)

(assert (=> b!538942 (=> (not res!334298) (not e!312463))))

(assert (=> b!538942 (= res!334298 (validKeyInArray!0 (select (arr!16384 a!3154) j!147)))))

(declare-fun b!538943 () Bool)

(assert (=> b!538943 (= e!312462 false)))

(declare-fun lt!247036 () SeekEntryResult!4849)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34098 (_ BitVec 32)) SeekEntryResult!4849)

(assert (=> b!538943 (= lt!247036 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16384 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48930 res!334291) b!538939))

(assert (= (and b!538939 res!334296) b!538942))

(assert (= (and b!538942 res!334298) b!538937))

(assert (= (and b!538937 res!334294) b!538941))

(assert (= (and b!538941 res!334293) b!538938))

(assert (= (and b!538938 res!334290) b!538940))

(assert (= (and b!538940 res!334297) b!538935))

(assert (= (and b!538935 res!334292) b!538936))

(assert (= (and b!538936 res!334295) b!538943))

(declare-fun m!518057 () Bool)

(assert (=> b!538943 m!518057))

(assert (=> b!538943 m!518057))

(declare-fun m!518059 () Bool)

(assert (=> b!538943 m!518059))

(declare-fun m!518061 () Bool)

(assert (=> b!538938 m!518061))

(declare-fun m!518063 () Bool)

(assert (=> b!538940 m!518063))

(declare-fun m!518065 () Bool)

(assert (=> b!538936 m!518065))

(assert (=> b!538936 m!518057))

(assert (=> b!538942 m!518057))

(assert (=> b!538942 m!518057))

(declare-fun m!518067 () Bool)

(assert (=> b!538942 m!518067))

(declare-fun m!518069 () Bool)

(assert (=> b!538941 m!518069))

(declare-fun m!518071 () Bool)

(assert (=> b!538937 m!518071))

(declare-fun m!518073 () Bool)

(assert (=> b!538935 m!518073))

(declare-fun m!518075 () Bool)

(assert (=> start!48930 m!518075))

(declare-fun m!518077 () Bool)

(assert (=> start!48930 m!518077))

(check-sat (not b!538935) (not b!538942) (not b!538943) (not start!48930) (not b!538937) (not b!538941) (not b!538940) (not b!538938))
(check-sat)
