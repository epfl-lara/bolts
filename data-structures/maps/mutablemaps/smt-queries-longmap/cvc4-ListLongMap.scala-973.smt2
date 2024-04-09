; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21092 () Bool)

(assert start!21092)

(declare-fun b_free!5591 () Bool)

(declare-fun b_next!5591 () Bool)

(assert (=> start!21092 (= b_free!5591 (not b_next!5591))))

(declare-fun tp!19834 () Bool)

(declare-fun b_and!12439 () Bool)

(assert (=> start!21092 (= tp!19834 b_and!12439)))

(declare-fun b!212012 () Bool)

(declare-fun e!137980 () Bool)

(declare-fun e!137981 () Bool)

(assert (=> b!212012 (= e!137980 (not e!137981))))

(declare-fun res!103622 () Bool)

(assert (=> b!212012 (=> res!103622 e!137981)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212012 (= res!103622 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6917 0))(
  ( (V!6918 (val!2771 Int)) )
))
(declare-datatypes ((tuple2!4188 0))(
  ( (tuple2!4189 (_1!2104 (_ BitVec 64)) (_2!2104 V!6917)) )
))
(declare-datatypes ((List!3103 0))(
  ( (Nil!3100) (Cons!3099 (h!3741 tuple2!4188) (t!8056 List!3103)) )
))
(declare-datatypes ((ListLongMap!3115 0))(
  ( (ListLongMap!3116 (toList!1573 List!3103)) )
))
(declare-fun lt!109224 () ListLongMap!3115)

(declare-datatypes ((ValueCell!2383 0))(
  ( (ValueCellFull!2383 (v!4765 V!6917)) (EmptyCell!2383) )
))
(declare-datatypes ((array!10108 0))(
  ( (array!10109 (arr!4797 (Array (_ BitVec 32) ValueCell!2383)) (size!5122 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10108)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6917)

(declare-datatypes ((array!10110 0))(
  ( (array!10111 (arr!4798 (Array (_ BitVec 32) (_ BitVec 64))) (size!5123 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10110)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6917)

(declare-fun getCurrentListMap!1101 (array!10110 array!10108 (_ BitVec 32) (_ BitVec 32) V!6917 V!6917 (_ BitVec 32) Int) ListLongMap!3115)

(assert (=> b!212012 (= lt!109224 (getCurrentListMap!1101 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109218 () array!10108)

(declare-fun lt!109226 () ListLongMap!3115)

(assert (=> b!212012 (= lt!109226 (getCurrentListMap!1101 _keys!825 lt!109218 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109227 () ListLongMap!3115)

(declare-fun lt!109220 () ListLongMap!3115)

(assert (=> b!212012 (and (= lt!109227 lt!109220) (= lt!109220 lt!109227))))

(declare-fun lt!109223 () ListLongMap!3115)

(declare-fun lt!109222 () tuple2!4188)

(declare-fun +!566 (ListLongMap!3115 tuple2!4188) ListLongMap!3115)

(assert (=> b!212012 (= lt!109220 (+!566 lt!109223 lt!109222))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6917)

(assert (=> b!212012 (= lt!109222 (tuple2!4189 k!843 v!520))))

(declare-datatypes ((Unit!6433 0))(
  ( (Unit!6434) )
))
(declare-fun lt!109221 () Unit!6433)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!218 (array!10110 array!10108 (_ BitVec 32) (_ BitVec 32) V!6917 V!6917 (_ BitVec 32) (_ BitVec 64) V!6917 (_ BitVec 32) Int) Unit!6433)

(assert (=> b!212012 (= lt!109221 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!218 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!500 (array!10110 array!10108 (_ BitVec 32) (_ BitVec 32) V!6917 V!6917 (_ BitVec 32) Int) ListLongMap!3115)

(assert (=> b!212012 (= lt!109227 (getCurrentListMapNoExtraKeys!500 _keys!825 lt!109218 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212012 (= lt!109218 (array!10109 (store (arr!4797 _values!649) i!601 (ValueCellFull!2383 v!520)) (size!5122 _values!649)))))

(assert (=> b!212012 (= lt!109223 (getCurrentListMapNoExtraKeys!500 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212013 () Bool)

(declare-fun e!137983 () Bool)

(declare-fun e!137979 () Bool)

(declare-fun mapRes!9269 () Bool)

(assert (=> b!212013 (= e!137983 (and e!137979 mapRes!9269))))

(declare-fun condMapEmpty!9269 () Bool)

(declare-fun mapDefault!9269 () ValueCell!2383)

