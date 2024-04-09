; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131754 () Bool)

(assert start!131754)

(declare-fun b!1542326 () Bool)

(declare-fun res!1058513 () Bool)

(declare-fun e!858093 () Bool)

(assert (=> b!1542326 (=> (not res!1058513) (not e!858093))))

(declare-datatypes ((array!102617 0))(
  ( (array!102618 (arr!49506 (Array (_ BitVec 32) (_ BitVec 64))) (size!50057 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102617)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!58725 0))(
  ( (V!58726 (val!18933 Int)) )
))
(declare-datatypes ((ValueCell!17945 0))(
  ( (ValueCellFull!17945 (v!21731 V!58725)) (EmptyCell!17945) )
))
(declare-datatypes ((array!102619 0))(
  ( (array!102620 (arr!49507 (Array (_ BitVec 32) ValueCell!17945)) (size!50058 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102619)

(assert (=> b!1542326 (= res!1058513 (and (= (size!50058 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50057 _keys!618) (size!50058 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58270 () Bool)

(declare-fun mapRes!58270 () Bool)

(assert (=> mapIsEmpty!58270 mapRes!58270))

(declare-fun res!1058512 () Bool)

(assert (=> start!131754 (=> (not res!1058512) (not e!858093))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131754 (= res!1058512 (validMask!0 mask!926))))

(assert (=> start!131754 e!858093))

(assert (=> start!131754 true))

(declare-fun e!858094 () Bool)

(declare-fun array_inv!38441 (array!102619) Bool)

(assert (=> start!131754 (and (array_inv!38441 _values!470) e!858094)))

(declare-fun array_inv!38442 (array!102617) Bool)

(assert (=> start!131754 (array_inv!38442 _keys!618)))

(declare-fun b!1542327 () Bool)

(declare-fun e!858095 () Bool)

(declare-fun tp_is_empty!37711 () Bool)

(assert (=> b!1542327 (= e!858095 tp_is_empty!37711)))

(declare-fun mapNonEmpty!58270 () Bool)

(declare-fun tp!110798 () Bool)

(declare-fun e!858096 () Bool)

(assert (=> mapNonEmpty!58270 (= mapRes!58270 (and tp!110798 e!858096))))

(declare-fun mapRest!58270 () (Array (_ BitVec 32) ValueCell!17945))

(declare-fun mapValue!58270 () ValueCell!17945)

(declare-fun mapKey!58270 () (_ BitVec 32))

(assert (=> mapNonEmpty!58270 (= (arr!49507 _values!470) (store mapRest!58270 mapKey!58270 mapValue!58270))))

(declare-fun b!1542328 () Bool)

(assert (=> b!1542328 (= e!858094 (and e!858095 mapRes!58270))))

(declare-fun condMapEmpty!58270 () Bool)

(declare-fun mapDefault!58270 () ValueCell!17945)

