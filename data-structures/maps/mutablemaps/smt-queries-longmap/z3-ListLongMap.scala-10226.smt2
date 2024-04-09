; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120450 () Bool)

(assert start!120450)

(declare-fun b!1401687 () Bool)

(declare-datatypes ((SeekEntryResult!10574 0))(
  ( (MissingZero!10574 (index!44672 (_ BitVec 32))) (Found!10574 (index!44673 (_ BitVec 32))) (Intermediate!10574 (undefined!11386 Bool) (index!44674 (_ BitVec 32)) (x!126308 (_ BitVec 32))) (Undefined!10574) (MissingVacant!10574 (index!44675 (_ BitVec 32))) )
))
(declare-fun lt!617119 () SeekEntryResult!10574)

(declare-fun lt!617115 () (_ BitVec 64))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!793728 () Bool)

(declare-datatypes ((array!95777 0))(
  ( (array!95778 (arr!46235 (Array (_ BitVec 32) (_ BitVec 64))) (size!46786 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95777)

(declare-fun lt!617118 () array!95777)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95777 (_ BitVec 32)) SeekEntryResult!10574)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95777 (_ BitVec 32)) SeekEntryResult!10574)

(assert (=> b!1401687 (= e!793728 (= (seekEntryOrOpen!0 lt!617115 lt!617118 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126308 lt!617119) (index!44674 lt!617119) (index!44674 lt!617119) (select (arr!46235 a!2901) j!112) lt!617118 mask!2840)))))

(declare-fun e!793733 () Bool)

(declare-fun b!1401688 () Bool)

(assert (=> b!1401688 (= e!793733 (= (seekEntryOrOpen!0 (select (arr!46235 a!2901) j!112) a!2901 mask!2840) (Found!10574 j!112)))))

(declare-fun b!1401689 () Bool)

(declare-fun res!940307 () Bool)

(declare-fun e!793729 () Bool)

(assert (=> b!1401689 (=> (not res!940307) (not e!793729))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1401689 (= res!940307 (and (= (size!46786 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46786 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46786 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1401690 () Bool)

(declare-fun e!793727 () Bool)

(assert (=> b!1401690 (= e!793729 (not e!793727))))

(declare-fun res!940315 () Bool)

(assert (=> b!1401690 (=> res!940315 e!793727)))

(declare-fun lt!617116 () SeekEntryResult!10574)

(get-info :version)

(assert (=> b!1401690 (= res!940315 (or (not ((_ is Intermediate!10574) lt!617116)) (undefined!11386 lt!617116)))))

(assert (=> b!1401690 e!793733))

(declare-fun res!940314 () Bool)

(assert (=> b!1401690 (=> (not res!940314) (not e!793733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95777 (_ BitVec 32)) Bool)

(assert (=> b!1401690 (= res!940314 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47102 0))(
  ( (Unit!47103) )
))
(declare-fun lt!617114 () Unit!47102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47102)

(assert (=> b!1401690 (= lt!617114 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!617113 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95777 (_ BitVec 32)) SeekEntryResult!10574)

(assert (=> b!1401690 (= lt!617116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617113 (select (arr!46235 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1401690 (= lt!617113 (toIndex!0 (select (arr!46235 a!2901) j!112) mask!2840))))

(declare-fun b!1401691 () Bool)

(declare-fun e!793732 () Bool)

(assert (=> b!1401691 (= e!793732 true)))

(declare-fun lt!617117 () SeekEntryResult!10574)

(assert (=> b!1401691 (= lt!617117 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!617113 lt!617115 lt!617118 mask!2840))))

(declare-fun b!1401692 () Bool)

(declare-fun res!940312 () Bool)

(assert (=> b!1401692 (=> (not res!940312) (not e!793729))))

(assert (=> b!1401692 (= res!940312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1401693 () Bool)

(declare-fun res!940311 () Bool)

(assert (=> b!1401693 (=> (not res!940311) (not e!793729))))

(declare-datatypes ((List!32934 0))(
  ( (Nil!32931) (Cons!32930 (h!34178 (_ BitVec 64)) (t!47635 List!32934)) )
))
(declare-fun arrayNoDuplicates!0 (array!95777 (_ BitVec 32) List!32934) Bool)

(assert (=> b!1401693 (= res!940311 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32931))))

(declare-fun b!1401694 () Bool)

(declare-fun res!940316 () Bool)

(assert (=> b!1401694 (=> (not res!940316) (not e!793729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1401694 (= res!940316 (validKeyInArray!0 (select (arr!46235 a!2901) j!112)))))

(declare-fun b!1401695 () Bool)

(declare-fun e!793730 () Bool)

(assert (=> b!1401695 (= e!793730 e!793732)))

(declare-fun res!940308 () Bool)

(assert (=> b!1401695 (=> res!940308 e!793732)))

(assert (=> b!1401695 (= res!940308 (or (bvslt (x!126308 lt!617116) #b00000000000000000000000000000000) (bvsgt (x!126308 lt!617116) #b01111111111111111111111111111110) (bvslt (x!126308 lt!617119) #b00000000000000000000000000000000) (bvsgt (x!126308 lt!617119) #b01111111111111111111111111111110) (bvslt lt!617113 #b00000000000000000000000000000000) (bvsge lt!617113 (size!46786 a!2901)) (bvslt (index!44674 lt!617116) #b00000000000000000000000000000000) (bvsge (index!44674 lt!617116) (size!46786 a!2901)) (bvslt (index!44674 lt!617119) #b00000000000000000000000000000000) (bvsge (index!44674 lt!617119) (size!46786 a!2901)) (not (= lt!617116 (Intermediate!10574 false (index!44674 lt!617116) (x!126308 lt!617116)))) (not (= lt!617119 (Intermediate!10574 false (index!44674 lt!617119) (x!126308 lt!617119))))))))

(assert (=> b!1401695 e!793728))

(declare-fun res!940317 () Bool)

(assert (=> b!1401695 (=> (not res!940317) (not e!793728))))

(assert (=> b!1401695 (= res!940317 (and (not (undefined!11386 lt!617119)) (= (index!44674 lt!617119) i!1037) (bvslt (x!126308 lt!617119) (x!126308 lt!617116)) (= (select (store (arr!46235 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44674 lt!617119)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!617112 () Unit!47102)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47102)

(assert (=> b!1401695 (= lt!617112 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!617113 (x!126308 lt!617116) (index!44674 lt!617116) (x!126308 lt!617119) (index!44674 lt!617119) (undefined!11386 lt!617119) mask!2840))))

(declare-fun res!940309 () Bool)

(assert (=> start!120450 (=> (not res!940309) (not e!793729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120450 (= res!940309 (validMask!0 mask!2840))))

(assert (=> start!120450 e!793729))

(assert (=> start!120450 true))

(declare-fun array_inv!35180 (array!95777) Bool)

(assert (=> start!120450 (array_inv!35180 a!2901)))

(declare-fun b!1401696 () Bool)

(assert (=> b!1401696 (= e!793727 e!793730)))

(declare-fun res!940310 () Bool)

(assert (=> b!1401696 (=> res!940310 e!793730)))

(assert (=> b!1401696 (= res!940310 (or (= lt!617116 lt!617119) (not ((_ is Intermediate!10574) lt!617119))))))

(assert (=> b!1401696 (= lt!617119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!617115 mask!2840) lt!617115 lt!617118 mask!2840))))

(assert (=> b!1401696 (= lt!617115 (select (store (arr!46235 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1401696 (= lt!617118 (array!95778 (store (arr!46235 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46786 a!2901)))))

(declare-fun b!1401697 () Bool)

(declare-fun res!940313 () Bool)

(assert (=> b!1401697 (=> (not res!940313) (not e!793729))))

(assert (=> b!1401697 (= res!940313 (validKeyInArray!0 (select (arr!46235 a!2901) i!1037)))))

(assert (= (and start!120450 res!940309) b!1401689))

(assert (= (and b!1401689 res!940307) b!1401697))

(assert (= (and b!1401697 res!940313) b!1401694))

(assert (= (and b!1401694 res!940316) b!1401692))

(assert (= (and b!1401692 res!940312) b!1401693))

(assert (= (and b!1401693 res!940311) b!1401690))

(assert (= (and b!1401690 res!940314) b!1401688))

(assert (= (and b!1401690 (not res!940315)) b!1401696))

(assert (= (and b!1401696 (not res!940310)) b!1401695))

(assert (= (and b!1401695 res!940317) b!1401687))

(assert (= (and b!1401695 (not res!940308)) b!1401691))

(declare-fun m!1289641 () Bool)

(assert (=> b!1401697 m!1289641))

(assert (=> b!1401697 m!1289641))

(declare-fun m!1289643 () Bool)

(assert (=> b!1401697 m!1289643))

(declare-fun m!1289645 () Bool)

(assert (=> b!1401693 m!1289645))

(declare-fun m!1289647 () Bool)

(assert (=> b!1401690 m!1289647))

(declare-fun m!1289649 () Bool)

(assert (=> b!1401690 m!1289649))

(assert (=> b!1401690 m!1289647))

(declare-fun m!1289651 () Bool)

(assert (=> b!1401690 m!1289651))

(assert (=> b!1401690 m!1289647))

(declare-fun m!1289653 () Bool)

(assert (=> b!1401690 m!1289653))

(declare-fun m!1289655 () Bool)

(assert (=> b!1401690 m!1289655))

(assert (=> b!1401688 m!1289647))

(assert (=> b!1401688 m!1289647))

(declare-fun m!1289657 () Bool)

(assert (=> b!1401688 m!1289657))

(assert (=> b!1401694 m!1289647))

(assert (=> b!1401694 m!1289647))

(declare-fun m!1289659 () Bool)

(assert (=> b!1401694 m!1289659))

(declare-fun m!1289661 () Bool)

(assert (=> b!1401687 m!1289661))

(assert (=> b!1401687 m!1289647))

(assert (=> b!1401687 m!1289647))

(declare-fun m!1289663 () Bool)

(assert (=> b!1401687 m!1289663))

(declare-fun m!1289665 () Bool)

(assert (=> b!1401695 m!1289665))

(declare-fun m!1289667 () Bool)

(assert (=> b!1401695 m!1289667))

(declare-fun m!1289669 () Bool)

(assert (=> b!1401695 m!1289669))

(declare-fun m!1289671 () Bool)

(assert (=> b!1401691 m!1289671))

(declare-fun m!1289673 () Bool)

(assert (=> b!1401696 m!1289673))

(assert (=> b!1401696 m!1289673))

(declare-fun m!1289675 () Bool)

(assert (=> b!1401696 m!1289675))

(assert (=> b!1401696 m!1289665))

(declare-fun m!1289677 () Bool)

(assert (=> b!1401696 m!1289677))

(declare-fun m!1289679 () Bool)

(assert (=> b!1401692 m!1289679))

(declare-fun m!1289681 () Bool)

(assert (=> start!120450 m!1289681))

(declare-fun m!1289683 () Bool)

(assert (=> start!120450 m!1289683))

(check-sat (not b!1401691) (not b!1401693) (not b!1401696) (not b!1401697) (not b!1401692) (not b!1401694) (not start!120450) (not b!1401688) (not b!1401687) (not b!1401695) (not b!1401690))
(check-sat)
