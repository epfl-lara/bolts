; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37404 () Bool)

(assert start!37404)

(declare-fun b_free!8523 () Bool)

(declare-fun b_next!8523 () Bool)

(assert (=> start!37404 (= b_free!8523 (not b_next!8523))))

(declare-fun tp!30285 () Bool)

(declare-fun b_and!15783 () Bool)

(assert (=> start!37404 (= tp!30285 b_and!15783)))

(declare-fun mapNonEmpty!15321 () Bool)

(declare-fun mapRes!15321 () Bool)

(declare-fun tp!30284 () Bool)

(declare-fun e!231168 () Bool)

(assert (=> mapNonEmpty!15321 (= mapRes!15321 (and tp!30284 e!231168))))

(declare-datatypes ((V!13333 0))(
  ( (V!13334 (val!4630 Int)) )
))
(declare-datatypes ((ValueCell!4242 0))(
  ( (ValueCellFull!4242 (v!6823 V!13333)) (EmptyCell!4242) )
))
(declare-datatypes ((array!22239 0))(
  ( (array!22240 (arr!10585 (Array (_ BitVec 32) ValueCell!4242)) (size!10937 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22239)

(declare-fun mapRest!15321 () (Array (_ BitVec 32) ValueCell!4242))

(declare-fun mapValue!15321 () ValueCell!4242)

(declare-fun mapKey!15321 () (_ BitVec 32))

(assert (=> mapNonEmpty!15321 (= (arr!10585 _values!506) (store mapRest!15321 mapKey!15321 mapValue!15321))))

(declare-fun b!380025 () Bool)

(declare-fun res!215733 () Bool)

(declare-fun e!231169 () Bool)

(assert (=> b!380025 (=> (not res!215733) (not e!231169))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22241 0))(
  ( (array!22242 (arr!10586 (Array (_ BitVec 32) (_ BitVec 64))) (size!10938 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22241)

(assert (=> b!380025 (= res!215733 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10938 _keys!658))))))

(declare-fun b!380026 () Bool)

(declare-fun e!231171 () Bool)

(assert (=> b!380026 (= e!231171 true)))

(declare-datatypes ((tuple2!6170 0))(
  ( (tuple2!6171 (_1!3095 (_ BitVec 64)) (_2!3095 V!13333)) )
))
(declare-datatypes ((List!6041 0))(
  ( (Nil!6038) (Cons!6037 (h!6893 tuple2!6170) (t!11199 List!6041)) )
))
(declare-datatypes ((ListLongMap!5097 0))(
  ( (ListLongMap!5098 (toList!2564 List!6041)) )
))
(declare-fun lt!177830 () ListLongMap!5097)

(declare-fun lt!177826 () ListLongMap!5097)

(declare-fun lt!177835 () tuple2!6170)

(declare-fun +!905 (ListLongMap!5097 tuple2!6170) ListLongMap!5097)

(assert (=> b!380026 (= lt!177830 (+!905 lt!177826 lt!177835))))

(declare-fun lt!177834 () ListLongMap!5097)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!13333)

(declare-datatypes ((Unit!11705 0))(
  ( (Unit!11706) )
))
(declare-fun lt!177824 () Unit!11705)

(declare-fun v!373 () V!13333)

(declare-fun addCommutativeForDiffKeys!316 (ListLongMap!5097 (_ BitVec 64) V!13333 (_ BitVec 64) V!13333) Unit!11705)

(assert (=> b!380026 (= lt!177824 (addCommutativeForDiffKeys!316 lt!177834 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380027 () Bool)

(declare-fun res!215728 () Bool)

(assert (=> b!380027 (=> (not res!215728) (not e!231169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380027 (= res!215728 (validKeyInArray!0 k0!778))))

(declare-fun b!380028 () Bool)

(declare-fun res!215737 () Bool)

(assert (=> b!380028 (=> (not res!215737) (not e!231169))))

(assert (=> b!380028 (= res!215737 (or (= (select (arr!10586 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10586 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380029 () Bool)

(declare-fun res!215731 () Bool)

(assert (=> b!380029 (=> (not res!215731) (not e!231169))))

(declare-datatypes ((List!6042 0))(
  ( (Nil!6039) (Cons!6038 (h!6894 (_ BitVec 64)) (t!11200 List!6042)) )
))
(declare-fun arrayNoDuplicates!0 (array!22241 (_ BitVec 32) List!6042) Bool)

(assert (=> b!380029 (= res!215731 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6039))))

(declare-fun b!380030 () Bool)

(declare-fun e!231165 () Bool)

(declare-fun tp_is_empty!9171 () Bool)

(assert (=> b!380030 (= e!231165 tp_is_empty!9171)))

(declare-fun b!380032 () Bool)

(declare-fun e!231170 () Bool)

(declare-fun e!231164 () Bool)

(assert (=> b!380032 (= e!231170 (not e!231164))))

(declare-fun res!215732 () Bool)

(assert (=> b!380032 (=> res!215732 e!231164)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380032 (= res!215732 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!177827 () ListLongMap!5097)

(declare-fun zeroValue!472 () V!13333)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun getCurrentListMap!1989 (array!22241 array!22239 (_ BitVec 32) (_ BitVec 32) V!13333 V!13333 (_ BitVec 32) Int) ListLongMap!5097)

(assert (=> b!380032 (= lt!177827 (getCurrentListMap!1989 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177833 () array!22239)

(declare-fun lt!177829 () array!22241)

(declare-fun lt!177828 () ListLongMap!5097)

(assert (=> b!380032 (= lt!177828 (getCurrentListMap!1989 lt!177829 lt!177833 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177825 () ListLongMap!5097)

(declare-fun lt!177832 () ListLongMap!5097)

(assert (=> b!380032 (and (= lt!177825 lt!177832) (= lt!177832 lt!177825))))

(assert (=> b!380032 (= lt!177832 (+!905 lt!177834 lt!177835))))

(assert (=> b!380032 (= lt!177835 (tuple2!6171 k0!778 v!373))))

(declare-fun lt!177831 () Unit!11705)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!140 (array!22241 array!22239 (_ BitVec 32) (_ BitVec 32) V!13333 V!13333 (_ BitVec 32) (_ BitVec 64) V!13333 (_ BitVec 32) Int) Unit!11705)

(assert (=> b!380032 (= lt!177831 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!140 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!807 (array!22241 array!22239 (_ BitVec 32) (_ BitVec 32) V!13333 V!13333 (_ BitVec 32) Int) ListLongMap!5097)

(assert (=> b!380032 (= lt!177825 (getCurrentListMapNoExtraKeys!807 lt!177829 lt!177833 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380032 (= lt!177833 (array!22240 (store (arr!10585 _values!506) i!548 (ValueCellFull!4242 v!373)) (size!10937 _values!506)))))

(assert (=> b!380032 (= lt!177834 (getCurrentListMapNoExtraKeys!807 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15321 () Bool)

(assert (=> mapIsEmpty!15321 mapRes!15321))

(declare-fun b!380033 () Bool)

(declare-fun res!215729 () Bool)

(assert (=> b!380033 (=> (not res!215729) (not e!231169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22241 (_ BitVec 32)) Bool)

(assert (=> b!380033 (= res!215729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!215734 () Bool)

(assert (=> start!37404 (=> (not res!215734) (not e!231169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37404 (= res!215734 (validMask!0 mask!970))))

(assert (=> start!37404 e!231169))

(declare-fun e!231167 () Bool)

(declare-fun array_inv!7788 (array!22239) Bool)

(assert (=> start!37404 (and (array_inv!7788 _values!506) e!231167)))

(assert (=> start!37404 tp!30285))

(assert (=> start!37404 true))

(assert (=> start!37404 tp_is_empty!9171))

(declare-fun array_inv!7789 (array!22241) Bool)

(assert (=> start!37404 (array_inv!7789 _keys!658)))

(declare-fun b!380031 () Bool)

(assert (=> b!380031 (= e!231169 e!231170)))

(declare-fun res!215735 () Bool)

(assert (=> b!380031 (=> (not res!215735) (not e!231170))))

(assert (=> b!380031 (= res!215735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177829 mask!970))))

(assert (=> b!380031 (= lt!177829 (array!22242 (store (arr!10586 _keys!658) i!548 k0!778) (size!10938 _keys!658)))))

(declare-fun b!380034 () Bool)

(assert (=> b!380034 (= e!231168 tp_is_empty!9171)))

(declare-fun b!380035 () Bool)

(declare-fun res!215736 () Bool)

(assert (=> b!380035 (=> (not res!215736) (not e!231169))))

(assert (=> b!380035 (= res!215736 (and (= (size!10937 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10938 _keys!658) (size!10937 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!380036 () Bool)

(assert (=> b!380036 (= e!231167 (and e!231165 mapRes!15321))))

(declare-fun condMapEmpty!15321 () Bool)

(declare-fun mapDefault!15321 () ValueCell!4242)

(assert (=> b!380036 (= condMapEmpty!15321 (= (arr!10585 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4242)) mapDefault!15321)))))

(declare-fun b!380037 () Bool)

(assert (=> b!380037 (= e!231164 e!231171)))

(declare-fun res!215727 () Bool)

(assert (=> b!380037 (=> res!215727 e!231171)))

(assert (=> b!380037 (= res!215727 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!380037 (= lt!177827 lt!177826)))

(declare-fun lt!177823 () tuple2!6170)

(assert (=> b!380037 (= lt!177826 (+!905 lt!177834 lt!177823))))

(assert (=> b!380037 (= lt!177828 lt!177830)))

(assert (=> b!380037 (= lt!177830 (+!905 lt!177832 lt!177823))))

(assert (=> b!380037 (= lt!177828 (+!905 lt!177825 lt!177823))))

(assert (=> b!380037 (= lt!177823 (tuple2!6171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380038 () Bool)

(declare-fun res!215730 () Bool)

(assert (=> b!380038 (=> (not res!215730) (not e!231169))))

(declare-fun arrayContainsKey!0 (array!22241 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380038 (= res!215730 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!380039 () Bool)

(declare-fun res!215738 () Bool)

(assert (=> b!380039 (=> (not res!215738) (not e!231170))))

(assert (=> b!380039 (= res!215738 (arrayNoDuplicates!0 lt!177829 #b00000000000000000000000000000000 Nil!6039))))

(assert (= (and start!37404 res!215734) b!380035))

(assert (= (and b!380035 res!215736) b!380033))

(assert (= (and b!380033 res!215729) b!380029))

(assert (= (and b!380029 res!215731) b!380025))

(assert (= (and b!380025 res!215733) b!380027))

(assert (= (and b!380027 res!215728) b!380028))

(assert (= (and b!380028 res!215737) b!380038))

(assert (= (and b!380038 res!215730) b!380031))

(assert (= (and b!380031 res!215735) b!380039))

(assert (= (and b!380039 res!215738) b!380032))

(assert (= (and b!380032 (not res!215732)) b!380037))

(assert (= (and b!380037 (not res!215727)) b!380026))

(assert (= (and b!380036 condMapEmpty!15321) mapIsEmpty!15321))

(assert (= (and b!380036 (not condMapEmpty!15321)) mapNonEmpty!15321))

(get-info :version)

(assert (= (and mapNonEmpty!15321 ((_ is ValueCellFull!4242) mapValue!15321)) b!380034))

(assert (= (and b!380036 ((_ is ValueCellFull!4242) mapDefault!15321)) b!380030))

(assert (= start!37404 b!380036))

(declare-fun m!376997 () Bool)

(assert (=> b!380039 m!376997))

(declare-fun m!376999 () Bool)

(assert (=> b!380037 m!376999))

(declare-fun m!377001 () Bool)

(assert (=> b!380037 m!377001))

(declare-fun m!377003 () Bool)

(assert (=> b!380037 m!377003))

(declare-fun m!377005 () Bool)

(assert (=> b!380031 m!377005))

(declare-fun m!377007 () Bool)

(assert (=> b!380031 m!377007))

(declare-fun m!377009 () Bool)

(assert (=> b!380026 m!377009))

(declare-fun m!377011 () Bool)

(assert (=> b!380026 m!377011))

(declare-fun m!377013 () Bool)

(assert (=> b!380029 m!377013))

(declare-fun m!377015 () Bool)

(assert (=> mapNonEmpty!15321 m!377015))

(declare-fun m!377017 () Bool)

(assert (=> b!380038 m!377017))

(declare-fun m!377019 () Bool)

(assert (=> b!380033 m!377019))

(declare-fun m!377021 () Bool)

(assert (=> b!380027 m!377021))

(declare-fun m!377023 () Bool)

(assert (=> b!380028 m!377023))

(declare-fun m!377025 () Bool)

(assert (=> start!37404 m!377025))

(declare-fun m!377027 () Bool)

(assert (=> start!37404 m!377027))

(declare-fun m!377029 () Bool)

(assert (=> start!37404 m!377029))

(declare-fun m!377031 () Bool)

(assert (=> b!380032 m!377031))

(declare-fun m!377033 () Bool)

(assert (=> b!380032 m!377033))

(declare-fun m!377035 () Bool)

(assert (=> b!380032 m!377035))

(declare-fun m!377037 () Bool)

(assert (=> b!380032 m!377037))

(declare-fun m!377039 () Bool)

(assert (=> b!380032 m!377039))

(declare-fun m!377041 () Bool)

(assert (=> b!380032 m!377041))

(declare-fun m!377043 () Bool)

(assert (=> b!380032 m!377043))

(check-sat (not b!380032) (not b!380026) (not b!380029) tp_is_empty!9171 (not b!380027) (not b!380031) (not b!380033) b_and!15783 (not b!380037) (not b!380039) (not b_next!8523) (not mapNonEmpty!15321) (not start!37404) (not b!380038))
(check-sat b_and!15783 (not b_next!8523))
