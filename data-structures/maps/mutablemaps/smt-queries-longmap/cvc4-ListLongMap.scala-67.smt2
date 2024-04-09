; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!938 () Bool)

(assert start!938)

(declare-fun b_free!311 () Bool)

(declare-fun b_next!311 () Bool)

(assert (=> start!938 (= b_free!311 (not b_next!311))))

(declare-fun tp!1166 () Bool)

(declare-fun b_and!459 () Bool)

(assert (=> start!938 (= tp!1166 b_and!459)))

(declare-fun mapNonEmpty!557 () Bool)

(declare-fun mapRes!557 () Bool)

(declare-fun tp!1165 () Bool)

(declare-fun e!4468 () Bool)

(assert (=> mapNonEmpty!557 (= mapRes!557 (and tp!1165 e!4468))))

(declare-datatypes ((V!695 0))(
  ( (V!696 (val!200 Int)) )
))
(declare-datatypes ((ValueCell!178 0))(
  ( (ValueCellFull!178 (v!1292 V!695)) (EmptyCell!178) )
))
(declare-datatypes ((array!703 0))(
  ( (array!704 (arr!339 (Array (_ BitVec 32) ValueCell!178)) (size!401 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!703)

(declare-fun mapRest!557 () (Array (_ BitVec 32) ValueCell!178))

(declare-fun mapValue!557 () ValueCell!178)

(declare-fun mapKey!557 () (_ BitVec 32))

(assert (=> mapNonEmpty!557 (= (arr!339 _values!1492) (store mapRest!557 mapKey!557 mapValue!557))))

(declare-fun b!7911 () Bool)

(declare-fun res!7678 () Bool)

(declare-fun e!4471 () Bool)

(assert (=> b!7911 (=> (not res!7678) (not e!4471))))

(declare-datatypes ((array!705 0))(
  ( (array!706 (arr!340 (Array (_ BitVec 32) (_ BitVec 64))) (size!402 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!705)

(declare-datatypes ((List!231 0))(
  ( (Nil!228) (Cons!227 (h!793 (_ BitVec 64)) (t!2368 List!231)) )
))
(declare-fun arrayNoDuplicates!0 (array!705 (_ BitVec 32) List!231) Bool)

(assert (=> b!7911 (= res!7678 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!228))))

(declare-fun res!7675 () Bool)

(assert (=> start!938 (=> (not res!7675) (not e!4471))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!938 (= res!7675 (validMask!0 mask!2250))))

(assert (=> start!938 e!4471))

(assert (=> start!938 tp!1166))

(assert (=> start!938 true))

(declare-fun e!4470 () Bool)

(declare-fun array_inv!251 (array!703) Bool)

(assert (=> start!938 (and (array_inv!251 _values!1492) e!4470)))

(declare-fun tp_is_empty!389 () Bool)

(assert (=> start!938 tp_is_empty!389))

(declare-fun array_inv!252 (array!705) Bool)

(assert (=> start!938 (array_inv!252 _keys!1806)))

(declare-fun b!7912 () Bool)

(declare-fun e!4472 () Bool)

(assert (=> b!7912 (= e!4470 (and e!4472 mapRes!557))))

(declare-fun condMapEmpty!557 () Bool)

(declare-fun mapDefault!557 () ValueCell!178)

