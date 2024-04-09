; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66212 () Bool)

(assert start!66212)

(declare-fun b!762039 () Bool)

(declare-fun res!515323 () Bool)

(declare-fun e!424848 () Bool)

(assert (=> b!762039 (=> (not res!515323) (not e!424848))))

(declare-datatypes ((array!42070 0))(
  ( (array!42071 (arr!20139 (Array (_ BitVec 32) (_ BitVec 64))) (size!20560 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42070)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762039 (= res!515323 (validKeyInArray!0 (select (arr!20139 a!3186) j!159)))))

(declare-fun res!515328 () Bool)

(assert (=> start!66212 (=> (not res!515328) (not e!424848))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66212 (= res!515328 (validMask!0 mask!3328))))

(assert (=> start!66212 e!424848))

(assert (=> start!66212 true))

(declare-fun array_inv!15913 (array!42070) Bool)

(assert (=> start!66212 (array_inv!15913 a!3186)))

(declare-fun b!762040 () Bool)

(declare-fun res!515325 () Bool)

(assert (=> b!762040 (=> (not res!515325) (not e!424848))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42070 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762040 (= res!515325 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762041 () Bool)

(declare-fun res!515320 () Bool)

(declare-fun e!424849 () Bool)

(assert (=> b!762041 (=> (not res!515320) (not e!424849))))

(declare-datatypes ((List!14194 0))(
  ( (Nil!14191) (Cons!14190 (h!15274 (_ BitVec 64)) (t!20517 List!14194)) )
))
(declare-fun arrayNoDuplicates!0 (array!42070 (_ BitVec 32) List!14194) Bool)

(assert (=> b!762041 (= res!515320 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14191))))

(declare-fun b!762042 () Bool)

(declare-fun res!515321 () Bool)

(assert (=> b!762042 (=> (not res!515321) (not e!424848))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762042 (= res!515321 (and (= (size!20560 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20560 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20560 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762043 () Bool)

(declare-fun res!515324 () Bool)

(assert (=> b!762043 (=> (not res!515324) (not e!424848))))

(assert (=> b!762043 (= res!515324 (validKeyInArray!0 k!2102))))

(declare-fun b!762044 () Bool)

(assert (=> b!762044 (= e!424848 e!424849)))

(declare-fun res!515327 () Bool)

(assert (=> b!762044 (=> (not res!515327) (not e!424849))))

(declare-datatypes ((SeekEntryResult!7746 0))(
  ( (MissingZero!7746 (index!33351 (_ BitVec 32))) (Found!7746 (index!33352 (_ BitVec 32))) (Intermediate!7746 (undefined!8558 Bool) (index!33353 (_ BitVec 32)) (x!64295 (_ BitVec 32))) (Undefined!7746) (MissingVacant!7746 (index!33354 (_ BitVec 32))) )
))
(declare-fun lt!339466 () SeekEntryResult!7746)

(assert (=> b!762044 (= res!515327 (or (= lt!339466 (MissingZero!7746 i!1173)) (= lt!339466 (MissingVacant!7746 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42070 (_ BitVec 32)) SeekEntryResult!7746)

(assert (=> b!762044 (= lt!339466 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762045 () Bool)

(declare-fun res!515322 () Bool)

(assert (=> b!762045 (=> (not res!515322) (not e!424849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42070 (_ BitVec 32)) Bool)

(assert (=> b!762045 (= res!515322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762046 () Bool)

(declare-fun res!515326 () Bool)

(assert (=> b!762046 (=> (not res!515326) (not e!424849))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762046 (= res!515326 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20560 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20560 a!3186))))))

(declare-fun b!762047 () Bool)

(assert (=> b!762047 (= e!424849 false)))

(declare-fun lt!339465 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762047 (= lt!339465 (toIndex!0 (select (arr!20139 a!3186) j!159) mask!3328))))

(assert (= (and start!66212 res!515328) b!762042))

(assert (= (and b!762042 res!515321) b!762039))

(assert (= (and b!762039 res!515323) b!762043))

(assert (= (and b!762043 res!515324) b!762040))

(assert (= (and b!762040 res!515325) b!762044))

(assert (= (and b!762044 res!515327) b!762045))

(assert (= (and b!762045 res!515322) b!762041))

(assert (= (and b!762041 res!515320) b!762046))

(assert (= (and b!762046 res!515326) b!762047))

(declare-fun m!708917 () Bool)

(assert (=> b!762045 m!708917))

(declare-fun m!708919 () Bool)

(assert (=> b!762043 m!708919))

(declare-fun m!708921 () Bool)

(assert (=> b!762041 m!708921))

(declare-fun m!708923 () Bool)

(assert (=> b!762040 m!708923))

(declare-fun m!708925 () Bool)

(assert (=> b!762039 m!708925))

(assert (=> b!762039 m!708925))

(declare-fun m!708927 () Bool)

(assert (=> b!762039 m!708927))

(declare-fun m!708929 () Bool)

(assert (=> start!66212 m!708929))

(declare-fun m!708931 () Bool)

(assert (=> start!66212 m!708931))

(declare-fun m!708933 () Bool)

(assert (=> b!762044 m!708933))

(assert (=> b!762047 m!708925))

(assert (=> b!762047 m!708925))

(declare-fun m!708935 () Bool)

(assert (=> b!762047 m!708935))

(push 1)

(assert (not b!762044))

(assert (not b!762040))

(assert (not b!762041))

(assert (not b!762047))

(assert (not start!66212))

(assert (not b!762039))

(assert (not b!762045))

(assert (not b!762043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

