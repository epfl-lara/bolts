; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67702 () Bool)

(assert start!67702)

(declare-datatypes ((array!42697 0))(
  ( (array!42698 (arr!20433 (Array (_ BitVec 32) (_ BitVec 64))) (size!20854 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42697)

(declare-datatypes ((SeekEntryResult!8040 0))(
  ( (MissingZero!8040 (index!34527 (_ BitVec 32))) (Found!8040 (index!34528 (_ BitVec 32))) (Intermediate!8040 (undefined!8852 Bool) (index!34529 (_ BitVec 32)) (x!65509 (_ BitVec 32))) (Undefined!8040) (MissingVacant!8040 (index!34530 (_ BitVec 32))) )
))
(declare-fun lt!349602 () SeekEntryResult!8040)

(declare-fun b!784208 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!436035 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42697 (_ BitVec 32)) SeekEntryResult!8040)

(assert (=> b!784208 (= e!436035 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20433 a!3186) j!159) a!3186 mask!3328) lt!349602))))

(declare-fun b!784209 () Bool)

(declare-fun e!436034 () Bool)

(declare-fun e!436033 () Bool)

(assert (=> b!784209 (= e!436034 e!436033)))

(declare-fun res!530789 () Bool)

(assert (=> b!784209 (=> (not res!530789) (not e!436033))))

(declare-fun lt!349604 () SeekEntryResult!8040)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!784209 (= res!530789 (or (= lt!349604 (MissingZero!8040 i!1173)) (= lt!349604 (MissingVacant!8040 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42697 (_ BitVec 32)) SeekEntryResult!8040)

(assert (=> b!784209 (= lt!349604 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!784210 () Bool)

(declare-fun res!530790 () Bool)

(declare-fun e!436031 () Bool)

(assert (=> b!784210 (=> (not res!530790) (not e!436031))))

(assert (=> b!784210 (= res!530790 e!436035)))

(declare-fun c!87119 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784210 (= c!87119 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784211 () Bool)

(declare-datatypes ((Unit!27070 0))(
  ( (Unit!27071) )
))
(declare-fun e!436032 () Unit!27070)

(declare-fun Unit!27072 () Unit!27070)

(assert (=> b!784211 (= e!436032 Unit!27072)))

(declare-fun b!784212 () Bool)

(declare-fun res!530797 () Bool)

(assert (=> b!784212 (=> (not res!530797) (not e!436033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42697 (_ BitVec 32)) Bool)

(assert (=> b!784212 (= res!530797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!784213 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42697 (_ BitVec 32)) SeekEntryResult!8040)

(assert (=> b!784213 (= e!436035 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20433 a!3186) j!159) a!3186 mask!3328) (Found!8040 j!159)))))

(declare-fun b!784214 () Bool)

(assert (=> b!784214 (= e!436033 e!436031)))

(declare-fun res!530795 () Bool)

(assert (=> b!784214 (=> (not res!530795) (not e!436031))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784214 (= res!530795 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20433 a!3186) j!159) mask!3328) (select (arr!20433 a!3186) j!159) a!3186 mask!3328) lt!349602))))

(assert (=> b!784214 (= lt!349602 (Intermediate!8040 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784215 () Bool)

(declare-fun res!530792 () Bool)

(assert (=> b!784215 (=> (not res!530792) (not e!436034))))

(declare-fun arrayContainsKey!0 (array!42697 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784215 (= res!530792 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784216 () Bool)

(declare-fun res!530800 () Bool)

(assert (=> b!784216 (=> (not res!530800) (not e!436034))))

(assert (=> b!784216 (= res!530800 (and (= (size!20854 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20854 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20854 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784217 () Bool)

(declare-fun e!436042 () Bool)

(declare-fun e!436040 () Bool)

(assert (=> b!784217 (= e!436042 e!436040)))

(declare-fun res!530798 () Bool)

(assert (=> b!784217 (=> res!530798 e!436040)))

(declare-fun lt!349608 () SeekEntryResult!8040)

(declare-fun lt!349600 () SeekEntryResult!8040)

(assert (=> b!784217 (= res!530798 (not (= lt!349608 lt!349600)))))

(assert (=> b!784217 (= lt!349608 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20433 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784218 () Bool)

(declare-fun e!436041 () Bool)

(declare-fun lt!349607 () SeekEntryResult!8040)

(assert (=> b!784218 (= e!436041 (= lt!349607 lt!349608))))

(declare-fun b!784219 () Bool)

(declare-fun e!436038 () Bool)

(assert (=> b!784219 (= e!436040 e!436038)))

(declare-fun res!530791 () Bool)

(assert (=> b!784219 (=> res!530791 e!436038)))

(declare-fun lt!349605 () (_ BitVec 64))

(declare-fun lt!349599 () (_ BitVec 64))

(assert (=> b!784219 (= res!530791 (= lt!349605 lt!349599))))

(assert (=> b!784219 (= lt!349605 (select (store (arr!20433 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!784220 () Bool)

(declare-fun res!530794 () Bool)

(assert (=> b!784220 (=> (not res!530794) (not e!436034))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784220 (= res!530794 (validKeyInArray!0 (select (arr!20433 a!3186) j!159)))))

(declare-fun b!784222 () Bool)

(declare-fun res!530802 () Bool)

(assert (=> b!784222 (=> (not res!530802) (not e!436041))))

(declare-fun lt!349609 () array!42697)

(assert (=> b!784222 (= res!530802 (= (seekEntryOrOpen!0 lt!349599 lt!349609 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349599 lt!349609 mask!3328)))))

(declare-fun b!784223 () Bool)

(declare-fun Unit!27073 () Unit!27070)

(assert (=> b!784223 (= e!436032 Unit!27073)))

(assert (=> b!784223 false))

(declare-fun b!784224 () Bool)

(declare-fun res!530803 () Bool)

(assert (=> b!784224 (=> (not res!530803) (not e!436034))))

(assert (=> b!784224 (= res!530803 (validKeyInArray!0 k!2102))))

(declare-fun b!784225 () Bool)

(declare-fun res!530801 () Bool)

(assert (=> b!784225 (=> (not res!530801) (not e!436031))))

(assert (=> b!784225 (= res!530801 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20433 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784226 () Bool)

(declare-fun e!436036 () Bool)

(assert (=> b!784226 (= e!436036 (not e!436042))))

(declare-fun res!530796 () Bool)

(assert (=> b!784226 (=> res!530796 e!436042)))

(declare-fun lt!349598 () SeekEntryResult!8040)

(assert (=> b!784226 (= res!530796 (or (not (is-Intermediate!8040 lt!349598)) (bvslt x!1131 (x!65509 lt!349598)) (not (= x!1131 (x!65509 lt!349598))) (not (= index!1321 (index!34529 lt!349598)))))))

(declare-fun e!436039 () Bool)

(assert (=> b!784226 e!436039))

(declare-fun res!530793 () Bool)

(assert (=> b!784226 (=> (not res!530793) (not e!436039))))

(assert (=> b!784226 (= res!530793 (= lt!349607 lt!349600))))

(assert (=> b!784226 (= lt!349600 (Found!8040 j!159))))

(assert (=> b!784226 (= lt!349607 (seekEntryOrOpen!0 (select (arr!20433 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!784226 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349601 () Unit!27070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27070)

(assert (=> b!784226 (= lt!349601 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784227 () Bool)

(assert (=> b!784227 (= e!436038 true)))

(assert (=> b!784227 e!436041))

(declare-fun res!530787 () Bool)

(assert (=> b!784227 (=> (not res!530787) (not e!436041))))

(assert (=> b!784227 (= res!530787 (= lt!349605 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349603 () Unit!27070)

(assert (=> b!784227 (= lt!349603 e!436032)))

(declare-fun c!87120 () Bool)

(assert (=> b!784227 (= c!87120 (= lt!349605 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784228 () Bool)

(assert (=> b!784228 (= e!436039 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20433 a!3186) j!159) a!3186 mask!3328) lt!349600))))

(declare-fun b!784221 () Bool)

(assert (=> b!784221 (= e!436031 e!436036)))

(declare-fun res!530785 () Bool)

(assert (=> b!784221 (=> (not res!530785) (not e!436036))))

(declare-fun lt!349606 () SeekEntryResult!8040)

(assert (=> b!784221 (= res!530785 (= lt!349606 lt!349598))))

(assert (=> b!784221 (= lt!349598 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349599 lt!349609 mask!3328))))

(assert (=> b!784221 (= lt!349606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349599 mask!3328) lt!349599 lt!349609 mask!3328))))

(assert (=> b!784221 (= lt!349599 (select (store (arr!20433 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784221 (= lt!349609 (array!42698 (store (arr!20433 a!3186) i!1173 k!2102) (size!20854 a!3186)))))

(declare-fun res!530786 () Bool)

(assert (=> start!67702 (=> (not res!530786) (not e!436034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67702 (= res!530786 (validMask!0 mask!3328))))

(assert (=> start!67702 e!436034))

(assert (=> start!67702 true))

(declare-fun array_inv!16207 (array!42697) Bool)

(assert (=> start!67702 (array_inv!16207 a!3186)))

(declare-fun b!784229 () Bool)

(declare-fun res!530799 () Bool)

(assert (=> b!784229 (=> (not res!530799) (not e!436033))))

(declare-datatypes ((List!14488 0))(
  ( (Nil!14485) (Cons!14484 (h!15607 (_ BitVec 64)) (t!20811 List!14488)) )
))
(declare-fun arrayNoDuplicates!0 (array!42697 (_ BitVec 32) List!14488) Bool)

(assert (=> b!784229 (= res!530799 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14485))))

(declare-fun b!784230 () Bool)

(declare-fun res!530788 () Bool)

(assert (=> b!784230 (=> (not res!530788) (not e!436033))))

(assert (=> b!784230 (= res!530788 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20854 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20854 a!3186))))))

(assert (= (and start!67702 res!530786) b!784216))

(assert (= (and b!784216 res!530800) b!784220))

(assert (= (and b!784220 res!530794) b!784224))

(assert (= (and b!784224 res!530803) b!784215))

(assert (= (and b!784215 res!530792) b!784209))

(assert (= (and b!784209 res!530789) b!784212))

(assert (= (and b!784212 res!530797) b!784229))

(assert (= (and b!784229 res!530799) b!784230))

(assert (= (and b!784230 res!530788) b!784214))

(assert (= (and b!784214 res!530795) b!784225))

(assert (= (and b!784225 res!530801) b!784210))

(assert (= (and b!784210 c!87119) b!784208))

(assert (= (and b!784210 (not c!87119)) b!784213))

(assert (= (and b!784210 res!530790) b!784221))

(assert (= (and b!784221 res!530785) b!784226))

(assert (= (and b!784226 res!530793) b!784228))

(assert (= (and b!784226 (not res!530796)) b!784217))

(assert (= (and b!784217 (not res!530798)) b!784219))

(assert (= (and b!784219 (not res!530791)) b!784227))

(assert (= (and b!784227 c!87120) b!784223))

(assert (= (and b!784227 (not c!87120)) b!784211))

(assert (= (and b!784227 res!530787) b!784222))

(assert (= (and b!784222 res!530802) b!784218))

(declare-fun m!726625 () Bool)

(assert (=> b!784224 m!726625))

(declare-fun m!726627 () Bool)

(assert (=> b!784229 m!726627))

(declare-fun m!726629 () Bool)

(assert (=> b!784225 m!726629))

(declare-fun m!726631 () Bool)

(assert (=> b!784209 m!726631))

(declare-fun m!726633 () Bool)

(assert (=> b!784220 m!726633))

(assert (=> b!784220 m!726633))

(declare-fun m!726635 () Bool)

(assert (=> b!784220 m!726635))

(declare-fun m!726637 () Bool)

(assert (=> b!784215 m!726637))

(assert (=> b!784228 m!726633))

(assert (=> b!784228 m!726633))

(declare-fun m!726639 () Bool)

(assert (=> b!784228 m!726639))

(assert (=> b!784208 m!726633))

(assert (=> b!784208 m!726633))

(declare-fun m!726641 () Bool)

(assert (=> b!784208 m!726641))

(declare-fun m!726643 () Bool)

(assert (=> b!784212 m!726643))

(declare-fun m!726645 () Bool)

(assert (=> b!784219 m!726645))

(declare-fun m!726647 () Bool)

(assert (=> b!784219 m!726647))

(assert (=> b!784217 m!726633))

(assert (=> b!784217 m!726633))

(declare-fun m!726649 () Bool)

(assert (=> b!784217 m!726649))

(assert (=> b!784214 m!726633))

(assert (=> b!784214 m!726633))

(declare-fun m!726651 () Bool)

(assert (=> b!784214 m!726651))

(assert (=> b!784214 m!726651))

(assert (=> b!784214 m!726633))

(declare-fun m!726653 () Bool)

(assert (=> b!784214 m!726653))

(declare-fun m!726655 () Bool)

(assert (=> b!784222 m!726655))

(declare-fun m!726657 () Bool)

(assert (=> b!784222 m!726657))

(assert (=> b!784226 m!726633))

(assert (=> b!784226 m!726633))

(declare-fun m!726659 () Bool)

(assert (=> b!784226 m!726659))

(declare-fun m!726661 () Bool)

(assert (=> b!784226 m!726661))

(declare-fun m!726663 () Bool)

(assert (=> b!784226 m!726663))

(declare-fun m!726665 () Bool)

(assert (=> start!67702 m!726665))

(declare-fun m!726667 () Bool)

(assert (=> start!67702 m!726667))

(declare-fun m!726669 () Bool)

(assert (=> b!784221 m!726669))

(declare-fun m!726671 () Bool)

(assert (=> b!784221 m!726671))

(assert (=> b!784221 m!726645))

(declare-fun m!726673 () Bool)

(assert (=> b!784221 m!726673))

(declare-fun m!726675 () Bool)

(assert (=> b!784221 m!726675))

(assert (=> b!784221 m!726669))

(assert (=> b!784213 m!726633))

(assert (=> b!784213 m!726633))

(assert (=> b!784213 m!726649))

(push 1)

