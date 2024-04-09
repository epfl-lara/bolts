; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86954 () Bool)

(assert start!86954)

(declare-fun b!1008015 () Bool)

(declare-fun e!567255 () Bool)

(declare-fun e!567259 () Bool)

(assert (=> b!1008015 (= e!567255 e!567259)))

(declare-fun res!677068 () Bool)

(assert (=> b!1008015 (=> (not res!677068) (not e!567259))))

(declare-datatypes ((SeekEntryResult!9526 0))(
  ( (MissingZero!9526 (index!40474 (_ BitVec 32))) (Found!9526 (index!40475 (_ BitVec 32))) (Intermediate!9526 (undefined!10338 Bool) (index!40476 (_ BitVec 32)) (x!87893 (_ BitVec 32))) (Undefined!9526) (MissingVacant!9526 (index!40477 (_ BitVec 32))) )
))
(declare-fun lt!445498 () SeekEntryResult!9526)

(declare-fun lt!445503 () SeekEntryResult!9526)

(assert (=> b!1008015 (= res!677068 (= lt!445498 lt!445503))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008015 (= lt!445503 (Intermediate!9526 false resIndex!38 resX!38))))

(declare-datatypes ((array!63554 0))(
  ( (array!63555 (arr!30594 (Array (_ BitVec 32) (_ BitVec 64))) (size!31097 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63554)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63554 (_ BitVec 32)) SeekEntryResult!9526)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008015 (= lt!445498 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30594 a!3219) j!170) mask!3464) (select (arr!30594 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008016 () Bool)

(declare-fun e!567260 () Bool)

(declare-fun e!567256 () Bool)

(assert (=> b!1008016 (= e!567260 e!567256)))

(declare-fun res!677077 () Bool)

(assert (=> b!1008016 (=> (not res!677077) (not e!567256))))

(declare-fun lt!445500 () (_ BitVec 64))

(declare-fun lt!445502 () array!63554)

(assert (=> b!1008016 (= res!677077 (not (= lt!445498 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445500 mask!3464) lt!445500 lt!445502 mask!3464))))))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1008016 (= lt!445500 (select (store (arr!30594 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1008016 (= lt!445502 (array!63555 (store (arr!30594 a!3219) i!1194 k!2224) (size!31097 a!3219)))))

(declare-fun b!1008017 () Bool)

(declare-fun res!677069 () Bool)

(assert (=> b!1008017 (=> (not res!677069) (not e!567256))))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1008017 (= res!677069 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun res!677076 () Bool)

(declare-fun e!567258 () Bool)

(assert (=> start!86954 (=> (not res!677076) (not e!567258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86954 (= res!677076 (validMask!0 mask!3464))))

(assert (=> start!86954 e!567258))

(declare-fun array_inv!23584 (array!63554) Bool)

(assert (=> start!86954 (array_inv!23584 a!3219)))

(assert (=> start!86954 true))

(declare-fun b!1008018 () Bool)

(declare-fun res!677074 () Bool)

(assert (=> b!1008018 (=> (not res!677074) (not e!567255))))

(declare-datatypes ((List!21396 0))(
  ( (Nil!21393) (Cons!21392 (h!22578 (_ BitVec 64)) (t!30405 List!21396)) )
))
(declare-fun arrayNoDuplicates!0 (array!63554 (_ BitVec 32) List!21396) Bool)

(assert (=> b!1008018 (= res!677074 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21393))))

(declare-fun b!1008019 () Bool)

(declare-fun res!677073 () Bool)

(assert (=> b!1008019 (=> (not res!677073) (not e!567255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63554 (_ BitVec 32)) Bool)

(assert (=> b!1008019 (= res!677073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008020 () Bool)

(assert (=> b!1008020 (= e!567258 e!567255)))

(declare-fun res!677070 () Bool)

(assert (=> b!1008020 (=> (not res!677070) (not e!567255))))

(declare-fun lt!445499 () SeekEntryResult!9526)

(assert (=> b!1008020 (= res!677070 (or (= lt!445499 (MissingVacant!9526 i!1194)) (= lt!445499 (MissingZero!9526 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63554 (_ BitVec 32)) SeekEntryResult!9526)

(assert (=> b!1008020 (= lt!445499 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1008021 () Bool)

(declare-fun res!677064 () Bool)

(assert (=> b!1008021 (=> (not res!677064) (not e!567258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008021 (= res!677064 (validKeyInArray!0 (select (arr!30594 a!3219) j!170)))))

(declare-fun b!1008022 () Bool)

(declare-fun res!677072 () Bool)

(assert (=> b!1008022 (=> (not res!677072) (not e!567258))))

(assert (=> b!1008022 (= res!677072 (validKeyInArray!0 k!2224))))

(declare-fun b!1008023 () Bool)

(declare-fun res!677066 () Bool)

(assert (=> b!1008023 (=> (not res!677066) (not e!567258))))

(declare-fun arrayContainsKey!0 (array!63554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008023 (= res!677066 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1008024 () Bool)

(declare-fun res!677065 () Bool)

(assert (=> b!1008024 (=> (not res!677065) (not e!567256))))

(declare-fun lt!445497 () SeekEntryResult!9526)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1008024 (= res!677065 (not (= lt!445497 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445500 lt!445502 mask!3464))))))

(declare-fun b!1008025 () Bool)

(assert (=> b!1008025 (= e!567256 false)))

(declare-fun lt!445501 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008025 (= lt!445501 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008026 () Bool)

(declare-fun res!677067 () Bool)

(assert (=> b!1008026 (=> (not res!677067) (not e!567258))))

(assert (=> b!1008026 (= res!677067 (and (= (size!31097 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31097 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31097 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008027 () Bool)

(assert (=> b!1008027 (= e!567259 e!567260)))

(declare-fun res!677071 () Bool)

(assert (=> b!1008027 (=> (not res!677071) (not e!567260))))

(assert (=> b!1008027 (= res!677071 (= lt!445497 lt!445503))))

(assert (=> b!1008027 (= lt!445497 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30594 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008028 () Bool)

(declare-fun res!677075 () Bool)

(assert (=> b!1008028 (=> (not res!677075) (not e!567255))))

(assert (=> b!1008028 (= res!677075 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31097 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31097 a!3219))))))

(assert (= (and start!86954 res!677076) b!1008026))

(assert (= (and b!1008026 res!677067) b!1008021))

(assert (= (and b!1008021 res!677064) b!1008022))

(assert (= (and b!1008022 res!677072) b!1008023))

(assert (= (and b!1008023 res!677066) b!1008020))

(assert (= (and b!1008020 res!677070) b!1008019))

(assert (= (and b!1008019 res!677073) b!1008018))

(assert (= (and b!1008018 res!677074) b!1008028))

(assert (= (and b!1008028 res!677075) b!1008015))

(assert (= (and b!1008015 res!677068) b!1008027))

(assert (= (and b!1008027 res!677071) b!1008016))

(assert (= (and b!1008016 res!677077) b!1008024))

(assert (= (and b!1008024 res!677065) b!1008017))

(assert (= (and b!1008017 res!677069) b!1008025))

(declare-fun m!932919 () Bool)

(assert (=> b!1008022 m!932919))

(declare-fun m!932921 () Bool)

(assert (=> b!1008021 m!932921))

(assert (=> b!1008021 m!932921))

(declare-fun m!932923 () Bool)

(assert (=> b!1008021 m!932923))

(declare-fun m!932925 () Bool)

(assert (=> b!1008024 m!932925))

(declare-fun m!932927 () Bool)

(assert (=> b!1008023 m!932927))

(declare-fun m!932929 () Bool)

(assert (=> b!1008018 m!932929))

(declare-fun m!932931 () Bool)

(assert (=> b!1008025 m!932931))

(declare-fun m!932933 () Bool)

(assert (=> start!86954 m!932933))

(declare-fun m!932935 () Bool)

(assert (=> start!86954 m!932935))

(declare-fun m!932937 () Bool)

(assert (=> b!1008016 m!932937))

(assert (=> b!1008016 m!932937))

(declare-fun m!932939 () Bool)

(assert (=> b!1008016 m!932939))

(declare-fun m!932941 () Bool)

(assert (=> b!1008016 m!932941))

(declare-fun m!932943 () Bool)

(assert (=> b!1008016 m!932943))

(assert (=> b!1008015 m!932921))

(assert (=> b!1008015 m!932921))

(declare-fun m!932945 () Bool)

(assert (=> b!1008015 m!932945))

(assert (=> b!1008015 m!932945))

(assert (=> b!1008015 m!932921))

(declare-fun m!932947 () Bool)

(assert (=> b!1008015 m!932947))

(assert (=> b!1008027 m!932921))

(assert (=> b!1008027 m!932921))

(declare-fun m!932949 () Bool)

(assert (=> b!1008027 m!932949))

(declare-fun m!932951 () Bool)

(assert (=> b!1008019 m!932951))

(declare-fun m!932953 () Bool)

(assert (=> b!1008020 m!932953))

(push 1)

(assert (not b!1008018))

(assert (not b!1008021))

(assert (not b!1008015))

(assert (not b!1008020))

(assert (not b!1008027))

(assert (not b!1008022))

(assert (not b!1008019))

(assert (not b!1008025))

(assert (not b!1008016))

(assert (not start!86954))

(assert (not b!1008024))

(assert (not b!1008023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

