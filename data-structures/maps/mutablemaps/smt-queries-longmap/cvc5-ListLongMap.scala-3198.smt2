; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44884 () Bool)

(assert start!44884)

(declare-fun b!492222 () Bool)

(declare-fun e!289160 () Bool)

(assert (=> b!492222 (= e!289160 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3780 0))(
  ( (MissingZero!3780 (index!17299 (_ BitVec 32))) (Found!3780 (index!17300 (_ BitVec 32))) (Intermediate!3780 (undefined!4592 Bool) (index!17301 (_ BitVec 32)) (x!46415 (_ BitVec 32))) (Undefined!3780) (MissingVacant!3780 (index!17302 (_ BitVec 32))) )
))
(declare-fun lt!222573 () SeekEntryResult!3780)

(declare-datatypes ((array!31846 0))(
  ( (array!31847 (arr!15306 (Array (_ BitVec 32) (_ BitVec 64))) (size!15670 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31846)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!222574 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31846 (_ BitVec 32)) SeekEntryResult!3780)

(assert (=> b!492222 (= lt!222573 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222574 (select (store (arr!15306 a!3235) i!1204 k!2280) j!176) (array!31847 (store (arr!15306 a!3235) i!1204 k!2280) (size!15670 a!3235)) mask!3524))))

(declare-fun lt!222571 () SeekEntryResult!3780)

(declare-fun lt!222572 () (_ BitVec 32))

(assert (=> b!492222 (= lt!222571 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!222572 (select (arr!15306 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!492222 (= lt!222574 (toIndex!0 (select (store (arr!15306 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!492222 (= lt!222572 (toIndex!0 (select (arr!15306 a!3235) j!176) mask!3524))))

(declare-fun e!289161 () Bool)

(assert (=> b!492222 e!289161))

(declare-fun res!295131 () Bool)

(assert (=> b!492222 (=> (not res!295131) (not e!289161))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31846 (_ BitVec 32)) Bool)

(assert (=> b!492222 (= res!295131 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14498 0))(
  ( (Unit!14499) )
))
(declare-fun lt!222575 () Unit!14498)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14498)

(assert (=> b!492222 (= lt!222575 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!492223 () Bool)

(declare-fun res!295133 () Bool)

(declare-fun e!289159 () Bool)

(assert (=> b!492223 (=> (not res!295133) (not e!289159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!492223 (= res!295133 (validKeyInArray!0 k!2280))))

(declare-fun b!492224 () Bool)

(declare-fun res!295125 () Bool)

(assert (=> b!492224 (=> (not res!295125) (not e!289159))))

(declare-fun arrayContainsKey!0 (array!31846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!492224 (= res!295125 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!492225 () Bool)

(assert (=> b!492225 (= e!289159 e!289160)))

(declare-fun res!295128 () Bool)

(assert (=> b!492225 (=> (not res!295128) (not e!289160))))

(declare-fun lt!222570 () SeekEntryResult!3780)

(assert (=> b!492225 (= res!295128 (or (= lt!222570 (MissingZero!3780 i!1204)) (= lt!222570 (MissingVacant!3780 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31846 (_ BitVec 32)) SeekEntryResult!3780)

(assert (=> b!492225 (= lt!222570 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!492226 () Bool)

(declare-fun res!295129 () Bool)

(assert (=> b!492226 (=> (not res!295129) (not e!289160))))

(declare-datatypes ((List!9517 0))(
  ( (Nil!9514) (Cons!9513 (h!10378 (_ BitVec 64)) (t!15753 List!9517)) )
))
(declare-fun arrayNoDuplicates!0 (array!31846 (_ BitVec 32) List!9517) Bool)

(assert (=> b!492226 (= res!295129 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9514))))

(declare-fun b!492227 () Bool)

(declare-fun res!295130 () Bool)

(assert (=> b!492227 (=> (not res!295130) (not e!289160))))

(assert (=> b!492227 (= res!295130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!295127 () Bool)

(assert (=> start!44884 (=> (not res!295127) (not e!289159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44884 (= res!295127 (validMask!0 mask!3524))))

(assert (=> start!44884 e!289159))

(assert (=> start!44884 true))

(declare-fun array_inv!11080 (array!31846) Bool)

(assert (=> start!44884 (array_inv!11080 a!3235)))

(declare-fun b!492228 () Bool)

(declare-fun res!295126 () Bool)

(assert (=> b!492228 (=> (not res!295126) (not e!289159))))

(assert (=> b!492228 (= res!295126 (and (= (size!15670 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15670 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15670 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!492229 () Bool)

(assert (=> b!492229 (= e!289161 (= (seekEntryOrOpen!0 (select (arr!15306 a!3235) j!176) a!3235 mask!3524) (Found!3780 j!176)))))

(declare-fun b!492230 () Bool)

(declare-fun res!295132 () Bool)

(assert (=> b!492230 (=> (not res!295132) (not e!289159))))

(assert (=> b!492230 (= res!295132 (validKeyInArray!0 (select (arr!15306 a!3235) j!176)))))

(assert (= (and start!44884 res!295127) b!492228))

(assert (= (and b!492228 res!295126) b!492230))

(assert (= (and b!492230 res!295132) b!492223))

(assert (= (and b!492223 res!295133) b!492224))

(assert (= (and b!492224 res!295125) b!492225))

(assert (= (and b!492225 res!295128) b!492227))

(assert (= (and b!492227 res!295130) b!492226))

(assert (= (and b!492226 res!295129) b!492222))

(assert (= (and b!492222 res!295131) b!492229))

(declare-fun m!472981 () Bool)

(assert (=> b!492226 m!472981))

(declare-fun m!472983 () Bool)

(assert (=> b!492225 m!472983))

(declare-fun m!472985 () Bool)

(assert (=> b!492223 m!472985))

(declare-fun m!472987 () Bool)

(assert (=> b!492224 m!472987))

(declare-fun m!472989 () Bool)

(assert (=> b!492230 m!472989))

(assert (=> b!492230 m!472989))

(declare-fun m!472991 () Bool)

(assert (=> b!492230 m!472991))

(assert (=> b!492229 m!472989))

(assert (=> b!492229 m!472989))

(declare-fun m!472993 () Bool)

(assert (=> b!492229 m!472993))

(declare-fun m!472995 () Bool)

(assert (=> start!44884 m!472995))

(declare-fun m!472997 () Bool)

(assert (=> start!44884 m!472997))

(declare-fun m!472999 () Bool)

(assert (=> b!492227 m!472999))

(declare-fun m!473001 () Bool)

(assert (=> b!492222 m!473001))

(declare-fun m!473003 () Bool)

(assert (=> b!492222 m!473003))

(declare-fun m!473005 () Bool)

(assert (=> b!492222 m!473005))

(assert (=> b!492222 m!473005))

(declare-fun m!473007 () Bool)

(assert (=> b!492222 m!473007))

(assert (=> b!492222 m!472989))

(declare-fun m!473009 () Bool)

(assert (=> b!492222 m!473009))

(assert (=> b!492222 m!472989))

(declare-fun m!473011 () Bool)

(assert (=> b!492222 m!473011))

(assert (=> b!492222 m!473005))

(declare-fun m!473013 () Bool)

(assert (=> b!492222 m!473013))

(assert (=> b!492222 m!472989))

(declare-fun m!473015 () Bool)

(assert (=> b!492222 m!473015))

(push 1)

