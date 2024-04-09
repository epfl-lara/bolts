; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40916 () Bool)

(assert start!40916)

(declare-fun b_free!10843 () Bool)

(declare-fun b_next!10843 () Bool)

(assert (=> start!40916 (= b_free!10843 (not b_next!10843))))

(declare-fun tp!38355 () Bool)

(declare-fun b_and!19003 () Bool)

(assert (=> start!40916 (= tp!38355 b_and!19003)))

(declare-fun mapIsEmpty!19912 () Bool)

(declare-fun mapRes!19912 () Bool)

(assert (=> mapIsEmpty!19912 mapRes!19912))

(declare-fun res!270853 () Bool)

(declare-fun e!265833 () Bool)

(assert (=> start!40916 (=> (not res!270853) (not e!265833))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28131 0))(
  ( (array!28132 (arr!13506 (Array (_ BitVec 32) (_ BitVec 64))) (size!13858 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28131)

(assert (=> start!40916 (= res!270853 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13858 _keys!709))))))

(assert (=> start!40916 e!265833))

(declare-fun tp_is_empty!12181 () Bool)

(assert (=> start!40916 tp_is_empty!12181))

(assert (=> start!40916 tp!38355))

(assert (=> start!40916 true))

(declare-datatypes ((V!17347 0))(
  ( (V!17348 (val!6135 Int)) )
))
(declare-datatypes ((ValueCell!5747 0))(
  ( (ValueCellFull!5747 (v!8397 V!17347)) (EmptyCell!5747) )
))
(declare-datatypes ((array!28133 0))(
  ( (array!28134 (arr!13507 (Array (_ BitVec 32) ValueCell!5747)) (size!13859 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28133)

(declare-fun e!265838 () Bool)

(declare-fun array_inv!9776 (array!28133) Bool)

(assert (=> start!40916 (and (array_inv!9776 _values!549) e!265838)))

(declare-fun array_inv!9777 (array!28131) Bool)

(assert (=> start!40916 (array_inv!9777 _keys!709)))

(declare-fun mapNonEmpty!19912 () Bool)

(declare-fun tp!38356 () Bool)

(declare-fun e!265835 () Bool)

(assert (=> mapNonEmpty!19912 (= mapRes!19912 (and tp!38356 e!265835))))

(declare-fun mapValue!19912 () ValueCell!5747)

(declare-fun mapKey!19912 () (_ BitVec 32))

(declare-fun mapRest!19912 () (Array (_ BitVec 32) ValueCell!5747))

(assert (=> mapNonEmpty!19912 (= (arr!13507 _values!549) (store mapRest!19912 mapKey!19912 mapValue!19912))))

(declare-fun b!454397 () Bool)

(declare-fun e!265834 () Bool)

(assert (=> b!454397 (= e!265838 (and e!265834 mapRes!19912))))

(declare-fun condMapEmpty!19912 () Bool)

(declare-fun mapDefault!19912 () ValueCell!5747)

