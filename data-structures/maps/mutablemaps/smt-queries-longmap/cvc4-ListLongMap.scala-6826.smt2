; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85982 () Bool)

(assert start!85982)

(declare-fun b!995772 () Bool)

(declare-fun res!666134 () Bool)

(declare-fun e!561933 () Bool)

(assert (=> b!995772 (=> (not res!666134) (not e!561933))))

(declare-datatypes ((array!62984 0))(
  ( (array!62985 (arr!30321 (Array (_ BitVec 32) (_ BitVec 64))) (size!30824 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62984)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995772 (= res!666134 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995773 () Bool)

(declare-fun res!666136 () Bool)

(assert (=> b!995773 (=> (not res!666136) (not e!561933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995773 (= res!666136 (validKeyInArray!0 k!2224))))

(declare-fun b!995774 () Bool)

(declare-fun res!666133 () Bool)

(assert (=> b!995774 (=> (not res!666133) (not e!561933))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!995774 (= res!666133 (validKeyInArray!0 (select (arr!30321 a!3219) j!170)))))

(declare-fun b!995775 () Bool)

(declare-fun e!561935 () Bool)

(assert (=> b!995775 (= e!561933 e!561935)))

(declare-fun res!666132 () Bool)

(assert (=> b!995775 (=> (not res!666132) (not e!561935))))

(declare-datatypes ((SeekEntryResult!9253 0))(
  ( (MissingZero!9253 (index!39382 (_ BitVec 32))) (Found!9253 (index!39383 (_ BitVec 32))) (Intermediate!9253 (undefined!10065 Bool) (index!39384 (_ BitVec 32)) (x!86847 (_ BitVec 32))) (Undefined!9253) (MissingVacant!9253 (index!39385 (_ BitVec 32))) )
))
(declare-fun lt!441026 () SeekEntryResult!9253)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995775 (= res!666132 (or (= lt!441026 (MissingVacant!9253 i!1194)) (= lt!441026 (MissingZero!9253 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62984 (_ BitVec 32)) SeekEntryResult!9253)

(assert (=> b!995775 (= lt!441026 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995776 () Bool)

(assert (=> b!995776 (= e!561935 false)))

(declare-fun lt!441027 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995776 (= lt!441027 (toIndex!0 (select (arr!30321 a!3219) j!170) mask!3464))))

(declare-fun b!995777 () Bool)

(declare-fun res!666129 () Bool)

(assert (=> b!995777 (=> (not res!666129) (not e!561933))))

(assert (=> b!995777 (= res!666129 (and (= (size!30824 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30824 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30824 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!995778 () Bool)

(declare-fun res!666130 () Bool)

(assert (=> b!995778 (=> (not res!666130) (not e!561935))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!995778 (= res!666130 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30824 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30824 a!3219))))))

(declare-fun b!995779 () Bool)

(declare-fun res!666128 () Bool)

(assert (=> b!995779 (=> (not res!666128) (not e!561935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62984 (_ BitVec 32)) Bool)

(assert (=> b!995779 (= res!666128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!666131 () Bool)

(assert (=> start!85982 (=> (not res!666131) (not e!561933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85982 (= res!666131 (validMask!0 mask!3464))))

(assert (=> start!85982 e!561933))

(declare-fun array_inv!23311 (array!62984) Bool)

(assert (=> start!85982 (array_inv!23311 a!3219)))

(assert (=> start!85982 true))

(declare-fun b!995771 () Bool)

(declare-fun res!666135 () Bool)

(assert (=> b!995771 (=> (not res!666135) (not e!561935))))

(declare-datatypes ((List!21123 0))(
  ( (Nil!21120) (Cons!21119 (h!22281 (_ BitVec 64)) (t!30132 List!21123)) )
))
(declare-fun arrayNoDuplicates!0 (array!62984 (_ BitVec 32) List!21123) Bool)

(assert (=> b!995771 (= res!666135 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21120))))

(assert (= (and start!85982 res!666131) b!995777))

(assert (= (and b!995777 res!666129) b!995774))

(assert (= (and b!995774 res!666133) b!995773))

(assert (= (and b!995773 res!666136) b!995772))

(assert (= (and b!995772 res!666134) b!995775))

(assert (= (and b!995775 res!666132) b!995779))

(assert (= (and b!995779 res!666128) b!995771))

(assert (= (and b!995771 res!666135) b!995778))

(assert (= (and b!995778 res!666130) b!995776))

(declare-fun m!923161 () Bool)

(assert (=> b!995773 m!923161))

(declare-fun m!923163 () Bool)

(assert (=> b!995771 m!923163))

(declare-fun m!923165 () Bool)

(assert (=> b!995776 m!923165))

(assert (=> b!995776 m!923165))

(declare-fun m!923167 () Bool)

(assert (=> b!995776 m!923167))

(declare-fun m!923169 () Bool)

(assert (=> b!995772 m!923169))

(declare-fun m!923171 () Bool)

(assert (=> b!995775 m!923171))

(declare-fun m!923173 () Bool)

(assert (=> b!995779 m!923173))

(assert (=> b!995774 m!923165))

(assert (=> b!995774 m!923165))

(declare-fun m!923175 () Bool)

(assert (=> b!995774 m!923175))

(declare-fun m!923177 () Bool)

(assert (=> start!85982 m!923177))

(declare-fun m!923179 () Bool)

(assert (=> start!85982 m!923179))

(push 1)

(assert (not b!995773))

(assert (not b!995774))

(assert (not b!995775))

(assert (not b!995771))

(assert (not start!85982))

(assert (not b!995779))

(assert (not b!995776))

(assert (not b!995772))

(check-sat)

