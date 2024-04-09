; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69232 () Bool)

(assert start!69232)

(declare-fun b!807173 () Bool)

(declare-fun res!551468 () Bool)

(declare-fun e!446941 () Bool)

(assert (=> b!807173 (=> (not res!551468) (not e!446941))))

(declare-datatypes ((array!43883 0))(
  ( (array!43884 (arr!21015 (Array (_ BitVec 32) (_ BitVec 64))) (size!21436 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43883)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43883 (_ BitVec 32)) Bool)

(assert (=> b!807173 (= res!551468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807174 () Bool)

(declare-fun e!446943 () Bool)

(assert (=> b!807174 (= e!446943 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!361619 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807174 (= lt!361619 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807175 () Bool)

(declare-fun e!446940 () Bool)

(assert (=> b!807175 (= e!446940 e!446943)))

(declare-fun res!551469 () Bool)

(assert (=> b!807175 (=> (not res!551469) (not e!446943))))

(declare-datatypes ((SeekEntryResult!8613 0))(
  ( (MissingZero!8613 (index!36819 (_ BitVec 32))) (Found!8613 (index!36820 (_ BitVec 32))) (Intermediate!8613 (undefined!9425 Bool) (index!36821 (_ BitVec 32)) (x!67658 (_ BitVec 32))) (Undefined!8613) (MissingVacant!8613 (index!36822 (_ BitVec 32))) )
))
(declare-fun lt!361624 () SeekEntryResult!8613)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!361622 () SeekEntryResult!8613)

(assert (=> b!807175 (= res!551469 (and (= lt!361624 lt!361622) (= lt!361622 (Found!8613 j!153)) (not (= (select (arr!21015 a!3170) index!1236) (select (arr!21015 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43883 (_ BitVec 32)) SeekEntryResult!8613)

(assert (=> b!807175 (= lt!361622 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21015 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43883 (_ BitVec 32)) SeekEntryResult!8613)

(assert (=> b!807175 (= lt!361624 (seekEntryOrOpen!0 (select (arr!21015 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!807176 () Bool)

(declare-fun e!446942 () Bool)

(assert (=> b!807176 (= e!446942 e!446941)))

(declare-fun res!551467 () Bool)

(assert (=> b!807176 (=> (not res!551467) (not e!446941))))

(declare-fun lt!361623 () SeekEntryResult!8613)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807176 (= res!551467 (or (= lt!361623 (MissingZero!8613 i!1163)) (= lt!361623 (MissingVacant!8613 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!807176 (= lt!361623 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807177 () Bool)

(declare-fun res!551466 () Bool)

(assert (=> b!807177 (=> (not res!551466) (not e!446942))))

(declare-fun arrayContainsKey!0 (array!43883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807177 (= res!551466 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!551473 () Bool)

(assert (=> start!69232 (=> (not res!551473) (not e!446942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69232 (= res!551473 (validMask!0 mask!3266))))

(assert (=> start!69232 e!446942))

(assert (=> start!69232 true))

(declare-fun array_inv!16789 (array!43883) Bool)

(assert (=> start!69232 (array_inv!16789 a!3170)))

(declare-fun b!807178 () Bool)

(declare-fun res!551470 () Bool)

(assert (=> b!807178 (=> (not res!551470) (not e!446942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807178 (= res!551470 (validKeyInArray!0 (select (arr!21015 a!3170) j!153)))))

(declare-fun b!807179 () Bool)

(declare-fun res!551474 () Bool)

(assert (=> b!807179 (=> (not res!551474) (not e!446942))))

(assert (=> b!807179 (= res!551474 (validKeyInArray!0 k!2044))))

(declare-fun b!807180 () Bool)

(declare-fun res!551476 () Bool)

(assert (=> b!807180 (=> (not res!551476) (not e!446941))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!807180 (= res!551476 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21436 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21015 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21436 a!3170)) (= (select (arr!21015 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807181 () Bool)

(declare-fun res!551475 () Bool)

(assert (=> b!807181 (=> (not res!551475) (not e!446941))))

(declare-datatypes ((List!15031 0))(
  ( (Nil!15028) (Cons!15027 (h!16156 (_ BitVec 64)) (t!21354 List!15031)) )
))
(declare-fun arrayNoDuplicates!0 (array!43883 (_ BitVec 32) List!15031) Bool)

(assert (=> b!807181 (= res!551475 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15028))))

(declare-fun b!807182 () Bool)

(assert (=> b!807182 (= e!446941 e!446940)))

(declare-fun res!551471 () Bool)

(assert (=> b!807182 (=> (not res!551471) (not e!446940))))

(declare-fun lt!361621 () (_ BitVec 64))

(declare-fun lt!361620 () array!43883)

(assert (=> b!807182 (= res!551471 (= (seekEntryOrOpen!0 lt!361621 lt!361620 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361621 lt!361620 mask!3266)))))

(assert (=> b!807182 (= lt!361621 (select (store (arr!21015 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807182 (= lt!361620 (array!43884 (store (arr!21015 a!3170) i!1163 k!2044) (size!21436 a!3170)))))

(declare-fun b!807183 () Bool)

(declare-fun res!551472 () Bool)

(assert (=> b!807183 (=> (not res!551472) (not e!446942))))

(assert (=> b!807183 (= res!551472 (and (= (size!21436 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21436 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21436 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!69232 res!551473) b!807183))

(assert (= (and b!807183 res!551472) b!807178))

(assert (= (and b!807178 res!551470) b!807179))

(assert (= (and b!807179 res!551474) b!807177))

(assert (= (and b!807177 res!551466) b!807176))

(assert (= (and b!807176 res!551467) b!807173))

(assert (= (and b!807173 res!551468) b!807181))

(assert (= (and b!807181 res!551475) b!807180))

(assert (= (and b!807180 res!551476) b!807182))

(assert (= (and b!807182 res!551471) b!807175))

(assert (= (and b!807175 res!551469) b!807174))

(declare-fun m!749287 () Bool)

(assert (=> b!807179 m!749287))

(declare-fun m!749289 () Bool)

(assert (=> b!807176 m!749289))

(declare-fun m!749291 () Bool)

(assert (=> b!807178 m!749291))

(assert (=> b!807178 m!749291))

(declare-fun m!749293 () Bool)

(assert (=> b!807178 m!749293))

(declare-fun m!749295 () Bool)

(assert (=> b!807182 m!749295))

(declare-fun m!749297 () Bool)

(assert (=> b!807182 m!749297))

(declare-fun m!749299 () Bool)

(assert (=> b!807182 m!749299))

(declare-fun m!749301 () Bool)

(assert (=> b!807182 m!749301))

(declare-fun m!749303 () Bool)

(assert (=> b!807174 m!749303))

(declare-fun m!749305 () Bool)

(assert (=> b!807173 m!749305))

(declare-fun m!749307 () Bool)

(assert (=> start!69232 m!749307))

(declare-fun m!749309 () Bool)

(assert (=> start!69232 m!749309))

(declare-fun m!749311 () Bool)

(assert (=> b!807180 m!749311))

(declare-fun m!749313 () Bool)

(assert (=> b!807180 m!749313))

(declare-fun m!749315 () Bool)

(assert (=> b!807175 m!749315))

(assert (=> b!807175 m!749291))

(assert (=> b!807175 m!749291))

(declare-fun m!749317 () Bool)

(assert (=> b!807175 m!749317))

(assert (=> b!807175 m!749291))

(declare-fun m!749319 () Bool)

(assert (=> b!807175 m!749319))

(declare-fun m!749321 () Bool)

(assert (=> b!807181 m!749321))

(declare-fun m!749323 () Bool)

(assert (=> b!807177 m!749323))

(push 1)

