; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67798 () Bool)

(assert start!67798)

(declare-fun b!787520 () Bool)

(declare-datatypes ((Unit!27262 0))(
  ( (Unit!27263) )
))
(declare-fun e!437759 () Unit!27262)

(declare-fun Unit!27264 () Unit!27262)

(assert (=> b!787520 (= e!437759 Unit!27264)))

(declare-fun b!787521 () Bool)

(declare-fun res!533531 () Bool)

(declare-fun e!437760 () Bool)

(assert (=> b!787521 (=> (not res!533531) (not e!437760))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!351333 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42793 0))(
  ( (array!42794 (arr!20481 (Array (_ BitVec 32) (_ BitVec 64))) (size!20902 (_ BitVec 32))) )
))
(declare-fun lt!351337 () array!42793)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8088 0))(
  ( (MissingZero!8088 (index!34719 (_ BitVec 32))) (Found!8088 (index!34720 (_ BitVec 32))) (Intermediate!8088 (undefined!8900 Bool) (index!34721 (_ BitVec 32)) (x!65685 (_ BitVec 32))) (Undefined!8088) (MissingVacant!8088 (index!34722 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42793 (_ BitVec 32)) SeekEntryResult!8088)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42793 (_ BitVec 32)) SeekEntryResult!8088)

(assert (=> b!787521 (= res!533531 (= (seekEntryOrOpen!0 lt!351333 lt!351337 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351333 lt!351337 mask!3328)))))

(declare-fun b!787522 () Bool)

(declare-fun e!437770 () Bool)

(declare-fun e!437768 () Bool)

(assert (=> b!787522 (= e!437770 e!437768)))

(declare-fun res!533536 () Bool)

(assert (=> b!787522 (=> res!533536 e!437768)))

(declare-fun lt!351327 () (_ BitVec 64))

(assert (=> b!787522 (= res!533536 (= lt!351327 lt!351333))))

(declare-fun a!3186 () array!42793)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!787522 (= lt!351327 (select (store (arr!20481 a!3186) i!1173 k!2102) index!1321))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!437762 () Bool)

(declare-fun b!787523 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!787523 (= e!437762 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20481 a!3186) j!159) a!3186 mask!3328) (Found!8088 j!159)))))

(declare-fun b!787524 () Bool)

(declare-fun res!533522 () Bool)

(declare-fun e!437761 () Bool)

(assert (=> b!787524 (=> (not res!533522) (not e!437761))))

(declare-datatypes ((List!14536 0))(
  ( (Nil!14533) (Cons!14532 (h!15655 (_ BitVec 64)) (t!20859 List!14536)) )
))
(declare-fun arrayNoDuplicates!0 (array!42793 (_ BitVec 32) List!14536) Bool)

(assert (=> b!787524 (= res!533522 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14533))))

(declare-fun b!787525 () Bool)

(declare-fun res!533526 () Bool)

(assert (=> b!787525 (=> (not res!533526) (not e!437761))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!787525 (= res!533526 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20902 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20902 a!3186))))))

(declare-fun b!787526 () Bool)

(declare-fun lt!351328 () SeekEntryResult!8088)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42793 (_ BitVec 32)) SeekEntryResult!8088)

(assert (=> b!787526 (= e!437762 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20481 a!3186) j!159) a!3186 mask!3328) lt!351328))))

(declare-fun b!787527 () Bool)

(declare-fun e!437766 () Bool)

(assert (=> b!787527 (= e!437761 e!437766)))

(declare-fun res!533528 () Bool)

(assert (=> b!787527 (=> (not res!533528) (not e!437766))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!787527 (= res!533528 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20481 a!3186) j!159) mask!3328) (select (arr!20481 a!3186) j!159) a!3186 mask!3328) lt!351328))))

(assert (=> b!787527 (= lt!351328 (Intermediate!8088 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!787529 () Bool)

(declare-fun lt!351326 () SeekEntryResult!8088)

(declare-fun lt!351331 () SeekEntryResult!8088)

(assert (=> b!787529 (= e!437760 (= lt!351326 lt!351331))))

(declare-fun b!787530 () Bool)

(declare-fun res!533532 () Bool)

(declare-fun e!437769 () Bool)

(assert (=> b!787530 (=> (not res!533532) (not e!437769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!787530 (= res!533532 (validKeyInArray!0 (select (arr!20481 a!3186) j!159)))))

(declare-fun b!787531 () Bool)

(declare-fun res!533527 () Bool)

(assert (=> b!787531 (=> (not res!533527) (not e!437769))))

(assert (=> b!787531 (= res!533527 (and (= (size!20902 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20902 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20902 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!787532 () Bool)

(declare-fun res!533524 () Bool)

(assert (=> b!787532 (=> (not res!533524) (not e!437766))))

(assert (=> b!787532 (= res!533524 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20481 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!787533 () Bool)

(declare-fun e!437764 () Bool)

(assert (=> b!787533 (= e!437764 e!437770)))

(declare-fun res!533535 () Bool)

(assert (=> b!787533 (=> res!533535 e!437770)))

(declare-fun lt!351330 () SeekEntryResult!8088)

(assert (=> b!787533 (= res!533535 (not (= lt!351331 lt!351330)))))

(assert (=> b!787533 (= lt!351331 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20481 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!787534 () Bool)

(declare-fun res!533537 () Bool)

(assert (=> b!787534 (=> (not res!533537) (not e!437769))))

(declare-fun arrayContainsKey!0 (array!42793 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!787534 (= res!533537 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!787535 () Bool)

(declare-fun res!533523 () Bool)

(assert (=> b!787535 (=> (not res!533523) (not e!437766))))

(assert (=> b!787535 (= res!533523 e!437762)))

(declare-fun c!87407 () Bool)

(assert (=> b!787535 (= c!87407 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!787536 () Bool)

(declare-fun res!533538 () Bool)

(assert (=> b!787536 (=> (not res!533538) (not e!437769))))

(assert (=> b!787536 (= res!533538 (validKeyInArray!0 k!2102))))

(declare-fun e!437763 () Bool)

(declare-fun b!787537 () Bool)

(assert (=> b!787537 (= e!437763 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20481 a!3186) j!159) a!3186 mask!3328) lt!351330))))

(declare-fun b!787538 () Bool)

(assert (=> b!787538 (= e!437769 e!437761)))

(declare-fun res!533539 () Bool)

(assert (=> b!787538 (=> (not res!533539) (not e!437761))))

(declare-fun lt!351336 () SeekEntryResult!8088)

(assert (=> b!787538 (= res!533539 (or (= lt!351336 (MissingZero!8088 i!1173)) (= lt!351336 (MissingVacant!8088 i!1173))))))

(assert (=> b!787538 (= lt!351336 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!787539 () Bool)

(assert (=> b!787539 (= e!437768 true)))

(assert (=> b!787539 e!437760))

(declare-fun res!533534 () Bool)

(assert (=> b!787539 (=> (not res!533534) (not e!437760))))

(assert (=> b!787539 (= res!533534 (= lt!351327 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351329 () Unit!27262)

(assert (=> b!787539 (= lt!351329 e!437759)))

(declare-fun c!87408 () Bool)

(assert (=> b!787539 (= c!87408 (= lt!351327 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!787540 () Bool)

(declare-fun e!437765 () Bool)

(assert (=> b!787540 (= e!437766 e!437765)))

(declare-fun res!533530 () Bool)

(assert (=> b!787540 (=> (not res!533530) (not e!437765))))

(declare-fun lt!351334 () SeekEntryResult!8088)

(declare-fun lt!351332 () SeekEntryResult!8088)

(assert (=> b!787540 (= res!533530 (= lt!351334 lt!351332))))

(assert (=> b!787540 (= lt!351332 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351333 lt!351337 mask!3328))))

(assert (=> b!787540 (= lt!351334 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351333 mask!3328) lt!351333 lt!351337 mask!3328))))

(assert (=> b!787540 (= lt!351333 (select (store (arr!20481 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!787540 (= lt!351337 (array!42794 (store (arr!20481 a!3186) i!1173 k!2102) (size!20902 a!3186)))))

(declare-fun b!787541 () Bool)

(assert (=> b!787541 (= e!437765 (not e!437764))))

(declare-fun res!533529 () Bool)

(assert (=> b!787541 (=> res!533529 e!437764)))

(assert (=> b!787541 (= res!533529 (or (not (is-Intermediate!8088 lt!351332)) (bvslt x!1131 (x!65685 lt!351332)) (not (= x!1131 (x!65685 lt!351332))) (not (= index!1321 (index!34721 lt!351332)))))))

(assert (=> b!787541 e!437763))

(declare-fun res!533521 () Bool)

(assert (=> b!787541 (=> (not res!533521) (not e!437763))))

(assert (=> b!787541 (= res!533521 (= lt!351326 lt!351330))))

(assert (=> b!787541 (= lt!351330 (Found!8088 j!159))))

(assert (=> b!787541 (= lt!351326 (seekEntryOrOpen!0 (select (arr!20481 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42793 (_ BitVec 32)) Bool)

(assert (=> b!787541 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351335 () Unit!27262)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42793 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27262)

(assert (=> b!787541 (= lt!351335 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!787542 () Bool)

(declare-fun Unit!27265 () Unit!27262)

(assert (=> b!787542 (= e!437759 Unit!27265)))

(assert (=> b!787542 false))

(declare-fun b!787528 () Bool)

(declare-fun res!533525 () Bool)

(assert (=> b!787528 (=> (not res!533525) (not e!437761))))

(assert (=> b!787528 (= res!533525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!533533 () Bool)

(assert (=> start!67798 (=> (not res!533533) (not e!437769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67798 (= res!533533 (validMask!0 mask!3328))))

(assert (=> start!67798 e!437769))

(assert (=> start!67798 true))

(declare-fun array_inv!16255 (array!42793) Bool)

(assert (=> start!67798 (array_inv!16255 a!3186)))

(assert (= (and start!67798 res!533533) b!787531))

(assert (= (and b!787531 res!533527) b!787530))

(assert (= (and b!787530 res!533532) b!787536))

(assert (= (and b!787536 res!533538) b!787534))

(assert (= (and b!787534 res!533537) b!787538))

(assert (= (and b!787538 res!533539) b!787528))

(assert (= (and b!787528 res!533525) b!787524))

(assert (= (and b!787524 res!533522) b!787525))

(assert (= (and b!787525 res!533526) b!787527))

(assert (= (and b!787527 res!533528) b!787532))

(assert (= (and b!787532 res!533524) b!787535))

(assert (= (and b!787535 c!87407) b!787526))

(assert (= (and b!787535 (not c!87407)) b!787523))

(assert (= (and b!787535 res!533523) b!787540))

(assert (= (and b!787540 res!533530) b!787541))

(assert (= (and b!787541 res!533521) b!787537))

(assert (= (and b!787541 (not res!533529)) b!787533))

(assert (= (and b!787533 (not res!533535)) b!787522))

(assert (= (and b!787522 (not res!533536)) b!787539))

(assert (= (and b!787539 c!87408) b!787542))

(assert (= (and b!787539 (not c!87408)) b!787520))

(assert (= (and b!787539 res!533534) b!787521))

(assert (= (and b!787521 res!533531) b!787529))

(declare-fun m!729121 () Bool)

(assert (=> b!787527 m!729121))

(assert (=> b!787527 m!729121))

(declare-fun m!729123 () Bool)

(assert (=> b!787527 m!729123))

(assert (=> b!787527 m!729123))

(assert (=> b!787527 m!729121))

(declare-fun m!729125 () Bool)

(assert (=> b!787527 m!729125))

(assert (=> b!787537 m!729121))

(assert (=> b!787537 m!729121))

(declare-fun m!729127 () Bool)

(assert (=> b!787537 m!729127))

(assert (=> b!787523 m!729121))

(assert (=> b!787523 m!729121))

(declare-fun m!729129 () Bool)

(assert (=> b!787523 m!729129))

(assert (=> b!787533 m!729121))

(assert (=> b!787533 m!729121))

(assert (=> b!787533 m!729129))

(declare-fun m!729131 () Bool)

(assert (=> b!787536 m!729131))

(declare-fun m!729133 () Bool)

(assert (=> b!787522 m!729133))

(declare-fun m!729135 () Bool)

(assert (=> b!787522 m!729135))

(assert (=> b!787526 m!729121))

(assert (=> b!787526 m!729121))

(declare-fun m!729137 () Bool)

(assert (=> b!787526 m!729137))

(assert (=> b!787530 m!729121))

(assert (=> b!787530 m!729121))

(declare-fun m!729139 () Bool)

(assert (=> b!787530 m!729139))

(declare-fun m!729141 () Bool)

(assert (=> b!787521 m!729141))

(declare-fun m!729143 () Bool)

(assert (=> b!787521 m!729143))

(declare-fun m!729145 () Bool)

(assert (=> b!787540 m!729145))

(declare-fun m!729147 () Bool)

(assert (=> b!787540 m!729147))

(assert (=> b!787540 m!729133))

(declare-fun m!729149 () Bool)

(assert (=> b!787540 m!729149))

(assert (=> b!787540 m!729145))

(declare-fun m!729151 () Bool)

(assert (=> b!787540 m!729151))

(declare-fun m!729153 () Bool)

(assert (=> b!787528 m!729153))

(declare-fun m!729155 () Bool)

(assert (=> b!787534 m!729155))

(declare-fun m!729157 () Bool)

(assert (=> b!787524 m!729157))

(declare-fun m!729159 () Bool)

(assert (=> b!787538 m!729159))

(assert (=> b!787541 m!729121))

(assert (=> b!787541 m!729121))

(declare-fun m!729161 () Bool)

(assert (=> b!787541 m!729161))

(declare-fun m!729163 () Bool)

(assert (=> b!787541 m!729163))

(declare-fun m!729165 () Bool)

(assert (=> b!787541 m!729165))

(declare-fun m!729167 () Bool)

(assert (=> b!787532 m!729167))

(declare-fun m!729169 () Bool)

(assert (=> start!67798 m!729169))

(declare-fun m!729171 () Bool)

(assert (=> start!67798 m!729171))

(push 1)

