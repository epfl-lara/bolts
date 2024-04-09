; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67722 () Bool)

(assert start!67722)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42717 0))(
  ( (array!42718 (arr!20443 (Array (_ BitVec 32) (_ BitVec 64))) (size!20864 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42717)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8050 0))(
  ( (MissingZero!8050 (index!34567 (_ BitVec 32))) (Found!8050 (index!34568 (_ BitVec 32))) (Intermediate!8050 (undefined!8862 Bool) (index!34569 (_ BitVec 32)) (x!65543 (_ BitVec 32))) (Undefined!8050) (MissingVacant!8050 (index!34570 (_ BitVec 32))) )
))
(declare-fun lt!349963 () SeekEntryResult!8050)

(declare-fun b!784898 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!436395 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42717 (_ BitVec 32)) SeekEntryResult!8050)

(assert (=> b!784898 (= e!436395 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20443 a!3186) j!159) a!3186 mask!3328) lt!349963))))

(declare-fun b!784899 () Bool)

(declare-fun res!531371 () Bool)

(declare-fun e!436391 () Bool)

(assert (=> b!784899 (=> (not res!531371) (not e!436391))))

(declare-datatypes ((List!14498 0))(
  ( (Nil!14495) (Cons!14494 (h!15617 (_ BitVec 64)) (t!20821 List!14498)) )
))
(declare-fun arrayNoDuplicates!0 (array!42717 (_ BitVec 32) List!14498) Bool)

(assert (=> b!784899 (= res!531371 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14495))))

(declare-fun b!784900 () Bool)

(declare-fun res!531358 () Bool)

(declare-fun e!436396 () Bool)

(assert (=> b!784900 (=> (not res!531358) (not e!436396))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784900 (= res!531358 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784901 () Bool)

(declare-fun e!436393 () Bool)

(declare-fun e!436392 () Bool)

(assert (=> b!784901 (= e!436393 e!436392)))

(declare-fun res!531369 () Bool)

(assert (=> b!784901 (=> res!531369 e!436392)))

(declare-fun lt!349962 () (_ BitVec 64))

(declare-fun lt!349968 () (_ BitVec 64))

(assert (=> b!784901 (= res!531369 (= lt!349962 lt!349968))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!784901 (= lt!349962 (select (store (arr!20443 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!784902 () Bool)

(declare-fun e!436402 () Bool)

(declare-fun e!436397 () Bool)

(assert (=> b!784902 (= e!436402 e!436397)))

(declare-fun res!531364 () Bool)

(assert (=> b!784902 (=> (not res!531364) (not e!436397))))

(declare-fun lt!349966 () SeekEntryResult!8050)

(declare-fun lt!349960 () SeekEntryResult!8050)

(assert (=> b!784902 (= res!531364 (= lt!349966 lt!349960))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!349964 () array!42717)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42717 (_ BitVec 32)) SeekEntryResult!8050)

(assert (=> b!784902 (= lt!349960 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349968 lt!349964 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784902 (= lt!349966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349968 mask!3328) lt!349968 lt!349964 mask!3328))))

(assert (=> b!784902 (= lt!349968 (select (store (arr!20443 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!784902 (= lt!349964 (array!42718 (store (arr!20443 a!3186) i!1173 k0!2102) (size!20864 a!3186)))))

(declare-fun b!784903 () Bool)

(declare-fun e!436400 () Bool)

(assert (=> b!784903 (= e!436400 e!436393)))

(declare-fun res!531355 () Bool)

(assert (=> b!784903 (=> res!531355 e!436393)))

(declare-fun lt!349961 () SeekEntryResult!8050)

(assert (=> b!784903 (= res!531355 (not (= lt!349961 lt!349963)))))

(assert (=> b!784903 (= lt!349961 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20443 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!436394 () Bool)

(declare-fun b!784904 () Bool)

(assert (=> b!784904 (= e!436394 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20443 a!3186) j!159) a!3186 mask!3328) (Found!8050 j!159)))))

(declare-fun b!784905 () Bool)

(declare-fun res!531357 () Bool)

(assert (=> b!784905 (=> (not res!531357) (not e!436391))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42717 (_ BitVec 32)) Bool)

(assert (=> b!784905 (= res!531357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!531365 () Bool)

(assert (=> start!67722 (=> (not res!531365) (not e!436396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67722 (= res!531365 (validMask!0 mask!3328))))

(assert (=> start!67722 e!436396))

(assert (=> start!67722 true))

(declare-fun array_inv!16217 (array!42717) Bool)

(assert (=> start!67722 (array_inv!16217 a!3186)))

(declare-fun b!784906 () Bool)

(declare-datatypes ((Unit!27110 0))(
  ( (Unit!27111) )
))
(declare-fun e!436401 () Unit!27110)

(declare-fun Unit!27112 () Unit!27110)

(assert (=> b!784906 (= e!436401 Unit!27112)))

(assert (=> b!784906 false))

(declare-fun b!784907 () Bool)

(declare-fun e!436399 () Bool)

(declare-fun lt!349958 () SeekEntryResult!8050)

(assert (=> b!784907 (= e!436399 (= lt!349958 lt!349961))))

(declare-fun b!784908 () Bool)

(declare-fun res!531372 () Bool)

(assert (=> b!784908 (=> (not res!531372) (not e!436391))))

(assert (=> b!784908 (= res!531372 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20864 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20864 a!3186))))))

(declare-fun b!784909 () Bool)

(assert (=> b!784909 (= e!436391 e!436402)))

(declare-fun res!531356 () Bool)

(assert (=> b!784909 (=> (not res!531356) (not e!436402))))

(declare-fun lt!349967 () SeekEntryResult!8050)

(assert (=> b!784909 (= res!531356 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20443 a!3186) j!159) mask!3328) (select (arr!20443 a!3186) j!159) a!3186 mask!3328) lt!349967))))

(assert (=> b!784909 (= lt!349967 (Intermediate!8050 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784910 () Bool)

(declare-fun res!531361 () Bool)

(assert (=> b!784910 (=> (not res!531361) (not e!436402))))

(assert (=> b!784910 (= res!531361 e!436394)))

(declare-fun c!87180 () Bool)

(assert (=> b!784910 (= c!87180 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784911 () Bool)

(declare-fun res!531367 () Bool)

(assert (=> b!784911 (=> (not res!531367) (not e!436396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784911 (= res!531367 (validKeyInArray!0 k0!2102))))

(declare-fun b!784912 () Bool)

(declare-fun res!531360 () Bool)

(assert (=> b!784912 (=> (not res!531360) (not e!436396))))

(assert (=> b!784912 (= res!531360 (validKeyInArray!0 (select (arr!20443 a!3186) j!159)))))

(declare-fun b!784913 () Bool)

(declare-fun res!531366 () Bool)

(assert (=> b!784913 (=> (not res!531366) (not e!436396))))

(assert (=> b!784913 (= res!531366 (and (= (size!20864 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20864 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20864 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784914 () Bool)

(assert (=> b!784914 (= e!436396 e!436391)))

(declare-fun res!531368 () Bool)

(assert (=> b!784914 (=> (not res!531368) (not e!436391))))

(declare-fun lt!349959 () SeekEntryResult!8050)

(assert (=> b!784914 (= res!531368 (or (= lt!349959 (MissingZero!8050 i!1173)) (= lt!349959 (MissingVacant!8050 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42717 (_ BitVec 32)) SeekEntryResult!8050)

(assert (=> b!784914 (= lt!349959 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!784915 () Bool)

(assert (=> b!784915 (= e!436394 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20443 a!3186) j!159) a!3186 mask!3328) lt!349967))))

(declare-fun b!784916 () Bool)

(assert (=> b!784916 (= e!436392 true)))

(assert (=> b!784916 e!436399))

(declare-fun res!531359 () Bool)

(assert (=> b!784916 (=> (not res!531359) (not e!436399))))

(assert (=> b!784916 (= res!531359 (= lt!349962 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349969 () Unit!27110)

(assert (=> b!784916 (= lt!349969 e!436401)))

(declare-fun c!87179 () Bool)

(assert (=> b!784916 (= c!87179 (= lt!349962 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784917 () Bool)

(declare-fun res!531373 () Bool)

(assert (=> b!784917 (=> (not res!531373) (not e!436402))))

(assert (=> b!784917 (= res!531373 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20443 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784918 () Bool)

(declare-fun res!531370 () Bool)

(assert (=> b!784918 (=> (not res!531370) (not e!436399))))

(assert (=> b!784918 (= res!531370 (= (seekEntryOrOpen!0 lt!349968 lt!349964 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349968 lt!349964 mask!3328)))))

(declare-fun b!784919 () Bool)

(declare-fun Unit!27113 () Unit!27110)

(assert (=> b!784919 (= e!436401 Unit!27113)))

(declare-fun b!784920 () Bool)

(assert (=> b!784920 (= e!436397 (not e!436400))))

(declare-fun res!531362 () Bool)

(assert (=> b!784920 (=> res!531362 e!436400)))

(get-info :version)

(assert (=> b!784920 (= res!531362 (or (not ((_ is Intermediate!8050) lt!349960)) (bvslt x!1131 (x!65543 lt!349960)) (not (= x!1131 (x!65543 lt!349960))) (not (= index!1321 (index!34569 lt!349960)))))))

(assert (=> b!784920 e!436395))

(declare-fun res!531363 () Bool)

(assert (=> b!784920 (=> (not res!531363) (not e!436395))))

(assert (=> b!784920 (= res!531363 (= lt!349958 lt!349963))))

(assert (=> b!784920 (= lt!349963 (Found!8050 j!159))))

(assert (=> b!784920 (= lt!349958 (seekEntryOrOpen!0 (select (arr!20443 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!784920 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349965 () Unit!27110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42717 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27110)

(assert (=> b!784920 (= lt!349965 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67722 res!531365) b!784913))

(assert (= (and b!784913 res!531366) b!784912))

(assert (= (and b!784912 res!531360) b!784911))

(assert (= (and b!784911 res!531367) b!784900))

(assert (= (and b!784900 res!531358) b!784914))

(assert (= (and b!784914 res!531368) b!784905))

(assert (= (and b!784905 res!531357) b!784899))

(assert (= (and b!784899 res!531371) b!784908))

(assert (= (and b!784908 res!531372) b!784909))

(assert (= (and b!784909 res!531356) b!784917))

(assert (= (and b!784917 res!531373) b!784910))

(assert (= (and b!784910 c!87180) b!784915))

(assert (= (and b!784910 (not c!87180)) b!784904))

(assert (= (and b!784910 res!531361) b!784902))

(assert (= (and b!784902 res!531364) b!784920))

(assert (= (and b!784920 res!531363) b!784898))

(assert (= (and b!784920 (not res!531362)) b!784903))

(assert (= (and b!784903 (not res!531355)) b!784901))

(assert (= (and b!784901 (not res!531369)) b!784916))

(assert (= (and b!784916 c!87179) b!784906))

(assert (= (and b!784916 (not c!87179)) b!784919))

(assert (= (and b!784916 res!531359) b!784918))

(assert (= (and b!784918 res!531370) b!784907))

(declare-fun m!727145 () Bool)

(assert (=> start!67722 m!727145))

(declare-fun m!727147 () Bool)

(assert (=> start!67722 m!727147))

(declare-fun m!727149 () Bool)

(assert (=> b!784898 m!727149))

(assert (=> b!784898 m!727149))

(declare-fun m!727151 () Bool)

(assert (=> b!784898 m!727151))

(assert (=> b!784909 m!727149))

(assert (=> b!784909 m!727149))

(declare-fun m!727153 () Bool)

(assert (=> b!784909 m!727153))

(assert (=> b!784909 m!727153))

(assert (=> b!784909 m!727149))

(declare-fun m!727155 () Bool)

(assert (=> b!784909 m!727155))

(assert (=> b!784903 m!727149))

(assert (=> b!784903 m!727149))

(declare-fun m!727157 () Bool)

(assert (=> b!784903 m!727157))

(assert (=> b!784915 m!727149))

(assert (=> b!784915 m!727149))

(declare-fun m!727159 () Bool)

(assert (=> b!784915 m!727159))

(declare-fun m!727161 () Bool)

(assert (=> b!784914 m!727161))

(declare-fun m!727163 () Bool)

(assert (=> b!784911 m!727163))

(assert (=> b!784904 m!727149))

(assert (=> b!784904 m!727149))

(assert (=> b!784904 m!727157))

(declare-fun m!727165 () Bool)

(assert (=> b!784901 m!727165))

(declare-fun m!727167 () Bool)

(assert (=> b!784901 m!727167))

(declare-fun m!727169 () Bool)

(assert (=> b!784905 m!727169))

(declare-fun m!727171 () Bool)

(assert (=> b!784917 m!727171))

(declare-fun m!727173 () Bool)

(assert (=> b!784900 m!727173))

(assert (=> b!784912 m!727149))

(assert (=> b!784912 m!727149))

(declare-fun m!727175 () Bool)

(assert (=> b!784912 m!727175))

(assert (=> b!784920 m!727149))

(assert (=> b!784920 m!727149))

(declare-fun m!727177 () Bool)

(assert (=> b!784920 m!727177))

(declare-fun m!727179 () Bool)

(assert (=> b!784920 m!727179))

(declare-fun m!727181 () Bool)

(assert (=> b!784920 m!727181))

(declare-fun m!727183 () Bool)

(assert (=> b!784918 m!727183))

(declare-fun m!727185 () Bool)

(assert (=> b!784918 m!727185))

(declare-fun m!727187 () Bool)

(assert (=> b!784902 m!727187))

(declare-fun m!727189 () Bool)

(assert (=> b!784902 m!727189))

(assert (=> b!784902 m!727165))

(declare-fun m!727191 () Bool)

(assert (=> b!784902 m!727191))

(assert (=> b!784902 m!727189))

(declare-fun m!727193 () Bool)

(assert (=> b!784902 m!727193))

(declare-fun m!727195 () Bool)

(assert (=> b!784899 m!727195))

(check-sat (not start!67722) (not b!784904) (not b!784909) (not b!784911) (not b!784912) (not b!784915) (not b!784902) (not b!784903) (not b!784899) (not b!784898) (not b!784920) (not b!784914) (not b!784900) (not b!784918) (not b!784905))
(check-sat)
