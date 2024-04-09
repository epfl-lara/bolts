; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92326 () Bool)

(assert start!92326)

(declare-fun b!1048830 () Bool)

(declare-fun e!595012 () Bool)

(declare-fun e!595010 () Bool)

(assert (=> b!1048830 (= e!595012 e!595010)))

(declare-fun res!698072 () Bool)

(assert (=> b!1048830 (=> (not res!698072) (not e!595010))))

(declare-fun lt!463292 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048830 (= res!698072 (not (= lt!463292 i!1381)))))

(declare-datatypes ((array!66075 0))(
  ( (array!66076 (arr!31773 (Array (_ BitVec 32) (_ BitVec 64))) (size!32310 (_ BitVec 32))) )
))
(declare-fun lt!463294 () array!66075)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66075 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048830 (= lt!463292 (arrayScanForKey!0 lt!463294 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048831 () Bool)

(declare-fun res!698065 () Bool)

(declare-fun e!595008 () Bool)

(assert (=> b!1048831 (=> (not res!698065) (not e!595008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048831 (= res!698065 (validKeyInArray!0 k!2747))))

(declare-fun b!1048832 () Bool)

(declare-fun e!595007 () Bool)

(declare-fun a!3488 () array!66075)

(declare-fun arrayContainsKey!0 (array!66075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048832 (= e!595007 (arrayContainsKey!0 a!3488 k!2747 lt!463292))))

(declare-fun res!698068 () Bool)

(assert (=> start!92326 (=> (not res!698068) (not e!595008))))

(assert (=> start!92326 (= res!698068 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32310 a!3488)) (bvslt (size!32310 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92326 e!595008))

(assert (=> start!92326 true))

(declare-fun array_inv!24395 (array!66075) Bool)

(assert (=> start!92326 (array_inv!24395 a!3488)))

(declare-fun b!1048833 () Bool)

(assert (=> b!1048833 (= e!595008 e!595012)))

(declare-fun res!698067 () Bool)

(assert (=> b!1048833 (=> (not res!698067) (not e!595012))))

(assert (=> b!1048833 (= res!698067 (arrayContainsKey!0 lt!463294 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048833 (= lt!463294 (array!66076 (store (arr!31773 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32310 a!3488)))))

(declare-fun b!1048834 () Bool)

(declare-fun e!595013 () Bool)

(assert (=> b!1048834 (= e!595010 (not e!595013))))

(declare-fun res!698069 () Bool)

(assert (=> b!1048834 (=> res!698069 e!595013)))

(assert (=> b!1048834 (= res!698069 (bvsle lt!463292 i!1381))))

(declare-fun e!595011 () Bool)

(assert (=> b!1048834 e!595011))

(declare-fun res!698070 () Bool)

(assert (=> b!1048834 (=> (not res!698070) (not e!595011))))

(assert (=> b!1048834 (= res!698070 (= (select (store (arr!31773 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463292) k!2747))))

(declare-fun b!1048835 () Bool)

(declare-fun res!698071 () Bool)

(assert (=> b!1048835 (=> (not res!698071) (not e!595008))))

(declare-datatypes ((List!22216 0))(
  ( (Nil!22213) (Cons!22212 (h!23421 (_ BitVec 64)) (t!31530 List!22216)) )
))
(declare-fun arrayNoDuplicates!0 (array!66075 (_ BitVec 32) List!22216) Bool)

(assert (=> b!1048835 (= res!698071 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22213))))

(declare-fun b!1048836 () Bool)

(assert (=> b!1048836 (= e!595013 true)))

(assert (=> b!1048836 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22213)))

(declare-datatypes ((Unit!34275 0))(
  ( (Unit!34276) )
))
(declare-fun lt!463293 () Unit!34275)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66075 (_ BitVec 32) (_ BitVec 32)) Unit!34275)

(assert (=> b!1048836 (= lt!463293 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1048837 () Bool)

(declare-fun res!698073 () Bool)

(assert (=> b!1048837 (=> (not res!698073) (not e!595008))))

(assert (=> b!1048837 (= res!698073 (= (select (arr!31773 a!3488) i!1381) k!2747))))

(declare-fun b!1048838 () Bool)

(assert (=> b!1048838 (= e!595011 e!595007)))

(declare-fun res!698066 () Bool)

(assert (=> b!1048838 (=> res!698066 e!595007)))

(assert (=> b!1048838 (= res!698066 (bvsle lt!463292 i!1381))))

(assert (= (and start!92326 res!698068) b!1048835))

(assert (= (and b!1048835 res!698071) b!1048831))

(assert (= (and b!1048831 res!698065) b!1048837))

(assert (= (and b!1048837 res!698073) b!1048833))

(assert (= (and b!1048833 res!698067) b!1048830))

(assert (= (and b!1048830 res!698072) b!1048834))

(assert (= (and b!1048834 res!698070) b!1048838))

(assert (= (and b!1048838 (not res!698066)) b!1048832))

(assert (= (and b!1048834 (not res!698069)) b!1048836))

(declare-fun m!969833 () Bool)

(assert (=> b!1048835 m!969833))

(declare-fun m!969835 () Bool)

(assert (=> b!1048834 m!969835))

(declare-fun m!969837 () Bool)

(assert (=> b!1048834 m!969837))

(declare-fun m!969839 () Bool)

(assert (=> b!1048831 m!969839))

(declare-fun m!969841 () Bool)

(assert (=> b!1048830 m!969841))

(declare-fun m!969843 () Bool)

(assert (=> start!92326 m!969843))

(declare-fun m!969845 () Bool)

(assert (=> b!1048832 m!969845))

(declare-fun m!969847 () Bool)

(assert (=> b!1048836 m!969847))

(declare-fun m!969849 () Bool)

(assert (=> b!1048836 m!969849))

(declare-fun m!969851 () Bool)

(assert (=> b!1048837 m!969851))

(declare-fun m!969853 () Bool)

(assert (=> b!1048833 m!969853))

(assert (=> b!1048833 m!969835))

(push 1)

