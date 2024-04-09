; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37096 () Bool)

(assert start!37096)

(declare-fun b_free!8215 () Bool)

(declare-fun b_next!8215 () Bool)

(assert (=> start!37096 (= b_free!8215 (not b_next!8215))))

(declare-fun tp!29361 () Bool)

(declare-fun b_and!15475 () Bool)

(assert (=> start!37096 (= tp!29361 b_and!15475)))

(declare-fun b!373077 () Bool)

(declare-fun res!210165 () Bool)

(declare-fun e!227470 () Bool)

(assert (=> b!373077 (=> (not res!210165) (not e!227470))))

(declare-datatypes ((array!21633 0))(
  ( (array!21634 (arr!10282 (Array (_ BitVec 32) (_ BitVec 64))) (size!10634 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21633)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373077 (= res!210165 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!373078 () Bool)

(declare-fun e!227475 () Bool)

(declare-fun tp_is_empty!8863 () Bool)

(assert (=> b!373078 (= e!227475 tp_is_empty!8863)))

(declare-fun b!373079 () Bool)

(declare-fun e!227471 () Bool)

(declare-fun e!227468 () Bool)

(assert (=> b!373079 (= e!227471 (not e!227468))))

(declare-fun res!210172 () Bool)

(assert (=> b!373079 (=> res!210172 e!227468)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373079 (= res!210172 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!12923 0))(
  ( (V!12924 (val!4476 Int)) )
))
(declare-datatypes ((ValueCell!4088 0))(
  ( (ValueCellFull!4088 (v!6669 V!12923)) (EmptyCell!4088) )
))
(declare-datatypes ((array!21635 0))(
  ( (array!21636 (arr!10283 (Array (_ BitVec 32) ValueCell!4088)) (size!10635 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21635)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5916 0))(
  ( (tuple2!5917 (_1!2968 (_ BitVec 64)) (_2!2968 V!12923)) )
))
(declare-datatypes ((List!5792 0))(
  ( (Nil!5789) (Cons!5788 (h!6644 tuple2!5916) (t!10950 List!5792)) )
))
(declare-datatypes ((ListLongMap!4843 0))(
  ( (ListLongMap!4844 (toList!2437 List!5792)) )
))
(declare-fun lt!171255 () ListLongMap!4843)

(declare-fun zeroValue!472 () V!12923)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12923)

(declare-fun getCurrentListMap!1886 (array!21633 array!21635 (_ BitVec 32) (_ BitVec 32) V!12923 V!12923 (_ BitVec 32) Int) ListLongMap!4843)

(assert (=> b!373079 (= lt!171255 (getCurrentListMap!1886 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171259 () array!21635)

(declare-fun lt!171251 () array!21633)

(declare-fun lt!171253 () ListLongMap!4843)

(assert (=> b!373079 (= lt!171253 (getCurrentListMap!1886 lt!171251 lt!171259 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!171265 () ListLongMap!4843)

(declare-fun lt!171249 () ListLongMap!4843)

(assert (=> b!373079 (and (= lt!171265 lt!171249) (= lt!171249 lt!171265))))

(declare-fun lt!171262 () ListLongMap!4843)

(declare-fun lt!171260 () tuple2!5916)

(declare-fun +!778 (ListLongMap!4843 tuple2!5916) ListLongMap!4843)

(assert (=> b!373079 (= lt!171249 (+!778 lt!171262 lt!171260))))

(declare-fun v!373 () V!12923)

(assert (=> b!373079 (= lt!171260 (tuple2!5917 k!778 v!373))))

(declare-datatypes ((Unit!11459 0))(
  ( (Unit!11460) )
))
(declare-fun lt!171257 () Unit!11459)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!37 (array!21633 array!21635 (_ BitVec 32) (_ BitVec 32) V!12923 V!12923 (_ BitVec 32) (_ BitVec 64) V!12923 (_ BitVec 32) Int) Unit!11459)

(assert (=> b!373079 (= lt!171257 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!37 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!704 (array!21633 array!21635 (_ BitVec 32) (_ BitVec 32) V!12923 V!12923 (_ BitVec 32) Int) ListLongMap!4843)

(assert (=> b!373079 (= lt!171265 (getCurrentListMapNoExtraKeys!704 lt!171251 lt!171259 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373079 (= lt!171259 (array!21636 (store (arr!10283 _values!506) i!548 (ValueCellFull!4088 v!373)) (size!10635 _values!506)))))

(assert (=> b!373079 (= lt!171262 (getCurrentListMapNoExtraKeys!704 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373080 () Bool)

(declare-fun e!227474 () Bool)

(assert (=> b!373080 (= e!227468 e!227474)))

(declare-fun res!210169 () Bool)

(assert (=> b!373080 (=> res!210169 e!227474)))

(assert (=> b!373080 (= res!210169 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!171258 () ListLongMap!4843)

(declare-fun lt!171261 () ListLongMap!4843)

(assert (=> b!373080 (= lt!171258 lt!171261)))

(declare-fun lt!171250 () ListLongMap!4843)

(assert (=> b!373080 (= lt!171261 (+!778 lt!171250 lt!171260))))

(declare-fun lt!171252 () Unit!11459)

(declare-fun addCommutativeForDiffKeys!208 (ListLongMap!4843 (_ BitVec 64) V!12923 (_ BitVec 64) V!12923) Unit!11459)

(assert (=> b!373080 (= lt!171252 (addCommutativeForDiffKeys!208 lt!171262 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!171256 () tuple2!5916)

(assert (=> b!373080 (= lt!171253 (+!778 lt!171258 lt!171256))))

(declare-fun lt!171263 () tuple2!5916)

(assert (=> b!373080 (= lt!171258 (+!778 lt!171249 lt!171263))))

(declare-fun lt!171264 () ListLongMap!4843)

(assert (=> b!373080 (= lt!171255 lt!171264)))

(assert (=> b!373080 (= lt!171264 (+!778 lt!171250 lt!171256))))

(assert (=> b!373080 (= lt!171250 (+!778 lt!171262 lt!171263))))

(assert (=> b!373080 (= lt!171253 (+!778 (+!778 lt!171265 lt!171263) lt!171256))))

(assert (=> b!373080 (= lt!171256 (tuple2!5917 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373080 (= lt!171263 (tuple2!5917 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapNonEmpty!14859 () Bool)

(declare-fun mapRes!14859 () Bool)

(declare-fun tp!29360 () Bool)

(assert (=> mapNonEmpty!14859 (= mapRes!14859 (and tp!29360 e!227475))))

(declare-fun mapValue!14859 () ValueCell!4088)

(declare-fun mapKey!14859 () (_ BitVec 32))

(declare-fun mapRest!14859 () (Array (_ BitVec 32) ValueCell!4088))

(assert (=> mapNonEmpty!14859 (= (arr!10283 _values!506) (store mapRest!14859 mapKey!14859 mapValue!14859))))

(declare-fun b!373081 () Bool)

(assert (=> b!373081 (= e!227474 true)))

(assert (=> b!373081 (= (+!778 lt!171261 lt!171256) (+!778 lt!171264 lt!171260))))

(declare-fun lt!171254 () Unit!11459)

(assert (=> b!373081 (= lt!171254 (addCommutativeForDiffKeys!208 lt!171250 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373083 () Bool)

(declare-fun res!210171 () Bool)

(assert (=> b!373083 (=> (not res!210171) (not e!227471))))

(declare-datatypes ((List!5793 0))(
  ( (Nil!5790) (Cons!5789 (h!6645 (_ BitVec 64)) (t!10951 List!5793)) )
))
(declare-fun arrayNoDuplicates!0 (array!21633 (_ BitVec 32) List!5793) Bool)

(assert (=> b!373083 (= res!210171 (arrayNoDuplicates!0 lt!171251 #b00000000000000000000000000000000 Nil!5790))))

(declare-fun b!373084 () Bool)

(declare-fun res!210176 () Bool)

(assert (=> b!373084 (=> (not res!210176) (not e!227470))))

(assert (=> b!373084 (= res!210176 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5790))))

(declare-fun b!373085 () Bool)

(declare-fun e!227473 () Bool)

(assert (=> b!373085 (= e!227473 tp_is_empty!8863)))

(declare-fun b!373086 () Bool)

(declare-fun res!210170 () Bool)

(assert (=> b!373086 (=> (not res!210170) (not e!227470))))

(assert (=> b!373086 (= res!210170 (or (= (select (arr!10282 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10282 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373087 () Bool)

(declare-fun e!227469 () Bool)

(assert (=> b!373087 (= e!227469 (and e!227473 mapRes!14859))))

(declare-fun condMapEmpty!14859 () Bool)

(declare-fun mapDefault!14859 () ValueCell!4088)

