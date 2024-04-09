; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49290 () Bool)

(assert start!49290)

(declare-fun b!542236 () Bool)

(declare-fun res!336938 () Bool)

(declare-fun e!313855 () Bool)

(assert (=> b!542236 (=> (not res!336938) (not e!313855))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34254 0))(
  ( (array!34255 (arr!16456 (Array (_ BitVec 32) (_ BitVec 64))) (size!16820 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34254)

(assert (=> b!542236 (= res!336938 (and (not (= (select (arr!16456 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16456 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16456 a!3154) index!1177) (select (arr!16456 a!3154) j!147)))))))

(declare-fun b!542237 () Bool)

(declare-fun res!336936 () Bool)

(declare-fun e!313856 () Bool)

(assert (=> b!542237 (=> (not res!336936) (not e!313856))))

(declare-datatypes ((List!10628 0))(
  ( (Nil!10625) (Cons!10624 (h!11579 (_ BitVec 64)) (t!16864 List!10628)) )
))
(declare-fun arrayNoDuplicates!0 (array!34254 (_ BitVec 32) List!10628) Bool)

(assert (=> b!542237 (= res!336936 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10625))))

(declare-fun b!542238 () Bool)

(declare-fun res!336941 () Bool)

(declare-fun e!313858 () Bool)

(assert (=> b!542238 (=> (not res!336941) (not e!313858))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542238 (= res!336941 (validKeyInArray!0 k0!1998))))

(declare-fun b!542239 () Bool)

(declare-fun res!336947 () Bool)

(assert (=> b!542239 (=> (not res!336947) (not e!313858))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542239 (= res!336947 (and (= (size!16820 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16820 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16820 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542240 () Bool)

(declare-fun res!336939 () Bool)

(assert (=> b!542240 (=> (not res!336939) (not e!313856))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542240 (= res!336939 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16820 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16820 a!3154)) (= (select (arr!16456 a!3154) resIndex!32) (select (arr!16456 a!3154) j!147))))))

(declare-fun b!542241 () Bool)

(declare-fun res!336937 () Bool)

(assert (=> b!542241 (=> (not res!336937) (not e!313856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34254 (_ BitVec 32)) Bool)

(assert (=> b!542241 (= res!336937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542242 () Bool)

(assert (=> b!542242 (= e!313858 e!313856)))

(declare-fun res!336940 () Bool)

(assert (=> b!542242 (=> (not res!336940) (not e!313856))))

(declare-datatypes ((SeekEntryResult!4921 0))(
  ( (MissingZero!4921 (index!21908 (_ BitVec 32))) (Found!4921 (index!21909 (_ BitVec 32))) (Intermediate!4921 (undefined!5733 Bool) (index!21910 (_ BitVec 32)) (x!50851 (_ BitVec 32))) (Undefined!4921) (MissingVacant!4921 (index!21911 (_ BitVec 32))) )
))
(declare-fun lt!247882 () SeekEntryResult!4921)

(assert (=> b!542242 (= res!336940 (or (= lt!247882 (MissingZero!4921 i!1153)) (= lt!247882 (MissingVacant!4921 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34254 (_ BitVec 32)) SeekEntryResult!4921)

(assert (=> b!542242 (= lt!247882 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!542235 () Bool)

(assert (=> b!542235 (= e!313855 false)))

(declare-fun lt!247883 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542235 (= lt!247883 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!336945 () Bool)

(assert (=> start!49290 (=> (not res!336945) (not e!313858))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49290 (= res!336945 (validMask!0 mask!3216))))

(assert (=> start!49290 e!313858))

(assert (=> start!49290 true))

(declare-fun array_inv!12230 (array!34254) Bool)

(assert (=> start!49290 (array_inv!12230 a!3154)))

(declare-fun b!542243 () Bool)

(declare-fun res!336943 () Bool)

(assert (=> b!542243 (=> (not res!336943) (not e!313858))))

(assert (=> b!542243 (= res!336943 (validKeyInArray!0 (select (arr!16456 a!3154) j!147)))))

(declare-fun b!542244 () Bool)

(declare-fun res!336946 () Bool)

(assert (=> b!542244 (=> (not res!336946) (not e!313855))))

(declare-fun lt!247881 () SeekEntryResult!4921)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34254 (_ BitVec 32)) SeekEntryResult!4921)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542244 (= res!336946 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16456 a!3154) j!147) mask!3216) (select (arr!16456 a!3154) j!147) a!3154 mask!3216) lt!247881))))

(declare-fun b!542245 () Bool)

(declare-fun res!336942 () Bool)

(assert (=> b!542245 (=> (not res!336942) (not e!313858))))

(declare-fun arrayContainsKey!0 (array!34254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542245 (= res!336942 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542246 () Bool)

(assert (=> b!542246 (= e!313856 e!313855)))

(declare-fun res!336944 () Bool)

(assert (=> b!542246 (=> (not res!336944) (not e!313855))))

(assert (=> b!542246 (= res!336944 (= lt!247881 (Intermediate!4921 false resIndex!32 resX!32)))))

(assert (=> b!542246 (= lt!247881 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16456 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!49290 res!336945) b!542239))

(assert (= (and b!542239 res!336947) b!542243))

(assert (= (and b!542243 res!336943) b!542238))

(assert (= (and b!542238 res!336941) b!542245))

(assert (= (and b!542245 res!336942) b!542242))

(assert (= (and b!542242 res!336940) b!542241))

(assert (= (and b!542241 res!336937) b!542237))

(assert (= (and b!542237 res!336936) b!542240))

(assert (= (and b!542240 res!336939) b!542246))

(assert (= (and b!542246 res!336944) b!542244))

(assert (= (and b!542244 res!336946) b!542236))

(assert (= (and b!542236 res!336938) b!542235))

(declare-fun m!520531 () Bool)

(assert (=> b!542237 m!520531))

(declare-fun m!520533 () Bool)

(assert (=> b!542240 m!520533))

(declare-fun m!520535 () Bool)

(assert (=> b!542240 m!520535))

(assert (=> b!542243 m!520535))

(assert (=> b!542243 m!520535))

(declare-fun m!520537 () Bool)

(assert (=> b!542243 m!520537))

(declare-fun m!520539 () Bool)

(assert (=> b!542235 m!520539))

(assert (=> b!542244 m!520535))

(assert (=> b!542244 m!520535))

(declare-fun m!520541 () Bool)

(assert (=> b!542244 m!520541))

(assert (=> b!542244 m!520541))

(assert (=> b!542244 m!520535))

(declare-fun m!520543 () Bool)

(assert (=> b!542244 m!520543))

(declare-fun m!520545 () Bool)

(assert (=> b!542242 m!520545))

(declare-fun m!520547 () Bool)

(assert (=> start!49290 m!520547))

(declare-fun m!520549 () Bool)

(assert (=> start!49290 m!520549))

(declare-fun m!520551 () Bool)

(assert (=> b!542236 m!520551))

(assert (=> b!542236 m!520535))

(assert (=> b!542246 m!520535))

(assert (=> b!542246 m!520535))

(declare-fun m!520553 () Bool)

(assert (=> b!542246 m!520553))

(declare-fun m!520555 () Bool)

(assert (=> b!542238 m!520555))

(declare-fun m!520557 () Bool)

(assert (=> b!542241 m!520557))

(declare-fun m!520559 () Bool)

(assert (=> b!542245 m!520559))

(check-sat (not b!542235) (not b!542238) (not b!542246) (not b!542245) (not b!542243) (not b!542237) (not b!542242) (not start!49290) (not b!542244) (not b!542241))
(check-sat)
