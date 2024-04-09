; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39646 () Bool)

(assert start!39646)

(declare-fun b_free!9905 () Bool)

(declare-fun b_next!9905 () Bool)

(assert (=> start!39646 (= b_free!9905 (not b_next!9905))))

(declare-fun tp!35244 () Bool)

(declare-fun b_and!17579 () Bool)

(assert (=> start!39646 (= tp!35244 b_and!17579)))

(declare-fun b!424940 () Bool)

(declare-fun res!248795 () Bool)

(declare-fun e!252325 () Bool)

(assert (=> b!424940 (=> (not res!248795) (not e!252325))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25941 0))(
  ( (array!25942 (arr!12417 (Array (_ BitVec 32) (_ BitVec 64))) (size!12769 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25941)

(assert (=> b!424940 (= res!248795 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12769 _keys!709))))))

(declare-fun b!424942 () Bool)

(declare-fun res!248801 () Bool)

(assert (=> b!424942 (=> (not res!248801) (not e!252325))))

(declare-datatypes ((List!7302 0))(
  ( (Nil!7299) (Cons!7298 (h!8154 (_ BitVec 64)) (t!12754 List!7302)) )
))
(declare-fun arrayNoDuplicates!0 (array!25941 (_ BitVec 32) List!7302) Bool)

(assert (=> b!424942 (= res!248801 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7299))))

(declare-fun mapIsEmpty!18207 () Bool)

(declare-fun mapRes!18207 () Bool)

(assert (=> mapIsEmpty!18207 mapRes!18207))

(declare-fun b!424943 () Bool)

(declare-fun res!248799 () Bool)

(assert (=> b!424943 (=> (not res!248799) (not e!252325))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25941 (_ BitVec 32)) Bool)

(assert (=> b!424943 (= res!248799 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424944 () Bool)

(declare-fun e!252326 () Bool)

(declare-fun tp_is_empty!11057 () Bool)

(assert (=> b!424944 (= e!252326 tp_is_empty!11057)))

(declare-fun b!424945 () Bool)

(declare-fun res!248797 () Bool)

(declare-fun e!252327 () Bool)

(assert (=> b!424945 (=> (not res!248797) (not e!252327))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!424945 (= res!248797 (bvsle from!863 i!563))))

(declare-fun b!424946 () Bool)

(assert (=> b!424946 (= e!252325 e!252327)))

(declare-fun res!248796 () Bool)

(assert (=> b!424946 (=> (not res!248796) (not e!252327))))

(declare-fun lt!194517 () array!25941)

(assert (=> b!424946 (= res!248796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194517 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!424946 (= lt!194517 (array!25942 (store (arr!12417 _keys!709) i!563 k!794) (size!12769 _keys!709)))))

(declare-fun b!424947 () Bool)

(declare-fun res!248804 () Bool)

(assert (=> b!424947 (=> (not res!248804) (not e!252325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424947 (= res!248804 (validKeyInArray!0 k!794))))

(declare-fun b!424948 () Bool)

(declare-fun e!252323 () Bool)

(assert (=> b!424948 (= e!252323 tp_is_empty!11057)))

(declare-fun b!424949 () Bool)

(declare-fun e!252324 () Bool)

(assert (=> b!424949 (= e!252327 e!252324)))

(declare-fun res!248793 () Bool)

(assert (=> b!424949 (=> (not res!248793) (not e!252324))))

(assert (=> b!424949 (= res!248793 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!15847 0))(
  ( (V!15848 (val!5573 Int)) )
))
(declare-fun minValue!515 () V!15847)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7258 0))(
  ( (tuple2!7259 (_1!3639 (_ BitVec 64)) (_2!3639 V!15847)) )
))
(declare-datatypes ((List!7303 0))(
  ( (Nil!7300) (Cons!7299 (h!8155 tuple2!7258) (t!12755 List!7303)) )
))
(declare-datatypes ((ListLongMap!6185 0))(
  ( (ListLongMap!6186 (toList!3108 List!7303)) )
))
(declare-fun lt!194520 () ListLongMap!6185)

(declare-datatypes ((ValueCell!5185 0))(
  ( (ValueCellFull!5185 (v!7816 V!15847)) (EmptyCell!5185) )
))
(declare-datatypes ((array!25943 0))(
  ( (array!25944 (arr!12418 (Array (_ BitVec 32) ValueCell!5185)) (size!12770 (_ BitVec 32))) )
))
(declare-fun lt!194519 () array!25943)

(declare-fun zeroValue!515 () V!15847)

(declare-fun getCurrentListMapNoExtraKeys!1309 (array!25941 array!25943 (_ BitVec 32) (_ BitVec 32) V!15847 V!15847 (_ BitVec 32) Int) ListLongMap!6185)

(assert (=> b!424949 (= lt!194520 (getCurrentListMapNoExtraKeys!1309 lt!194517 lt!194519 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!25943)

(declare-fun v!412 () V!15847)

(assert (=> b!424949 (= lt!194519 (array!25944 (store (arr!12418 _values!549) i!563 (ValueCellFull!5185 v!412)) (size!12770 _values!549)))))

(declare-fun lt!194516 () ListLongMap!6185)

(assert (=> b!424949 (= lt!194516 (getCurrentListMapNoExtraKeys!1309 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424950 () Bool)

(declare-fun e!252322 () Bool)

(assert (=> b!424950 (= e!252322 (and e!252323 mapRes!18207))))

(declare-fun condMapEmpty!18207 () Bool)

(declare-fun mapDefault!18207 () ValueCell!5185)

