; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51502 () Bool)

(assert start!51502)

(declare-fun b!562875 () Bool)

(declare-fun res!354179 () Bool)

(declare-fun e!324397 () Bool)

(assert (=> b!562875 (=> (not res!354179) (not e!324397))))

(declare-datatypes ((array!35321 0))(
  ( (array!35322 (arr!16957 (Array (_ BitVec 32) (_ BitVec 64))) (size!17321 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35321)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562875 (= res!354179 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562876 () Bool)

(declare-fun e!324395 () Bool)

(declare-fun e!324394 () Bool)

(assert (=> b!562876 (= e!324395 e!324394)))

(declare-fun res!354181 () Bool)

(assert (=> b!562876 (=> res!354181 e!324394)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!256939 () (_ BitVec 64))

(assert (=> b!562876 (= res!354181 (or (= lt!256939 (select (arr!16957 a!3118) j!142)) (= lt!256939 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5413 0))(
  ( (MissingZero!5413 (index!23879 (_ BitVec 32))) (Found!5413 (index!23880 (_ BitVec 32))) (Intermediate!5413 (undefined!6225 Bool) (index!23881 (_ BitVec 32)) (x!52799 (_ BitVec 32))) (Undefined!5413) (MissingVacant!5413 (index!23882 (_ BitVec 32))) )
))
(declare-fun lt!256948 () SeekEntryResult!5413)

(assert (=> b!562876 (= lt!256939 (select (arr!16957 a!3118) (index!23881 lt!256948)))))

(declare-fun b!562877 () Bool)

(declare-fun e!324399 () Bool)

(assert (=> b!562877 (= e!324394 e!324399)))

(declare-fun res!354185 () Bool)

(assert (=> b!562877 (=> res!354185 e!324399)))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!256940 () SeekEntryResult!5413)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!256936 () SeekEntryResult!5413)

(assert (=> b!562877 (= res!354185 (or (bvslt (index!23881 lt!256948) #b00000000000000000000000000000000) (bvsge (index!23881 lt!256948) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52799 lt!256948) #b01111111111111111111111111111110) (bvslt (x!52799 lt!256948) #b00000000000000000000000000000000) (not (= lt!256939 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16957 a!3118) i!1132 k0!1914) (index!23881 lt!256948)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256936 lt!256940))))))

(declare-fun lt!256942 () SeekEntryResult!5413)

(declare-fun lt!256944 () SeekEntryResult!5413)

(assert (=> b!562877 (= lt!256942 lt!256944)))

(declare-fun lt!256946 () array!35321)

(declare-fun lt!256938 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35321 (_ BitVec 32)) SeekEntryResult!5413)

(assert (=> b!562877 (= lt!256944 (seekKeyOrZeroReturnVacant!0 (x!52799 lt!256948) (index!23881 lt!256948) (index!23881 lt!256948) lt!256938 lt!256946 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35321 (_ BitVec 32)) SeekEntryResult!5413)

(assert (=> b!562877 (= lt!256942 (seekEntryOrOpen!0 lt!256938 lt!256946 mask!3119))))

(declare-fun lt!256941 () SeekEntryResult!5413)

(assert (=> b!562877 (= lt!256941 lt!256936)))

(assert (=> b!562877 (= lt!256936 (seekKeyOrZeroReturnVacant!0 (x!52799 lt!256948) (index!23881 lt!256948) (index!23881 lt!256948) (select (arr!16957 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562878 () Bool)

(declare-fun e!324398 () Bool)

(assert (=> b!562878 (= e!324397 e!324398)))

(declare-fun res!354180 () Bool)

(assert (=> b!562878 (=> (not res!354180) (not e!324398))))

(declare-fun lt!256943 () SeekEntryResult!5413)

(assert (=> b!562878 (= res!354180 (or (= lt!256943 (MissingZero!5413 i!1132)) (= lt!256943 (MissingVacant!5413 i!1132))))))

(assert (=> b!562878 (= lt!256943 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!562879 () Bool)

(declare-fun res!354178 () Bool)

(assert (=> b!562879 (=> (not res!354178) (not e!324397))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562879 (= res!354178 (validKeyInArray!0 (select (arr!16957 a!3118) j!142)))))

(declare-fun b!562880 () Bool)

(declare-fun e!324396 () Bool)

(assert (=> b!562880 (= e!324396 (not e!324395))))

(declare-fun res!354187 () Bool)

(assert (=> b!562880 (=> res!354187 e!324395)))

(get-info :version)

(assert (=> b!562880 (= res!354187 (or (undefined!6225 lt!256948) (not ((_ is Intermediate!5413) lt!256948))))))

(assert (=> b!562880 (= lt!256941 lt!256940)))

(assert (=> b!562880 (= lt!256940 (Found!5413 j!142))))

(assert (=> b!562880 (= lt!256941 (seekEntryOrOpen!0 (select (arr!16957 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35321 (_ BitVec 32)) Bool)

(assert (=> b!562880 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17600 0))(
  ( (Unit!17601) )
))
(declare-fun lt!256949 () Unit!17600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35321 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17600)

(assert (=> b!562880 (= lt!256949 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562882 () Bool)

(assert (=> b!562882 (= e!324399 true)))

(assert (=> b!562882 (= lt!256936 lt!256944)))

(declare-fun lt!256945 () Unit!17600)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35321 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17600)

(assert (=> b!562882 (= lt!256945 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!52799 lt!256948) (index!23881 lt!256948) (index!23881 lt!256948) mask!3119))))

(declare-fun b!562883 () Bool)

(declare-fun res!354183 () Bool)

(assert (=> b!562883 (=> (not res!354183) (not e!324398))))

(declare-datatypes ((List!11090 0))(
  ( (Nil!11087) (Cons!11086 (h!12089 (_ BitVec 64)) (t!17326 List!11090)) )
))
(declare-fun arrayNoDuplicates!0 (array!35321 (_ BitVec 32) List!11090) Bool)

(assert (=> b!562883 (= res!354183 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11087))))

(declare-fun b!562884 () Bool)

(declare-fun res!354184 () Bool)

(assert (=> b!562884 (=> (not res!354184) (not e!324397))))

(assert (=> b!562884 (= res!354184 (validKeyInArray!0 k0!1914))))

(declare-fun res!354186 () Bool)

(assert (=> start!51502 (=> (not res!354186) (not e!324397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51502 (= res!354186 (validMask!0 mask!3119))))

(assert (=> start!51502 e!324397))

(assert (=> start!51502 true))

(declare-fun array_inv!12731 (array!35321) Bool)

(assert (=> start!51502 (array_inv!12731 a!3118)))

(declare-fun b!562881 () Bool)

(assert (=> b!562881 (= e!324398 e!324396)))

(declare-fun res!354182 () Bool)

(assert (=> b!562881 (=> (not res!354182) (not e!324396))))

(declare-fun lt!256937 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35321 (_ BitVec 32)) SeekEntryResult!5413)

(assert (=> b!562881 (= res!354182 (= lt!256948 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256937 lt!256938 lt!256946 mask!3119)))))

(declare-fun lt!256947 () (_ BitVec 32))

(assert (=> b!562881 (= lt!256948 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256947 (select (arr!16957 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562881 (= lt!256937 (toIndex!0 lt!256938 mask!3119))))

(assert (=> b!562881 (= lt!256938 (select (store (arr!16957 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562881 (= lt!256947 (toIndex!0 (select (arr!16957 a!3118) j!142) mask!3119))))

(assert (=> b!562881 (= lt!256946 (array!35322 (store (arr!16957 a!3118) i!1132 k0!1914) (size!17321 a!3118)))))

(declare-fun b!562885 () Bool)

(declare-fun res!354177 () Bool)

(assert (=> b!562885 (=> (not res!354177) (not e!324398))))

(assert (=> b!562885 (= res!354177 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562886 () Bool)

(declare-fun res!354188 () Bool)

(assert (=> b!562886 (=> (not res!354188) (not e!324397))))

(assert (=> b!562886 (= res!354188 (and (= (size!17321 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17321 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17321 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51502 res!354186) b!562886))

(assert (= (and b!562886 res!354188) b!562879))

(assert (= (and b!562879 res!354178) b!562884))

(assert (= (and b!562884 res!354184) b!562875))

(assert (= (and b!562875 res!354179) b!562878))

(assert (= (and b!562878 res!354180) b!562885))

(assert (= (and b!562885 res!354177) b!562883))

(assert (= (and b!562883 res!354183) b!562881))

(assert (= (and b!562881 res!354182) b!562880))

(assert (= (and b!562880 (not res!354187)) b!562876))

(assert (= (and b!562876 (not res!354181)) b!562877))

(assert (= (and b!562877 (not res!354185)) b!562882))

(declare-fun m!541159 () Bool)

(assert (=> b!562881 m!541159))

(declare-fun m!541161 () Bool)

(assert (=> b!562881 m!541161))

(declare-fun m!541163 () Bool)

(assert (=> b!562881 m!541163))

(declare-fun m!541165 () Bool)

(assert (=> b!562881 m!541165))

(assert (=> b!562881 m!541159))

(declare-fun m!541167 () Bool)

(assert (=> b!562881 m!541167))

(assert (=> b!562881 m!541159))

(declare-fun m!541169 () Bool)

(assert (=> b!562881 m!541169))

(declare-fun m!541171 () Bool)

(assert (=> b!562881 m!541171))

(declare-fun m!541173 () Bool)

(assert (=> b!562883 m!541173))

(assert (=> b!562880 m!541159))

(assert (=> b!562880 m!541159))

(declare-fun m!541175 () Bool)

(assert (=> b!562880 m!541175))

(declare-fun m!541177 () Bool)

(assert (=> b!562880 m!541177))

(declare-fun m!541179 () Bool)

(assert (=> b!562880 m!541179))

(declare-fun m!541181 () Bool)

(assert (=> b!562875 m!541181))

(declare-fun m!541183 () Bool)

(assert (=> b!562885 m!541183))

(declare-fun m!541185 () Bool)

(assert (=> b!562878 m!541185))

(declare-fun m!541187 () Bool)

(assert (=> b!562884 m!541187))

(declare-fun m!541189 () Bool)

(assert (=> start!51502 m!541189))

(declare-fun m!541191 () Bool)

(assert (=> start!51502 m!541191))

(assert (=> b!562879 m!541159))

(assert (=> b!562879 m!541159))

(declare-fun m!541193 () Bool)

(assert (=> b!562879 m!541193))

(assert (=> b!562877 m!541159))

(declare-fun m!541195 () Bool)

(assert (=> b!562877 m!541195))

(assert (=> b!562877 m!541159))

(declare-fun m!541197 () Bool)

(assert (=> b!562877 m!541197))

(declare-fun m!541199 () Bool)

(assert (=> b!562877 m!541199))

(assert (=> b!562877 m!541165))

(declare-fun m!541201 () Bool)

(assert (=> b!562877 m!541201))

(declare-fun m!541203 () Bool)

(assert (=> b!562882 m!541203))

(assert (=> b!562876 m!541159))

(declare-fun m!541205 () Bool)

(assert (=> b!562876 m!541205))

(check-sat (not b!562879) (not b!562885) (not b!562875) (not b!562878) (not b!562877) (not b!562881) (not b!562880) (not b!562882) (not start!51502) (not b!562884) (not b!562883))
(check-sat)
