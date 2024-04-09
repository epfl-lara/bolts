; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68104 () Bool)

(assert start!68104)

(declare-fun res!536760 () Bool)

(declare-fun e!440011 () Bool)

(assert (=> start!68104 (=> (not res!536760) (not e!440011))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68104 (= res!536760 (validMask!0 mask!3266))))

(assert (=> start!68104 e!440011))

(assert (=> start!68104 true))

(declare-datatypes ((array!42962 0))(
  ( (array!42963 (arr!20562 (Array (_ BitVec 32) (_ BitVec 64))) (size!20983 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42962)

(declare-fun array_inv!16336 (array!42962) Bool)

(assert (=> start!68104 (array_inv!16336 a!3170)))

(declare-fun b!791850 () Bool)

(declare-fun e!440009 () Bool)

(assert (=> b!791850 (= e!440011 e!440009)))

(declare-fun res!536759 () Bool)

(assert (=> b!791850 (=> (not res!536759) (not e!440009))))

(declare-datatypes ((SeekEntryResult!8160 0))(
  ( (MissingZero!8160 (index!35007 (_ BitVec 32))) (Found!8160 (index!35008 (_ BitVec 32))) (Intermediate!8160 (undefined!8972 Bool) (index!35009 (_ BitVec 32)) (x!65991 (_ BitVec 32))) (Undefined!8160) (MissingVacant!8160 (index!35010 (_ BitVec 32))) )
))
(declare-fun lt!353296 () SeekEntryResult!8160)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!791850 (= res!536759 (or (= lt!353296 (MissingZero!8160 i!1163)) (= lt!353296 (MissingVacant!8160 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42962 (_ BitVec 32)) SeekEntryResult!8160)

(assert (=> b!791850 (= lt!353296 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!791851 () Bool)

(declare-fun res!536757 () Bool)

(assert (=> b!791851 (=> (not res!536757) (not e!440011))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791851 (= res!536757 (validKeyInArray!0 (select (arr!20562 a!3170) j!153)))))

(declare-fun b!791852 () Bool)

(declare-fun res!536761 () Bool)

(assert (=> b!791852 (=> (not res!536761) (not e!440011))))

(assert (=> b!791852 (= res!536761 (validKeyInArray!0 k!2044))))

(declare-fun b!791853 () Bool)

(declare-fun res!536755 () Bool)

(assert (=> b!791853 (=> (not res!536755) (not e!440011))))

(assert (=> b!791853 (= res!536755 (and (= (size!20983 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20983 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20983 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!791854 () Bool)

(declare-fun res!536756 () Bool)

(assert (=> b!791854 (=> (not res!536756) (not e!440009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42962 (_ BitVec 32)) Bool)

(assert (=> b!791854 (= res!536756 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!791855 () Bool)

(assert (=> b!791855 (= e!440009 (bvsgt #b00000000000000000000000000000000 (size!20983 a!3170)))))

(declare-fun b!791856 () Bool)

(declare-fun res!536758 () Bool)

(assert (=> b!791856 (=> (not res!536758) (not e!440011))))

(declare-fun arrayContainsKey!0 (array!42962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791856 (= res!536758 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68104 res!536760) b!791853))

(assert (= (and b!791853 res!536755) b!791851))

(assert (= (and b!791851 res!536757) b!791852))

(assert (= (and b!791852 res!536761) b!791856))

(assert (= (and b!791856 res!536758) b!791850))

(assert (= (and b!791850 res!536759) b!791854))

(assert (= (and b!791854 res!536756) b!791855))

(declare-fun m!732625 () Bool)

(assert (=> b!791851 m!732625))

(assert (=> b!791851 m!732625))

(declare-fun m!732627 () Bool)

(assert (=> b!791851 m!732627))

(declare-fun m!732629 () Bool)

(assert (=> start!68104 m!732629))

(declare-fun m!732631 () Bool)

(assert (=> start!68104 m!732631))

(declare-fun m!732633 () Bool)

(assert (=> b!791850 m!732633))

(declare-fun m!732635 () Bool)

(assert (=> b!791852 m!732635))

(declare-fun m!732637 () Bool)

(assert (=> b!791854 m!732637))

(declare-fun m!732639 () Bool)

(assert (=> b!791856 m!732639))

(push 1)

