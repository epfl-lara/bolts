; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65220 () Bool)

(assert start!65220)

(declare-fun b!737923 () Bool)

(declare-fun res!496163 () Bool)

(declare-fun e!412737 () Bool)

(assert (=> b!737923 (=> (not res!496163) (not e!412737))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737923 (= res!496163 (validKeyInArray!0 k0!2102))))

(declare-fun b!737924 () Bool)

(declare-fun res!496164 () Bool)

(declare-fun e!412732 () Bool)

(assert (=> b!737924 (=> (not res!496164) (not e!412732))))

(declare-fun e!412736 () Bool)

(assert (=> b!737924 (= res!496164 e!412736)))

(declare-fun c!81269 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!737924 (= c!81269 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737925 () Bool)

(declare-fun res!496161 () Bool)

(assert (=> b!737925 (=> (not res!496161) (not e!412737))))

(declare-datatypes ((array!41346 0))(
  ( (array!41347 (arr!19783 (Array (_ BitVec 32) (_ BitVec 64))) (size!20204 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41346)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!737925 (= res!496161 (and (= (size!20204 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20204 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20204 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737926 () Bool)

(declare-fun e!412743 () Bool)

(declare-fun e!412733 () Bool)

(assert (=> b!737926 (= e!412743 (not e!412733))))

(declare-fun res!496157 () Bool)

(assert (=> b!737926 (=> res!496157 e!412733)))

(declare-datatypes ((SeekEntryResult!7390 0))(
  ( (MissingZero!7390 (index!31927 (_ BitVec 32))) (Found!7390 (index!31928 (_ BitVec 32))) (Intermediate!7390 (undefined!8202 Bool) (index!31929 (_ BitVec 32)) (x!62949 (_ BitVec 32))) (Undefined!7390) (MissingVacant!7390 (index!31930 (_ BitVec 32))) )
))
(declare-fun lt!327512 () SeekEntryResult!7390)

(get-info :version)

(assert (=> b!737926 (= res!496157 (or (not ((_ is Intermediate!7390) lt!327512)) (bvsge x!1131 (x!62949 lt!327512))))))

(declare-fun lt!327502 () SeekEntryResult!7390)

(assert (=> b!737926 (= lt!327502 (Found!7390 j!159))))

(declare-fun e!412739 () Bool)

(assert (=> b!737926 e!412739))

(declare-fun res!496162 () Bool)

(assert (=> b!737926 (=> (not res!496162) (not e!412739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41346 (_ BitVec 32)) Bool)

(assert (=> b!737926 (= res!496162 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25178 0))(
  ( (Unit!25179) )
))
(declare-fun lt!327501 () Unit!25178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41346 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25178)

(assert (=> b!737926 (= lt!327501 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737927 () Bool)

(declare-fun e!412741 () Unit!25178)

(declare-fun Unit!25180 () Unit!25178)

(assert (=> b!737927 (= e!412741 Unit!25180)))

(declare-fun lt!327505 () (_ BitVec 32))

(declare-fun lt!327508 () SeekEntryResult!7390)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41346 (_ BitVec 32)) SeekEntryResult!7390)

(assert (=> b!737927 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327505 (select (arr!19783 a!3186) j!159) a!3186 mask!3328) lt!327508)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!737928 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41346 (_ BitVec 32)) SeekEntryResult!7390)

(assert (=> b!737928 (= e!412736 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19783 a!3186) j!159) a!3186 mask!3328) (Found!7390 j!159)))))

(declare-fun b!737929 () Bool)

(declare-fun e!412734 () Bool)

(assert (=> b!737929 (= e!412737 e!412734)))

(declare-fun res!496148 () Bool)

(assert (=> b!737929 (=> (not res!496148) (not e!412734))))

(declare-fun lt!327500 () SeekEntryResult!7390)

(assert (=> b!737929 (= res!496148 (or (= lt!327500 (MissingZero!7390 i!1173)) (= lt!327500 (MissingVacant!7390 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41346 (_ BitVec 32)) SeekEntryResult!7390)

(assert (=> b!737929 (= lt!327500 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!737930 () Bool)

(declare-fun res!496156 () Bool)

(assert (=> b!737930 (=> (not res!496156) (not e!412734))))

(assert (=> b!737930 (= res!496156 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20204 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20204 a!3186))))))

(declare-fun b!737931 () Bool)

(assert (=> b!737931 (= e!412736 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19783 a!3186) j!159) a!3186 mask!3328) lt!327508))))

(declare-fun b!737932 () Bool)

(declare-fun Unit!25181 () Unit!25178)

(assert (=> b!737932 (= e!412741 Unit!25181)))

(declare-fun lt!327509 () SeekEntryResult!7390)

(assert (=> b!737932 (= lt!327509 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19783 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!737932 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327505 resIntermediateIndex!5 (select (arr!19783 a!3186) j!159) a!3186 mask!3328) lt!327502)))

(declare-fun b!737933 () Bool)

(declare-fun e!412740 () Bool)

(assert (=> b!737933 (= e!412740 true)))

(declare-fun lt!327510 () (_ BitVec 64))

(declare-fun lt!327503 () array!41346)

(declare-fun lt!327506 () SeekEntryResult!7390)

(assert (=> b!737933 (= lt!327506 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327505 lt!327510 lt!327503 mask!3328))))

(declare-fun b!737934 () Bool)

(assert (=> b!737934 (= e!412734 e!412732)))

(declare-fun res!496150 () Bool)

(assert (=> b!737934 (=> (not res!496150) (not e!412732))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737934 (= res!496150 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19783 a!3186) j!159) mask!3328) (select (arr!19783 a!3186) j!159) a!3186 mask!3328) lt!327508))))

(assert (=> b!737934 (= lt!327508 (Intermediate!7390 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737935 () Bool)

(declare-fun res!496155 () Bool)

(assert (=> b!737935 (=> (not res!496155) (not e!412734))))

(assert (=> b!737935 (= res!496155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737936 () Bool)

(declare-fun e!412738 () Bool)

(assert (=> b!737936 (= e!412738 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327505 (select (arr!19783 a!3186) j!159) a!3186 mask!3328) lt!327508)))))

(declare-fun b!737937 () Bool)

(declare-fun e!412735 () Bool)

(assert (=> b!737937 (= e!412739 e!412735)))

(declare-fun res!496158 () Bool)

(assert (=> b!737937 (=> (not res!496158) (not e!412735))))

(declare-fun lt!327511 () SeekEntryResult!7390)

(assert (=> b!737937 (= res!496158 (= (seekEntryOrOpen!0 (select (arr!19783 a!3186) j!159) a!3186 mask!3328) lt!327511))))

(assert (=> b!737937 (= lt!327511 (Found!7390 j!159))))

(declare-fun b!737938 () Bool)

(declare-fun res!496159 () Bool)

(assert (=> b!737938 (=> (not res!496159) (not e!412737))))

(declare-fun arrayContainsKey!0 (array!41346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737938 (= res!496159 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737939 () Bool)

(declare-fun res!496147 () Bool)

(assert (=> b!737939 (=> (not res!496147) (not e!412734))))

(declare-datatypes ((List!13838 0))(
  ( (Nil!13835) (Cons!13834 (h!14906 (_ BitVec 64)) (t!20161 List!13838)) )
))
(declare-fun arrayNoDuplicates!0 (array!41346 (_ BitVec 32) List!13838) Bool)

(assert (=> b!737939 (= res!496147 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13835))))

(declare-fun b!737922 () Bool)

(declare-fun res!496153 () Bool)

(assert (=> b!737922 (=> (not res!496153) (not e!412732))))

(assert (=> b!737922 (= res!496153 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19783 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!496149 () Bool)

(assert (=> start!65220 (=> (not res!496149) (not e!412737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65220 (= res!496149 (validMask!0 mask!3328))))

(assert (=> start!65220 e!412737))

(assert (=> start!65220 true))

(declare-fun array_inv!15557 (array!41346) Bool)

(assert (=> start!65220 (array_inv!15557 a!3186)))

(declare-fun b!737940 () Bool)

(assert (=> b!737940 (= e!412738 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327505 resIntermediateIndex!5 (select (arr!19783 a!3186) j!159) a!3186 mask!3328) lt!327502)))))

(declare-fun b!737941 () Bool)

(assert (=> b!737941 (= e!412733 e!412740)))

(declare-fun res!496154 () Bool)

(assert (=> b!737941 (=> res!496154 e!412740)))

(assert (=> b!737941 (= res!496154 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327505 #b00000000000000000000000000000000) (bvsge lt!327505 (size!20204 a!3186))))))

(declare-fun lt!327507 () Unit!25178)

(assert (=> b!737941 (= lt!327507 e!412741)))

(declare-fun c!81270 () Bool)

(declare-fun lt!327499 () Bool)

(assert (=> b!737941 (= c!81270 lt!327499)))

(assert (=> b!737941 (= lt!327499 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737941 (= lt!327505 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737942 () Bool)

(declare-fun res!496151 () Bool)

(assert (=> b!737942 (=> (not res!496151) (not e!412737))))

(assert (=> b!737942 (= res!496151 (validKeyInArray!0 (select (arr!19783 a!3186) j!159)))))

(declare-fun b!737943 () Bool)

(declare-fun res!496160 () Bool)

(assert (=> b!737943 (=> res!496160 e!412740)))

(assert (=> b!737943 (= res!496160 e!412738)))

(declare-fun c!81268 () Bool)

(assert (=> b!737943 (= c!81268 lt!327499)))

(declare-fun b!737944 () Bool)

(assert (=> b!737944 (= e!412735 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19783 a!3186) j!159) a!3186 mask!3328) lt!327511))))

(declare-fun b!737945 () Bool)

(assert (=> b!737945 (= e!412732 e!412743)))

(declare-fun res!496152 () Bool)

(assert (=> b!737945 (=> (not res!496152) (not e!412743))))

(declare-fun lt!327504 () SeekEntryResult!7390)

(assert (=> b!737945 (= res!496152 (= lt!327504 lt!327512))))

(assert (=> b!737945 (= lt!327512 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327510 lt!327503 mask!3328))))

(assert (=> b!737945 (= lt!327504 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327510 mask!3328) lt!327510 lt!327503 mask!3328))))

(assert (=> b!737945 (= lt!327510 (select (store (arr!19783 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!737945 (= lt!327503 (array!41347 (store (arr!19783 a!3186) i!1173 k0!2102) (size!20204 a!3186)))))

(assert (= (and start!65220 res!496149) b!737925))

(assert (= (and b!737925 res!496161) b!737942))

(assert (= (and b!737942 res!496151) b!737923))

(assert (= (and b!737923 res!496163) b!737938))

(assert (= (and b!737938 res!496159) b!737929))

(assert (= (and b!737929 res!496148) b!737935))

(assert (= (and b!737935 res!496155) b!737939))

(assert (= (and b!737939 res!496147) b!737930))

(assert (= (and b!737930 res!496156) b!737934))

(assert (= (and b!737934 res!496150) b!737922))

(assert (= (and b!737922 res!496153) b!737924))

(assert (= (and b!737924 c!81269) b!737931))

(assert (= (and b!737924 (not c!81269)) b!737928))

(assert (= (and b!737924 res!496164) b!737945))

(assert (= (and b!737945 res!496152) b!737926))

(assert (= (and b!737926 res!496162) b!737937))

(assert (= (and b!737937 res!496158) b!737944))

(assert (= (and b!737926 (not res!496157)) b!737941))

(assert (= (and b!737941 c!81270) b!737927))

(assert (= (and b!737941 (not c!81270)) b!737932))

(assert (= (and b!737941 (not res!496154)) b!737943))

(assert (= (and b!737943 c!81268) b!737936))

(assert (= (and b!737943 (not c!81268)) b!737940))

(assert (= (and b!737943 (not res!496160)) b!737933))

(declare-fun m!689749 () Bool)

(assert (=> b!737938 m!689749))

(declare-fun m!689751 () Bool)

(assert (=> b!737940 m!689751))

(assert (=> b!737940 m!689751))

(declare-fun m!689753 () Bool)

(assert (=> b!737940 m!689753))

(assert (=> b!737927 m!689751))

(assert (=> b!737927 m!689751))

(declare-fun m!689755 () Bool)

(assert (=> b!737927 m!689755))

(declare-fun m!689757 () Bool)

(assert (=> b!737945 m!689757))

(declare-fun m!689759 () Bool)

(assert (=> b!737945 m!689759))

(assert (=> b!737945 m!689757))

(declare-fun m!689761 () Bool)

(assert (=> b!737945 m!689761))

(declare-fun m!689763 () Bool)

(assert (=> b!737945 m!689763))

(declare-fun m!689765 () Bool)

(assert (=> b!737945 m!689765))

(assert (=> b!737942 m!689751))

(assert (=> b!737942 m!689751))

(declare-fun m!689767 () Bool)

(assert (=> b!737942 m!689767))

(declare-fun m!689769 () Bool)

(assert (=> b!737933 m!689769))

(declare-fun m!689771 () Bool)

(assert (=> b!737923 m!689771))

(assert (=> b!737936 m!689751))

(assert (=> b!737936 m!689751))

(assert (=> b!737936 m!689755))

(declare-fun m!689773 () Bool)

(assert (=> start!65220 m!689773))

(declare-fun m!689775 () Bool)

(assert (=> start!65220 m!689775))

(declare-fun m!689777 () Bool)

(assert (=> b!737922 m!689777))

(assert (=> b!737937 m!689751))

(assert (=> b!737937 m!689751))

(declare-fun m!689779 () Bool)

(assert (=> b!737937 m!689779))

(assert (=> b!737928 m!689751))

(assert (=> b!737928 m!689751))

(declare-fun m!689781 () Bool)

(assert (=> b!737928 m!689781))

(declare-fun m!689783 () Bool)

(assert (=> b!737929 m!689783))

(assert (=> b!737932 m!689751))

(assert (=> b!737932 m!689751))

(assert (=> b!737932 m!689781))

(assert (=> b!737932 m!689751))

(assert (=> b!737932 m!689753))

(declare-fun m!689785 () Bool)

(assert (=> b!737941 m!689785))

(declare-fun m!689787 () Bool)

(assert (=> b!737926 m!689787))

(declare-fun m!689789 () Bool)

(assert (=> b!737926 m!689789))

(assert (=> b!737931 m!689751))

(assert (=> b!737931 m!689751))

(declare-fun m!689791 () Bool)

(assert (=> b!737931 m!689791))

(assert (=> b!737934 m!689751))

(assert (=> b!737934 m!689751))

(declare-fun m!689793 () Bool)

(assert (=> b!737934 m!689793))

(assert (=> b!737934 m!689793))

(assert (=> b!737934 m!689751))

(declare-fun m!689795 () Bool)

(assert (=> b!737934 m!689795))

(declare-fun m!689797 () Bool)

(assert (=> b!737935 m!689797))

(assert (=> b!737944 m!689751))

(assert (=> b!737944 m!689751))

(declare-fun m!689799 () Bool)

(assert (=> b!737944 m!689799))

(declare-fun m!689801 () Bool)

(assert (=> b!737939 m!689801))

(check-sat (not b!737931) (not b!737927) (not b!737929) (not b!737938) (not b!737935) (not b!737923) (not b!737937) (not b!737934) (not b!737945) (not b!737936) (not b!737933) (not b!737926) (not b!737928) (not b!737944) (not b!737942) (not b!737941) (not start!65220) (not b!737940) (not b!737939) (not b!737932))
(check-sat)
