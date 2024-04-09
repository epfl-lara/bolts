; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65644 () Bool)

(assert start!65644)

(declare-fun b!750905 () Bool)

(declare-fun res!506998 () Bool)

(declare-fun e!418948 () Bool)

(assert (=> b!750905 (=> (not res!506998) (not e!418948))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750905 (= res!506998 (validKeyInArray!0 k!2102))))

(declare-fun b!750906 () Bool)

(declare-fun res!507002 () Bool)

(declare-fun e!418945 () Bool)

(assert (=> b!750906 (=> (not res!507002) (not e!418945))))

(declare-datatypes ((array!41770 0))(
  ( (array!41771 (arr!19995 (Array (_ BitVec 32) (_ BitVec 64))) (size!20416 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41770)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41770 (_ BitVec 32)) Bool)

(assert (=> b!750906 (= res!507002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!750907 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!418946 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7602 0))(
  ( (MissingZero!7602 (index!32775 (_ BitVec 32))) (Found!7602 (index!32776 (_ BitVec 32))) (Intermediate!7602 (undefined!8414 Bool) (index!32777 (_ BitVec 32)) (x!63729 (_ BitVec 32))) (Undefined!7602) (MissingVacant!7602 (index!32778 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41770 (_ BitVec 32)) SeekEntryResult!7602)

(assert (=> b!750907 (= e!418946 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19995 a!3186) j!159) a!3186 mask!3328) (Found!7602 j!159)))))

(declare-fun b!750908 () Bool)

(declare-fun res!507001 () Bool)

(assert (=> b!750908 (=> (not res!507001) (not e!418948))))

(assert (=> b!750908 (= res!507001 (validKeyInArray!0 (select (arr!19995 a!3186) j!159)))))

(declare-fun e!418944 () Bool)

(declare-fun b!750909 () Bool)

(assert (=> b!750909 (= e!418944 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun e!418942 () Bool)

(assert (=> b!750909 e!418942))

(declare-fun res!506992 () Bool)

(assert (=> b!750909 (=> (not res!506992) (not e!418942))))

(declare-fun lt!333948 () (_ BitVec 64))

(assert (=> b!750909 (= res!506992 (= lt!333948 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25810 0))(
  ( (Unit!25811) )
))
(declare-fun lt!333941 () Unit!25810)

(declare-fun e!418947 () Unit!25810)

(assert (=> b!750909 (= lt!333941 e!418947)))

(declare-fun c!82338 () Bool)

(assert (=> b!750909 (= c!82338 (= lt!333948 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750910 () Bool)

(declare-fun res!507006 () Bool)

(assert (=> b!750910 (=> (not res!507006) (not e!418945))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750910 (= res!507006 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20416 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20416 a!3186))))))

(declare-fun b!750911 () Bool)

(declare-fun e!418940 () Bool)

(assert (=> b!750911 (= e!418940 e!418944)))

(declare-fun res!506996 () Bool)

(assert (=> b!750911 (=> res!506996 e!418944)))

(declare-fun lt!333947 () (_ BitVec 64))

(assert (=> b!750911 (= res!506996 (= lt!333948 lt!333947))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!750911 (= lt!333948 (select (store (arr!19995 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!506994 () Bool)

(assert (=> start!65644 (=> (not res!506994) (not e!418948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65644 (= res!506994 (validMask!0 mask!3328))))

(assert (=> start!65644 e!418948))

(assert (=> start!65644 true))

(declare-fun array_inv!15769 (array!41770) Bool)

(assert (=> start!65644 (array_inv!15769 a!3186)))

(declare-fun b!750912 () Bool)

(declare-fun e!418949 () Bool)

(declare-fun e!418950 () Bool)

(assert (=> b!750912 (= e!418949 e!418950)))

(declare-fun res!507008 () Bool)

(assert (=> b!750912 (=> (not res!507008) (not e!418950))))

(declare-fun lt!333945 () SeekEntryResult!7602)

(declare-fun lt!333943 () SeekEntryResult!7602)

(assert (=> b!750912 (= res!507008 (= lt!333945 lt!333943))))

(declare-fun lt!333944 () array!41770)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41770 (_ BitVec 32)) SeekEntryResult!7602)

(assert (=> b!750912 (= lt!333943 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333947 lt!333944 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750912 (= lt!333945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333947 mask!3328) lt!333947 lt!333944 mask!3328))))

(assert (=> b!750912 (= lt!333947 (select (store (arr!19995 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750912 (= lt!333944 (array!41771 (store (arr!19995 a!3186) i!1173 k!2102) (size!20416 a!3186)))))

(declare-fun b!750913 () Bool)

(assert (=> b!750913 (= e!418945 e!418949)))

(declare-fun res!507007 () Bool)

(assert (=> b!750913 (=> (not res!507007) (not e!418949))))

(declare-fun lt!333949 () SeekEntryResult!7602)

(assert (=> b!750913 (= res!507007 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19995 a!3186) j!159) mask!3328) (select (arr!19995 a!3186) j!159) a!3186 mask!3328) lt!333949))))

(assert (=> b!750913 (= lt!333949 (Intermediate!7602 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750914 () Bool)

(assert (=> b!750914 (= e!418948 e!418945)))

(declare-fun res!507003 () Bool)

(assert (=> b!750914 (=> (not res!507003) (not e!418945))))

(declare-fun lt!333942 () SeekEntryResult!7602)

(assert (=> b!750914 (= res!507003 (or (= lt!333942 (MissingZero!7602 i!1173)) (= lt!333942 (MissingVacant!7602 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41770 (_ BitVec 32)) SeekEntryResult!7602)

(assert (=> b!750914 (= lt!333942 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!750915 () Bool)

(declare-fun Unit!25812 () Unit!25810)

(assert (=> b!750915 (= e!418947 Unit!25812)))

(declare-fun b!750916 () Bool)

(declare-fun res!506995 () Bool)

(assert (=> b!750916 (=> (not res!506995) (not e!418948))))

(assert (=> b!750916 (= res!506995 (and (= (size!20416 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20416 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20416 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750917 () Bool)

(declare-fun res!506999 () Bool)

(assert (=> b!750917 (=> res!506999 e!418940)))

(declare-fun lt!333946 () SeekEntryResult!7602)

(assert (=> b!750917 (= res!506999 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19995 a!3186) j!159) a!3186 mask!3328) lt!333946)))))

(declare-fun b!750918 () Bool)

(declare-fun res!507009 () Bool)

(assert (=> b!750918 (=> (not res!507009) (not e!418945))))

(declare-datatypes ((List!14050 0))(
  ( (Nil!14047) (Cons!14046 (h!15118 (_ BitVec 64)) (t!20373 List!14050)) )
))
(declare-fun arrayNoDuplicates!0 (array!41770 (_ BitVec 32) List!14050) Bool)

(assert (=> b!750918 (= res!507009 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14047))))

(declare-fun b!750919 () Bool)

(assert (=> b!750919 (= e!418946 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19995 a!3186) j!159) a!3186 mask!3328) lt!333949))))

(declare-fun b!750920 () Bool)

(assert (=> b!750920 (= e!418950 (not e!418940))))

(declare-fun res!506993 () Bool)

(assert (=> b!750920 (=> res!506993 e!418940)))

(assert (=> b!750920 (= res!506993 (or (not (is-Intermediate!7602 lt!333943)) (bvslt x!1131 (x!63729 lt!333943)) (not (= x!1131 (x!63729 lt!333943))) (not (= index!1321 (index!32777 lt!333943)))))))

(declare-fun e!418941 () Bool)

(assert (=> b!750920 e!418941))

(declare-fun res!507005 () Bool)

(assert (=> b!750920 (=> (not res!507005) (not e!418941))))

(declare-fun lt!333940 () SeekEntryResult!7602)

(assert (=> b!750920 (= res!507005 (= lt!333940 lt!333946))))

(assert (=> b!750920 (= lt!333946 (Found!7602 j!159))))

(assert (=> b!750920 (= lt!333940 (seekEntryOrOpen!0 (select (arr!19995 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!750920 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333950 () Unit!25810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41770 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25810)

(assert (=> b!750920 (= lt!333950 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750921 () Bool)

(declare-fun res!507000 () Bool)

(assert (=> b!750921 (=> (not res!507000) (not e!418948))))

(declare-fun arrayContainsKey!0 (array!41770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750921 (= res!507000 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750922 () Bool)

(declare-fun res!506997 () Bool)

(assert (=> b!750922 (=> (not res!506997) (not e!418949))))

(assert (=> b!750922 (= res!506997 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19995 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750923 () Bool)

(declare-fun Unit!25813 () Unit!25810)

(assert (=> b!750923 (= e!418947 Unit!25813)))

(assert (=> b!750923 false))

(declare-fun b!750924 () Bool)

(assert (=> b!750924 (= e!418942 (= (seekEntryOrOpen!0 lt!333947 lt!333944 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333947 lt!333944 mask!3328)))))

(declare-fun b!750925 () Bool)

(assert (=> b!750925 (= e!418941 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19995 a!3186) j!159) a!3186 mask!3328) lt!333946))))

(declare-fun b!750926 () Bool)

(declare-fun res!507004 () Bool)

(assert (=> b!750926 (=> (not res!507004) (not e!418949))))

(assert (=> b!750926 (= res!507004 e!418946)))

(declare-fun c!82337 () Bool)

(assert (=> b!750926 (= c!82337 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65644 res!506994) b!750916))

(assert (= (and b!750916 res!506995) b!750908))

(assert (= (and b!750908 res!507001) b!750905))

(assert (= (and b!750905 res!506998) b!750921))

(assert (= (and b!750921 res!507000) b!750914))

(assert (= (and b!750914 res!507003) b!750906))

(assert (= (and b!750906 res!507002) b!750918))

(assert (= (and b!750918 res!507009) b!750910))

(assert (= (and b!750910 res!507006) b!750913))

(assert (= (and b!750913 res!507007) b!750922))

(assert (= (and b!750922 res!506997) b!750926))

(assert (= (and b!750926 c!82337) b!750919))

(assert (= (and b!750926 (not c!82337)) b!750907))

(assert (= (and b!750926 res!507004) b!750912))

(assert (= (and b!750912 res!507008) b!750920))

(assert (= (and b!750920 res!507005) b!750925))

(assert (= (and b!750920 (not res!506993)) b!750917))

(assert (= (and b!750917 (not res!506999)) b!750911))

(assert (= (and b!750911 (not res!506996)) b!750909))

(assert (= (and b!750909 c!82338) b!750923))

(assert (= (and b!750909 (not c!82338)) b!750915))

(assert (= (and b!750909 res!506992) b!750924))

(declare-fun m!700273 () Bool)

(assert (=> b!750911 m!700273))

(declare-fun m!700275 () Bool)

(assert (=> b!750911 m!700275))

(declare-fun m!700277 () Bool)

(assert (=> b!750919 m!700277))

(assert (=> b!750919 m!700277))

(declare-fun m!700279 () Bool)

(assert (=> b!750919 m!700279))

(declare-fun m!700281 () Bool)

(assert (=> b!750921 m!700281))

(declare-fun m!700283 () Bool)

(assert (=> b!750918 m!700283))

(declare-fun m!700285 () Bool)

(assert (=> b!750905 m!700285))

(assert (=> b!750907 m!700277))

(assert (=> b!750907 m!700277))

(declare-fun m!700287 () Bool)

(assert (=> b!750907 m!700287))

(assert (=> b!750917 m!700277))

(assert (=> b!750917 m!700277))

(assert (=> b!750917 m!700287))

(assert (=> b!750908 m!700277))

(assert (=> b!750908 m!700277))

(declare-fun m!700289 () Bool)

(assert (=> b!750908 m!700289))

(declare-fun m!700291 () Bool)

(assert (=> b!750906 m!700291))

(declare-fun m!700293 () Bool)

(assert (=> b!750912 m!700293))

(declare-fun m!700295 () Bool)

(assert (=> b!750912 m!700295))

(assert (=> b!750912 m!700273))

(declare-fun m!700297 () Bool)

(assert (=> b!750912 m!700297))

(assert (=> b!750912 m!700295))

(declare-fun m!700299 () Bool)

(assert (=> b!750912 m!700299))

(declare-fun m!700301 () Bool)

(assert (=> b!750924 m!700301))

(declare-fun m!700303 () Bool)

(assert (=> b!750924 m!700303))

(declare-fun m!700305 () Bool)

(assert (=> start!65644 m!700305))

(declare-fun m!700307 () Bool)

(assert (=> start!65644 m!700307))

(declare-fun m!700309 () Bool)

(assert (=> b!750922 m!700309))

(assert (=> b!750920 m!700277))

(assert (=> b!750920 m!700277))

(declare-fun m!700311 () Bool)

(assert (=> b!750920 m!700311))

(declare-fun m!700313 () Bool)

(assert (=> b!750920 m!700313))

(declare-fun m!700315 () Bool)

(assert (=> b!750920 m!700315))

(assert (=> b!750925 m!700277))

(assert (=> b!750925 m!700277))

(declare-fun m!700317 () Bool)

(assert (=> b!750925 m!700317))

(declare-fun m!700319 () Bool)

(assert (=> b!750914 m!700319))

(assert (=> b!750913 m!700277))

(assert (=> b!750913 m!700277))

(declare-fun m!700321 () Bool)

(assert (=> b!750913 m!700321))

(assert (=> b!750913 m!700321))

(assert (=> b!750913 m!700277))

(declare-fun m!700323 () Bool)

(assert (=> b!750913 m!700323))

(push 1)

(assert (not b!750912))

(assert (not b!750908))

(assert (not b!750925))

(assert (not b!750905))

(assert (not b!750914))

(assert (not b!750920))

(assert (not b!750906))

(assert (not b!750918))

(assert (not b!750913))

(assert (not b!750907))

(assert (not b!750921))

(assert (not b!750919))

(assert (not start!65644))

(assert (not b!750924))

(assert (not b!750917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

