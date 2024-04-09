; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73352 () Bool)

(assert start!73352)

(declare-fun b_free!14239 () Bool)

(declare-fun b_next!14239 () Bool)

(assert (=> start!73352 (= b_free!14239 (not b_next!14239))))

(declare-fun tp!50221 () Bool)

(declare-fun b_and!23613 () Bool)

(assert (=> start!73352 (= tp!50221 b_and!23613)))

(declare-fun b!855319 () Bool)

(declare-fun res!580996 () Bool)

(declare-fun e!476886 () Bool)

(assert (=> b!855319 (=> (not res!580996) (not e!476886))))

(declare-datatypes ((array!48926 0))(
  ( (array!48927 (arr!23490 (Array (_ BitVec 32) (_ BitVec 64))) (size!23931 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48926)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48926 (_ BitVec 32)) Bool)

(assert (=> b!855319 (= res!580996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855320 () Bool)

(assert (=> b!855320 (= e!476886 false)))

(declare-datatypes ((V!26881 0))(
  ( (V!26882 (val!8235 Int)) )
))
(declare-fun v!557 () V!26881)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10840 0))(
  ( (tuple2!10841 (_1!5430 (_ BitVec 64)) (_2!5430 V!26881)) )
))
(declare-datatypes ((List!16715 0))(
  ( (Nil!16712) (Cons!16711 (h!17842 tuple2!10840) (t!23364 List!16715)) )
))
(declare-datatypes ((ListLongMap!9623 0))(
  ( (ListLongMap!9624 (toList!4827 List!16715)) )
))
(declare-fun lt!385650 () ListLongMap!9623)

(declare-datatypes ((ValueCell!7748 0))(
  ( (ValueCellFull!7748 (v!10656 V!26881)) (EmptyCell!7748) )
))
(declare-datatypes ((array!48928 0))(
  ( (array!48929 (arr!23491 (Array (_ BitVec 32) ValueCell!7748)) (size!23932 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48928)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26881)

(declare-fun zeroValue!654 () V!26881)

(declare-fun getCurrentListMapNoExtraKeys!2809 (array!48926 array!48928 (_ BitVec 32) (_ BitVec 32) V!26881 V!26881 (_ BitVec 32) Int) ListLongMap!9623)

(assert (=> b!855320 (= lt!385650 (getCurrentListMapNoExtraKeys!2809 _keys!868 (array!48929 (store (arr!23491 _values!688) i!612 (ValueCellFull!7748 v!557)) (size!23932 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385649 () ListLongMap!9623)

(assert (=> b!855320 (= lt!385649 (getCurrentListMapNoExtraKeys!2809 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855321 () Bool)

(declare-fun res!580998 () Bool)

(assert (=> b!855321 (=> (not res!580998) (not e!476886))))

(declare-datatypes ((List!16716 0))(
  ( (Nil!16713) (Cons!16712 (h!17843 (_ BitVec 64)) (t!23365 List!16716)) )
))
(declare-fun arrayNoDuplicates!0 (array!48926 (_ BitVec 32) List!16716) Bool)

(assert (=> b!855321 (= res!580998 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16713))))

(declare-fun b!855322 () Bool)

(declare-fun res!580993 () Bool)

(assert (=> b!855322 (=> (not res!580993) (not e!476886))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!855322 (= res!580993 (and (= (select (arr!23490 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26162 () Bool)

(declare-fun mapRes!26162 () Bool)

(assert (=> mapIsEmpty!26162 mapRes!26162))

(declare-fun b!855323 () Bool)

(declare-fun res!580995 () Bool)

(assert (=> b!855323 (=> (not res!580995) (not e!476886))))

(assert (=> b!855323 (= res!580995 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23931 _keys!868))))))

(declare-fun b!855324 () Bool)

(declare-fun e!476885 () Bool)

(declare-fun e!476884 () Bool)

(assert (=> b!855324 (= e!476885 (and e!476884 mapRes!26162))))

(declare-fun condMapEmpty!26162 () Bool)

(declare-fun mapDefault!26162 () ValueCell!7748)

