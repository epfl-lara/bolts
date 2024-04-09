; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20578 () Bool)

(assert start!20578)

(declare-fun b_free!5225 () Bool)

(declare-fun b_next!5225 () Bool)

(assert (=> start!20578 (= b_free!5225 (not b_next!5225))))

(declare-fun tp!18707 () Bool)

(declare-fun b_and!11989 () Bool)

(assert (=> start!20578 (= tp!18707 b_and!11989)))

(declare-fun b!204652 () Bool)

(declare-fun e!133893 () Bool)

(declare-fun e!133894 () Bool)

(assert (=> b!204652 (= e!133893 (not e!133894))))

(declare-fun res!98701 () Bool)

(assert (=> b!204652 (=> res!98701 e!133894)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204652 (= res!98701 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6421 0))(
  ( (V!6422 (val!2585 Int)) )
))
(declare-datatypes ((ValueCell!2197 0))(
  ( (ValueCellFull!2197 (v!4551 V!6421)) (EmptyCell!2197) )
))
(declare-datatypes ((array!9378 0))(
  ( (array!9379 (arr!4439 (Array (_ BitVec 32) ValueCell!2197)) (size!4764 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9378)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((array!9380 0))(
  ( (array!9381 (arr!4440 (Array (_ BitVec 32) (_ BitVec 64))) (size!4765 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9380)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6421)

(declare-datatypes ((tuple2!3916 0))(
  ( (tuple2!3917 (_1!1968 (_ BitVec 64)) (_2!1968 V!6421)) )
))
(declare-datatypes ((List!2838 0))(
  ( (Nil!2835) (Cons!2834 (h!3476 tuple2!3916) (t!7777 List!2838)) )
))
(declare-datatypes ((ListLongMap!2843 0))(
  ( (ListLongMap!2844 (toList!1437 List!2838)) )
))
(declare-fun lt!103860 () ListLongMap!2843)

(declare-fun zeroValue!615 () V!6421)

(declare-fun getCurrentListMap!1005 (array!9380 array!9378 (_ BitVec 32) (_ BitVec 32) V!6421 V!6421 (_ BitVec 32) Int) ListLongMap!2843)

(assert (=> b!204652 (= lt!103860 (getCurrentListMap!1005 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103858 () array!9378)

(declare-fun lt!103854 () ListLongMap!2843)

(assert (=> b!204652 (= lt!103854 (getCurrentListMap!1005 _keys!825 lt!103858 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103859 () ListLongMap!2843)

(declare-fun lt!103856 () ListLongMap!2843)

(assert (=> b!204652 (and (= lt!103859 lt!103856) (= lt!103856 lt!103859))))

(declare-fun lt!103857 () ListLongMap!2843)

(declare-fun lt!103851 () tuple2!3916)

(declare-fun +!454 (ListLongMap!2843 tuple2!3916) ListLongMap!2843)

(assert (=> b!204652 (= lt!103856 (+!454 lt!103857 lt!103851))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6421)

(assert (=> b!204652 (= lt!103851 (tuple2!3917 k!843 v!520))))

(declare-datatypes ((Unit!6207 0))(
  ( (Unit!6208) )
))
(declare-fun lt!103850 () Unit!6207)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!118 (array!9380 array!9378 (_ BitVec 32) (_ BitVec 32) V!6421 V!6421 (_ BitVec 32) (_ BitVec 64) V!6421 (_ BitVec 32) Int) Unit!6207)

(assert (=> b!204652 (= lt!103850 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!118 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!376 (array!9380 array!9378 (_ BitVec 32) (_ BitVec 32) V!6421 V!6421 (_ BitVec 32) Int) ListLongMap!2843)

(assert (=> b!204652 (= lt!103859 (getCurrentListMapNoExtraKeys!376 _keys!825 lt!103858 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204652 (= lt!103858 (array!9379 (store (arr!4439 _values!649) i!601 (ValueCellFull!2197 v!520)) (size!4764 _values!649)))))

(assert (=> b!204652 (= lt!103857 (getCurrentListMapNoExtraKeys!376 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204653 () Bool)

(declare-fun res!98698 () Bool)

(assert (=> b!204653 (=> (not res!98698) (not e!133893))))

(assert (=> b!204653 (= res!98698 (and (= (size!4764 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4765 _keys!825) (size!4764 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204654 () Bool)

(declare-fun e!133891 () Bool)

(assert (=> b!204654 (= e!133894 e!133891)))

(declare-fun res!98696 () Bool)

(assert (=> b!204654 (=> res!98696 e!133891)))

(assert (=> b!204654 (= res!98696 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!103853 () ListLongMap!2843)

(assert (=> b!204654 (= lt!103860 lt!103853)))

(declare-fun lt!103861 () tuple2!3916)

(assert (=> b!204654 (= lt!103853 (+!454 lt!103857 lt!103861))))

(declare-fun lt!103855 () ListLongMap!2843)

(assert (=> b!204654 (= lt!103854 lt!103855)))

(assert (=> b!204654 (= lt!103855 (+!454 lt!103856 lt!103861))))

(assert (=> b!204654 (= lt!103854 (+!454 lt!103859 lt!103861))))

(assert (=> b!204654 (= lt!103861 (tuple2!3917 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun res!98697 () Bool)

(assert (=> start!20578 (=> (not res!98697) (not e!133893))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20578 (= res!98697 (validMask!0 mask!1149))))

(assert (=> start!20578 e!133893))

(declare-fun e!133892 () Bool)

(declare-fun array_inv!2921 (array!9378) Bool)

(assert (=> start!20578 (and (array_inv!2921 _values!649) e!133892)))

(assert (=> start!20578 true))

(declare-fun tp_is_empty!5081 () Bool)

(assert (=> start!20578 tp_is_empty!5081))

(declare-fun array_inv!2922 (array!9380) Bool)

(assert (=> start!20578 (array_inv!2922 _keys!825)))

(assert (=> start!20578 tp!18707))

(declare-fun b!204655 () Bool)

(assert (=> b!204655 (= e!133891 true)))

(assert (=> b!204655 (= lt!103855 (+!454 lt!103853 lt!103851))))

(declare-fun lt!103852 () Unit!6207)

(declare-fun addCommutativeForDiffKeys!160 (ListLongMap!2843 (_ BitVec 64) V!6421 (_ BitVec 64) V!6421) Unit!6207)

(assert (=> b!204655 (= lt!103852 (addCommutativeForDiffKeys!160 lt!103857 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapNonEmpty!8690 () Bool)

(declare-fun mapRes!8690 () Bool)

(declare-fun tp!18706 () Bool)

(declare-fun e!133897 () Bool)

(assert (=> mapNonEmpty!8690 (= mapRes!8690 (and tp!18706 e!133897))))

(declare-fun mapKey!8690 () (_ BitVec 32))

(declare-fun mapValue!8690 () ValueCell!2197)

(declare-fun mapRest!8690 () (Array (_ BitVec 32) ValueCell!2197))

(assert (=> mapNonEmpty!8690 (= (arr!4439 _values!649) (store mapRest!8690 mapKey!8690 mapValue!8690))))

(declare-fun mapIsEmpty!8690 () Bool)

(assert (=> mapIsEmpty!8690 mapRes!8690))

(declare-fun b!204656 () Bool)

(declare-fun res!98695 () Bool)

(assert (=> b!204656 (=> (not res!98695) (not e!133893))))

(assert (=> b!204656 (= res!98695 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4765 _keys!825))))))

(declare-fun b!204657 () Bool)

(declare-fun res!98700 () Bool)

(assert (=> b!204657 (=> (not res!98700) (not e!133893))))

(declare-datatypes ((List!2839 0))(
  ( (Nil!2836) (Cons!2835 (h!3477 (_ BitVec 64)) (t!7778 List!2839)) )
))
(declare-fun arrayNoDuplicates!0 (array!9380 (_ BitVec 32) List!2839) Bool)

(assert (=> b!204657 (= res!98700 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2836))))

(declare-fun b!204658 () Bool)

(declare-fun e!133896 () Bool)

(assert (=> b!204658 (= e!133896 tp_is_empty!5081)))

(declare-fun b!204659 () Bool)

(assert (=> b!204659 (= e!133892 (and e!133896 mapRes!8690))))

(declare-fun condMapEmpty!8690 () Bool)

(declare-fun mapDefault!8690 () ValueCell!2197)

