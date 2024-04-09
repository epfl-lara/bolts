; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26694 () Bool)

(assert start!26694)

(declare-fun b!276906 () Bool)

(declare-datatypes ((array!13780 0))(
  ( (array!13781 (arr!6539 (Array (_ BitVec 32) (_ BitVec 64))) (size!6891 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13780)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun e!176835 () Bool)

(assert (=> b!276906 (= e!176835 (and (= startIndex!26 i!1267) (bvslt startIndex!26 (bvsub (size!6891 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000) (bvsge (bvsub (size!6891 a!3325) (bvadd #b00000000000000000000000000000001 startIndex!26)) (bvsub (size!6891 a!3325) startIndex!26))))))

(declare-fun b!276907 () Bool)

(declare-fun res!140940 () Bool)

(assert (=> b!276907 (=> (not res!140940) (not e!176835))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13780 (_ BitVec 32)) Bool)

(assert (=> b!276907 (= res!140940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276908 () Bool)

(declare-fun res!140934 () Bool)

(declare-fun e!176834 () Bool)

(assert (=> b!276908 (=> (not res!140934) (not e!176834))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276908 (= res!140934 (validKeyInArray!0 k0!2581))))

(declare-fun res!140937 () Bool)

(assert (=> start!26694 (=> (not res!140937) (not e!176834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26694 (= res!140937 (validMask!0 mask!3868))))

(assert (=> start!26694 e!176834))

(declare-fun array_inv!4493 (array!13780) Bool)

(assert (=> start!26694 (array_inv!4493 a!3325)))

(assert (=> start!26694 true))

(declare-fun b!276909 () Bool)

(declare-fun res!140939 () Bool)

(assert (=> b!276909 (=> (not res!140939) (not e!176834))))

(assert (=> b!276909 (= res!140939 (and (= (size!6891 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6891 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6891 a!3325))))))

(declare-fun b!276910 () Bool)

(declare-fun res!140935 () Bool)

(assert (=> b!276910 (=> (not res!140935) (not e!176834))))

(declare-datatypes ((List!4368 0))(
  ( (Nil!4365) (Cons!4364 (h!5031 (_ BitVec 64)) (t!9458 List!4368)) )
))
(declare-fun arrayNoDuplicates!0 (array!13780 (_ BitVec 32) List!4368) Bool)

(assert (=> b!276910 (= res!140935 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4365))))

(declare-fun b!276911 () Bool)

(declare-fun res!140936 () Bool)

(assert (=> b!276911 (=> (not res!140936) (not e!176834))))

(declare-fun arrayContainsKey!0 (array!13780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276911 (= res!140936 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276912 () Bool)

(assert (=> b!276912 (= e!176834 e!176835)))

(declare-fun res!140938 () Bool)

(assert (=> b!276912 (=> (not res!140938) (not e!176835))))

(declare-datatypes ((SeekEntryResult!1708 0))(
  ( (MissingZero!1708 (index!9002 (_ BitVec 32))) (Found!1708 (index!9003 (_ BitVec 32))) (Intermediate!1708 (undefined!2520 Bool) (index!9004 (_ BitVec 32)) (x!27225 (_ BitVec 32))) (Undefined!1708) (MissingVacant!1708 (index!9005 (_ BitVec 32))) )
))
(declare-fun lt!137816 () SeekEntryResult!1708)

(assert (=> b!276912 (= res!140938 (or (= lt!137816 (MissingZero!1708 i!1267)) (= lt!137816 (MissingVacant!1708 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13780 (_ BitVec 32)) SeekEntryResult!1708)

(assert (=> b!276912 (= lt!137816 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26694 res!140937) b!276909))

(assert (= (and b!276909 res!140939) b!276908))

(assert (= (and b!276908 res!140934) b!276910))

(assert (= (and b!276910 res!140935) b!276911))

(assert (= (and b!276911 res!140936) b!276912))

(assert (= (and b!276912 res!140938) b!276907))

(assert (= (and b!276907 res!140940) b!276906))

(declare-fun m!292161 () Bool)

(assert (=> b!276908 m!292161))

(declare-fun m!292163 () Bool)

(assert (=> b!276907 m!292163))

(declare-fun m!292165 () Bool)

(assert (=> b!276910 m!292165))

(declare-fun m!292167 () Bool)

(assert (=> b!276912 m!292167))

(declare-fun m!292169 () Bool)

(assert (=> start!26694 m!292169))

(declare-fun m!292171 () Bool)

(assert (=> start!26694 m!292171))

(declare-fun m!292173 () Bool)

(assert (=> b!276911 m!292173))

(check-sat (not b!276907) (not b!276910) (not b!276911) (not b!276912) (not start!26694) (not b!276908))
(check-sat)
