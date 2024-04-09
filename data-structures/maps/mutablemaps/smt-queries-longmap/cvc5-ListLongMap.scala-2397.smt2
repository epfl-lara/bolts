; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37942 () Bool)

(assert start!37942)

(declare-fun b_free!8947 () Bool)

(declare-fun b_next!8947 () Bool)

(assert (=> start!37942 (= b_free!8947 (not b_next!8947))))

(declare-fun tp!31604 () Bool)

(declare-fun b_and!16255 () Bool)

(assert (=> start!37942 (= tp!31604 b_and!16255)))

(declare-fun b!389922 () Bool)

(declare-fun res!223161 () Bool)

(declare-fun e!236224 () Bool)

(assert (=> b!389922 (=> (not res!223161) (not e!236224))))

(declare-datatypes ((array!23113 0))(
  ( (array!23114 (arr!11018 (Array (_ BitVec 32) (_ BitVec 64))) (size!11370 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23113)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!389922 (= res!223161 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!389923 () Bool)

(declare-fun e!236222 () Bool)

(declare-fun tp_is_empty!9619 () Bool)

(assert (=> b!389923 (= e!236222 tp_is_empty!9619)))

(declare-fun b!389924 () Bool)

(declare-fun res!223162 () Bool)

(assert (=> b!389924 (=> (not res!223162) (not e!236224))))

(declare-datatypes ((List!6358 0))(
  ( (Nil!6355) (Cons!6354 (h!7210 (_ BitVec 64)) (t!11524 List!6358)) )
))
(declare-fun arrayNoDuplicates!0 (array!23113 (_ BitVec 32) List!6358) Bool)

(assert (=> b!389924 (= res!223162 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6355))))

(declare-fun res!223170 () Bool)

(assert (=> start!37942 (=> (not res!223170) (not e!236224))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37942 (= res!223170 (validMask!0 mask!970))))

(assert (=> start!37942 e!236224))

(declare-datatypes ((V!13931 0))(
  ( (V!13932 (val!4854 Int)) )
))
(declare-datatypes ((ValueCell!4466 0))(
  ( (ValueCellFull!4466 (v!7063 V!13931)) (EmptyCell!4466) )
))
(declare-datatypes ((array!23115 0))(
  ( (array!23116 (arr!11019 (Array (_ BitVec 32) ValueCell!4466)) (size!11371 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23115)

(declare-fun e!236225 () Bool)

(declare-fun array_inv!8078 (array!23115) Bool)

(assert (=> start!37942 (and (array_inv!8078 _values!506) e!236225)))

(assert (=> start!37942 tp!31604))

(assert (=> start!37942 true))

(assert (=> start!37942 tp_is_empty!9619))

(declare-fun array_inv!8079 (array!23113) Bool)

(assert (=> start!37942 (array_inv!8079 _keys!658)))

(declare-fun b!389925 () Bool)

(declare-fun res!223168 () Bool)

(assert (=> b!389925 (=> (not res!223168) (not e!236224))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!389925 (= res!223168 (or (= (select (arr!11018 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11018 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!389926 () Bool)

(declare-fun e!236226 () Bool)

(declare-fun mapRes!16005 () Bool)

(assert (=> b!389926 (= e!236225 (and e!236226 mapRes!16005))))

(declare-fun condMapEmpty!16005 () Bool)

(declare-fun mapDefault!16005 () ValueCell!4466)

