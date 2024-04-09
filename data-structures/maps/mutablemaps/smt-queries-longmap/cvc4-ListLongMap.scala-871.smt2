; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20338 () Bool)

(assert start!20338)

(declare-fun b_free!4985 () Bool)

(declare-fun b_next!4985 () Bool)

(assert (=> start!20338 (= b_free!4985 (not b_next!4985))))

(declare-fun tp!17987 () Bool)

(declare-fun b_and!11749 () Bool)

(assert (=> start!20338 (= tp!17987 b_and!11749)))

(declare-fun b!200316 () Bool)

(declare-fun res!95436 () Bool)

(declare-fun e!131377 () Bool)

(assert (=> b!200316 (=> (not res!95436) (not e!131377))))

(declare-datatypes ((array!8912 0))(
  ( (array!8913 (arr!4206 (Array (_ BitVec 32) (_ BitVec 64))) (size!4531 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8912)

(declare-datatypes ((List!2660 0))(
  ( (Nil!2657) (Cons!2656 (h!3298 (_ BitVec 64)) (t!7599 List!2660)) )
))
(declare-fun arrayNoDuplicates!0 (array!8912 (_ BitVec 32) List!2660) Bool)

(assert (=> b!200316 (= res!95436 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2657))))

(declare-fun b!200317 () Bool)

(declare-fun res!95439 () Bool)

(assert (=> b!200317 (=> (not res!95439) (not e!131377))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!200317 (= res!95439 (= (select (arr!4206 _keys!825) i!601) k!843))))

(declare-fun b!200318 () Bool)

(declare-fun e!131376 () Bool)

(assert (=> b!200318 (= e!131377 (not e!131376))))

(declare-fun res!95438 () Bool)

(assert (=> b!200318 (=> res!95438 e!131376)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200318 (= res!95438 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6101 0))(
  ( (V!6102 (val!2465 Int)) )
))
(declare-datatypes ((tuple2!3720 0))(
  ( (tuple2!3721 (_1!1870 (_ BitVec 64)) (_2!1870 V!6101)) )
))
(declare-datatypes ((List!2661 0))(
  ( (Nil!2658) (Cons!2657 (h!3299 tuple2!3720) (t!7600 List!2661)) )
))
(declare-datatypes ((ListLongMap!2647 0))(
  ( (ListLongMap!2648 (toList!1339 List!2661)) )
))
(declare-fun lt!98954 () ListLongMap!2647)

(declare-datatypes ((ValueCell!2077 0))(
  ( (ValueCellFull!2077 (v!4431 V!6101)) (EmptyCell!2077) )
))
(declare-datatypes ((array!8914 0))(
  ( (array!8915 (arr!4207 (Array (_ BitVec 32) ValueCell!2077)) (size!4532 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8914)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6101)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6101)

(declare-fun getCurrentListMap!924 (array!8912 array!8914 (_ BitVec 32) (_ BitVec 32) V!6101 V!6101 (_ BitVec 32) Int) ListLongMap!2647)

(assert (=> b!200318 (= lt!98954 (getCurrentListMap!924 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98965 () ListLongMap!2647)

(declare-fun lt!98963 () array!8914)

(assert (=> b!200318 (= lt!98965 (getCurrentListMap!924 _keys!825 lt!98963 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98953 () ListLongMap!2647)

(declare-fun lt!98964 () ListLongMap!2647)

(assert (=> b!200318 (and (= lt!98953 lt!98964) (= lt!98964 lt!98953))))

(declare-fun lt!98960 () ListLongMap!2647)

(declare-fun lt!98961 () tuple2!3720)

(declare-fun +!356 (ListLongMap!2647 tuple2!3720) ListLongMap!2647)

(assert (=> b!200318 (= lt!98964 (+!356 lt!98960 lt!98961))))

(declare-fun v!520 () V!6101)

(assert (=> b!200318 (= lt!98961 (tuple2!3721 k!843 v!520))))

(declare-datatypes ((Unit!6019 0))(
  ( (Unit!6020) )
))
(declare-fun lt!98958 () Unit!6019)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!37 (array!8912 array!8914 (_ BitVec 32) (_ BitVec 32) V!6101 V!6101 (_ BitVec 32) (_ BitVec 64) V!6101 (_ BitVec 32) Int) Unit!6019)

(assert (=> b!200318 (= lt!98958 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!37 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!295 (array!8912 array!8914 (_ BitVec 32) (_ BitVec 32) V!6101 V!6101 (_ BitVec 32) Int) ListLongMap!2647)

(assert (=> b!200318 (= lt!98953 (getCurrentListMapNoExtraKeys!295 _keys!825 lt!98963 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200318 (= lt!98963 (array!8915 (store (arr!4207 _values!649) i!601 (ValueCellFull!2077 v!520)) (size!4532 _values!649)))))

(assert (=> b!200318 (= lt!98960 (getCurrentListMapNoExtraKeys!295 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200319 () Bool)

(declare-fun e!131373 () Bool)

(declare-fun e!131374 () Bool)

(declare-fun mapRes!8330 () Bool)

(assert (=> b!200319 (= e!131373 (and e!131374 mapRes!8330))))

(declare-fun condMapEmpty!8330 () Bool)

(declare-fun mapDefault!8330 () ValueCell!2077)

