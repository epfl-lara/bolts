; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46244 () Bool)

(assert start!46244)

(declare-fun b!511805 () Bool)

(declare-fun res!312625 () Bool)

(declare-fun e!298981 () Bool)

(assert (=> b!511805 (=> (not res!312625) (not e!298981))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32858 0))(
  ( (array!32859 (arr!15803 (Array (_ BitVec 32) (_ BitVec 64))) (size!16167 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32858)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511805 (= res!312625 (and (= (size!16167 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16167 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16167 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511806 () Bool)

(declare-fun e!298982 () Bool)

(declare-fun e!298984 () Bool)

(assert (=> b!511806 (= e!298982 (not e!298984))))

(declare-fun res!312623 () Bool)

(assert (=> b!511806 (=> res!312623 e!298984)))

(declare-datatypes ((SeekEntryResult!4277 0))(
  ( (MissingZero!4277 (index!19296 (_ BitVec 32))) (Found!4277 (index!19297 (_ BitVec 32))) (Intermediate!4277 (undefined!5089 Bool) (index!19298 (_ BitVec 32)) (x!48271 (_ BitVec 32))) (Undefined!4277) (MissingVacant!4277 (index!19299 (_ BitVec 32))) )
))
(declare-fun lt!234281 () SeekEntryResult!4277)

(declare-fun lt!234284 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32858 (_ BitVec 32)) SeekEntryResult!4277)

(assert (=> b!511806 (= res!312623 (= lt!234281 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234284 (select (store (arr!15803 a!3235) i!1204 k!2280) j!176) (array!32859 (store (arr!15803 a!3235) i!1204 k!2280) (size!16167 a!3235)) mask!3524)))))

(declare-fun lt!234279 () (_ BitVec 32))

(assert (=> b!511806 (= lt!234281 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234279 (select (arr!15803 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511806 (= lt!234284 (toIndex!0 (select (store (arr!15803 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511806 (= lt!234279 (toIndex!0 (select (arr!15803 a!3235) j!176) mask!3524))))

(declare-fun lt!234280 () SeekEntryResult!4277)

(assert (=> b!511806 (= lt!234280 (Found!4277 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32858 (_ BitVec 32)) SeekEntryResult!4277)

(assert (=> b!511806 (= lt!234280 (seekEntryOrOpen!0 (select (arr!15803 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32858 (_ BitVec 32)) Bool)

(assert (=> b!511806 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15804 0))(
  ( (Unit!15805) )
))
(declare-fun lt!234283 () Unit!15804)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32858 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15804)

(assert (=> b!511806 (= lt!234283 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511807 () Bool)

(declare-fun res!312620 () Bool)

(assert (=> b!511807 (=> (not res!312620) (not e!298981))))

(declare-fun arrayContainsKey!0 (array!32858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511807 (= res!312620 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!312626 () Bool)

(assert (=> start!46244 (=> (not res!312626) (not e!298981))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46244 (= res!312626 (validMask!0 mask!3524))))

(assert (=> start!46244 e!298981))

(assert (=> start!46244 true))

(declare-fun array_inv!11577 (array!32858) Bool)

(assert (=> start!46244 (array_inv!11577 a!3235)))

(declare-fun b!511808 () Bool)

(assert (=> b!511808 (= e!298984 true)))

(assert (=> b!511808 (= lt!234280 Undefined!4277)))

(declare-fun b!511809 () Bool)

(declare-fun res!312624 () Bool)

(assert (=> b!511809 (=> res!312624 e!298984)))

(assert (=> b!511809 (= res!312624 (or (not (is-Intermediate!4277 lt!234281)) (not (undefined!5089 lt!234281))))))

(declare-fun b!511810 () Bool)

(declare-fun res!312622 () Bool)

(assert (=> b!511810 (=> (not res!312622) (not e!298982))))

(assert (=> b!511810 (= res!312622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511811 () Bool)

(declare-fun res!312621 () Bool)

(assert (=> b!511811 (=> (not res!312621) (not e!298982))))

(declare-datatypes ((List!10014 0))(
  ( (Nil!10011) (Cons!10010 (h!10890 (_ BitVec 64)) (t!16250 List!10014)) )
))
(declare-fun arrayNoDuplicates!0 (array!32858 (_ BitVec 32) List!10014) Bool)

(assert (=> b!511811 (= res!312621 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10011))))

(declare-fun b!511812 () Bool)

(assert (=> b!511812 (= e!298981 e!298982)))

(declare-fun res!312617 () Bool)

(assert (=> b!511812 (=> (not res!312617) (not e!298982))))

(declare-fun lt!234282 () SeekEntryResult!4277)

(assert (=> b!511812 (= res!312617 (or (= lt!234282 (MissingZero!4277 i!1204)) (= lt!234282 (MissingVacant!4277 i!1204))))))

(assert (=> b!511812 (= lt!234282 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511813 () Bool)

(declare-fun res!312619 () Bool)

(assert (=> b!511813 (=> (not res!312619) (not e!298981))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511813 (= res!312619 (validKeyInArray!0 (select (arr!15803 a!3235) j!176)))))

(declare-fun b!511814 () Bool)

(declare-fun res!312618 () Bool)

(assert (=> b!511814 (=> (not res!312618) (not e!298981))))

(assert (=> b!511814 (= res!312618 (validKeyInArray!0 k!2280))))

(assert (= (and start!46244 res!312626) b!511805))

(assert (= (and b!511805 res!312625) b!511813))

(assert (= (and b!511813 res!312619) b!511814))

(assert (= (and b!511814 res!312618) b!511807))

(assert (= (and b!511807 res!312620) b!511812))

(assert (= (and b!511812 res!312617) b!511810))

(assert (= (and b!511810 res!312622) b!511811))

(assert (= (and b!511811 res!312621) b!511806))

(assert (= (and b!511806 (not res!312623)) b!511809))

(assert (= (and b!511809 (not res!312624)) b!511808))

(declare-fun m!493411 () Bool)

(assert (=> b!511814 m!493411))

(declare-fun m!493413 () Bool)

(assert (=> b!511813 m!493413))

(assert (=> b!511813 m!493413))

(declare-fun m!493415 () Bool)

(assert (=> b!511813 m!493415))

(declare-fun m!493417 () Bool)

(assert (=> b!511807 m!493417))

(declare-fun m!493419 () Bool)

(assert (=> start!46244 m!493419))

(declare-fun m!493421 () Bool)

(assert (=> start!46244 m!493421))

(declare-fun m!493423 () Bool)

(assert (=> b!511812 m!493423))

(declare-fun m!493425 () Bool)

(assert (=> b!511810 m!493425))

(declare-fun m!493427 () Bool)

(assert (=> b!511811 m!493427))

(declare-fun m!493429 () Bool)

(assert (=> b!511806 m!493429))

(declare-fun m!493431 () Bool)

(assert (=> b!511806 m!493431))

(declare-fun m!493433 () Bool)

(assert (=> b!511806 m!493433))

(assert (=> b!511806 m!493433))

(declare-fun m!493435 () Bool)

(assert (=> b!511806 m!493435))

(assert (=> b!511806 m!493413))

(declare-fun m!493437 () Bool)

(assert (=> b!511806 m!493437))

(assert (=> b!511806 m!493413))

(declare-fun m!493439 () Bool)

(assert (=> b!511806 m!493439))

(assert (=> b!511806 m!493433))

(declare-fun m!493441 () Bool)

(assert (=> b!511806 m!493441))

(assert (=> b!511806 m!493413))

(declare-fun m!493443 () Bool)

(assert (=> b!511806 m!493443))

(assert (=> b!511806 m!493413))

(declare-fun m!493445 () Bool)

(assert (=> b!511806 m!493445))

(push 1)

