; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68258 () Bool)

(assert start!68258)

(declare-fun res!537256 () Bool)

(declare-fun e!440421 () Bool)

(assert (=> start!68258 (=> (not res!537256) (not e!440421))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68258 (= res!537256 (validMask!0 mask!3266))))

(assert (=> start!68258 e!440421))

(assert (=> start!68258 true))

(declare-datatypes ((array!42999 0))(
  ( (array!43000 (arr!20576 (Array (_ BitVec 32) (_ BitVec 64))) (size!20997 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!42999)

(declare-fun array_inv!16350 (array!42999) Bool)

(assert (=> start!68258 (array_inv!16350 a!3170)))

(declare-fun b!792564 () Bool)

(declare-fun res!537255 () Bool)

(declare-fun e!440420 () Bool)

(assert (=> b!792564 (=> (not res!537255) (not e!440420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42999 (_ BitVec 32)) Bool)

(assert (=> b!792564 (= res!537255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792565 () Bool)

(assert (=> b!792565 (= e!440420 false)))

(declare-fun lt!353521 () Bool)

(declare-datatypes ((List!14592 0))(
  ( (Nil!14589) (Cons!14588 (h!15717 (_ BitVec 64)) (t!20915 List!14592)) )
))
(declare-fun arrayNoDuplicates!0 (array!42999 (_ BitVec 32) List!14592) Bool)

(assert (=> b!792565 (= lt!353521 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14589))))

(declare-fun b!792566 () Bool)

(declare-fun res!537254 () Bool)

(assert (=> b!792566 (=> (not res!537254) (not e!440421))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792566 (= res!537254 (and (= (size!20997 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20997 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20997 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792567 () Bool)

(assert (=> b!792567 (= e!440421 e!440420)))

(declare-fun res!537253 () Bool)

(assert (=> b!792567 (=> (not res!537253) (not e!440420))))

(declare-datatypes ((SeekEntryResult!8174 0))(
  ( (MissingZero!8174 (index!35063 (_ BitVec 32))) (Found!8174 (index!35064 (_ BitVec 32))) (Intermediate!8174 (undefined!8986 Bool) (index!35065 (_ BitVec 32)) (x!66037 (_ BitVec 32))) (Undefined!8174) (MissingVacant!8174 (index!35066 (_ BitVec 32))) )
))
(declare-fun lt!353520 () SeekEntryResult!8174)

(assert (=> b!792567 (= res!537253 (or (= lt!353520 (MissingZero!8174 i!1163)) (= lt!353520 (MissingVacant!8174 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42999 (_ BitVec 32)) SeekEntryResult!8174)

(assert (=> b!792567 (= lt!353520 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792568 () Bool)

(declare-fun res!537259 () Bool)

(assert (=> b!792568 (=> (not res!537259) (not e!440421))))

(declare-fun arrayContainsKey!0 (array!42999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792568 (= res!537259 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792569 () Bool)

(declare-fun res!537258 () Bool)

(assert (=> b!792569 (=> (not res!537258) (not e!440421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792569 (= res!537258 (validKeyInArray!0 k!2044))))

(declare-fun b!792570 () Bool)

(declare-fun res!537257 () Bool)

(assert (=> b!792570 (=> (not res!537257) (not e!440421))))

(assert (=> b!792570 (= res!537257 (validKeyInArray!0 (select (arr!20576 a!3170) j!153)))))

(assert (= (and start!68258 res!537256) b!792566))

(assert (= (and b!792566 res!537254) b!792570))

(assert (= (and b!792570 res!537257) b!792569))

(assert (= (and b!792569 res!537258) b!792568))

(assert (= (and b!792568 res!537259) b!792567))

(assert (= (and b!792567 res!537253) b!792564))

(assert (= (and b!792564 res!537255) b!792565))

(declare-fun m!733183 () Bool)

(assert (=> b!792567 m!733183))

(declare-fun m!733185 () Bool)

(assert (=> b!792568 m!733185))

(declare-fun m!733187 () Bool)

(assert (=> start!68258 m!733187))

(declare-fun m!733189 () Bool)

(assert (=> start!68258 m!733189))

(declare-fun m!733191 () Bool)

(assert (=> b!792565 m!733191))

(declare-fun m!733193 () Bool)

(assert (=> b!792569 m!733193))

(declare-fun m!733195 () Bool)

(assert (=> b!792564 m!733195))

(declare-fun m!733197 () Bool)

(assert (=> b!792570 m!733197))

(assert (=> b!792570 m!733197))

(declare-fun m!733199 () Bool)

(assert (=> b!792570 m!733199))

(push 1)

(assert (not b!792564))

(assert (not b!792567))

(assert (not b!792570))

(assert (not start!68258))

