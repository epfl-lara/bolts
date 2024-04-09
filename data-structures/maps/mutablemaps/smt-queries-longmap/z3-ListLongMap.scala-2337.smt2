; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37494 () Bool)

(assert start!37494)

(declare-fun b_free!8613 () Bool)

(declare-fun b_next!8613 () Bool)

(assert (=> start!37494 (= b_free!8613 (not b_next!8613))))

(declare-fun tp!30554 () Bool)

(declare-fun b_and!15873 () Bool)

(assert (=> start!37494 (= tp!30554 b_and!15873)))

(declare-fun b!381955 () Bool)

(declare-fun res!217252 () Bool)

(declare-fun e!232153 () Bool)

(assert (=> b!381955 (=> (not res!217252) (not e!232153))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!381955 (= res!217252 (validKeyInArray!0 k0!778))))

(declare-fun b!381956 () Bool)

(declare-fun res!217254 () Bool)

(assert (=> b!381956 (=> (not res!217254) (not e!232153))))

(declare-datatypes ((V!13453 0))(
  ( (V!13454 (val!4675 Int)) )
))
(declare-datatypes ((ValueCell!4287 0))(
  ( (ValueCellFull!4287 (v!6868 V!13453)) (EmptyCell!4287) )
))
(declare-datatypes ((array!22413 0))(
  ( (array!22414 (arr!10672 (Array (_ BitVec 32) ValueCell!4287)) (size!11024 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22413)

(declare-datatypes ((array!22415 0))(
  ( (array!22416 (arr!10673 (Array (_ BitVec 32) (_ BitVec 64))) (size!11025 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22415)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!381956 (= res!217254 (and (= (size!11024 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11025 _keys!658) (size!11024 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!381957 () Bool)

(declare-fun e!232149 () Bool)

(declare-fun e!232152 () Bool)

(declare-fun mapRes!15456 () Bool)

(assert (=> b!381957 (= e!232149 (and e!232152 mapRes!15456))))

(declare-fun condMapEmpty!15456 () Bool)

(declare-fun mapDefault!15456 () ValueCell!4287)

(assert (=> b!381957 (= condMapEmpty!15456 (= (arr!10672 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4287)) mapDefault!15456)))))

(declare-fun b!381958 () Bool)

(declare-fun res!217253 () Bool)

(declare-fun e!232154 () Bool)

(assert (=> b!381958 (=> (not res!217253) (not e!232154))))

(declare-fun lt!179206 () array!22415)

(declare-datatypes ((List!6101 0))(
  ( (Nil!6098) (Cons!6097 (h!6953 (_ BitVec 64)) (t!11259 List!6101)) )
))
(declare-fun arrayNoDuplicates!0 (array!22415 (_ BitVec 32) List!6101) Bool)

(assert (=> b!381958 (= res!217253 (arrayNoDuplicates!0 lt!179206 #b00000000000000000000000000000000 Nil!6098))))

(declare-fun b!381959 () Bool)

(declare-fun e!232150 () Bool)

(assert (=> b!381959 (= e!232150 true)))

(declare-datatypes ((tuple2!6232 0))(
  ( (tuple2!6233 (_1!3126 (_ BitVec 64)) (_2!3126 V!13453)) )
))
(declare-datatypes ((List!6102 0))(
  ( (Nil!6099) (Cons!6098 (h!6954 tuple2!6232) (t!11260 List!6102)) )
))
(declare-datatypes ((ListLongMap!5159 0))(
  ( (ListLongMap!5160 (toList!2595 List!6102)) )
))
(declare-fun lt!179198 () ListLongMap!5159)

(declare-fun lt!179205 () ListLongMap!5159)

(assert (=> b!381959 (= lt!179198 lt!179205)))

(declare-fun b!381961 () Bool)

(declare-fun res!217261 () Bool)

(assert (=> b!381961 (=> (not res!217261) (not e!232153))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!381961 (= res!217261 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11025 _keys!658))))))

(declare-fun b!381962 () Bool)

(declare-fun res!217259 () Bool)

(assert (=> b!381962 (=> (not res!217259) (not e!232153))))

(declare-fun arrayContainsKey!0 (array!22415 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!381962 (= res!217259 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15456 () Bool)

(assert (=> mapIsEmpty!15456 mapRes!15456))

(declare-fun b!381963 () Bool)

(declare-fun e!232155 () Bool)

(declare-fun tp_is_empty!9261 () Bool)

(assert (=> b!381963 (= e!232155 tp_is_empty!9261)))

(declare-fun b!381964 () Bool)

(assert (=> b!381964 (= e!232154 (not e!232150))))

(declare-fun res!217256 () Bool)

(assert (=> b!381964 (=> res!217256 e!232150)))

(declare-fun lt!179204 () Bool)

(assert (=> b!381964 (= res!217256 (or (and (not lt!179204) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179204) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179204)))))

(assert (=> b!381964 (= lt!179204 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13453)

(declare-fun lt!179199 () ListLongMap!5159)

(declare-fun minValue!472 () V!13453)

(declare-fun getCurrentListMap!2014 (array!22415 array!22413 (_ BitVec 32) (_ BitVec 32) V!13453 V!13453 (_ BitVec 32) Int) ListLongMap!5159)

(assert (=> b!381964 (= lt!179199 (getCurrentListMap!2014 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179202 () array!22413)

(assert (=> b!381964 (= lt!179198 (getCurrentListMap!2014 lt!179206 lt!179202 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179203 () ListLongMap!5159)

(assert (=> b!381964 (and (= lt!179205 lt!179203) (= lt!179203 lt!179205))))

(declare-fun v!373 () V!13453)

(declare-fun lt!179200 () ListLongMap!5159)

(declare-fun +!932 (ListLongMap!5159 tuple2!6232) ListLongMap!5159)

(assert (=> b!381964 (= lt!179203 (+!932 lt!179200 (tuple2!6233 k0!778 v!373)))))

(declare-datatypes ((Unit!11757 0))(
  ( (Unit!11758) )
))
(declare-fun lt!179201 () Unit!11757)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!165 (array!22415 array!22413 (_ BitVec 32) (_ BitVec 32) V!13453 V!13453 (_ BitVec 32) (_ BitVec 64) V!13453 (_ BitVec 32) Int) Unit!11757)

(assert (=> b!381964 (= lt!179201 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!165 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!832 (array!22415 array!22413 (_ BitVec 32) (_ BitVec 32) V!13453 V!13453 (_ BitVec 32) Int) ListLongMap!5159)

(assert (=> b!381964 (= lt!179205 (getCurrentListMapNoExtraKeys!832 lt!179206 lt!179202 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!381964 (= lt!179202 (array!22414 (store (arr!10672 _values!506) i!548 (ValueCellFull!4287 v!373)) (size!11024 _values!506)))))

(assert (=> b!381964 (= lt!179200 (getCurrentListMapNoExtraKeys!832 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!381965 () Bool)

(declare-fun res!217260 () Bool)

(assert (=> b!381965 (=> (not res!217260) (not e!232153))))

(assert (=> b!381965 (= res!217260 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6098))))

(declare-fun b!381966 () Bool)

(declare-fun res!217262 () Bool)

(assert (=> b!381966 (=> (not res!217262) (not e!232153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22415 (_ BitVec 32)) Bool)

(assert (=> b!381966 (= res!217262 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!217255 () Bool)

(assert (=> start!37494 (=> (not res!217255) (not e!232153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37494 (= res!217255 (validMask!0 mask!970))))

(assert (=> start!37494 e!232153))

(declare-fun array_inv!7836 (array!22413) Bool)

(assert (=> start!37494 (and (array_inv!7836 _values!506) e!232149)))

(assert (=> start!37494 tp!30554))

(assert (=> start!37494 true))

(assert (=> start!37494 tp_is_empty!9261))

(declare-fun array_inv!7837 (array!22415) Bool)

(assert (=> start!37494 (array_inv!7837 _keys!658)))

(declare-fun b!381960 () Bool)

(declare-fun res!217258 () Bool)

(assert (=> b!381960 (=> (not res!217258) (not e!232153))))

(assert (=> b!381960 (= res!217258 (or (= (select (arr!10673 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10673 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381967 () Bool)

(assert (=> b!381967 (= e!232153 e!232154)))

(declare-fun res!217257 () Bool)

(assert (=> b!381967 (=> (not res!217257) (not e!232154))))

(assert (=> b!381967 (= res!217257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179206 mask!970))))

(assert (=> b!381967 (= lt!179206 (array!22416 (store (arr!10673 _keys!658) i!548 k0!778) (size!11025 _keys!658)))))

(declare-fun mapNonEmpty!15456 () Bool)

(declare-fun tp!30555 () Bool)

(assert (=> mapNonEmpty!15456 (= mapRes!15456 (and tp!30555 e!232155))))

(declare-fun mapRest!15456 () (Array (_ BitVec 32) ValueCell!4287))

(declare-fun mapKey!15456 () (_ BitVec 32))

(declare-fun mapValue!15456 () ValueCell!4287)

(assert (=> mapNonEmpty!15456 (= (arr!10672 _values!506) (store mapRest!15456 mapKey!15456 mapValue!15456))))

(declare-fun b!381968 () Bool)

(assert (=> b!381968 (= e!232152 tp_is_empty!9261)))

(assert (= (and start!37494 res!217255) b!381956))

(assert (= (and b!381956 res!217254) b!381966))

(assert (= (and b!381966 res!217262) b!381965))

(assert (= (and b!381965 res!217260) b!381961))

(assert (= (and b!381961 res!217261) b!381955))

(assert (= (and b!381955 res!217252) b!381960))

(assert (= (and b!381960 res!217258) b!381962))

(assert (= (and b!381962 res!217259) b!381967))

(assert (= (and b!381967 res!217257) b!381958))

(assert (= (and b!381958 res!217253) b!381964))

(assert (= (and b!381964 (not res!217256)) b!381959))

(assert (= (and b!381957 condMapEmpty!15456) mapIsEmpty!15456))

(assert (= (and b!381957 (not condMapEmpty!15456)) mapNonEmpty!15456))

(get-info :version)

(assert (= (and mapNonEmpty!15456 ((_ is ValueCellFull!4287) mapValue!15456)) b!381963))

(assert (= (and b!381957 ((_ is ValueCellFull!4287) mapDefault!15456)) b!381968))

(assert (= start!37494 b!381957))

(declare-fun m!378847 () Bool)

(assert (=> b!381964 m!378847))

(declare-fun m!378849 () Bool)

(assert (=> b!381964 m!378849))

(declare-fun m!378851 () Bool)

(assert (=> b!381964 m!378851))

(declare-fun m!378853 () Bool)

(assert (=> b!381964 m!378853))

(declare-fun m!378855 () Bool)

(assert (=> b!381964 m!378855))

(declare-fun m!378857 () Bool)

(assert (=> b!381964 m!378857))

(declare-fun m!378859 () Bool)

(assert (=> b!381964 m!378859))

(declare-fun m!378861 () Bool)

(assert (=> mapNonEmpty!15456 m!378861))

(declare-fun m!378863 () Bool)

(assert (=> b!381966 m!378863))

(declare-fun m!378865 () Bool)

(assert (=> b!381960 m!378865))

(declare-fun m!378867 () Bool)

(assert (=> b!381958 m!378867))

(declare-fun m!378869 () Bool)

(assert (=> start!37494 m!378869))

(declare-fun m!378871 () Bool)

(assert (=> start!37494 m!378871))

(declare-fun m!378873 () Bool)

(assert (=> start!37494 m!378873))

(declare-fun m!378875 () Bool)

(assert (=> b!381965 m!378875))

(declare-fun m!378877 () Bool)

(assert (=> b!381967 m!378877))

(declare-fun m!378879 () Bool)

(assert (=> b!381967 m!378879))

(declare-fun m!378881 () Bool)

(assert (=> b!381962 m!378881))

(declare-fun m!378883 () Bool)

(assert (=> b!381955 m!378883))

(check-sat b_and!15873 (not b_next!8613) (not b!381966) (not b!381967) (not b!381964) (not mapNonEmpty!15456) tp_is_empty!9261 (not b!381955) (not b!381965) (not b!381958) (not b!381962) (not start!37494))
(check-sat b_and!15873 (not b_next!8613))
