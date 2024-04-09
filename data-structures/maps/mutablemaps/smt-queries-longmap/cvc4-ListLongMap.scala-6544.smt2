; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83180 () Bool)

(assert start!83180)

(declare-fun b_free!19145 () Bool)

(declare-fun b_next!19145 () Bool)

(assert (=> start!83180 (= b_free!19145 (not b_next!19145))))

(declare-fun tp!66714 () Bool)

(declare-fun b_and!30651 () Bool)

(assert (=> start!83180 (= tp!66714 b_and!30651)))

(declare-fun mapNonEmpty!35074 () Bool)

(declare-fun mapRes!35074 () Bool)

(declare-fun tp!66715 () Bool)

(declare-fun e!546837 () Bool)

(assert (=> mapNonEmpty!35074 (= mapRes!35074 (and tp!66715 e!546837))))

(declare-datatypes ((V!34373 0))(
  ( (V!34374 (val!11072 Int)) )
))
(declare-datatypes ((ValueCell!10540 0))(
  ( (ValueCellFull!10540 (v!13631 V!34373)) (EmptyCell!10540) )
))
(declare-datatypes ((array!60131 0))(
  ( (array!60132 (arr!28925 (Array (_ BitVec 32) ValueCell!10540)) (size!29405 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60131)

(declare-fun mapRest!35074 () (Array (_ BitVec 32) ValueCell!10540))

(declare-fun mapKey!35074 () (_ BitVec 32))

(declare-fun mapValue!35074 () ValueCell!10540)

(assert (=> mapNonEmpty!35074 (= (arr!28925 _values!1425) (store mapRest!35074 mapKey!35074 mapValue!35074))))

(declare-fun b!969903 () Bool)

(declare-fun res!649285 () Bool)

(declare-fun e!546836 () Bool)

(assert (=> b!969903 (=> (not res!649285) (not e!546836))))

(declare-datatypes ((array!60133 0))(
  ( (array!60134 (arr!28926 (Array (_ BitVec 32) (_ BitVec 64))) (size!29406 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60133)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!969903 (= res!649285 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29406 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29406 _keys!1717))))))

(declare-fun b!969904 () Bool)

(declare-fun tp_is_empty!22043 () Bool)

(assert (=> b!969904 (= e!546837 tp_is_empty!22043)))

(declare-fun b!969905 () Bool)

(declare-fun e!546835 () Bool)

(declare-fun e!546833 () Bool)

(assert (=> b!969905 (= e!546835 (and e!546833 mapRes!35074))))

(declare-fun condMapEmpty!35074 () Bool)

(declare-fun mapDefault!35074 () ValueCell!10540)

