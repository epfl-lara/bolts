; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20626 () Bool)

(assert start!20626)

(declare-fun b_free!5273 () Bool)

(declare-fun b_next!5273 () Bool)

(assert (=> start!20626 (= b_free!5273 (not b_next!5273))))

(declare-fun tp!18851 () Bool)

(declare-fun b_and!12037 () Bool)

(assert (=> start!20626 (= tp!18851 b_and!12037)))

(declare-fun b!205516 () Bool)

(declare-fun e!134398 () Bool)

(declare-fun tp_is_empty!5129 () Bool)

(assert (=> b!205516 (= e!134398 tp_is_empty!5129)))

(declare-fun b!205517 () Bool)

(declare-fun e!134395 () Bool)

(declare-fun e!134396 () Bool)

(assert (=> b!205517 (= e!134395 (not e!134396))))

(declare-fun res!99344 () Bool)

(assert (=> b!205517 (=> res!99344 e!134396)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205517 (= res!99344 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6485 0))(
  ( (V!6486 (val!2609 Int)) )
))
(declare-datatypes ((ValueCell!2221 0))(
  ( (ValueCellFull!2221 (v!4575 V!6485)) (EmptyCell!2221) )
))
(declare-datatypes ((array!9470 0))(
  ( (array!9471 (arr!4485 (Array (_ BitVec 32) ValueCell!2221)) (size!4810 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9470)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3956 0))(
  ( (tuple2!3957 (_1!1988 (_ BitVec 64)) (_2!1988 V!6485)) )
))
(declare-datatypes ((List!2876 0))(
  ( (Nil!2873) (Cons!2872 (h!3514 tuple2!3956) (t!7815 List!2876)) )
))
(declare-datatypes ((ListLongMap!2883 0))(
  ( (ListLongMap!2884 (toList!1457 List!2876)) )
))
(declare-fun lt!104722 () ListLongMap!2883)

(declare-fun zeroValue!615 () V!6485)

(declare-datatypes ((array!9472 0))(
  ( (array!9473 (arr!4486 (Array (_ BitVec 32) (_ BitVec 64))) (size!4811 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9472)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6485)

(declare-fun getCurrentListMap!1023 (array!9472 array!9470 (_ BitVec 32) (_ BitVec 32) V!6485 V!6485 (_ BitVec 32) Int) ListLongMap!2883)

(assert (=> b!205517 (= lt!104722 (getCurrentListMap!1023 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104720 () array!9470)

(declare-fun lt!104724 () ListLongMap!2883)

(assert (=> b!205517 (= lt!104724 (getCurrentListMap!1023 _keys!825 lt!104720 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104721 () ListLongMap!2883)

(declare-fun lt!104725 () ListLongMap!2883)

(assert (=> b!205517 (and (= lt!104721 lt!104725) (= lt!104725 lt!104721))))

(declare-fun lt!104723 () ListLongMap!2883)

(declare-fun lt!104716 () tuple2!3956)

(declare-fun +!474 (ListLongMap!2883 tuple2!3956) ListLongMap!2883)

(assert (=> b!205517 (= lt!104725 (+!474 lt!104723 lt!104716))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6485)

(assert (=> b!205517 (= lt!104716 (tuple2!3957 k!843 v!520))))

(declare-datatypes ((Unit!6247 0))(
  ( (Unit!6248) )
))
(declare-fun lt!104714 () Unit!6247)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!136 (array!9472 array!9470 (_ BitVec 32) (_ BitVec 32) V!6485 V!6485 (_ BitVec 32) (_ BitVec 64) V!6485 (_ BitVec 32) Int) Unit!6247)

(assert (=> b!205517 (= lt!104714 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!136 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!394 (array!9472 array!9470 (_ BitVec 32) (_ BitVec 32) V!6485 V!6485 (_ BitVec 32) Int) ListLongMap!2883)

(assert (=> b!205517 (= lt!104721 (getCurrentListMapNoExtraKeys!394 _keys!825 lt!104720 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205517 (= lt!104720 (array!9471 (store (arr!4485 _values!649) i!601 (ValueCellFull!2221 v!520)) (size!4810 _values!649)))))

(assert (=> b!205517 (= lt!104723 (getCurrentListMapNoExtraKeys!394 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205518 () Bool)

(declare-fun res!99342 () Bool)

(assert (=> b!205518 (=> (not res!99342) (not e!134395))))

(assert (=> b!205518 (= res!99342 (= (select (arr!4486 _keys!825) i!601) k!843))))

(declare-fun b!205519 () Bool)

(declare-fun res!99346 () Bool)

(assert (=> b!205519 (=> (not res!99346) (not e!134395))))

(assert (=> b!205519 (= res!99346 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4811 _keys!825))))))

(declare-fun res!99347 () Bool)

(assert (=> start!20626 (=> (not res!99347) (not e!134395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20626 (= res!99347 (validMask!0 mask!1149))))

(assert (=> start!20626 e!134395))

(declare-fun e!134397 () Bool)

(declare-fun array_inv!2957 (array!9470) Bool)

(assert (=> start!20626 (and (array_inv!2957 _values!649) e!134397)))

(assert (=> start!20626 true))

(assert (=> start!20626 tp_is_empty!5129))

(declare-fun array_inv!2958 (array!9472) Bool)

(assert (=> start!20626 (array_inv!2958 _keys!825)))

(assert (=> start!20626 tp!18851))

(declare-fun b!205520 () Bool)

(declare-fun res!99341 () Bool)

(assert (=> b!205520 (=> (not res!99341) (not e!134395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205520 (= res!99341 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!8762 () Bool)

(declare-fun mapRes!8762 () Bool)

(assert (=> mapIsEmpty!8762 mapRes!8762))

(declare-fun b!205521 () Bool)

(declare-fun e!134401 () Bool)

(assert (=> b!205521 (= e!134396 e!134401)))

(declare-fun res!99343 () Bool)

(assert (=> b!205521 (=> res!99343 e!134401)))

(assert (=> b!205521 (= res!99343 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104715 () ListLongMap!2883)

(assert (=> b!205521 (= lt!104722 lt!104715)))

(declare-fun lt!104718 () tuple2!3956)

(assert (=> b!205521 (= lt!104715 (+!474 lt!104723 lt!104718))))

(declare-fun lt!104719 () ListLongMap!2883)

(assert (=> b!205521 (= lt!104724 lt!104719)))

(assert (=> b!205521 (= lt!104719 (+!474 lt!104725 lt!104718))))

(assert (=> b!205521 (= lt!104724 (+!474 lt!104721 lt!104718))))

(assert (=> b!205521 (= lt!104718 (tuple2!3957 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205522 () Bool)

(assert (=> b!205522 (= e!134401 true)))

(assert (=> b!205522 (= lt!104719 (+!474 lt!104715 lt!104716))))

(declare-fun lt!104717 () Unit!6247)

(declare-fun addCommutativeForDiffKeys!174 (ListLongMap!2883 (_ BitVec 64) V!6485 (_ BitVec 64) V!6485) Unit!6247)

(assert (=> b!205522 (= lt!104717 (addCommutativeForDiffKeys!174 lt!104723 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205523 () Bool)

(declare-fun res!99349 () Bool)

(assert (=> b!205523 (=> (not res!99349) (not e!134395))))

(assert (=> b!205523 (= res!99349 (and (= (size!4810 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4811 _keys!825) (size!4810 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205524 () Bool)

(assert (=> b!205524 (= e!134397 (and e!134398 mapRes!8762))))

(declare-fun condMapEmpty!8762 () Bool)

(declare-fun mapDefault!8762 () ValueCell!2221)

