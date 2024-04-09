; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40658 () Bool)

(assert start!40658)

(declare-fun b_free!10661 () Bool)

(declare-fun b_next!10661 () Bool)

(assert (=> start!40658 (= b_free!10661 (not b_next!10661))))

(declare-fun tp!37803 () Bool)

(declare-fun b_and!18687 () Bool)

(assert (=> start!40658 (= tp!37803 b_and!18687)))

(declare-fun b!448847 () Bool)

(declare-fun res!266972 () Bool)

(declare-fun e!263263 () Bool)

(assert (=> b!448847 (=> (not res!266972) (not e!263263))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!27765 0))(
  ( (array!27766 (arr!13325 (Array (_ BitVec 32) (_ BitVec 64))) (size!13677 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27765)

(assert (=> b!448847 (= res!266972 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13677 _keys!709))))))

(declare-fun res!266975 () Bool)

(assert (=> start!40658 (=> (not res!266975) (not e!263263))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40658 (= res!266975 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13677 _keys!709))))))

(assert (=> start!40658 e!263263))

(declare-fun tp_is_empty!11999 () Bool)

(assert (=> start!40658 tp_is_empty!11999))

(assert (=> start!40658 tp!37803))

(assert (=> start!40658 true))

(declare-datatypes ((V!17103 0))(
  ( (V!17104 (val!6044 Int)) )
))
(declare-datatypes ((ValueCell!5656 0))(
  ( (ValueCellFull!5656 (v!8295 V!17103)) (EmptyCell!5656) )
))
(declare-datatypes ((array!27767 0))(
  ( (array!27768 (arr!13326 (Array (_ BitVec 32) ValueCell!5656)) (size!13678 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27767)

(declare-fun e!263261 () Bool)

(declare-fun array_inv!9646 (array!27767) Bool)

(assert (=> start!40658 (and (array_inv!9646 _values!549) e!263261)))

(declare-fun array_inv!9647 (array!27765) Bool)

(assert (=> start!40658 (array_inv!9647 _keys!709)))

(declare-fun b!448848 () Bool)

(declare-fun e!263264 () Bool)

(assert (=> b!448848 (= e!263264 false)))

(declare-fun minValue!515 () V!17103)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7866 0))(
  ( (tuple2!7867 (_1!3943 (_ BitVec 64)) (_2!3943 V!17103)) )
))
(declare-datatypes ((List!7977 0))(
  ( (Nil!7974) (Cons!7973 (h!8829 tuple2!7866) (t!13747 List!7977)) )
))
(declare-datatypes ((ListLongMap!6793 0))(
  ( (ListLongMap!6794 (toList!3412 List!7977)) )
))
(declare-fun lt!204249 () ListLongMap!6793)

(declare-fun zeroValue!515 () V!17103)

(declare-fun v!412 () V!17103)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!204250 () array!27765)

(declare-fun defaultEntry!557 () Int)

(declare-fun getCurrentListMapNoExtraKeys!1592 (array!27765 array!27767 (_ BitVec 32) (_ BitVec 32) V!17103 V!17103 (_ BitVec 32) Int) ListLongMap!6793)

(assert (=> b!448848 (= lt!204249 (getCurrentListMapNoExtraKeys!1592 lt!204250 (array!27768 (store (arr!13326 _values!549) i!563 (ValueCellFull!5656 v!412)) (size!13678 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204248 () ListLongMap!6793)

(assert (=> b!448848 (= lt!204248 (getCurrentListMapNoExtraKeys!1592 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448849 () Bool)

(declare-fun e!263260 () Bool)

(assert (=> b!448849 (= e!263260 tp_is_empty!11999)))

(declare-fun b!448850 () Bool)

(declare-fun res!266977 () Bool)

(assert (=> b!448850 (=> (not res!266977) (not e!263263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27765 (_ BitVec 32)) Bool)

(assert (=> b!448850 (= res!266977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!448851 () Bool)

(declare-fun res!266981 () Bool)

(assert (=> b!448851 (=> (not res!266981) (not e!263263))))

(assert (=> b!448851 (= res!266981 (and (= (size!13678 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13677 _keys!709) (size!13678 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448852 () Bool)

(declare-fun res!266979 () Bool)

(assert (=> b!448852 (=> (not res!266979) (not e!263263))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448852 (= res!266979 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!19632 () Bool)

(declare-fun mapRes!19632 () Bool)

(assert (=> mapIsEmpty!19632 mapRes!19632))

(declare-fun b!448853 () Bool)

(declare-fun res!266971 () Bool)

(assert (=> b!448853 (=> (not res!266971) (not e!263264))))

(assert (=> b!448853 (= res!266971 (bvsle from!863 i!563))))

(declare-fun b!448854 () Bool)

(declare-fun res!266974 () Bool)

(assert (=> b!448854 (=> (not res!266974) (not e!263263))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448854 (= res!266974 (validMask!0 mask!1025))))

(declare-fun b!448855 () Bool)

(declare-fun res!266976 () Bool)

(assert (=> b!448855 (=> (not res!266976) (not e!263264))))

(declare-datatypes ((List!7978 0))(
  ( (Nil!7975) (Cons!7974 (h!8830 (_ BitVec 64)) (t!13748 List!7978)) )
))
(declare-fun arrayNoDuplicates!0 (array!27765 (_ BitVec 32) List!7978) Bool)

(assert (=> b!448855 (= res!266976 (arrayNoDuplicates!0 lt!204250 #b00000000000000000000000000000000 Nil!7975))))

(declare-fun b!448856 () Bool)

(declare-fun res!266973 () Bool)

(assert (=> b!448856 (=> (not res!266973) (not e!263263))))

(assert (=> b!448856 (= res!266973 (or (= (select (arr!13325 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13325 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448857 () Bool)

(assert (=> b!448857 (= e!263263 e!263264)))

(declare-fun res!266982 () Bool)

(assert (=> b!448857 (=> (not res!266982) (not e!263264))))

(assert (=> b!448857 (= res!266982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204250 mask!1025))))

(assert (=> b!448857 (= lt!204250 (array!27766 (store (arr!13325 _keys!709) i!563 k!794) (size!13677 _keys!709)))))

(declare-fun mapNonEmpty!19632 () Bool)

(declare-fun tp!37802 () Bool)

(declare-fun e!263265 () Bool)

(assert (=> mapNonEmpty!19632 (= mapRes!19632 (and tp!37802 e!263265))))

(declare-fun mapKey!19632 () (_ BitVec 32))

(declare-fun mapValue!19632 () ValueCell!5656)

(declare-fun mapRest!19632 () (Array (_ BitVec 32) ValueCell!5656))

(assert (=> mapNonEmpty!19632 (= (arr!13326 _values!549) (store mapRest!19632 mapKey!19632 mapValue!19632))))

(declare-fun b!448858 () Bool)

(declare-fun res!266980 () Bool)

(assert (=> b!448858 (=> (not res!266980) (not e!263263))))

(assert (=> b!448858 (= res!266980 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7975))))

(declare-fun b!448859 () Bool)

(declare-fun res!266978 () Bool)

(assert (=> b!448859 (=> (not res!266978) (not e!263263))))

(declare-fun arrayContainsKey!0 (array!27765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448859 (= res!266978 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!448860 () Bool)

(assert (=> b!448860 (= e!263265 tp_is_empty!11999)))

(declare-fun b!448861 () Bool)

(assert (=> b!448861 (= e!263261 (and e!263260 mapRes!19632))))

(declare-fun condMapEmpty!19632 () Bool)

(declare-fun mapDefault!19632 () ValueCell!5656)

