; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!628 () Bool)

(assert start!628)

(declare-fun b_free!101 () Bool)

(declare-fun b_next!101 () Bool)

(assert (=> start!628 (= b_free!101 (not b_next!101))))

(declare-fun tp!520 () Bool)

(declare-fun b_and!239 () Bool)

(assert (=> start!628 (= tp!520 b_and!239)))

(declare-fun res!5487 () Bool)

(declare-fun e!2059 () Bool)

(assert (=> start!628 (=> (not res!5487) (not e!2059))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!628 (= res!5487 (validMask!0 mask!2250))))

(assert (=> start!628 e!2059))

(assert (=> start!628 tp!520))

(assert (=> start!628 true))

(declare-datatypes ((V!415 0))(
  ( (V!416 (val!95 Int)) )
))
(declare-datatypes ((ValueCell!73 0))(
  ( (ValueCellFull!73 (v!1182 V!415)) (EmptyCell!73) )
))
(declare-datatypes ((array!291 0))(
  ( (array!292 (arr!138 (Array (_ BitVec 32) ValueCell!73)) (size!200 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!291)

(declare-fun e!2056 () Bool)

(declare-fun array_inv!97 (array!291) Bool)

(assert (=> start!628 (and (array_inv!97 _values!1492) e!2056)))

(declare-fun tp_is_empty!179 () Bool)

(assert (=> start!628 tp_is_empty!179))

(declare-datatypes ((array!293 0))(
  ( (array!294 (arr!139 (Array (_ BitVec 32) (_ BitVec 64))) (size!201 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!293)

(declare-fun array_inv!98 (array!293) Bool)

(assert (=> start!628 (array_inv!98 _keys!1806)))

(declare-fun mapNonEmpty!227 () Bool)

(declare-fun mapRes!227 () Bool)

(declare-fun tp!521 () Bool)

(declare-fun e!2058 () Bool)

(assert (=> mapNonEmpty!227 (= mapRes!227 (and tp!521 e!2058))))

(declare-fun mapRest!227 () (Array (_ BitVec 32) ValueCell!73))

(declare-fun mapValue!227 () ValueCell!73)

(declare-fun mapKey!227 () (_ BitVec 32))

(assert (=> mapNonEmpty!227 (= (arr!138 _values!1492) (store mapRest!227 mapKey!227 mapValue!227))))

(declare-fun b!3994 () Bool)

(declare-fun e!2057 () Bool)

(assert (=> b!3994 (= e!2056 (and e!2057 mapRes!227))))

(declare-fun condMapEmpty!227 () Bool)

(declare-fun mapDefault!227 () ValueCell!73)

