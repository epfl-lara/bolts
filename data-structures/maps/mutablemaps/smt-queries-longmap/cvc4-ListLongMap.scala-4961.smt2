; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68300 () Bool)

(assert start!68300)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43041 0))(
  ( (array!43042 (arr!20597 (Array (_ BitVec 32) (_ BitVec 64))) (size!21018 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43041)

(declare-fun e!440610 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun b!793049 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793049 (= e!440610 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21018 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20597 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21018 a!3170)) (= (select (arr!20597 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun res!537740 () Bool)

(declare-fun e!440609 () Bool)

(assert (=> start!68300 (=> (not res!537740) (not e!440609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68300 (= res!537740 (validMask!0 mask!3266))))

(assert (=> start!68300 e!440609))

(assert (=> start!68300 true))

(declare-fun array_inv!16371 (array!43041) Bool)

(assert (=> start!68300 (array_inv!16371 a!3170)))

(declare-fun b!793050 () Bool)

(assert (=> b!793050 (= e!440609 e!440610)))

(declare-fun res!537745 () Bool)

(assert (=> b!793050 (=> (not res!537745) (not e!440610))))

(declare-datatypes ((SeekEntryResult!8195 0))(
  ( (MissingZero!8195 (index!35147 (_ BitVec 32))) (Found!8195 (index!35148 (_ BitVec 32))) (Intermediate!8195 (undefined!9007 Bool) (index!35149 (_ BitVec 32)) (x!66114 (_ BitVec 32))) (Undefined!8195) (MissingVacant!8195 (index!35150 (_ BitVec 32))) )
))
(declare-fun lt!353611 () SeekEntryResult!8195)

(assert (=> b!793050 (= res!537745 (or (= lt!353611 (MissingZero!8195 i!1163)) (= lt!353611 (MissingVacant!8195 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43041 (_ BitVec 32)) SeekEntryResult!8195)

(assert (=> b!793050 (= lt!353611 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793051 () Bool)

(declare-fun res!537744 () Bool)

(assert (=> b!793051 (=> (not res!537744) (not e!440609))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793051 (= res!537744 (and (= (size!21018 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21018 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21018 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793052 () Bool)

(declare-fun res!537739 () Bool)

(assert (=> b!793052 (=> (not res!537739) (not e!440609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793052 (= res!537739 (validKeyInArray!0 k!2044))))

(declare-fun b!793053 () Bool)

(declare-fun res!537743 () Bool)

(assert (=> b!793053 (=> (not res!537743) (not e!440610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43041 (_ BitVec 32)) Bool)

(assert (=> b!793053 (= res!537743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793054 () Bool)

(declare-fun res!537741 () Bool)

(assert (=> b!793054 (=> (not res!537741) (not e!440610))))

(declare-datatypes ((List!14613 0))(
  ( (Nil!14610) (Cons!14609 (h!15738 (_ BitVec 64)) (t!20936 List!14613)) )
))
(declare-fun arrayNoDuplicates!0 (array!43041 (_ BitVec 32) List!14613) Bool)

(assert (=> b!793054 (= res!537741 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14610))))

(declare-fun b!793055 () Bool)

(declare-fun res!537738 () Bool)

(assert (=> b!793055 (=> (not res!537738) (not e!440609))))

(assert (=> b!793055 (= res!537738 (validKeyInArray!0 (select (arr!20597 a!3170) j!153)))))

(declare-fun b!793056 () Bool)

(declare-fun res!537742 () Bool)

(assert (=> b!793056 (=> (not res!537742) (not e!440609))))

(declare-fun arrayContainsKey!0 (array!43041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793056 (= res!537742 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68300 res!537740) b!793051))

(assert (= (and b!793051 res!537744) b!793055))

(assert (= (and b!793055 res!537738) b!793052))

(assert (= (and b!793052 res!537739) b!793056))

(assert (= (and b!793056 res!537742) b!793050))

(assert (= (and b!793050 res!537745) b!793053))

(assert (= (and b!793053 res!537743) b!793054))

(assert (= (and b!793054 res!537741) b!793049))

(declare-fun m!733623 () Bool)

(assert (=> b!793049 m!733623))

(declare-fun m!733625 () Bool)

(assert (=> b!793049 m!733625))

(declare-fun m!733627 () Bool)

(assert (=> b!793055 m!733627))

(assert (=> b!793055 m!733627))

(declare-fun m!733629 () Bool)

(assert (=> b!793055 m!733629))

(declare-fun m!733631 () Bool)

(assert (=> start!68300 m!733631))

(declare-fun m!733633 () Bool)

(assert (=> start!68300 m!733633))

(declare-fun m!733635 () Bool)

(assert (=> b!793054 m!733635))

(declare-fun m!733637 () Bool)

(assert (=> b!793052 m!733637))

(declare-fun m!733639 () Bool)

(assert (=> b!793050 m!733639))

(declare-fun m!733641 () Bool)

(assert (=> b!793053 m!733641))

(declare-fun m!733643 () Bool)

(assert (=> b!793056 m!733643))

(push 1)

(assert (not start!68300))

(assert (not b!793055))

(assert (not b!793052))

(assert (not b!793050))

(assert (not b!793053))

(assert (not b!793054))

(assert (not b!793056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

