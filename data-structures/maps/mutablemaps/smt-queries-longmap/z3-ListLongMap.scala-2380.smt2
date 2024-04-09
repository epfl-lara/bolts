; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37752 () Bool)

(assert start!37752)

(declare-fun b_free!8847 () Bool)

(declare-fun b_next!8847 () Bool)

(assert (=> start!37752 (= b_free!8847 (not b_next!8847))))

(declare-fun tp!31292 () Bool)

(declare-fun b_and!16107 () Bool)

(assert (=> start!37752 (= tp!31292 b_and!16107)))

(declare-fun mapNonEmpty!15843 () Bool)

(declare-fun mapRes!15843 () Bool)

(declare-fun tp!31293 () Bool)

(declare-fun e!234687 () Bool)

(assert (=> mapNonEmpty!15843 (= mapRes!15843 (and tp!31293 e!234687))))

(declare-datatypes ((V!13797 0))(
  ( (V!13798 (val!4804 Int)) )
))
(declare-datatypes ((ValueCell!4416 0))(
  ( (ValueCellFull!4416 (v!6997 V!13797)) (EmptyCell!4416) )
))
(declare-datatypes ((array!22907 0))(
  ( (array!22908 (arr!10919 (Array (_ BitVec 32) ValueCell!4416)) (size!11271 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22907)

(declare-fun mapRest!15843 () (Array (_ BitVec 32) ValueCell!4416))

(declare-fun mapValue!15843 () ValueCell!4416)

(declare-fun mapKey!15843 () (_ BitVec 32))

(assert (=> mapNonEmpty!15843 (= (arr!10919 _values!506) (store mapRest!15843 mapKey!15843 mapValue!15843))))

(declare-fun res!221170 () Bool)

(declare-fun e!234684 () Bool)

(assert (=> start!37752 (=> (not res!221170) (not e!234684))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37752 (= res!221170 (validMask!0 mask!970))))

(assert (=> start!37752 e!234684))

(declare-fun e!234683 () Bool)

(declare-fun array_inv!8008 (array!22907) Bool)

(assert (=> start!37752 (and (array_inv!8008 _values!506) e!234683)))

(assert (=> start!37752 tp!31292))

(assert (=> start!37752 true))

(declare-fun tp_is_empty!9519 () Bool)

(assert (=> start!37752 tp_is_empty!9519))

(declare-datatypes ((array!22909 0))(
  ( (array!22910 (arr!10920 (Array (_ BitVec 32) (_ BitVec 64))) (size!11272 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22909)

(declare-fun array_inv!8009 (array!22909) Bool)

(assert (=> start!37752 (array_inv!8009 _keys!658)))

(declare-fun b!387026 () Bool)

(declare-fun e!234685 () Bool)

(assert (=> b!387026 (= e!234685 tp_is_empty!9519)))

(declare-fun b!387027 () Bool)

(declare-fun res!221171 () Bool)

(assert (=> b!387027 (=> (not res!221171) (not e!234684))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387027 (= res!221171 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11272 _keys!658))))))

(declare-fun b!387028 () Bool)

(declare-fun res!221164 () Bool)

(assert (=> b!387028 (=> (not res!221164) (not e!234684))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387028 (= res!221164 (validKeyInArray!0 k0!778))))

(declare-fun b!387029 () Bool)

(declare-fun e!234682 () Bool)

(assert (=> b!387029 (= e!234684 e!234682)))

(declare-fun res!221163 () Bool)

(assert (=> b!387029 (=> (not res!221163) (not e!234682))))

(declare-fun lt!181949 () array!22909)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22909 (_ BitVec 32)) Bool)

(assert (=> b!387029 (= res!221163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181949 mask!970))))

(assert (=> b!387029 (= lt!181949 (array!22910 (store (arr!10920 _keys!658) i!548 k0!778) (size!11272 _keys!658)))))

(declare-fun b!387030 () Bool)

(declare-fun res!221169 () Bool)

(assert (=> b!387030 (=> (not res!221169) (not e!234684))))

(assert (=> b!387030 (= res!221169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387031 () Bool)

(declare-fun res!221168 () Bool)

(assert (=> b!387031 (=> (not res!221168) (not e!234684))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!387031 (= res!221168 (and (= (size!11271 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11272 _keys!658) (size!11271 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387032 () Bool)

(declare-fun res!221166 () Bool)

(assert (=> b!387032 (=> (not res!221166) (not e!234682))))

(declare-datatypes ((List!6283 0))(
  ( (Nil!6280) (Cons!6279 (h!7135 (_ BitVec 64)) (t!11441 List!6283)) )
))
(declare-fun arrayNoDuplicates!0 (array!22909 (_ BitVec 32) List!6283) Bool)

(assert (=> b!387032 (= res!221166 (arrayNoDuplicates!0 lt!181949 #b00000000000000000000000000000000 Nil!6280))))

(declare-fun b!387033 () Bool)

(assert (=> b!387033 (= e!234687 tp_is_empty!9519)))

(declare-fun b!387034 () Bool)

(declare-fun res!221162 () Bool)

(assert (=> b!387034 (=> (not res!221162) (not e!234684))))

(declare-fun arrayContainsKey!0 (array!22909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387034 (= res!221162 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!387035 () Bool)

(declare-fun res!221165 () Bool)

(assert (=> b!387035 (=> (not res!221165) (not e!234684))))

(assert (=> b!387035 (= res!221165 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6280))))

(declare-fun mapIsEmpty!15843 () Bool)

(assert (=> mapIsEmpty!15843 mapRes!15843))

(declare-fun b!387036 () Bool)

(assert (=> b!387036 (= e!234682 false)))

(declare-fun zeroValue!472 () V!13797)

(declare-fun v!373 () V!13797)

(declare-datatypes ((tuple2!6398 0))(
  ( (tuple2!6399 (_1!3209 (_ BitVec 64)) (_2!3209 V!13797)) )
))
(declare-datatypes ((List!6284 0))(
  ( (Nil!6281) (Cons!6280 (h!7136 tuple2!6398) (t!11442 List!6284)) )
))
(declare-datatypes ((ListLongMap!5325 0))(
  ( (ListLongMap!5326 (toList!2678 List!6284)) )
))
(declare-fun lt!181950 () ListLongMap!5325)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13797)

(declare-fun getCurrentListMapNoExtraKeys!912 (array!22909 array!22907 (_ BitVec 32) (_ BitVec 32) V!13797 V!13797 (_ BitVec 32) Int) ListLongMap!5325)

(assert (=> b!387036 (= lt!181950 (getCurrentListMapNoExtraKeys!912 lt!181949 (array!22908 (store (arr!10919 _values!506) i!548 (ValueCellFull!4416 v!373)) (size!11271 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181951 () ListLongMap!5325)

(assert (=> b!387036 (= lt!181951 (getCurrentListMapNoExtraKeys!912 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387037 () Bool)

(declare-fun res!221167 () Bool)

(assert (=> b!387037 (=> (not res!221167) (not e!234684))))

(assert (=> b!387037 (= res!221167 (or (= (select (arr!10920 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10920 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387038 () Bool)

(assert (=> b!387038 (= e!234683 (and e!234685 mapRes!15843))))

(declare-fun condMapEmpty!15843 () Bool)

(declare-fun mapDefault!15843 () ValueCell!4416)

(assert (=> b!387038 (= condMapEmpty!15843 (= (arr!10919 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4416)) mapDefault!15843)))))

(assert (= (and start!37752 res!221170) b!387031))

(assert (= (and b!387031 res!221168) b!387030))

(assert (= (and b!387030 res!221169) b!387035))

(assert (= (and b!387035 res!221165) b!387027))

(assert (= (and b!387027 res!221171) b!387028))

(assert (= (and b!387028 res!221164) b!387037))

(assert (= (and b!387037 res!221167) b!387034))

(assert (= (and b!387034 res!221162) b!387029))

(assert (= (and b!387029 res!221163) b!387032))

(assert (= (and b!387032 res!221166) b!387036))

(assert (= (and b!387038 condMapEmpty!15843) mapIsEmpty!15843))

(assert (= (and b!387038 (not condMapEmpty!15843)) mapNonEmpty!15843))

(get-info :version)

(assert (= (and mapNonEmpty!15843 ((_ is ValueCellFull!4416) mapValue!15843)) b!387033))

(assert (= (and b!387038 ((_ is ValueCellFull!4416) mapDefault!15843)) b!387026))

(assert (= start!37752 b!387038))

(declare-fun m!383231 () Bool)

(assert (=> b!387029 m!383231))

(declare-fun m!383233 () Bool)

(assert (=> b!387029 m!383233))

(declare-fun m!383235 () Bool)

(assert (=> b!387036 m!383235))

(declare-fun m!383237 () Bool)

(assert (=> b!387036 m!383237))

(declare-fun m!383239 () Bool)

(assert (=> b!387036 m!383239))

(declare-fun m!383241 () Bool)

(assert (=> start!37752 m!383241))

(declare-fun m!383243 () Bool)

(assert (=> start!37752 m!383243))

(declare-fun m!383245 () Bool)

(assert (=> start!37752 m!383245))

(declare-fun m!383247 () Bool)

(assert (=> b!387032 m!383247))

(declare-fun m!383249 () Bool)

(assert (=> b!387035 m!383249))

(declare-fun m!383251 () Bool)

(assert (=> b!387028 m!383251))

(declare-fun m!383253 () Bool)

(assert (=> mapNonEmpty!15843 m!383253))

(declare-fun m!383255 () Bool)

(assert (=> b!387030 m!383255))

(declare-fun m!383257 () Bool)

(assert (=> b!387037 m!383257))

(declare-fun m!383259 () Bool)

(assert (=> b!387034 m!383259))

(check-sat (not b!387036) tp_is_empty!9519 (not mapNonEmpty!15843) (not b!387035) (not b!387029) (not b!387028) (not start!37752) (not b_next!8847) (not b!387030) (not b!387032) b_and!16107 (not b!387034))
(check-sat b_and!16107 (not b_next!8847))
