; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67384 () Bool)

(assert start!67384)

(declare-datatypes ((array!42568 0))(
  ( (array!42569 (arr!20373 (Array (_ BitVec 32) (_ BitVec 64))) (size!20794 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42568)

(declare-datatypes ((SeekEntryResult!7980 0))(
  ( (MissingZero!7980 (index!34287 (_ BitVec 32))) (Found!7980 (index!34288 (_ BitVec 32))) (Intermediate!7980 (undefined!8792 Bool) (index!34289 (_ BitVec 32)) (x!65262 (_ BitVec 32))) (Undefined!7980) (MissingVacant!7980 (index!34290 (_ BitVec 32))) )
))
(declare-fun lt!347192 () SeekEntryResult!7980)

(declare-fun e!433490 () Bool)

(declare-fun b!779165 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42568 (_ BitVec 32)) SeekEntryResult!7980)

(assert (=> b!779165 (= e!433490 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20373 a!3186) j!159) a!3186 mask!3328) lt!347192))))

(declare-fun b!779166 () Bool)

(declare-fun res!527306 () Bool)

(declare-fun e!433486 () Bool)

(assert (=> b!779166 (=> (not res!527306) (not e!433486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42568 (_ BitVec 32)) Bool)

(assert (=> b!779166 (= res!527306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!779167 () Bool)

(declare-fun e!433488 () Bool)

(assert (=> b!779167 (= e!433486 e!433488)))

(declare-fun res!527310 () Bool)

(assert (=> b!779167 (=> (not res!527310) (not e!433488))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!779167 (= res!527310 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20373 a!3186) j!159) mask!3328) (select (arr!20373 a!3186) j!159) a!3186 mask!3328) lt!347192))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!779167 (= lt!347192 (Intermediate!7980 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!527304 () Bool)

(declare-fun e!433491 () Bool)

(assert (=> start!67384 (=> (not res!527304) (not e!433491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67384 (= res!527304 (validMask!0 mask!3328))))

(assert (=> start!67384 e!433491))

(assert (=> start!67384 true))

(declare-fun array_inv!16147 (array!42568) Bool)

(assert (=> start!67384 (array_inv!16147 a!3186)))

(declare-fun b!779168 () Bool)

(declare-fun res!527308 () Bool)

(assert (=> b!779168 (=> (not res!527308) (not e!433488))))

(assert (=> b!779168 (= res!527308 e!433490)))

(declare-fun c!86334 () Bool)

(assert (=> b!779168 (= c!86334 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!347193 () SeekEntryResult!7980)

(declare-fun b!779169 () Bool)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun lt!347185 () (_ BitVec 64))

(declare-fun e!433485 () Bool)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun lt!347191 () SeekEntryResult!7980)

(declare-fun lt!347188 () SeekEntryResult!7980)

(assert (=> b!779169 (= e!433485 (or (not (= lt!347193 lt!347188)) (= (select (store (arr!20373 a!3186) i!1173 k!2102) index!1321) lt!347185) (not (= (select (store (arr!20373 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!347191 lt!347193)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42568 (_ BitVec 32)) SeekEntryResult!7980)

(assert (=> b!779169 (= lt!347193 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20373 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!779170 () Bool)

(assert (=> b!779170 (= e!433490 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20373 a!3186) j!159) a!3186 mask!3328) (Found!7980 j!159)))))

(declare-fun b!779171 () Bool)

(declare-fun e!433487 () Bool)

(assert (=> b!779171 (= e!433487 (not e!433485))))

(declare-fun res!527314 () Bool)

(assert (=> b!779171 (=> res!527314 e!433485)))

(declare-fun lt!347189 () SeekEntryResult!7980)

(assert (=> b!779171 (= res!527314 (or (not (is-Intermediate!7980 lt!347189)) (bvslt x!1131 (x!65262 lt!347189)) (not (= x!1131 (x!65262 lt!347189))) (not (= index!1321 (index!34289 lt!347189)))))))

(declare-fun e!433492 () Bool)

(assert (=> b!779171 e!433492))

(declare-fun res!527311 () Bool)

(assert (=> b!779171 (=> (not res!527311) (not e!433492))))

(assert (=> b!779171 (= res!527311 (= lt!347191 lt!347188))))

(assert (=> b!779171 (= lt!347188 (Found!7980 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42568 (_ BitVec 32)) SeekEntryResult!7980)

(assert (=> b!779171 (= lt!347191 (seekEntryOrOpen!0 (select (arr!20373 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!779171 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26854 0))(
  ( (Unit!26855) )
))
(declare-fun lt!347194 () Unit!26854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26854)

(assert (=> b!779171 (= lt!347194 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!779172 () Bool)

(assert (=> b!779172 (= e!433492 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20373 a!3186) j!159) a!3186 mask!3328) lt!347188))))

(declare-fun b!779173 () Bool)

(declare-fun res!527316 () Bool)

(assert (=> b!779173 (=> (not res!527316) (not e!433491))))

(assert (=> b!779173 (= res!527316 (and (= (size!20794 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20794 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20794 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!779174 () Bool)

(declare-fun res!527317 () Bool)

(assert (=> b!779174 (=> (not res!527317) (not e!433491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!779174 (= res!527317 (validKeyInArray!0 (select (arr!20373 a!3186) j!159)))))

(declare-fun b!779175 () Bool)

(declare-fun res!527307 () Bool)

(assert (=> b!779175 (=> (not res!527307) (not e!433491))))

(assert (=> b!779175 (= res!527307 (validKeyInArray!0 k!2102))))

(declare-fun b!779176 () Bool)

(assert (=> b!779176 (= e!433491 e!433486)))

(declare-fun res!527313 () Bool)

(assert (=> b!779176 (=> (not res!527313) (not e!433486))))

(declare-fun lt!347187 () SeekEntryResult!7980)

(assert (=> b!779176 (= res!527313 (or (= lt!347187 (MissingZero!7980 i!1173)) (= lt!347187 (MissingVacant!7980 i!1173))))))

(assert (=> b!779176 (= lt!347187 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!779177 () Bool)

(declare-fun res!527303 () Bool)

(assert (=> b!779177 (=> (not res!527303) (not e!433486))))

(declare-datatypes ((List!14428 0))(
  ( (Nil!14425) (Cons!14424 (h!15538 (_ BitVec 64)) (t!20751 List!14428)) )
))
(declare-fun arrayNoDuplicates!0 (array!42568 (_ BitVec 32) List!14428) Bool)

(assert (=> b!779177 (= res!527303 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14425))))

(declare-fun b!779178 () Bool)

(declare-fun res!527309 () Bool)

(assert (=> b!779178 (=> (not res!527309) (not e!433488))))

(assert (=> b!779178 (= res!527309 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20373 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!779179 () Bool)

(assert (=> b!779179 (= e!433488 e!433487)))

(declare-fun res!527315 () Bool)

(assert (=> b!779179 (=> (not res!527315) (not e!433487))))

(declare-fun lt!347190 () SeekEntryResult!7980)

(assert (=> b!779179 (= res!527315 (= lt!347190 lt!347189))))

(declare-fun lt!347186 () array!42568)

(assert (=> b!779179 (= lt!347189 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347185 lt!347186 mask!3328))))

(assert (=> b!779179 (= lt!347190 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347185 mask!3328) lt!347185 lt!347186 mask!3328))))

(assert (=> b!779179 (= lt!347185 (select (store (arr!20373 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!779179 (= lt!347186 (array!42569 (store (arr!20373 a!3186) i!1173 k!2102) (size!20794 a!3186)))))

(declare-fun b!779180 () Bool)

(declare-fun res!527305 () Bool)

(assert (=> b!779180 (=> (not res!527305) (not e!433486))))

(assert (=> b!779180 (= res!527305 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20794 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20794 a!3186))))))

(declare-fun b!779181 () Bool)

(declare-fun res!527312 () Bool)

(assert (=> b!779181 (=> (not res!527312) (not e!433491))))

(declare-fun arrayContainsKey!0 (array!42568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!779181 (= res!527312 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!67384 res!527304) b!779173))

(assert (= (and b!779173 res!527316) b!779174))

(assert (= (and b!779174 res!527317) b!779175))

(assert (= (and b!779175 res!527307) b!779181))

(assert (= (and b!779181 res!527312) b!779176))

(assert (= (and b!779176 res!527313) b!779166))

(assert (= (and b!779166 res!527306) b!779177))

(assert (= (and b!779177 res!527303) b!779180))

(assert (= (and b!779180 res!527305) b!779167))

(assert (= (and b!779167 res!527310) b!779178))

(assert (= (and b!779178 res!527309) b!779168))

(assert (= (and b!779168 c!86334) b!779165))

(assert (= (and b!779168 (not c!86334)) b!779170))

(assert (= (and b!779168 res!527308) b!779179))

(assert (= (and b!779179 res!527315) b!779171))

(assert (= (and b!779171 res!527311) b!779172))

(assert (= (and b!779171 (not res!527314)) b!779169))

(declare-fun m!722767 () Bool)

(assert (=> b!779177 m!722767))

(declare-fun m!722769 () Bool)

(assert (=> b!779165 m!722769))

(assert (=> b!779165 m!722769))

(declare-fun m!722771 () Bool)

(assert (=> b!779165 m!722771))

(declare-fun m!722773 () Bool)

(assert (=> b!779181 m!722773))

(declare-fun m!722775 () Bool)

(assert (=> b!779179 m!722775))

(assert (=> b!779179 m!722775))

(declare-fun m!722777 () Bool)

(assert (=> b!779179 m!722777))

(declare-fun m!722779 () Bool)

(assert (=> b!779179 m!722779))

(declare-fun m!722781 () Bool)

(assert (=> b!779179 m!722781))

(declare-fun m!722783 () Bool)

(assert (=> b!779179 m!722783))

(declare-fun m!722785 () Bool)

(assert (=> b!779176 m!722785))

(assert (=> b!779172 m!722769))

(assert (=> b!779172 m!722769))

(declare-fun m!722787 () Bool)

(assert (=> b!779172 m!722787))

(assert (=> b!779174 m!722769))

(assert (=> b!779174 m!722769))

(declare-fun m!722789 () Bool)

(assert (=> b!779174 m!722789))

(declare-fun m!722791 () Bool)

(assert (=> b!779178 m!722791))

(assert (=> b!779171 m!722769))

(assert (=> b!779171 m!722769))

(declare-fun m!722793 () Bool)

(assert (=> b!779171 m!722793))

(declare-fun m!722795 () Bool)

(assert (=> b!779171 m!722795))

(declare-fun m!722797 () Bool)

(assert (=> b!779171 m!722797))

(assert (=> b!779169 m!722779))

(declare-fun m!722799 () Bool)

(assert (=> b!779169 m!722799))

(assert (=> b!779169 m!722769))

(assert (=> b!779169 m!722769))

(declare-fun m!722801 () Bool)

(assert (=> b!779169 m!722801))

(declare-fun m!722803 () Bool)

(assert (=> start!67384 m!722803))

(declare-fun m!722805 () Bool)

(assert (=> start!67384 m!722805))

(declare-fun m!722807 () Bool)

(assert (=> b!779175 m!722807))

(assert (=> b!779170 m!722769))

(assert (=> b!779170 m!722769))

(assert (=> b!779170 m!722801))

(assert (=> b!779167 m!722769))

(assert (=> b!779167 m!722769))

(declare-fun m!722809 () Bool)

(assert (=> b!779167 m!722809))

(assert (=> b!779167 m!722809))

(assert (=> b!779167 m!722769))

(declare-fun m!722811 () Bool)

(assert (=> b!779167 m!722811))

(declare-fun m!722813 () Bool)

(assert (=> b!779166 m!722813))

(push 1)

