; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68260 () Bool)

(assert start!68260)

(declare-fun b!792587 () Bool)

(declare-fun res!537276 () Bool)

(declare-fun e!440431 () Bool)

(assert (=> b!792587 (=> (not res!537276) (not e!440431))))

(declare-datatypes ((array!43001 0))(
  ( (array!43002 (arr!20577 (Array (_ BitVec 32) (_ BitVec 64))) (size!20998 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43001)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43001 (_ BitVec 32)) Bool)

(assert (=> b!792587 (= res!537276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792588 () Bool)

(declare-fun res!537278 () Bool)

(declare-fun e!440429 () Bool)

(assert (=> b!792588 (=> (not res!537278) (not e!440429))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792588 (= res!537278 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792589 () Bool)

(assert (=> b!792589 (= e!440429 e!440431)))

(declare-fun res!537280 () Bool)

(assert (=> b!792589 (=> (not res!537280) (not e!440431))))

(declare-datatypes ((SeekEntryResult!8175 0))(
  ( (MissingZero!8175 (index!35067 (_ BitVec 32))) (Found!8175 (index!35068 (_ BitVec 32))) (Intermediate!8175 (undefined!8987 Bool) (index!35069 (_ BitVec 32)) (x!66046 (_ BitVec 32))) (Undefined!8175) (MissingVacant!8175 (index!35070 (_ BitVec 32))) )
))
(declare-fun lt!353524 () SeekEntryResult!8175)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792589 (= res!537280 (or (= lt!353524 (MissingZero!8175 i!1163)) (= lt!353524 (MissingVacant!8175 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43001 (_ BitVec 32)) SeekEntryResult!8175)

(assert (=> b!792589 (= lt!353524 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!537282 () Bool)

(assert (=> start!68260 (=> (not res!537282) (not e!440429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68260 (= res!537282 (validMask!0 mask!3266))))

(assert (=> start!68260 e!440429))

(assert (=> start!68260 true))

(declare-fun array_inv!16351 (array!43001) Bool)

(assert (=> start!68260 (array_inv!16351 a!3170)))

(declare-fun b!792590 () Bool)

(declare-fun res!537279 () Bool)

(assert (=> b!792590 (=> (not res!537279) (not e!440429))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792590 (= res!537279 (validKeyInArray!0 (select (arr!20577 a!3170) j!153)))))

(declare-fun b!792591 () Bool)

(declare-fun res!537281 () Bool)

(assert (=> b!792591 (=> (not res!537281) (not e!440431))))

(declare-datatypes ((List!14593 0))(
  ( (Nil!14590) (Cons!14589 (h!15718 (_ BitVec 64)) (t!20916 List!14593)) )
))
(declare-fun arrayNoDuplicates!0 (array!43001 (_ BitVec 32) List!14593) Bool)

(assert (=> b!792591 (= res!537281 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14590))))

(declare-fun b!792592 () Bool)

(declare-fun res!537277 () Bool)

(assert (=> b!792592 (=> (not res!537277) (not e!440429))))

(assert (=> b!792592 (= res!537277 (validKeyInArray!0 k!2044))))

(declare-fun b!792593 () Bool)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!792593 (= e!440431 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!20998 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20577 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!20998 a!3170)) (= (select (arr!20577 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(declare-fun b!792594 () Bool)

(declare-fun res!537283 () Bool)

(assert (=> b!792594 (=> (not res!537283) (not e!440429))))

(assert (=> b!792594 (= res!537283 (and (= (size!20998 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20998 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20998 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68260 res!537282) b!792594))

(assert (= (and b!792594 res!537283) b!792590))

(assert (= (and b!792590 res!537279) b!792592))

(assert (= (and b!792592 res!537277) b!792588))

(assert (= (and b!792588 res!537278) b!792589))

(assert (= (and b!792589 res!537280) b!792587))

(assert (= (and b!792587 res!537276) b!792591))

(assert (= (and b!792591 res!537281) b!792593))

(declare-fun m!733201 () Bool)

(assert (=> start!68260 m!733201))

(declare-fun m!733203 () Bool)

(assert (=> start!68260 m!733203))

(declare-fun m!733205 () Bool)

(assert (=> b!792589 m!733205))

(declare-fun m!733207 () Bool)

(assert (=> b!792592 m!733207))

(declare-fun m!733209 () Bool)

(assert (=> b!792588 m!733209))

(declare-fun m!733211 () Bool)

(assert (=> b!792587 m!733211))

(declare-fun m!733213 () Bool)

(assert (=> b!792591 m!733213))

(declare-fun m!733215 () Bool)

(assert (=> b!792593 m!733215))

(declare-fun m!733217 () Bool)

(assert (=> b!792593 m!733217))

(declare-fun m!733219 () Bool)

(assert (=> b!792590 m!733219))

(assert (=> b!792590 m!733219))

(declare-fun m!733221 () Bool)

(assert (=> b!792590 m!733221))

(push 1)

(assert (not b!792592))

(assert (not b!792589))

(assert (not b!792587))

(assert (not b!792591))

(assert (not start!68260))

(assert (not b!792588))

(assert (not b!792590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

