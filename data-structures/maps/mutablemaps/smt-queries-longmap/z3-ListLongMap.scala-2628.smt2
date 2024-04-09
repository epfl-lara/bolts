; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39596 () Bool)

(assert start!39596)

(declare-fun b_free!9855 () Bool)

(declare-fun b_next!9855 () Bool)

(assert (=> start!39596 (= b_free!9855 (not b_next!9855))))

(declare-fun tp!35093 () Bool)

(declare-fun b_and!17529 () Bool)

(assert (=> start!39596 (= tp!35093 b_and!17529)))

(declare-fun b!423789 () Bool)

(declare-fun e!251847 () Bool)

(assert (=> b!423789 (= e!251847 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!15781 0))(
  ( (V!15782 (val!5548 Int)) )
))
(declare-fun minValue!515 () V!15781)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5160 0))(
  ( (ValueCellFull!5160 (v!7791 V!15781)) (EmptyCell!5160) )
))
(declare-datatypes ((array!25841 0))(
  ( (array!25842 (arr!12367 (Array (_ BitVec 32) ValueCell!5160)) (size!12719 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25841)

(declare-fun zeroValue!515 () V!15781)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7216 0))(
  ( (tuple2!7217 (_1!3618 (_ BitVec 64)) (_2!3618 V!15781)) )
))
(declare-datatypes ((List!7262 0))(
  ( (Nil!7259) (Cons!7258 (h!8114 tuple2!7216) (t!12714 List!7262)) )
))
(declare-datatypes ((ListLongMap!6143 0))(
  ( (ListLongMap!6144 (toList!3087 List!7262)) )
))
(declare-fun lt!194240 () ListLongMap!6143)

(declare-fun v!412 () V!15781)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((array!25843 0))(
  ( (array!25844 (arr!12368 (Array (_ BitVec 32) (_ BitVec 64))) (size!12720 (_ BitVec 32))) )
))
(declare-fun lt!194241 () array!25843)

(declare-fun getCurrentListMapNoExtraKeys!1288 (array!25843 array!25841 (_ BitVec 32) (_ BitVec 32) V!15781 V!15781 (_ BitVec 32) Int) ListLongMap!6143)

(assert (=> b!423789 (= lt!194240 (getCurrentListMapNoExtraKeys!1288 lt!194241 (array!25842 (store (arr!12367 _values!549) i!563 (ValueCellFull!5160 v!412)) (size!12719 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _keys!709 () array!25843)

(declare-fun lt!194239 () ListLongMap!6143)

(assert (=> b!423789 (= lt!194239 (getCurrentListMapNoExtraKeys!1288 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423790 () Bool)

(declare-fun res!247870 () Bool)

(declare-fun e!251850 () Bool)

(assert (=> b!423790 (=> (not res!247870) (not e!251850))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423790 (= res!247870 (validKeyInArray!0 k0!794))))

(declare-fun b!423791 () Bool)

(declare-fun res!247877 () Bool)

(assert (=> b!423791 (=> (not res!247877) (not e!251850))))

(declare-fun arrayContainsKey!0 (array!25843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423791 (= res!247877 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!247872 () Bool)

(assert (=> start!39596 (=> (not res!247872) (not e!251850))))

(assert (=> start!39596 (= res!247872 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12720 _keys!709))))))

(assert (=> start!39596 e!251850))

(declare-fun tp_is_empty!11007 () Bool)

(assert (=> start!39596 tp_is_empty!11007))

(assert (=> start!39596 tp!35093))

(assert (=> start!39596 true))

(declare-fun e!251848 () Bool)

(declare-fun array_inv!9016 (array!25841) Bool)

(assert (=> start!39596 (and (array_inv!9016 _values!549) e!251848)))

(declare-fun array_inv!9017 (array!25843) Bool)

(assert (=> start!39596 (array_inv!9017 _keys!709)))

(declare-fun b!423792 () Bool)

(declare-fun res!247868 () Bool)

(assert (=> b!423792 (=> (not res!247868) (not e!251850))))

(assert (=> b!423792 (= res!247868 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12720 _keys!709))))))

(declare-fun b!423793 () Bool)

(declare-fun res!247878 () Bool)

(assert (=> b!423793 (=> (not res!247878) (not e!251850))))

(declare-datatypes ((List!7263 0))(
  ( (Nil!7260) (Cons!7259 (h!8115 (_ BitVec 64)) (t!12715 List!7263)) )
))
(declare-fun arrayNoDuplicates!0 (array!25843 (_ BitVec 32) List!7263) Bool)

(assert (=> b!423793 (= res!247878 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7260))))

(declare-fun b!423794 () Bool)

(declare-fun res!247869 () Bool)

(assert (=> b!423794 (=> (not res!247869) (not e!251847))))

(assert (=> b!423794 (= res!247869 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18132 () Bool)

(declare-fun mapRes!18132 () Bool)

(assert (=> mapIsEmpty!18132 mapRes!18132))

(declare-fun b!423795 () Bool)

(declare-fun res!247873 () Bool)

(assert (=> b!423795 (=> (not res!247873) (not e!251850))))

(assert (=> b!423795 (= res!247873 (or (= (select (arr!12368 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12368 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423796 () Bool)

(declare-fun e!251851 () Bool)

(assert (=> b!423796 (= e!251851 tp_is_empty!11007)))

(declare-fun b!423797 () Bool)

(declare-fun e!251846 () Bool)

(assert (=> b!423797 (= e!251846 tp_is_empty!11007)))

(declare-fun b!423798 () Bool)

(assert (=> b!423798 (= e!251848 (and e!251851 mapRes!18132))))

(declare-fun condMapEmpty!18132 () Bool)

(declare-fun mapDefault!18132 () ValueCell!5160)

(assert (=> b!423798 (= condMapEmpty!18132 (= (arr!12367 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5160)) mapDefault!18132)))))

(declare-fun b!423799 () Bool)

(assert (=> b!423799 (= e!251850 e!251847)))

(declare-fun res!247876 () Bool)

(assert (=> b!423799 (=> (not res!247876) (not e!251847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25843 (_ BitVec 32)) Bool)

(assert (=> b!423799 (= res!247876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194241 mask!1025))))

(assert (=> b!423799 (= lt!194241 (array!25844 (store (arr!12368 _keys!709) i!563 k0!794) (size!12720 _keys!709)))))

(declare-fun b!423800 () Bool)

(declare-fun res!247874 () Bool)

(assert (=> b!423800 (=> (not res!247874) (not e!251850))))

(assert (=> b!423800 (= res!247874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18132 () Bool)

(declare-fun tp!35094 () Bool)

(assert (=> mapNonEmpty!18132 (= mapRes!18132 (and tp!35094 e!251846))))

(declare-fun mapValue!18132 () ValueCell!5160)

(declare-fun mapRest!18132 () (Array (_ BitVec 32) ValueCell!5160))

(declare-fun mapKey!18132 () (_ BitVec 32))

(assert (=> mapNonEmpty!18132 (= (arr!12367 _values!549) (store mapRest!18132 mapKey!18132 mapValue!18132))))

(declare-fun b!423801 () Bool)

(declare-fun res!247875 () Bool)

(assert (=> b!423801 (=> (not res!247875) (not e!251850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423801 (= res!247875 (validMask!0 mask!1025))))

(declare-fun b!423802 () Bool)

(declare-fun res!247871 () Bool)

(assert (=> b!423802 (=> (not res!247871) (not e!251850))))

(assert (=> b!423802 (= res!247871 (and (= (size!12719 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12720 _keys!709) (size!12719 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423803 () Bool)

(declare-fun res!247867 () Bool)

(assert (=> b!423803 (=> (not res!247867) (not e!251847))))

(assert (=> b!423803 (= res!247867 (arrayNoDuplicates!0 lt!194241 #b00000000000000000000000000000000 Nil!7260))))

(assert (= (and start!39596 res!247872) b!423801))

(assert (= (and b!423801 res!247875) b!423802))

(assert (= (and b!423802 res!247871) b!423800))

(assert (= (and b!423800 res!247874) b!423793))

(assert (= (and b!423793 res!247878) b!423792))

(assert (= (and b!423792 res!247868) b!423790))

(assert (= (and b!423790 res!247870) b!423795))

(assert (= (and b!423795 res!247873) b!423791))

(assert (= (and b!423791 res!247877) b!423799))

(assert (= (and b!423799 res!247876) b!423803))

(assert (= (and b!423803 res!247867) b!423794))

(assert (= (and b!423794 res!247869) b!423789))

(assert (= (and b!423798 condMapEmpty!18132) mapIsEmpty!18132))

(assert (= (and b!423798 (not condMapEmpty!18132)) mapNonEmpty!18132))

(get-info :version)

(assert (= (and mapNonEmpty!18132 ((_ is ValueCellFull!5160) mapValue!18132)) b!423797))

(assert (= (and b!423798 ((_ is ValueCellFull!5160) mapDefault!18132)) b!423796))

(assert (= start!39596 b!423798))

(declare-fun m!413125 () Bool)

(assert (=> mapNonEmpty!18132 m!413125))

(declare-fun m!413127 () Bool)

(assert (=> b!423793 m!413127))

(declare-fun m!413129 () Bool)

(assert (=> b!423795 m!413129))

(declare-fun m!413131 () Bool)

(assert (=> b!423800 m!413131))

(declare-fun m!413133 () Bool)

(assert (=> b!423791 m!413133))

(declare-fun m!413135 () Bool)

(assert (=> start!39596 m!413135))

(declare-fun m!413137 () Bool)

(assert (=> start!39596 m!413137))

(declare-fun m!413139 () Bool)

(assert (=> b!423801 m!413139))

(declare-fun m!413141 () Bool)

(assert (=> b!423803 m!413141))

(declare-fun m!413143 () Bool)

(assert (=> b!423789 m!413143))

(declare-fun m!413145 () Bool)

(assert (=> b!423789 m!413145))

(declare-fun m!413147 () Bool)

(assert (=> b!423789 m!413147))

(declare-fun m!413149 () Bool)

(assert (=> b!423790 m!413149))

(declare-fun m!413151 () Bool)

(assert (=> b!423799 m!413151))

(declare-fun m!413153 () Bool)

(assert (=> b!423799 m!413153))

(check-sat tp_is_empty!11007 (not b!423799) (not b!423793) (not b!423791) (not b!423790) (not start!39596) (not b!423789) (not b!423801) (not b!423800) (not b_next!9855) (not mapNonEmpty!18132) (not b!423803) b_and!17529)
(check-sat b_and!17529 (not b_next!9855))
