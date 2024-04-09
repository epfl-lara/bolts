; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68686 () Bool)

(assert start!68686)

(declare-fun b!799149 () Bool)

(declare-fun e!443211 () Bool)

(declare-fun e!443212 () Bool)

(assert (=> b!799149 (= e!443211 e!443212)))

(declare-fun res!543840 () Bool)

(assert (=> b!799149 (=> (not res!543840) (not e!443212))))

(declare-fun lt!356863 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43427 0))(
  ( (array!43428 (arr!20790 (Array (_ BitVec 32) (_ BitVec 64))) (size!21211 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43427)

(assert (=> b!799149 (= res!543840 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356863 #b00000000000000000000000000000000) (bvslt lt!356863 (size!21211 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799149 (= lt!356863 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!543839 () Bool)

(declare-fun e!443210 () Bool)

(assert (=> start!68686 (=> (not res!543839) (not e!443210))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68686 (= res!543839 (validMask!0 mask!3266))))

(assert (=> start!68686 e!443210))

(assert (=> start!68686 true))

(declare-fun array_inv!16564 (array!43427) Bool)

(assert (=> start!68686 (array_inv!16564 a!3170)))

(declare-fun b!799150 () Bool)

(declare-fun res!543848 () Bool)

(assert (=> b!799150 (=> (not res!543848) (not e!443212))))

(declare-datatypes ((SeekEntryResult!8388 0))(
  ( (MissingZero!8388 (index!35919 (_ BitVec 32))) (Found!8388 (index!35920 (_ BitVec 32))) (Intermediate!8388 (undefined!9200 Bool) (index!35921 (_ BitVec 32)) (x!66827 (_ BitVec 32))) (Undefined!8388) (MissingVacant!8388 (index!35922 (_ BitVec 32))) )
))
(declare-fun lt!356860 () SeekEntryResult!8388)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356862 () array!43427)

(declare-fun lt!356866 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43427 (_ BitVec 32)) SeekEntryResult!8388)

(assert (=> b!799150 (= res!543848 (= lt!356860 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356863 vacantAfter!23 lt!356866 lt!356862 mask!3266)))))

(declare-fun b!799151 () Bool)

(declare-fun res!543847 () Bool)

(declare-fun e!443209 () Bool)

(assert (=> b!799151 (=> (not res!543847) (not e!443209))))

(declare-datatypes ((List!14806 0))(
  ( (Nil!14803) (Cons!14802 (h!15931 (_ BitVec 64)) (t!21129 List!14806)) )
))
(declare-fun arrayNoDuplicates!0 (array!43427 (_ BitVec 32) List!14806) Bool)

(assert (=> b!799151 (= res!543847 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14803))))

(declare-fun b!799152 () Bool)

(declare-fun e!443207 () Bool)

(assert (=> b!799152 (= e!443207 e!443211)))

(declare-fun res!543849 () Bool)

(assert (=> b!799152 (=> (not res!543849) (not e!443211))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!356864 () SeekEntryResult!8388)

(declare-fun lt!356861 () SeekEntryResult!8388)

(assert (=> b!799152 (= res!543849 (and (= lt!356861 lt!356864) (= lt!356864 (Found!8388 j!153)) (not (= (select (arr!20790 a!3170) index!1236) (select (arr!20790 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799152 (= lt!356864 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20790 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43427 (_ BitVec 32)) SeekEntryResult!8388)

(assert (=> b!799152 (= lt!356861 (seekEntryOrOpen!0 (select (arr!20790 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799153 () Bool)

(assert (=> b!799153 (= e!443212 false)))

(declare-fun lt!356859 () SeekEntryResult!8388)

(assert (=> b!799153 (= lt!356859 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356863 vacantBefore!23 (select (arr!20790 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799154 () Bool)

(declare-fun res!543838 () Bool)

(assert (=> b!799154 (=> (not res!543838) (not e!443210))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799154 (= res!543838 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799155 () Bool)

(assert (=> b!799155 (= e!443209 e!443207)))

(declare-fun res!543846 () Bool)

(assert (=> b!799155 (=> (not res!543846) (not e!443207))))

(assert (=> b!799155 (= res!543846 (= lt!356860 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356866 lt!356862 mask!3266)))))

(assert (=> b!799155 (= lt!356860 (seekEntryOrOpen!0 lt!356866 lt!356862 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!799155 (= lt!356866 (select (store (arr!20790 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799155 (= lt!356862 (array!43428 (store (arr!20790 a!3170) i!1163 k!2044) (size!21211 a!3170)))))

(declare-fun b!799156 () Bool)

(declare-fun res!543843 () Bool)

(assert (=> b!799156 (=> (not res!543843) (not e!443210))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799156 (= res!543843 (validKeyInArray!0 (select (arr!20790 a!3170) j!153)))))

(declare-fun b!799157 () Bool)

(declare-fun res!543845 () Bool)

(assert (=> b!799157 (=> (not res!543845) (not e!443209))))

(assert (=> b!799157 (= res!543845 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21211 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20790 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21211 a!3170)) (= (select (arr!20790 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799158 () Bool)

(declare-fun res!543842 () Bool)

(assert (=> b!799158 (=> (not res!543842) (not e!443209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43427 (_ BitVec 32)) Bool)

(assert (=> b!799158 (= res!543842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799159 () Bool)

(declare-fun res!543850 () Bool)

(assert (=> b!799159 (=> (not res!543850) (not e!443210))))

(assert (=> b!799159 (= res!543850 (validKeyInArray!0 k!2044))))

(declare-fun b!799160 () Bool)

(assert (=> b!799160 (= e!443210 e!443209)))

(declare-fun res!543841 () Bool)

(assert (=> b!799160 (=> (not res!543841) (not e!443209))))

(declare-fun lt!356865 () SeekEntryResult!8388)

(assert (=> b!799160 (= res!543841 (or (= lt!356865 (MissingZero!8388 i!1163)) (= lt!356865 (MissingVacant!8388 i!1163))))))

(assert (=> b!799160 (= lt!356865 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799161 () Bool)

(declare-fun res!543844 () Bool)

(assert (=> b!799161 (=> (not res!543844) (not e!443210))))

(assert (=> b!799161 (= res!543844 (and (= (size!21211 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21211 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21211 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68686 res!543839) b!799161))

(assert (= (and b!799161 res!543844) b!799156))

(assert (= (and b!799156 res!543843) b!799159))

(assert (= (and b!799159 res!543850) b!799154))

(assert (= (and b!799154 res!543838) b!799160))

(assert (= (and b!799160 res!543841) b!799158))

(assert (= (and b!799158 res!543842) b!799151))

(assert (= (and b!799151 res!543847) b!799157))

(assert (= (and b!799157 res!543845) b!799155))

(assert (= (and b!799155 res!543846) b!799152))

(assert (= (and b!799152 res!543849) b!799149))

(assert (= (and b!799149 res!543840) b!799150))

(assert (= (and b!799150 res!543848) b!799153))

(declare-fun m!740245 () Bool)

(assert (=> b!799158 m!740245))

(declare-fun m!740247 () Bool)

(assert (=> b!799159 m!740247))

(declare-fun m!740249 () Bool)

(assert (=> b!799152 m!740249))

(declare-fun m!740251 () Bool)

(assert (=> b!799152 m!740251))

(assert (=> b!799152 m!740251))

(declare-fun m!740253 () Bool)

(assert (=> b!799152 m!740253))

(assert (=> b!799152 m!740251))

(declare-fun m!740255 () Bool)

(assert (=> b!799152 m!740255))

(declare-fun m!740257 () Bool)

(assert (=> b!799155 m!740257))

(declare-fun m!740259 () Bool)

(assert (=> b!799155 m!740259))

(declare-fun m!740261 () Bool)

(assert (=> b!799155 m!740261))

(declare-fun m!740263 () Bool)

(assert (=> b!799155 m!740263))

(declare-fun m!740265 () Bool)

(assert (=> b!799160 m!740265))

(declare-fun m!740267 () Bool)

(assert (=> b!799150 m!740267))

(declare-fun m!740269 () Bool)

(assert (=> b!799157 m!740269))

(declare-fun m!740271 () Bool)

(assert (=> b!799157 m!740271))

(assert (=> b!799153 m!740251))

(assert (=> b!799153 m!740251))

(declare-fun m!740273 () Bool)

(assert (=> b!799153 m!740273))

(assert (=> b!799156 m!740251))

(assert (=> b!799156 m!740251))

(declare-fun m!740275 () Bool)

(assert (=> b!799156 m!740275))

(declare-fun m!740277 () Bool)

(assert (=> start!68686 m!740277))

(declare-fun m!740279 () Bool)

(assert (=> start!68686 m!740279))

(declare-fun m!740281 () Bool)

(assert (=> b!799151 m!740281))

(declare-fun m!740283 () Bool)

(assert (=> b!799149 m!740283))

(declare-fun m!740285 () Bool)

(assert (=> b!799154 m!740285))

(push 1)

