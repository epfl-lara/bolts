; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44632 () Bool)

(assert start!44632)

(declare-fun b!489294 () Bool)

(declare-fun e!287779 () Bool)

(declare-fun e!287778 () Bool)

(assert (=> b!489294 (= e!287779 e!287778)))

(declare-fun res!292384 () Bool)

(assert (=> b!489294 (=> (not res!292384) (not e!287778))))

(declare-datatypes ((SeekEntryResult!3684 0))(
  ( (MissingZero!3684 (index!16915 (_ BitVec 32))) (Found!3684 (index!16916 (_ BitVec 32))) (Intermediate!3684 (undefined!4496 Bool) (index!16917 (_ BitVec 32)) (x!46057 (_ BitVec 32))) (Undefined!3684) (MissingVacant!3684 (index!16918 (_ BitVec 32))) )
))
(declare-fun lt!220822 () SeekEntryResult!3684)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!489294 (= res!292384 (or (= lt!220822 (MissingZero!3684 i!1204)) (= lt!220822 (MissingVacant!3684 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31651 0))(
  ( (array!31652 (arr!15210 (Array (_ BitVec 32) (_ BitVec 64))) (size!15574 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31651)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31651 (_ BitVec 32)) SeekEntryResult!3684)

(assert (=> b!489294 (= lt!220822 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!292382 () Bool)

(assert (=> start!44632 (=> (not res!292382) (not e!287779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44632 (= res!292382 (validMask!0 mask!3524))))

(assert (=> start!44632 e!287779))

(assert (=> start!44632 true))

(declare-fun array_inv!10984 (array!31651) Bool)

(assert (=> start!44632 (array_inv!10984 a!3235)))

(declare-fun b!489295 () Bool)

(declare-fun res!292380 () Bool)

(assert (=> b!489295 (=> (not res!292380) (not e!287779))))

(declare-fun arrayContainsKey!0 (array!31651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489295 (= res!292380 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489296 () Bool)

(declare-fun res!292386 () Bool)

(assert (=> b!489296 (=> (not res!292386) (not e!287778))))

(declare-datatypes ((List!9421 0))(
  ( (Nil!9418) (Cons!9417 (h!10279 (_ BitVec 64)) (t!15657 List!9421)) )
))
(declare-fun arrayNoDuplicates!0 (array!31651 (_ BitVec 32) List!9421) Bool)

(assert (=> b!489296 (= res!292386 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9418))))

(declare-fun b!489297 () Bool)

(declare-fun res!292381 () Bool)

(assert (=> b!489297 (=> (not res!292381) (not e!287779))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!489297 (= res!292381 (and (= (size!15574 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15574 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15574 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489298 () Bool)

(declare-fun res!292387 () Bool)

(assert (=> b!489298 (=> (not res!292387) (not e!287779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489298 (= res!292387 (validKeyInArray!0 k!2280))))

(declare-fun b!489299 () Bool)

(declare-fun e!287776 () Bool)

(assert (=> b!489299 (= e!287776 (= (seekEntryOrOpen!0 (select (arr!15210 a!3235) j!176) a!3235 mask!3524) (Found!3684 j!176)))))

(declare-fun b!489300 () Bool)

(assert (=> b!489300 (= e!287778 (not true))))

(declare-fun lt!220821 () (_ BitVec 32))

(declare-fun lt!220825 () SeekEntryResult!3684)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31651 (_ BitVec 32)) SeekEntryResult!3684)

(assert (=> b!489300 (= lt!220825 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220821 (select (store (arr!15210 a!3235) i!1204 k!2280) j!176) (array!31652 (store (arr!15210 a!3235) i!1204 k!2280) (size!15574 a!3235)) mask!3524))))

(declare-fun lt!220823 () SeekEntryResult!3684)

(declare-fun lt!220824 () (_ BitVec 32))

(assert (=> b!489300 (= lt!220823 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!220824 (select (arr!15210 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489300 (= lt!220821 (toIndex!0 (select (store (arr!15210 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489300 (= lt!220824 (toIndex!0 (select (arr!15210 a!3235) j!176) mask!3524))))

(assert (=> b!489300 e!287776))

(declare-fun res!292385 () Bool)

(assert (=> b!489300 (=> (not res!292385) (not e!287776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31651 (_ BitVec 32)) Bool)

(assert (=> b!489300 (= res!292385 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14306 0))(
  ( (Unit!14307) )
))
(declare-fun lt!220826 () Unit!14306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31651 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14306)

(assert (=> b!489300 (= lt!220826 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489301 () Bool)

(declare-fun res!292388 () Bool)

(assert (=> b!489301 (=> (not res!292388) (not e!287778))))

(assert (=> b!489301 (= res!292388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!489302 () Bool)

(declare-fun res!292383 () Bool)

(assert (=> b!489302 (=> (not res!292383) (not e!287779))))

(assert (=> b!489302 (= res!292383 (validKeyInArray!0 (select (arr!15210 a!3235) j!176)))))

(assert (= (and start!44632 res!292382) b!489297))

(assert (= (and b!489297 res!292381) b!489302))

(assert (= (and b!489302 res!292383) b!489298))

(assert (= (and b!489298 res!292387) b!489295))

(assert (= (and b!489295 res!292380) b!489294))

(assert (= (and b!489294 res!292384) b!489301))

(assert (= (and b!489301 res!292388) b!489296))

(assert (= (and b!489296 res!292386) b!489300))

(assert (= (and b!489300 res!292385) b!489299))

(declare-fun m!469123 () Bool)

(assert (=> b!489296 m!469123))

(declare-fun m!469125 () Bool)

(assert (=> b!489300 m!469125))

(declare-fun m!469127 () Bool)

(assert (=> b!489300 m!469127))

(declare-fun m!469129 () Bool)

(assert (=> b!489300 m!469129))

(declare-fun m!469131 () Bool)

(assert (=> b!489300 m!469131))

(declare-fun m!469133 () Bool)

(assert (=> b!489300 m!469133))

(assert (=> b!489300 m!469125))

(declare-fun m!469135 () Bool)

(assert (=> b!489300 m!469135))

(assert (=> b!489300 m!469125))

(declare-fun m!469137 () Bool)

(assert (=> b!489300 m!469137))

(assert (=> b!489300 m!469133))

(declare-fun m!469139 () Bool)

(assert (=> b!489300 m!469139))

(assert (=> b!489300 m!469133))

(declare-fun m!469141 () Bool)

(assert (=> b!489300 m!469141))

(declare-fun m!469143 () Bool)

(assert (=> b!489298 m!469143))

(declare-fun m!469145 () Bool)

(assert (=> b!489295 m!469145))

(declare-fun m!469147 () Bool)

(assert (=> b!489301 m!469147))

(declare-fun m!469149 () Bool)

(assert (=> b!489294 m!469149))

(assert (=> b!489299 m!469125))

(assert (=> b!489299 m!469125))

(declare-fun m!469151 () Bool)

(assert (=> b!489299 m!469151))

(assert (=> b!489302 m!469125))

(assert (=> b!489302 m!469125))

(declare-fun m!469153 () Bool)

(assert (=> b!489302 m!469153))

(declare-fun m!469155 () Bool)

(assert (=> start!44632 m!469155))

(declare-fun m!469157 () Bool)

(assert (=> start!44632 m!469157))

(push 1)

