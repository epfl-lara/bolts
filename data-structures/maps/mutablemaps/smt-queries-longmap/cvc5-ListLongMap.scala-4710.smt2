; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65338 () Bool)

(assert start!65338)

(declare-fun b!741823 () Bool)

(declare-fun res!499217 () Bool)

(declare-fun e!414645 () Bool)

(assert (=> b!741823 (=> (not res!499217) (not e!414645))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41464 0))(
  ( (array!41465 (arr!19842 (Array (_ BitVec 32) (_ BitVec 64))) (size!20263 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41464)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741823 (= res!499217 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19842 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741824 () Bool)

(declare-fun e!414643 () Bool)

(assert (=> b!741824 (= e!414643 (not true))))

(declare-fun e!414642 () Bool)

(assert (=> b!741824 e!414642))

(declare-fun res!499210 () Bool)

(assert (=> b!741824 (=> (not res!499210) (not e!414642))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41464 (_ BitVec 32)) Bool)

(assert (=> b!741824 (= res!499210 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25378 0))(
  ( (Unit!25379) )
))
(declare-fun lt!329583 () Unit!25378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41464 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25378)

(assert (=> b!741824 (= lt!329583 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741825 () Bool)

(declare-fun e!414646 () Bool)

(assert (=> b!741825 (= e!414642 e!414646)))

(declare-fun res!499224 () Bool)

(assert (=> b!741825 (=> (not res!499224) (not e!414646))))

(declare-datatypes ((SeekEntryResult!7449 0))(
  ( (MissingZero!7449 (index!32163 (_ BitVec 32))) (Found!7449 (index!32164 (_ BitVec 32))) (Intermediate!7449 (undefined!8261 Bool) (index!32165 (_ BitVec 32)) (x!63168 (_ BitVec 32))) (Undefined!7449) (MissingVacant!7449 (index!32166 (_ BitVec 32))) )
))
(declare-fun lt!329584 () SeekEntryResult!7449)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41464 (_ BitVec 32)) SeekEntryResult!7449)

(assert (=> b!741825 (= res!499224 (= (seekEntryOrOpen!0 (select (arr!19842 a!3186) j!159) a!3186 mask!3328) lt!329584))))

(assert (=> b!741825 (= lt!329584 (Found!7449 j!159))))

(declare-fun b!741826 () Bool)

(declare-fun e!414644 () Bool)

(declare-fun e!414647 () Bool)

(assert (=> b!741826 (= e!414644 e!414647)))

(declare-fun res!499216 () Bool)

(assert (=> b!741826 (=> (not res!499216) (not e!414647))))

(declare-fun lt!329588 () SeekEntryResult!7449)

(assert (=> b!741826 (= res!499216 (or (= lt!329588 (MissingZero!7449 i!1173)) (= lt!329588 (MissingVacant!7449 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!741826 (= lt!329588 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741827 () Bool)

(declare-fun res!499223 () Bool)

(assert (=> b!741827 (=> (not res!499223) (not e!414644))))

(declare-fun arrayContainsKey!0 (array!41464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741827 (= res!499223 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741829 () Bool)

(declare-fun res!499220 () Bool)

(assert (=> b!741829 (=> (not res!499220) (not e!414647))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741829 (= res!499220 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20263 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20263 a!3186))))))

(declare-fun b!741830 () Bool)

(assert (=> b!741830 (= e!414647 e!414645)))

(declare-fun res!499222 () Bool)

(assert (=> b!741830 (=> (not res!499222) (not e!414645))))

(declare-fun lt!329586 () SeekEntryResult!7449)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41464 (_ BitVec 32)) SeekEntryResult!7449)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741830 (= res!499222 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19842 a!3186) j!159) mask!3328) (select (arr!19842 a!3186) j!159) a!3186 mask!3328) lt!329586))))

(assert (=> b!741830 (= lt!329586 (Intermediate!7449 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741831 () Bool)

(declare-fun res!499212 () Bool)

(assert (=> b!741831 (=> (not res!499212) (not e!414644))))

(assert (=> b!741831 (= res!499212 (and (= (size!20263 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20263 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20263 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741832 () Bool)

(declare-fun res!499211 () Bool)

(assert (=> b!741832 (=> (not res!499211) (not e!414645))))

(declare-fun e!414641 () Bool)

(assert (=> b!741832 (= res!499211 e!414641)))

(declare-fun c!81687 () Bool)

(assert (=> b!741832 (= c!81687 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741833 () Bool)

(assert (=> b!741833 (= e!414645 e!414643)))

(declare-fun res!499215 () Bool)

(assert (=> b!741833 (=> (not res!499215) (not e!414643))))

(declare-fun lt!329585 () (_ BitVec 64))

(declare-fun lt!329587 () array!41464)

(assert (=> b!741833 (= res!499215 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329585 mask!3328) lt!329585 lt!329587 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329585 lt!329587 mask!3328)))))

(assert (=> b!741833 (= lt!329585 (select (store (arr!19842 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741833 (= lt!329587 (array!41465 (store (arr!19842 a!3186) i!1173 k!2102) (size!20263 a!3186)))))

(declare-fun b!741834 () Bool)

(assert (=> b!741834 (= e!414641 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19842 a!3186) j!159) a!3186 mask!3328) lt!329586))))

(declare-fun b!741835 () Bool)

(declare-fun res!499218 () Bool)

(assert (=> b!741835 (=> (not res!499218) (not e!414647))))

(declare-datatypes ((List!13897 0))(
  ( (Nil!13894) (Cons!13893 (h!14965 (_ BitVec 64)) (t!20220 List!13897)) )
))
(declare-fun arrayNoDuplicates!0 (array!41464 (_ BitVec 32) List!13897) Bool)

(assert (=> b!741835 (= res!499218 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13894))))

(declare-fun b!741836 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41464 (_ BitVec 32)) SeekEntryResult!7449)

(assert (=> b!741836 (= e!414641 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19842 a!3186) j!159) a!3186 mask!3328) (Found!7449 j!159)))))

(declare-fun b!741837 () Bool)

(declare-fun res!499213 () Bool)

(assert (=> b!741837 (=> (not res!499213) (not e!414644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741837 (= res!499213 (validKeyInArray!0 (select (arr!19842 a!3186) j!159)))))

(declare-fun b!741838 () Bool)

(declare-fun res!499214 () Bool)

(assert (=> b!741838 (=> (not res!499214) (not e!414644))))

(assert (=> b!741838 (= res!499214 (validKeyInArray!0 k!2102))))

(declare-fun b!741839 () Bool)

(assert (=> b!741839 (= e!414646 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19842 a!3186) j!159) a!3186 mask!3328) lt!329584))))

(declare-fun res!499221 () Bool)

(assert (=> start!65338 (=> (not res!499221) (not e!414644))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65338 (= res!499221 (validMask!0 mask!3328))))

(assert (=> start!65338 e!414644))

(assert (=> start!65338 true))

(declare-fun array_inv!15616 (array!41464) Bool)

(assert (=> start!65338 (array_inv!15616 a!3186)))

(declare-fun b!741828 () Bool)

(declare-fun res!499219 () Bool)

(assert (=> b!741828 (=> (not res!499219) (not e!414647))))

(assert (=> b!741828 (= res!499219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65338 res!499221) b!741831))

(assert (= (and b!741831 res!499212) b!741837))

(assert (= (and b!741837 res!499213) b!741838))

(assert (= (and b!741838 res!499214) b!741827))

(assert (= (and b!741827 res!499223) b!741826))

(assert (= (and b!741826 res!499216) b!741828))

(assert (= (and b!741828 res!499219) b!741835))

(assert (= (and b!741835 res!499218) b!741829))

(assert (= (and b!741829 res!499220) b!741830))

(assert (= (and b!741830 res!499222) b!741823))

(assert (= (and b!741823 res!499217) b!741832))

(assert (= (and b!741832 c!81687) b!741834))

(assert (= (and b!741832 (not c!81687)) b!741836))

(assert (= (and b!741832 res!499211) b!741833))

(assert (= (and b!741833 res!499215) b!741824))

(assert (= (and b!741824 res!499210) b!741825))

(assert (= (and b!741825 res!499224) b!741839))

(declare-fun m!692845 () Bool)

(assert (=> start!65338 m!692845))

(declare-fun m!692847 () Bool)

(assert (=> start!65338 m!692847))

(declare-fun m!692849 () Bool)

(assert (=> b!741835 m!692849))

(declare-fun m!692851 () Bool)

(assert (=> b!741825 m!692851))

(assert (=> b!741825 m!692851))

(declare-fun m!692853 () Bool)

(assert (=> b!741825 m!692853))

(declare-fun m!692855 () Bool)

(assert (=> b!741824 m!692855))

(declare-fun m!692857 () Bool)

(assert (=> b!741824 m!692857))

(assert (=> b!741834 m!692851))

(assert (=> b!741834 m!692851))

(declare-fun m!692859 () Bool)

(assert (=> b!741834 m!692859))

(assert (=> b!741839 m!692851))

(assert (=> b!741839 m!692851))

(declare-fun m!692861 () Bool)

(assert (=> b!741839 m!692861))

(assert (=> b!741837 m!692851))

(assert (=> b!741837 m!692851))

(declare-fun m!692863 () Bool)

(assert (=> b!741837 m!692863))

(declare-fun m!692865 () Bool)

(assert (=> b!741827 m!692865))

(declare-fun m!692867 () Bool)

(assert (=> b!741838 m!692867))

(declare-fun m!692869 () Bool)

(assert (=> b!741833 m!692869))

(declare-fun m!692871 () Bool)

(assert (=> b!741833 m!692871))

(declare-fun m!692873 () Bool)

(assert (=> b!741833 m!692873))

(declare-fun m!692875 () Bool)

(assert (=> b!741833 m!692875))

(declare-fun m!692877 () Bool)

(assert (=> b!741833 m!692877))

(assert (=> b!741833 m!692871))

(assert (=> b!741836 m!692851))

(assert (=> b!741836 m!692851))

(declare-fun m!692879 () Bool)

(assert (=> b!741836 m!692879))

(declare-fun m!692881 () Bool)

(assert (=> b!741823 m!692881))

(declare-fun m!692883 () Bool)

(assert (=> b!741826 m!692883))

(declare-fun m!692885 () Bool)

(assert (=> b!741828 m!692885))

(assert (=> b!741830 m!692851))

(assert (=> b!741830 m!692851))

(declare-fun m!692887 () Bool)

(assert (=> b!741830 m!692887))

(assert (=> b!741830 m!692887))

(assert (=> b!741830 m!692851))

(declare-fun m!692889 () Bool)

(assert (=> b!741830 m!692889))

(push 1)

