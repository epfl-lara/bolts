; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64766 () Bool)

(assert start!64766)

(declare-fun b!730849 () Bool)

(declare-fun e!408995 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!730849 (= e!408995 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!730850 () Bool)

(declare-fun res!491232 () Bool)

(declare-fun e!408997 () Bool)

(assert (=> b!730850 (=> (not res!491232) (not e!408997))))

(declare-datatypes ((array!41168 0))(
  ( (array!41169 (arr!19700 (Array (_ BitVec 32) (_ BitVec 64))) (size!20121 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41168)

(declare-datatypes ((List!13755 0))(
  ( (Nil!13752) (Cons!13751 (h!14811 (_ BitVec 64)) (t!20078 List!13755)) )
))
(declare-fun arrayNoDuplicates!0 (array!41168 (_ BitVec 32) List!13755) Bool)

(assert (=> b!730850 (= res!491232 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13752))))

(declare-fun res!491224 () Bool)

(declare-fun e!408994 () Bool)

(assert (=> start!64766 (=> (not res!491224) (not e!408994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64766 (= res!491224 (validMask!0 mask!3328))))

(assert (=> start!64766 e!408994))

(assert (=> start!64766 true))

(declare-fun array_inv!15474 (array!41168) Bool)

(assert (=> start!64766 (array_inv!15474 a!3186)))

(declare-fun b!730851 () Bool)

(declare-fun res!491231 () Bool)

(assert (=> b!730851 (=> (not res!491231) (not e!408997))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730851 (= res!491231 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20121 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20121 a!3186))))))

(declare-fun b!730852 () Bool)

(declare-fun res!491227 () Bool)

(declare-fun e!408999 () Bool)

(assert (=> b!730852 (=> (not res!491227) (not e!408999))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730852 (= res!491227 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19700 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730853 () Bool)

(declare-fun res!491225 () Bool)

(assert (=> b!730853 (=> (not res!491225) (not e!408994))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730853 (= res!491225 (validKeyInArray!0 k!2102))))

(declare-fun b!730854 () Bool)

(declare-fun e!408992 () Bool)

(declare-fun e!408993 () Bool)

(assert (=> b!730854 (= e!408992 e!408993)))

(declare-fun res!491239 () Bool)

(assert (=> b!730854 (=> (not res!491239) (not e!408993))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7307 0))(
  ( (MissingZero!7307 (index!31595 (_ BitVec 32))) (Found!7307 (index!31596 (_ BitVec 32))) (Intermediate!7307 (undefined!8119 Bool) (index!31597 (_ BitVec 32)) (x!62594 (_ BitVec 32))) (Undefined!7307) (MissingVacant!7307 (index!31598 (_ BitVec 32))) )
))
(declare-fun lt!323895 () SeekEntryResult!7307)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41168 (_ BitVec 32)) SeekEntryResult!7307)

(assert (=> b!730854 (= res!491239 (= (seekEntryOrOpen!0 (select (arr!19700 a!3186) j!159) a!3186 mask!3328) lt!323895))))

(assert (=> b!730854 (= lt!323895 (Found!7307 j!159))))

(declare-fun b!730855 () Bool)

(declare-fun res!491237 () Bool)

(assert (=> b!730855 (=> (not res!491237) (not e!408997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41168 (_ BitVec 32)) Bool)

(assert (=> b!730855 (= res!491237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730856 () Bool)

(assert (=> b!730856 (= e!408994 e!408997)))

(declare-fun res!491230 () Bool)

(assert (=> b!730856 (=> (not res!491230) (not e!408997))))

(declare-fun lt!323889 () SeekEntryResult!7307)

(assert (=> b!730856 (= res!491230 (or (= lt!323889 (MissingZero!7307 i!1173)) (= lt!323889 (MissingVacant!7307 i!1173))))))

(assert (=> b!730856 (= lt!323889 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730857 () Bool)

(declare-fun e!408996 () Bool)

(declare-fun e!408991 () Bool)

(assert (=> b!730857 (= e!408996 (not e!408991))))

(declare-fun res!491235 () Bool)

(assert (=> b!730857 (=> res!491235 e!408991)))

(declare-fun lt!323897 () SeekEntryResult!7307)

(assert (=> b!730857 (= res!491235 (or (not (is-Intermediate!7307 lt!323897)) (bvsge x!1131 (x!62594 lt!323897))))))

(assert (=> b!730857 e!408992))

(declare-fun res!491238 () Bool)

(assert (=> b!730857 (=> (not res!491238) (not e!408992))))

(assert (=> b!730857 (= res!491238 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24932 0))(
  ( (Unit!24933) )
))
(declare-fun lt!323894 () Unit!24932)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41168 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24932)

(assert (=> b!730857 (= lt!323894 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730858 () Bool)

(declare-fun res!491233 () Bool)

(assert (=> b!730858 (=> (not res!491233) (not e!408999))))

(declare-fun e!408998 () Bool)

(assert (=> b!730858 (= res!491233 e!408998)))

(declare-fun c!80187 () Bool)

(assert (=> b!730858 (= c!80187 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730859 () Bool)

(assert (=> b!730859 (= e!408997 e!408999)))

(declare-fun res!491236 () Bool)

(assert (=> b!730859 (=> (not res!491236) (not e!408999))))

(declare-fun lt!323896 () SeekEntryResult!7307)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41168 (_ BitVec 32)) SeekEntryResult!7307)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730859 (= res!491236 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19700 a!3186) j!159) mask!3328) (select (arr!19700 a!3186) j!159) a!3186 mask!3328) lt!323896))))

(assert (=> b!730859 (= lt!323896 (Intermediate!7307 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730860 () Bool)

(declare-fun res!491234 () Bool)

(assert (=> b!730860 (=> res!491234 e!408995)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41168 (_ BitVec 32)) SeekEntryResult!7307)

(assert (=> b!730860 (= res!491234 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19700 a!3186) j!159) a!3186 mask!3328) (Found!7307 j!159))))))

(declare-fun b!730861 () Bool)

(assert (=> b!730861 (= e!408999 e!408996)))

(declare-fun res!491240 () Bool)

(assert (=> b!730861 (=> (not res!491240) (not e!408996))))

(declare-fun lt!323891 () SeekEntryResult!7307)

(assert (=> b!730861 (= res!491240 (= lt!323891 lt!323897))))

(declare-fun lt!323890 () (_ BitVec 64))

(declare-fun lt!323892 () array!41168)

(assert (=> b!730861 (= lt!323897 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323890 lt!323892 mask!3328))))

(assert (=> b!730861 (= lt!323891 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323890 mask!3328) lt!323890 lt!323892 mask!3328))))

(assert (=> b!730861 (= lt!323890 (select (store (arr!19700 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730861 (= lt!323892 (array!41169 (store (arr!19700 a!3186) i!1173 k!2102) (size!20121 a!3186)))))

(declare-fun b!730862 () Bool)

(assert (=> b!730862 (= e!408998 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19700 a!3186) j!159) a!3186 mask!3328) (Found!7307 j!159)))))

(declare-fun b!730863 () Bool)

(assert (=> b!730863 (= e!408991 e!408995)))

(declare-fun res!491226 () Bool)

(assert (=> b!730863 (=> res!491226 e!408995)))

(assert (=> b!730863 (= res!491226 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!323893 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730863 (= lt!323893 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730864 () Bool)

(declare-fun res!491228 () Bool)

(assert (=> b!730864 (=> (not res!491228) (not e!408994))))

(assert (=> b!730864 (= res!491228 (and (= (size!20121 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20121 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20121 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730865 () Bool)

(declare-fun res!491241 () Bool)

(assert (=> b!730865 (=> (not res!491241) (not e!408994))))

(assert (=> b!730865 (= res!491241 (validKeyInArray!0 (select (arr!19700 a!3186) j!159)))))

(declare-fun b!730866 () Bool)

(assert (=> b!730866 (= e!408993 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19700 a!3186) j!159) a!3186 mask!3328) lt!323895))))

(declare-fun b!730867 () Bool)

(assert (=> b!730867 (= e!408998 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19700 a!3186) j!159) a!3186 mask!3328) lt!323896))))

(declare-fun b!730868 () Bool)

(declare-fun res!491229 () Bool)

(assert (=> b!730868 (=> (not res!491229) (not e!408994))))

(declare-fun arrayContainsKey!0 (array!41168 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730868 (= res!491229 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64766 res!491224) b!730864))

(assert (= (and b!730864 res!491228) b!730865))

(assert (= (and b!730865 res!491241) b!730853))

(assert (= (and b!730853 res!491225) b!730868))

(assert (= (and b!730868 res!491229) b!730856))

(assert (= (and b!730856 res!491230) b!730855))

(assert (= (and b!730855 res!491237) b!730850))

(assert (= (and b!730850 res!491232) b!730851))

(assert (= (and b!730851 res!491231) b!730859))

(assert (= (and b!730859 res!491236) b!730852))

(assert (= (and b!730852 res!491227) b!730858))

(assert (= (and b!730858 c!80187) b!730867))

(assert (= (and b!730858 (not c!80187)) b!730862))

(assert (= (and b!730858 res!491233) b!730861))

(assert (= (and b!730861 res!491240) b!730857))

(assert (= (and b!730857 res!491238) b!730854))

(assert (= (and b!730854 res!491239) b!730866))

(assert (= (and b!730857 (not res!491235)) b!730863))

(assert (= (and b!730863 (not res!491226)) b!730860))

(assert (= (and b!730860 (not res!491234)) b!730849))

(declare-fun m!684397 () Bool)

(assert (=> b!730863 m!684397))

(declare-fun m!684399 () Bool)

(assert (=> b!730853 m!684399))

(declare-fun m!684401 () Bool)

(assert (=> b!730862 m!684401))

(assert (=> b!730862 m!684401))

(declare-fun m!684403 () Bool)

(assert (=> b!730862 m!684403))

(declare-fun m!684405 () Bool)

(assert (=> b!730852 m!684405))

(assert (=> b!730854 m!684401))

(assert (=> b!730854 m!684401))

(declare-fun m!684407 () Bool)

(assert (=> b!730854 m!684407))

(assert (=> b!730860 m!684401))

(assert (=> b!730860 m!684401))

(assert (=> b!730860 m!684403))

(declare-fun m!684409 () Bool)

(assert (=> b!730861 m!684409))

(declare-fun m!684411 () Bool)

(assert (=> b!730861 m!684411))

(declare-fun m!684413 () Bool)

(assert (=> b!730861 m!684413))

(declare-fun m!684415 () Bool)

(assert (=> b!730861 m!684415))

(declare-fun m!684417 () Bool)

(assert (=> b!730861 m!684417))

(assert (=> b!730861 m!684411))

(declare-fun m!684419 () Bool)

(assert (=> b!730850 m!684419))

(declare-fun m!684421 () Bool)

(assert (=> b!730856 m!684421))

(assert (=> b!730859 m!684401))

(assert (=> b!730859 m!684401))

(declare-fun m!684423 () Bool)

(assert (=> b!730859 m!684423))

(assert (=> b!730859 m!684423))

(assert (=> b!730859 m!684401))

(declare-fun m!684425 () Bool)

(assert (=> b!730859 m!684425))

(declare-fun m!684427 () Bool)

(assert (=> start!64766 m!684427))

(declare-fun m!684429 () Bool)

(assert (=> start!64766 m!684429))

(declare-fun m!684431 () Bool)

(assert (=> b!730857 m!684431))

(declare-fun m!684433 () Bool)

(assert (=> b!730857 m!684433))

(assert (=> b!730867 m!684401))

(assert (=> b!730867 m!684401))

(declare-fun m!684435 () Bool)

(assert (=> b!730867 m!684435))

(declare-fun m!684437 () Bool)

(assert (=> b!730855 m!684437))

(declare-fun m!684439 () Bool)

(assert (=> b!730868 m!684439))

(assert (=> b!730865 m!684401))

(assert (=> b!730865 m!684401))

(declare-fun m!684441 () Bool)

(assert (=> b!730865 m!684441))

(assert (=> b!730866 m!684401))

(assert (=> b!730866 m!684401))

(declare-fun m!684443 () Bool)

(assert (=> b!730866 m!684443))

(push 1)

