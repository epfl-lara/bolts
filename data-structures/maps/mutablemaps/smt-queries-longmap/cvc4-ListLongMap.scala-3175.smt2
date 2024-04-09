; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44690 () Bool)

(assert start!44690)

(declare-fun b!490077 () Bool)

(declare-fun res!293168 () Bool)

(declare-fun e!288127 () Bool)

(assert (=> b!490077 (=> (not res!293168) (not e!288127))))

(declare-datatypes ((array!31709 0))(
  ( (array!31710 (arr!15239 (Array (_ BitVec 32) (_ BitVec 64))) (size!15603 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31709)

(declare-datatypes ((List!9450 0))(
  ( (Nil!9447) (Cons!9446 (h!10308 (_ BitVec 64)) (t!15686 List!9450)) )
))
(declare-fun arrayNoDuplicates!0 (array!31709 (_ BitVec 32) List!9450) Bool)

(assert (=> b!490077 (= res!293168 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9447))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!490078 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!288124 () Bool)

(declare-datatypes ((SeekEntryResult!3713 0))(
  ( (MissingZero!3713 (index!17031 (_ BitVec 32))) (Found!3713 (index!17032 (_ BitVec 32))) (Intermediate!3713 (undefined!4525 Bool) (index!17033 (_ BitVec 32)) (x!46158 (_ BitVec 32))) (Undefined!3713) (MissingVacant!3713 (index!17034 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31709 (_ BitVec 32)) SeekEntryResult!3713)

(assert (=> b!490078 (= e!288124 (= (seekEntryOrOpen!0 (select (arr!15239 a!3235) j!176) a!3235 mask!3524) (Found!3713 j!176)))))

(declare-fun b!490079 () Bool)

(assert (=> b!490079 (= e!288127 (not true))))

(declare-fun lt!221347 () (_ BitVec 32))

(declare-fun lt!221344 () SeekEntryResult!3713)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31709 (_ BitVec 32)) SeekEntryResult!3713)

(assert (=> b!490079 (= lt!221344 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221347 (select (store (arr!15239 a!3235) i!1204 k!2280) j!176) (array!31710 (store (arr!15239 a!3235) i!1204 k!2280) (size!15603 a!3235)) mask!3524))))

(declare-fun lt!221346 () (_ BitVec 32))

(declare-fun lt!221345 () SeekEntryResult!3713)

(assert (=> b!490079 (= lt!221345 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221346 (select (arr!15239 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!490079 (= lt!221347 (toIndex!0 (select (store (arr!15239 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!490079 (= lt!221346 (toIndex!0 (select (arr!15239 a!3235) j!176) mask!3524))))

(assert (=> b!490079 e!288124))

(declare-fun res!293164 () Bool)

(assert (=> b!490079 (=> (not res!293164) (not e!288124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31709 (_ BitVec 32)) Bool)

(assert (=> b!490079 (= res!293164 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14364 0))(
  ( (Unit!14365) )
))
(declare-fun lt!221348 () Unit!14364)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31709 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14364)

(assert (=> b!490079 (= lt!221348 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!490080 () Bool)

(declare-fun e!288126 () Bool)

(assert (=> b!490080 (= e!288126 e!288127)))

(declare-fun res!293169 () Bool)

(assert (=> b!490080 (=> (not res!293169) (not e!288127))))

(declare-fun lt!221343 () SeekEntryResult!3713)

(assert (=> b!490080 (= res!293169 (or (= lt!221343 (MissingZero!3713 i!1204)) (= lt!221343 (MissingVacant!3713 i!1204))))))

(assert (=> b!490080 (= lt!221343 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!490081 () Bool)

(declare-fun res!293165 () Bool)

(assert (=> b!490081 (=> (not res!293165) (not e!288126))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!490081 (= res!293165 (validKeyInArray!0 k!2280))))

(declare-fun b!490082 () Bool)

(declare-fun res!293166 () Bool)

(assert (=> b!490082 (=> (not res!293166) (not e!288126))))

(assert (=> b!490082 (= res!293166 (and (= (size!15603 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15603 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15603 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!490083 () Bool)

(declare-fun res!293171 () Bool)

(assert (=> b!490083 (=> (not res!293171) (not e!288126))))

(assert (=> b!490083 (= res!293171 (validKeyInArray!0 (select (arr!15239 a!3235) j!176)))))

(declare-fun res!293167 () Bool)

(assert (=> start!44690 (=> (not res!293167) (not e!288126))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44690 (= res!293167 (validMask!0 mask!3524))))

(assert (=> start!44690 e!288126))

(assert (=> start!44690 true))

(declare-fun array_inv!11013 (array!31709) Bool)

(assert (=> start!44690 (array_inv!11013 a!3235)))

(declare-fun b!490084 () Bool)

(declare-fun res!293163 () Bool)

(assert (=> b!490084 (=> (not res!293163) (not e!288127))))

(assert (=> b!490084 (= res!293163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!490085 () Bool)

(declare-fun res!293170 () Bool)

(assert (=> b!490085 (=> (not res!293170) (not e!288126))))

(declare-fun arrayContainsKey!0 (array!31709 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!490085 (= res!293170 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44690 res!293167) b!490082))

(assert (= (and b!490082 res!293166) b!490083))

(assert (= (and b!490083 res!293171) b!490081))

(assert (= (and b!490081 res!293165) b!490085))

(assert (= (and b!490085 res!293170) b!490080))

(assert (= (and b!490080 res!293169) b!490084))

(assert (= (and b!490084 res!293163) b!490077))

(assert (= (and b!490077 res!293168) b!490079))

(assert (= (and b!490079 res!293164) b!490078))

(declare-fun m!470167 () Bool)

(assert (=> b!490080 m!470167))

(declare-fun m!470169 () Bool)

(assert (=> b!490084 m!470169))

(declare-fun m!470171 () Bool)

(assert (=> b!490085 m!470171))

(declare-fun m!470173 () Bool)

(assert (=> b!490077 m!470173))

(declare-fun m!470175 () Bool)

(assert (=> b!490083 m!470175))

(assert (=> b!490083 m!470175))

(declare-fun m!470177 () Bool)

(assert (=> b!490083 m!470177))

(assert (=> b!490078 m!470175))

(assert (=> b!490078 m!470175))

(declare-fun m!470179 () Bool)

(assert (=> b!490078 m!470179))

(declare-fun m!470181 () Bool)

(assert (=> b!490079 m!470181))

(declare-fun m!470183 () Bool)

(assert (=> b!490079 m!470183))

(assert (=> b!490079 m!470175))

(declare-fun m!470185 () Bool)

(assert (=> b!490079 m!470185))

(assert (=> b!490079 m!470175))

(declare-fun m!470187 () Bool)

(assert (=> b!490079 m!470187))

(assert (=> b!490079 m!470175))

(declare-fun m!470189 () Bool)

(assert (=> b!490079 m!470189))

(assert (=> b!490079 m!470183))

(declare-fun m!470191 () Bool)

(assert (=> b!490079 m!470191))

(assert (=> b!490079 m!470183))

(declare-fun m!470193 () Bool)

(assert (=> b!490079 m!470193))

(declare-fun m!470195 () Bool)

(assert (=> b!490079 m!470195))

(declare-fun m!470197 () Bool)

(assert (=> start!44690 m!470197))

(declare-fun m!470199 () Bool)

(assert (=> start!44690 m!470199))

(declare-fun m!470201 () Bool)

(assert (=> b!490081 m!470201))

(push 1)

