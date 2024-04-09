; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39080 () Bool)

(assert start!39080)

(declare-fun b_free!9339 () Bool)

(declare-fun b_next!9339 () Bool)

(assert (=> start!39080 (= b_free!9339 (not b_next!9339))))

(declare-fun tp!33545 () Bool)

(declare-fun b_and!16743 () Bool)

(assert (=> start!39080 (= tp!33545 b_and!16743)))

(declare-fun b!410037 () Bool)

(declare-fun e!245820 () Bool)

(declare-fun tp_is_empty!10491 () Bool)

(assert (=> b!410037 (= e!245820 tp_is_empty!10491)))

(declare-fun b!410038 () Bool)

(declare-fun res!237686 () Bool)

(declare-fun e!245816 () Bool)

(assert (=> b!410038 (=> (not res!237686) (not e!245816))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!410038 (= res!237686 (validKeyInArray!0 k0!794))))

(declare-fun b!410040 () Bool)

(declare-fun res!237680 () Bool)

(declare-fun e!245821 () Bool)

(assert (=> b!410040 (=> (not res!237680) (not e!245821))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!410040 (= res!237680 (bvsle from!863 i!563))))

(declare-fun b!410041 () Bool)

(declare-fun res!237684 () Bool)

(assert (=> b!410041 (=> (not res!237684) (not e!245816))))

(declare-datatypes ((array!24833 0))(
  ( (array!24834 (arr!11863 (Array (_ BitVec 32) (_ BitVec 64))) (size!12215 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24833)

(declare-datatypes ((List!6851 0))(
  ( (Nil!6848) (Cons!6847 (h!7703 (_ BitVec 64)) (t!12033 List!6851)) )
))
(declare-fun arrayNoDuplicates!0 (array!24833 (_ BitVec 32) List!6851) Bool)

(assert (=> b!410041 (= res!237684 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6848))))

(declare-fun b!410042 () Bool)

(declare-fun e!245817 () Bool)

(declare-fun mapRes!17358 () Bool)

(assert (=> b!410042 (= e!245817 (and e!245820 mapRes!17358))))

(declare-fun condMapEmpty!17358 () Bool)

(declare-datatypes ((V!15093 0))(
  ( (V!15094 (val!5290 Int)) )
))
(declare-datatypes ((ValueCell!4902 0))(
  ( (ValueCellFull!4902 (v!7533 V!15093)) (EmptyCell!4902) )
))
(declare-datatypes ((array!24835 0))(
  ( (array!24836 (arr!11864 (Array (_ BitVec 32) ValueCell!4902)) (size!12216 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24835)

(declare-fun mapDefault!17358 () ValueCell!4902)

(assert (=> b!410042 (= condMapEmpty!17358 (= (arr!11864 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4902)) mapDefault!17358)))))

(declare-fun b!410043 () Bool)

(declare-fun res!237682 () Bool)

(assert (=> b!410043 (=> (not res!237682) (not e!245816))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!410043 (= res!237682 (and (= (size!12216 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12215 _keys!709) (size!12216 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!410044 () Bool)

(declare-fun e!245819 () Bool)

(assert (=> b!410044 (= e!245819 tp_is_empty!10491)))

(declare-fun b!410045 () Bool)

(declare-fun res!237689 () Bool)

(assert (=> b!410045 (=> (not res!237689) (not e!245821))))

(declare-fun lt!189015 () array!24833)

(assert (=> b!410045 (= res!237689 (arrayNoDuplicates!0 lt!189015 #b00000000000000000000000000000000 Nil!6848))))

(declare-fun b!410046 () Bool)

(assert (=> b!410046 (= e!245821 false)))

(declare-datatypes ((tuple2!6798 0))(
  ( (tuple2!6799 (_1!3409 (_ BitVec 64)) (_2!3409 V!15093)) )
))
(declare-datatypes ((List!6852 0))(
  ( (Nil!6849) (Cons!6848 (h!7704 tuple2!6798) (t!12034 List!6852)) )
))
(declare-datatypes ((ListLongMap!5725 0))(
  ( (ListLongMap!5726 (toList!2878 List!6852)) )
))
(declare-fun lt!189014 () ListLongMap!5725)

(declare-fun minValue!515 () V!15093)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15093)

(declare-fun getCurrentListMapNoExtraKeys!1088 (array!24833 array!24835 (_ BitVec 32) (_ BitVec 32) V!15093 V!15093 (_ BitVec 32) Int) ListLongMap!5725)

(assert (=> b!410046 (= lt!189014 (getCurrentListMapNoExtraKeys!1088 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!410047 () Bool)

(declare-fun res!237679 () Bool)

(assert (=> b!410047 (=> (not res!237679) (not e!245816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!410047 (= res!237679 (validMask!0 mask!1025))))

(declare-fun res!237688 () Bool)

(assert (=> start!39080 (=> (not res!237688) (not e!245816))))

(assert (=> start!39080 (= res!237688 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12215 _keys!709))))))

(assert (=> start!39080 e!245816))

(assert (=> start!39080 tp_is_empty!10491))

(assert (=> start!39080 tp!33545))

(assert (=> start!39080 true))

(declare-fun array_inv!8662 (array!24835) Bool)

(assert (=> start!39080 (and (array_inv!8662 _values!549) e!245817)))

(declare-fun array_inv!8663 (array!24833) Bool)

(assert (=> start!39080 (array_inv!8663 _keys!709)))

(declare-fun b!410039 () Bool)

(declare-fun res!237683 () Bool)

(assert (=> b!410039 (=> (not res!237683) (not e!245816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24833 (_ BitVec 32)) Bool)

(assert (=> b!410039 (= res!237683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!410048 () Bool)

(declare-fun res!237690 () Bool)

(assert (=> b!410048 (=> (not res!237690) (not e!245816))))

(assert (=> b!410048 (= res!237690 (or (= (select (arr!11863 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11863 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!410049 () Bool)

(declare-fun res!237687 () Bool)

(assert (=> b!410049 (=> (not res!237687) (not e!245816))))

(assert (=> b!410049 (= res!237687 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12215 _keys!709))))))

(declare-fun b!410050 () Bool)

(declare-fun res!237685 () Bool)

(assert (=> b!410050 (=> (not res!237685) (not e!245816))))

(declare-fun arrayContainsKey!0 (array!24833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!410050 (= res!237685 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!410051 () Bool)

(assert (=> b!410051 (= e!245816 e!245821)))

(declare-fun res!237681 () Bool)

(assert (=> b!410051 (=> (not res!237681) (not e!245821))))

(assert (=> b!410051 (= res!237681 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189015 mask!1025))))

(assert (=> b!410051 (= lt!189015 (array!24834 (store (arr!11863 _keys!709) i!563 k0!794) (size!12215 _keys!709)))))

(declare-fun mapIsEmpty!17358 () Bool)

(assert (=> mapIsEmpty!17358 mapRes!17358))

(declare-fun mapNonEmpty!17358 () Bool)

(declare-fun tp!33546 () Bool)

(assert (=> mapNonEmpty!17358 (= mapRes!17358 (and tp!33546 e!245819))))

(declare-fun mapRest!17358 () (Array (_ BitVec 32) ValueCell!4902))

(declare-fun mapKey!17358 () (_ BitVec 32))

(declare-fun mapValue!17358 () ValueCell!4902)

(assert (=> mapNonEmpty!17358 (= (arr!11864 _values!549) (store mapRest!17358 mapKey!17358 mapValue!17358))))

(assert (= (and start!39080 res!237688) b!410047))

(assert (= (and b!410047 res!237679) b!410043))

(assert (= (and b!410043 res!237682) b!410039))

(assert (= (and b!410039 res!237683) b!410041))

(assert (= (and b!410041 res!237684) b!410049))

(assert (= (and b!410049 res!237687) b!410038))

(assert (= (and b!410038 res!237686) b!410048))

(assert (= (and b!410048 res!237690) b!410050))

(assert (= (and b!410050 res!237685) b!410051))

(assert (= (and b!410051 res!237681) b!410045))

(assert (= (and b!410045 res!237689) b!410040))

(assert (= (and b!410040 res!237680) b!410046))

(assert (= (and b!410042 condMapEmpty!17358) mapIsEmpty!17358))

(assert (= (and b!410042 (not condMapEmpty!17358)) mapNonEmpty!17358))

(get-info :version)

(assert (= (and mapNonEmpty!17358 ((_ is ValueCellFull!4902) mapValue!17358)) b!410044))

(assert (= (and b!410042 ((_ is ValueCellFull!4902) mapDefault!17358)) b!410037))

(assert (= start!39080 b!410042))

(declare-fun m!400649 () Bool)

(assert (=> b!410041 m!400649))

(declare-fun m!400651 () Bool)

(assert (=> b!410038 m!400651))

(declare-fun m!400653 () Bool)

(assert (=> b!410045 m!400653))

(declare-fun m!400655 () Bool)

(assert (=> b!410048 m!400655))

(declare-fun m!400657 () Bool)

(assert (=> b!410050 m!400657))

(declare-fun m!400659 () Bool)

(assert (=> mapNonEmpty!17358 m!400659))

(declare-fun m!400661 () Bool)

(assert (=> b!410047 m!400661))

(declare-fun m!400663 () Bool)

(assert (=> b!410046 m!400663))

(declare-fun m!400665 () Bool)

(assert (=> b!410051 m!400665))

(declare-fun m!400667 () Bool)

(assert (=> b!410051 m!400667))

(declare-fun m!400669 () Bool)

(assert (=> start!39080 m!400669))

(declare-fun m!400671 () Bool)

(assert (=> start!39080 m!400671))

(declare-fun m!400673 () Bool)

(assert (=> b!410039 m!400673))

(check-sat (not start!39080) b_and!16743 (not b!410039) (not b!410046) (not b!410041) (not b!410051) (not b_next!9339) (not mapNonEmpty!17358) (not b!410047) (not b!410050) (not b!410045) tp_is_empty!10491 (not b!410038))
(check-sat b_and!16743 (not b_next!9339))
