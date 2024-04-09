; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20574 () Bool)

(assert start!20574)

(declare-fun b_free!5221 () Bool)

(declare-fun b_next!5221 () Bool)

(assert (=> start!20574 (= b_free!5221 (not b_next!5221))))

(declare-fun tp!18694 () Bool)

(declare-fun b_and!11985 () Bool)

(assert (=> start!20574 (= tp!18694 b_and!11985)))

(declare-fun b!204580 () Bool)

(declare-fun res!98640 () Bool)

(declare-fun e!133851 () Bool)

(assert (=> b!204580 (=> (not res!98640) (not e!133851))))

(declare-datatypes ((array!9370 0))(
  ( (array!9371 (arr!4435 (Array (_ BitVec 32) (_ BitVec 64))) (size!4760 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9370)

(declare-datatypes ((List!2834 0))(
  ( (Nil!2831) (Cons!2830 (h!3472 (_ BitVec 64)) (t!7773 List!2834)) )
))
(declare-fun arrayNoDuplicates!0 (array!9370 (_ BitVec 32) List!2834) Bool)

(assert (=> b!204580 (= res!98640 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2831))))

(declare-fun b!204581 () Bool)

(declare-fun e!133849 () Bool)

(declare-fun tp_is_empty!5077 () Bool)

(assert (=> b!204581 (= e!133849 tp_is_empty!5077)))

(declare-fun res!98639 () Bool)

(assert (=> start!20574 (=> (not res!98639) (not e!133851))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20574 (= res!98639 (validMask!0 mask!1149))))

(assert (=> start!20574 e!133851))

(declare-datatypes ((V!6417 0))(
  ( (V!6418 (val!2583 Int)) )
))
(declare-datatypes ((ValueCell!2195 0))(
  ( (ValueCellFull!2195 (v!4549 V!6417)) (EmptyCell!2195) )
))
(declare-datatypes ((array!9372 0))(
  ( (array!9373 (arr!4436 (Array (_ BitVec 32) ValueCell!2195)) (size!4761 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9372)

(declare-fun e!133852 () Bool)

(declare-fun array_inv!2917 (array!9372) Bool)

(assert (=> start!20574 (and (array_inv!2917 _values!649) e!133852)))

(assert (=> start!20574 true))

(assert (=> start!20574 tp_is_empty!5077))

(declare-fun array_inv!2918 (array!9370) Bool)

(assert (=> start!20574 (array_inv!2918 _keys!825)))

(assert (=> start!20574 tp!18694))

(declare-fun b!204582 () Bool)

(declare-fun res!98643 () Bool)

(assert (=> b!204582 (=> (not res!98643) (not e!133851))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204582 (= res!98643 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4760 _keys!825))))))

(declare-fun b!204583 () Bool)

(declare-fun e!133853 () Bool)

(assert (=> b!204583 (= e!133853 tp_is_empty!5077)))

(declare-fun b!204584 () Bool)

(declare-fun e!133855 () Bool)

(assert (=> b!204584 (= e!133851 (not e!133855))))

(declare-fun res!98642 () Bool)

(assert (=> b!204584 (=> res!98642 e!133855)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204584 (= res!98642 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3912 0))(
  ( (tuple2!3913 (_1!1966 (_ BitVec 64)) (_2!1966 V!6417)) )
))
(declare-datatypes ((List!2835 0))(
  ( (Nil!2832) (Cons!2831 (h!3473 tuple2!3912) (t!7774 List!2835)) )
))
(declare-datatypes ((ListLongMap!2839 0))(
  ( (ListLongMap!2840 (toList!1435 List!2835)) )
))
(declare-fun lt!103783 () ListLongMap!2839)

(declare-fun zeroValue!615 () V!6417)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6417)

(declare-fun getCurrentListMap!1003 (array!9370 array!9372 (_ BitVec 32) (_ BitVec 32) V!6417 V!6417 (_ BitVec 32) Int) ListLongMap!2839)

(assert (=> b!204584 (= lt!103783 (getCurrentListMap!1003 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103778 () array!9372)

(declare-fun lt!103784 () ListLongMap!2839)

(assert (=> b!204584 (= lt!103784 (getCurrentListMap!1003 _keys!825 lt!103778 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103789 () ListLongMap!2839)

(declare-fun lt!103788 () ListLongMap!2839)

(assert (=> b!204584 (and (= lt!103789 lt!103788) (= lt!103788 lt!103789))))

(declare-fun lt!103785 () ListLongMap!2839)

(declare-fun lt!103780 () tuple2!3912)

(declare-fun +!452 (ListLongMap!2839 tuple2!3912) ListLongMap!2839)

(assert (=> b!204584 (= lt!103788 (+!452 lt!103785 lt!103780))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6417)

(assert (=> b!204584 (= lt!103780 (tuple2!3913 k!843 v!520))))

(declare-datatypes ((Unit!6203 0))(
  ( (Unit!6204) )
))
(declare-fun lt!103779 () Unit!6203)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!116 (array!9370 array!9372 (_ BitVec 32) (_ BitVec 32) V!6417 V!6417 (_ BitVec 32) (_ BitVec 64) V!6417 (_ BitVec 32) Int) Unit!6203)

(assert (=> b!204584 (= lt!103779 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!116 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!374 (array!9370 array!9372 (_ BitVec 32) (_ BitVec 32) V!6417 V!6417 (_ BitVec 32) Int) ListLongMap!2839)

(assert (=> b!204584 (= lt!103789 (getCurrentListMapNoExtraKeys!374 _keys!825 lt!103778 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204584 (= lt!103778 (array!9373 (store (arr!4436 _values!649) i!601 (ValueCellFull!2195 v!520)) (size!4761 _values!649)))))

(assert (=> b!204584 (= lt!103785 (getCurrentListMapNoExtraKeys!374 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204585 () Bool)

(declare-fun res!98645 () Bool)

(assert (=> b!204585 (=> (not res!98645) (not e!133851))))

(assert (=> b!204585 (= res!98645 (= (select (arr!4435 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8684 () Bool)

(declare-fun mapRes!8684 () Bool)

(declare-fun tp!18695 () Bool)

(assert (=> mapNonEmpty!8684 (= mapRes!8684 (and tp!18695 e!133853))))

(declare-fun mapRest!8684 () (Array (_ BitVec 32) ValueCell!2195))

(declare-fun mapKey!8684 () (_ BitVec 32))

(declare-fun mapValue!8684 () ValueCell!2195)

(assert (=> mapNonEmpty!8684 (= (arr!4436 _values!649) (store mapRest!8684 mapKey!8684 mapValue!8684))))

(declare-fun b!204586 () Bool)

(declare-fun e!133854 () Bool)

(assert (=> b!204586 (= e!133855 e!133854)))

(declare-fun res!98644 () Bool)

(assert (=> b!204586 (=> res!98644 e!133854)))

(assert (=> b!204586 (= res!98644 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!103786 () ListLongMap!2839)

(assert (=> b!204586 (= lt!103783 lt!103786)))

(declare-fun lt!103782 () tuple2!3912)

(assert (=> b!204586 (= lt!103786 (+!452 lt!103785 lt!103782))))

(declare-fun lt!103787 () ListLongMap!2839)

(assert (=> b!204586 (= lt!103784 lt!103787)))

(assert (=> b!204586 (= lt!103787 (+!452 lt!103788 lt!103782))))

(assert (=> b!204586 (= lt!103784 (+!452 lt!103789 lt!103782))))

(assert (=> b!204586 (= lt!103782 (tuple2!3913 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204587 () Bool)

(declare-fun res!98646 () Bool)

(assert (=> b!204587 (=> (not res!98646) (not e!133851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204587 (= res!98646 (validKeyInArray!0 k!843))))

(declare-fun b!204588 () Bool)

(declare-fun res!98647 () Bool)

(assert (=> b!204588 (=> (not res!98647) (not e!133851))))

(assert (=> b!204588 (= res!98647 (and (= (size!4761 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4760 _keys!825) (size!4761 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204589 () Bool)

(declare-fun res!98641 () Bool)

(assert (=> b!204589 (=> (not res!98641) (not e!133851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9370 (_ BitVec 32)) Bool)

(assert (=> b!204589 (= res!98641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204590 () Bool)

(assert (=> b!204590 (= e!133854 true)))

(assert (=> b!204590 (= lt!103787 (+!452 lt!103786 lt!103780))))

(declare-fun lt!103781 () Unit!6203)

(declare-fun addCommutativeForDiffKeys!158 (ListLongMap!2839 (_ BitVec 64) V!6417 (_ BitVec 64) V!6417) Unit!6203)

(assert (=> b!204590 (= lt!103781 (addCommutativeForDiffKeys!158 lt!103785 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!8684 () Bool)

(assert (=> mapIsEmpty!8684 mapRes!8684))

(declare-fun b!204591 () Bool)

(assert (=> b!204591 (= e!133852 (and e!133849 mapRes!8684))))

(declare-fun condMapEmpty!8684 () Bool)

(declare-fun mapDefault!8684 () ValueCell!2195)

