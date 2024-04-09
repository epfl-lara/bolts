; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131700 () Bool)

(assert start!131700)

(declare-fun b!1541840 () Bool)

(declare-fun e!857690 () Bool)

(assert (=> b!1541840 (= e!857690 false)))

(declare-fun lt!665660 () Bool)

(declare-datatypes ((array!102515 0))(
  ( (array!102516 (arr!49455 (Array (_ BitVec 32) (_ BitVec 64))) (size!50006 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102515)

(declare-datatypes ((List!36014 0))(
  ( (Nil!36011) (Cons!36010 (h!37456 (_ BitVec 64)) (t!50715 List!36014)) )
))
(declare-fun arrayNoDuplicates!0 (array!102515 (_ BitVec 32) List!36014) Bool)

(assert (=> b!1541840 (= lt!665660 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36011))))

(declare-fun b!1541841 () Bool)

(declare-fun res!1058268 () Bool)

(assert (=> b!1541841 (=> (not res!1058268) (not e!857690))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58653 0))(
  ( (V!58654 (val!18906 Int)) )
))
(declare-datatypes ((ValueCell!17918 0))(
  ( (ValueCellFull!17918 (v!21704 V!58653)) (EmptyCell!17918) )
))
(declare-datatypes ((array!102517 0))(
  ( (array!102518 (arr!49456 (Array (_ BitVec 32) ValueCell!17918)) (size!50007 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102517)

(assert (=> b!1541841 (= res!1058268 (and (= (size!50007 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50006 _keys!618) (size!50007 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541843 () Bool)

(declare-fun e!857689 () Bool)

(declare-fun tp_is_empty!37657 () Bool)

(assert (=> b!1541843 (= e!857689 tp_is_empty!37657)))

(declare-fun mapNonEmpty!58189 () Bool)

(declare-fun mapRes!58189 () Bool)

(declare-fun tp!110717 () Bool)

(assert (=> mapNonEmpty!58189 (= mapRes!58189 (and tp!110717 e!857689))))

(declare-fun mapValue!58189 () ValueCell!17918)

(declare-fun mapKey!58189 () (_ BitVec 32))

(declare-fun mapRest!58189 () (Array (_ BitVec 32) ValueCell!17918))

(assert (=> mapNonEmpty!58189 (= (arr!49456 _values!470) (store mapRest!58189 mapKey!58189 mapValue!58189))))

(declare-fun b!1541844 () Bool)

(declare-fun e!857688 () Bool)

(assert (=> b!1541844 (= e!857688 tp_is_empty!37657)))

(declare-fun b!1541842 () Bool)

(declare-fun e!857692 () Bool)

(assert (=> b!1541842 (= e!857692 (and e!857688 mapRes!58189))))

(declare-fun condMapEmpty!58189 () Bool)

(declare-fun mapDefault!58189 () ValueCell!17918)

