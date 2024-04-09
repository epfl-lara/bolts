; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86620 () Bool)

(assert start!86620)

(declare-fun b!1003939 () Bool)

(declare-fun res!673577 () Bool)

(declare-fun e!565412 () Bool)

(assert (=> b!1003939 (=> (not res!673577) (not e!565412))))

(declare-datatypes ((array!63373 0))(
  ( (array!63374 (arr!30508 (Array (_ BitVec 32) (_ BitVec 64))) (size!31011 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63373)

(declare-datatypes ((List!21310 0))(
  ( (Nil!21307) (Cons!21306 (h!22483 (_ BitVec 64)) (t!30319 List!21310)) )
))
(declare-fun arrayNoDuplicates!0 (array!63373 (_ BitVec 32) List!21310) Bool)

(assert (=> b!1003939 (= res!673577 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21307))))

(declare-fun b!1003940 () Bool)

(declare-fun e!565416 () Bool)

(declare-fun e!565413 () Bool)

(assert (=> b!1003940 (= e!565416 e!565413)))

(declare-fun res!673578 () Bool)

(assert (=> b!1003940 (=> (not res!673578) (not e!565413))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9440 0))(
  ( (MissingZero!9440 (index!40130 (_ BitVec 32))) (Found!9440 (index!40131 (_ BitVec 32))) (Intermediate!9440 (undefined!10252 Bool) (index!40132 (_ BitVec 32)) (x!87565 (_ BitVec 32))) (Undefined!9440) (MissingVacant!9440 (index!40133 (_ BitVec 32))) )
))
(declare-fun lt!443939 () SeekEntryResult!9440)

(declare-fun lt!443943 () array!63373)

(declare-fun lt!443938 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63373 (_ BitVec 32)) SeekEntryResult!9440)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003940 (= res!673578 (not (= lt!443939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!443938 mask!3464) lt!443938 lt!443943 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1003940 (= lt!443938 (select (store (arr!30508 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1003940 (= lt!443943 (array!63374 (store (arr!30508 a!3219) i!1194 k!2224) (size!31011 a!3219)))))

(declare-fun b!1003941 () Bool)

(declare-fun res!673580 () Bool)

(declare-fun e!565414 () Bool)

(assert (=> b!1003941 (=> (not res!673580) (not e!565414))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1003941 (= res!673580 (validKeyInArray!0 k!2224))))

(declare-fun b!1003942 () Bool)

(declare-fun res!673583 () Bool)

(assert (=> b!1003942 (=> (not res!673583) (not e!565412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63373 (_ BitVec 32)) Bool)

(assert (=> b!1003942 (= res!673583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1003943 () Bool)

(declare-fun res!673581 () Bool)

(assert (=> b!1003943 (=> (not res!673581) (not e!565414))))

(assert (=> b!1003943 (= res!673581 (and (= (size!31011 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31011 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31011 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1003944 () Bool)

(declare-fun e!565415 () Bool)

(assert (=> b!1003944 (= e!565412 e!565415)))

(declare-fun res!673587 () Bool)

(assert (=> b!1003944 (=> (not res!673587) (not e!565415))))

(declare-fun lt!443940 () SeekEntryResult!9440)

(assert (=> b!1003944 (= res!673587 (= lt!443939 lt!443940))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1003944 (= lt!443940 (Intermediate!9440 false resIndex!38 resX!38))))

(assert (=> b!1003944 (= lt!443939 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30508 a!3219) j!170) mask!3464) (select (arr!30508 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1003945 () Bool)

(declare-fun e!565417 () Bool)

(assert (=> b!1003945 (= e!565417 false)))

(declare-fun lt!443937 () (_ BitVec 32))

(declare-fun lt!443941 () SeekEntryResult!9440)

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1003945 (= lt!443941 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443937 lt!443938 lt!443943 mask!3464))))

(declare-fun b!1003946 () Bool)

(declare-fun res!673582 () Bool)

(assert (=> b!1003946 (=> (not res!673582) (not e!565412))))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!1003946 (= res!673582 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31011 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31011 a!3219))))))

(declare-fun b!1003947 () Bool)

(declare-fun res!673584 () Bool)

(assert (=> b!1003947 (=> (not res!673584) (not e!565414))))

(assert (=> b!1003947 (= res!673584 (validKeyInArray!0 (select (arr!30508 a!3219) j!170)))))

(declare-fun b!1003948 () Bool)

(declare-fun res!673576 () Bool)

(assert (=> b!1003948 (=> (not res!673576) (not e!565417))))

(assert (=> b!1003948 (= res!673576 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!443937 (select (arr!30508 a!3219) j!170) a!3219 mask!3464) lt!443940))))

(declare-fun b!1003949 () Bool)

(assert (=> b!1003949 (= e!565414 e!565412)))

(declare-fun res!673585 () Bool)

(assert (=> b!1003949 (=> (not res!673585) (not e!565412))))

(declare-fun lt!443942 () SeekEntryResult!9440)

(assert (=> b!1003949 (= res!673585 (or (= lt!443942 (MissingVacant!9440 i!1194)) (= lt!443942 (MissingZero!9440 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63373 (_ BitVec 32)) SeekEntryResult!9440)

(assert (=> b!1003949 (= lt!443942 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1003950 () Bool)

(assert (=> b!1003950 (= e!565415 e!565416)))

(declare-fun res!673579 () Bool)

(assert (=> b!1003950 (=> (not res!673579) (not e!565416))))

(declare-fun lt!443936 () SeekEntryResult!9440)

(assert (=> b!1003950 (= res!673579 (= lt!443936 lt!443940))))

(assert (=> b!1003950 (= lt!443936 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30508 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!673575 () Bool)

(assert (=> start!86620 (=> (not res!673575) (not e!565414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86620 (= res!673575 (validMask!0 mask!3464))))

(assert (=> start!86620 e!565414))

(declare-fun array_inv!23498 (array!63373) Bool)

(assert (=> start!86620 (array_inv!23498 a!3219)))

(assert (=> start!86620 true))

(declare-fun b!1003951 () Bool)

(declare-fun res!673588 () Bool)

(assert (=> b!1003951 (=> (not res!673588) (not e!565413))))

(assert (=> b!1003951 (= res!673588 (not (= lt!443936 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!443938 lt!443943 mask!3464))))))

(declare-fun b!1003952 () Bool)

(declare-fun res!673573 () Bool)

(assert (=> b!1003952 (=> (not res!673573) (not e!565414))))

(declare-fun arrayContainsKey!0 (array!63373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1003952 (= res!673573 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1003953 () Bool)

(assert (=> b!1003953 (= e!565413 e!565417)))

(declare-fun res!673586 () Bool)

(assert (=> b!1003953 (=> (not res!673586) (not e!565417))))

(assert (=> b!1003953 (= res!673586 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!443937 #b00000000000000000000000000000000) (bvslt lt!443937 (size!31011 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1003953 (= lt!443937 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1003954 () Bool)

(declare-fun res!673574 () Bool)

(assert (=> b!1003954 (=> (not res!673574) (not e!565413))))

(assert (=> b!1003954 (= res!673574 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!86620 res!673575) b!1003943))

(assert (= (and b!1003943 res!673581) b!1003947))

(assert (= (and b!1003947 res!673584) b!1003941))

(assert (= (and b!1003941 res!673580) b!1003952))

(assert (= (and b!1003952 res!673573) b!1003949))

(assert (= (and b!1003949 res!673585) b!1003942))

(assert (= (and b!1003942 res!673583) b!1003939))

(assert (= (and b!1003939 res!673577) b!1003946))

(assert (= (and b!1003946 res!673582) b!1003944))

(assert (= (and b!1003944 res!673587) b!1003950))

(assert (= (and b!1003950 res!673579) b!1003940))

(assert (= (and b!1003940 res!673578) b!1003951))

(assert (= (and b!1003951 res!673588) b!1003954))

(assert (= (and b!1003954 res!673574) b!1003953))

(assert (= (and b!1003953 res!673586) b!1003948))

(assert (= (and b!1003948 res!673576) b!1003945))

(declare-fun m!929661 () Bool)

(assert (=> b!1003939 m!929661))

(declare-fun m!929663 () Bool)

(assert (=> b!1003950 m!929663))

(assert (=> b!1003950 m!929663))

(declare-fun m!929665 () Bool)

(assert (=> b!1003950 m!929665))

(declare-fun m!929667 () Bool)

(assert (=> b!1003941 m!929667))

(declare-fun m!929669 () Bool)

(assert (=> b!1003952 m!929669))

(declare-fun m!929671 () Bool)

(assert (=> b!1003945 m!929671))

(declare-fun m!929673 () Bool)

(assert (=> b!1003940 m!929673))

(assert (=> b!1003940 m!929673))

(declare-fun m!929675 () Bool)

(assert (=> b!1003940 m!929675))

(declare-fun m!929677 () Bool)

(assert (=> b!1003940 m!929677))

(declare-fun m!929679 () Bool)

(assert (=> b!1003940 m!929679))

(assert (=> b!1003948 m!929663))

(assert (=> b!1003948 m!929663))

(declare-fun m!929681 () Bool)

(assert (=> b!1003948 m!929681))

(declare-fun m!929683 () Bool)

(assert (=> b!1003951 m!929683))

(assert (=> b!1003947 m!929663))

(assert (=> b!1003947 m!929663))

(declare-fun m!929685 () Bool)

(assert (=> b!1003947 m!929685))

(declare-fun m!929687 () Bool)

(assert (=> start!86620 m!929687))

(declare-fun m!929689 () Bool)

(assert (=> start!86620 m!929689))

(declare-fun m!929691 () Bool)

(assert (=> b!1003942 m!929691))

(declare-fun m!929693 () Bool)

(assert (=> b!1003953 m!929693))

(assert (=> b!1003944 m!929663))

(assert (=> b!1003944 m!929663))

(declare-fun m!929695 () Bool)

(assert (=> b!1003944 m!929695))

(assert (=> b!1003944 m!929695))

(assert (=> b!1003944 m!929663))

(declare-fun m!929697 () Bool)

(assert (=> b!1003944 m!929697))

(declare-fun m!929699 () Bool)

(assert (=> b!1003949 m!929699))

(push 1)

