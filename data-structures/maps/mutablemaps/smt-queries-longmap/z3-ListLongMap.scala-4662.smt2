; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64764 () Bool)

(assert start!64764)

(declare-fun b!730789 () Bool)

(declare-fun e!408960 () Bool)

(declare-fun e!408965 () Bool)

(assert (=> b!730789 (= e!408960 (not e!408965))))

(declare-fun res!491187 () Bool)

(assert (=> b!730789 (=> res!491187 e!408965)))

(declare-datatypes ((SeekEntryResult!7306 0))(
  ( (MissingZero!7306 (index!31591 (_ BitVec 32))) (Found!7306 (index!31592 (_ BitVec 32))) (Intermediate!7306 (undefined!8118 Bool) (index!31593 (_ BitVec 32)) (x!62593 (_ BitVec 32))) (Undefined!7306) (MissingVacant!7306 (index!31594 (_ BitVec 32))) )
))
(declare-fun lt!323866 () SeekEntryResult!7306)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!730789 (= res!491187 (or (not ((_ is Intermediate!7306) lt!323866)) (bvsge x!1131 (x!62593 lt!323866))))))

(declare-fun e!408962 () Bool)

(assert (=> b!730789 e!408962))

(declare-fun res!491177 () Bool)

(assert (=> b!730789 (=> (not res!491177) (not e!408962))))

(declare-datatypes ((array!41166 0))(
  ( (array!41167 (arr!19699 (Array (_ BitVec 32) (_ BitVec 64))) (size!20120 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41166)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41166 (_ BitVec 32)) Bool)

(assert (=> b!730789 (= res!491177 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24930 0))(
  ( (Unit!24931) )
))
(declare-fun lt!323864 () Unit!24930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41166 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24930)

(assert (=> b!730789 (= lt!323864 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730790 () Bool)

(declare-fun res!491185 () Bool)

(declare-fun e!408968 () Bool)

(assert (=> b!730790 (=> (not res!491185) (not e!408968))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730790 (= res!491185 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19699 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730791 () Bool)

(declare-fun res!491186 () Bool)

(declare-fun e!408963 () Bool)

(assert (=> b!730791 (=> res!491186 e!408963)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41166 (_ BitVec 32)) SeekEntryResult!7306)

(assert (=> b!730791 (= res!491186 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19699 a!3186) j!159) a!3186 mask!3328) (Found!7306 j!159))))))

(declare-fun b!730792 () Bool)

(declare-fun e!408961 () Bool)

(assert (=> b!730792 (= e!408961 e!408968)))

(declare-fun res!491174 () Bool)

(assert (=> b!730792 (=> (not res!491174) (not e!408968))))

(declare-fun lt!323863 () SeekEntryResult!7306)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41166 (_ BitVec 32)) SeekEntryResult!7306)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730792 (= res!491174 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19699 a!3186) j!159) mask!3328) (select (arr!19699 a!3186) j!159) a!3186 mask!3328) lt!323863))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730792 (= lt!323863 (Intermediate!7306 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!491182 () Bool)

(declare-fun e!408964 () Bool)

(assert (=> start!64764 (=> (not res!491182) (not e!408964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64764 (= res!491182 (validMask!0 mask!3328))))

(assert (=> start!64764 e!408964))

(assert (=> start!64764 true))

(declare-fun array_inv!15473 (array!41166) Bool)

(assert (=> start!64764 (array_inv!15473 a!3186)))

(declare-fun b!730793 () Bool)

(declare-fun res!491184 () Bool)

(assert (=> b!730793 (=> (not res!491184) (not e!408961))))

(assert (=> b!730793 (= res!491184 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20120 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20120 a!3186))))))

(declare-fun b!730794 () Bool)

(declare-fun res!491175 () Bool)

(assert (=> b!730794 (=> (not res!491175) (not e!408964))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730794 (= res!491175 (validKeyInArray!0 k0!2102))))

(declare-fun b!730795 () Bool)

(declare-fun lt!323865 () SeekEntryResult!7306)

(declare-fun e!408967 () Bool)

(assert (=> b!730795 (= e!408967 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19699 a!3186) j!159) a!3186 mask!3328) lt!323865))))

(declare-fun e!408966 () Bool)

(declare-fun b!730796 () Bool)

(assert (=> b!730796 (= e!408966 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19699 a!3186) j!159) a!3186 mask!3328) (Found!7306 j!159)))))

(declare-fun b!730797 () Bool)

(assert (=> b!730797 (= e!408962 e!408967)))

(declare-fun res!491171 () Bool)

(assert (=> b!730797 (=> (not res!491171) (not e!408967))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41166 (_ BitVec 32)) SeekEntryResult!7306)

(assert (=> b!730797 (= res!491171 (= (seekEntryOrOpen!0 (select (arr!19699 a!3186) j!159) a!3186 mask!3328) lt!323865))))

(assert (=> b!730797 (= lt!323865 (Found!7306 j!159))))

(declare-fun b!730798 () Bool)

(assert (=> b!730798 (= e!408966 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19699 a!3186) j!159) a!3186 mask!3328) lt!323863))))

(declare-fun b!730799 () Bool)

(assert (=> b!730799 (= e!408968 e!408960)))

(declare-fun res!491180 () Bool)

(assert (=> b!730799 (=> (not res!491180) (not e!408960))))

(declare-fun lt!323869 () SeekEntryResult!7306)

(assert (=> b!730799 (= res!491180 (= lt!323869 lt!323866))))

(declare-fun lt!323867 () array!41166)

(declare-fun lt!323870 () (_ BitVec 64))

(assert (=> b!730799 (= lt!323866 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323870 lt!323867 mask!3328))))

(assert (=> b!730799 (= lt!323869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323870 mask!3328) lt!323870 lt!323867 mask!3328))))

(assert (=> b!730799 (= lt!323870 (select (store (arr!19699 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!730799 (= lt!323867 (array!41167 (store (arr!19699 a!3186) i!1173 k0!2102) (size!20120 a!3186)))))

(declare-fun b!730800 () Bool)

(assert (=> b!730800 (= e!408963 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun b!730801 () Bool)

(declare-fun res!491183 () Bool)

(assert (=> b!730801 (=> (not res!491183) (not e!408961))))

(assert (=> b!730801 (= res!491183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730802 () Bool)

(declare-fun res!491170 () Bool)

(assert (=> b!730802 (=> (not res!491170) (not e!408968))))

(assert (=> b!730802 (= res!491170 e!408966)))

(declare-fun c!80184 () Bool)

(assert (=> b!730802 (= c!80184 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730803 () Bool)

(declare-fun res!491172 () Bool)

(assert (=> b!730803 (=> (not res!491172) (not e!408961))))

(declare-datatypes ((List!13754 0))(
  ( (Nil!13751) (Cons!13750 (h!14810 (_ BitVec 64)) (t!20077 List!13754)) )
))
(declare-fun arrayNoDuplicates!0 (array!41166 (_ BitVec 32) List!13754) Bool)

(assert (=> b!730803 (= res!491172 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13751))))

(declare-fun b!730804 () Bool)

(declare-fun res!491178 () Bool)

(assert (=> b!730804 (=> (not res!491178) (not e!408964))))

(assert (=> b!730804 (= res!491178 (and (= (size!20120 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20120 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20120 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730805 () Bool)

(assert (=> b!730805 (= e!408965 e!408963)))

(declare-fun res!491179 () Bool)

(assert (=> b!730805 (=> res!491179 e!408963)))

(assert (=> b!730805 (= res!491179 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!323868 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730805 (= lt!323868 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730806 () Bool)

(assert (=> b!730806 (= e!408964 e!408961)))

(declare-fun res!491176 () Bool)

(assert (=> b!730806 (=> (not res!491176) (not e!408961))))

(declare-fun lt!323862 () SeekEntryResult!7306)

(assert (=> b!730806 (= res!491176 (or (= lt!323862 (MissingZero!7306 i!1173)) (= lt!323862 (MissingVacant!7306 i!1173))))))

(assert (=> b!730806 (= lt!323862 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!730807 () Bool)

(declare-fun res!491173 () Bool)

(assert (=> b!730807 (=> (not res!491173) (not e!408964))))

(assert (=> b!730807 (= res!491173 (validKeyInArray!0 (select (arr!19699 a!3186) j!159)))))

(declare-fun b!730808 () Bool)

(declare-fun res!491181 () Bool)

(assert (=> b!730808 (=> (not res!491181) (not e!408964))))

(declare-fun arrayContainsKey!0 (array!41166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730808 (= res!491181 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64764 res!491182) b!730804))

(assert (= (and b!730804 res!491178) b!730807))

(assert (= (and b!730807 res!491173) b!730794))

(assert (= (and b!730794 res!491175) b!730808))

(assert (= (and b!730808 res!491181) b!730806))

(assert (= (and b!730806 res!491176) b!730801))

(assert (= (and b!730801 res!491183) b!730803))

(assert (= (and b!730803 res!491172) b!730793))

(assert (= (and b!730793 res!491184) b!730792))

(assert (= (and b!730792 res!491174) b!730790))

(assert (= (and b!730790 res!491185) b!730802))

(assert (= (and b!730802 c!80184) b!730798))

(assert (= (and b!730802 (not c!80184)) b!730796))

(assert (= (and b!730802 res!491170) b!730799))

(assert (= (and b!730799 res!491180) b!730789))

(assert (= (and b!730789 res!491177) b!730797))

(assert (= (and b!730797 res!491171) b!730795))

(assert (= (and b!730789 (not res!491187)) b!730805))

(assert (= (and b!730805 (not res!491179)) b!730791))

(assert (= (and b!730791 (not res!491186)) b!730800))

(declare-fun m!684349 () Bool)

(assert (=> b!730794 m!684349))

(declare-fun m!684351 () Bool)

(assert (=> b!730792 m!684351))

(assert (=> b!730792 m!684351))

(declare-fun m!684353 () Bool)

(assert (=> b!730792 m!684353))

(assert (=> b!730792 m!684353))

(assert (=> b!730792 m!684351))

(declare-fun m!684355 () Bool)

(assert (=> b!730792 m!684355))

(assert (=> b!730796 m!684351))

(assert (=> b!730796 m!684351))

(declare-fun m!684357 () Bool)

(assert (=> b!730796 m!684357))

(assert (=> b!730798 m!684351))

(assert (=> b!730798 m!684351))

(declare-fun m!684359 () Bool)

(assert (=> b!730798 m!684359))

(declare-fun m!684361 () Bool)

(assert (=> start!64764 m!684361))

(declare-fun m!684363 () Bool)

(assert (=> start!64764 m!684363))

(declare-fun m!684365 () Bool)

(assert (=> b!730790 m!684365))

(declare-fun m!684367 () Bool)

(assert (=> b!730799 m!684367))

(declare-fun m!684369 () Bool)

(assert (=> b!730799 m!684369))

(declare-fun m!684371 () Bool)

(assert (=> b!730799 m!684371))

(declare-fun m!684373 () Bool)

(assert (=> b!730799 m!684373))

(assert (=> b!730799 m!684369))

(declare-fun m!684375 () Bool)

(assert (=> b!730799 m!684375))

(declare-fun m!684377 () Bool)

(assert (=> b!730805 m!684377))

(declare-fun m!684379 () Bool)

(assert (=> b!730808 m!684379))

(assert (=> b!730797 m!684351))

(assert (=> b!730797 m!684351))

(declare-fun m!684381 () Bool)

(assert (=> b!730797 m!684381))

(assert (=> b!730795 m!684351))

(assert (=> b!730795 m!684351))

(declare-fun m!684383 () Bool)

(assert (=> b!730795 m!684383))

(assert (=> b!730807 m!684351))

(assert (=> b!730807 m!684351))

(declare-fun m!684385 () Bool)

(assert (=> b!730807 m!684385))

(declare-fun m!684387 () Bool)

(assert (=> b!730801 m!684387))

(declare-fun m!684389 () Bool)

(assert (=> b!730803 m!684389))

(assert (=> b!730791 m!684351))

(assert (=> b!730791 m!684351))

(assert (=> b!730791 m!684357))

(declare-fun m!684391 () Bool)

(assert (=> b!730789 m!684391))

(declare-fun m!684393 () Bool)

(assert (=> b!730789 m!684393))

(declare-fun m!684395 () Bool)

(assert (=> b!730806 m!684395))

(check-sat (not b!730799) (not b!730792) (not b!730797) (not b!730796) (not start!64764) (not b!730803) (not b!730798) (not b!730806) (not b!730789) (not b!730794) (not b!730795) (not b!730807) (not b!730808) (not b!730805) (not b!730801) (not b!730791))
(check-sat)
