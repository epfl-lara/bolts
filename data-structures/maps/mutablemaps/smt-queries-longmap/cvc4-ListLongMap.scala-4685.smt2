; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65192 () Bool)

(assert start!65192)

(declare-datatypes ((array!41318 0))(
  ( (array!41319 (arr!19769 (Array (_ BitVec 32) (_ BitVec 64))) (size!20190 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41318)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!412228 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!736914 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7376 0))(
  ( (MissingZero!7376 (index!31871 (_ BitVec 32))) (Found!7376 (index!31872 (_ BitVec 32))) (Intermediate!7376 (undefined!8188 Bool) (index!31873 (_ BitVec 32)) (x!62895 (_ BitVec 32))) (Undefined!7376) (MissingVacant!7376 (index!31874 (_ BitVec 32))) )
))
(declare-fun lt!326919 () SeekEntryResult!7376)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41318 (_ BitVec 32)) SeekEntryResult!7376)

(assert (=> b!736914 (= e!412228 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19769 a!3186) j!159) a!3186 mask!3328) lt!326919))))

(declare-fun b!736915 () Bool)

(declare-datatypes ((Unit!25122 0))(
  ( (Unit!25123) )
))
(declare-fun e!412233 () Unit!25122)

(declare-fun Unit!25124 () Unit!25122)

(assert (=> b!736915 (= e!412233 Unit!25124)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!326911 () (_ BitVec 32))

(declare-fun lt!326922 () SeekEntryResult!7376)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41318 (_ BitVec 32)) SeekEntryResult!7376)

(assert (=> b!736915 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326911 (select (arr!19769 a!3186) j!159) a!3186 mask!3328) lt!326922)))

(declare-fun b!736916 () Bool)

(declare-fun e!412229 () Bool)

(declare-fun e!412237 () Bool)

(assert (=> b!736916 (= e!412229 e!412237)))

(declare-fun res!495397 () Bool)

(assert (=> b!736916 (=> (not res!495397) (not e!412237))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736916 (= res!495397 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19769 a!3186) j!159) mask!3328) (select (arr!19769 a!3186) j!159) a!3186 mask!3328) lt!326922))))

(assert (=> b!736916 (= lt!326922 (Intermediate!7376 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!736917 () Bool)

(declare-fun e!412234 () Bool)

(assert (=> b!736917 (= e!412234 e!412229)))

(declare-fun res!495398 () Bool)

(assert (=> b!736917 (=> (not res!495398) (not e!412229))))

(declare-fun lt!326924 () SeekEntryResult!7376)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!736917 (= res!495398 (or (= lt!326924 (MissingZero!7376 i!1173)) (= lt!326924 (MissingVacant!7376 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41318 (_ BitVec 32)) SeekEntryResult!7376)

(assert (=> b!736917 (= lt!326924 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!736918 () Bool)

(declare-fun res!495393 () Bool)

(assert (=> b!736918 (=> (not res!495393) (not e!412234))))

(assert (=> b!736918 (= res!495393 (and (= (size!20190 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20190 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20190 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!736919 () Bool)

(declare-fun e!412239 () Bool)

(assert (=> b!736919 (= e!412239 e!412228)))

(declare-fun res!495394 () Bool)

(assert (=> b!736919 (=> (not res!495394) (not e!412228))))

(assert (=> b!736919 (= res!495394 (= (seekEntryOrOpen!0 (select (arr!19769 a!3186) j!159) a!3186 mask!3328) lt!326919))))

(assert (=> b!736919 (= lt!326919 (Found!7376 j!159))))

(declare-fun b!736921 () Bool)

(declare-fun e!412236 () Bool)

(assert (=> b!736921 (= e!412236 true)))

(declare-fun lt!326917 () array!41318)

(declare-fun lt!326912 () SeekEntryResult!7376)

(declare-fun lt!326920 () (_ BitVec 64))

(assert (=> b!736921 (= lt!326912 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326911 lt!326920 lt!326917 mask!3328))))

(declare-fun b!736922 () Bool)

(declare-fun res!495392 () Bool)

(assert (=> b!736922 (=> (not res!495392) (not e!412234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!736922 (= res!495392 (validKeyInArray!0 k!2102))))

(declare-fun b!736923 () Bool)

(declare-fun res!495401 () Bool)

(assert (=> b!736923 (=> (not res!495401) (not e!412237))))

(declare-fun e!412230 () Bool)

(assert (=> b!736923 (= res!495401 e!412230)))

(declare-fun c!81144 () Bool)

(assert (=> b!736923 (= c!81144 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!736924 () Bool)

(declare-fun res!495405 () Bool)

(assert (=> b!736924 (=> (not res!495405) (not e!412237))))

(assert (=> b!736924 (= res!495405 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19769 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!736925 () Bool)

(declare-fun Unit!25125 () Unit!25122)

(assert (=> b!736925 (= e!412233 Unit!25125)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!326921 () SeekEntryResult!7376)

(assert (=> b!736925 (= lt!326921 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19769 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326913 () SeekEntryResult!7376)

(assert (=> b!736925 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326911 resIntermediateIndex!5 (select (arr!19769 a!3186) j!159) a!3186 mask!3328) lt!326913)))

(declare-fun b!736926 () Bool)

(assert (=> b!736926 (= e!412230 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19769 a!3186) j!159) a!3186 mask!3328) lt!326922))))

(declare-fun b!736927 () Bool)

(declare-fun e!412231 () Bool)

(assert (=> b!736927 (= e!412231 e!412236)))

(declare-fun res!495404 () Bool)

(assert (=> b!736927 (=> res!495404 e!412236)))

(assert (=> b!736927 (= res!495404 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326911 #b00000000000000000000000000000000) (bvsge lt!326911 (size!20190 a!3186))))))

(declare-fun lt!326923 () Unit!25122)

(assert (=> b!736927 (= lt!326923 e!412233)))

(declare-fun c!81143 () Bool)

(declare-fun lt!326914 () Bool)

(assert (=> b!736927 (= c!81143 lt!326914)))

(assert (=> b!736927 (= lt!326914 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736927 (= lt!326911 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun e!412235 () Bool)

(declare-fun b!736928 () Bool)

(assert (=> b!736928 (= e!412235 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326911 (select (arr!19769 a!3186) j!159) a!3186 mask!3328) lt!326922)))))

(declare-fun b!736929 () Bool)

(declare-fun e!412232 () Bool)

(assert (=> b!736929 (= e!412232 (not e!412231))))

(declare-fun res!495403 () Bool)

(assert (=> b!736929 (=> res!495403 e!412231)))

(declare-fun lt!326916 () SeekEntryResult!7376)

(assert (=> b!736929 (= res!495403 (or (not (is-Intermediate!7376 lt!326916)) (bvsge x!1131 (x!62895 lt!326916))))))

(assert (=> b!736929 (= lt!326913 (Found!7376 j!159))))

(assert (=> b!736929 e!412239))

(declare-fun res!495400 () Bool)

(assert (=> b!736929 (=> (not res!495400) (not e!412239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41318 (_ BitVec 32)) Bool)

(assert (=> b!736929 (= res!495400 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326918 () Unit!25122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41318 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25122)

(assert (=> b!736929 (= lt!326918 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!736920 () Bool)

(assert (=> b!736920 (= e!412235 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326911 resIntermediateIndex!5 (select (arr!19769 a!3186) j!159) a!3186 mask!3328) lt!326913)))))

(declare-fun res!495391 () Bool)

(assert (=> start!65192 (=> (not res!495391) (not e!412234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65192 (= res!495391 (validMask!0 mask!3328))))

(assert (=> start!65192 e!412234))

(assert (=> start!65192 true))

(declare-fun array_inv!15543 (array!41318) Bool)

(assert (=> start!65192 (array_inv!15543 a!3186)))

(declare-fun b!736930 () Bool)

(declare-fun res!495406 () Bool)

(assert (=> b!736930 (=> (not res!495406) (not e!412229))))

(assert (=> b!736930 (= res!495406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!736931 () Bool)

(assert (=> b!736931 (= e!412237 e!412232)))

(declare-fun res!495407 () Bool)

(assert (=> b!736931 (=> (not res!495407) (not e!412232))))

(declare-fun lt!326915 () SeekEntryResult!7376)

(assert (=> b!736931 (= res!495407 (= lt!326915 lt!326916))))

(assert (=> b!736931 (= lt!326916 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326920 lt!326917 mask!3328))))

(assert (=> b!736931 (= lt!326915 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326920 mask!3328) lt!326920 lt!326917 mask!3328))))

(assert (=> b!736931 (= lt!326920 (select (store (arr!19769 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!736931 (= lt!326917 (array!41319 (store (arr!19769 a!3186) i!1173 k!2102) (size!20190 a!3186)))))

(declare-fun b!736932 () Bool)

(declare-fun res!495408 () Bool)

(assert (=> b!736932 (=> (not res!495408) (not e!412229))))

(declare-datatypes ((List!13824 0))(
  ( (Nil!13821) (Cons!13820 (h!14892 (_ BitVec 64)) (t!20147 List!13824)) )
))
(declare-fun arrayNoDuplicates!0 (array!41318 (_ BitVec 32) List!13824) Bool)

(assert (=> b!736932 (= res!495408 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13821))))

(declare-fun b!736933 () Bool)

(declare-fun res!495399 () Bool)

(assert (=> b!736933 (=> res!495399 e!412236)))

(assert (=> b!736933 (= res!495399 e!412235)))

(declare-fun c!81142 () Bool)

(assert (=> b!736933 (= c!81142 lt!326914)))

(declare-fun b!736934 () Bool)

(declare-fun res!495402 () Bool)

(assert (=> b!736934 (=> (not res!495402) (not e!412234))))

(declare-fun arrayContainsKey!0 (array!41318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!736934 (= res!495402 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!736935 () Bool)

(declare-fun res!495395 () Bool)

(assert (=> b!736935 (=> (not res!495395) (not e!412229))))

(assert (=> b!736935 (= res!495395 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20190 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20190 a!3186))))))

(declare-fun b!736936 () Bool)

(assert (=> b!736936 (= e!412230 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19769 a!3186) j!159) a!3186 mask!3328) (Found!7376 j!159)))))

(declare-fun b!736937 () Bool)

(declare-fun res!495396 () Bool)

(assert (=> b!736937 (=> (not res!495396) (not e!412234))))

(assert (=> b!736937 (= res!495396 (validKeyInArray!0 (select (arr!19769 a!3186) j!159)))))

(assert (= (and start!65192 res!495391) b!736918))

(assert (= (and b!736918 res!495393) b!736937))

(assert (= (and b!736937 res!495396) b!736922))

(assert (= (and b!736922 res!495392) b!736934))

(assert (= (and b!736934 res!495402) b!736917))

(assert (= (and b!736917 res!495398) b!736930))

(assert (= (and b!736930 res!495406) b!736932))

(assert (= (and b!736932 res!495408) b!736935))

(assert (= (and b!736935 res!495395) b!736916))

(assert (= (and b!736916 res!495397) b!736924))

(assert (= (and b!736924 res!495405) b!736923))

(assert (= (and b!736923 c!81144) b!736926))

(assert (= (and b!736923 (not c!81144)) b!736936))

(assert (= (and b!736923 res!495401) b!736931))

(assert (= (and b!736931 res!495407) b!736929))

(assert (= (and b!736929 res!495400) b!736919))

(assert (= (and b!736919 res!495394) b!736914))

(assert (= (and b!736929 (not res!495403)) b!736927))

(assert (= (and b!736927 c!81143) b!736915))

(assert (= (and b!736927 (not c!81143)) b!736925))

(assert (= (and b!736927 (not res!495404)) b!736933))

(assert (= (and b!736933 c!81142) b!736928))

(assert (= (and b!736933 (not c!81142)) b!736920))

(assert (= (and b!736933 (not res!495399)) b!736921))

(declare-fun m!688993 () Bool)

(assert (=> b!736921 m!688993))

(declare-fun m!688995 () Bool)

(assert (=> b!736928 m!688995))

(assert (=> b!736928 m!688995))

(declare-fun m!688997 () Bool)

(assert (=> b!736928 m!688997))

(assert (=> b!736920 m!688995))

(assert (=> b!736920 m!688995))

(declare-fun m!688999 () Bool)

(assert (=> b!736920 m!688999))

(declare-fun m!689001 () Bool)

(assert (=> b!736917 m!689001))

(declare-fun m!689003 () Bool)

(assert (=> b!736929 m!689003))

(declare-fun m!689005 () Bool)

(assert (=> b!736929 m!689005))

(declare-fun m!689007 () Bool)

(assert (=> b!736927 m!689007))

(assert (=> b!736926 m!688995))

(assert (=> b!736926 m!688995))

(declare-fun m!689009 () Bool)

(assert (=> b!736926 m!689009))

(assert (=> b!736919 m!688995))

(assert (=> b!736919 m!688995))

(declare-fun m!689011 () Bool)

(assert (=> b!736919 m!689011))

(assert (=> b!736914 m!688995))

(assert (=> b!736914 m!688995))

(declare-fun m!689013 () Bool)

(assert (=> b!736914 m!689013))

(assert (=> b!736937 m!688995))

(assert (=> b!736937 m!688995))

(declare-fun m!689015 () Bool)

(assert (=> b!736937 m!689015))

(declare-fun m!689017 () Bool)

(assert (=> b!736922 m!689017))

(declare-fun m!689019 () Bool)

(assert (=> start!65192 m!689019))

(declare-fun m!689021 () Bool)

(assert (=> start!65192 m!689021))

(declare-fun m!689023 () Bool)

(assert (=> b!736931 m!689023))

(declare-fun m!689025 () Bool)

(assert (=> b!736931 m!689025))

(declare-fun m!689027 () Bool)

(assert (=> b!736931 m!689027))

(declare-fun m!689029 () Bool)

(assert (=> b!736931 m!689029))

(declare-fun m!689031 () Bool)

(assert (=> b!736931 m!689031))

(assert (=> b!736931 m!689023))

(assert (=> b!736936 m!688995))

(assert (=> b!736936 m!688995))

(declare-fun m!689033 () Bool)

(assert (=> b!736936 m!689033))

(declare-fun m!689035 () Bool)

(assert (=> b!736932 m!689035))

(declare-fun m!689037 () Bool)

(assert (=> b!736934 m!689037))

(declare-fun m!689039 () Bool)

(assert (=> b!736924 m!689039))

(declare-fun m!689041 () Bool)

(assert (=> b!736930 m!689041))

(assert (=> b!736915 m!688995))

(assert (=> b!736915 m!688995))

(assert (=> b!736915 m!688997))

(assert (=> b!736925 m!688995))

(assert (=> b!736925 m!688995))

(assert (=> b!736925 m!689033))

(assert (=> b!736925 m!688995))

(assert (=> b!736925 m!688999))

(assert (=> b!736916 m!688995))

(assert (=> b!736916 m!688995))

(declare-fun m!689043 () Bool)

(assert (=> b!736916 m!689043))

(assert (=> b!736916 m!689043))

(assert (=> b!736916 m!688995))

(declare-fun m!689045 () Bool)

(assert (=> b!736916 m!689045))

(push 1)

