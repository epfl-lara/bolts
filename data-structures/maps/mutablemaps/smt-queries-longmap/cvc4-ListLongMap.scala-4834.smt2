; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66498 () Bool)

(assert start!66498)

(declare-fun b!766050 () Bool)

(declare-fun res!518382 () Bool)

(declare-fun e!426622 () Bool)

(assert (=> b!766050 (=> (not res!518382) (not e!426622))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42230 0))(
  ( (array!42231 (arr!20216 (Array (_ BitVec 32) (_ BitVec 64))) (size!20637 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42230)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!766050 (= res!518382 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20637 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20637 a!3186))))))

(declare-fun b!766051 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!426618 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7823 0))(
  ( (MissingZero!7823 (index!33659 (_ BitVec 32))) (Found!7823 (index!33660 (_ BitVec 32))) (Intermediate!7823 (undefined!8635 Bool) (index!33661 (_ BitVec 32)) (x!64590 (_ BitVec 32))) (Undefined!7823) (MissingVacant!7823 (index!33662 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42230 (_ BitVec 32)) SeekEntryResult!7823)

(assert (=> b!766051 (= e!426618 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20216 a!3186) j!159) a!3186 mask!3328) (Found!7823 j!159)))))

(declare-fun e!426619 () Bool)

(declare-fun lt!340777 () SeekEntryResult!7823)

(declare-fun b!766052 () Bool)

(assert (=> b!766052 (= e!426619 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20216 a!3186) j!159) a!3186 mask!3328) lt!340777))))

(declare-fun b!766053 () Bool)

(declare-fun res!518386 () Bool)

(declare-fun e!426615 () Bool)

(assert (=> b!766053 (=> (not res!518386) (not e!426615))))

(assert (=> b!766053 (= res!518386 e!426618)))

(declare-fun c!84228 () Bool)

(assert (=> b!766053 (= c!84228 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!766054 () Bool)

(assert (=> b!766054 (= e!426622 e!426615)))

(declare-fun res!518373 () Bool)

(assert (=> b!766054 (=> (not res!518373) (not e!426615))))

(declare-fun lt!340776 () SeekEntryResult!7823)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42230 (_ BitVec 32)) SeekEntryResult!7823)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766054 (= res!518373 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20216 a!3186) j!159) mask!3328) (select (arr!20216 a!3186) j!159) a!3186 mask!3328) lt!340776))))

(assert (=> b!766054 (= lt!340776 (Intermediate!7823 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!766055 () Bool)

(declare-fun res!518383 () Bool)

(assert (=> b!766055 (=> (not res!518383) (not e!426615))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!766055 (= res!518383 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20216 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!766056 () Bool)

(declare-fun res!518381 () Bool)

(declare-fun e!426616 () Bool)

(assert (=> b!766056 (=> (not res!518381) (not e!426616))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!766056 (= res!518381 (validKeyInArray!0 k!2102))))

(declare-fun b!766057 () Bool)

(assert (=> b!766057 (= e!426616 e!426622)))

(declare-fun res!518378 () Bool)

(assert (=> b!766057 (=> (not res!518378) (not e!426622))))

(declare-fun lt!340775 () SeekEntryResult!7823)

(assert (=> b!766057 (= res!518378 (or (= lt!340775 (MissingZero!7823 i!1173)) (= lt!340775 (MissingVacant!7823 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42230 (_ BitVec 32)) SeekEntryResult!7823)

(assert (=> b!766057 (= lt!340775 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!766058 () Bool)

(declare-fun res!518376 () Bool)

(assert (=> b!766058 (=> (not res!518376) (not e!426616))))

(declare-fun arrayContainsKey!0 (array!42230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!766058 (= res!518376 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!766059 () Bool)

(declare-fun res!518379 () Bool)

(assert (=> b!766059 (=> (not res!518379) (not e!426616))))

(assert (=> b!766059 (= res!518379 (and (= (size!20637 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20637 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20637 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!766060 () Bool)

(declare-fun res!518384 () Bool)

(assert (=> b!766060 (=> (not res!518384) (not e!426622))))

(declare-datatypes ((List!14271 0))(
  ( (Nil!14268) (Cons!14267 (h!15357 (_ BitVec 64)) (t!20594 List!14271)) )
))
(declare-fun arrayNoDuplicates!0 (array!42230 (_ BitVec 32) List!14271) Bool)

(assert (=> b!766060 (= res!518384 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14268))))

(declare-fun b!766061 () Bool)

(declare-fun res!518388 () Bool)

(assert (=> b!766061 (=> (not res!518388) (not e!426616))))

(assert (=> b!766061 (= res!518388 (validKeyInArray!0 (select (arr!20216 a!3186) j!159)))))

(declare-fun b!766062 () Bool)

(assert (=> b!766062 (= e!426618 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20216 a!3186) j!159) a!3186 mask!3328) lt!340776))))

(declare-fun b!766063 () Bool)

(declare-fun e!426620 () Bool)

(declare-fun e!426617 () Bool)

(assert (=> b!766063 (= e!426620 (not e!426617))))

(declare-fun res!518375 () Bool)

(assert (=> b!766063 (=> res!518375 e!426617)))

(declare-fun lt!340779 () SeekEntryResult!7823)

(assert (=> b!766063 (= res!518375 (or (not (is-Intermediate!7823 lt!340779)) (bvsge x!1131 (x!64590 lt!340779))))))

(declare-fun e!426621 () Bool)

(assert (=> b!766063 e!426621))

(declare-fun res!518374 () Bool)

(assert (=> b!766063 (=> (not res!518374) (not e!426621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42230 (_ BitVec 32)) Bool)

(assert (=> b!766063 (= res!518374 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26372 0))(
  ( (Unit!26373) )
))
(declare-fun lt!340781 () Unit!26372)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42230 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26372)

(assert (=> b!766063 (= lt!340781 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!518380 () Bool)

(assert (=> start!66498 (=> (not res!518380) (not e!426616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66498 (= res!518380 (validMask!0 mask!3328))))

(assert (=> start!66498 e!426616))

(assert (=> start!66498 true))

(declare-fun array_inv!15990 (array!42230) Bool)

(assert (=> start!66498 (array_inv!15990 a!3186)))

(declare-fun b!766064 () Bool)

(assert (=> b!766064 (= e!426617 true)))

(declare-fun lt!340778 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!766064 (= lt!340778 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!766065 () Bool)

(assert (=> b!766065 (= e!426615 e!426620)))

(declare-fun res!518385 () Bool)

(assert (=> b!766065 (=> (not res!518385) (not e!426620))))

(declare-fun lt!340782 () SeekEntryResult!7823)

(assert (=> b!766065 (= res!518385 (= lt!340782 lt!340779))))

(declare-fun lt!340780 () array!42230)

(declare-fun lt!340783 () (_ BitVec 64))

(assert (=> b!766065 (= lt!340779 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340783 lt!340780 mask!3328))))

(assert (=> b!766065 (= lt!340782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340783 mask!3328) lt!340783 lt!340780 mask!3328))))

(assert (=> b!766065 (= lt!340783 (select (store (arr!20216 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!766065 (= lt!340780 (array!42231 (store (arr!20216 a!3186) i!1173 k!2102) (size!20637 a!3186)))))

(declare-fun b!766066 () Bool)

(declare-fun res!518377 () Bool)

(assert (=> b!766066 (=> (not res!518377) (not e!426622))))

(assert (=> b!766066 (= res!518377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!766067 () Bool)

(assert (=> b!766067 (= e!426621 e!426619)))

(declare-fun res!518387 () Bool)

(assert (=> b!766067 (=> (not res!518387) (not e!426619))))

(assert (=> b!766067 (= res!518387 (= (seekEntryOrOpen!0 (select (arr!20216 a!3186) j!159) a!3186 mask!3328) lt!340777))))

(assert (=> b!766067 (= lt!340777 (Found!7823 j!159))))

(assert (= (and start!66498 res!518380) b!766059))

(assert (= (and b!766059 res!518379) b!766061))

(assert (= (and b!766061 res!518388) b!766056))

(assert (= (and b!766056 res!518381) b!766058))

(assert (= (and b!766058 res!518376) b!766057))

(assert (= (and b!766057 res!518378) b!766066))

(assert (= (and b!766066 res!518377) b!766060))

(assert (= (and b!766060 res!518384) b!766050))

(assert (= (and b!766050 res!518382) b!766054))

(assert (= (and b!766054 res!518373) b!766055))

(assert (= (and b!766055 res!518383) b!766053))

(assert (= (and b!766053 c!84228) b!766062))

(assert (= (and b!766053 (not c!84228)) b!766051))

(assert (= (and b!766053 res!518386) b!766065))

(assert (= (and b!766065 res!518385) b!766063))

(assert (= (and b!766063 res!518374) b!766067))

(assert (= (and b!766067 res!518387) b!766052))

(assert (= (and b!766063 (not res!518375)) b!766064))

(declare-fun m!712145 () Bool)

(assert (=> b!766066 m!712145))

(declare-fun m!712147 () Bool)

(assert (=> b!766060 m!712147))

(declare-fun m!712149 () Bool)

(assert (=> b!766062 m!712149))

(assert (=> b!766062 m!712149))

(declare-fun m!712151 () Bool)

(assert (=> b!766062 m!712151))

(assert (=> b!766051 m!712149))

(assert (=> b!766051 m!712149))

(declare-fun m!712153 () Bool)

(assert (=> b!766051 m!712153))

(declare-fun m!712155 () Bool)

(assert (=> b!766055 m!712155))

(assert (=> b!766054 m!712149))

(assert (=> b!766054 m!712149))

(declare-fun m!712157 () Bool)

(assert (=> b!766054 m!712157))

(assert (=> b!766054 m!712157))

(assert (=> b!766054 m!712149))

(declare-fun m!712159 () Bool)

(assert (=> b!766054 m!712159))

(declare-fun m!712161 () Bool)

(assert (=> b!766057 m!712161))

(assert (=> b!766052 m!712149))

(assert (=> b!766052 m!712149))

(declare-fun m!712163 () Bool)

(assert (=> b!766052 m!712163))

(declare-fun m!712165 () Bool)

(assert (=> b!766056 m!712165))

(declare-fun m!712167 () Bool)

(assert (=> start!66498 m!712167))

(declare-fun m!712169 () Bool)

(assert (=> start!66498 m!712169))

(declare-fun m!712171 () Bool)

(assert (=> b!766063 m!712171))

(declare-fun m!712173 () Bool)

(assert (=> b!766063 m!712173))

(assert (=> b!766067 m!712149))

(assert (=> b!766067 m!712149))

(declare-fun m!712175 () Bool)

(assert (=> b!766067 m!712175))

(declare-fun m!712177 () Bool)

(assert (=> b!766058 m!712177))

(declare-fun m!712179 () Bool)

(assert (=> b!766064 m!712179))

(assert (=> b!766061 m!712149))

(assert (=> b!766061 m!712149))

(declare-fun m!712181 () Bool)

(assert (=> b!766061 m!712181))

(declare-fun m!712183 () Bool)

(assert (=> b!766065 m!712183))

(declare-fun m!712185 () Bool)

(assert (=> b!766065 m!712185))

(declare-fun m!712187 () Bool)

(assert (=> b!766065 m!712187))

(declare-fun m!712189 () Bool)

(assert (=> b!766065 m!712189))

(assert (=> b!766065 m!712185))

(declare-fun m!712191 () Bool)

(assert (=> b!766065 m!712191))

(push 1)

