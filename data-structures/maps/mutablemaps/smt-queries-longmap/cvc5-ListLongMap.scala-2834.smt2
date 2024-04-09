; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40976 () Bool)

(assert start!40976)

(declare-fun b_free!10903 () Bool)

(declare-fun b_next!10903 () Bool)

(assert (=> start!40976 (= b_free!10903 (not b_next!10903))))

(declare-fun tp!38535 () Bool)

(declare-fun b_and!19063 () Bool)

(assert (=> start!40976 (= tp!38535 b_and!19063)))

(declare-fun b!455747 () Bool)

(declare-fun res!271925 () Bool)

(declare-fun e!266376 () Bool)

(assert (=> b!455747 (=> (not res!271925) (not e!266376))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!28251 0))(
  ( (array!28252 (arr!13566 (Array (_ BitVec 32) (_ BitVec 64))) (size!13918 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28251)

(assert (=> b!455747 (= res!271925 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13918 _keys!709))))))

(declare-fun b!455748 () Bool)

(declare-fun res!271926 () Bool)

(assert (=> b!455748 (=> (not res!271926) (not e!266376))))

(declare-datatypes ((List!8180 0))(
  ( (Nil!8177) (Cons!8176 (h!9032 (_ BitVec 64)) (t!14016 List!8180)) )
))
(declare-fun arrayNoDuplicates!0 (array!28251 (_ BitVec 32) List!8180) Bool)

(assert (=> b!455748 (= res!271926 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8177))))

(declare-fun b!455749 () Bool)

(declare-fun res!271934 () Bool)

(assert (=> b!455749 (=> (not res!271934) (not e!266376))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!455749 (= res!271934 (validMask!0 mask!1025))))

(declare-fun b!455750 () Bool)

(declare-fun res!271931 () Bool)

(declare-fun e!266378 () Bool)

(assert (=> b!455750 (=> (not res!271931) (not e!266378))))

(declare-fun lt!206400 () array!28251)

(assert (=> b!455750 (= res!271931 (arrayNoDuplicates!0 lt!206400 #b00000000000000000000000000000000 Nil!8177))))

(declare-fun b!455751 () Bool)

(assert (=> b!455751 (= e!266378 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17427 0))(
  ( (V!17428 (val!6165 Int)) )
))
(declare-fun minValue!515 () V!17427)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5777 0))(
  ( (ValueCellFull!5777 (v!8427 V!17427)) (EmptyCell!5777) )
))
(declare-datatypes ((array!28253 0))(
  ( (array!28254 (arr!13567 (Array (_ BitVec 32) ValueCell!5777)) (size!13919 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28253)

(declare-fun zeroValue!515 () V!17427)

(declare-datatypes ((tuple2!8074 0))(
  ( (tuple2!8075 (_1!4047 (_ BitVec 64)) (_2!4047 V!17427)) )
))
(declare-datatypes ((List!8181 0))(
  ( (Nil!8178) (Cons!8177 (h!9033 tuple2!8074) (t!14017 List!8181)) )
))
(declare-datatypes ((ListLongMap!7001 0))(
  ( (ListLongMap!7002 (toList!3516 List!8181)) )
))
(declare-fun lt!206398 () ListLongMap!7001)

(declare-fun v!412 () V!17427)

(declare-fun getCurrentListMapNoExtraKeys!1692 (array!28251 array!28253 (_ BitVec 32) (_ BitVec 32) V!17427 V!17427 (_ BitVec 32) Int) ListLongMap!7001)

(assert (=> b!455751 (= lt!206398 (getCurrentListMapNoExtraKeys!1692 lt!206400 (array!28254 (store (arr!13567 _values!549) i!563 (ValueCellFull!5777 v!412)) (size!13919 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206399 () ListLongMap!7001)

(assert (=> b!455751 (= lt!206399 (getCurrentListMapNoExtraKeys!1692 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!271923 () Bool)

(assert (=> start!40976 (=> (not res!271923) (not e!266376))))

(assert (=> start!40976 (= res!271923 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13918 _keys!709))))))

(assert (=> start!40976 e!266376))

(declare-fun tp_is_empty!12241 () Bool)

(assert (=> start!40976 tp_is_empty!12241))

(assert (=> start!40976 tp!38535))

(assert (=> start!40976 true))

(declare-fun e!266374 () Bool)

(declare-fun array_inv!9812 (array!28253) Bool)

(assert (=> start!40976 (and (array_inv!9812 _values!549) e!266374)))

(declare-fun array_inv!9813 (array!28251) Bool)

(assert (=> start!40976 (array_inv!9813 _keys!709)))

(declare-fun b!455752 () Bool)

(declare-fun res!271924 () Bool)

(assert (=> b!455752 (=> (not res!271924) (not e!266376))))

(assert (=> b!455752 (= res!271924 (or (= (select (arr!13566 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13566 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!455753 () Bool)

(declare-fun res!271927 () Bool)

(assert (=> b!455753 (=> (not res!271927) (not e!266376))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!455753 (= res!271927 (validKeyInArray!0 k!794))))

(declare-fun mapNonEmpty!20002 () Bool)

(declare-fun mapRes!20002 () Bool)

(declare-fun tp!38536 () Bool)

(declare-fun e!266373 () Bool)

(assert (=> mapNonEmpty!20002 (= mapRes!20002 (and tp!38536 e!266373))))

(declare-fun mapKey!20002 () (_ BitVec 32))

(declare-fun mapRest!20002 () (Array (_ BitVec 32) ValueCell!5777))

(declare-fun mapValue!20002 () ValueCell!5777)

(assert (=> mapNonEmpty!20002 (= (arr!13567 _values!549) (store mapRest!20002 mapKey!20002 mapValue!20002))))

(declare-fun b!455754 () Bool)

(declare-fun res!271933 () Bool)

(assert (=> b!455754 (=> (not res!271933) (not e!266378))))

(assert (=> b!455754 (= res!271933 (bvsle from!863 i!563))))

(declare-fun b!455755 () Bool)

(assert (=> b!455755 (= e!266376 e!266378)))

(declare-fun res!271930 () Bool)

(assert (=> b!455755 (=> (not res!271930) (not e!266378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28251 (_ BitVec 32)) Bool)

(assert (=> b!455755 (= res!271930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206400 mask!1025))))

(assert (=> b!455755 (= lt!206400 (array!28252 (store (arr!13566 _keys!709) i!563 k!794) (size!13918 _keys!709)))))

(declare-fun b!455756 () Bool)

(declare-fun e!266377 () Bool)

(assert (=> b!455756 (= e!266377 tp_is_empty!12241)))

(declare-fun mapIsEmpty!20002 () Bool)

(assert (=> mapIsEmpty!20002 mapRes!20002))

(declare-fun b!455757 () Bool)

(declare-fun res!271932 () Bool)

(assert (=> b!455757 (=> (not res!271932) (not e!266376))))

(assert (=> b!455757 (= res!271932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!455758 () Bool)

(declare-fun res!271928 () Bool)

(assert (=> b!455758 (=> (not res!271928) (not e!266376))))

(declare-fun arrayContainsKey!0 (array!28251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!455758 (= res!271928 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!455759 () Bool)

(assert (=> b!455759 (= e!266374 (and e!266377 mapRes!20002))))

(declare-fun condMapEmpty!20002 () Bool)

(declare-fun mapDefault!20002 () ValueCell!5777)

