; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92338 () Bool)

(assert start!92338)

(declare-fun b!1048992 () Bool)

(declare-fun res!698231 () Bool)

(declare-fun e!595137 () Bool)

(assert (=> b!1048992 (=> (not res!698231) (not e!595137))))

(declare-datatypes ((array!66087 0))(
  ( (array!66088 (arr!31779 (Array (_ BitVec 32) (_ BitVec 64))) (size!32316 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66087)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048992 (= res!698231 (= (select (arr!31779 a!3488) i!1381) k!2747))))

(declare-fun b!1048993 () Bool)

(declare-fun res!698233 () Bool)

(assert (=> b!1048993 (=> (not res!698233) (not e!595137))))

(declare-datatypes ((List!22222 0))(
  ( (Nil!22219) (Cons!22218 (h!23427 (_ BitVec 64)) (t!31536 List!22222)) )
))
(declare-fun arrayNoDuplicates!0 (array!66087 (_ BitVec 32) List!22222) Bool)

(assert (=> b!1048993 (= res!698233 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22219))))

(declare-fun b!1048994 () Bool)

(declare-fun e!595133 () Bool)

(declare-fun e!595135 () Bool)

(assert (=> b!1048994 (= e!595133 e!595135)))

(declare-fun res!698232 () Bool)

(assert (=> b!1048994 (=> res!698232 e!595135)))

(declare-fun lt!463346 () (_ BitVec 32))

(assert (=> b!1048994 (= res!698232 (bvsle lt!463346 i!1381))))

(declare-fun b!1048995 () Bool)

(declare-fun e!595136 () Bool)

(assert (=> b!1048995 (= e!595136 true)))

(assert (=> b!1048995 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22219)))

(declare-datatypes ((Unit!34287 0))(
  ( (Unit!34288) )
))
(declare-fun lt!463348 () Unit!34287)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66087 (_ BitVec 32) (_ BitVec 32)) Unit!34287)

(assert (=> b!1048995 (= lt!463348 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1048996 () Bool)

(declare-fun e!595139 () Bool)

(declare-fun e!595138 () Bool)

(assert (=> b!1048996 (= e!595139 e!595138)))

(declare-fun res!698227 () Bool)

(assert (=> b!1048996 (=> (not res!698227) (not e!595138))))

(assert (=> b!1048996 (= res!698227 (not (= lt!463346 i!1381)))))

(declare-fun lt!463347 () array!66087)

(declare-fun arrayScanForKey!0 (array!66087 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048996 (= lt!463346 (arrayScanForKey!0 lt!463347 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048997 () Bool)

(assert (=> b!1048997 (= e!595138 (not e!595136))))

(declare-fun res!698235 () Bool)

(assert (=> b!1048997 (=> res!698235 e!595136)))

(assert (=> b!1048997 (= res!698235 (bvsle lt!463346 i!1381))))

(assert (=> b!1048997 e!595133))

(declare-fun res!698228 () Bool)

(assert (=> b!1048997 (=> (not res!698228) (not e!595133))))

(assert (=> b!1048997 (= res!698228 (= (select (store (arr!31779 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463346) k!2747))))

(declare-fun b!1048998 () Bool)

(declare-fun arrayContainsKey!0 (array!66087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048998 (= e!595135 (arrayContainsKey!0 a!3488 k!2747 lt!463346))))

(declare-fun b!1048999 () Bool)

(assert (=> b!1048999 (= e!595137 e!595139)))

(declare-fun res!698229 () Bool)

(assert (=> b!1048999 (=> (not res!698229) (not e!595139))))

(assert (=> b!1048999 (= res!698229 (arrayContainsKey!0 lt!463347 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048999 (= lt!463347 (array!66088 (store (arr!31779 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32316 a!3488)))))

(declare-fun b!1049000 () Bool)

(declare-fun res!698230 () Bool)

(assert (=> b!1049000 (=> (not res!698230) (not e!595137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049000 (= res!698230 (validKeyInArray!0 k!2747))))

(declare-fun res!698234 () Bool)

(assert (=> start!92338 (=> (not res!698234) (not e!595137))))

(assert (=> start!92338 (= res!698234 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32316 a!3488)) (bvslt (size!32316 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92338 e!595137))

(assert (=> start!92338 true))

(declare-fun array_inv!24401 (array!66087) Bool)

(assert (=> start!92338 (array_inv!24401 a!3488)))

(assert (= (and start!92338 res!698234) b!1048993))

(assert (= (and b!1048993 res!698233) b!1049000))

(assert (= (and b!1049000 res!698230) b!1048992))

(assert (= (and b!1048992 res!698231) b!1048999))

(assert (= (and b!1048999 res!698229) b!1048996))

(assert (= (and b!1048996 res!698227) b!1048997))

(assert (= (and b!1048997 res!698228) b!1048994))

(assert (= (and b!1048994 (not res!698232)) b!1048998))

(assert (= (and b!1048997 (not res!698235)) b!1048995))

(declare-fun m!969965 () Bool)

(assert (=> b!1048992 m!969965))

(declare-fun m!969967 () Bool)

(assert (=> b!1049000 m!969967))

(declare-fun m!969969 () Bool)

(assert (=> b!1048993 m!969969))

(declare-fun m!969971 () Bool)

(assert (=> start!92338 m!969971))

(declare-fun m!969973 () Bool)

(assert (=> b!1048999 m!969973))

(declare-fun m!969975 () Bool)

(assert (=> b!1048999 m!969975))

(declare-fun m!969977 () Bool)

(assert (=> b!1048995 m!969977))

(declare-fun m!969979 () Bool)

(assert (=> b!1048995 m!969979))

(declare-fun m!969981 () Bool)

(assert (=> b!1048998 m!969981))

(assert (=> b!1048997 m!969975))

(declare-fun m!969983 () Bool)

(assert (=> b!1048997 m!969983))

(declare-fun m!969985 () Bool)

(assert (=> b!1048996 m!969985))

(push 1)

