; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46242 () Bool)

(assert start!46242)

(declare-fun res!312587 () Bool)

(declare-fun e!298971 () Bool)

(assert (=> start!46242 (=> (not res!312587) (not e!298971))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46242 (= res!312587 (validMask!0 mask!3524))))

(assert (=> start!46242 e!298971))

(assert (=> start!46242 true))

(declare-datatypes ((array!32856 0))(
  ( (array!32857 (arr!15802 (Array (_ BitVec 32) (_ BitVec 64))) (size!16166 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32856)

(declare-fun array_inv!11576 (array!32856) Bool)

(assert (=> start!46242 (array_inv!11576 a!3235)))

(declare-fun b!511775 () Bool)

(declare-fun e!298969 () Bool)

(assert (=> b!511775 (= e!298969 true)))

(declare-datatypes ((SeekEntryResult!4276 0))(
  ( (MissingZero!4276 (index!19292 (_ BitVec 32))) (Found!4276 (index!19293 (_ BitVec 32))) (Intermediate!4276 (undefined!5088 Bool) (index!19294 (_ BitVec 32)) (x!48270 (_ BitVec 32))) (Undefined!4276) (MissingVacant!4276 (index!19295 (_ BitVec 32))) )
))
(declare-fun lt!234262 () SeekEntryResult!4276)

(assert (=> b!511775 (= lt!234262 Undefined!4276)))

(declare-fun b!511776 () Bool)

(declare-fun res!312593 () Bool)

(assert (=> b!511776 (=> res!312593 e!298969)))

(declare-fun lt!234265 () SeekEntryResult!4276)

(get-info :version)

(assert (=> b!511776 (= res!312593 (or (not ((_ is Intermediate!4276) lt!234265)) (not (undefined!5088 lt!234265))))))

(declare-fun b!511777 () Bool)

(declare-fun res!312594 () Bool)

(assert (=> b!511777 (=> (not res!312594) (not e!298971))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511777 (= res!312594 (and (= (size!16166 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16166 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16166 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511778 () Bool)

(declare-fun res!312590 () Bool)

(declare-fun e!298970 () Bool)

(assert (=> b!511778 (=> (not res!312590) (not e!298970))))

(declare-datatypes ((List!10013 0))(
  ( (Nil!10010) (Cons!10009 (h!10889 (_ BitVec 64)) (t!16249 List!10013)) )
))
(declare-fun arrayNoDuplicates!0 (array!32856 (_ BitVec 32) List!10013) Bool)

(assert (=> b!511778 (= res!312590 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10010))))

(declare-fun b!511779 () Bool)

(assert (=> b!511779 (= e!298970 (not e!298969))))

(declare-fun res!312588 () Bool)

(assert (=> b!511779 (=> res!312588 e!298969)))

(declare-fun lt!234261 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32856 (_ BitVec 32)) SeekEntryResult!4276)

(assert (=> b!511779 (= res!312588 (= lt!234265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234261 (select (store (arr!15802 a!3235) i!1204 k0!2280) j!176) (array!32857 (store (arr!15802 a!3235) i!1204 k0!2280) (size!16166 a!3235)) mask!3524)))))

(declare-fun lt!234264 () (_ BitVec 32))

(assert (=> b!511779 (= lt!234265 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234264 (select (arr!15802 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511779 (= lt!234261 (toIndex!0 (select (store (arr!15802 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!511779 (= lt!234264 (toIndex!0 (select (arr!15802 a!3235) j!176) mask!3524))))

(assert (=> b!511779 (= lt!234262 (Found!4276 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32856 (_ BitVec 32)) SeekEntryResult!4276)

(assert (=> b!511779 (= lt!234262 (seekEntryOrOpen!0 (select (arr!15802 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32856 (_ BitVec 32)) Bool)

(assert (=> b!511779 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15802 0))(
  ( (Unit!15803) )
))
(declare-fun lt!234266 () Unit!15802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15802)

(assert (=> b!511779 (= lt!234266 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511780 () Bool)

(declare-fun res!312591 () Bool)

(assert (=> b!511780 (=> (not res!312591) (not e!298971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511780 (= res!312591 (validKeyInArray!0 (select (arr!15802 a!3235) j!176)))))

(declare-fun b!511781 () Bool)

(declare-fun res!312589 () Bool)

(assert (=> b!511781 (=> (not res!312589) (not e!298970))))

(assert (=> b!511781 (= res!312589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511782 () Bool)

(declare-fun res!312592 () Bool)

(assert (=> b!511782 (=> (not res!312592) (not e!298971))))

(declare-fun arrayContainsKey!0 (array!32856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511782 (= res!312592 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511783 () Bool)

(assert (=> b!511783 (= e!298971 e!298970)))

(declare-fun res!312596 () Bool)

(assert (=> b!511783 (=> (not res!312596) (not e!298970))))

(declare-fun lt!234263 () SeekEntryResult!4276)

(assert (=> b!511783 (= res!312596 (or (= lt!234263 (MissingZero!4276 i!1204)) (= lt!234263 (MissingVacant!4276 i!1204))))))

(assert (=> b!511783 (= lt!234263 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!511784 () Bool)

(declare-fun res!312595 () Bool)

(assert (=> b!511784 (=> (not res!312595) (not e!298971))))

(assert (=> b!511784 (= res!312595 (validKeyInArray!0 k0!2280))))

(assert (= (and start!46242 res!312587) b!511777))

(assert (= (and b!511777 res!312594) b!511780))

(assert (= (and b!511780 res!312591) b!511784))

(assert (= (and b!511784 res!312595) b!511782))

(assert (= (and b!511782 res!312592) b!511783))

(assert (= (and b!511783 res!312596) b!511781))

(assert (= (and b!511781 res!312589) b!511778))

(assert (= (and b!511778 res!312590) b!511779))

(assert (= (and b!511779 (not res!312588)) b!511776))

(assert (= (and b!511776 (not res!312593)) b!511775))

(declare-fun m!493375 () Bool)

(assert (=> b!511778 m!493375))

(declare-fun m!493377 () Bool)

(assert (=> start!46242 m!493377))

(declare-fun m!493379 () Bool)

(assert (=> start!46242 m!493379))

(declare-fun m!493381 () Bool)

(assert (=> b!511780 m!493381))

(assert (=> b!511780 m!493381))

(declare-fun m!493383 () Bool)

(assert (=> b!511780 m!493383))

(declare-fun m!493385 () Bool)

(assert (=> b!511781 m!493385))

(declare-fun m!493387 () Bool)

(assert (=> b!511784 m!493387))

(declare-fun m!493389 () Bool)

(assert (=> b!511783 m!493389))

(declare-fun m!493391 () Bool)

(assert (=> b!511782 m!493391))

(declare-fun m!493393 () Bool)

(assert (=> b!511779 m!493393))

(declare-fun m!493395 () Bool)

(assert (=> b!511779 m!493395))

(declare-fun m!493397 () Bool)

(assert (=> b!511779 m!493397))

(assert (=> b!511779 m!493397))

(declare-fun m!493399 () Bool)

(assert (=> b!511779 m!493399))

(assert (=> b!511779 m!493381))

(declare-fun m!493401 () Bool)

(assert (=> b!511779 m!493401))

(assert (=> b!511779 m!493381))

(declare-fun m!493403 () Bool)

(assert (=> b!511779 m!493403))

(assert (=> b!511779 m!493381))

(declare-fun m!493405 () Bool)

(assert (=> b!511779 m!493405))

(assert (=> b!511779 m!493397))

(declare-fun m!493407 () Bool)

(assert (=> b!511779 m!493407))

(assert (=> b!511779 m!493381))

(declare-fun m!493409 () Bool)

(assert (=> b!511779 m!493409))

(check-sat (not b!511782) (not b!511781) (not b!511780) (not b!511784) (not b!511779) (not start!46242) (not b!511778) (not b!511783))
(check-sat)
