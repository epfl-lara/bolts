; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68450 () Bool)

(assert start!68450)

(declare-fun b!795180 () Bool)

(declare-fun res!539875 () Bool)

(declare-fun e!441401 () Bool)

(assert (=> b!795180 (=> (not res!539875) (not e!441401))))

(declare-datatypes ((array!43191 0))(
  ( (array!43192 (arr!20672 (Array (_ BitVec 32) (_ BitVec 64))) (size!21093 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43191)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43191 (_ BitVec 32)) Bool)

(assert (=> b!795180 (= res!539875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795181 () Bool)

(declare-fun e!441400 () Bool)

(assert (=> b!795181 (= e!441400 e!441401)))

(declare-fun res!539873 () Bool)

(assert (=> b!795181 (=> (not res!539873) (not e!441401))))

(declare-datatypes ((SeekEntryResult!8270 0))(
  ( (MissingZero!8270 (index!35447 (_ BitVec 32))) (Found!8270 (index!35448 (_ BitVec 32))) (Intermediate!8270 (undefined!9082 Bool) (index!35449 (_ BitVec 32)) (x!66389 (_ BitVec 32))) (Undefined!8270) (MissingVacant!8270 (index!35450 (_ BitVec 32))) )
))
(declare-fun lt!354475 () SeekEntryResult!8270)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795181 (= res!539873 (or (= lt!354475 (MissingZero!8270 i!1163)) (= lt!354475 (MissingVacant!8270 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43191 (_ BitVec 32)) SeekEntryResult!8270)

(assert (=> b!795181 (= lt!354475 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795182 () Bool)

(declare-fun res!539878 () Bool)

(assert (=> b!795182 (=> (not res!539878) (not e!441400))))

(declare-fun arrayContainsKey!0 (array!43191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795182 (= res!539878 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!539874 () Bool)

(assert (=> start!68450 (=> (not res!539874) (not e!441400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68450 (= res!539874 (validMask!0 mask!3266))))

(assert (=> start!68450 e!441400))

(assert (=> start!68450 true))

(declare-fun array_inv!16446 (array!43191) Bool)

(assert (=> start!68450 (array_inv!16446 a!3170)))

(declare-fun b!795183 () Bool)

(declare-fun e!441402 () Bool)

(assert (=> b!795183 (= e!441401 e!441402)))

(declare-fun res!539869 () Bool)

(assert (=> b!795183 (=> (not res!539869) (not e!441402))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354472 () array!43191)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!354473 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43191 (_ BitVec 32)) SeekEntryResult!8270)

(assert (=> b!795183 (= res!539869 (= (seekEntryOrOpen!0 lt!354473 lt!354472 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354473 lt!354472 mask!3266)))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!795183 (= lt!354473 (select (store (arr!20672 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795183 (= lt!354472 (array!43192 (store (arr!20672 a!3170) i!1163 k!2044) (size!21093 a!3170)))))

(declare-fun b!795184 () Bool)

(assert (=> b!795184 (= e!441402 false)))

(declare-fun lt!354471 () SeekEntryResult!8270)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!795184 (= lt!354471 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20672 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354474 () SeekEntryResult!8270)

(assert (=> b!795184 (= lt!354474 (seekEntryOrOpen!0 (select (arr!20672 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795185 () Bool)

(declare-fun res!539872 () Bool)

(assert (=> b!795185 (=> (not res!539872) (not e!441400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795185 (= res!539872 (validKeyInArray!0 (select (arr!20672 a!3170) j!153)))))

(declare-fun b!795186 () Bool)

(declare-fun res!539871 () Bool)

(assert (=> b!795186 (=> (not res!539871) (not e!441400))))

(assert (=> b!795186 (= res!539871 (validKeyInArray!0 k!2044))))

(declare-fun b!795187 () Bool)

(declare-fun res!539870 () Bool)

(assert (=> b!795187 (=> (not res!539870) (not e!441401))))

(assert (=> b!795187 (= res!539870 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21093 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20672 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21093 a!3170)) (= (select (arr!20672 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795188 () Bool)

(declare-fun res!539876 () Bool)

(assert (=> b!795188 (=> (not res!539876) (not e!441401))))

(declare-datatypes ((List!14688 0))(
  ( (Nil!14685) (Cons!14684 (h!15813 (_ BitVec 64)) (t!21011 List!14688)) )
))
(declare-fun arrayNoDuplicates!0 (array!43191 (_ BitVec 32) List!14688) Bool)

(assert (=> b!795188 (= res!539876 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14685))))

(declare-fun b!795189 () Bool)

(declare-fun res!539877 () Bool)

(assert (=> b!795189 (=> (not res!539877) (not e!441400))))

(assert (=> b!795189 (= res!539877 (and (= (size!21093 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21093 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21093 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68450 res!539874) b!795189))

(assert (= (and b!795189 res!539877) b!795185))

(assert (= (and b!795185 res!539872) b!795186))

(assert (= (and b!795186 res!539871) b!795182))

(assert (= (and b!795182 res!539878) b!795181))

(assert (= (and b!795181 res!539873) b!795180))

(assert (= (and b!795180 res!539875) b!795188))

(assert (= (and b!795188 res!539876) b!795187))

(assert (= (and b!795187 res!539870) b!795183))

(assert (= (and b!795183 res!539869) b!795184))

(declare-fun m!735897 () Bool)

(assert (=> start!68450 m!735897))

(declare-fun m!735899 () Bool)

(assert (=> start!68450 m!735899))

(declare-fun m!735901 () Bool)

(assert (=> b!795183 m!735901))

(declare-fun m!735903 () Bool)

(assert (=> b!795183 m!735903))

(declare-fun m!735905 () Bool)

(assert (=> b!795183 m!735905))

(declare-fun m!735907 () Bool)

(assert (=> b!795183 m!735907))

(declare-fun m!735909 () Bool)

(assert (=> b!795182 m!735909))

(declare-fun m!735911 () Bool)

(assert (=> b!795184 m!735911))

(assert (=> b!795184 m!735911))

(declare-fun m!735913 () Bool)

(assert (=> b!795184 m!735913))

(assert (=> b!795184 m!735911))

(declare-fun m!735915 () Bool)

(assert (=> b!795184 m!735915))

(declare-fun m!735917 () Bool)

(assert (=> b!795188 m!735917))

(assert (=> b!795185 m!735911))

(assert (=> b!795185 m!735911))

(declare-fun m!735919 () Bool)

(assert (=> b!795185 m!735919))

(declare-fun m!735921 () Bool)

(assert (=> b!795181 m!735921))

(declare-fun m!735923 () Bool)

(assert (=> b!795187 m!735923))

(declare-fun m!735925 () Bool)

(assert (=> b!795187 m!735925))

(declare-fun m!735927 () Bool)

(assert (=> b!795186 m!735927))

(declare-fun m!735929 () Bool)

(assert (=> b!795180 m!735929))

(push 1)

