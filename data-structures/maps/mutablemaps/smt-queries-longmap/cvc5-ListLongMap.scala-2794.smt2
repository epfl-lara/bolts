; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40660 () Bool)

(assert start!40660)

(declare-fun b_free!10663 () Bool)

(declare-fun b_next!10663 () Bool)

(assert (=> start!40660 (= b_free!10663 (not b_next!10663))))

(declare-fun tp!37809 () Bool)

(declare-fun b_and!18689 () Bool)

(assert (=> start!40660 (= tp!37809 b_and!18689)))

(declare-fun b!448892 () Bool)

(declare-fun res!267015 () Bool)

(declare-fun e!263280 () Bool)

(assert (=> b!448892 (=> (not res!267015) (not e!263280))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448892 (= res!267015 (validKeyInArray!0 k!794))))

(declare-fun b!448893 () Bool)

(declare-fun res!267012 () Bool)

(assert (=> b!448893 (=> (not res!267012) (not e!263280))))

(declare-datatypes ((array!27769 0))(
  ( (array!27770 (arr!13327 (Array (_ BitVec 32) (_ BitVec 64))) (size!13679 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27769)

(declare-datatypes ((List!7979 0))(
  ( (Nil!7976) (Cons!7975 (h!8831 (_ BitVec 64)) (t!13749 List!7979)) )
))
(declare-fun arrayNoDuplicates!0 (array!27769 (_ BitVec 32) List!7979) Bool)

(assert (=> b!448893 (= res!267012 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7976))))

(declare-fun b!448894 () Bool)

(declare-fun e!263281 () Bool)

(declare-fun tp_is_empty!12001 () Bool)

(assert (=> b!448894 (= e!263281 tp_is_empty!12001)))

(declare-fun b!448895 () Bool)

(declare-fun res!267016 () Bool)

(assert (=> b!448895 (=> (not res!267016) (not e!263280))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27769 (_ BitVec 32)) Bool)

(assert (=> b!448895 (= res!267016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448896 () Bool)

(declare-fun e!263282 () Bool)

(assert (=> b!448896 (= e!263282 tp_is_empty!12001)))

(declare-fun mapNonEmpty!19635 () Bool)

(declare-fun mapRes!19635 () Bool)

(declare-fun tp!37808 () Bool)

(assert (=> mapNonEmpty!19635 (= mapRes!19635 (and tp!37808 e!263282))))

(declare-fun mapKey!19635 () (_ BitVec 32))

(declare-datatypes ((V!17107 0))(
  ( (V!17108 (val!6045 Int)) )
))
(declare-datatypes ((ValueCell!5657 0))(
  ( (ValueCellFull!5657 (v!8296 V!17107)) (EmptyCell!5657) )
))
(declare-fun mapRest!19635 () (Array (_ BitVec 32) ValueCell!5657))

(declare-fun mapValue!19635 () ValueCell!5657)

(declare-datatypes ((array!27771 0))(
  ( (array!27772 (arr!13328 (Array (_ BitVec 32) ValueCell!5657)) (size!13680 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27771)

(assert (=> mapNonEmpty!19635 (= (arr!13328 _values!549) (store mapRest!19635 mapKey!19635 mapValue!19635))))

(declare-fun b!448897 () Bool)

(declare-fun e!263278 () Bool)

(assert (=> b!448897 (= e!263280 e!263278)))

(declare-fun res!267009 () Bool)

(assert (=> b!448897 (=> (not res!267009) (not e!263278))))

(declare-fun lt!204259 () array!27769)

(assert (=> b!448897 (= res!267009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204259 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448897 (= lt!204259 (array!27770 (store (arr!13327 _keys!709) i!563 k!794) (size!13679 _keys!709)))))

(declare-fun b!448898 () Bool)

(declare-fun res!267018 () Bool)

(assert (=> b!448898 (=> (not res!267018) (not e!263280))))

(assert (=> b!448898 (= res!267018 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13679 _keys!709))))))

(declare-fun b!448899 () Bool)

(assert (=> b!448899 (= e!263278 false)))

(declare-fun minValue!515 () V!17107)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun v!412 () V!17107)

(declare-datatypes ((tuple2!7868 0))(
  ( (tuple2!7869 (_1!3944 (_ BitVec 64)) (_2!3944 V!17107)) )
))
(declare-datatypes ((List!7980 0))(
  ( (Nil!7977) (Cons!7976 (h!8832 tuple2!7868) (t!13750 List!7980)) )
))
(declare-datatypes ((ListLongMap!6795 0))(
  ( (ListLongMap!6796 (toList!3413 List!7980)) )
))
(declare-fun lt!204258 () ListLongMap!6795)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17107)

(declare-fun getCurrentListMapNoExtraKeys!1593 (array!27769 array!27771 (_ BitVec 32) (_ BitVec 32) V!17107 V!17107 (_ BitVec 32) Int) ListLongMap!6795)

(assert (=> b!448899 (= lt!204258 (getCurrentListMapNoExtraKeys!1593 lt!204259 (array!27772 (store (arr!13328 _values!549) i!563 (ValueCellFull!5657 v!412)) (size!13680 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204257 () ListLongMap!6795)

(assert (=> b!448899 (= lt!204257 (getCurrentListMapNoExtraKeys!1593 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!19635 () Bool)

(assert (=> mapIsEmpty!19635 mapRes!19635))

(declare-fun b!448901 () Bool)

(declare-fun res!267010 () Bool)

(assert (=> b!448901 (=> (not res!267010) (not e!263280))))

(assert (=> b!448901 (= res!267010 (or (= (select (arr!13327 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13327 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448902 () Bool)

(declare-fun res!267014 () Bool)

(assert (=> b!448902 (=> (not res!267014) (not e!263278))))

(assert (=> b!448902 (= res!267014 (arrayNoDuplicates!0 lt!204259 #b00000000000000000000000000000000 Nil!7976))))

(declare-fun b!448903 () Bool)

(declare-fun res!267013 () Bool)

(assert (=> b!448903 (=> (not res!267013) (not e!263280))))

(declare-fun arrayContainsKey!0 (array!27769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448903 (= res!267013 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!448904 () Bool)

(declare-fun res!267008 () Bool)

(assert (=> b!448904 (=> (not res!267008) (not e!263280))))

(assert (=> b!448904 (= res!267008 (and (= (size!13680 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13679 _keys!709) (size!13680 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448905 () Bool)

(declare-fun res!267011 () Bool)

(assert (=> b!448905 (=> (not res!267011) (not e!263280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448905 (= res!267011 (validMask!0 mask!1025))))

(declare-fun b!448906 () Bool)

(declare-fun res!267007 () Bool)

(assert (=> b!448906 (=> (not res!267007) (not e!263278))))

(assert (=> b!448906 (= res!267007 (bvsle from!863 i!563))))

(declare-fun res!267017 () Bool)

(assert (=> start!40660 (=> (not res!267017) (not e!263280))))

(assert (=> start!40660 (= res!267017 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13679 _keys!709))))))

(assert (=> start!40660 e!263280))

(assert (=> start!40660 tp_is_empty!12001))

(assert (=> start!40660 tp!37809))

(assert (=> start!40660 true))

(declare-fun e!263283 () Bool)

(declare-fun array_inv!9648 (array!27771) Bool)

(assert (=> start!40660 (and (array_inv!9648 _values!549) e!263283)))

(declare-fun array_inv!9649 (array!27769) Bool)

(assert (=> start!40660 (array_inv!9649 _keys!709)))

(declare-fun b!448900 () Bool)

(assert (=> b!448900 (= e!263283 (and e!263281 mapRes!19635))))

(declare-fun condMapEmpty!19635 () Bool)

(declare-fun mapDefault!19635 () ValueCell!5657)

