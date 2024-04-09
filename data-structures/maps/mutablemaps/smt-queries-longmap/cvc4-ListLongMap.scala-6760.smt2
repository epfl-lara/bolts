; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84858 () Bool)

(assert start!84858)

(declare-fun mapIsEmpty!37071 () Bool)

(declare-fun mapRes!37071 () Bool)

(assert (=> mapIsEmpty!37071 mapRes!37071))

(declare-fun mapNonEmpty!37071 () Bool)

(declare-fun tp!70143 () Bool)

(declare-fun e!559212 () Bool)

(assert (=> mapNonEmpty!37071 (= mapRes!37071 (and tp!70143 e!559212))))

(declare-datatypes ((V!36101 0))(
  ( (V!36102 (val!11720 Int)) )
))
(declare-datatypes ((ValueCell!11188 0))(
  ( (ValueCellFull!11188 (v!14296 V!36101)) (EmptyCell!11188) )
))
(declare-fun mapValue!37071 () ValueCell!11188)

(declare-fun mapRest!37071 () (Array (_ BitVec 32) ValueCell!11188))

(declare-fun mapKey!37071 () (_ BitVec 32))

(declare-datatypes ((array!62629 0))(
  ( (array!62630 (arr!30158 (Array (_ BitVec 32) ValueCell!11188)) (size!30638 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62629)

(assert (=> mapNonEmpty!37071 (= (arr!30158 _values!1551) (store mapRest!37071 mapKey!37071 mapValue!37071))))

(declare-fun res!662832 () Bool)

(declare-fun e!559211 () Bool)

(assert (=> start!84858 (=> (not res!662832) (not e!559211))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84858 (= res!662832 (validMask!0 mask!2471))))

(assert (=> start!84858 e!559211))

(assert (=> start!84858 true))

(declare-fun e!559209 () Bool)

(declare-fun array_inv!23153 (array!62629) Bool)

(assert (=> start!84858 (and (array_inv!23153 _values!1551) e!559209)))

(declare-datatypes ((array!62631 0))(
  ( (array!62632 (arr!30159 (Array (_ BitVec 32) (_ BitVec 64))) (size!30639 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62631)

(declare-fun array_inv!23154 (array!62631) Bool)

(assert (=> start!84858 (array_inv!23154 _keys!1945)))

(declare-fun b!991453 () Bool)

(declare-fun tp_is_empty!23339 () Bool)

(assert (=> b!991453 (= e!559212 tp_is_empty!23339)))

(declare-fun b!991454 () Bool)

(declare-fun e!559208 () Bool)

(assert (=> b!991454 (= e!559209 (and e!559208 mapRes!37071))))

(declare-fun condMapEmpty!37071 () Bool)

(declare-fun mapDefault!37071 () ValueCell!11188)

