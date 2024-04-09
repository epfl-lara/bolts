; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85512 () Bool)

(assert start!85512)

(declare-fun b!993396 () Bool)

(declare-fun res!664122 () Bool)

(declare-fun e!560609 () Bool)

(assert (=> b!993396 (=> (not res!664122) (not e!560609))))

(declare-datatypes ((List!21058 0))(
  ( (Nil!21055) (Cons!21054 (h!22216 (_ BitVec 64)) (t!30067 List!21058)) )
))
(declare-fun acc!919 () List!21058)

(declare-fun contains!5815 (List!21058 (_ BitVec 64)) Bool)

(assert (=> b!993396 (= res!664122 (not (contains!5815 acc!919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!993397 () Bool)

(declare-fun res!664125 () Bool)

(assert (=> b!993397 (=> (not res!664125) (not e!560609))))

(declare-fun noDuplicate!1412 (List!21058) Bool)

(assert (=> b!993397 (= res!664125 (noDuplicate!1412 acc!919))))

(declare-fun b!993398 () Bool)

(declare-datatypes ((array!62749 0))(
  ( (array!62750 (arr!30214 (Array (_ BitVec 32) (_ BitVec 64))) (size!30711 (_ BitVec 32))) )
))
(declare-fun a!4424 () array!62749)

(assert (=> b!993398 (= e!560609 (not (bvslt (size!30711 a!4424) #b01111111111111111111111111111111)))))

(declare-fun from!3778 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!62749 (_ BitVec 32) List!21058) Bool)

(assert (=> b!993398 (arrayNoDuplicates!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) acc!919)))

(declare-datatypes ((Unit!32878 0))(
  ( (Unit!32879) )
))
(declare-fun lt!440511 () Unit!32878)

(declare-fun size!36 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!62749 (_ BitVec 32) (_ BitVec 32) List!21058) Unit!32878)

(assert (=> b!993398 (= lt!440511 (lemmaArrayNoDuplicatesInAll0Array!0 a!4424 (bvadd #b00000000000000000000000000000001 from!3778) size!36 acc!919))))

(declare-fun res!664126 () Bool)

(assert (=> start!85512 (=> (not res!664126) (not e!560609))))

(assert (=> start!85512 (= res!664126 (and (= (size!30711 a!4424) size!36) (bvslt size!36 #b01111111111111111111111111111111) (= a!4424 (array!62750 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!36)) (bvsge from!3778 #b00000000000000000000000000000000) (bvsle from!3778 (size!30711 a!4424))))))

(assert (=> start!85512 e!560609))

(declare-fun array_inv!23204 (array!62749) Bool)

(assert (=> start!85512 (array_inv!23204 a!4424)))

(assert (=> start!85512 true))

(declare-fun b!993399 () Bool)

(declare-fun res!664124 () Bool)

(assert (=> b!993399 (=> (not res!664124) (not e!560609))))

(assert (=> b!993399 (= res!664124 (and (bvslt from!3778 size!36) (bvsge (bvadd #b00000000000000000000000000000001 from!3778) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3778) (size!30711 a!4424))))))

(declare-fun b!993400 () Bool)

(declare-fun res!664123 () Bool)

(assert (=> b!993400 (=> (not res!664123) (not e!560609))))

(assert (=> b!993400 (= res!664123 (not (contains!5815 acc!919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!85512 res!664126) b!993396))

(assert (= (and b!993396 res!664122) b!993400))

(assert (= (and b!993400 res!664123) b!993397))

(assert (= (and b!993397 res!664125) b!993399))

(assert (= (and b!993399 res!664124) b!993398))

(declare-fun m!921203 () Bool)

(assert (=> b!993400 m!921203))

(declare-fun m!921205 () Bool)

(assert (=> b!993397 m!921205))

(declare-fun m!921207 () Bool)

(assert (=> b!993398 m!921207))

(declare-fun m!921209 () Bool)

(assert (=> b!993398 m!921209))

(declare-fun m!921211 () Bool)

(assert (=> b!993396 m!921211))

(declare-fun m!921213 () Bool)

(assert (=> start!85512 m!921213))

(push 1)

(assert (not b!993400))

(assert (not b!993396))

(assert (not b!993397))

(assert (not b!993398))

(assert (not start!85512))

