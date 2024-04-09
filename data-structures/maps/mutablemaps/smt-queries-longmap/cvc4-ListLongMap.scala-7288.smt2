; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93160 () Bool)

(assert start!93160)

(declare-fun b!1056259 () Bool)

(declare-fun res!705146 () Bool)

(declare-fun e!600509 () Bool)

(assert (=> b!1056259 (=> (not res!705146) (not e!600509))))

(declare-datatypes ((array!66606 0))(
  ( (array!66607 (arr!32025 (Array (_ BitVec 32) (_ BitVec 64))) (size!32562 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66606)

(declare-datatypes ((List!22468 0))(
  ( (Nil!22465) (Cons!22464 (h!23673 (_ BitVec 64)) (t!31782 List!22468)) )
))
(declare-fun arrayNoDuplicates!0 (array!66606 (_ BitVec 32) List!22468) Bool)

(assert (=> b!1056259 (= res!705146 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22465))))

(declare-fun b!1056260 () Bool)

(declare-fun res!705153 () Bool)

(assert (=> b!1056260 (=> (not res!705153) (not e!600509))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056260 (= res!705153 (validKeyInArray!0 k!2747))))

(declare-fun res!705150 () Bool)

(assert (=> start!93160 (=> (not res!705150) (not e!600509))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!93160 (= res!705150 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32562 a!3488)) (bvslt (size!32562 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93160 e!600509))

(assert (=> start!93160 true))

(declare-fun array_inv!24647 (array!66606) Bool)

(assert (=> start!93160 (array_inv!24647 a!3488)))

(declare-fun b!1056261 () Bool)

(declare-fun e!600508 () Bool)

(declare-fun lt!466060 () (_ BitVec 32))

(assert (=> b!1056261 (= e!600508 (not (or (bvsgt lt!466060 i!1381) (bvsle i!1381 lt!466060) (bvsle #b00000000000000000000000000000000 (size!32562 a!3488)))))))

(declare-fun e!600512 () Bool)

(assert (=> b!1056261 e!600512))

(declare-fun res!705152 () Bool)

(assert (=> b!1056261 (=> (not res!705152) (not e!600512))))

(assert (=> b!1056261 (= res!705152 (= (select (store (arr!32025 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466060) k!2747))))

(declare-fun b!1056262 () Bool)

(declare-fun e!600510 () Bool)

(assert (=> b!1056262 (= e!600512 e!600510)))

(declare-fun res!705147 () Bool)

(assert (=> b!1056262 (=> res!705147 e!600510)))

(assert (=> b!1056262 (= res!705147 (or (bvsgt lt!466060 i!1381) (bvsle i!1381 lt!466060)))))

(declare-fun b!1056263 () Bool)

(declare-fun arrayContainsKey!0 (array!66606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056263 (= e!600510 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056264 () Bool)

(declare-fun res!705151 () Bool)

(assert (=> b!1056264 (=> (not res!705151) (not e!600509))))

(assert (=> b!1056264 (= res!705151 (= (select (arr!32025 a!3488) i!1381) k!2747))))

(declare-fun b!1056265 () Bool)

(declare-fun e!600511 () Bool)

(assert (=> b!1056265 (= e!600509 e!600511)))

(declare-fun res!705148 () Bool)

(assert (=> b!1056265 (=> (not res!705148) (not e!600511))))

(declare-fun lt!466059 () array!66606)

(assert (=> b!1056265 (= res!705148 (arrayContainsKey!0 lt!466059 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056265 (= lt!466059 (array!66607 (store (arr!32025 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32562 a!3488)))))

(declare-fun b!1056266 () Bool)

(assert (=> b!1056266 (= e!600511 e!600508)))

(declare-fun res!705149 () Bool)

(assert (=> b!1056266 (=> (not res!705149) (not e!600508))))

(assert (=> b!1056266 (= res!705149 (not (= lt!466060 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66606 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056266 (= lt!466060 (arrayScanForKey!0 lt!466059 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93160 res!705150) b!1056259))

(assert (= (and b!1056259 res!705146) b!1056260))

(assert (= (and b!1056260 res!705153) b!1056264))

(assert (= (and b!1056264 res!705151) b!1056265))

(assert (= (and b!1056265 res!705148) b!1056266))

(assert (= (and b!1056266 res!705149) b!1056261))

(assert (= (and b!1056261 res!705152) b!1056262))

(assert (= (and b!1056262 (not res!705147)) b!1056263))

(declare-fun m!976293 () Bool)

(assert (=> b!1056266 m!976293))

(declare-fun m!976295 () Bool)

(assert (=> b!1056260 m!976295))

(declare-fun m!976297 () Bool)

(assert (=> b!1056264 m!976297))

(declare-fun m!976299 () Bool)

(assert (=> b!1056261 m!976299))

(declare-fun m!976301 () Bool)

(assert (=> b!1056261 m!976301))

(declare-fun m!976303 () Bool)

(assert (=> b!1056263 m!976303))

(declare-fun m!976305 () Bool)

(assert (=> b!1056265 m!976305))

(assert (=> b!1056265 m!976299))

(declare-fun m!976307 () Bool)

(assert (=> start!93160 m!976307))

(declare-fun m!976309 () Bool)

(assert (=> b!1056259 m!976309))

(push 1)

(assert (not b!1056263))

(assert (not start!93160))

(assert (not b!1056260))

(assert (not b!1056259))

