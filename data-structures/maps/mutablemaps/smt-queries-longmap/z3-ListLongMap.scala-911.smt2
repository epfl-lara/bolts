; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20576 () Bool)

(assert start!20576)

(declare-fun b_free!5223 () Bool)

(declare-fun b_next!5223 () Bool)

(assert (=> start!20576 (= b_free!5223 (not b_next!5223))))

(declare-fun tp!18701 () Bool)

(declare-fun b_and!11987 () Bool)

(assert (=> start!20576 (= tp!18701 b_and!11987)))

(declare-fun res!98668 () Bool)

(declare-fun e!133873 () Bool)

(assert (=> start!20576 (=> (not res!98668) (not e!133873))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20576 (= res!98668 (validMask!0 mask!1149))))

(assert (=> start!20576 e!133873))

(declare-datatypes ((V!6419 0))(
  ( (V!6420 (val!2584 Int)) )
))
(declare-datatypes ((ValueCell!2196 0))(
  ( (ValueCellFull!2196 (v!4550 V!6419)) (EmptyCell!2196) )
))
(declare-datatypes ((array!9374 0))(
  ( (array!9375 (arr!4437 (Array (_ BitVec 32) ValueCell!2196)) (size!4762 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9374)

(declare-fun e!133874 () Bool)

(declare-fun array_inv!2919 (array!9374) Bool)

(assert (=> start!20576 (and (array_inv!2919 _values!649) e!133874)))

(assert (=> start!20576 true))

(declare-fun tp_is_empty!5079 () Bool)

(assert (=> start!20576 tp_is_empty!5079))

(declare-datatypes ((array!9376 0))(
  ( (array!9377 (arr!4438 (Array (_ BitVec 32) (_ BitVec 64))) (size!4763 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9376)

(declare-fun array_inv!2920 (array!9376) Bool)

(assert (=> start!20576 (array_inv!2920 _keys!825)))

(assert (=> start!20576 tp!18701))

(declare-fun mapNonEmpty!8687 () Bool)

(declare-fun mapRes!8687 () Bool)

(declare-fun tp!18700 () Bool)

(declare-fun e!133871 () Bool)

(assert (=> mapNonEmpty!8687 (= mapRes!8687 (and tp!18700 e!133871))))

(declare-fun mapValue!8687 () ValueCell!2196)

(declare-fun mapRest!8687 () (Array (_ BitVec 32) ValueCell!2196))

(declare-fun mapKey!8687 () (_ BitVec 32))

(assert (=> mapNonEmpty!8687 (= (arr!4437 _values!649) (store mapRest!8687 mapKey!8687 mapValue!8687))))

(declare-fun mapIsEmpty!8687 () Bool)

(assert (=> mapIsEmpty!8687 mapRes!8687))

(declare-fun b!204616 () Bool)

(declare-fun res!98674 () Bool)

(assert (=> b!204616 (=> (not res!98674) (not e!133873))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204616 (= res!98674 (and (= (size!4762 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4763 _keys!825) (size!4762 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204617 () Bool)

(declare-fun res!98673 () Bool)

(assert (=> b!204617 (=> (not res!98673) (not e!133873))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204617 (= res!98673 (validKeyInArray!0 k0!843))))

(declare-fun b!204618 () Bool)

(declare-fun e!133872 () Bool)

(declare-fun e!133875 () Bool)

(assert (=> b!204618 (= e!133872 e!133875)))

(declare-fun res!98672 () Bool)

(assert (=> b!204618 (=> res!98672 e!133875)))

(assert (=> b!204618 (= res!98672 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3914 0))(
  ( (tuple2!3915 (_1!1967 (_ BitVec 64)) (_2!1967 V!6419)) )
))
(declare-datatypes ((List!2836 0))(
  ( (Nil!2833) (Cons!2832 (h!3474 tuple2!3914) (t!7775 List!2836)) )
))
(declare-datatypes ((ListLongMap!2841 0))(
  ( (ListLongMap!2842 (toList!1436 List!2836)) )
))
(declare-fun lt!103824 () ListLongMap!2841)

(declare-fun lt!103823 () ListLongMap!2841)

(assert (=> b!204618 (= lt!103824 lt!103823)))

(declare-fun lt!103815 () ListLongMap!2841)

(declare-fun lt!103817 () tuple2!3914)

(declare-fun +!453 (ListLongMap!2841 tuple2!3914) ListLongMap!2841)

(assert (=> b!204618 (= lt!103823 (+!453 lt!103815 lt!103817))))

(declare-fun lt!103821 () ListLongMap!2841)

(declare-fun lt!103818 () ListLongMap!2841)

(assert (=> b!204618 (= lt!103821 lt!103818)))

(declare-fun lt!103819 () ListLongMap!2841)

(assert (=> b!204618 (= lt!103818 (+!453 lt!103819 lt!103817))))

(declare-fun lt!103820 () ListLongMap!2841)

(assert (=> b!204618 (= lt!103821 (+!453 lt!103820 lt!103817))))

(declare-fun minValue!615 () V!6419)

(assert (=> b!204618 (= lt!103817 (tuple2!3915 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204619 () Bool)

(declare-fun res!98667 () Bool)

(assert (=> b!204619 (=> (not res!98667) (not e!133873))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204619 (= res!98667 (= (select (arr!4438 _keys!825) i!601) k0!843))))

(declare-fun b!204620 () Bool)

(declare-fun e!133876 () Bool)

(assert (=> b!204620 (= e!133874 (and e!133876 mapRes!8687))))

(declare-fun condMapEmpty!8687 () Bool)

(declare-fun mapDefault!8687 () ValueCell!2196)

(assert (=> b!204620 (= condMapEmpty!8687 (= (arr!4437 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2196)) mapDefault!8687)))))

(declare-fun b!204621 () Bool)

(assert (=> b!204621 (= e!133875 true)))

(declare-fun lt!103825 () tuple2!3914)

(assert (=> b!204621 (= lt!103818 (+!453 lt!103823 lt!103825))))

(declare-datatypes ((Unit!6205 0))(
  ( (Unit!6206) )
))
(declare-fun lt!103822 () Unit!6205)

(declare-fun v!520 () V!6419)

(declare-fun addCommutativeForDiffKeys!159 (ListLongMap!2841 (_ BitVec 64) V!6419 (_ BitVec 64) V!6419) Unit!6205)

(assert (=> b!204621 (= lt!103822 (addCommutativeForDiffKeys!159 lt!103815 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!204622 () Bool)

(assert (=> b!204622 (= e!133876 tp_is_empty!5079)))

(declare-fun b!204623 () Bool)

(declare-fun res!98669 () Bool)

(assert (=> b!204623 (=> (not res!98669) (not e!133873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9376 (_ BitVec 32)) Bool)

(assert (=> b!204623 (= res!98669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204624 () Bool)

(assert (=> b!204624 (= e!133873 (not e!133872))))

(declare-fun res!98671 () Bool)

(assert (=> b!204624 (=> res!98671 e!133872)))

(assert (=> b!204624 (= res!98671 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6419)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1004 (array!9376 array!9374 (_ BitVec 32) (_ BitVec 32) V!6419 V!6419 (_ BitVec 32) Int) ListLongMap!2841)

(assert (=> b!204624 (= lt!103824 (getCurrentListMap!1004 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103816 () array!9374)

(assert (=> b!204624 (= lt!103821 (getCurrentListMap!1004 _keys!825 lt!103816 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204624 (and (= lt!103820 lt!103819) (= lt!103819 lt!103820))))

(assert (=> b!204624 (= lt!103819 (+!453 lt!103815 lt!103825))))

(assert (=> b!204624 (= lt!103825 (tuple2!3915 k0!843 v!520))))

(declare-fun lt!103814 () Unit!6205)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!117 (array!9376 array!9374 (_ BitVec 32) (_ BitVec 32) V!6419 V!6419 (_ BitVec 32) (_ BitVec 64) V!6419 (_ BitVec 32) Int) Unit!6205)

(assert (=> b!204624 (= lt!103814 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!117 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!375 (array!9376 array!9374 (_ BitVec 32) (_ BitVec 32) V!6419 V!6419 (_ BitVec 32) Int) ListLongMap!2841)

(assert (=> b!204624 (= lt!103820 (getCurrentListMapNoExtraKeys!375 _keys!825 lt!103816 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204624 (= lt!103816 (array!9375 (store (arr!4437 _values!649) i!601 (ValueCellFull!2196 v!520)) (size!4762 _values!649)))))

(assert (=> b!204624 (= lt!103815 (getCurrentListMapNoExtraKeys!375 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204625 () Bool)

(declare-fun res!98670 () Bool)

(assert (=> b!204625 (=> (not res!98670) (not e!133873))))

(assert (=> b!204625 (= res!98670 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4763 _keys!825))))))

(declare-fun b!204626 () Bool)

(declare-fun res!98666 () Bool)

(assert (=> b!204626 (=> (not res!98666) (not e!133873))))

(declare-datatypes ((List!2837 0))(
  ( (Nil!2834) (Cons!2833 (h!3475 (_ BitVec 64)) (t!7776 List!2837)) )
))
(declare-fun arrayNoDuplicates!0 (array!9376 (_ BitVec 32) List!2837) Bool)

(assert (=> b!204626 (= res!98666 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2834))))

(declare-fun b!204627 () Bool)

(assert (=> b!204627 (= e!133871 tp_is_empty!5079)))

(assert (= (and start!20576 res!98668) b!204616))

(assert (= (and b!204616 res!98674) b!204623))

(assert (= (and b!204623 res!98669) b!204626))

(assert (= (and b!204626 res!98666) b!204625))

(assert (= (and b!204625 res!98670) b!204617))

(assert (= (and b!204617 res!98673) b!204619))

(assert (= (and b!204619 res!98667) b!204624))

(assert (= (and b!204624 (not res!98671)) b!204618))

(assert (= (and b!204618 (not res!98672)) b!204621))

(assert (= (and b!204620 condMapEmpty!8687) mapIsEmpty!8687))

(assert (= (and b!204620 (not condMapEmpty!8687)) mapNonEmpty!8687))

(get-info :version)

(assert (= (and mapNonEmpty!8687 ((_ is ValueCellFull!2196) mapValue!8687)) b!204627))

(assert (= (and b!204620 ((_ is ValueCellFull!2196) mapDefault!8687)) b!204622))

(assert (= start!20576 b!204620))

(declare-fun m!232177 () Bool)

(assert (=> mapNonEmpty!8687 m!232177))

(declare-fun m!232179 () Bool)

(assert (=> b!204618 m!232179))

(declare-fun m!232181 () Bool)

(assert (=> b!204618 m!232181))

(declare-fun m!232183 () Bool)

(assert (=> b!204618 m!232183))

(declare-fun m!232185 () Bool)

(assert (=> b!204621 m!232185))

(declare-fun m!232187 () Bool)

(assert (=> b!204621 m!232187))

(declare-fun m!232189 () Bool)

(assert (=> start!20576 m!232189))

(declare-fun m!232191 () Bool)

(assert (=> start!20576 m!232191))

(declare-fun m!232193 () Bool)

(assert (=> start!20576 m!232193))

(declare-fun m!232195 () Bool)

(assert (=> b!204626 m!232195))

(declare-fun m!232197 () Bool)

(assert (=> b!204619 m!232197))

(declare-fun m!232199 () Bool)

(assert (=> b!204623 m!232199))

(declare-fun m!232201 () Bool)

(assert (=> b!204617 m!232201))

(declare-fun m!232203 () Bool)

(assert (=> b!204624 m!232203))

(declare-fun m!232205 () Bool)

(assert (=> b!204624 m!232205))

(declare-fun m!232207 () Bool)

(assert (=> b!204624 m!232207))

(declare-fun m!232209 () Bool)

(assert (=> b!204624 m!232209))

(declare-fun m!232211 () Bool)

(assert (=> b!204624 m!232211))

(declare-fun m!232213 () Bool)

(assert (=> b!204624 m!232213))

(declare-fun m!232215 () Bool)

(assert (=> b!204624 m!232215))

(check-sat (not b!204617) (not mapNonEmpty!8687) (not b!204618) (not b_next!5223) (not b!204626) (not b!204623) b_and!11987 (not b!204621) (not start!20576) (not b!204624) tp_is_empty!5079)
(check-sat b_and!11987 (not b_next!5223))
