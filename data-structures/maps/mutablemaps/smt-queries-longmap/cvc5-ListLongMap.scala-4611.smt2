; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64318 () Bool)

(assert start!64318)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40852 0))(
  ( (array!40853 (arr!19545 (Array (_ BitVec 32) (_ BitVec 64))) (size!19966 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40852)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!404837 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!722173 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7152 0))(
  ( (MissingZero!7152 (index!30975 (_ BitVec 32))) (Found!7152 (index!30976 (_ BitVec 32))) (Intermediate!7152 (undefined!7964 Bool) (index!30977 (_ BitVec 32)) (x!62010 (_ BitVec 32))) (Undefined!7152) (MissingVacant!7152 (index!30978 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40852 (_ BitVec 32)) SeekEntryResult!7152)

(assert (=> b!722173 (= e!404837 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19545 a!3186) j!159) a!3186 mask!3328) (Found!7152 j!159)))))

(declare-fun lt!320213 () SeekEntryResult!7152)

(declare-fun b!722174 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40852 (_ BitVec 32)) SeekEntryResult!7152)

(assert (=> b!722174 (= e!404837 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19545 a!3186) j!159) a!3186 mask!3328) lt!320213))))

(declare-fun b!722175 () Bool)

(declare-fun res!484042 () Bool)

(declare-fun e!404835 () Bool)

(assert (=> b!722175 (=> (not res!484042) (not e!404835))))

(assert (=> b!722175 (= res!484042 (and (bvsge mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun b!722176 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722176 (= e!404835 (not (validKeyInArray!0 (select (store (arr!19545 a!3186) i!1173 k!2102) j!159))))))

(declare-fun b!722177 () Bool)

(declare-fun res!484044 () Bool)

(declare-fun e!404836 () Bool)

(assert (=> b!722177 (=> (not res!484044) (not e!404836))))

(assert (=> b!722177 (= res!484044 (validKeyInArray!0 k!2102))))

(declare-fun b!722178 () Bool)

(declare-fun res!484046 () Bool)

(assert (=> b!722178 (=> (not res!484046) (not e!404835))))

(assert (=> b!722178 (= res!484046 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19545 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722172 () Bool)

(declare-fun res!484043 () Bool)

(declare-fun e!404834 () Bool)

(assert (=> b!722172 (=> (not res!484043) (not e!404834))))

(declare-datatypes ((List!13600 0))(
  ( (Nil!13597) (Cons!13596 (h!14650 (_ BitVec 64)) (t!19923 List!13600)) )
))
(declare-fun arrayNoDuplicates!0 (array!40852 (_ BitVec 32) List!13600) Bool)

(assert (=> b!722172 (= res!484043 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13597))))

(declare-fun res!484051 () Bool)

(assert (=> start!64318 (=> (not res!484051) (not e!404836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64318 (= res!484051 (validMask!0 mask!3328))))

(assert (=> start!64318 e!404836))

(assert (=> start!64318 true))

(declare-fun array_inv!15319 (array!40852) Bool)

(assert (=> start!64318 (array_inv!15319 a!3186)))

(declare-fun b!722179 () Bool)

(declare-fun res!484052 () Bool)

(assert (=> b!722179 (=> (not res!484052) (not e!404836))))

(assert (=> b!722179 (= res!484052 (validKeyInArray!0 (select (arr!19545 a!3186) j!159)))))

(declare-fun b!722180 () Bool)

(declare-fun res!484048 () Bool)

(assert (=> b!722180 (=> (not res!484048) (not e!404835))))

(assert (=> b!722180 (= res!484048 e!404837)))

(declare-fun c!79437 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722180 (= c!79437 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722181 () Bool)

(declare-fun res!484050 () Bool)

(assert (=> b!722181 (=> (not res!484050) (not e!404834))))

(assert (=> b!722181 (= res!484050 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19966 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19966 a!3186))))))

(declare-fun b!722182 () Bool)

(declare-fun res!484045 () Bool)

(assert (=> b!722182 (=> (not res!484045) (not e!404836))))

(declare-fun arrayContainsKey!0 (array!40852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722182 (= res!484045 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722183 () Bool)

(assert (=> b!722183 (= e!404834 e!404835)))

(declare-fun res!484041 () Bool)

(assert (=> b!722183 (=> (not res!484041) (not e!404835))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722183 (= res!484041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19545 a!3186) j!159) mask!3328) (select (arr!19545 a!3186) j!159) a!3186 mask!3328) lt!320213))))

(assert (=> b!722183 (= lt!320213 (Intermediate!7152 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722184 () Bool)

(declare-fun res!484053 () Bool)

(assert (=> b!722184 (=> (not res!484053) (not e!404834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40852 (_ BitVec 32)) Bool)

(assert (=> b!722184 (= res!484053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722185 () Bool)

(assert (=> b!722185 (= e!404836 e!404834)))

(declare-fun res!484049 () Bool)

(assert (=> b!722185 (=> (not res!484049) (not e!404834))))

(declare-fun lt!320212 () SeekEntryResult!7152)

(assert (=> b!722185 (= res!484049 (or (= lt!320212 (MissingZero!7152 i!1173)) (= lt!320212 (MissingVacant!7152 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40852 (_ BitVec 32)) SeekEntryResult!7152)

(assert (=> b!722185 (= lt!320212 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722186 () Bool)

(declare-fun res!484047 () Bool)

(assert (=> b!722186 (=> (not res!484047) (not e!404836))))

(assert (=> b!722186 (= res!484047 (and (= (size!19966 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19966 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19966 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!64318 res!484051) b!722186))

(assert (= (and b!722186 res!484047) b!722179))

(assert (= (and b!722179 res!484052) b!722177))

(assert (= (and b!722177 res!484044) b!722182))

(assert (= (and b!722182 res!484045) b!722185))

(assert (= (and b!722185 res!484049) b!722184))

(assert (= (and b!722184 res!484053) b!722172))

(assert (= (and b!722172 res!484043) b!722181))

(assert (= (and b!722181 res!484050) b!722183))

(assert (= (and b!722183 res!484041) b!722178))

(assert (= (and b!722178 res!484046) b!722180))

(assert (= (and b!722180 c!79437) b!722174))

(assert (= (and b!722180 (not c!79437)) b!722173))

(assert (= (and b!722180 res!484048) b!722175))

(assert (= (and b!722175 res!484042) b!722176))

(declare-fun m!676831 () Bool)

(assert (=> b!722178 m!676831))

(declare-fun m!676833 () Bool)

(assert (=> b!722179 m!676833))

(assert (=> b!722179 m!676833))

(declare-fun m!676835 () Bool)

(assert (=> b!722179 m!676835))

(declare-fun m!676837 () Bool)

(assert (=> b!722184 m!676837))

(declare-fun m!676839 () Bool)

(assert (=> b!722182 m!676839))

(declare-fun m!676841 () Bool)

(assert (=> start!64318 m!676841))

(declare-fun m!676843 () Bool)

(assert (=> start!64318 m!676843))

(assert (=> b!722183 m!676833))

(assert (=> b!722183 m!676833))

(declare-fun m!676845 () Bool)

(assert (=> b!722183 m!676845))

(assert (=> b!722183 m!676845))

(assert (=> b!722183 m!676833))

(declare-fun m!676847 () Bool)

(assert (=> b!722183 m!676847))

(declare-fun m!676849 () Bool)

(assert (=> b!722176 m!676849))

(declare-fun m!676851 () Bool)

(assert (=> b!722176 m!676851))

(assert (=> b!722176 m!676851))

(declare-fun m!676853 () Bool)

(assert (=> b!722176 m!676853))

(declare-fun m!676855 () Bool)

(assert (=> b!722177 m!676855))

(assert (=> b!722174 m!676833))

(assert (=> b!722174 m!676833))

(declare-fun m!676857 () Bool)

(assert (=> b!722174 m!676857))

(assert (=> b!722173 m!676833))

(assert (=> b!722173 m!676833))

(declare-fun m!676859 () Bool)

(assert (=> b!722173 m!676859))

(declare-fun m!676861 () Bool)

(assert (=> b!722185 m!676861))

(declare-fun m!676863 () Bool)

(assert (=> b!722172 m!676863))

(push 1)

