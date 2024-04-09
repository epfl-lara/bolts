; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131710 () Bool)

(assert start!131710)

(declare-fun mapIsEmpty!58204 () Bool)

(declare-fun mapRes!58204 () Bool)

(assert (=> mapIsEmpty!58204 mapRes!58204))

(declare-fun b!1541930 () Bool)

(declare-fun e!857766 () Bool)

(declare-fun tp_is_empty!37667 () Bool)

(assert (=> b!1541930 (= e!857766 tp_is_empty!37667)))

(declare-fun b!1541931 () Bool)

(declare-fun e!857767 () Bool)

(assert (=> b!1541931 (= e!857767 tp_is_empty!37667)))

(declare-fun mapNonEmpty!58204 () Bool)

(declare-fun tp!110732 () Bool)

(assert (=> mapNonEmpty!58204 (= mapRes!58204 (and tp!110732 e!857767))))

(declare-datatypes ((V!58665 0))(
  ( (V!58666 (val!18911 Int)) )
))
(declare-datatypes ((ValueCell!17923 0))(
  ( (ValueCellFull!17923 (v!21709 V!58665)) (EmptyCell!17923) )
))
(declare-datatypes ((array!102533 0))(
  ( (array!102534 (arr!49464 (Array (_ BitVec 32) ValueCell!17923)) (size!50015 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102533)

(declare-fun mapKey!58204 () (_ BitVec 32))

(declare-fun mapRest!58204 () (Array (_ BitVec 32) ValueCell!17923))

(declare-fun mapValue!58204 () ValueCell!17923)

(assert (=> mapNonEmpty!58204 (= (arr!49464 _values!470) (store mapRest!58204 mapKey!58204 mapValue!58204))))

(declare-fun b!1541933 () Bool)

(declare-fun res!1058314 () Bool)

(declare-fun e!857763 () Bool)

(assert (=> b!1541933 (=> (not res!1058314) (not e!857763))))

(declare-datatypes ((array!102535 0))(
  ( (array!102536 (arr!49465 (Array (_ BitVec 32) (_ BitVec 64))) (size!50016 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102535)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1541933 (= res!1058314 (and (= (size!50015 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50016 _keys!618) (size!50015 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541934 () Bool)

(declare-fun e!857765 () Bool)

(assert (=> b!1541934 (= e!857765 (and e!857766 mapRes!58204))))

(declare-fun condMapEmpty!58204 () Bool)

(declare-fun mapDefault!58204 () ValueCell!17923)

