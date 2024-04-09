; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20440 () Bool)

(assert start!20440)

(declare-fun b_free!5087 () Bool)

(declare-fun b_next!5087 () Bool)

(assert (=> start!20440 (= b_free!5087 (not b_next!5087))))

(declare-fun tp!18293 () Bool)

(declare-fun b_and!11851 () Bool)

(assert (=> start!20440 (= tp!18293 b_and!11851)))

(declare-fun b!202150 () Bool)

(declare-fun e!132446 () Bool)

(declare-fun e!132444 () Bool)

(assert (=> b!202150 (= e!132446 (not e!132444))))

(declare-fun res!96820 () Bool)

(assert (=> b!202150 (=> res!96820 e!132444)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202150 (= res!96820 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6237 0))(
  ( (V!6238 (val!2516 Int)) )
))
(declare-datatypes ((tuple2!3808 0))(
  ( (tuple2!3809 (_1!1914 (_ BitVec 64)) (_2!1914 V!6237)) )
))
(declare-datatypes ((List!2741 0))(
  ( (Nil!2738) (Cons!2737 (h!3379 tuple2!3808) (t!7680 List!2741)) )
))
(declare-datatypes ((ListLongMap!2735 0))(
  ( (ListLongMap!2736 (toList!1383 List!2741)) )
))
(declare-fun lt!101410 () ListLongMap!2735)

(declare-datatypes ((ValueCell!2128 0))(
  ( (ValueCellFull!2128 (v!4482 V!6237)) (EmptyCell!2128) )
))
(declare-datatypes ((array!9110 0))(
  ( (array!9111 (arr!4305 (Array (_ BitVec 32) ValueCell!2128)) (size!4630 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9110)

(declare-fun zeroValue!615 () V!6237)

(declare-datatypes ((array!9112 0))(
  ( (array!9113 (arr!4306 (Array (_ BitVec 32) (_ BitVec 64))) (size!4631 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9112)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6237)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun getCurrentListMap!961 (array!9112 array!9110 (_ BitVec 32) (_ BitVec 32) V!6237 V!6237 (_ BitVec 32) Int) ListLongMap!2735)

(assert (=> b!202150 (= lt!101410 (getCurrentListMap!961 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101403 () ListLongMap!2735)

(declare-fun lt!101407 () array!9110)

(assert (=> b!202150 (= lt!101403 (getCurrentListMap!961 _keys!825 lt!101407 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101404 () ListLongMap!2735)

(declare-fun lt!101413 () ListLongMap!2735)

(assert (=> b!202150 (and (= lt!101404 lt!101413) (= lt!101413 lt!101404))))

(declare-fun lt!101409 () ListLongMap!2735)

(declare-fun lt!101408 () tuple2!3808)

(declare-fun +!400 (ListLongMap!2735 tuple2!3808) ListLongMap!2735)

(assert (=> b!202150 (= lt!101413 (+!400 lt!101409 lt!101408))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6237)

(assert (=> b!202150 (= lt!101408 (tuple2!3809 k!843 v!520))))

(declare-datatypes ((Unit!6107 0))(
  ( (Unit!6108) )
))
(declare-fun lt!101399 () Unit!6107)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!74 (array!9112 array!9110 (_ BitVec 32) (_ BitVec 32) V!6237 V!6237 (_ BitVec 32) (_ BitVec 64) V!6237 (_ BitVec 32) Int) Unit!6107)

(assert (=> b!202150 (= lt!101399 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!74 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!332 (array!9112 array!9110 (_ BitVec 32) (_ BitVec 32) V!6237 V!6237 (_ BitVec 32) Int) ListLongMap!2735)

(assert (=> b!202150 (= lt!101404 (getCurrentListMapNoExtraKeys!332 _keys!825 lt!101407 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202150 (= lt!101407 (array!9111 (store (arr!4305 _values!649) i!601 (ValueCellFull!2128 v!520)) (size!4630 _values!649)))))

(assert (=> b!202150 (= lt!101409 (getCurrentListMapNoExtraKeys!332 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!96819 () Bool)

(assert (=> start!20440 (=> (not res!96819) (not e!132446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20440 (= res!96819 (validMask!0 mask!1149))))

(assert (=> start!20440 e!132446))

(declare-fun e!132447 () Bool)

(declare-fun array_inv!2833 (array!9110) Bool)

(assert (=> start!20440 (and (array_inv!2833 _values!649) e!132447)))

(assert (=> start!20440 true))

(declare-fun tp_is_empty!4943 () Bool)

(assert (=> start!20440 tp_is_empty!4943))

(declare-fun array_inv!2834 (array!9112) Bool)

(assert (=> start!20440 (array_inv!2834 _keys!825)))

(assert (=> start!20440 tp!18293))

(declare-fun b!202151 () Bool)

(declare-fun e!132443 () Bool)

(assert (=> b!202151 (= e!132443 true)))

(declare-fun lt!101401 () tuple2!3808)

(declare-fun lt!101411 () ListLongMap!2735)

(declare-fun lt!101412 () ListLongMap!2735)

(assert (=> b!202151 (= (+!400 lt!101412 lt!101401) (+!400 lt!101411 lt!101408))))

(declare-fun lt!101398 () ListLongMap!2735)

(declare-fun lt!101405 () Unit!6107)

(declare-fun addCommutativeForDiffKeys!121 (ListLongMap!2735 (_ BitVec 64) V!6237 (_ BitVec 64) V!6237) Unit!6107)

(assert (=> b!202151 (= lt!101405 (addCommutativeForDiffKeys!121 lt!101398 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!202152 () Bool)

(assert (=> b!202152 (= e!132444 e!132443)))

(declare-fun res!96817 () Bool)

(assert (=> b!202152 (=> res!96817 e!132443)))

(assert (=> b!202152 (= res!96817 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!101402 () ListLongMap!2735)

(assert (=> b!202152 (= lt!101402 lt!101412)))

(assert (=> b!202152 (= lt!101412 (+!400 lt!101398 lt!101408))))

(declare-fun lt!101406 () Unit!6107)

(assert (=> b!202152 (= lt!101406 (addCommutativeForDiffKeys!121 lt!101409 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(assert (=> b!202152 (= lt!101403 (+!400 lt!101402 lt!101401))))

(declare-fun lt!101400 () tuple2!3808)

(assert (=> b!202152 (= lt!101402 (+!400 lt!101413 lt!101400))))

(assert (=> b!202152 (= lt!101410 lt!101411)))

(assert (=> b!202152 (= lt!101411 (+!400 lt!101398 lt!101401))))

(assert (=> b!202152 (= lt!101398 (+!400 lt!101409 lt!101400))))

(assert (=> b!202152 (= lt!101403 (+!400 (+!400 lt!101404 lt!101400) lt!101401))))

(assert (=> b!202152 (= lt!101401 (tuple2!3809 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!202152 (= lt!101400 (tuple2!3809 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202153 () Bool)

(declare-fun e!132442 () Bool)

(declare-fun mapRes!8483 () Bool)

(assert (=> b!202153 (= e!132447 (and e!132442 mapRes!8483))))

(declare-fun condMapEmpty!8483 () Bool)

(declare-fun mapDefault!8483 () ValueCell!2128)

