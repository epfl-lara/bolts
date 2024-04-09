; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66224 () Bool)

(assert start!66224)

(declare-fun b!762201 () Bool)

(declare-fun res!515484 () Bool)

(declare-fun e!424904 () Bool)

(assert (=> b!762201 (=> (not res!515484) (not e!424904))))

(declare-datatypes ((array!42082 0))(
  ( (array!42083 (arr!20145 (Array (_ BitVec 32) (_ BitVec 64))) (size!20566 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42082)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762201 (= res!515484 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762202 () Bool)

(declare-fun res!515486 () Bool)

(assert (=> b!762202 (=> (not res!515486) (not e!424904))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762202 (= res!515486 (validKeyInArray!0 (select (arr!20145 a!3186) j!159)))))

(declare-fun b!762203 () Bool)

(declare-fun e!424903 () Bool)

(assert (=> b!762203 (= e!424903 false)))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7752 0))(
  ( (MissingZero!7752 (index!33375 (_ BitVec 32))) (Found!7752 (index!33376 (_ BitVec 32))) (Intermediate!7752 (undefined!8564 Bool) (index!33377 (_ BitVec 32)) (x!64317 (_ BitVec 32))) (Undefined!7752) (MissingVacant!7752 (index!33378 (_ BitVec 32))) )
))
(declare-fun lt!339502 () SeekEntryResult!7752)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42082 (_ BitVec 32)) SeekEntryResult!7752)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762203 (= lt!339502 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20145 a!3186) j!159) mask!3328) (select (arr!20145 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!762204 () Bool)

(declare-fun res!515488 () Bool)

(assert (=> b!762204 (=> (not res!515488) (not e!424903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42082 (_ BitVec 32)) Bool)

(assert (=> b!762204 (= res!515488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762205 () Bool)

(declare-fun res!515482 () Bool)

(assert (=> b!762205 (=> (not res!515482) (not e!424903))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!762205 (= res!515482 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20566 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20566 a!3186))))))

(declare-fun b!762206 () Bool)

(declare-fun res!515483 () Bool)

(assert (=> b!762206 (=> (not res!515483) (not e!424904))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762206 (= res!515483 (and (= (size!20566 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20566 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20566 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762207 () Bool)

(assert (=> b!762207 (= e!424904 e!424903)))

(declare-fun res!515487 () Bool)

(assert (=> b!762207 (=> (not res!515487) (not e!424903))))

(declare-fun lt!339501 () SeekEntryResult!7752)

(assert (=> b!762207 (= res!515487 (or (= lt!339501 (MissingZero!7752 i!1173)) (= lt!339501 (MissingVacant!7752 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42082 (_ BitVec 32)) SeekEntryResult!7752)

(assert (=> b!762207 (= lt!339501 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!762209 () Bool)

(declare-fun res!515490 () Bool)

(assert (=> b!762209 (=> (not res!515490) (not e!424903))))

(declare-datatypes ((List!14200 0))(
  ( (Nil!14197) (Cons!14196 (h!15280 (_ BitVec 64)) (t!20523 List!14200)) )
))
(declare-fun arrayNoDuplicates!0 (array!42082 (_ BitVec 32) List!14200) Bool)

(assert (=> b!762209 (= res!515490 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14197))))

(declare-fun b!762208 () Bool)

(declare-fun res!515489 () Bool)

(assert (=> b!762208 (=> (not res!515489) (not e!424904))))

(assert (=> b!762208 (= res!515489 (validKeyInArray!0 k!2102))))

(declare-fun res!515485 () Bool)

(assert (=> start!66224 (=> (not res!515485) (not e!424904))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66224 (= res!515485 (validMask!0 mask!3328))))

(assert (=> start!66224 e!424904))

(assert (=> start!66224 true))

(declare-fun array_inv!15919 (array!42082) Bool)

(assert (=> start!66224 (array_inv!15919 a!3186)))

(assert (= (and start!66224 res!515485) b!762206))

(assert (= (and b!762206 res!515483) b!762202))

(assert (= (and b!762202 res!515486) b!762208))

(assert (= (and b!762208 res!515489) b!762201))

(assert (= (and b!762201 res!515484) b!762207))

(assert (= (and b!762207 res!515487) b!762204))

(assert (= (and b!762204 res!515488) b!762209))

(assert (= (and b!762209 res!515490) b!762205))

(assert (= (and b!762205 res!515482) b!762203))

(declare-fun m!709043 () Bool)

(assert (=> b!762207 m!709043))

(declare-fun m!709045 () Bool)

(assert (=> b!762209 m!709045))

(declare-fun m!709047 () Bool)

(assert (=> b!762201 m!709047))

(declare-fun m!709049 () Bool)

(assert (=> b!762208 m!709049))

(declare-fun m!709051 () Bool)

(assert (=> b!762203 m!709051))

(assert (=> b!762203 m!709051))

(declare-fun m!709053 () Bool)

(assert (=> b!762203 m!709053))

(assert (=> b!762203 m!709053))

(assert (=> b!762203 m!709051))

(declare-fun m!709055 () Bool)

(assert (=> b!762203 m!709055))

(assert (=> b!762202 m!709051))

(assert (=> b!762202 m!709051))

(declare-fun m!709057 () Bool)

(assert (=> b!762202 m!709057))

(declare-fun m!709059 () Bool)

(assert (=> b!762204 m!709059))

(declare-fun m!709061 () Bool)

(assert (=> start!66224 m!709061))

(declare-fun m!709063 () Bool)

(assert (=> start!66224 m!709063))

(push 1)

