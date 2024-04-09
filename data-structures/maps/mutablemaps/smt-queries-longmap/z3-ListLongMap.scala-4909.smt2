; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67716 () Bool)

(assert start!67716)

(declare-fun b!784691 () Bool)

(declare-fun e!436286 () Bool)

(declare-fun e!436291 () Bool)

(assert (=> b!784691 (= e!436286 e!436291)))

(declare-fun res!531189 () Bool)

(assert (=> b!784691 (=> res!531189 e!436291)))

(declare-datatypes ((SeekEntryResult!8047 0))(
  ( (MissingZero!8047 (index!34555 (_ BitVec 32))) (Found!8047 (index!34556 (_ BitVec 32))) (Intermediate!8047 (undefined!8859 Bool) (index!34557 (_ BitVec 32)) (x!65532 (_ BitVec 32))) (Undefined!8047) (MissingVacant!8047 (index!34558 (_ BitVec 32))) )
))
(declare-fun lt!349855 () SeekEntryResult!8047)

(declare-fun lt!349860 () SeekEntryResult!8047)

(assert (=> b!784691 (= res!531189 (not (= lt!349855 lt!349860)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42711 0))(
  ( (array!42712 (arr!20440 (Array (_ BitVec 32) (_ BitVec 64))) (size!20861 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42711)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42711 (_ BitVec 32)) SeekEntryResult!8047)

(assert (=> b!784691 (= lt!349855 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20440 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784692 () Bool)

(declare-fun res!531197 () Bool)

(declare-fun e!436284 () Bool)

(assert (=> b!784692 (=> (not res!531197) (not e!436284))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784692 (= res!531197 (validKeyInArray!0 k0!2102))))

(declare-fun b!784693 () Bool)

(declare-fun e!436290 () Bool)

(declare-fun lt!349857 () SeekEntryResult!8047)

(assert (=> b!784693 (= e!436290 (= lt!349857 lt!349855))))

(declare-fun b!784694 () Bool)

(declare-datatypes ((Unit!27098 0))(
  ( (Unit!27099) )
))
(declare-fun e!436293 () Unit!27098)

(declare-fun Unit!27100 () Unit!27098)

(assert (=> b!784694 (= e!436293 Unit!27100)))

(declare-fun b!784695 () Bool)

(declare-fun res!531194 () Bool)

(assert (=> b!784695 (=> (not res!531194) (not e!436284))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!784695 (= res!531194 (and (= (size!20861 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20861 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20861 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784696 () Bool)

(declare-fun res!531192 () Bool)

(declare-fun e!436294 () Bool)

(assert (=> b!784696 (=> (not res!531192) (not e!436294))))

(declare-datatypes ((List!14495 0))(
  ( (Nil!14492) (Cons!14491 (h!15614 (_ BitVec 64)) (t!20818 List!14495)) )
))
(declare-fun arrayNoDuplicates!0 (array!42711 (_ BitVec 32) List!14495) Bool)

(assert (=> b!784696 (= res!531192 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14492))))

(declare-fun b!784697 () Bool)

(declare-fun res!531188 () Bool)

(assert (=> b!784697 (=> (not res!531188) (not e!436284))))

(assert (=> b!784697 (= res!531188 (validKeyInArray!0 (select (arr!20440 a!3186) j!159)))))

(declare-fun b!784698 () Bool)

(declare-fun res!531190 () Bool)

(declare-fun e!436292 () Bool)

(assert (=> b!784698 (=> (not res!531190) (not e!436292))))

(declare-fun e!436287 () Bool)

(assert (=> b!784698 (= res!531190 e!436287)))

(declare-fun c!87161 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784698 (= c!87161 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784699 () Bool)

(declare-fun e!436288 () Bool)

(assert (=> b!784699 (= e!436288 (not e!436286))))

(declare-fun res!531195 () Bool)

(assert (=> b!784699 (=> res!531195 e!436286)))

(declare-fun lt!349858 () SeekEntryResult!8047)

(get-info :version)

(assert (=> b!784699 (= res!531195 (or (not ((_ is Intermediate!8047) lt!349858)) (bvslt x!1131 (x!65532 lt!349858)) (not (= x!1131 (x!65532 lt!349858))) (not (= index!1321 (index!34557 lt!349858)))))))

(declare-fun e!436289 () Bool)

(assert (=> b!784699 e!436289))

(declare-fun res!531186 () Bool)

(assert (=> b!784699 (=> (not res!531186) (not e!436289))))

(assert (=> b!784699 (= res!531186 (= lt!349857 lt!349860))))

(assert (=> b!784699 (= lt!349860 (Found!8047 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42711 (_ BitVec 32)) SeekEntryResult!8047)

(assert (=> b!784699 (= lt!349857 (seekEntryOrOpen!0 (select (arr!20440 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42711 (_ BitVec 32)) Bool)

(assert (=> b!784699 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349850 () Unit!27098)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42711 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27098)

(assert (=> b!784699 (= lt!349850 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784700 () Bool)

(declare-fun res!531193 () Bool)

(assert (=> b!784700 (=> (not res!531193) (not e!436290))))

(declare-fun lt!349859 () array!42711)

(declare-fun lt!349861 () (_ BitVec 64))

(assert (=> b!784700 (= res!531193 (= (seekEntryOrOpen!0 lt!349861 lt!349859 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349861 lt!349859 mask!3328)))))

(declare-fun b!784701 () Bool)

(declare-fun res!531184 () Bool)

(assert (=> b!784701 (=> (not res!531184) (not e!436294))))

(assert (=> b!784701 (= res!531184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!349852 () SeekEntryResult!8047)

(declare-fun b!784702 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42711 (_ BitVec 32)) SeekEntryResult!8047)

(assert (=> b!784702 (= e!436287 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20440 a!3186) j!159) a!3186 mask!3328) lt!349852))))

(declare-fun b!784703 () Bool)

(assert (=> b!784703 (= e!436289 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20440 a!3186) j!159) a!3186 mask!3328) lt!349860))))

(declare-fun b!784704 () Bool)

(declare-fun Unit!27101 () Unit!27098)

(assert (=> b!784704 (= e!436293 Unit!27101)))

(assert (=> b!784704 false))

(declare-fun b!784705 () Bool)

(declare-fun res!531185 () Bool)

(assert (=> b!784705 (=> (not res!531185) (not e!436284))))

(declare-fun arrayContainsKey!0 (array!42711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784705 (= res!531185 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!531187 () Bool)

(assert (=> start!67716 (=> (not res!531187) (not e!436284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67716 (= res!531187 (validMask!0 mask!3328))))

(assert (=> start!67716 e!436284))

(assert (=> start!67716 true))

(declare-fun array_inv!16214 (array!42711) Bool)

(assert (=> start!67716 (array_inv!16214 a!3186)))

(declare-fun b!784706 () Bool)

(declare-fun res!531196 () Bool)

(assert (=> b!784706 (=> (not res!531196) (not e!436292))))

(assert (=> b!784706 (= res!531196 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20440 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784707 () Bool)

(assert (=> b!784707 (= e!436284 e!436294)))

(declare-fun res!531202 () Bool)

(assert (=> b!784707 (=> (not res!531202) (not e!436294))))

(declare-fun lt!349856 () SeekEntryResult!8047)

(assert (=> b!784707 (= res!531202 (or (= lt!349856 (MissingZero!8047 i!1173)) (= lt!349856 (MissingVacant!8047 i!1173))))))

(assert (=> b!784707 (= lt!349856 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!784708 () Bool)

(declare-fun e!436285 () Bool)

(assert (=> b!784708 (= e!436285 true)))

(assert (=> b!784708 e!436290))

(declare-fun res!531201 () Bool)

(assert (=> b!784708 (=> (not res!531201) (not e!436290))))

(declare-fun lt!349851 () (_ BitVec 64))

(assert (=> b!784708 (= res!531201 (= lt!349851 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349853 () Unit!27098)

(assert (=> b!784708 (= lt!349853 e!436293)))

(declare-fun c!87162 () Bool)

(assert (=> b!784708 (= c!87162 (= lt!349851 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784709 () Bool)

(declare-fun res!531191 () Bool)

(assert (=> b!784709 (=> (not res!531191) (not e!436294))))

(assert (=> b!784709 (= res!531191 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20861 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20861 a!3186))))))

(declare-fun b!784710 () Bool)

(assert (=> b!784710 (= e!436292 e!436288)))

(declare-fun res!531199 () Bool)

(assert (=> b!784710 (=> (not res!531199) (not e!436288))))

(declare-fun lt!349854 () SeekEntryResult!8047)

(assert (=> b!784710 (= res!531199 (= lt!349854 lt!349858))))

(assert (=> b!784710 (= lt!349858 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349861 lt!349859 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784710 (= lt!349854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349861 mask!3328) lt!349861 lt!349859 mask!3328))))

(assert (=> b!784710 (= lt!349861 (select (store (arr!20440 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!784710 (= lt!349859 (array!42712 (store (arr!20440 a!3186) i!1173 k0!2102) (size!20861 a!3186)))))

(declare-fun b!784711 () Bool)

(assert (=> b!784711 (= e!436291 e!436285)))

(declare-fun res!531200 () Bool)

(assert (=> b!784711 (=> res!531200 e!436285)))

(assert (=> b!784711 (= res!531200 (= lt!349851 lt!349861))))

(assert (=> b!784711 (= lt!349851 (select (store (arr!20440 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!784712 () Bool)

(assert (=> b!784712 (= e!436287 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20440 a!3186) j!159) a!3186 mask!3328) (Found!8047 j!159)))))

(declare-fun b!784713 () Bool)

(assert (=> b!784713 (= e!436294 e!436292)))

(declare-fun res!531198 () Bool)

(assert (=> b!784713 (=> (not res!531198) (not e!436292))))

(assert (=> b!784713 (= res!531198 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20440 a!3186) j!159) mask!3328) (select (arr!20440 a!3186) j!159) a!3186 mask!3328) lt!349852))))

(assert (=> b!784713 (= lt!349852 (Intermediate!8047 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67716 res!531187) b!784695))

(assert (= (and b!784695 res!531194) b!784697))

(assert (= (and b!784697 res!531188) b!784692))

(assert (= (and b!784692 res!531197) b!784705))

(assert (= (and b!784705 res!531185) b!784707))

(assert (= (and b!784707 res!531202) b!784701))

(assert (= (and b!784701 res!531184) b!784696))

(assert (= (and b!784696 res!531192) b!784709))

(assert (= (and b!784709 res!531191) b!784713))

(assert (= (and b!784713 res!531198) b!784706))

(assert (= (and b!784706 res!531196) b!784698))

(assert (= (and b!784698 c!87161) b!784702))

(assert (= (and b!784698 (not c!87161)) b!784712))

(assert (= (and b!784698 res!531190) b!784710))

(assert (= (and b!784710 res!531199) b!784699))

(assert (= (and b!784699 res!531186) b!784703))

(assert (= (and b!784699 (not res!531195)) b!784691))

(assert (= (and b!784691 (not res!531189)) b!784711))

(assert (= (and b!784711 (not res!531200)) b!784708))

(assert (= (and b!784708 c!87162) b!784704))

(assert (= (and b!784708 (not c!87162)) b!784694))

(assert (= (and b!784708 res!531201) b!784700))

(assert (= (and b!784700 res!531193) b!784693))

(declare-fun m!726989 () Bool)

(assert (=> b!784699 m!726989))

(assert (=> b!784699 m!726989))

(declare-fun m!726991 () Bool)

(assert (=> b!784699 m!726991))

(declare-fun m!726993 () Bool)

(assert (=> b!784699 m!726993))

(declare-fun m!726995 () Bool)

(assert (=> b!784699 m!726995))

(declare-fun m!726997 () Bool)

(assert (=> b!784700 m!726997))

(declare-fun m!726999 () Bool)

(assert (=> b!784700 m!726999))

(declare-fun m!727001 () Bool)

(assert (=> b!784692 m!727001))

(assert (=> b!784697 m!726989))

(assert (=> b!784697 m!726989))

(declare-fun m!727003 () Bool)

(assert (=> b!784697 m!727003))

(assert (=> b!784691 m!726989))

(assert (=> b!784691 m!726989))

(declare-fun m!727005 () Bool)

(assert (=> b!784691 m!727005))

(declare-fun m!727007 () Bool)

(assert (=> b!784696 m!727007))

(assert (=> b!784703 m!726989))

(assert (=> b!784703 m!726989))

(declare-fun m!727009 () Bool)

(assert (=> b!784703 m!727009))

(declare-fun m!727011 () Bool)

(assert (=> start!67716 m!727011))

(declare-fun m!727013 () Bool)

(assert (=> start!67716 m!727013))

(assert (=> b!784713 m!726989))

(assert (=> b!784713 m!726989))

(declare-fun m!727015 () Bool)

(assert (=> b!784713 m!727015))

(assert (=> b!784713 m!727015))

(assert (=> b!784713 m!726989))

(declare-fun m!727017 () Bool)

(assert (=> b!784713 m!727017))

(declare-fun m!727019 () Bool)

(assert (=> b!784707 m!727019))

(declare-fun m!727021 () Bool)

(assert (=> b!784705 m!727021))

(declare-fun m!727023 () Bool)

(assert (=> b!784706 m!727023))

(declare-fun m!727025 () Bool)

(assert (=> b!784701 m!727025))

(declare-fun m!727027 () Bool)

(assert (=> b!784710 m!727027))

(declare-fun m!727029 () Bool)

(assert (=> b!784710 m!727029))

(declare-fun m!727031 () Bool)

(assert (=> b!784710 m!727031))

(assert (=> b!784710 m!727027))

(declare-fun m!727033 () Bool)

(assert (=> b!784710 m!727033))

(declare-fun m!727035 () Bool)

(assert (=> b!784710 m!727035))

(assert (=> b!784711 m!727031))

(declare-fun m!727037 () Bool)

(assert (=> b!784711 m!727037))

(assert (=> b!784712 m!726989))

(assert (=> b!784712 m!726989))

(assert (=> b!784712 m!727005))

(assert (=> b!784702 m!726989))

(assert (=> b!784702 m!726989))

(declare-fun m!727039 () Bool)

(assert (=> b!784702 m!727039))

(check-sat (not b!784710) (not b!784703) (not b!784707) (not b!784705) (not b!784702) (not b!784712) (not b!784701) (not b!784696) (not b!784691) (not b!784697) (not b!784713) (not start!67716) (not b!784692) (not b!784700) (not b!784699))
(check-sat)
