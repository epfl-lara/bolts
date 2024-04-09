; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45830 () Bool)

(assert start!45830)

(declare-fun b!507118 () Bool)

(declare-fun res!308237 () Bool)

(declare-fun e!296786 () Bool)

(assert (=> b!507118 (=> (not res!308237) (not e!296786))))

(declare-datatypes ((array!32546 0))(
  ( (array!32547 (arr!15650 (Array (_ BitVec 32) (_ BitVec 64))) (size!16014 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32546)

(declare-datatypes ((List!9861 0))(
  ( (Nil!9858) (Cons!9857 (h!10734 (_ BitVec 64)) (t!16097 List!9861)) )
))
(declare-fun arrayNoDuplicates!0 (array!32546 (_ BitVec 32) List!9861) Bool)

(assert (=> b!507118 (= res!308237 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9858))))

(declare-fun b!507119 () Bool)

(declare-fun res!308234 () Bool)

(declare-fun e!296789 () Bool)

(assert (=> b!507119 (=> (not res!308234) (not e!296789))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507119 (= res!308234 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507120 () Bool)

(declare-fun e!296788 () Bool)

(assert (=> b!507120 (= e!296788 true)))

(declare-fun lt!231583 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4124 0))(
  ( (MissingZero!4124 (index!18684 (_ BitVec 32))) (Found!4124 (index!18685 (_ BitVec 32))) (Intermediate!4124 (undefined!4936 Bool) (index!18686 (_ BitVec 32)) (x!47704 (_ BitVec 32))) (Undefined!4124) (MissingVacant!4124 (index!18687 (_ BitVec 32))) )
))
(declare-fun lt!231589 () SeekEntryResult!4124)

(declare-fun lt!231586 () array!32546)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32546 (_ BitVec 32)) SeekEntryResult!4124)

(assert (=> b!507120 (= lt!231589 (seekEntryOrOpen!0 lt!231583 lt!231586 mask!3524))))

(assert (=> b!507120 false))

(declare-fun b!507121 () Bool)

(declare-fun e!296787 () Bool)

(assert (=> b!507121 (= e!296786 (not e!296787))))

(declare-fun res!308229 () Bool)

(assert (=> b!507121 (=> res!308229 e!296787)))

(declare-fun lt!231582 () SeekEntryResult!4124)

(declare-fun lt!231584 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32546 (_ BitVec 32)) SeekEntryResult!4124)

(assert (=> b!507121 (= res!308229 (= lt!231582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231584 lt!231583 lt!231586 mask!3524)))))

(declare-fun lt!231590 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507121 (= lt!231582 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231590 (select (arr!15650 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507121 (= lt!231584 (toIndex!0 lt!231583 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507121 (= lt!231583 (select (store (arr!15650 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507121 (= lt!231590 (toIndex!0 (select (arr!15650 a!3235) j!176) mask!3524))))

(assert (=> b!507121 (= lt!231586 (array!32547 (store (arr!15650 a!3235) i!1204 k!2280) (size!16014 a!3235)))))

(declare-fun e!296791 () Bool)

(assert (=> b!507121 e!296791))

(declare-fun res!308227 () Bool)

(assert (=> b!507121 (=> (not res!308227) (not e!296791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32546 (_ BitVec 32)) Bool)

(assert (=> b!507121 (= res!308227 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15528 0))(
  ( (Unit!15529) )
))
(declare-fun lt!231585 () Unit!15528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15528)

(assert (=> b!507121 (= lt!231585 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507122 () Bool)

(assert (=> b!507122 (= e!296789 e!296786)))

(declare-fun res!308233 () Bool)

(assert (=> b!507122 (=> (not res!308233) (not e!296786))))

(declare-fun lt!231588 () SeekEntryResult!4124)

(assert (=> b!507122 (= res!308233 (or (= lt!231588 (MissingZero!4124 i!1204)) (= lt!231588 (MissingVacant!4124 i!1204))))))

(assert (=> b!507122 (= lt!231588 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507123 () Bool)

(assert (=> b!507123 (= e!296791 (= (seekEntryOrOpen!0 (select (arr!15650 a!3235) j!176) a!3235 mask!3524) (Found!4124 j!176)))))

(declare-fun b!507124 () Bool)

(declare-fun res!308230 () Bool)

(assert (=> b!507124 (=> (not res!308230) (not e!296789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507124 (= res!308230 (validKeyInArray!0 (select (arr!15650 a!3235) j!176)))))

(declare-fun b!507125 () Bool)

(declare-fun res!308236 () Bool)

(assert (=> b!507125 (=> (not res!308236) (not e!296789))))

(assert (=> b!507125 (= res!308236 (and (= (size!16014 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16014 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16014 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507126 () Bool)

(declare-fun res!308235 () Bool)

(assert (=> b!507126 (=> (not res!308235) (not e!296789))))

(assert (=> b!507126 (= res!308235 (validKeyInArray!0 k!2280))))

(declare-fun b!507127 () Bool)

(assert (=> b!507127 (= e!296787 e!296788)))

(declare-fun res!308228 () Bool)

(assert (=> b!507127 (=> res!308228 e!296788)))

(declare-fun lt!231587 () Bool)

(assert (=> b!507127 (= res!308228 (or (and (not lt!231587) (undefined!4936 lt!231582)) (and (not lt!231587) (not (undefined!4936 lt!231582)))))))

(assert (=> b!507127 (= lt!231587 (not (is-Intermediate!4124 lt!231582)))))

(declare-fun b!507128 () Bool)

(declare-fun res!308231 () Bool)

(assert (=> b!507128 (=> (not res!308231) (not e!296786))))

(assert (=> b!507128 (= res!308231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!308232 () Bool)

(assert (=> start!45830 (=> (not res!308232) (not e!296789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45830 (= res!308232 (validMask!0 mask!3524))))

(assert (=> start!45830 e!296789))

(assert (=> start!45830 true))

(declare-fun array_inv!11424 (array!32546) Bool)

(assert (=> start!45830 (array_inv!11424 a!3235)))

(assert (= (and start!45830 res!308232) b!507125))

(assert (= (and b!507125 res!308236) b!507124))

(assert (= (and b!507124 res!308230) b!507126))

(assert (= (and b!507126 res!308235) b!507119))

(assert (= (and b!507119 res!308234) b!507122))

(assert (= (and b!507122 res!308233) b!507128))

(assert (= (and b!507128 res!308231) b!507118))

(assert (= (and b!507118 res!308237) b!507121))

(assert (= (and b!507121 res!308227) b!507123))

(assert (= (and b!507121 (not res!308229)) b!507127))

(assert (= (and b!507127 (not res!308228)) b!507120))

(declare-fun m!487907 () Bool)

(assert (=> b!507126 m!487907))

(declare-fun m!487909 () Bool)

(assert (=> b!507122 m!487909))

(declare-fun m!487911 () Bool)

(assert (=> b!507121 m!487911))

(declare-fun m!487913 () Bool)

(assert (=> b!507121 m!487913))

(declare-fun m!487915 () Bool)

(assert (=> b!507121 m!487915))

(declare-fun m!487917 () Bool)

(assert (=> b!507121 m!487917))

(declare-fun m!487919 () Bool)

(assert (=> b!507121 m!487919))

(declare-fun m!487921 () Bool)

(assert (=> b!507121 m!487921))

(declare-fun m!487923 () Bool)

(assert (=> b!507121 m!487923))

(assert (=> b!507121 m!487921))

(declare-fun m!487925 () Bool)

(assert (=> b!507121 m!487925))

(assert (=> b!507121 m!487921))

(declare-fun m!487927 () Bool)

(assert (=> b!507121 m!487927))

(declare-fun m!487929 () Bool)

(assert (=> b!507118 m!487929))

(declare-fun m!487931 () Bool)

(assert (=> b!507119 m!487931))

(declare-fun m!487933 () Bool)

(assert (=> b!507128 m!487933))

(declare-fun m!487935 () Bool)

(assert (=> start!45830 m!487935))

(declare-fun m!487937 () Bool)

(assert (=> start!45830 m!487937))

(assert (=> b!507123 m!487921))

(assert (=> b!507123 m!487921))

(declare-fun m!487939 () Bool)

(assert (=> b!507123 m!487939))

(assert (=> b!507124 m!487921))

(assert (=> b!507124 m!487921))

(declare-fun m!487941 () Bool)

(assert (=> b!507124 m!487941))

(declare-fun m!487943 () Bool)

(assert (=> b!507120 m!487943))

(push 1)

