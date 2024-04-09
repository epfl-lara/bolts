; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69356 () Bool)

(assert start!69356)

(declare-fun b!808589 () Bool)

(declare-fun res!552688 () Bool)

(declare-fun e!447628 () Bool)

(assert (=> b!808589 (=> (not res!552688) (not e!447628))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43956 0))(
  ( (array!43957 (arr!21050 (Array (_ BitVec 32) (_ BitVec 64))) (size!21471 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43956)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!808589 (= res!552688 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21471 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21050 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21471 a!3170)) (= (select (arr!21050 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808590 () Bool)

(declare-fun res!552692 () Bool)

(assert (=> b!808590 (=> (not res!552692) (not e!447628))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43956 (_ BitVec 32)) Bool)

(assert (=> b!808590 (= res!552692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808591 () Bool)

(declare-fun res!552685 () Bool)

(declare-fun e!447631 () Bool)

(assert (=> b!808591 (=> (not res!552685) (not e!447631))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808591 (= res!552685 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!808592 () Bool)

(declare-fun res!552693 () Bool)

(assert (=> b!808592 (=> (not res!552693) (not e!447631))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808592 (= res!552693 (validKeyInArray!0 (select (arr!21050 a!3170) j!153)))))

(declare-fun res!552684 () Bool)

(assert (=> start!69356 (=> (not res!552684) (not e!447631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69356 (= res!552684 (validMask!0 mask!3266))))

(assert (=> start!69356 e!447631))

(assert (=> start!69356 true))

(declare-fun array_inv!16824 (array!43956) Bool)

(assert (=> start!69356 (array_inv!16824 a!3170)))

(declare-fun b!808593 () Bool)

(declare-fun res!552689 () Bool)

(assert (=> b!808593 (=> (not res!552689) (not e!447631))))

(assert (=> b!808593 (= res!552689 (validKeyInArray!0 k!2044))))

(declare-fun e!447627 () Bool)

(declare-fun lt!362357 () (_ BitVec 32))

(declare-fun b!808594 () Bool)

(assert (=> b!808594 (= e!447627 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (or (bvslt lt!362357 #b00000000000000000000000000000000) (bvsge lt!362357 (size!21471 a!3170)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808594 (= lt!362357 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808595 () Bool)

(assert (=> b!808595 (= e!447631 e!447628)))

(declare-fun res!552694 () Bool)

(assert (=> b!808595 (=> (not res!552694) (not e!447628))))

(declare-datatypes ((SeekEntryResult!8648 0))(
  ( (MissingZero!8648 (index!36959 (_ BitVec 32))) (Found!8648 (index!36960 (_ BitVec 32))) (Intermediate!8648 (undefined!9460 Bool) (index!36961 (_ BitVec 32)) (x!67787 (_ BitVec 32))) (Undefined!8648) (MissingVacant!8648 (index!36962 (_ BitVec 32))) )
))
(declare-fun lt!362356 () SeekEntryResult!8648)

(assert (=> b!808595 (= res!552694 (or (= lt!362356 (MissingZero!8648 i!1163)) (= lt!362356 (MissingVacant!8648 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43956 (_ BitVec 32)) SeekEntryResult!8648)

(assert (=> b!808595 (= lt!362356 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!808596 () Bool)

(declare-fun res!552691 () Bool)

(assert (=> b!808596 (=> (not res!552691) (not e!447631))))

(assert (=> b!808596 (= res!552691 (and (= (size!21471 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21471 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21471 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!808597 () Bool)

(declare-fun e!447629 () Bool)

(assert (=> b!808597 (= e!447629 e!447627)))

(declare-fun res!552687 () Bool)

(assert (=> b!808597 (=> (not res!552687) (not e!447627))))

(declare-fun lt!362354 () SeekEntryResult!8648)

(declare-fun lt!362355 () SeekEntryResult!8648)

(assert (=> b!808597 (= res!552687 (and (= lt!362355 lt!362354) (= lt!362354 (Found!8648 j!153)) (not (= (select (arr!21050 a!3170) index!1236) (select (arr!21050 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43956 (_ BitVec 32)) SeekEntryResult!8648)

(assert (=> b!808597 (= lt!362354 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21050 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!808597 (= lt!362355 (seekEntryOrOpen!0 (select (arr!21050 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808598 () Bool)

(declare-fun res!552686 () Bool)

(assert (=> b!808598 (=> (not res!552686) (not e!447628))))

(declare-datatypes ((List!15066 0))(
  ( (Nil!15063) (Cons!15062 (h!16191 (_ BitVec 64)) (t!21389 List!15066)) )
))
(declare-fun arrayNoDuplicates!0 (array!43956 (_ BitVec 32) List!15066) Bool)

(assert (=> b!808598 (= res!552686 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15063))))

(declare-fun b!808599 () Bool)

(assert (=> b!808599 (= e!447628 e!447629)))

(declare-fun res!552690 () Bool)

(assert (=> b!808599 (=> (not res!552690) (not e!447629))))

(declare-fun lt!362358 () array!43956)

(declare-fun lt!362359 () (_ BitVec 64))

(assert (=> b!808599 (= res!552690 (= (seekEntryOrOpen!0 lt!362359 lt!362358 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362359 lt!362358 mask!3266)))))

(assert (=> b!808599 (= lt!362359 (select (store (arr!21050 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808599 (= lt!362358 (array!43957 (store (arr!21050 a!3170) i!1163 k!2044) (size!21471 a!3170)))))

(assert (= (and start!69356 res!552684) b!808596))

(assert (= (and b!808596 res!552691) b!808592))

(assert (= (and b!808592 res!552693) b!808593))

(assert (= (and b!808593 res!552689) b!808591))

(assert (= (and b!808591 res!552685) b!808595))

(assert (= (and b!808595 res!552694) b!808590))

(assert (= (and b!808590 res!552692) b!808598))

(assert (= (and b!808598 res!552686) b!808589))

(assert (= (and b!808589 res!552688) b!808599))

(assert (= (and b!808599 res!552690) b!808597))

(assert (= (and b!808597 res!552687) b!808594))

(declare-fun m!750845 () Bool)

(assert (=> b!808589 m!750845))

(declare-fun m!750847 () Bool)

(assert (=> b!808589 m!750847))

(declare-fun m!750849 () Bool)

(assert (=> b!808593 m!750849))

(declare-fun m!750851 () Bool)

(assert (=> b!808599 m!750851))

(declare-fun m!750853 () Bool)

(assert (=> b!808599 m!750853))

(declare-fun m!750855 () Bool)

(assert (=> b!808599 m!750855))

(declare-fun m!750857 () Bool)

(assert (=> b!808599 m!750857))

(declare-fun m!750859 () Bool)

(assert (=> start!69356 m!750859))

(declare-fun m!750861 () Bool)

(assert (=> start!69356 m!750861))

(declare-fun m!750863 () Bool)

(assert (=> b!808592 m!750863))

(assert (=> b!808592 m!750863))

(declare-fun m!750865 () Bool)

(assert (=> b!808592 m!750865))

(declare-fun m!750867 () Bool)

(assert (=> b!808597 m!750867))

(assert (=> b!808597 m!750863))

(assert (=> b!808597 m!750863))

(declare-fun m!750869 () Bool)

(assert (=> b!808597 m!750869))

(assert (=> b!808597 m!750863))

(declare-fun m!750871 () Bool)

(assert (=> b!808597 m!750871))

(declare-fun m!750873 () Bool)

(assert (=> b!808594 m!750873))

(declare-fun m!750875 () Bool)

(assert (=> b!808598 m!750875))

(declare-fun m!750877 () Bool)

(assert (=> b!808590 m!750877))

(declare-fun m!750879 () Bool)

(assert (=> b!808591 m!750879))

(declare-fun m!750881 () Bool)

(assert (=> b!808595 m!750881))

(push 1)

(assert (not b!808592))

(assert (not b!808599))

(assert (not b!808598))

(assert (not b!808597))

(assert (not b!808590))

(assert (not start!69356))

(assert (not b!808593))

(assert (not b!808594))

(assert (not b!808595))

(assert (not b!808591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!808663 () Bool)

(declare-fun e!447675 () SeekEntryResult!8648)

(assert (=> b!808663 (= e!447675 Undefined!8648)))

(declare-fun b!808664 () Bool)

(declare-fun e!447676 () SeekEntryResult!8648)

(assert (=> b!808664 (= e!447676 (MissingVacant!8648 vacantBefore!23))))

(declare-fun b!808665 () Bool)

(declare-fun c!88384 () Bool)

(declare-fun lt!362389 () (_ BitVec 64))

(assert (=> b!808665 (= c!88384 (= lt!362389 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447674 () SeekEntryResult!8648)

(assert (=> b!808665 (= e!447674 e!447676)))

(declare-fun lt!362388 () SeekEntryResult!8648)

(declare-fun d!103747 () Bool)

(assert (=> d!103747 (and (or (is-Undefined!8648 lt!362388) (not (is-Found!8648 lt!362388)) (and (bvsge (index!36960 lt!362388) #b00000000000000000000000000000000) (bvslt (index!36960 lt!362388) (size!21471 a!3170)))) (or (is-Undefined!8648 lt!362388) (is-Found!8648 lt!362388) (not (is-MissingVacant!8648 lt!362388)) (not (= (index!36962 lt!362388) vacantBefore!23)) (and (bvsge (index!36962 lt!362388) #b00000000000000000000000000000000) (bvslt (index!36962 lt!362388) (size!21471 a!3170)))) (or (is-Undefined!8648 lt!362388) (ite (is-Found!8648 lt!362388) (= (select (arr!21050 a!3170) (index!36960 lt!362388)) (select (arr!21050 a!3170) j!153)) (and (is-MissingVacant!8648 lt!362388) (= (index!36962 lt!362388) vacantBefore!23) (= (select (arr!21050 a!3170) (index!36962 lt!362388)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103747 (= lt!362388 e!447675)))

(declare-fun c!88386 () Bool)

(assert (=> d!103747 (= c!88386 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103747 (= lt!362389 (select (arr!21050 a!3170) index!1236))))

(assert (=> d!103747 (validMask!0 mask!3266)))

(assert (=> d!103747 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21050 a!3170) j!153) a!3170 mask!3266) lt!362388)))

(declare-fun b!808666 () Bool)

(assert (=> b!808666 (= e!447676 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantBefore!23 (select (arr!21050 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808667 () Bool)

(assert (=> b!808667 (= e!447674 (Found!8648 index!1236))))

(declare-fun b!808668 () Bool)

(assert (=> b!808668 (= e!447675 e!447674)))

(declare-fun c!88385 () Bool)

(assert (=> b!808668 (= c!88385 (= lt!362389 (select (arr!21050 a!3170) j!153)))))

(assert (= (and d!103747 c!88386) b!808663))

(assert (= (and d!103747 (not c!88386)) b!808668))

(assert (= (and b!808668 c!88385) b!808667))

(assert (= (and b!808668 (not c!88385)) b!808665))

(assert (= (and b!808665 c!88384) b!808664))

(assert (= (and b!808665 (not c!88384)) b!808666))

(declare-fun m!750923 () Bool)

(assert (=> d!103747 m!750923))

(declare-fun m!750925 () Bool)

(assert (=> d!103747 m!750925))

(assert (=> d!103747 m!750867))

(assert (=> d!103747 m!750859))

(assert (=> b!808666 m!750873))

(assert (=> b!808666 m!750873))

(assert (=> b!808666 m!750863))

(declare-fun m!750927 () Bool)

(assert (=> b!808666 m!750927))

(assert (=> b!808597 d!103747))

(declare-fun b!808735 () Bool)

(declare-fun e!447710 () SeekEntryResult!8648)

(assert (=> b!808735 (= e!447710 Undefined!8648)))

(declare-fun b!808736 () Bool)

(declare-fun e!447711 () SeekEntryResult!8648)

(assert (=> b!808736 (= e!447710 e!447711)))

(declare-fun lt!362418 () (_ BitVec 64))

(declare-fun lt!362420 () SeekEntryResult!8648)

(assert (=> b!808736 (= lt!362418 (select (arr!21050 a!3170) (index!36961 lt!362420)))))

(declare-fun c!88421 () Bool)

(assert (=> b!808736 (= c!88421 (= lt!362418 (select (arr!21050 a!3170) j!153)))))

(declare-fun d!103761 () Bool)

(declare-fun lt!362419 () SeekEntryResult!8648)

(assert (=> d!103761 (and (or (is-Undefined!8648 lt!362419) (not (is-Found!8648 lt!362419)) (and (bvsge (index!36960 lt!362419) #b00000000000000000000000000000000) (bvslt (index!36960 lt!362419) (size!21471 a!3170)))) (or (is-Undefined!8648 lt!362419) (is-Found!8648 lt!362419) (not (is-MissingZero!8648 lt!362419)) (and (bvsge (index!36959 lt!362419) #b00000000000000000000000000000000) (bvslt (index!36959 lt!362419) (size!21471 a!3170)))) (or (is-Undefined!8648 lt!362419) (is-Found!8648 lt!362419) (is-MissingZero!8648 lt!362419) (not (is-MissingVacant!8648 lt!362419)) (and (bvsge (index!36962 lt!362419) #b00000000000000000000000000000000) (bvslt (index!36962 lt!362419) (size!21471 a!3170)))) (or (is-Undefined!8648 lt!362419) (ite (is-Found!8648 lt!362419) (= (select (arr!21050 a!3170) (index!36960 lt!362419)) (select (arr!21050 a!3170) j!153)) (ite (is-MissingZero!8648 lt!362419) (= (select (arr!21050 a!3170) (index!36959 lt!362419)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8648 lt!362419) (= (select (arr!21050 a!3170) (index!36962 lt!362419)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103761 (= lt!362419 e!447710)))

(declare-fun c!88420 () Bool)

(assert (=> d!103761 (= c!88420 (and (is-Intermediate!8648 lt!362420) (undefined!9460 lt!362420)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43956 (_ BitVec 32)) SeekEntryResult!8648)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103761 (= lt!362420 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!21050 a!3170) j!153) mask!3266) (select (arr!21050 a!3170) j!153) a!3170 mask!3266))))

(assert (=> d!103761 (validMask!0 mask!3266)))

(assert (=> d!103761 (= (seekEntryOrOpen!0 (select (arr!21050 a!3170) j!153) a!3170 mask!3266) lt!362419)))

(declare-fun b!808737 () Bool)

(assert (=> b!808737 (= e!447711 (Found!8648 (index!36961 lt!362420)))))

(declare-fun b!808738 () Bool)

(declare-fun e!447712 () SeekEntryResult!8648)

(assert (=> b!808738 (= e!447712 (MissingZero!8648 (index!36961 lt!362420)))))

(declare-fun b!808739 () Bool)

(declare-fun c!88422 () Bool)

(assert (=> b!808739 (= c!88422 (= lt!362418 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808739 (= e!447711 e!447712)))

(declare-fun b!808740 () Bool)

(assert (=> b!808740 (= e!447712 (seekKeyOrZeroReturnVacant!0 (x!67787 lt!362420) (index!36961 lt!362420) (index!36961 lt!362420) (select (arr!21050 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and d!103761 c!88420) b!808735))

(assert (= (and d!103761 (not c!88420)) b!808736))

(assert (= (and b!808736 c!88421) b!808737))

(assert (= (and b!808736 (not c!88421)) b!808739))

(assert (= (and b!808739 c!88422) b!808738))

(assert (= (and b!808739 (not c!88422)) b!808740))

(declare-fun m!750965 () Bool)

(assert (=> b!808736 m!750965))

(assert (=> d!103761 m!750859))

(declare-fun m!750967 () Bool)

(assert (=> d!103761 m!750967))

(assert (=> d!103761 m!750863))

(declare-fun m!750969 () Bool)

(assert (=> d!103761 m!750969))

(declare-fun m!750971 () Bool)

(assert (=> d!103761 m!750971))

(declare-fun m!750973 () Bool)

(assert (=> d!103761 m!750973))

(declare-fun m!750975 () Bool)

(assert (=> d!103761 m!750975))

(assert (=> d!103761 m!750863))

(assert (=> d!103761 m!750967))

(assert (=> b!808740 m!750863))

(declare-fun m!750977 () Bool)

(assert (=> b!808740 m!750977))

(assert (=> b!808597 d!103761))

(declare-fun d!103775 () Bool)

(assert (=> d!103775 (= (validKeyInArray!0 (select (arr!21050 a!3170) j!153)) (and (not (= (select (arr!21050 a!3170) j!153) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!21050 a!3170) j!153) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808592 d!103775))

(declare-fun d!103779 () Bool)

(declare-fun res!552729 () Bool)

(declare-fun e!447732 () Bool)

(assert (=> d!103779 (=> res!552729 e!447732)))

(assert (=> d!103779 (= res!552729 (= (select (arr!21050 a!3170) #b00000000000000000000000000000000) k!2044))))

(assert (=> d!103779 (= (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000) e!447732)))

(declare-fun b!808766 () Bool)

(declare-fun e!447733 () Bool)

(assert (=> b!808766 (= e!447732 e!447733)))

(declare-fun res!552730 () Bool)

(assert (=> b!808766 (=> (not res!552730) (not e!447733))))

(assert (=> b!808766 (= res!552730 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!21471 a!3170)))))

(declare-fun b!808767 () Bool)

(assert (=> b!808767 (= e!447733 (arrayContainsKey!0 a!3170 k!2044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!103779 (not res!552729)) b!808766))

(assert (= (and b!808766 res!552730) b!808767))

(declare-fun m!750987 () Bool)

(assert (=> d!103779 m!750987))

(declare-fun m!750989 () Bool)

(assert (=> b!808767 m!750989))

(assert (=> b!808591 d!103779))

(declare-fun d!103781 () Bool)

(assert (=> d!103781 (= (validMask!0 mask!3266) (and (or (= mask!3266 #b00000000000000000000000000000111) (= mask!3266 #b00000000000000000000000000001111) (= mask!3266 #b00000000000000000000000000011111) (= mask!3266 #b00000000000000000000000000111111) (= mask!3266 #b00000000000000000000000001111111) (= mask!3266 #b00000000000000000000000011111111) (= mask!3266 #b00000000000000000000000111111111) (= mask!3266 #b00000000000000000000001111111111) (= mask!3266 #b00000000000000000000011111111111) (= mask!3266 #b00000000000000000000111111111111) (= mask!3266 #b00000000000000000001111111111111) (= mask!3266 #b00000000000000000011111111111111) (= mask!3266 #b00000000000000000111111111111111) (= mask!3266 #b00000000000000001111111111111111) (= mask!3266 #b00000000000000011111111111111111) (= mask!3266 #b00000000000000111111111111111111) (= mask!3266 #b00000000000001111111111111111111) (= mask!3266 #b00000000000011111111111111111111) (= mask!3266 #b00000000000111111111111111111111) (= mask!3266 #b00000000001111111111111111111111) (= mask!3266 #b00000000011111111111111111111111) (= mask!3266 #b00000000111111111111111111111111) (= mask!3266 #b00000001111111111111111111111111) (= mask!3266 #b00000011111111111111111111111111) (= mask!3266 #b00000111111111111111111111111111) (= mask!3266 #b00001111111111111111111111111111) (= mask!3266 #b00011111111111111111111111111111) (= mask!3266 #b00111111111111111111111111111111)) (bvsle mask!3266 #b00111111111111111111111111111111)))))

(assert (=> start!69356 d!103781))

(declare-fun d!103795 () Bool)

(assert (=> d!103795 (= (array_inv!16824 a!3170) (bvsge (size!21471 a!3170) #b00000000000000000000000000000000))))

(assert (=> start!69356 d!103795))

(declare-fun b!808804 () Bool)

(declare-fun e!447758 () SeekEntryResult!8648)

(assert (=> b!808804 (= e!447758 Undefined!8648)))

(declare-fun b!808805 () Bool)

(declare-fun e!447759 () SeekEntryResult!8648)

(assert (=> b!808805 (= e!447758 e!447759)))

(declare-fun lt!362440 () (_ BitVec 64))

(declare-fun lt!362442 () SeekEntryResult!8648)

(assert (=> b!808805 (= lt!362440 (select (arr!21050 a!3170) (index!36961 lt!362442)))))

(declare-fun c!88442 () Bool)

(assert (=> b!808805 (= c!88442 (= lt!362440 k!2044))))

(declare-fun d!103799 () Bool)

(declare-fun lt!362441 () SeekEntryResult!8648)

(assert (=> d!103799 (and (or (is-Undefined!8648 lt!362441) (not (is-Found!8648 lt!362441)) (and (bvsge (index!36960 lt!362441) #b00000000000000000000000000000000) (bvslt (index!36960 lt!362441) (size!21471 a!3170)))) (or (is-Undefined!8648 lt!362441) (is-Found!8648 lt!362441) (not (is-MissingZero!8648 lt!362441)) (and (bvsge (index!36959 lt!362441) #b00000000000000000000000000000000) (bvslt (index!36959 lt!362441) (size!21471 a!3170)))) (or (is-Undefined!8648 lt!362441) (is-Found!8648 lt!362441) (is-MissingZero!8648 lt!362441) (not (is-MissingVacant!8648 lt!362441)) (and (bvsge (index!36962 lt!362441) #b00000000000000000000000000000000) (bvslt (index!36962 lt!362441) (size!21471 a!3170)))) (or (is-Undefined!8648 lt!362441) (ite (is-Found!8648 lt!362441) (= (select (arr!21050 a!3170) (index!36960 lt!362441)) k!2044) (ite (is-MissingZero!8648 lt!362441) (= (select (arr!21050 a!3170) (index!36959 lt!362441)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8648 lt!362441) (= (select (arr!21050 a!3170) (index!36962 lt!362441)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103799 (= lt!362441 e!447758)))

(declare-fun c!88441 () Bool)

(assert (=> d!103799 (= c!88441 (and (is-Intermediate!8648 lt!362442) (undefined!9460 lt!362442)))))

(assert (=> d!103799 (= lt!362442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2044 mask!3266) k!2044 a!3170 mask!3266))))

(assert (=> d!103799 (validMask!0 mask!3266)))

(assert (=> d!103799 (= (seekEntryOrOpen!0 k!2044 a!3170 mask!3266) lt!362441)))

(declare-fun b!808806 () Bool)

(assert (=> b!808806 (= e!447759 (Found!8648 (index!36961 lt!362442)))))

(declare-fun b!808807 () Bool)

(declare-fun e!447760 () SeekEntryResult!8648)

(assert (=> b!808807 (= e!447760 (MissingZero!8648 (index!36961 lt!362442)))))

(declare-fun b!808808 () Bool)

(declare-fun c!88443 () Bool)

(assert (=> b!808808 (= c!88443 (= lt!362440 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808808 (= e!447759 e!447760)))

(declare-fun b!808809 () Bool)

(assert (=> b!808809 (= e!447760 (seekKeyOrZeroReturnVacant!0 (x!67787 lt!362442) (index!36961 lt!362442) (index!36961 lt!362442) k!2044 a!3170 mask!3266))))

(assert (= (and d!103799 c!88441) b!808804))

(assert (= (and d!103799 (not c!88441)) b!808805))

(assert (= (and b!808805 c!88442) b!808806))

(assert (= (and b!808805 (not c!88442)) b!808808))

(assert (= (and b!808808 c!88443) b!808807))

(assert (= (and b!808808 (not c!88443)) b!808809))

(declare-fun m!751039 () Bool)

(assert (=> b!808805 m!751039))

(assert (=> d!103799 m!750859))

(declare-fun m!751043 () Bool)

(assert (=> d!103799 m!751043))

(declare-fun m!751045 () Bool)

(assert (=> d!103799 m!751045))

(declare-fun m!751051 () Bool)

(assert (=> d!103799 m!751051))

(declare-fun m!751053 () Bool)

(assert (=> d!103799 m!751053))

(declare-fun m!751055 () Bool)

(assert (=> d!103799 m!751055))

(assert (=> d!103799 m!751043))

(declare-fun m!751057 () Bool)

(assert (=> b!808809 m!751057))

(assert (=> b!808595 d!103799))

(declare-fun b!808830 () Bool)

(declare-fun e!447774 () Bool)

(declare-fun call!35415 () Bool)

(assert (=> b!808830 (= e!447774 call!35415)))

(declare-fun d!103807 () Bool)

(declare-fun res!552747 () Bool)

(declare-fun e!447773 () Bool)

(assert (=> d!103807 (=> res!552747 e!447773)))

(assert (=> d!103807 (= res!552747 (bvsge #b00000000000000000000000000000000 (size!21471 a!3170)))))

(assert (=> d!103807 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266) e!447773)))

(declare-fun b!808831 () Bool)

(declare-fun e!447775 () Bool)

(assert (=> b!808831 (= e!447775 call!35415)))

(declare-fun bm!35412 () Bool)

(assert (=> bm!35412 (= call!35415 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3170 mask!3266))))

(declare-fun b!808832 () Bool)

(assert (=> b!808832 (= e!447774 e!447775)))

(declare-fun lt!362455 () (_ BitVec 64))

(assert (=> b!808832 (= lt!362455 (select (arr!21050 a!3170) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27602 0))(
  ( (Unit!27603) )
))
(declare-fun lt!362454 () Unit!27602)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!43956 (_ BitVec 64) (_ BitVec 32)) Unit!27602)

(assert (=> b!808832 (= lt!362454 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3170 lt!362455 #b00000000000000000000000000000000))))

(assert (=> b!808832 (arrayContainsKey!0 a!3170 lt!362455 #b00000000000000000000000000000000)))

(declare-fun lt!362456 () Unit!27602)

(assert (=> b!808832 (= lt!362456 lt!362454)))

(declare-fun res!552748 () Bool)

(assert (=> b!808832 (= res!552748 (= (seekEntryOrOpen!0 (select (arr!21050 a!3170) #b00000000000000000000000000000000) a!3170 mask!3266) (Found!8648 #b00000000000000000000000000000000)))))

(assert (=> b!808832 (=> (not res!552748) (not e!447775))))

(declare-fun b!808833 () Bool)

(assert (=> b!808833 (= e!447773 e!447774)))

(declare-fun c!88452 () Bool)

(assert (=> b!808833 (= c!88452 (validKeyInArray!0 (select (arr!21050 a!3170) #b00000000000000000000000000000000)))))

(assert (= (and d!103807 (not res!552747)) b!808833))

(assert (= (and b!808833 c!88452) b!808832))

(assert (= (and b!808833 (not c!88452)) b!808830))

(assert (= (and b!808832 res!552748) b!808831))

(assert (= (or b!808831 b!808830) bm!35412))

(declare-fun m!751073 () Bool)

(assert (=> bm!35412 m!751073))

(assert (=> b!808832 m!750987))

(declare-fun m!751075 () Bool)

(assert (=> b!808832 m!751075))

(declare-fun m!751077 () Bool)

(assert (=> b!808832 m!751077))

(assert (=> b!808832 m!750987))

(declare-fun m!751079 () Bool)

(assert (=> b!808832 m!751079))

(assert (=> b!808833 m!750987))

(assert (=> b!808833 m!750987))

(declare-fun m!751081 () Bool)

(assert (=> b!808833 m!751081))

(assert (=> b!808590 d!103807))

(declare-fun b!808834 () Bool)

(declare-fun e!447776 () SeekEntryResult!8648)

(assert (=> b!808834 (= e!447776 Undefined!8648)))

(declare-fun b!808835 () Bool)

(declare-fun e!447777 () SeekEntryResult!8648)

(assert (=> b!808835 (= e!447776 e!447777)))

(declare-fun lt!362457 () (_ BitVec 64))

(declare-fun lt!362459 () SeekEntryResult!8648)

(assert (=> b!808835 (= lt!362457 (select (arr!21050 lt!362358) (index!36961 lt!362459)))))

(declare-fun c!88454 () Bool)

(assert (=> b!808835 (= c!88454 (= lt!362457 lt!362359))))

(declare-fun d!103809 () Bool)

(declare-fun lt!362458 () SeekEntryResult!8648)

(assert (=> d!103809 (and (or (is-Undefined!8648 lt!362458) (not (is-Found!8648 lt!362458)) (and (bvsge (index!36960 lt!362458) #b00000000000000000000000000000000) (bvslt (index!36960 lt!362458) (size!21471 lt!362358)))) (or (is-Undefined!8648 lt!362458) (is-Found!8648 lt!362458) (not (is-MissingZero!8648 lt!362458)) (and (bvsge (index!36959 lt!362458) #b00000000000000000000000000000000) (bvslt (index!36959 lt!362458) (size!21471 lt!362358)))) (or (is-Undefined!8648 lt!362458) (is-Found!8648 lt!362458) (is-MissingZero!8648 lt!362458) (not (is-MissingVacant!8648 lt!362458)) (and (bvsge (index!36962 lt!362458) #b00000000000000000000000000000000) (bvslt (index!36962 lt!362458) (size!21471 lt!362358)))) (or (is-Undefined!8648 lt!362458) (ite (is-Found!8648 lt!362458) (= (select (arr!21050 lt!362358) (index!36960 lt!362458)) lt!362359) (ite (is-MissingZero!8648 lt!362458) (= (select (arr!21050 lt!362358) (index!36959 lt!362458)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8648 lt!362458) (= (select (arr!21050 lt!362358) (index!36962 lt!362458)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!103809 (= lt!362458 e!447776)))

(declare-fun c!88453 () Bool)

(assert (=> d!103809 (= c!88453 (and (is-Intermediate!8648 lt!362459) (undefined!9460 lt!362459)))))

(assert (=> d!103809 (= lt!362459 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!362359 mask!3266) lt!362359 lt!362358 mask!3266))))

(assert (=> d!103809 (validMask!0 mask!3266)))

(assert (=> d!103809 (= (seekEntryOrOpen!0 lt!362359 lt!362358 mask!3266) lt!362458)))

(declare-fun b!808836 () Bool)

(assert (=> b!808836 (= e!447777 (Found!8648 (index!36961 lt!362459)))))

(declare-fun b!808837 () Bool)

(declare-fun e!447778 () SeekEntryResult!8648)

(assert (=> b!808837 (= e!447778 (MissingZero!8648 (index!36961 lt!362459)))))

(declare-fun b!808838 () Bool)

(declare-fun c!88455 () Bool)

(assert (=> b!808838 (= c!88455 (= lt!362457 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!808838 (= e!447777 e!447778)))

(declare-fun b!808839 () Bool)

(assert (=> b!808839 (= e!447778 (seekKeyOrZeroReturnVacant!0 (x!67787 lt!362459) (index!36961 lt!362459) (index!36961 lt!362459) lt!362359 lt!362358 mask!3266))))

(assert (= (and d!103809 c!88453) b!808834))

(assert (= (and d!103809 (not c!88453)) b!808835))

(assert (= (and b!808835 c!88454) b!808836))

(assert (= (and b!808835 (not c!88454)) b!808838))

(assert (= (and b!808838 c!88455) b!808837))

(assert (= (and b!808838 (not c!88455)) b!808839))

(declare-fun m!751083 () Bool)

(assert (=> b!808835 m!751083))

(assert (=> d!103809 m!750859))

(declare-fun m!751085 () Bool)

(assert (=> d!103809 m!751085))

(declare-fun m!751087 () Bool)

(assert (=> d!103809 m!751087))

(declare-fun m!751089 () Bool)

(assert (=> d!103809 m!751089))

(declare-fun m!751091 () Bool)

(assert (=> d!103809 m!751091))

(declare-fun m!751093 () Bool)

(assert (=> d!103809 m!751093))

(assert (=> d!103809 m!751085))

(declare-fun m!751095 () Bool)

(assert (=> b!808839 m!751095))

(assert (=> b!808599 d!103809))

(declare-fun b!808840 () Bool)

(declare-fun e!447780 () SeekEntryResult!8648)

(assert (=> b!808840 (= e!447780 Undefined!8648)))

(declare-fun b!808841 () Bool)

(declare-fun e!447781 () SeekEntryResult!8648)

(assert (=> b!808841 (= e!447781 (MissingVacant!8648 vacantAfter!23))))

(declare-fun b!808842 () Bool)

(declare-fun c!88456 () Bool)

(declare-fun lt!362461 () (_ BitVec 64))

(assert (=> b!808842 (= c!88456 (= lt!362461 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!447779 () SeekEntryResult!8648)

(assert (=> b!808842 (= e!447779 e!447781)))

(declare-fun d!103811 () Bool)

(declare-fun lt!362460 () SeekEntryResult!8648)

(assert (=> d!103811 (and (or (is-Undefined!8648 lt!362460) (not (is-Found!8648 lt!362460)) (and (bvsge (index!36960 lt!362460) #b00000000000000000000000000000000) (bvslt (index!36960 lt!362460) (size!21471 lt!362358)))) (or (is-Undefined!8648 lt!362460) (is-Found!8648 lt!362460) (not (is-MissingVacant!8648 lt!362460)) (not (= (index!36962 lt!362460) vacantAfter!23)) (and (bvsge (index!36962 lt!362460) #b00000000000000000000000000000000) (bvslt (index!36962 lt!362460) (size!21471 lt!362358)))) (or (is-Undefined!8648 lt!362460) (ite (is-Found!8648 lt!362460) (= (select (arr!21050 lt!362358) (index!36960 lt!362460)) lt!362359) (and (is-MissingVacant!8648 lt!362460) (= (index!36962 lt!362460) vacantAfter!23) (= (select (arr!21050 lt!362358) (index!36962 lt!362460)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!103811 (= lt!362460 e!447780)))

(declare-fun c!88458 () Bool)

(assert (=> d!103811 (= c!88458 (bvsge x!1077 #b01111111111111111111111111111110))))

(assert (=> d!103811 (= lt!362461 (select (arr!21050 lt!362358) index!1236))))

(assert (=> d!103811 (validMask!0 mask!3266)))

(assert (=> d!103811 (= (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362359 lt!362358 mask!3266) lt!362460)))

(declare-fun b!808843 () Bool)

(assert (=> b!808843 (= e!447781 (seekKeyOrZeroReturnVacant!0 (bvadd x!1077 #b00000000000000000000000000000001) (nextIndex!0 index!1236 x!1077 mask!3266) vacantAfter!23 lt!362359 lt!362358 mask!3266))))

(declare-fun b!808844 () Bool)

(assert (=> b!808844 (= e!447779 (Found!8648 index!1236))))

(declare-fun b!808845 () Bool)

(assert (=> b!808845 (= e!447780 e!447779)))

(declare-fun c!88457 () Bool)

(assert (=> b!808845 (= c!88457 (= lt!362461 lt!362359))))

(assert (= (and d!103811 c!88458) b!808840))

(assert (= (and d!103811 (not c!88458)) b!808845))

(assert (= (and b!808845 c!88457) b!808844))

(assert (= (and b!808845 (not c!88457)) b!808842))

(assert (= (and b!808842 c!88456) b!808841))

(assert (= (and b!808842 (not c!88456)) b!808843))

(declare-fun m!751097 () Bool)

(assert (=> d!103811 m!751097))

(declare-fun m!751099 () Bool)

(assert (=> d!103811 m!751099))

(declare-fun m!751101 () Bool)

(assert (=> d!103811 m!751101))

(assert (=> d!103811 m!750859))

(assert (=> b!808843 m!750873))

(assert (=> b!808843 m!750873))

(declare-fun m!751103 () Bool)

(assert (=> b!808843 m!751103))

(assert (=> b!808599 d!103811))

(declare-fun d!103813 () Bool)

(declare-fun lt!362464 () (_ BitVec 32))

(assert (=> d!103813 (and (bvsge lt!362464 #b00000000000000000000000000000000) (bvslt lt!362464 (bvadd mask!3266 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!103813 (= lt!362464 (choose!52 index!1236 x!1077 mask!3266))))

(assert (=> d!103813 (validMask!0 mask!3266)))

(assert (=> d!103813 (= (nextIndex!0 index!1236 x!1077 mask!3266) lt!362464)))

(declare-fun bs!22395 () Bool)

(assert (= bs!22395 d!103813))

(declare-fun m!751105 () Bool)

(assert (=> bs!22395 m!751105))

(assert (=> bs!22395 m!750859))

(assert (=> b!808594 d!103813))

(declare-fun d!103815 () Bool)

(assert (=> d!103815 (= (validKeyInArray!0 k!2044) (and (not (= k!2044 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2044 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!808593 d!103815))

(declare-fun b!808856 () Bool)

(declare-fun e!447793 () Bool)

(declare-fun call!35418 () Bool)

(assert (=> b!808856 (= e!447793 call!35418)))

(declare-fun d!103817 () Bool)

(declare-fun res!552755 () Bool)

(declare-fun e!447792 () Bool)

(assert (=> d!103817 (=> res!552755 e!447792)))

(assert (=> d!103817 (= res!552755 (bvsge #b00000000000000000000000000000000 (size!21471 a!3170)))))

(assert (=> d!103817 (= (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15063) e!447792)))

