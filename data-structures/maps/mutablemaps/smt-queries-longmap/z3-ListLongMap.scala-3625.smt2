; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50008 () Bool)

(assert start!50008)

(declare-fun b!547930 () Bool)

(declare-fun res!341489 () Bool)

(declare-fun e!316584 () Bool)

(assert (=> b!547930 (=> (not res!341489) (not e!316584))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547930 (= res!341489 (validKeyInArray!0 k0!1914))))

(declare-fun b!547931 () Bool)

(declare-fun res!341492 () Bool)

(assert (=> b!547931 (=> (not res!341492) (not e!316584))))

(declare-datatypes ((array!34544 0))(
  ( (array!34545 (arr!16588 (Array (_ BitVec 32) (_ BitVec 64))) (size!16952 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34544)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!547931 (= res!341492 (validKeyInArray!0 (select (arr!16588 a!3118) j!142)))))

(declare-fun b!547932 () Bool)

(declare-fun res!341491 () Bool)

(assert (=> b!547932 (=> (not res!341491) (not e!316584))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547932 (= res!341491 (and (= (size!16952 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16952 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16952 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547933 () Bool)

(declare-fun res!341488 () Bool)

(declare-fun e!316585 () Bool)

(assert (=> b!547933 (=> (not res!341488) (not e!316585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34544 (_ BitVec 32)) Bool)

(assert (=> b!547933 (= res!341488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!341490 () Bool)

(assert (=> start!50008 (=> (not res!341490) (not e!316584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50008 (= res!341490 (validMask!0 mask!3119))))

(assert (=> start!50008 e!316584))

(assert (=> start!50008 true))

(declare-fun array_inv!12362 (array!34544) Bool)

(assert (=> start!50008 (array_inv!12362 a!3118)))

(declare-fun b!547934 () Bool)

(declare-fun res!341493 () Bool)

(assert (=> b!547934 (=> (not res!341493) (not e!316584))))

(declare-fun arrayContainsKey!0 (array!34544 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547934 (= res!341493 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547935 () Bool)

(assert (=> b!547935 (= e!316585 false)))

(declare-fun lt!249691 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!547935 (= lt!249691 (toIndex!0 (select (arr!16588 a!3118) j!142) mask!3119))))

(declare-fun b!547936 () Bool)

(assert (=> b!547936 (= e!316584 e!316585)))

(declare-fun res!341494 () Bool)

(assert (=> b!547936 (=> (not res!341494) (not e!316585))))

(declare-datatypes ((SeekEntryResult!5044 0))(
  ( (MissingZero!5044 (index!22403 (_ BitVec 32))) (Found!5044 (index!22404 (_ BitVec 32))) (Intermediate!5044 (undefined!5856 Bool) (index!22405 (_ BitVec 32)) (x!51371 (_ BitVec 32))) (Undefined!5044) (MissingVacant!5044 (index!22406 (_ BitVec 32))) )
))
(declare-fun lt!249692 () SeekEntryResult!5044)

(assert (=> b!547936 (= res!341494 (or (= lt!249692 (MissingZero!5044 i!1132)) (= lt!249692 (MissingVacant!5044 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34544 (_ BitVec 32)) SeekEntryResult!5044)

(assert (=> b!547936 (= lt!249692 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!547937 () Bool)

(declare-fun res!341495 () Bool)

(assert (=> b!547937 (=> (not res!341495) (not e!316585))))

(declare-datatypes ((List!10721 0))(
  ( (Nil!10718) (Cons!10717 (h!11684 (_ BitVec 64)) (t!16957 List!10721)) )
))
(declare-fun arrayNoDuplicates!0 (array!34544 (_ BitVec 32) List!10721) Bool)

(assert (=> b!547937 (= res!341495 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10718))))

(assert (= (and start!50008 res!341490) b!547932))

(assert (= (and b!547932 res!341491) b!547931))

(assert (= (and b!547931 res!341492) b!547930))

(assert (= (and b!547930 res!341489) b!547934))

(assert (= (and b!547934 res!341493) b!547936))

(assert (= (and b!547936 res!341494) b!547933))

(assert (= (and b!547933 res!341488) b!547937))

(assert (= (and b!547937 res!341495) b!547935))

(declare-fun m!525069 () Bool)

(assert (=> b!547933 m!525069))

(declare-fun m!525071 () Bool)

(assert (=> start!50008 m!525071))

(declare-fun m!525073 () Bool)

(assert (=> start!50008 m!525073))

(declare-fun m!525075 () Bool)

(assert (=> b!547931 m!525075))

(assert (=> b!547931 m!525075))

(declare-fun m!525077 () Bool)

(assert (=> b!547931 m!525077))

(declare-fun m!525079 () Bool)

(assert (=> b!547934 m!525079))

(declare-fun m!525081 () Bool)

(assert (=> b!547930 m!525081))

(assert (=> b!547935 m!525075))

(assert (=> b!547935 m!525075))

(declare-fun m!525083 () Bool)

(assert (=> b!547935 m!525083))

(declare-fun m!525085 () Bool)

(assert (=> b!547937 m!525085))

(declare-fun m!525087 () Bool)

(assert (=> b!547936 m!525087))

(check-sat (not b!547935) (not b!547931) (not b!547937) (not b!547934) (not start!50008) (not b!547930) (not b!547933) (not b!547936))
(check-sat)
