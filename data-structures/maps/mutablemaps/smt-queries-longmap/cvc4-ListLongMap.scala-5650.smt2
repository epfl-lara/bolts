; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73716 () Bool)

(assert start!73716)

(declare-fun b_free!14603 () Bool)

(declare-fun b_next!14603 () Bool)

(assert (=> start!73716 (= b_free!14603 (not b_next!14603))))

(declare-fun tp!51313 () Bool)

(declare-fun b_and!24203 () Bool)

(assert (=> start!73716 (= tp!51313 b_and!24203)))

(declare-fun b!863175 () Bool)

(declare-fun res!586667 () Bool)

(declare-fun e!480913 () Bool)

(assert (=> b!863175 (=> (not res!586667) (not e!480913))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49624 0))(
  ( (array!49625 (arr!23839 (Array (_ BitVec 32) (_ BitVec 64))) (size!24280 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49624)

(declare-datatypes ((V!27365 0))(
  ( (V!27366 (val!8417 Int)) )
))
(declare-datatypes ((ValueCell!7930 0))(
  ( (ValueCellFull!7930 (v!10838 V!27365)) (EmptyCell!7930) )
))
(declare-datatypes ((array!49626 0))(
  ( (array!49627 (arr!23840 (Array (_ BitVec 32) ValueCell!7930)) (size!24281 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49626)

(assert (=> b!863175 (= res!586667 (and (= (size!24281 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24280 _keys!868) (size!24281 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863176 () Bool)

(declare-datatypes ((Unit!29470 0))(
  ( (Unit!29471) )
))
(declare-fun e!480920 () Unit!29470)

(declare-fun Unit!29472 () Unit!29470)

(assert (=> b!863176 (= e!480920 Unit!29472)))

(declare-fun lt!390076 () Unit!29470)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49624 (_ BitVec 32) (_ BitVec 32)) Unit!29470)

(assert (=> b!863176 (= lt!390076 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17006 0))(
  ( (Nil!17003) (Cons!17002 (h!18133 (_ BitVec 64)) (t!23883 List!17006)) )
))
(declare-fun arrayNoDuplicates!0 (array!49624 (_ BitVec 32) List!17006) Bool)

(assert (=> b!863176 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17003)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!390067 () Unit!29470)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49624 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29470)

(assert (=> b!863176 (= lt!390067 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863176 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390073 () Unit!29470)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49624 (_ BitVec 64) (_ BitVec 32) List!17006) Unit!29470)

(assert (=> b!863176 (= lt!390073 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17003))))

(assert (=> b!863176 false))

(declare-fun mapNonEmpty!26708 () Bool)

(declare-fun mapRes!26708 () Bool)

(declare-fun tp!51314 () Bool)

(declare-fun e!480916 () Bool)

(assert (=> mapNonEmpty!26708 (= mapRes!26708 (and tp!51314 e!480916))))

(declare-fun mapKey!26708 () (_ BitVec 32))

(declare-fun mapRest!26708 () (Array (_ BitVec 32) ValueCell!7930))

(declare-fun mapValue!26708 () ValueCell!7930)

(assert (=> mapNonEmpty!26708 (= (arr!23840 _values!688) (store mapRest!26708 mapKey!26708 mapValue!26708))))

(declare-fun b!863177 () Bool)

(declare-fun e!480921 () Bool)

(declare-fun tp_is_empty!16739 () Bool)

(assert (=> b!863177 (= e!480921 tp_is_empty!16739)))

(declare-fun b!863178 () Bool)

(declare-fun res!586663 () Bool)

(assert (=> b!863178 (=> (not res!586663) (not e!480913))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863178 (= res!586663 (validMask!0 mask!1196))))

(declare-fun b!863179 () Bool)

(declare-fun e!480914 () Bool)

(assert (=> b!863179 (= e!480914 (and e!480921 mapRes!26708))))

(declare-fun condMapEmpty!26708 () Bool)

(declare-fun mapDefault!26708 () ValueCell!7930)

