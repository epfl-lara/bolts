; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7958 () Bool)

(assert start!7958)

(declare-fun res!28844 () Bool)

(declare-fun e!32172 () Bool)

(assert (=> start!7958 (=> (not res!28844) (not e!32172))))

(declare-fun mask!2234 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7958 (= res!28844 (validMask!0 mask!2234))))

(assert (=> start!7958 e!32172))

(assert (=> start!7958 true))

(declare-datatypes ((array!3245 0))(
  ( (array!3246 (arr!1553 (Array (_ BitVec 32) (_ BitVec 64))) (size!1775 (_ BitVec 32))) )
))
(declare-fun _keys!1794 () array!3245)

(declare-fun array_inv!904 (array!3245) Bool)

(assert (=> start!7958 (array_inv!904 _keys!1794)))

(declare-fun b!49931 () Bool)

(declare-fun res!28845 () Bool)

(assert (=> b!49931 (=> (not res!28845) (not e!32172))))

(declare-fun i!836 () (_ BitVec 32))

(assert (=> b!49931 (= res!28845 (and (= (size!1775 _keys!1794) (bvadd #b00000000000000000000000000000001 mask!2234)) (= _keys!1794 (array!3246 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!2234))) (bvsge i!836 #b00000000000000000000000000000000) (bvsle i!836 (size!1775 _keys!1794)) (bvsge i!836 (size!1775 _keys!1794))))))

(declare-fun b!49932 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3245 (_ BitVec 32)) Bool)

(assert (=> b!49932 (= e!32172 (not (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234)))))

(assert (= (and start!7958 res!28844) b!49931))

(assert (= (and b!49931 res!28845) b!49932))

(declare-fun m!43431 () Bool)

(assert (=> start!7958 m!43431))

(declare-fun m!43433 () Bool)

(assert (=> start!7958 m!43433))

(declare-fun m!43435 () Bool)

(assert (=> b!49932 m!43435))

(push 1)

(assert (not b!49932))

(assert (not start!7958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!49953 () Bool)

(declare-fun e!32192 () Bool)

(declare-fun e!32193 () Bool)

(assert (=> b!49953 (= e!32192 e!32193)))

(declare-fun c!6771 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!49953 (= c!6771 (validKeyInArray!0 (select (arr!1553 _keys!1794) i!836)))))

(declare-fun d!10105 () Bool)

(declare-fun res!28862 () Bool)

(assert (=> d!10105 (=> res!28862 e!32192)))

(assert (=> d!10105 (= res!28862 (bvsge i!836 (size!1775 _keys!1794)))))

(assert (=> d!10105 (= (arrayForallSeekEntryOrOpenFound!0 i!836 _keys!1794 mask!2234) e!32192)))

(declare-fun bm!3864 () Bool)

(declare-fun call!3867 () Bool)

(assert (=> bm!3864 (= call!3867 (arrayForallSeekEntryOrOpenFound!0 (bvadd i!836 #b00000000000000000000000000000001) _keys!1794 mask!2234))))

(declare-fun b!49954 () Bool)

(declare-fun e!32194 () Bool)

(assert (=> b!49954 (= e!32194 call!3867)))

(declare-fun b!49955 () Bool)

(assert (=> b!49955 (= e!32193 e!32194)))

(declare-fun lt!20997 () (_ BitVec 64))

(assert (=> b!49955 (= lt!20997 (select (arr!1553 _keys!1794) i!836))))

(declare-datatypes ((Unit!1416 0))(
  ( (Unit!1417) )
))
(declare-fun lt!20995 () Unit!1416)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3245 (_ BitVec 64) (_ BitVec 32)) Unit!1416)

(assert (=> b!49955 (= lt!20995 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1794 lt!20997 i!836))))

(declare-fun arrayContainsKey!0 (array!3245 (_ BitVec 64) (_ BitVec 32)) Bool)

