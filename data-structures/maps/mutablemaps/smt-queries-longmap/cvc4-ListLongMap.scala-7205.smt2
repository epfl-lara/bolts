; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92332 () Bool)

(assert start!92332)

(declare-fun b!1048911 () Bool)

(declare-fun e!595076 () Bool)

(declare-fun e!595072 () Bool)

(assert (=> b!1048911 (= e!595076 e!595072)))

(declare-fun res!698153 () Bool)

(assert (=> b!1048911 (=> (not res!698153) (not e!595072))))

(declare-fun lt!463319 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048911 (= res!698153 (not (= lt!463319 i!1381)))))

(declare-datatypes ((array!66081 0))(
  ( (array!66082 (arr!31776 (Array (_ BitVec 32) (_ BitVec 64))) (size!32313 (_ BitVec 32))) )
))
(declare-fun lt!463321 () array!66081)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66081 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048911 (= lt!463319 (arrayScanForKey!0 lt!463321 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048912 () Bool)

(declare-fun e!595074 () Bool)

(assert (=> b!1048912 (= e!595074 e!595076)))

(declare-fun res!698152 () Bool)

(assert (=> b!1048912 (=> (not res!698152) (not e!595076))))

(declare-fun arrayContainsKey!0 (array!66081 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048912 (= res!698152 (arrayContainsKey!0 lt!463321 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66081)

(assert (=> b!1048912 (= lt!463321 (array!66082 (store (arr!31776 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32313 a!3488)))))

(declare-fun b!1048913 () Bool)

(declare-fun e!595075 () Bool)

(assert (=> b!1048913 (= e!595075 (arrayContainsKey!0 a!3488 k!2747 lt!463319))))

(declare-fun b!1048914 () Bool)

(declare-fun res!698148 () Bool)

(assert (=> b!1048914 (=> (not res!698148) (not e!595074))))

(assert (=> b!1048914 (= res!698148 (= (select (arr!31776 a!3488) i!1381) k!2747))))

(declare-fun b!1048915 () Bool)

(declare-fun e!595073 () Bool)

(assert (=> b!1048915 (= e!595073 true)))

(declare-datatypes ((List!22219 0))(
  ( (Nil!22216) (Cons!22215 (h!23424 (_ BitVec 64)) (t!31533 List!22219)) )
))
(declare-fun arrayNoDuplicates!0 (array!66081 (_ BitVec 32) List!22219) Bool)

(assert (=> b!1048915 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22216)))

(declare-datatypes ((Unit!34281 0))(
  ( (Unit!34282) )
))
(declare-fun lt!463320 () Unit!34281)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66081 (_ BitVec 32) (_ BitVec 32)) Unit!34281)

(assert (=> b!1048915 (= lt!463320 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1048916 () Bool)

(declare-fun res!698147 () Bool)

(assert (=> b!1048916 (=> (not res!698147) (not e!595074))))

(assert (=> b!1048916 (= res!698147 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22216))))

(declare-fun b!1048917 () Bool)

(declare-fun e!595071 () Bool)

(assert (=> b!1048917 (= e!595071 e!595075)))

(declare-fun res!698149 () Bool)

(assert (=> b!1048917 (=> res!698149 e!595075)))

(assert (=> b!1048917 (= res!698149 (bvsle lt!463319 i!1381))))

(declare-fun res!698150 () Bool)

(assert (=> start!92332 (=> (not res!698150) (not e!595074))))

(assert (=> start!92332 (= res!698150 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32313 a!3488)) (bvslt (size!32313 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92332 e!595074))

(assert (=> start!92332 true))

(declare-fun array_inv!24398 (array!66081) Bool)

(assert (=> start!92332 (array_inv!24398 a!3488)))

(declare-fun b!1048918 () Bool)

(declare-fun res!698154 () Bool)

(assert (=> b!1048918 (=> (not res!698154) (not e!595074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048918 (= res!698154 (validKeyInArray!0 k!2747))))

(declare-fun b!1048919 () Bool)

(assert (=> b!1048919 (= e!595072 (not e!595073))))

(declare-fun res!698146 () Bool)

(assert (=> b!1048919 (=> res!698146 e!595073)))

(assert (=> b!1048919 (= res!698146 (bvsle lt!463319 i!1381))))

(assert (=> b!1048919 e!595071))

(declare-fun res!698151 () Bool)

(assert (=> b!1048919 (=> (not res!698151) (not e!595071))))

(assert (=> b!1048919 (= res!698151 (= (select (store (arr!31776 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463319) k!2747))))

(assert (= (and start!92332 res!698150) b!1048916))

(assert (= (and b!1048916 res!698147) b!1048918))

(assert (= (and b!1048918 res!698154) b!1048914))

(assert (= (and b!1048914 res!698148) b!1048912))

(assert (= (and b!1048912 res!698152) b!1048911))

(assert (= (and b!1048911 res!698153) b!1048919))

(assert (= (and b!1048919 res!698151) b!1048917))

(assert (= (and b!1048917 (not res!698149)) b!1048913))

(assert (= (and b!1048919 (not res!698146)) b!1048915))

(declare-fun m!969899 () Bool)

(assert (=> b!1048915 m!969899))

(declare-fun m!969901 () Bool)

(assert (=> b!1048915 m!969901))

(declare-fun m!969903 () Bool)

(assert (=> start!92332 m!969903))

(declare-fun m!969905 () Bool)

(assert (=> b!1048918 m!969905))

(declare-fun m!969907 () Bool)

(assert (=> b!1048916 m!969907))

(declare-fun m!969909 () Bool)

(assert (=> b!1048913 m!969909))

(declare-fun m!969911 () Bool)

(assert (=> b!1048911 m!969911))

(declare-fun m!969913 () Bool)

(assert (=> b!1048914 m!969913))

(declare-fun m!969915 () Bool)

(assert (=> b!1048912 m!969915))

(declare-fun m!969917 () Bool)

(assert (=> b!1048912 m!969917))

(assert (=> b!1048919 m!969917))

(declare-fun m!969919 () Bool)

(assert (=> b!1048919 m!969919))

(push 1)

