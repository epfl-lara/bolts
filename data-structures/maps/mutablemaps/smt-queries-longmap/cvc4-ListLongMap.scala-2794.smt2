; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40664 () Bool)

(assert start!40664)

(declare-fun b_free!10667 () Bool)

(declare-fun b_next!10667 () Bool)

(assert (=> start!40664 (= b_free!10667 (not b_next!10667))))

(declare-fun tp!37821 () Bool)

(declare-fun b_and!18693 () Bool)

(assert (=> start!40664 (= tp!37821 b_and!18693)))

(declare-fun b!448982 () Bool)

(declare-fun e!263317 () Bool)

(declare-fun tp_is_empty!12005 () Bool)

(assert (=> b!448982 (= e!263317 tp_is_empty!12005)))

(declare-fun b!448983 () Bool)

(declare-fun res!267080 () Bool)

(declare-fun e!263315 () Bool)

(assert (=> b!448983 (=> (not res!267080) (not e!263315))))

(declare-datatypes ((array!27777 0))(
  ( (array!27778 (arr!13331 (Array (_ BitVec 32) (_ BitVec 64))) (size!13683 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27777)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448983 (= res!267080 (or (= (select (arr!13331 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13331 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448984 () Bool)

(declare-fun e!263316 () Bool)

(assert (=> b!448984 (= e!263316 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17111 0))(
  ( (V!17112 (val!6047 Int)) )
))
(declare-fun minValue!515 () V!17111)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5659 0))(
  ( (ValueCellFull!5659 (v!8298 V!17111)) (EmptyCell!5659) )
))
(declare-datatypes ((array!27779 0))(
  ( (array!27780 (arr!13332 (Array (_ BitVec 32) ValueCell!5659)) (size!13684 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27779)

(declare-fun zeroValue!515 () V!17111)

(declare-fun v!412 () V!17111)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7872 0))(
  ( (tuple2!7873 (_1!3946 (_ BitVec 64)) (_2!3946 V!17111)) )
))
(declare-datatypes ((List!7983 0))(
  ( (Nil!7980) (Cons!7979 (h!8835 tuple2!7872) (t!13753 List!7983)) )
))
(declare-datatypes ((ListLongMap!6799 0))(
  ( (ListLongMap!6800 (toList!3415 List!7983)) )
))
(declare-fun lt!204275 () ListLongMap!6799)

(declare-fun lt!204277 () array!27777)

(declare-fun getCurrentListMapNoExtraKeys!1595 (array!27777 array!27779 (_ BitVec 32) (_ BitVec 32) V!17111 V!17111 (_ BitVec 32) Int) ListLongMap!6799)

(assert (=> b!448984 (= lt!204275 (getCurrentListMapNoExtraKeys!1595 lt!204277 (array!27780 (store (arr!13332 _values!549) i!563 (ValueCellFull!5659 v!412)) (size!13684 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204276 () ListLongMap!6799)

(assert (=> b!448984 (= lt!204276 (getCurrentListMapNoExtraKeys!1595 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!19641 () Bool)

(declare-fun mapRes!19641 () Bool)

(declare-fun tp!37820 () Bool)

(declare-fun e!263314 () Bool)

(assert (=> mapNonEmpty!19641 (= mapRes!19641 (and tp!37820 e!263314))))

(declare-fun mapRest!19641 () (Array (_ BitVec 32) ValueCell!5659))

(declare-fun mapKey!19641 () (_ BitVec 32))

(declare-fun mapValue!19641 () ValueCell!5659)

(assert (=> mapNonEmpty!19641 (= (arr!13332 _values!549) (store mapRest!19641 mapKey!19641 mapValue!19641))))

(declare-fun b!448985 () Bool)

(declare-fun res!267083 () Bool)

(assert (=> b!448985 (=> (not res!267083) (not e!263315))))

(declare-datatypes ((List!7984 0))(
  ( (Nil!7981) (Cons!7980 (h!8836 (_ BitVec 64)) (t!13754 List!7984)) )
))
(declare-fun arrayNoDuplicates!0 (array!27777 (_ BitVec 32) List!7984) Bool)

(assert (=> b!448985 (= res!267083 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7981))))

(declare-fun b!448986 () Bool)

(declare-fun res!267085 () Bool)

(assert (=> b!448986 (=> (not res!267085) (not e!263316))))

(assert (=> b!448986 (= res!267085 (arrayNoDuplicates!0 lt!204277 #b00000000000000000000000000000000 Nil!7981))))

(declare-fun b!448987 () Bool)

(declare-fun res!267079 () Bool)

(assert (=> b!448987 (=> (not res!267079) (not e!263315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27777 (_ BitVec 32)) Bool)

(assert (=> b!448987 (= res!267079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448988 () Bool)

(declare-fun res!267087 () Bool)

(assert (=> b!448988 (=> (not res!267087) (not e!263316))))

(assert (=> b!448988 (= res!267087 (bvsle from!863 i!563))))

(declare-fun b!448989 () Bool)

(declare-fun res!267086 () Bool)

(assert (=> b!448989 (=> (not res!267086) (not e!263315))))

(assert (=> b!448989 (= res!267086 (and (= (size!13684 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13683 _keys!709) (size!13684 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448990 () Bool)

(declare-fun res!267081 () Bool)

(assert (=> b!448990 (=> (not res!267081) (not e!263315))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448990 (= res!267081 (validKeyInArray!0 k!794))))

(declare-fun b!448991 () Bool)

(assert (=> b!448991 (= e!263314 tp_is_empty!12005)))

(declare-fun b!448992 () Bool)

(declare-fun res!267084 () Bool)

(assert (=> b!448992 (=> (not res!267084) (not e!263315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448992 (= res!267084 (validMask!0 mask!1025))))

(declare-fun b!448993 () Bool)

(declare-fun e!263318 () Bool)

(assert (=> b!448993 (= e!263318 (and e!263317 mapRes!19641))))

(declare-fun condMapEmpty!19641 () Bool)

(declare-fun mapDefault!19641 () ValueCell!5659)

