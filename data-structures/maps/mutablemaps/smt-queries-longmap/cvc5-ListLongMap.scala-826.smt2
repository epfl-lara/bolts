; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20064 () Bool)

(assert start!20064)

(declare-fun mapIsEmpty!7919 () Bool)

(declare-fun mapRes!7919 () Bool)

(assert (=> mapIsEmpty!7919 mapRes!7919))

(declare-fun res!92670 () Bool)

(declare-fun e!129294 () Bool)

(assert (=> start!20064 (=> (not res!92670) (not e!129294))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20064 (= res!92670 (validMask!0 mask!1149))))

(assert (=> start!20064 e!129294))

(assert (=> start!20064 true))

(declare-datatypes ((V!5737 0))(
  ( (V!5738 (val!2328 Int)) )
))
(declare-datatypes ((ValueCell!1940 0))(
  ( (ValueCellFull!1940 (v!4294 V!5737)) (EmptyCell!1940) )
))
(declare-datatypes ((array!8390 0))(
  ( (array!8391 (arr!3945 (Array (_ BitVec 32) ValueCell!1940)) (size!4270 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8390)

(declare-fun e!129291 () Bool)

(declare-fun array_inv!2555 (array!8390) Bool)

(assert (=> start!20064 (and (array_inv!2555 _values!649) e!129291)))

(declare-datatypes ((array!8392 0))(
  ( (array!8393 (arr!3946 (Array (_ BitVec 32) (_ BitVec 64))) (size!4271 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8392)

(declare-fun array_inv!2556 (array!8392) Bool)

(assert (=> start!20064 (array_inv!2556 _keys!825)))

(declare-fun b!196315 () Bool)

(declare-fun e!129295 () Bool)

(declare-fun tp_is_empty!4567 () Bool)

(assert (=> b!196315 (= e!129295 tp_is_empty!4567)))

(declare-fun b!196316 () Bool)

(declare-fun e!129293 () Bool)

(assert (=> b!196316 (= e!129293 tp_is_empty!4567)))

(declare-fun b!196317 () Bool)

(declare-fun res!92671 () Bool)

(assert (=> b!196317 (=> (not res!92671) (not e!129294))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!196317 (= res!92671 (and (= (size!4270 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4271 _keys!825) (size!4270 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!7919 () Bool)

(declare-fun tp!17207 () Bool)

(assert (=> mapNonEmpty!7919 (= mapRes!7919 (and tp!17207 e!129293))))

(declare-fun mapValue!7919 () ValueCell!1940)

(declare-fun mapKey!7919 () (_ BitVec 32))

(declare-fun mapRest!7919 () (Array (_ BitVec 32) ValueCell!1940))

(assert (=> mapNonEmpty!7919 (= (arr!3945 _values!649) (store mapRest!7919 mapKey!7919 mapValue!7919))))

(declare-fun b!196318 () Bool)

(assert (=> b!196318 (= e!129291 (and e!129295 mapRes!7919))))

(declare-fun condMapEmpty!7919 () Bool)

(declare-fun mapDefault!7919 () ValueCell!1940)

