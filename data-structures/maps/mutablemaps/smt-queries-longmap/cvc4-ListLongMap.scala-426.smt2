; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7962 () Bool)

(assert start!7962)

(declare-fun res!28856 () Bool)

(declare-fun e!32184 () Bool)

(assert (=> start!7962 (=> (not res!28856) (not e!32184))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7962 (= res!28856 (validMask!0 mask!2234))))

(assert (=> start!7962 e!32184))

(assert (=> start!7962 true))

(declare-datatypes ((array!3249 0))(
  ( (array!3250 (arr!1555 (Array (_ BitVec 32) (_ BitVec 64))) (size!1777 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3249)

(declare-fun array_inv!906 (array!3249) Bool)

(assert (=> start!7962 (array_inv!906 _keys!1794)))

(declare-fun b!49943 () Bool)

(declare-fun res!28857 () Bool)

(assert (=> b!49943 (=> (not res!28857) (not e!32184))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49943 (= res!28857 (and (= (size!1777 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3250 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1777 _keys!1794)) (bvsge i!836 (size!1777 _keys!1794))))))

(declare-fun b!49944 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3249 (_ BitVec 32)) Bool)

(assert (=> b!49944 (= e!32184 (not (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234)))))

(assert (= (and start!7962 res!28856) b!49943))

(assert (= (and b!49943 res!28857) b!49944))

(declare-fun m!43443 () Bool)

(assert (=> start!7962 m!43443))

(declare-fun m!43445 () Bool)

(assert (=> start!7962 m!43445))

(declare-fun m!43447 () Bool)

(assert (=> b!49944 m!43447))

(push 1)

(assert (not start!7962))

(assert (not b!49944))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!10107 () Bool)

(assert (=> d!10107 (= (validMask!0 mask!2234) (and (or (= mask!2234 #b00000000000000000000000000000111) (= mask!2234 #b00000000000000000000000000001111) (= mask!2234 #b00000000000000000000000000011111) (= mask!2234 #b00000000000000000000000000111111) (= mask!2234 #b00000000000000000000000001111111) (= mask!2234 #b00000000000000000000000011111111) (= mask!2234 #b00000000000000000000000111111111) (= mask!2234 #b00000000000000000000001111111111) (= mask!2234 #b00000000000000000000011111111111) (= mask!2234 #b00000000000000000000111111111111) (= mask!2234 #b00000000000000000001111111111111) (= mask!2234 #b00000000000000000011111111111111) (= mask!2234 #b00000000000000000111111111111111) (= mask!2234 #b00000000000000001111111111111111) (= mask!2234 #b00000000000000011111111111111111) (= mask!2234 #b00000000000000111111111111111111) (= mask!2234 #b00000000000001111111111111111111) (= mask!2234 #b00000000000011111111111111111111) (= mask!2234 #b00000000000111111111111111111111) (= mask!2234 #b00000000001111111111111111111111) (= mask!2234 #b00000000011111111111111111111111) (= mask!2234 #b00000000111111111111111111111111) (= mask!2234 #b00000001111111111111111111111111) (= mask!2234 #b00000011111111111111111111111111) (= mask!2234 #b00000111111111111111111111111111) (= mask!2234 #b00001111111111111111111111111111) (= mask!2234 #b00011111111111111111111111111111) (= mask!2234 #b00111111111111111111111111111111)) (bvsle mask!2234 #b00111111111111111111111111111111)))))

(assert (=> start!7962 d!10107))

(declare-fun d!10115 () Bool)

(assert (=> d!10115 (= (array_inv!906 _keys!1794) (bvsge (size!1777 _keys!1794) #b00000000000000000000000000000000))))

(assert (=> start!7962 d!10115))

(declare-fun b!49977 () Bool)

(declare-fun e!32211 () Bool)

(declare-fun e!32212 () Bool)

(assert (=> b!49977 (= e!32211 e!32212)))

(declare-fun lt!21014 () (_ BitVec 64))

(assert (=> b!49977 (= lt!21014 (select (arr!1555 _keys!1794) i!836))))

(declare-datatypes ((Unit!1414 0))(
  ( (Unit!1415) )
))
(declare-fun lt!21013 () Unit!1414)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3249 (_ BitVec 64) (_ BitVec 32)) Unit!1414)

(assert (=> b!49977 (= lt!21013 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!21014 i!836))))

(declare-fun arrayContainsKey!0 (array!3249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!49977 (arrayContainsKey!0 _keys!1794 lt!21014 #b00000000000000000000000000000000)))

(declare-fun lt!21015 () Unit!1414)

(assert (=> b!49977 (= lt!21015 lt!21013)))

(declare-fun res!28874 () Bool)

(declare-datatypes ((SeekEntryResult!227 0))(
  ( (MissingZero!227 (index!3030 (_ BitVec 32))) (Found!227 (index!3031 (_ BitVec 32))) (Intermediate!227 (undefined!1039 Bool) (index!3032 (_ BitVec 32)) (x!9125 (_ BitVec 32))) (Undefined!227) (MissingVacant!227 (index!3033 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3249 (_ BitVec 32)) SeekEntryResult!227)

(assert (=> b!49977 (= res!28874 (= (seekEntryOrOpen!0 (select (arr!1555 _keys!1794) i!836) _keys!1794 mask!2234) (Found!227 i!836)))))

(assert (=> b!49977 (=> (not res!28874) (not e!32212))))

(declare-fun b!49978 () Bool)

(declare-fun e!32210 () Bool)

(assert (=> b!49978 (= e!32210 e!32211)))

(declare-fun c!6777 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!49978 (= c!6777 (validKeyInArray!0 (select (arr!1555 _keys!1794) i!836)))))

(declare-fun d!10117 () Bool)

(declare-fun res!28875 () Bool)

