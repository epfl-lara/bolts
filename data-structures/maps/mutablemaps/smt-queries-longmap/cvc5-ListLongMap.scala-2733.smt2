; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40224 () Bool)

(assert start!40224)

(declare-fun b_free!10483 () Bool)

(declare-fun b_next!10483 () Bool)

(assert (=> start!40224 (= b_free!10483 (not b_next!10483))))

(declare-fun tp!36977 () Bool)

(declare-fun b_and!18469 () Bool)

(assert (=> start!40224 (= tp!36977 b_and!18469)))

(declare-fun b!440753 () Bool)

(declare-fun res!260875 () Bool)

(declare-fun e!259606 () Bool)

(assert (=> b!440753 (=> (not res!260875) (not e!259606))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!440753 (= res!260875 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!19074 () Bool)

(declare-fun mapRes!19074 () Bool)

(declare-fun tp!36978 () Bool)

(declare-fun e!259609 () Bool)

(assert (=> mapNonEmpty!19074 (= mapRes!19074 (and tp!36978 e!259609))))

(declare-datatypes ((V!16619 0))(
  ( (V!16620 (val!5862 Int)) )
))
(declare-datatypes ((ValueCell!5474 0))(
  ( (ValueCellFull!5474 (v!8105 V!16619)) (EmptyCell!5474) )
))
(declare-datatypes ((array!27057 0))(
  ( (array!27058 (arr!12975 (Array (_ BitVec 32) ValueCell!5474)) (size!13327 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27057)

(declare-fun mapRest!19074 () (Array (_ BitVec 32) ValueCell!5474))

(declare-fun mapKey!19074 () (_ BitVec 32))

(declare-fun mapValue!19074 () ValueCell!5474)

(assert (=> mapNonEmpty!19074 (= (arr!12975 _values!549) (store mapRest!19074 mapKey!19074 mapValue!19074))))

(declare-fun b!440754 () Bool)

(declare-fun res!260871 () Bool)

(declare-fun e!259610 () Bool)

(assert (=> b!440754 (=> (not res!260871) (not e!259610))))

(declare-datatypes ((array!27059 0))(
  ( (array!27060 (arr!12976 (Array (_ BitVec 32) (_ BitVec 64))) (size!13328 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27059)

(declare-datatypes ((List!7759 0))(
  ( (Nil!7756) (Cons!7755 (h!8611 (_ BitVec 64)) (t!13523 List!7759)) )
))
(declare-fun arrayNoDuplicates!0 (array!27059 (_ BitVec 32) List!7759) Bool)

(assert (=> b!440754 (= res!260871 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7756))))

(declare-fun b!440755 () Bool)

(declare-fun res!260870 () Bool)

(assert (=> b!440755 (=> (not res!260870) (not e!259610))))

(assert (=> b!440755 (= res!260870 (or (= (select (arr!12976 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12976 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440756 () Bool)

(declare-fun e!259612 () Bool)

(declare-fun e!259611 () Bool)

(assert (=> b!440756 (= e!259612 (and e!259611 mapRes!19074))))

(declare-fun condMapEmpty!19074 () Bool)

(declare-fun mapDefault!19074 () ValueCell!5474)

