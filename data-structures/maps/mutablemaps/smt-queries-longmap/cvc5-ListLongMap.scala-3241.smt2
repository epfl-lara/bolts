; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45262 () Bool)

(assert start!45262)

(declare-fun b!496786 () Bool)

(declare-fun res!299329 () Bool)

(declare-fun e!291264 () Bool)

(assert (=> b!496786 (=> (not res!299329) (not e!291264))))

(declare-datatypes ((array!32110 0))(
  ( (array!32111 (arr!15435 (Array (_ BitVec 32) (_ BitVec 64))) (size!15799 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32110)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496786 (= res!299329 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!299333 () Bool)

(assert (=> start!45262 (=> (not res!299333) (not e!291264))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45262 (= res!299333 (validMask!0 mask!3524))))

(assert (=> start!45262 e!291264))

(assert (=> start!45262 true))

(declare-fun array_inv!11209 (array!32110) Bool)

(assert (=> start!45262 (array_inv!11209 a!3235)))

(declare-fun b!496787 () Bool)

(declare-fun res!299327 () Bool)

(assert (=> b!496787 (=> (not res!299327) (not e!291264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496787 (= res!299327 (validKeyInArray!0 k!2280))))

(declare-fun b!496788 () Bool)

(declare-fun e!291263 () Bool)

(assert (=> b!496788 (= e!291264 e!291263)))

(declare-fun res!299326 () Bool)

(assert (=> b!496788 (=> (not res!299326) (not e!291263))))

(declare-datatypes ((SeekEntryResult!3909 0))(
  ( (MissingZero!3909 (index!17815 (_ BitVec 32))) (Found!3909 (index!17816 (_ BitVec 32))) (Intermediate!3909 (undefined!4721 Bool) (index!17817 (_ BitVec 32)) (x!46900 (_ BitVec 32))) (Undefined!3909) (MissingVacant!3909 (index!17818 (_ BitVec 32))) )
))
(declare-fun lt!224951 () SeekEntryResult!3909)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!496788 (= res!299326 (or (= lt!224951 (MissingZero!3909 i!1204)) (= lt!224951 (MissingVacant!3909 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32110 (_ BitVec 32)) SeekEntryResult!3909)

(assert (=> b!496788 (= lt!224951 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!496789 () Bool)

(declare-fun res!299331 () Bool)

(assert (=> b!496789 (=> (not res!299331) (not e!291264))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496789 (= res!299331 (validKeyInArray!0 (select (arr!15435 a!3235) j!176)))))

(declare-fun b!496790 () Bool)

(declare-fun e!291261 () Bool)

(assert (=> b!496790 (= e!291261 (= (seekEntryOrOpen!0 (select (arr!15435 a!3235) j!176) a!3235 mask!3524) (Found!3909 j!176)))))

(declare-fun b!496791 () Bool)

(declare-fun res!299325 () Bool)

(assert (=> b!496791 (=> (not res!299325) (not e!291263))))

(declare-datatypes ((List!9646 0))(
  ( (Nil!9643) (Cons!9642 (h!10513 (_ BitVec 64)) (t!15882 List!9646)) )
))
(declare-fun arrayNoDuplicates!0 (array!32110 (_ BitVec 32) List!9646) Bool)

(assert (=> b!496791 (= res!299325 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9643))))

(declare-fun b!496792 () Bool)

(declare-fun res!299324 () Bool)

(declare-fun e!291265 () Bool)

(assert (=> b!496792 (=> res!299324 e!291265)))

(declare-fun lt!224954 () SeekEntryResult!3909)

(assert (=> b!496792 (= res!299324 (or (undefined!4721 lt!224954) (not (is-Intermediate!3909 lt!224954))))))

(declare-fun b!496793 () Bool)

(assert (=> b!496793 (= e!291265 true)))

(assert (=> b!496793 (and (bvslt (x!46900 lt!224954) #b01111111111111111111111111111110) (or (= (select (arr!15435 a!3235) (index!17817 lt!224954)) (select (arr!15435 a!3235) j!176)) (= (select (arr!15435 a!3235) (index!17817 lt!224954)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15435 a!3235) (index!17817 lt!224954)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496794 () Bool)

(declare-fun res!299330 () Bool)

(assert (=> b!496794 (=> (not res!299330) (not e!291264))))

(assert (=> b!496794 (= res!299330 (and (= (size!15799 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15799 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15799 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496795 () Bool)

(declare-fun res!299323 () Bool)

(assert (=> b!496795 (=> (not res!299323) (not e!291263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32110 (_ BitVec 32)) Bool)

(assert (=> b!496795 (= res!299323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496796 () Bool)

(assert (=> b!496796 (= e!291263 (not e!291265))))

(declare-fun res!299332 () Bool)

(assert (=> b!496796 (=> res!299332 e!291265)))

(declare-fun lt!224953 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32110 (_ BitVec 32)) SeekEntryResult!3909)

(assert (=> b!496796 (= res!299332 (= lt!224954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224953 (select (store (arr!15435 a!3235) i!1204 k!2280) j!176) (array!32111 (store (arr!15435 a!3235) i!1204 k!2280) (size!15799 a!3235)) mask!3524)))))

(declare-fun lt!224952 () (_ BitVec 32))

(assert (=> b!496796 (= lt!224954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224952 (select (arr!15435 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496796 (= lt!224953 (toIndex!0 (select (store (arr!15435 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!496796 (= lt!224952 (toIndex!0 (select (arr!15435 a!3235) j!176) mask!3524))))

(assert (=> b!496796 e!291261))

(declare-fun res!299328 () Bool)

(assert (=> b!496796 (=> (not res!299328) (not e!291261))))

(assert (=> b!496796 (= res!299328 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14756 0))(
  ( (Unit!14757) )
))
(declare-fun lt!224950 () Unit!14756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32110 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14756)

(assert (=> b!496796 (= lt!224950 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (= (and start!45262 res!299333) b!496794))

(assert (= (and b!496794 res!299330) b!496789))

(assert (= (and b!496789 res!299331) b!496787))

(assert (= (and b!496787 res!299327) b!496786))

(assert (= (and b!496786 res!299329) b!496788))

(assert (= (and b!496788 res!299326) b!496795))

(assert (= (and b!496795 res!299323) b!496791))

(assert (= (and b!496791 res!299325) b!496796))

(assert (= (and b!496796 res!299328) b!496790))

(assert (= (and b!496796 (not res!299332)) b!496792))

(assert (= (and b!496792 (not res!299324)) b!496793))

(declare-fun m!478141 () Bool)

(assert (=> b!496793 m!478141))

(declare-fun m!478143 () Bool)

(assert (=> b!496793 m!478143))

(declare-fun m!478145 () Bool)

(assert (=> b!496788 m!478145))

(assert (=> b!496790 m!478143))

(assert (=> b!496790 m!478143))

(declare-fun m!478147 () Bool)

(assert (=> b!496790 m!478147))

(declare-fun m!478149 () Bool)

(assert (=> b!496787 m!478149))

(declare-fun m!478151 () Bool)

(assert (=> start!45262 m!478151))

(declare-fun m!478153 () Bool)

(assert (=> start!45262 m!478153))

(declare-fun m!478155 () Bool)

(assert (=> b!496791 m!478155))

(assert (=> b!496789 m!478143))

(assert (=> b!496789 m!478143))

(declare-fun m!478157 () Bool)

(assert (=> b!496789 m!478157))

(declare-fun m!478159 () Bool)

(assert (=> b!496796 m!478159))

(declare-fun m!478161 () Bool)

(assert (=> b!496796 m!478161))

(declare-fun m!478163 () Bool)

(assert (=> b!496796 m!478163))

(assert (=> b!496796 m!478163))

(declare-fun m!478165 () Bool)

(assert (=> b!496796 m!478165))

(assert (=> b!496796 m!478143))

(declare-fun m!478167 () Bool)

(assert (=> b!496796 m!478167))

(assert (=> b!496796 m!478143))

(declare-fun m!478169 () Bool)

(assert (=> b!496796 m!478169))

(assert (=> b!496796 m!478143))

(declare-fun m!478171 () Bool)

(assert (=> b!496796 m!478171))

(assert (=> b!496796 m!478163))

(declare-fun m!478173 () Bool)

(assert (=> b!496796 m!478173))

(declare-fun m!478175 () Bool)

(assert (=> b!496795 m!478175))

(declare-fun m!478177 () Bool)

(assert (=> b!496786 m!478177))

(push 1)

