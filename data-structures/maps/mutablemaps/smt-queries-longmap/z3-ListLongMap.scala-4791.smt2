; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65826 () Bool)

(assert start!65826)

(declare-fun b!757159 () Bool)

(declare-fun res!512162 () Bool)

(declare-fun e!422192 () Bool)

(assert (=> b!757159 (=> (not res!512162) (not e!422192))))

(declare-fun e!422195 () Bool)

(assert (=> b!757159 (= res!512162 e!422195)))

(declare-fun c!82884 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757159 (= c!82884 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757160 () Bool)

(declare-fun e!422200 () Bool)

(declare-fun e!422193 () Bool)

(assert (=> b!757160 (= e!422200 e!422193)))

(declare-fun res!512161 () Bool)

(assert (=> b!757160 (=> (not res!512161) (not e!422193))))

(declare-datatypes ((SeekEntryResult!7693 0))(
  ( (MissingZero!7693 (index!33139 (_ BitVec 32))) (Found!7693 (index!33140 (_ BitVec 32))) (Intermediate!7693 (undefined!8505 Bool) (index!33141 (_ BitVec 32)) (x!64060 (_ BitVec 32))) (Undefined!7693) (MissingVacant!7693 (index!33142 (_ BitVec 32))) )
))
(declare-fun lt!337202 () SeekEntryResult!7693)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757160 (= res!512161 (or (= lt!337202 (MissingZero!7693 i!1173)) (= lt!337202 (MissingVacant!7693 i!1173))))))

(declare-datatypes ((array!41952 0))(
  ( (array!41953 (arr!20086 (Array (_ BitVec 32) (_ BitVec 64))) (size!20507 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41952)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41952 (_ BitVec 32)) SeekEntryResult!7693)

(assert (=> b!757160 (= lt!337202 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!757161 () Bool)

(declare-fun e!422196 () Bool)

(declare-fun e!422199 () Bool)

(assert (=> b!757161 (= e!422196 e!422199)))

(declare-fun res!512163 () Bool)

(assert (=> b!757161 (=> res!512163 e!422199)))

(declare-fun lt!337199 () (_ BitVec 64))

(declare-fun lt!337197 () (_ BitVec 64))

(assert (=> b!757161 (= res!512163 (= lt!337199 lt!337197))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!757161 (= lt!337199 (select (store (arr!20086 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!757162 () Bool)

(declare-fun res!512172 () Bool)

(assert (=> b!757162 (=> (not res!512172) (not e!422200))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757162 (= res!512172 (validKeyInArray!0 k0!2102))))

(declare-fun b!757163 () Bool)

(declare-fun res!512168 () Bool)

(assert (=> b!757163 (=> (not res!512168) (not e!422193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41952 (_ BitVec 32)) Bool)

(assert (=> b!757163 (= res!512168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757164 () Bool)

(declare-fun res!512156 () Bool)

(assert (=> b!757164 (=> (not res!512156) (not e!422192))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!757164 (= res!512156 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20086 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!422194 () Bool)

(declare-fun b!757165 () Bool)

(declare-fun lt!337198 () SeekEntryResult!7693)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41952 (_ BitVec 32)) SeekEntryResult!7693)

(assert (=> b!757165 (= e!422194 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20086 a!3186) j!159) a!3186 mask!3328) lt!337198))))

(declare-fun b!757166 () Bool)

(assert (=> b!757166 (= e!422193 e!422192)))

(declare-fun res!512167 () Bool)

(assert (=> b!757166 (=> (not res!512167) (not e!422192))))

(declare-fun lt!337196 () SeekEntryResult!7693)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41952 (_ BitVec 32)) SeekEntryResult!7693)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757166 (= res!512167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20086 a!3186) j!159) mask!3328) (select (arr!20086 a!3186) j!159) a!3186 mask!3328) lt!337196))))

(assert (=> b!757166 (= lt!337196 (Intermediate!7693 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757167 () Bool)

(assert (=> b!757167 (= e!422195 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20086 a!3186) j!159) a!3186 mask!3328) lt!337196))))

(declare-fun b!757168 () Bool)

(declare-datatypes ((Unit!26174 0))(
  ( (Unit!26175) )
))
(declare-fun e!422191 () Unit!26174)

(declare-fun Unit!26176 () Unit!26174)

(assert (=> b!757168 (= e!422191 Unit!26176)))

(declare-fun b!757169 () Bool)

(declare-fun e!422201 () Bool)

(declare-fun lt!337191 () SeekEntryResult!7693)

(declare-fun lt!337193 () SeekEntryResult!7693)

(assert (=> b!757169 (= e!422201 (= lt!337191 lt!337193))))

(declare-fun b!757170 () Bool)

(declare-fun res!512166 () Bool)

(assert (=> b!757170 (=> (not res!512166) (not e!422200))))

(assert (=> b!757170 (= res!512166 (validKeyInArray!0 (select (arr!20086 a!3186) j!159)))))

(declare-fun b!757171 () Bool)

(declare-fun res!512154 () Bool)

(assert (=> b!757171 (=> (not res!512154) (not e!422200))))

(declare-fun arrayContainsKey!0 (array!41952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757171 (= res!512154 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757172 () Bool)

(declare-fun e!422198 () Bool)

(assert (=> b!757172 (= e!422192 e!422198)))

(declare-fun res!512165 () Bool)

(assert (=> b!757172 (=> (not res!512165) (not e!422198))))

(declare-fun lt!337201 () SeekEntryResult!7693)

(declare-fun lt!337195 () SeekEntryResult!7693)

(assert (=> b!757172 (= res!512165 (= lt!337201 lt!337195))))

(declare-fun lt!337200 () array!41952)

(assert (=> b!757172 (= lt!337195 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337197 lt!337200 mask!3328))))

(assert (=> b!757172 (= lt!337201 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337197 mask!3328) lt!337197 lt!337200 mask!3328))))

(assert (=> b!757172 (= lt!337197 (select (store (arr!20086 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!757172 (= lt!337200 (array!41953 (store (arr!20086 a!3186) i!1173 k0!2102) (size!20507 a!3186)))))

(declare-fun b!757173 () Bool)

(assert (=> b!757173 (= e!422199 true)))

(assert (=> b!757173 e!422201))

(declare-fun res!512159 () Bool)

(assert (=> b!757173 (=> (not res!512159) (not e!422201))))

(assert (=> b!757173 (= res!512159 (= lt!337199 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337192 () Unit!26174)

(assert (=> b!757173 (= lt!337192 e!422191)))

(declare-fun c!82883 () Bool)

(assert (=> b!757173 (= c!82883 (= lt!337199 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757174 () Bool)

(assert (=> b!757174 (= e!422195 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20086 a!3186) j!159) a!3186 mask!3328) (Found!7693 j!159)))))

(declare-fun b!757175 () Bool)

(declare-fun Unit!26177 () Unit!26174)

(assert (=> b!757175 (= e!422191 Unit!26177)))

(assert (=> b!757175 false))

(declare-fun b!757176 () Bool)

(declare-fun res!512160 () Bool)

(assert (=> b!757176 (=> (not res!512160) (not e!422193))))

(declare-datatypes ((List!14141 0))(
  ( (Nil!14138) (Cons!14137 (h!15209 (_ BitVec 64)) (t!20464 List!14141)) )
))
(declare-fun arrayNoDuplicates!0 (array!41952 (_ BitVec 32) List!14141) Bool)

(assert (=> b!757176 (= res!512160 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14138))))

(declare-fun b!757177 () Bool)

(declare-fun e!422197 () Bool)

(assert (=> b!757177 (= e!422198 (not e!422197))))

(declare-fun res!512157 () Bool)

(assert (=> b!757177 (=> res!512157 e!422197)))

(get-info :version)

(assert (=> b!757177 (= res!512157 (or (not ((_ is Intermediate!7693) lt!337195)) (bvslt x!1131 (x!64060 lt!337195)) (not (= x!1131 (x!64060 lt!337195))) (not (= index!1321 (index!33141 lt!337195)))))))

(assert (=> b!757177 e!422194))

(declare-fun res!512155 () Bool)

(assert (=> b!757177 (=> (not res!512155) (not e!422194))))

(assert (=> b!757177 (= res!512155 (= lt!337191 lt!337198))))

(assert (=> b!757177 (= lt!337198 (Found!7693 j!159))))

(assert (=> b!757177 (= lt!337191 (seekEntryOrOpen!0 (select (arr!20086 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757177 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337194 () Unit!26174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41952 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26174)

(assert (=> b!757177 (= lt!337194 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757178 () Bool)

(assert (=> b!757178 (= e!422197 e!422196)))

(declare-fun res!512158 () Bool)

(assert (=> b!757178 (=> res!512158 e!422196)))

(assert (=> b!757178 (= res!512158 (not (= lt!337193 lt!337198)))))

(assert (=> b!757178 (= lt!337193 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20086 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!512170 () Bool)

(assert (=> start!65826 (=> (not res!512170) (not e!422200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65826 (= res!512170 (validMask!0 mask!3328))))

(assert (=> start!65826 e!422200))

(assert (=> start!65826 true))

(declare-fun array_inv!15860 (array!41952) Bool)

(assert (=> start!65826 (array_inv!15860 a!3186)))

(declare-fun b!757179 () Bool)

(declare-fun res!512164 () Bool)

(assert (=> b!757179 (=> (not res!512164) (not e!422201))))

(assert (=> b!757179 (= res!512164 (= (seekEntryOrOpen!0 lt!337197 lt!337200 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337197 lt!337200 mask!3328)))))

(declare-fun b!757180 () Bool)

(declare-fun res!512171 () Bool)

(assert (=> b!757180 (=> (not res!512171) (not e!422200))))

(assert (=> b!757180 (= res!512171 (and (= (size!20507 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20507 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20507 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757181 () Bool)

(declare-fun res!512169 () Bool)

(assert (=> b!757181 (=> (not res!512169) (not e!422193))))

(assert (=> b!757181 (= res!512169 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20507 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20507 a!3186))))))

(assert (= (and start!65826 res!512170) b!757180))

(assert (= (and b!757180 res!512171) b!757170))

(assert (= (and b!757170 res!512166) b!757162))

(assert (= (and b!757162 res!512172) b!757171))

(assert (= (and b!757171 res!512154) b!757160))

(assert (= (and b!757160 res!512161) b!757163))

(assert (= (and b!757163 res!512168) b!757176))

(assert (= (and b!757176 res!512160) b!757181))

(assert (= (and b!757181 res!512169) b!757166))

(assert (= (and b!757166 res!512167) b!757164))

(assert (= (and b!757164 res!512156) b!757159))

(assert (= (and b!757159 c!82884) b!757167))

(assert (= (and b!757159 (not c!82884)) b!757174))

(assert (= (and b!757159 res!512162) b!757172))

(assert (= (and b!757172 res!512165) b!757177))

(assert (= (and b!757177 res!512155) b!757165))

(assert (= (and b!757177 (not res!512157)) b!757178))

(assert (= (and b!757178 (not res!512158)) b!757161))

(assert (= (and b!757161 (not res!512163)) b!757173))

(assert (= (and b!757173 c!82883) b!757175))

(assert (= (and b!757173 (not c!82883)) b!757168))

(assert (= (and b!757173 res!512159) b!757179))

(assert (= (and b!757179 res!512164) b!757169))

(declare-fun m!705005 () Bool)

(assert (=> b!757166 m!705005))

(assert (=> b!757166 m!705005))

(declare-fun m!705007 () Bool)

(assert (=> b!757166 m!705007))

(assert (=> b!757166 m!705007))

(assert (=> b!757166 m!705005))

(declare-fun m!705009 () Bool)

(assert (=> b!757166 m!705009))

(declare-fun m!705011 () Bool)

(assert (=> b!757163 m!705011))

(declare-fun m!705013 () Bool)

(assert (=> b!757176 m!705013))

(declare-fun m!705015 () Bool)

(assert (=> b!757171 m!705015))

(declare-fun m!705017 () Bool)

(assert (=> b!757161 m!705017))

(declare-fun m!705019 () Bool)

(assert (=> b!757161 m!705019))

(declare-fun m!705021 () Bool)

(assert (=> b!757164 m!705021))

(assert (=> b!757177 m!705005))

(assert (=> b!757177 m!705005))

(declare-fun m!705023 () Bool)

(assert (=> b!757177 m!705023))

(declare-fun m!705025 () Bool)

(assert (=> b!757177 m!705025))

(declare-fun m!705027 () Bool)

(assert (=> b!757177 m!705027))

(assert (=> b!757167 m!705005))

(assert (=> b!757167 m!705005))

(declare-fun m!705029 () Bool)

(assert (=> b!757167 m!705029))

(declare-fun m!705031 () Bool)

(assert (=> start!65826 m!705031))

(declare-fun m!705033 () Bool)

(assert (=> start!65826 m!705033))

(assert (=> b!757170 m!705005))

(assert (=> b!757170 m!705005))

(declare-fun m!705035 () Bool)

(assert (=> b!757170 m!705035))

(assert (=> b!757178 m!705005))

(assert (=> b!757178 m!705005))

(declare-fun m!705037 () Bool)

(assert (=> b!757178 m!705037))

(declare-fun m!705039 () Bool)

(assert (=> b!757162 m!705039))

(declare-fun m!705041 () Bool)

(assert (=> b!757172 m!705041))

(declare-fun m!705043 () Bool)

(assert (=> b!757172 m!705043))

(assert (=> b!757172 m!705017))

(declare-fun m!705045 () Bool)

(assert (=> b!757172 m!705045))

(declare-fun m!705047 () Bool)

(assert (=> b!757172 m!705047))

(assert (=> b!757172 m!705041))

(declare-fun m!705049 () Bool)

(assert (=> b!757179 m!705049))

(declare-fun m!705051 () Bool)

(assert (=> b!757179 m!705051))

(assert (=> b!757174 m!705005))

(assert (=> b!757174 m!705005))

(assert (=> b!757174 m!705037))

(assert (=> b!757165 m!705005))

(assert (=> b!757165 m!705005))

(declare-fun m!705053 () Bool)

(assert (=> b!757165 m!705053))

(declare-fun m!705055 () Bool)

(assert (=> b!757160 m!705055))

(check-sat (not b!757165) (not start!65826) (not b!757172) (not b!757163) (not b!757162) (not b!757177) (not b!757170) (not b!757174) (not b!757178) (not b!757166) (not b!757160) (not b!757176) (not b!757171) (not b!757167) (not b!757179))
(check-sat)
