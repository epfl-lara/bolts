; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66780 () Bool)

(assert start!66780)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42297 0))(
  ( (array!42298 (arr!20245 (Array (_ BitVec 32) (_ BitVec 64))) (size!20666 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42297)

(declare-fun b!769145 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7852 0))(
  ( (MissingZero!7852 (index!33775 (_ BitVec 32))) (Found!7852 (index!33776 (_ BitVec 32))) (Intermediate!7852 (undefined!8664 Bool) (index!33777 (_ BitVec 32)) (x!64736 (_ BitVec 32))) (Undefined!7852) (MissingVacant!7852 (index!33778 (_ BitVec 32))) )
))
(declare-fun lt!342230 () SeekEntryResult!7852)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!428329 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42297 (_ BitVec 32)) SeekEntryResult!7852)

(assert (=> b!769145 (= e!428329 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20245 a!3186) j!159) a!3186 mask!3328) lt!342230))))

(declare-fun b!769146 () Bool)

(declare-fun e!428325 () Bool)

(assert (=> b!769146 (= e!428325 true)))

(declare-datatypes ((Unit!26444 0))(
  ( (Unit!26445) )
))
(declare-fun lt!342223 () Unit!26444)

(declare-fun e!428323 () Unit!26444)

(assert (=> b!769146 (= lt!342223 e!428323)))

(declare-fun c!84843 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!769146 (= c!84843 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!342232 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769146 (= lt!342232 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun lt!342226 () SeekEntryResult!7852)

(declare-fun e!428327 () Bool)

(declare-fun b!769147 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42297 (_ BitVec 32)) SeekEntryResult!7852)

(assert (=> b!769147 (= e!428327 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20245 a!3186) j!159) a!3186 mask!3328) lt!342226))))

(declare-fun b!769148 () Bool)

(declare-fun res!520267 () Bool)

(declare-fun e!428326 () Bool)

(assert (=> b!769148 (=> (not res!520267) (not e!428326))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769148 (= res!520267 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20245 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769149 () Bool)

(assert (=> b!769149 (= e!428327 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20245 a!3186) j!159) a!3186 mask!3328) (Found!7852 j!159)))))

(declare-fun b!769150 () Bool)

(declare-fun res!520255 () Bool)

(declare-fun e!428324 () Bool)

(assert (=> b!769150 (=> (not res!520255) (not e!428324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769150 (= res!520255 (validKeyInArray!0 (select (arr!20245 a!3186) j!159)))))

(declare-fun b!769151 () Bool)

(declare-fun res!520253 () Bool)

(declare-fun e!428320 () Bool)

(assert (=> b!769151 (=> (not res!520253) (not e!428320))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42297 (_ BitVec 32)) Bool)

(assert (=> b!769151 (= res!520253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769152 () Bool)

(declare-fun res!520265 () Bool)

(assert (=> b!769152 (=> (not res!520265) (not e!428324))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769152 (= res!520265 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769153 () Bool)

(declare-fun res!520257 () Bool)

(assert (=> b!769153 (=> (not res!520257) (not e!428326))))

(assert (=> b!769153 (= res!520257 e!428327)))

(declare-fun c!84842 () Bool)

(assert (=> b!769153 (= c!84842 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769154 () Bool)

(declare-fun res!520256 () Bool)

(assert (=> b!769154 (=> (not res!520256) (not e!428320))))

(declare-datatypes ((List!14300 0))(
  ( (Nil!14297) (Cons!14296 (h!15395 (_ BitVec 64)) (t!20623 List!14300)) )
))
(declare-fun arrayNoDuplicates!0 (array!42297 (_ BitVec 32) List!14300) Bool)

(assert (=> b!769154 (= res!520256 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14297))))

(declare-fun b!769155 () Bool)

(declare-fun Unit!26446 () Unit!26444)

(assert (=> b!769155 (= e!428323 Unit!26446)))

(assert (=> b!769155 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342232 (select (arr!20245 a!3186) j!159) a!3186 mask!3328) lt!342226)))

(declare-fun b!769156 () Bool)

(declare-fun e!428322 () Bool)

(assert (=> b!769156 (= e!428322 e!428329)))

(declare-fun res!520259 () Bool)

(assert (=> b!769156 (=> (not res!520259) (not e!428329))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42297 (_ BitVec 32)) SeekEntryResult!7852)

(assert (=> b!769156 (= res!520259 (= (seekEntryOrOpen!0 (select (arr!20245 a!3186) j!159) a!3186 mask!3328) lt!342230))))

(assert (=> b!769156 (= lt!342230 (Found!7852 j!159))))

(declare-fun b!769157 () Bool)

(declare-fun Unit!26447 () Unit!26444)

(assert (=> b!769157 (= e!428323 Unit!26447)))

(declare-fun lt!342225 () SeekEntryResult!7852)

(assert (=> b!769157 (= lt!342225 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20245 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!769157 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342232 resIntermediateIndex!5 (select (arr!20245 a!3186) j!159) a!3186 mask!3328) (Found!7852 j!159))))

(declare-fun b!769158 () Bool)

(declare-fun e!428328 () Bool)

(assert (=> b!769158 (= e!428326 e!428328)))

(declare-fun res!520261 () Bool)

(assert (=> b!769158 (=> (not res!520261) (not e!428328))))

(declare-fun lt!342227 () SeekEntryResult!7852)

(declare-fun lt!342228 () SeekEntryResult!7852)

(assert (=> b!769158 (= res!520261 (= lt!342227 lt!342228))))

(declare-fun lt!342222 () (_ BitVec 64))

(declare-fun lt!342231 () array!42297)

(assert (=> b!769158 (= lt!342228 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342222 lt!342231 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769158 (= lt!342227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342222 mask!3328) lt!342222 lt!342231 mask!3328))))

(assert (=> b!769158 (= lt!342222 (select (store (arr!20245 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!769158 (= lt!342231 (array!42298 (store (arr!20245 a!3186) i!1173 k0!2102) (size!20666 a!3186)))))

(declare-fun b!769159 () Bool)

(assert (=> b!769159 (= e!428328 (not e!428325))))

(declare-fun res!520264 () Bool)

(assert (=> b!769159 (=> res!520264 e!428325)))

(get-info :version)

(assert (=> b!769159 (= res!520264 (or (not ((_ is Intermediate!7852) lt!342228)) (bvsge x!1131 (x!64736 lt!342228))))))

(assert (=> b!769159 e!428322))

(declare-fun res!520262 () Bool)

(assert (=> b!769159 (=> (not res!520262) (not e!428322))))

(assert (=> b!769159 (= res!520262 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342224 () Unit!26444)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26444)

(assert (=> b!769159 (= lt!342224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769160 () Bool)

(assert (=> b!769160 (= e!428320 e!428326)))

(declare-fun res!520266 () Bool)

(assert (=> b!769160 (=> (not res!520266) (not e!428326))))

(assert (=> b!769160 (= res!520266 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20245 a!3186) j!159) mask!3328) (select (arr!20245 a!3186) j!159) a!3186 mask!3328) lt!342226))))

(assert (=> b!769160 (= lt!342226 (Intermediate!7852 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!520258 () Bool)

(assert (=> start!66780 (=> (not res!520258) (not e!428324))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66780 (= res!520258 (validMask!0 mask!3328))))

(assert (=> start!66780 e!428324))

(assert (=> start!66780 true))

(declare-fun array_inv!16019 (array!42297) Bool)

(assert (=> start!66780 (array_inv!16019 a!3186)))

(declare-fun b!769161 () Bool)

(declare-fun res!520252 () Bool)

(assert (=> b!769161 (=> (not res!520252) (not e!428320))))

(assert (=> b!769161 (= res!520252 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20666 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20666 a!3186))))))

(declare-fun b!769162 () Bool)

(assert (=> b!769162 (= e!428324 e!428320)))

(declare-fun res!520263 () Bool)

(assert (=> b!769162 (=> (not res!520263) (not e!428320))))

(declare-fun lt!342229 () SeekEntryResult!7852)

(assert (=> b!769162 (= res!520263 (or (= lt!342229 (MissingZero!7852 i!1173)) (= lt!342229 (MissingVacant!7852 i!1173))))))

(assert (=> b!769162 (= lt!342229 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!769163 () Bool)

(declare-fun res!520254 () Bool)

(assert (=> b!769163 (=> (not res!520254) (not e!428324))))

(assert (=> b!769163 (= res!520254 (validKeyInArray!0 k0!2102))))

(declare-fun b!769164 () Bool)

(declare-fun res!520260 () Bool)

(assert (=> b!769164 (=> (not res!520260) (not e!428324))))

(assert (=> b!769164 (= res!520260 (and (= (size!20666 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20666 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20666 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66780 res!520258) b!769164))

(assert (= (and b!769164 res!520260) b!769150))

(assert (= (and b!769150 res!520255) b!769163))

(assert (= (and b!769163 res!520254) b!769152))

(assert (= (and b!769152 res!520265) b!769162))

(assert (= (and b!769162 res!520263) b!769151))

(assert (= (and b!769151 res!520253) b!769154))

(assert (= (and b!769154 res!520256) b!769161))

(assert (= (and b!769161 res!520252) b!769160))

(assert (= (and b!769160 res!520266) b!769148))

(assert (= (and b!769148 res!520267) b!769153))

(assert (= (and b!769153 c!84842) b!769147))

(assert (= (and b!769153 (not c!84842)) b!769149))

(assert (= (and b!769153 res!520257) b!769158))

(assert (= (and b!769158 res!520261) b!769159))

(assert (= (and b!769159 res!520262) b!769156))

(assert (= (and b!769156 res!520259) b!769145))

(assert (= (and b!769159 (not res!520264)) b!769146))

(assert (= (and b!769146 c!84843) b!769155))

(assert (= (and b!769146 (not c!84843)) b!769157))

(declare-fun m!714659 () Bool)

(assert (=> b!769162 m!714659))

(declare-fun m!714661 () Bool)

(assert (=> b!769159 m!714661))

(declare-fun m!714663 () Bool)

(assert (=> b!769159 m!714663))

(declare-fun m!714665 () Bool)

(assert (=> b!769156 m!714665))

(assert (=> b!769156 m!714665))

(declare-fun m!714667 () Bool)

(assert (=> b!769156 m!714667))

(assert (=> b!769150 m!714665))

(assert (=> b!769150 m!714665))

(declare-fun m!714669 () Bool)

(assert (=> b!769150 m!714669))

(declare-fun m!714671 () Bool)

(assert (=> b!769163 m!714671))

(declare-fun m!714673 () Bool)

(assert (=> b!769151 m!714673))

(declare-fun m!714675 () Bool)

(assert (=> start!66780 m!714675))

(declare-fun m!714677 () Bool)

(assert (=> start!66780 m!714677))

(assert (=> b!769155 m!714665))

(assert (=> b!769155 m!714665))

(declare-fun m!714679 () Bool)

(assert (=> b!769155 m!714679))

(declare-fun m!714681 () Bool)

(assert (=> b!769154 m!714681))

(assert (=> b!769157 m!714665))

(assert (=> b!769157 m!714665))

(declare-fun m!714683 () Bool)

(assert (=> b!769157 m!714683))

(assert (=> b!769157 m!714665))

(declare-fun m!714685 () Bool)

(assert (=> b!769157 m!714685))

(assert (=> b!769149 m!714665))

(assert (=> b!769149 m!714665))

(assert (=> b!769149 m!714683))

(declare-fun m!714687 () Bool)

(assert (=> b!769148 m!714687))

(declare-fun m!714689 () Bool)

(assert (=> b!769146 m!714689))

(assert (=> b!769147 m!714665))

(assert (=> b!769147 m!714665))

(declare-fun m!714691 () Bool)

(assert (=> b!769147 m!714691))

(declare-fun m!714693 () Bool)

(assert (=> b!769158 m!714693))

(declare-fun m!714695 () Bool)

(assert (=> b!769158 m!714695))

(declare-fun m!714697 () Bool)

(assert (=> b!769158 m!714697))

(assert (=> b!769158 m!714697))

(declare-fun m!714699 () Bool)

(assert (=> b!769158 m!714699))

(declare-fun m!714701 () Bool)

(assert (=> b!769158 m!714701))

(declare-fun m!714703 () Bool)

(assert (=> b!769152 m!714703))

(assert (=> b!769145 m!714665))

(assert (=> b!769145 m!714665))

(declare-fun m!714705 () Bool)

(assert (=> b!769145 m!714705))

(assert (=> b!769160 m!714665))

(assert (=> b!769160 m!714665))

(declare-fun m!714707 () Bool)

(assert (=> b!769160 m!714707))

(assert (=> b!769160 m!714707))

(assert (=> b!769160 m!714665))

(declare-fun m!714709 () Bool)

(assert (=> b!769160 m!714709))

(check-sat (not b!769160) (not b!769151) (not b!769145) (not b!769156) (not b!769157) (not b!769152) (not b!769158) (not b!769163) (not b!769150) (not b!769154) (not b!769149) (not start!66780) (not b!769155) (not b!769146) (not b!769162) (not b!769147) (not b!769159))
(check-sat)
