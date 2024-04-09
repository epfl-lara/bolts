; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48576 () Bool)

(assert start!48576)

(declare-fun b!532928 () Bool)

(declare-fun res!328285 () Bool)

(declare-fun e!310202 () Bool)

(assert (=> b!532928 (=> (not res!328285) (not e!310202))))

(declare-datatypes ((array!33744 0))(
  ( (array!33745 (arr!16207 (Array (_ BitVec 32) (_ BitVec 64))) (size!16571 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33744)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532928 (= res!328285 (validKeyInArray!0 (select (arr!16207 a!3154) j!147)))))

(declare-fun b!532929 () Bool)

(declare-fun res!328288 () Bool)

(assert (=> b!532929 (=> (not res!328288) (not e!310202))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532929 (= res!328288 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532930 () Bool)

(declare-fun res!328291 () Bool)

(declare-fun e!310203 () Bool)

(assert (=> b!532930 (=> (not res!328291) (not e!310203))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4672 0))(
  ( (MissingZero!4672 (index!20912 (_ BitVec 32))) (Found!4672 (index!20913 (_ BitVec 32))) (Intermediate!4672 (undefined!5484 Bool) (index!20914 (_ BitVec 32)) (x!49914 (_ BitVec 32))) (Undefined!4672) (MissingVacant!4672 (index!20915 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33744 (_ BitVec 32)) SeekEntryResult!4672)

(assert (=> b!532930 (= res!328291 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16207 a!3154) j!147) a!3154 mask!3216) (Intermediate!4672 false resIndex!32 resX!32)))))

(declare-fun b!532931 () Bool)

(declare-fun res!328289 () Bool)

(assert (=> b!532931 (=> (not res!328289) (not e!310203))))

(declare-datatypes ((List!10379 0))(
  ( (Nil!10376) (Cons!10375 (h!11318 (_ BitVec 64)) (t!16615 List!10379)) )
))
(declare-fun arrayNoDuplicates!0 (array!33744 (_ BitVec 32) List!10379) Bool)

(assert (=> b!532931 (= res!328289 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10376))))

(declare-fun res!328284 () Bool)

(assert (=> start!48576 (=> (not res!328284) (not e!310202))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48576 (= res!328284 (validMask!0 mask!3216))))

(assert (=> start!48576 e!310202))

(assert (=> start!48576 true))

(declare-fun array_inv!11981 (array!33744) Bool)

(assert (=> start!48576 (array_inv!11981 a!3154)))

(declare-fun b!532932 () Bool)

(declare-fun res!328290 () Bool)

(assert (=> b!532932 (=> (not res!328290) (not e!310202))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532932 (= res!328290 (and (= (size!16571 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16571 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16571 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!532933 () Bool)

(declare-fun res!328283 () Bool)

(assert (=> b!532933 (=> (not res!328283) (not e!310203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33744 (_ BitVec 32)) Bool)

(assert (=> b!532933 (= res!328283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532934 () Bool)

(assert (=> b!532934 (= e!310203 false)))

(declare-fun lt!245353 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532934 (= lt!245353 (toIndex!0 (select (arr!16207 a!3154) j!147) mask!3216))))

(declare-fun b!532935 () Bool)

(declare-fun res!328292 () Bool)

(assert (=> b!532935 (=> (not res!328292) (not e!310202))))

(assert (=> b!532935 (= res!328292 (validKeyInArray!0 k0!1998))))

(declare-fun b!532936 () Bool)

(assert (=> b!532936 (= e!310202 e!310203)))

(declare-fun res!328286 () Bool)

(assert (=> b!532936 (=> (not res!328286) (not e!310203))))

(declare-fun lt!245354 () SeekEntryResult!4672)

(assert (=> b!532936 (= res!328286 (or (= lt!245354 (MissingZero!4672 i!1153)) (= lt!245354 (MissingVacant!4672 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33744 (_ BitVec 32)) SeekEntryResult!4672)

(assert (=> b!532936 (= lt!245354 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!532937 () Bool)

(declare-fun res!328287 () Bool)

(assert (=> b!532937 (=> (not res!328287) (not e!310203))))

(assert (=> b!532937 (= res!328287 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16571 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16571 a!3154)) (= (select (arr!16207 a!3154) resIndex!32) (select (arr!16207 a!3154) j!147))))))

(assert (= (and start!48576 res!328284) b!532932))

(assert (= (and b!532932 res!328290) b!532928))

(assert (= (and b!532928 res!328285) b!532935))

(assert (= (and b!532935 res!328292) b!532929))

(assert (= (and b!532929 res!328288) b!532936))

(assert (= (and b!532936 res!328286) b!532933))

(assert (= (and b!532933 res!328283) b!532931))

(assert (= (and b!532931 res!328289) b!532937))

(assert (= (and b!532937 res!328287) b!532930))

(assert (= (and b!532930 res!328291) b!532934))

(declare-fun m!512911 () Bool)

(assert (=> b!532929 m!512911))

(declare-fun m!512913 () Bool)

(assert (=> start!48576 m!512913))

(declare-fun m!512915 () Bool)

(assert (=> start!48576 m!512915))

(declare-fun m!512917 () Bool)

(assert (=> b!532937 m!512917))

(declare-fun m!512919 () Bool)

(assert (=> b!532937 m!512919))

(declare-fun m!512921 () Bool)

(assert (=> b!532933 m!512921))

(assert (=> b!532934 m!512919))

(assert (=> b!532934 m!512919))

(declare-fun m!512923 () Bool)

(assert (=> b!532934 m!512923))

(declare-fun m!512925 () Bool)

(assert (=> b!532931 m!512925))

(declare-fun m!512927 () Bool)

(assert (=> b!532936 m!512927))

(assert (=> b!532928 m!512919))

(assert (=> b!532928 m!512919))

(declare-fun m!512929 () Bool)

(assert (=> b!532928 m!512929))

(assert (=> b!532930 m!512919))

(assert (=> b!532930 m!512919))

(declare-fun m!512931 () Bool)

(assert (=> b!532930 m!512931))

(declare-fun m!512933 () Bool)

(assert (=> b!532935 m!512933))

(check-sat (not b!532934) (not b!532935) (not b!532931) (not b!532930) (not b!532928) (not b!532929) (not start!48576) (not b!532933) (not b!532936))
(check-sat)
