; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68414 () Bool)

(assert start!68414)

(declare-fun b!794622 () Bool)

(declare-fun res!539316 () Bool)

(declare-fun e!441185 () Bool)

(assert (=> b!794622 (=> (not res!539316) (not e!441185))))

(declare-datatypes ((array!43155 0))(
  ( (array!43156 (arr!20654 (Array (_ BitVec 32) (_ BitVec 64))) (size!21075 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43155)

(declare-datatypes ((List!14670 0))(
  ( (Nil!14667) (Cons!14666 (h!15795 (_ BitVec 64)) (t!20993 List!14670)) )
))
(declare-fun arrayNoDuplicates!0 (array!43155 (_ BitVec 32) List!14670) Bool)

(assert (=> b!794622 (= res!539316 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14667))))

(declare-fun b!794623 () Bool)

(declare-fun e!441184 () Bool)

(assert (=> b!794623 (= e!441184 false)))

(declare-datatypes ((SeekEntryResult!8252 0))(
  ( (MissingZero!8252 (index!35375 (_ BitVec 32))) (Found!8252 (index!35376 (_ BitVec 32))) (Intermediate!8252 (undefined!9064 Bool) (index!35377 (_ BitVec 32)) (x!66323 (_ BitVec 32))) (Undefined!8252) (MissingVacant!8252 (index!35378 (_ BitVec 32))) )
))
(declare-fun lt!354238 () SeekEntryResult!8252)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43155 (_ BitVec 32)) SeekEntryResult!8252)

(assert (=> b!794623 (= lt!354238 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20654 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!354237 () SeekEntryResult!8252)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43155 (_ BitVec 32)) SeekEntryResult!8252)

(assert (=> b!794623 (= lt!354237 (seekEntryOrOpen!0 (select (arr!20654 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!794624 () Bool)

(declare-fun e!441186 () Bool)

(assert (=> b!794624 (= e!441186 e!441185)))

(declare-fun res!539311 () Bool)

(assert (=> b!794624 (=> (not res!539311) (not e!441185))))

(declare-fun lt!354241 () SeekEntryResult!8252)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!794624 (= res!539311 (or (= lt!354241 (MissingZero!8252 i!1163)) (= lt!354241 (MissingVacant!8252 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!794624 (= lt!354241 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!539320 () Bool)

(assert (=> start!68414 (=> (not res!539320) (not e!441186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68414 (= res!539320 (validMask!0 mask!3266))))

(assert (=> start!68414 e!441186))

(assert (=> start!68414 true))

(declare-fun array_inv!16428 (array!43155) Bool)

(assert (=> start!68414 (array_inv!16428 a!3170)))

(declare-fun b!794625 () Bool)

(declare-fun res!539313 () Bool)

(assert (=> b!794625 (=> (not res!539313) (not e!441186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794625 (= res!539313 (validKeyInArray!0 (select (arr!20654 a!3170) j!153)))))

(declare-fun b!794626 () Bool)

(declare-fun res!539319 () Bool)

(assert (=> b!794626 (=> (not res!539319) (not e!441186))))

(assert (=> b!794626 (= res!539319 (validKeyInArray!0 k!2044))))

(declare-fun b!794627 () Bool)

(declare-fun res!539312 () Bool)

(assert (=> b!794627 (=> (not res!539312) (not e!441186))))

(declare-fun arrayContainsKey!0 (array!43155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794627 (= res!539312 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794628 () Bool)

(declare-fun res!539315 () Bool)

(assert (=> b!794628 (=> (not res!539315) (not e!441186))))

(assert (=> b!794628 (= res!539315 (and (= (size!21075 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21075 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21075 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794629 () Bool)

(assert (=> b!794629 (= e!441185 e!441184)))

(declare-fun res!539317 () Bool)

(assert (=> b!794629 (=> (not res!539317) (not e!441184))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!354240 () (_ BitVec 64))

(declare-fun lt!354239 () array!43155)

(assert (=> b!794629 (= res!539317 (= (seekEntryOrOpen!0 lt!354240 lt!354239 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354240 lt!354239 mask!3266)))))

(assert (=> b!794629 (= lt!354240 (select (store (arr!20654 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794629 (= lt!354239 (array!43156 (store (arr!20654 a!3170) i!1163 k!2044) (size!21075 a!3170)))))

(declare-fun b!794630 () Bool)

(declare-fun res!539314 () Bool)

(assert (=> b!794630 (=> (not res!539314) (not e!441185))))

(assert (=> b!794630 (= res!539314 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21075 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20654 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21075 a!3170)) (= (select (arr!20654 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!794631 () Bool)

(declare-fun res!539318 () Bool)

(assert (=> b!794631 (=> (not res!539318) (not e!441185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43155 (_ BitVec 32)) Bool)

(assert (=> b!794631 (= res!539318 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68414 res!539320) b!794628))

(assert (= (and b!794628 res!539315) b!794625))

(assert (= (and b!794625 res!539313) b!794626))

(assert (= (and b!794626 res!539319) b!794627))

(assert (= (and b!794627 res!539312) b!794624))

(assert (= (and b!794624 res!539311) b!794631))

(assert (= (and b!794631 res!539318) b!794622))

(assert (= (and b!794622 res!539316) b!794630))

(assert (= (and b!794630 res!539314) b!794629))

(assert (= (and b!794629 res!539317) b!794623))

(declare-fun m!735285 () Bool)

(assert (=> b!794627 m!735285))

(declare-fun m!735287 () Bool)

(assert (=> b!794622 m!735287))

(declare-fun m!735289 () Bool)

(assert (=> b!794626 m!735289))

(declare-fun m!735291 () Bool)

(assert (=> b!794623 m!735291))

(assert (=> b!794623 m!735291))

(declare-fun m!735293 () Bool)

(assert (=> b!794623 m!735293))

(assert (=> b!794623 m!735291))

(declare-fun m!735295 () Bool)

(assert (=> b!794623 m!735295))

(declare-fun m!735297 () Bool)

(assert (=> b!794631 m!735297))

(declare-fun m!735299 () Bool)

(assert (=> b!794630 m!735299))

(declare-fun m!735301 () Bool)

(assert (=> b!794630 m!735301))

(declare-fun m!735303 () Bool)

(assert (=> b!794624 m!735303))

(assert (=> b!794625 m!735291))

(assert (=> b!794625 m!735291))

(declare-fun m!735305 () Bool)

(assert (=> b!794625 m!735305))

(declare-fun m!735307 () Bool)

(assert (=> start!68414 m!735307))

(declare-fun m!735309 () Bool)

(assert (=> start!68414 m!735309))

(declare-fun m!735311 () Bool)

(assert (=> b!794629 m!735311))

(declare-fun m!735313 () Bool)

(assert (=> b!794629 m!735313))

(declare-fun m!735315 () Bool)

(assert (=> b!794629 m!735315))

(declare-fun m!735317 () Bool)

(assert (=> b!794629 m!735317))

(push 1)

(assert (not start!68414))

(assert (not b!794629))

