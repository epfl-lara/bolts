; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66494 () Bool)

(assert start!66494)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42226 0))(
  ( (array!42227 (arr!20214 (Array (_ BitVec 32) (_ BitVec 64))) (size!20635 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42226)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!765942 () Bool)

(declare-fun e!426561 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7821 0))(
  ( (MissingZero!7821 (index!33651 (_ BitVec 32))) (Found!7821 (index!33652 (_ BitVec 32))) (Intermediate!7821 (undefined!8633 Bool) (index!33653 (_ BitVec 32)) (x!64588 (_ BitVec 32))) (Undefined!7821) (MissingVacant!7821 (index!33654 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42226 (_ BitVec 32)) SeekEntryResult!7821)

(assert (=> b!765942 (= e!426561 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20214 a!3186) j!159) a!3186 mask!3328) (Found!7821 j!159)))))

(declare-fun b!765943 () Bool)

(declare-fun res!518284 () Bool)

(declare-fun e!426568 () Bool)

(assert (=> b!765943 (=> (not res!518284) (not e!426568))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765943 (= res!518284 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765944 () Bool)

(declare-fun res!518282 () Bool)

(declare-fun e!426565 () Bool)

(assert (=> b!765944 (=> (not res!518282) (not e!426565))))

(assert (=> b!765944 (= res!518282 e!426561)))

(declare-fun c!84222 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765944 (= c!84222 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!765945 () Bool)

(declare-fun res!518289 () Bool)

(assert (=> b!765945 (=> (not res!518289) (not e!426565))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!765945 (= res!518289 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20214 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765946 () Bool)

(declare-fun res!518290 () Bool)

(declare-fun e!426567 () Bool)

(assert (=> b!765946 (=> (not res!518290) (not e!426567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42226 (_ BitVec 32)) Bool)

(assert (=> b!765946 (= res!518290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765947 () Bool)

(declare-fun lt!340728 () SeekEntryResult!7821)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42226 (_ BitVec 32)) SeekEntryResult!7821)

(assert (=> b!765947 (= e!426561 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20214 a!3186) j!159) a!3186 mask!3328) lt!340728))))

(declare-fun b!765948 () Bool)

(declare-fun res!518286 () Bool)

(assert (=> b!765948 (=> (not res!518286) (not e!426567))))

(declare-datatypes ((List!14269 0))(
  ( (Nil!14266) (Cons!14265 (h!15355 (_ BitVec 64)) (t!20592 List!14269)) )
))
(declare-fun arrayNoDuplicates!0 (array!42226 (_ BitVec 32) List!14269) Bool)

(assert (=> b!765948 (= res!518286 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14266))))

(declare-fun b!765949 () Bool)

(declare-fun res!518287 () Bool)

(assert (=> b!765949 (=> (not res!518287) (not e!426568))))

(assert (=> b!765949 (= res!518287 (and (= (size!20635 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20635 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20635 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!765950 () Bool)

(declare-fun e!426569 () Bool)

(assert (=> b!765950 (= e!426565 e!426569)))

(declare-fun res!518283 () Bool)

(assert (=> b!765950 (=> (not res!518283) (not e!426569))))

(declare-fun lt!340725 () SeekEntryResult!7821)

(declare-fun lt!340724 () SeekEntryResult!7821)

(assert (=> b!765950 (= res!518283 (= lt!340725 lt!340724))))

(declare-fun lt!340722 () (_ BitVec 64))

(declare-fun lt!340723 () array!42226)

(assert (=> b!765950 (= lt!340724 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340722 lt!340723 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765950 (= lt!340725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340722 mask!3328) lt!340722 lt!340723 mask!3328))))

(assert (=> b!765950 (= lt!340722 (select (store (arr!20214 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!765950 (= lt!340723 (array!42227 (store (arr!20214 a!3186) i!1173 k!2102) (size!20635 a!3186)))))

(declare-fun b!765951 () Bool)

(declare-fun e!426562 () Bool)

(declare-fun e!426566 () Bool)

(assert (=> b!765951 (= e!426562 e!426566)))

(declare-fun res!518280 () Bool)

(assert (=> b!765951 (=> (not res!518280) (not e!426566))))

(declare-fun lt!340726 () SeekEntryResult!7821)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42226 (_ BitVec 32)) SeekEntryResult!7821)

(assert (=> b!765951 (= res!518280 (= (seekEntryOrOpen!0 (select (arr!20214 a!3186) j!159) a!3186 mask!3328) lt!340726))))

(assert (=> b!765951 (= lt!340726 (Found!7821 j!159))))

(declare-fun b!765952 () Bool)

(declare-fun res!518285 () Bool)

(assert (=> b!765952 (=> (not res!518285) (not e!426568))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765952 (= res!518285 (validKeyInArray!0 k!2102))))

(declare-fun b!765953 () Bool)

(assert (=> b!765953 (= e!426568 e!426567)))

(declare-fun res!518278 () Bool)

(assert (=> b!765953 (=> (not res!518278) (not e!426567))))

(declare-fun lt!340729 () SeekEntryResult!7821)

(assert (=> b!765953 (= res!518278 (or (= lt!340729 (MissingZero!7821 i!1173)) (= lt!340729 (MissingVacant!7821 i!1173))))))

(assert (=> b!765953 (= lt!340729 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!765954 () Bool)

(declare-fun res!518292 () Bool)

(assert (=> b!765954 (=> (not res!518292) (not e!426567))))

(assert (=> b!765954 (= res!518292 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20635 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20635 a!3186))))))

(declare-fun b!765955 () Bool)

(declare-fun e!426563 () Bool)

(assert (=> b!765955 (= e!426563 true)))

(declare-fun lt!340727 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765955 (= lt!340727 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!765957 () Bool)

(assert (=> b!765957 (= e!426569 (not e!426563))))

(declare-fun res!518279 () Bool)

(assert (=> b!765957 (=> res!518279 e!426563)))

(assert (=> b!765957 (= res!518279 (or (not (is-Intermediate!7821 lt!340724)) (bvsge x!1131 (x!64588 lt!340724))))))

(assert (=> b!765957 e!426562))

(declare-fun res!518277 () Bool)

(assert (=> b!765957 (=> (not res!518277) (not e!426562))))

(assert (=> b!765957 (= res!518277 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26368 0))(
  ( (Unit!26369) )
))
(declare-fun lt!340721 () Unit!26368)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42226 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26368)

(assert (=> b!765957 (= lt!340721 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765958 () Bool)

(assert (=> b!765958 (= e!426567 e!426565)))

(declare-fun res!518291 () Bool)

(assert (=> b!765958 (=> (not res!518291) (not e!426565))))

(assert (=> b!765958 (= res!518291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20214 a!3186) j!159) mask!3328) (select (arr!20214 a!3186) j!159) a!3186 mask!3328) lt!340728))))

(assert (=> b!765958 (= lt!340728 (Intermediate!7821 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765959 () Bool)

(declare-fun res!518288 () Bool)

(assert (=> b!765959 (=> (not res!518288) (not e!426568))))

(assert (=> b!765959 (= res!518288 (validKeyInArray!0 (select (arr!20214 a!3186) j!159)))))

(declare-fun res!518281 () Bool)

(assert (=> start!66494 (=> (not res!518281) (not e!426568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66494 (= res!518281 (validMask!0 mask!3328))))

(assert (=> start!66494 e!426568))

(assert (=> start!66494 true))

(declare-fun array_inv!15988 (array!42226) Bool)

(assert (=> start!66494 (array_inv!15988 a!3186)))

(declare-fun b!765956 () Bool)

(assert (=> b!765956 (= e!426566 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20214 a!3186) j!159) a!3186 mask!3328) lt!340726))))

(assert (= (and start!66494 res!518281) b!765949))

(assert (= (and b!765949 res!518287) b!765959))

(assert (= (and b!765959 res!518288) b!765952))

(assert (= (and b!765952 res!518285) b!765943))

(assert (= (and b!765943 res!518284) b!765953))

(assert (= (and b!765953 res!518278) b!765946))

(assert (= (and b!765946 res!518290) b!765948))

(assert (= (and b!765948 res!518286) b!765954))

(assert (= (and b!765954 res!518292) b!765958))

(assert (= (and b!765958 res!518291) b!765945))

(assert (= (and b!765945 res!518289) b!765944))

(assert (= (and b!765944 c!84222) b!765947))

(assert (= (and b!765944 (not c!84222)) b!765942))

(assert (= (and b!765944 res!518282) b!765950))

(assert (= (and b!765950 res!518283) b!765957))

(assert (= (and b!765957 res!518277) b!765951))

(assert (= (and b!765951 res!518280) b!765956))

(assert (= (and b!765957 (not res!518279)) b!765955))

(declare-fun m!712049 () Bool)

(assert (=> b!765952 m!712049))

(declare-fun m!712051 () Bool)

(assert (=> b!765953 m!712051))

(declare-fun m!712053 () Bool)

(assert (=> b!765959 m!712053))

(assert (=> b!765959 m!712053))

(declare-fun m!712055 () Bool)

(assert (=> b!765959 m!712055))

(declare-fun m!712057 () Bool)

(assert (=> b!765950 m!712057))

(declare-fun m!712059 () Bool)

(assert (=> b!765950 m!712059))

(declare-fun m!712061 () Bool)

(assert (=> b!765950 m!712061))

(declare-fun m!712063 () Bool)

(assert (=> b!765950 m!712063))

(assert (=> b!765950 m!712061))

(declare-fun m!712065 () Bool)

(assert (=> b!765950 m!712065))

(assert (=> b!765951 m!712053))

(assert (=> b!765951 m!712053))

(declare-fun m!712067 () Bool)

(assert (=> b!765951 m!712067))

(assert (=> b!765942 m!712053))

(assert (=> b!765942 m!712053))

(declare-fun m!712069 () Bool)

(assert (=> b!765942 m!712069))

(declare-fun m!712071 () Bool)

(assert (=> b!765957 m!712071))

(declare-fun m!712073 () Bool)

(assert (=> b!765957 m!712073))

(declare-fun m!712075 () Bool)

(assert (=> b!765943 m!712075))

(declare-fun m!712077 () Bool)

(assert (=> b!765946 m!712077))

(assert (=> b!765947 m!712053))

(assert (=> b!765947 m!712053))

(declare-fun m!712079 () Bool)

(assert (=> b!765947 m!712079))

(assert (=> b!765958 m!712053))

(assert (=> b!765958 m!712053))

(declare-fun m!712081 () Bool)

(assert (=> b!765958 m!712081))

(assert (=> b!765958 m!712081))

(assert (=> b!765958 m!712053))

(declare-fun m!712083 () Bool)

(assert (=> b!765958 m!712083))

(declare-fun m!712085 () Bool)

(assert (=> b!765955 m!712085))

(declare-fun m!712087 () Bool)

(assert (=> b!765948 m!712087))

(declare-fun m!712089 () Bool)

(assert (=> b!765945 m!712089))

(assert (=> b!765956 m!712053))

(assert (=> b!765956 m!712053))

(declare-fun m!712091 () Bool)

(assert (=> b!765956 m!712091))

(declare-fun m!712093 () Bool)

(assert (=> start!66494 m!712093))

(declare-fun m!712095 () Bool)

(assert (=> start!66494 m!712095))

(push 1)

