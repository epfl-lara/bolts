; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27104 () Bool)

(assert start!27104)

(declare-fun b!279903 () Bool)

(declare-fun res!143012 () Bool)

(declare-fun e!178407 () Bool)

(assert (=> b!279903 (=> (not res!143012) (not e!178407))))

(declare-datatypes ((array!13911 0))(
  ( (array!13912 (arr!6597 (Array (_ BitVec 32) (_ BitVec 64))) (size!6949 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13911)

(assert (=> b!279903 (= res!143012 (and (bvslt (size!6949 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6949 a!3325))))))

(declare-fun b!279904 () Bool)

(declare-fun res!143015 () Bool)

(declare-fun e!178406 () Bool)

(assert (=> b!279904 (=> (not res!143015) (not e!178406))))

(declare-datatypes ((List!4426 0))(
  ( (Nil!4423) (Cons!4422 (h!5092 (_ BitVec 64)) (t!9516 List!4426)) )
))
(declare-fun arrayNoDuplicates!0 (array!13911 (_ BitVec 32) List!4426) Bool)

(assert (=> b!279904 (= res!143015 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4423))))

(declare-fun b!279905 () Bool)

(declare-fun res!143017 () Bool)

(assert (=> b!279905 (=> (not res!143017) (not e!178406))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13911 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279905 (= res!143017 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!279906 () Bool)

(declare-fun res!143019 () Bool)

(assert (=> b!279906 (=> (not res!143019) (not e!178407))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13911 (_ BitVec 32)) Bool)

(assert (=> b!279906 (= res!143019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279907 () Bool)

(declare-fun res!143014 () Bool)

(assert (=> b!279907 (=> (not res!143014) (not e!178407))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!279907 (= res!143014 (not (= startIndex!26 i!1267)))))

(declare-fun b!279908 () Bool)

(declare-fun res!143021 () Bool)

(assert (=> b!279908 (=> (not res!143021) (not e!178406))))

(assert (=> b!279908 (= res!143021 (and (= (size!6949 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6949 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6949 a!3325))))))

(declare-fun b!279909 () Bool)

(declare-fun res!143018 () Bool)

(assert (=> b!279909 (=> (not res!143018) (not e!178407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279909 (= res!143018 (validKeyInArray!0 (select (arr!6597 a!3325) startIndex!26)))))

(declare-fun b!279910 () Bool)

(declare-fun res!143010 () Bool)

(assert (=> b!279910 (=> (not res!143010) (not e!178407))))

(declare-fun contains!1976 (List!4426 (_ BitVec 64)) Bool)

(assert (=> b!279910 (= res!143010 (not (contains!1976 Nil!4423 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279911 () Bool)

(assert (=> b!279911 (= e!178406 e!178407)))

(declare-fun res!143020 () Bool)

(assert (=> b!279911 (=> (not res!143020) (not e!178407))))

(declare-datatypes ((SeekEntryResult!1766 0))(
  ( (MissingZero!1766 (index!9234 (_ BitVec 32))) (Found!1766 (index!9235 (_ BitVec 32))) (Intermediate!1766 (undefined!2578 Bool) (index!9236 (_ BitVec 32)) (x!27444 (_ BitVec 32))) (Undefined!1766) (MissingVacant!1766 (index!9237 (_ BitVec 32))) )
))
(declare-fun lt!138772 () SeekEntryResult!1766)

(assert (=> b!279911 (= res!143020 (or (= lt!138772 (MissingZero!1766 i!1267)) (= lt!138772 (MissingVacant!1766 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13911 (_ BitVec 32)) SeekEntryResult!1766)

(assert (=> b!279911 (= lt!138772 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!279912 () Bool)

(declare-fun res!143011 () Bool)

(assert (=> b!279912 (=> (not res!143011) (not e!178407))))

(declare-fun noDuplicate!160 (List!4426) Bool)

(assert (=> b!279912 (= res!143011 (noDuplicate!160 Nil!4423))))

(declare-fun b!279913 () Bool)

(declare-fun res!143016 () Bool)

(assert (=> b!279913 (=> (not res!143016) (not e!178407))))

(assert (=> b!279913 (= res!143016 (not (contains!1976 Nil!4423 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!143013 () Bool)

(assert (=> start!27104 (=> (not res!143013) (not e!178406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27104 (= res!143013 (validMask!0 mask!3868))))

(assert (=> start!27104 e!178406))

(declare-fun array_inv!4551 (array!13911) Bool)

(assert (=> start!27104 (array_inv!4551 a!3325)))

(assert (=> start!27104 true))

(declare-fun b!279914 () Bool)

(declare-fun res!143022 () Bool)

(assert (=> b!279914 (=> (not res!143022) (not e!178406))))

(assert (=> b!279914 (= res!143022 (validKeyInArray!0 k!2581))))

(declare-fun b!279915 () Bool)

(assert (=> b!279915 (= e!178407 false)))

(declare-fun lt!138773 () Bool)

(assert (=> b!279915 (= lt!138773 (contains!1976 Nil!4423 k!2581))))

(assert (= (and start!27104 res!143013) b!279908))

(assert (= (and b!279908 res!143021) b!279914))

(assert (= (and b!279914 res!143022) b!279904))

(assert (= (and b!279904 res!143015) b!279905))

(assert (= (and b!279905 res!143017) b!279911))

(assert (= (and b!279911 res!143020) b!279906))

(assert (= (and b!279906 res!143019) b!279907))

(assert (= (and b!279907 res!143014) b!279909))

(assert (= (and b!279909 res!143018) b!279903))

(assert (= (and b!279903 res!143012) b!279912))

(assert (= (and b!279912 res!143011) b!279910))

(assert (= (and b!279910 res!143010) b!279913))

(assert (= (and b!279913 res!143016) b!279915))

(declare-fun m!294539 () Bool)

(assert (=> b!279909 m!294539))

(assert (=> b!279909 m!294539))

(declare-fun m!294541 () Bool)

(assert (=> b!279909 m!294541))

(declare-fun m!294543 () Bool)

(assert (=> b!279911 m!294543))

(declare-fun m!294545 () Bool)

(assert (=> b!279915 m!294545))

(declare-fun m!294547 () Bool)

(assert (=> start!27104 m!294547))

(declare-fun m!294549 () Bool)

(assert (=> start!27104 m!294549))

(declare-fun m!294551 () Bool)

(assert (=> b!279904 m!294551))

(declare-fun m!294553 () Bool)

(assert (=> b!279914 m!294553))

(declare-fun m!294555 () Bool)

(assert (=> b!279905 m!294555))

(declare-fun m!294557 () Bool)

(assert (=> b!279912 m!294557))

(declare-fun m!294559 () Bool)

(assert (=> b!279906 m!294559))

(declare-fun m!294561 () Bool)

(assert (=> b!279910 m!294561))

(declare-fun m!294563 () Bool)

(assert (=> b!279913 m!294563))

(push 1)

