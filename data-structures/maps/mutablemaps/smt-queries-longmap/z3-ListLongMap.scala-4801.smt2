; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65886 () Bool)

(assert start!65886)

(declare-fun b!759118 () Bool)

(declare-fun e!423224 () Bool)

(declare-fun e!423230 () Bool)

(assert (=> b!759118 (= e!423224 e!423230)))

(declare-fun res!513791 () Bool)

(assert (=> b!759118 (=> (not res!513791) (not e!423230))))

(declare-datatypes ((array!42012 0))(
  ( (array!42013 (arr!20116 (Array (_ BitVec 32) (_ BitVec 64))) (size!20537 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42012)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7723 0))(
  ( (MissingZero!7723 (index!33259 (_ BitVec 32))) (Found!7723 (index!33260 (_ BitVec 32))) (Intermediate!7723 (undefined!8535 Bool) (index!33261 (_ BitVec 32)) (x!64170 (_ BitVec 32))) (Undefined!7723) (MissingVacant!7723 (index!33262 (_ BitVec 32))) )
))
(declare-fun lt!338296 () SeekEntryResult!7723)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42012 (_ BitVec 32)) SeekEntryResult!7723)

(assert (=> b!759118 (= res!513791 (= (seekEntryOrOpen!0 (select (arr!20116 a!3186) j!159) a!3186 mask!3328) lt!338296))))

(assert (=> b!759118 (= lt!338296 (Found!7723 j!159))))

(declare-fun b!759119 () Bool)

(declare-fun res!513792 () Bool)

(declare-fun e!423225 () Bool)

(assert (=> b!759119 (=> (not res!513792) (not e!423225))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!759119 (= res!513792 (and (= (size!20537 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20537 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20537 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759120 () Bool)

(declare-fun res!513790 () Bool)

(declare-fun e!423226 () Bool)

(assert (=> b!759120 (=> (not res!513790) (not e!423226))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!759120 (= res!513790 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20116 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!423228 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!338300 () SeekEntryResult!7723)

(declare-fun b!759121 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42012 (_ BitVec 32)) SeekEntryResult!7723)

(assert (=> b!759121 (= e!423228 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20116 a!3186) j!159) a!3186 mask!3328) lt!338300))))

(declare-fun b!759122 () Bool)

(declare-fun e!423231 () Bool)

(assert (=> b!759122 (= e!423231 (not true))))

(assert (=> b!759122 e!423224))

(declare-fun res!513789 () Bool)

(assert (=> b!759122 (=> (not res!513789) (not e!423224))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42012 (_ BitVec 32)) Bool)

(assert (=> b!759122 (= res!513789 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26286 0))(
  ( (Unit!26287) )
))
(declare-fun lt!338299 () Unit!26286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42012 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26286)

(assert (=> b!759122 (= lt!338299 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!759123 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42012 (_ BitVec 32)) SeekEntryResult!7723)

(assert (=> b!759123 (= e!423230 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20116 a!3186) j!159) a!3186 mask!3328) lt!338296))))

(declare-fun b!759124 () Bool)

(declare-fun e!423227 () Bool)

(assert (=> b!759124 (= e!423227 e!423226)))

(declare-fun res!513783 () Bool)

(assert (=> b!759124 (=> (not res!513783) (not e!423226))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759124 (= res!513783 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20116 a!3186) j!159) mask!3328) (select (arr!20116 a!3186) j!159) a!3186 mask!3328) lt!338300))))

(assert (=> b!759124 (= lt!338300 (Intermediate!7723 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759125 () Bool)

(declare-fun res!513788 () Bool)

(assert (=> b!759125 (=> (not res!513788) (not e!423227))))

(assert (=> b!759125 (= res!513788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!759126 () Bool)

(declare-fun res!513785 () Bool)

(assert (=> b!759126 (=> (not res!513785) (not e!423226))))

(assert (=> b!759126 (= res!513785 e!423228)))

(declare-fun c!83049 () Bool)

(assert (=> b!759126 (= c!83049 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759128 () Bool)

(assert (=> b!759128 (= e!423226 e!423231)))

(declare-fun res!513795 () Bool)

(assert (=> b!759128 (=> (not res!513795) (not e!423231))))

(declare-fun lt!338298 () (_ BitVec 64))

(declare-fun lt!338295 () array!42012)

(assert (=> b!759128 (= res!513795 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338298 mask!3328) lt!338298 lt!338295 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338298 lt!338295 mask!3328)))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!759128 (= lt!338298 (select (store (arr!20116 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!759128 (= lt!338295 (array!42013 (store (arr!20116 a!3186) i!1173 k0!2102) (size!20537 a!3186)))))

(declare-fun b!759129 () Bool)

(declare-fun res!513787 () Bool)

(assert (=> b!759129 (=> (not res!513787) (not e!423227))))

(declare-datatypes ((List!14171 0))(
  ( (Nil!14168) (Cons!14167 (h!15239 (_ BitVec 64)) (t!20494 List!14171)) )
))
(declare-fun arrayNoDuplicates!0 (array!42012 (_ BitVec 32) List!14171) Bool)

(assert (=> b!759129 (= res!513787 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14168))))

(declare-fun b!759130 () Bool)

(declare-fun res!513781 () Bool)

(assert (=> b!759130 (=> (not res!513781) (not e!423225))))

(declare-fun arrayContainsKey!0 (array!42012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759130 (= res!513781 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759131 () Bool)

(declare-fun res!513794 () Bool)

(assert (=> b!759131 (=> (not res!513794) (not e!423227))))

(assert (=> b!759131 (= res!513794 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20537 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20537 a!3186))))))

(declare-fun b!759132 () Bool)

(declare-fun res!513786 () Bool)

(assert (=> b!759132 (=> (not res!513786) (not e!423225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759132 (= res!513786 (validKeyInArray!0 (select (arr!20116 a!3186) j!159)))))

(declare-fun b!759133 () Bool)

(declare-fun res!513782 () Bool)

(assert (=> b!759133 (=> (not res!513782) (not e!423225))))

(assert (=> b!759133 (= res!513782 (validKeyInArray!0 k0!2102))))

(declare-fun b!759134 () Bool)

(assert (=> b!759134 (= e!423228 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20116 a!3186) j!159) a!3186 mask!3328) (Found!7723 j!159)))))

(declare-fun b!759127 () Bool)

(assert (=> b!759127 (= e!423225 e!423227)))

(declare-fun res!513793 () Bool)

(assert (=> b!759127 (=> (not res!513793) (not e!423227))))

(declare-fun lt!338297 () SeekEntryResult!7723)

(assert (=> b!759127 (= res!513793 (or (= lt!338297 (MissingZero!7723 i!1173)) (= lt!338297 (MissingVacant!7723 i!1173))))))

(assert (=> b!759127 (= lt!338297 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!513784 () Bool)

(assert (=> start!65886 (=> (not res!513784) (not e!423225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65886 (= res!513784 (validMask!0 mask!3328))))

(assert (=> start!65886 e!423225))

(assert (=> start!65886 true))

(declare-fun array_inv!15890 (array!42012) Bool)

(assert (=> start!65886 (array_inv!15890 a!3186)))

(assert (= (and start!65886 res!513784) b!759119))

(assert (= (and b!759119 res!513792) b!759132))

(assert (= (and b!759132 res!513786) b!759133))

(assert (= (and b!759133 res!513782) b!759130))

(assert (= (and b!759130 res!513781) b!759127))

(assert (= (and b!759127 res!513793) b!759125))

(assert (= (and b!759125 res!513788) b!759129))

(assert (= (and b!759129 res!513787) b!759131))

(assert (= (and b!759131 res!513794) b!759124))

(assert (= (and b!759124 res!513783) b!759120))

(assert (= (and b!759120 res!513790) b!759126))

(assert (= (and b!759126 c!83049) b!759121))

(assert (= (and b!759126 (not c!83049)) b!759134))

(assert (= (and b!759126 res!513785) b!759128))

(assert (= (and b!759128 res!513795) b!759122))

(assert (= (and b!759122 res!513789) b!759118))

(assert (= (and b!759118 res!513791) b!759123))

(declare-fun m!706595 () Bool)

(assert (=> b!759121 m!706595))

(assert (=> b!759121 m!706595))

(declare-fun m!706597 () Bool)

(assert (=> b!759121 m!706597))

(assert (=> b!759124 m!706595))

(assert (=> b!759124 m!706595))

(declare-fun m!706599 () Bool)

(assert (=> b!759124 m!706599))

(assert (=> b!759124 m!706599))

(assert (=> b!759124 m!706595))

(declare-fun m!706601 () Bool)

(assert (=> b!759124 m!706601))

(assert (=> b!759123 m!706595))

(assert (=> b!759123 m!706595))

(declare-fun m!706603 () Bool)

(assert (=> b!759123 m!706603))

(declare-fun m!706605 () Bool)

(assert (=> b!759129 m!706605))

(declare-fun m!706607 () Bool)

(assert (=> b!759130 m!706607))

(declare-fun m!706609 () Bool)

(assert (=> start!65886 m!706609))

(declare-fun m!706611 () Bool)

(assert (=> start!65886 m!706611))

(declare-fun m!706613 () Bool)

(assert (=> b!759133 m!706613))

(assert (=> b!759134 m!706595))

(assert (=> b!759134 m!706595))

(declare-fun m!706615 () Bool)

(assert (=> b!759134 m!706615))

(declare-fun m!706617 () Bool)

(assert (=> b!759125 m!706617))

(assert (=> b!759132 m!706595))

(assert (=> b!759132 m!706595))

(declare-fun m!706619 () Bool)

(assert (=> b!759132 m!706619))

(declare-fun m!706621 () Bool)

(assert (=> b!759127 m!706621))

(declare-fun m!706623 () Bool)

(assert (=> b!759128 m!706623))

(declare-fun m!706625 () Bool)

(assert (=> b!759128 m!706625))

(declare-fun m!706627 () Bool)

(assert (=> b!759128 m!706627))

(assert (=> b!759128 m!706623))

(declare-fun m!706629 () Bool)

(assert (=> b!759128 m!706629))

(declare-fun m!706631 () Bool)

(assert (=> b!759128 m!706631))

(declare-fun m!706633 () Bool)

(assert (=> b!759122 m!706633))

(declare-fun m!706635 () Bool)

(assert (=> b!759122 m!706635))

(declare-fun m!706637 () Bool)

(assert (=> b!759120 m!706637))

(assert (=> b!759118 m!706595))

(assert (=> b!759118 m!706595))

(declare-fun m!706639 () Bool)

(assert (=> b!759118 m!706639))

(check-sat (not b!759129) (not b!759128) (not b!759134) (not b!759118) (not b!759133) (not b!759130) (not start!65886) (not b!759127) (not b!759123) (not b!759121) (not b!759124) (not b!759132) (not b!759122) (not b!759125))
(check-sat)
