; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20668 () Bool)

(assert start!20668)

(declare-fun b_free!5315 () Bool)

(declare-fun b_next!5315 () Bool)

(assert (=> start!20668 (= b_free!5315 (not b_next!5315))))

(declare-fun tp!18976 () Bool)

(declare-fun b_and!12079 () Bool)

(assert (=> start!20668 (= tp!18976 b_and!12079)))

(declare-fun b!206272 () Bool)

(declare-fun e!134841 () Bool)

(declare-fun tp_is_empty!5171 () Bool)

(assert (=> b!206272 (= e!134841 tp_is_empty!5171)))

(declare-fun mapIsEmpty!8825 () Bool)

(declare-fun mapRes!8825 () Bool)

(assert (=> mapIsEmpty!8825 mapRes!8825))

(declare-fun b!206274 () Bool)

(declare-fun res!99912 () Bool)

(declare-fun e!134838 () Bool)

(assert (=> b!206274 (=> (not res!99912) (not e!134838))))

(declare-datatypes ((array!9552 0))(
  ( (array!9553 (arr!4526 (Array (_ BitVec 32) (_ BitVec 64))) (size!4851 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9552)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6541 0))(
  ( (V!6542 (val!2630 Int)) )
))
(declare-datatypes ((ValueCell!2242 0))(
  ( (ValueCellFull!2242 (v!4596 V!6541)) (EmptyCell!2242) )
))
(declare-datatypes ((array!9554 0))(
  ( (array!9555 (arr!4527 (Array (_ BitVec 32) ValueCell!2242)) (size!4852 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9554)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!206274 (= res!99912 (and (= (size!4852 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4851 _keys!825) (size!4852 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206275 () Bool)

(declare-fun e!134840 () Bool)

(assert (=> b!206275 (= e!134838 (not e!134840))))

(declare-fun res!99915 () Bool)

(assert (=> b!206275 (=> res!99915 e!134840)))

(assert (=> b!206275 (= res!99915 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3992 0))(
  ( (tuple2!3993 (_1!2006 (_ BitVec 64)) (_2!2006 V!6541)) )
))
(declare-datatypes ((List!2908 0))(
  ( (Nil!2905) (Cons!2904 (h!3546 tuple2!3992) (t!7847 List!2908)) )
))
(declare-datatypes ((ListLongMap!2919 0))(
  ( (ListLongMap!2920 (toList!1475 List!2908)) )
))
(declare-fun lt!105475 () ListLongMap!2919)

(declare-fun zeroValue!615 () V!6541)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6541)

(declare-fun getCurrentListMap!1037 (array!9552 array!9554 (_ BitVec 32) (_ BitVec 32) V!6541 V!6541 (_ BitVec 32) Int) ListLongMap!2919)

(assert (=> b!206275 (= lt!105475 (getCurrentListMap!1037 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105470 () array!9554)

(declare-fun lt!105479 () ListLongMap!2919)

(assert (=> b!206275 (= lt!105479 (getCurrentListMap!1037 _keys!825 lt!105470 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105481 () ListLongMap!2919)

(declare-fun lt!105477 () ListLongMap!2919)

(assert (=> b!206275 (and (= lt!105481 lt!105477) (= lt!105477 lt!105481))))

(declare-fun lt!105480 () ListLongMap!2919)

(declare-fun lt!105474 () tuple2!3992)

(declare-fun +!492 (ListLongMap!2919 tuple2!3992) ListLongMap!2919)

(assert (=> b!206275 (= lt!105477 (+!492 lt!105480 lt!105474))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6541)

(assert (=> b!206275 (= lt!105474 (tuple2!3993 k!843 v!520))))

(declare-datatypes ((Unit!6279 0))(
  ( (Unit!6280) )
))
(declare-fun lt!105472 () Unit!6279)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!150 (array!9552 array!9554 (_ BitVec 32) (_ BitVec 32) V!6541 V!6541 (_ BitVec 32) (_ BitVec 64) V!6541 (_ BitVec 32) Int) Unit!6279)

(assert (=> b!206275 (= lt!105472 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!150 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!408 (array!9552 array!9554 (_ BitVec 32) (_ BitVec 32) V!6541 V!6541 (_ BitVec 32) Int) ListLongMap!2919)

(assert (=> b!206275 (= lt!105481 (getCurrentListMapNoExtraKeys!408 _keys!825 lt!105470 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206275 (= lt!105470 (array!9555 (store (arr!4527 _values!649) i!601 (ValueCellFull!2242 v!520)) (size!4852 _values!649)))))

(assert (=> b!206275 (= lt!105480 (getCurrentListMapNoExtraKeys!408 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206276 () Bool)

(declare-fun res!99911 () Bool)

(assert (=> b!206276 (=> (not res!99911) (not e!134838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9552 (_ BitVec 32)) Bool)

(assert (=> b!206276 (= res!99911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206277 () Bool)

(declare-fun e!134839 () Bool)

(assert (=> b!206277 (= e!134839 tp_is_empty!5171)))

(declare-fun b!206278 () Bool)

(declare-fun res!99909 () Bool)

(assert (=> b!206278 (=> (not res!99909) (not e!134838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206278 (= res!99909 (validKeyInArray!0 k!843))))

(declare-fun b!206279 () Bool)

(declare-fun e!134842 () Bool)

(assert (=> b!206279 (= e!134840 e!134842)))

(declare-fun res!99914 () Bool)

(assert (=> b!206279 (=> res!99914 e!134842)))

(assert (=> b!206279 (= res!99914 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!105476 () ListLongMap!2919)

(assert (=> b!206279 (= lt!105475 lt!105476)))

(declare-fun lt!105478 () tuple2!3992)

(assert (=> b!206279 (= lt!105476 (+!492 lt!105480 lt!105478))))

(declare-fun lt!105473 () ListLongMap!2919)

(assert (=> b!206279 (= lt!105479 lt!105473)))

(assert (=> b!206279 (= lt!105473 (+!492 lt!105477 lt!105478))))

(assert (=> b!206279 (= lt!105479 (+!492 lt!105481 lt!105478))))

(assert (=> b!206279 (= lt!105478 (tuple2!3993 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206280 () Bool)

(declare-fun res!99916 () Bool)

(assert (=> b!206280 (=> (not res!99916) (not e!134838))))

(assert (=> b!206280 (= res!99916 (= (select (arr!4526 _keys!825) i!601) k!843))))

(declare-fun b!206281 () Bool)

(declare-fun res!99910 () Bool)

(assert (=> b!206281 (=> (not res!99910) (not e!134838))))

(assert (=> b!206281 (= res!99910 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4851 _keys!825))))))

(declare-fun b!206282 () Bool)

(assert (=> b!206282 (= e!134842 true)))

(assert (=> b!206282 (= lt!105473 (+!492 lt!105476 lt!105474))))

(declare-fun lt!105471 () Unit!6279)

(declare-fun addCommutativeForDiffKeys!190 (ListLongMap!2919 (_ BitVec 64) V!6541 (_ BitVec 64) V!6541) Unit!6279)

(assert (=> b!206282 (= lt!105471 (addCommutativeForDiffKeys!190 lt!105480 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206283 () Bool)

(declare-fun e!134837 () Bool)

(assert (=> b!206283 (= e!134837 (and e!134839 mapRes!8825))))

(declare-fun condMapEmpty!8825 () Bool)

(declare-fun mapDefault!8825 () ValueCell!2242)

