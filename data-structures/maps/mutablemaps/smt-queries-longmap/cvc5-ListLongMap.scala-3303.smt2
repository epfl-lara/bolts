; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45772 () Bool)

(assert start!45772)

(declare-fun b!506161 () Bool)

(declare-fun e!296265 () Bool)

(declare-fun e!296268 () Bool)

(assert (=> b!506161 (= e!296265 (not e!296268))))

(declare-fun res!307274 () Bool)

(assert (=> b!506161 (=> res!307274 e!296268)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32488 0))(
  ( (array!32489 (arr!15621 (Array (_ BitVec 32) (_ BitVec 64))) (size!15985 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32488)

(declare-fun lt!231011 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4095 0))(
  ( (MissingZero!4095 (index!18568 (_ BitVec 32))) (Found!4095 (index!18569 (_ BitVec 32))) (Intermediate!4095 (undefined!4907 Bool) (index!18570 (_ BitVec 32)) (x!47603 (_ BitVec 32))) (Undefined!4095) (MissingVacant!4095 (index!18571 (_ BitVec 32))) )
))
(declare-fun lt!231013 () SeekEntryResult!4095)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32488 (_ BitVec 32)) SeekEntryResult!4095)

(assert (=> b!506161 (= res!307274 (= lt!231013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231011 (select (store (arr!15621 a!3235) i!1204 k!2280) j!176) (array!32489 (store (arr!15621 a!3235) i!1204 k!2280) (size!15985 a!3235)) mask!3524)))))

(declare-fun lt!231012 () (_ BitVec 32))

(assert (=> b!506161 (= lt!231013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231012 (select (arr!15621 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506161 (= lt!231011 (toIndex!0 (select (store (arr!15621 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506161 (= lt!231012 (toIndex!0 (select (arr!15621 a!3235) j!176) mask!3524))))

(declare-fun e!296266 () Bool)

(assert (=> b!506161 e!296266))

(declare-fun res!307280 () Bool)

(assert (=> b!506161 (=> (not res!307280) (not e!296266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32488 (_ BitVec 32)) Bool)

(assert (=> b!506161 (= res!307280 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15470 0))(
  ( (Unit!15471) )
))
(declare-fun lt!231010 () Unit!15470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32488 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15470)

(assert (=> b!506161 (= lt!231010 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506162 () Bool)

(declare-fun res!307272 () Bool)

(declare-fun e!296267 () Bool)

(assert (=> b!506162 (=> (not res!307272) (not e!296267))))

(declare-fun arrayContainsKey!0 (array!32488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506162 (= res!307272 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506163 () Bool)

(assert (=> b!506163 (= e!296267 e!296265)))

(declare-fun res!307278 () Bool)

(assert (=> b!506163 (=> (not res!307278) (not e!296265))))

(declare-fun lt!231009 () SeekEntryResult!4095)

(assert (=> b!506163 (= res!307278 (or (= lt!231009 (MissingZero!4095 i!1204)) (= lt!231009 (MissingVacant!4095 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32488 (_ BitVec 32)) SeekEntryResult!4095)

(assert (=> b!506163 (= lt!231009 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506164 () Bool)

(declare-fun res!307275 () Bool)

(assert (=> b!506164 (=> (not res!307275) (not e!296267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506164 (= res!307275 (validKeyInArray!0 (select (arr!15621 a!3235) j!176)))))

(declare-fun b!506165 () Bool)

(declare-fun res!307270 () Bool)

(assert (=> b!506165 (=> (not res!307270) (not e!296265))))

(assert (=> b!506165 (= res!307270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506166 () Bool)

(declare-fun res!307277 () Bool)

(assert (=> b!506166 (=> (not res!307277) (not e!296265))))

(declare-datatypes ((List!9832 0))(
  ( (Nil!9829) (Cons!9828 (h!10705 (_ BitVec 64)) (t!16068 List!9832)) )
))
(declare-fun arrayNoDuplicates!0 (array!32488 (_ BitVec 32) List!9832) Bool)

(assert (=> b!506166 (= res!307277 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9829))))

(declare-fun b!506167 () Bool)

(declare-fun res!307279 () Bool)

(assert (=> b!506167 (=> (not res!307279) (not e!296267))))

(assert (=> b!506167 (= res!307279 (and (= (size!15985 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15985 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15985 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506168 () Bool)

(declare-fun res!307271 () Bool)

(assert (=> b!506168 (=> (not res!307271) (not e!296267))))

(assert (=> b!506168 (= res!307271 (validKeyInArray!0 k!2280))))

(declare-fun b!506169 () Bool)

(declare-fun e!296269 () Bool)

(assert (=> b!506169 (= e!296269 true)))

(assert (=> b!506169 false))

(declare-fun b!506170 () Bool)

(assert (=> b!506170 (= e!296268 e!296269)))

(declare-fun res!307276 () Bool)

(assert (=> b!506170 (=> res!307276 e!296269)))

(declare-fun lt!231014 () Bool)

(assert (=> b!506170 (= res!307276 (or (and (not lt!231014) (undefined!4907 lt!231013)) (and (not lt!231014) (not (undefined!4907 lt!231013)))))))

(assert (=> b!506170 (= lt!231014 (not (is-Intermediate!4095 lt!231013)))))

(declare-fun b!506171 () Bool)

(assert (=> b!506171 (= e!296266 (= (seekEntryOrOpen!0 (select (arr!15621 a!3235) j!176) a!3235 mask!3524) (Found!4095 j!176)))))

(declare-fun res!307273 () Bool)

(assert (=> start!45772 (=> (not res!307273) (not e!296267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45772 (= res!307273 (validMask!0 mask!3524))))

(assert (=> start!45772 e!296267))

(assert (=> start!45772 true))

(declare-fun array_inv!11395 (array!32488) Bool)

(assert (=> start!45772 (array_inv!11395 a!3235)))

(assert (= (and start!45772 res!307273) b!506167))

(assert (= (and b!506167 res!307279) b!506164))

(assert (= (and b!506164 res!307275) b!506168))

(assert (= (and b!506168 res!307271) b!506162))

(assert (= (and b!506162 res!307272) b!506163))

(assert (= (and b!506163 res!307278) b!506165))

(assert (= (and b!506165 res!307270) b!506166))

(assert (= (and b!506166 res!307277) b!506161))

(assert (= (and b!506161 res!307280) b!506171))

(assert (= (and b!506161 (not res!307274)) b!506170))

(assert (= (and b!506170 (not res!307276)) b!506169))

(declare-fun m!486853 () Bool)

(assert (=> b!506161 m!486853))

(declare-fun m!486855 () Bool)

(assert (=> b!506161 m!486855))

(declare-fun m!486857 () Bool)

(assert (=> b!506161 m!486857))

(declare-fun m!486859 () Bool)

(assert (=> b!506161 m!486859))

(assert (=> b!506161 m!486855))

(declare-fun m!486861 () Bool)

(assert (=> b!506161 m!486861))

(declare-fun m!486863 () Bool)

(assert (=> b!506161 m!486863))

(assert (=> b!506161 m!486861))

(declare-fun m!486865 () Bool)

(assert (=> b!506161 m!486865))

(assert (=> b!506161 m!486861))

(declare-fun m!486867 () Bool)

(assert (=> b!506161 m!486867))

(assert (=> b!506161 m!486855))

(declare-fun m!486869 () Bool)

(assert (=> b!506161 m!486869))

(declare-fun m!486871 () Bool)

(assert (=> b!506166 m!486871))

(declare-fun m!486873 () Bool)

(assert (=> start!45772 m!486873))

(declare-fun m!486875 () Bool)

(assert (=> start!45772 m!486875))

(declare-fun m!486877 () Bool)

(assert (=> b!506162 m!486877))

(declare-fun m!486879 () Bool)

(assert (=> b!506163 m!486879))

(assert (=> b!506164 m!486861))

(assert (=> b!506164 m!486861))

(declare-fun m!486881 () Bool)

(assert (=> b!506164 m!486881))

(assert (=> b!506171 m!486861))

(assert (=> b!506171 m!486861))

(declare-fun m!486883 () Bool)

(assert (=> b!506171 m!486883))

(declare-fun m!486885 () Bool)

(assert (=> b!506165 m!486885))

(declare-fun m!486887 () Bool)

(assert (=> b!506168 m!486887))

(push 1)

