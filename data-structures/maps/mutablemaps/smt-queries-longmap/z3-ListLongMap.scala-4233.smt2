; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58352 () Bool)

(assert start!58352)

(declare-fun b!644131 () Bool)

(declare-fun res!417406 () Bool)

(declare-fun e!369053 () Bool)

(assert (=> b!644131 (=> (not res!417406) (not e!369053))))

(declare-datatypes ((array!38405 0))(
  ( (array!38406 (arr!18412 (Array (_ BitVec 32) (_ BitVec 64))) (size!18776 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38405)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38405 (_ BitVec 32)) Bool)

(assert (=> b!644131 (= res!417406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!644132 () Bool)

(declare-fun res!417400 () Bool)

(assert (=> b!644132 (=> (not res!417400) (not e!369053))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!644132 (= res!417400 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18412 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!644133 () Bool)

(declare-fun e!369047 () Bool)

(declare-fun e!369058 () Bool)

(assert (=> b!644133 (= e!369047 e!369058)))

(declare-fun res!417407 () Bool)

(assert (=> b!644133 (=> res!417407 e!369058)))

(declare-fun lt!298587 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!298588 () (_ BitVec 64))

(assert (=> b!644133 (= res!417407 (or (not (= (select (arr!18412 a!2986) j!136) lt!298587)) (not (= (select (arr!18412 a!2986) j!136) lt!298588))))))

(declare-fun e!369050 () Bool)

(assert (=> b!644133 e!369050))

(declare-fun res!417404 () Bool)

(assert (=> b!644133 (=> (not res!417404) (not e!369050))))

(assert (=> b!644133 (= res!417404 (= lt!298588 (select (arr!18412 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!644133 (= lt!298588 (select (store (arr!18412 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!644134 () Bool)

(declare-fun e!369061 () Bool)

(declare-fun e!369055 () Bool)

(assert (=> b!644134 (= e!369061 e!369055)))

(declare-fun res!417392 () Bool)

(assert (=> b!644134 (=> (not res!417392) (not e!369055))))

(declare-fun lt!298590 () array!38405)

(declare-fun arrayContainsKey!0 (array!38405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!644134 (= res!417392 (arrayContainsKey!0 lt!298590 (select (arr!18412 a!2986) j!136) j!136))))

(declare-fun b!644135 () Bool)

(declare-fun res!417398 () Bool)

(assert (=> b!644135 (=> (not res!417398) (not e!369053))))

(declare-datatypes ((List!12506 0))(
  ( (Nil!12503) (Cons!12502 (h!13547 (_ BitVec 64)) (t!18742 List!12506)) )
))
(declare-fun arrayNoDuplicates!0 (array!38405 (_ BitVec 32) List!12506) Bool)

(assert (=> b!644135 (= res!417398 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12503))))

(declare-fun b!644136 () Bool)

(declare-datatypes ((Unit!21826 0))(
  ( (Unit!21827) )
))
(declare-fun e!369060 () Unit!21826)

(declare-fun Unit!21828 () Unit!21826)

(assert (=> b!644136 (= e!369060 Unit!21828)))

(declare-fun b!644137 () Bool)

(declare-fun e!369051 () Bool)

(assert (=> b!644137 (= e!369051 (arrayContainsKey!0 lt!298590 (select (arr!18412 a!2986) j!136) index!984))))

(declare-fun b!644138 () Bool)

(declare-fun Unit!21829 () Unit!21826)

(assert (=> b!644138 (= e!369060 Unit!21829)))

(declare-fun lt!298582 () Unit!21826)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38405 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21826)

(assert (=> b!644138 (= lt!298582 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!298590 (select (arr!18412 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!644138 (arrayContainsKey!0 lt!298590 (select (arr!18412 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!298586 () Unit!21826)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38405 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12506) Unit!21826)

(assert (=> b!644138 (= lt!298586 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12503))))

(assert (=> b!644138 (arrayNoDuplicates!0 lt!298590 #b00000000000000000000000000000000 Nil!12503)))

(declare-fun lt!298595 () Unit!21826)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38405 (_ BitVec 32) (_ BitVec 32)) Unit!21826)

(assert (=> b!644138 (= lt!298595 (lemmaNoDuplicateFromThenFromBigger!0 lt!298590 #b00000000000000000000000000000000 j!136))))

(assert (=> b!644138 (arrayNoDuplicates!0 lt!298590 j!136 Nil!12503)))

(declare-fun lt!298589 () Unit!21826)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38405 (_ BitVec 64) (_ BitVec 32) List!12506) Unit!21826)

(assert (=> b!644138 (= lt!298589 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!298590 (select (arr!18412 a!2986) j!136) j!136 Nil!12503))))

(assert (=> b!644138 false))

(declare-fun b!644139 () Bool)

(declare-fun e!369048 () Bool)

(declare-fun e!369056 () Bool)

(assert (=> b!644139 (= e!369048 e!369056)))

(declare-fun res!417405 () Bool)

(assert (=> b!644139 (=> (not res!417405) (not e!369056))))

(declare-datatypes ((SeekEntryResult!6859 0))(
  ( (MissingZero!6859 (index!29767 (_ BitVec 32))) (Found!6859 (index!29768 (_ BitVec 32))) (Intermediate!6859 (undefined!7671 Bool) (index!29769 (_ BitVec 32)) (x!58564 (_ BitVec 32))) (Undefined!6859) (MissingVacant!6859 (index!29770 (_ BitVec 32))) )
))
(declare-fun lt!298593 () SeekEntryResult!6859)

(assert (=> b!644139 (= res!417405 (and (= lt!298593 (Found!6859 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18412 a!2986) index!984) (select (arr!18412 a!2986) j!136))) (not (= (select (arr!18412 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38405 (_ BitVec 32)) SeekEntryResult!6859)

(assert (=> b!644139 (= lt!298593 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18412 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!644140 () Bool)

(declare-fun e!369049 () Unit!21826)

(declare-fun Unit!21830 () Unit!21826)

(assert (=> b!644140 (= e!369049 Unit!21830)))

(declare-fun b!644141 () Bool)

(declare-fun res!417402 () Bool)

(declare-fun e!369059 () Bool)

(assert (=> b!644141 (=> (not res!417402) (not e!369059))))

(assert (=> b!644141 (= res!417402 (and (= (size!18776 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18776 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18776 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!644142 () Bool)

(declare-fun e!369052 () Bool)

(declare-fun lt!298596 () SeekEntryResult!6859)

(assert (=> b!644142 (= e!369052 (= lt!298593 lt!298596))))

(declare-fun b!644143 () Bool)

(declare-fun e!369054 () Bool)

(assert (=> b!644143 (= e!369058 e!369054)))

(declare-fun res!417396 () Bool)

(assert (=> b!644143 (=> res!417396 e!369054)))

(assert (=> b!644143 (= res!417396 (bvsge index!984 j!136))))

(declare-fun lt!298584 () Unit!21826)

(assert (=> b!644143 (= lt!298584 e!369060)))

(declare-fun c!73738 () Bool)

(assert (=> b!644143 (= c!73738 (bvslt j!136 index!984))))

(declare-fun b!644144 () Bool)

(assert (=> b!644144 (= e!369054 true)))

(assert (=> b!644144 e!369051))

(declare-fun res!417390 () Bool)

(assert (=> b!644144 (=> (not res!417390) (not e!369051))))

(assert (=> b!644144 (= res!417390 (arrayContainsKey!0 lt!298590 (select (arr!18412 a!2986) j!136) j!136))))

(declare-fun b!644145 () Bool)

(declare-fun Unit!21831 () Unit!21826)

(assert (=> b!644145 (= e!369049 Unit!21831)))

(assert (=> b!644145 false))

(declare-fun b!644146 () Bool)

(declare-fun res!417401 () Bool)

(assert (=> b!644146 (=> (not res!417401) (not e!369059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!644146 (= res!417401 (validKeyInArray!0 (select (arr!18412 a!2986) j!136)))))

(declare-fun b!644147 () Bool)

(declare-fun res!417399 () Bool)

(assert (=> b!644147 (=> (not res!417399) (not e!369059))))

(assert (=> b!644147 (= res!417399 (validKeyInArray!0 k0!1786))))

(declare-fun b!644148 () Bool)

(assert (=> b!644148 (= e!369056 (not e!369047))))

(declare-fun res!417403 () Bool)

(assert (=> b!644148 (=> res!417403 e!369047)))

(declare-fun lt!298583 () SeekEntryResult!6859)

(assert (=> b!644148 (= res!417403 (not (= lt!298583 (Found!6859 index!984))))))

(declare-fun lt!298592 () Unit!21826)

(assert (=> b!644148 (= lt!298592 e!369049)))

(declare-fun c!73739 () Bool)

(assert (=> b!644148 (= c!73739 (= lt!298583 Undefined!6859))))

(assert (=> b!644148 (= lt!298583 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!298587 lt!298590 mask!3053))))

(assert (=> b!644148 e!369052))

(declare-fun res!417393 () Bool)

(assert (=> b!644148 (=> (not res!417393) (not e!369052))))

(declare-fun lt!298585 () (_ BitVec 32))

(assert (=> b!644148 (= res!417393 (= lt!298596 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298585 vacantSpotIndex!68 lt!298587 lt!298590 mask!3053)))))

(assert (=> b!644148 (= lt!298596 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!298585 vacantSpotIndex!68 (select (arr!18412 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!644148 (= lt!298587 (select (store (arr!18412 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!298591 () Unit!21826)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38405 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21826)

(assert (=> b!644148 (= lt!298591 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!298585 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!644148 (= lt!298585 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!644149 () Bool)

(assert (=> b!644149 (= e!369053 e!369048)))

(declare-fun res!417394 () Bool)

(assert (=> b!644149 (=> (not res!417394) (not e!369048))))

(assert (=> b!644149 (= res!417394 (= (select (store (arr!18412 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!644149 (= lt!298590 (array!38406 (store (arr!18412 a!2986) i!1108 k0!1786) (size!18776 a!2986)))))

(declare-fun b!644150 () Bool)

(assert (=> b!644150 (= e!369055 (arrayContainsKey!0 lt!298590 (select (arr!18412 a!2986) j!136) index!984))))

(declare-fun b!644151 () Bool)

(declare-fun res!417395 () Bool)

(assert (=> b!644151 (=> (not res!417395) (not e!369059))))

(assert (=> b!644151 (= res!417395 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!644152 () Bool)

(assert (=> b!644152 (= e!369059 e!369053)))

(declare-fun res!417397 () Bool)

(assert (=> b!644152 (=> (not res!417397) (not e!369053))))

(declare-fun lt!298594 () SeekEntryResult!6859)

(assert (=> b!644152 (= res!417397 (or (= lt!298594 (MissingZero!6859 i!1108)) (= lt!298594 (MissingVacant!6859 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38405 (_ BitVec 32)) SeekEntryResult!6859)

(assert (=> b!644152 (= lt!298594 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!417389 () Bool)

(assert (=> start!58352 (=> (not res!417389) (not e!369059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58352 (= res!417389 (validMask!0 mask!3053))))

(assert (=> start!58352 e!369059))

(assert (=> start!58352 true))

(declare-fun array_inv!14186 (array!38405) Bool)

(assert (=> start!58352 (array_inv!14186 a!2986)))

(declare-fun b!644153 () Bool)

(assert (=> b!644153 (= e!369050 e!369061)))

(declare-fun res!417391 () Bool)

(assert (=> b!644153 (=> res!417391 e!369061)))

(assert (=> b!644153 (= res!417391 (or (not (= (select (arr!18412 a!2986) j!136) lt!298587)) (not (= (select (arr!18412 a!2986) j!136) lt!298588)) (bvsge j!136 index!984)))))

(assert (= (and start!58352 res!417389) b!644141))

(assert (= (and b!644141 res!417402) b!644146))

(assert (= (and b!644146 res!417401) b!644147))

(assert (= (and b!644147 res!417399) b!644151))

(assert (= (and b!644151 res!417395) b!644152))

(assert (= (and b!644152 res!417397) b!644131))

(assert (= (and b!644131 res!417406) b!644135))

(assert (= (and b!644135 res!417398) b!644132))

(assert (= (and b!644132 res!417400) b!644149))

(assert (= (and b!644149 res!417394) b!644139))

(assert (= (and b!644139 res!417405) b!644148))

(assert (= (and b!644148 res!417393) b!644142))

(assert (= (and b!644148 c!73739) b!644145))

(assert (= (and b!644148 (not c!73739)) b!644140))

(assert (= (and b!644148 (not res!417403)) b!644133))

(assert (= (and b!644133 res!417404) b!644153))

(assert (= (and b!644153 (not res!417391)) b!644134))

(assert (= (and b!644134 res!417392) b!644150))

(assert (= (and b!644133 (not res!417407)) b!644143))

(assert (= (and b!644143 c!73738) b!644138))

(assert (= (and b!644143 (not c!73738)) b!644136))

(assert (= (and b!644143 (not res!417396)) b!644144))

(assert (= (and b!644144 res!417390) b!644137))

(declare-fun m!617823 () Bool)

(assert (=> b!644135 m!617823))

(declare-fun m!617825 () Bool)

(assert (=> b!644138 m!617825))

(declare-fun m!617827 () Bool)

(assert (=> b!644138 m!617827))

(declare-fun m!617829 () Bool)

(assert (=> b!644138 m!617829))

(declare-fun m!617831 () Bool)

(assert (=> b!644138 m!617831))

(assert (=> b!644138 m!617829))

(declare-fun m!617833 () Bool)

(assert (=> b!644138 m!617833))

(assert (=> b!644138 m!617829))

(declare-fun m!617835 () Bool)

(assert (=> b!644138 m!617835))

(declare-fun m!617837 () Bool)

(assert (=> b!644138 m!617837))

(declare-fun m!617839 () Bool)

(assert (=> b!644138 m!617839))

(assert (=> b!644138 m!617829))

(declare-fun m!617841 () Bool)

(assert (=> b!644132 m!617841))

(declare-fun m!617843 () Bool)

(assert (=> b!644147 m!617843))

(declare-fun m!617845 () Bool)

(assert (=> b!644152 m!617845))

(declare-fun m!617847 () Bool)

(assert (=> b!644151 m!617847))

(declare-fun m!617849 () Bool)

(assert (=> b!644149 m!617849))

(declare-fun m!617851 () Bool)

(assert (=> b!644149 m!617851))

(declare-fun m!617853 () Bool)

(assert (=> b!644139 m!617853))

(assert (=> b!644139 m!617829))

(assert (=> b!644139 m!617829))

(declare-fun m!617855 () Bool)

(assert (=> b!644139 m!617855))

(declare-fun m!617857 () Bool)

(assert (=> b!644148 m!617857))

(declare-fun m!617859 () Bool)

(assert (=> b!644148 m!617859))

(assert (=> b!644148 m!617829))

(assert (=> b!644148 m!617829))

(declare-fun m!617861 () Bool)

(assert (=> b!644148 m!617861))

(assert (=> b!644148 m!617849))

(declare-fun m!617863 () Bool)

(assert (=> b!644148 m!617863))

(declare-fun m!617865 () Bool)

(assert (=> b!644148 m!617865))

(declare-fun m!617867 () Bool)

(assert (=> b!644148 m!617867))

(assert (=> b!644137 m!617829))

(assert (=> b!644137 m!617829))

(declare-fun m!617869 () Bool)

(assert (=> b!644137 m!617869))

(assert (=> b!644134 m!617829))

(assert (=> b!644134 m!617829))

(declare-fun m!617871 () Bool)

(assert (=> b!644134 m!617871))

(assert (=> b!644150 m!617829))

(assert (=> b!644150 m!617829))

(assert (=> b!644150 m!617869))

(declare-fun m!617873 () Bool)

(assert (=> b!644131 m!617873))

(assert (=> b!644146 m!617829))

(assert (=> b!644146 m!617829))

(declare-fun m!617875 () Bool)

(assert (=> b!644146 m!617875))

(assert (=> b!644133 m!617829))

(assert (=> b!644133 m!617849))

(declare-fun m!617877 () Bool)

(assert (=> b!644133 m!617877))

(assert (=> b!644153 m!617829))

(declare-fun m!617879 () Bool)

(assert (=> start!58352 m!617879))

(declare-fun m!617881 () Bool)

(assert (=> start!58352 m!617881))

(assert (=> b!644144 m!617829))

(assert (=> b!644144 m!617829))

(assert (=> b!644144 m!617871))

(check-sat (not b!644144) (not b!644139) (not b!644150) (not b!644148) (not b!644131) (not b!644146) (not b!644138) (not start!58352) (not b!644134) (not b!644152) (not b!644135) (not b!644151) (not b!644147) (not b!644137))
(check-sat)
