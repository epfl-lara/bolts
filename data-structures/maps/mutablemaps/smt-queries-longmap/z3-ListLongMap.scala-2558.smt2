; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39176 () Bool)

(assert start!39176)

(declare-fun b_free!9435 () Bool)

(declare-fun b_next!9435 () Bool)

(assert (=> start!39176 (= b_free!9435 (not b_next!9435))))

(declare-fun tp!33833 () Bool)

(declare-fun b_and!16839 () Bool)

(assert (=> start!39176 (= tp!33833 b_and!16839)))

(declare-fun b!412197 () Bool)

(declare-fun res!239415 () Bool)

(declare-fun e!246682 () Bool)

(assert (=> b!412197 (=> (not res!239415) (not e!246682))))

(declare-datatypes ((array!25015 0))(
  ( (array!25016 (arr!11954 (Array (_ BitVec 32) (_ BitVec 64))) (size!12306 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25015)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25015 (_ BitVec 32)) Bool)

(assert (=> b!412197 (= res!239415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!412198 () Bool)

(declare-fun res!239407 () Bool)

(assert (=> b!412198 (=> (not res!239407) (not e!246682))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!412198 (= res!239407 (validMask!0 mask!1025))))

(declare-fun b!412199 () Bool)

(declare-fun e!246684 () Bool)

(assert (=> b!412199 (= e!246682 e!246684)))

(declare-fun res!239411 () Bool)

(assert (=> b!412199 (=> (not res!239411) (not e!246684))))

(declare-fun lt!189433 () array!25015)

(assert (=> b!412199 (= res!239411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!189433 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!412199 (= lt!189433 (array!25016 (store (arr!11954 _keys!709) i!563 k0!794) (size!12306 _keys!709)))))

(declare-fun b!412200 () Bool)

(declare-fun res!239417 () Bool)

(assert (=> b!412200 (=> (not res!239417) (not e!246684))))

(declare-datatypes ((List!6911 0))(
  ( (Nil!6908) (Cons!6907 (h!7763 (_ BitVec 64)) (t!12093 List!6911)) )
))
(declare-fun arrayNoDuplicates!0 (array!25015 (_ BitVec 32) List!6911) Bool)

(assert (=> b!412200 (= res!239417 (arrayNoDuplicates!0 lt!189433 #b00000000000000000000000000000000 Nil!6908))))

(declare-fun b!412201 () Bool)

(declare-fun res!239408 () Bool)

(assert (=> b!412201 (=> (not res!239408) (not e!246682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!412201 (= res!239408 (validKeyInArray!0 k0!794))))

(declare-fun b!412202 () Bool)

(declare-fun e!246685 () Bool)

(declare-fun e!246681 () Bool)

(declare-fun mapRes!17502 () Bool)

(assert (=> b!412202 (= e!246685 (and e!246681 mapRes!17502))))

(declare-fun condMapEmpty!17502 () Bool)

(declare-datatypes ((V!15221 0))(
  ( (V!15222 (val!5338 Int)) )
))
(declare-datatypes ((ValueCell!4950 0))(
  ( (ValueCellFull!4950 (v!7581 V!15221)) (EmptyCell!4950) )
))
(declare-datatypes ((array!25017 0))(
  ( (array!25018 (arr!11955 (Array (_ BitVec 32) ValueCell!4950)) (size!12307 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25017)

(declare-fun mapDefault!17502 () ValueCell!4950)

(assert (=> b!412202 (= condMapEmpty!17502 (= (arr!11955 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4950)) mapDefault!17502)))))

(declare-fun mapIsEmpty!17502 () Bool)

(assert (=> mapIsEmpty!17502 mapRes!17502))

(declare-fun b!412203 () Bool)

(declare-fun res!239413 () Bool)

(assert (=> b!412203 (=> (not res!239413) (not e!246684))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!412203 (= res!239413 (bvsle from!863 i!563))))

(declare-fun b!412204 () Bool)

(declare-fun res!239410 () Bool)

(assert (=> b!412204 (=> (not res!239410) (not e!246682))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!412204 (= res!239410 (and (= (size!12307 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12306 _keys!709) (size!12307 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!412205 () Bool)

(declare-fun tp_is_empty!10587 () Bool)

(assert (=> b!412205 (= e!246681 tp_is_empty!10587)))

(declare-fun b!412207 () Bool)

(declare-fun res!239414 () Bool)

(assert (=> b!412207 (=> (not res!239414) (not e!246682))))

(assert (=> b!412207 (= res!239414 (or (= (select (arr!11954 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11954 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17502 () Bool)

(declare-fun tp!33834 () Bool)

(declare-fun e!246683 () Bool)

(assert (=> mapNonEmpty!17502 (= mapRes!17502 (and tp!33834 e!246683))))

(declare-fun mapValue!17502 () ValueCell!4950)

(declare-fun mapKey!17502 () (_ BitVec 32))

(declare-fun mapRest!17502 () (Array (_ BitVec 32) ValueCell!4950))

(assert (=> mapNonEmpty!17502 (= (arr!11955 _values!549) (store mapRest!17502 mapKey!17502 mapValue!17502))))

(declare-fun b!412208 () Bool)

(declare-fun res!239412 () Bool)

(assert (=> b!412208 (=> (not res!239412) (not e!246682))))

(assert (=> b!412208 (= res!239412 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12306 _keys!709))))))

(declare-fun b!412209 () Bool)

(assert (=> b!412209 (= e!246684 false)))

(declare-datatypes ((tuple2!6852 0))(
  ( (tuple2!6853 (_1!3436 (_ BitVec 64)) (_2!3436 V!15221)) )
))
(declare-datatypes ((List!6912 0))(
  ( (Nil!6909) (Cons!6908 (h!7764 tuple2!6852) (t!12094 List!6912)) )
))
(declare-datatypes ((ListLongMap!5779 0))(
  ( (ListLongMap!5780 (toList!2905 List!6912)) )
))
(declare-fun lt!189435 () ListLongMap!5779)

(declare-fun minValue!515 () V!15221)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15221)

(declare-fun v!412 () V!15221)

(declare-fun getCurrentListMapNoExtraKeys!1115 (array!25015 array!25017 (_ BitVec 32) (_ BitVec 32) V!15221 V!15221 (_ BitVec 32) Int) ListLongMap!5779)

(assert (=> b!412209 (= lt!189435 (getCurrentListMapNoExtraKeys!1115 lt!189433 (array!25018 (store (arr!11955 _values!549) i!563 (ValueCellFull!4950 v!412)) (size!12307 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!189434 () ListLongMap!5779)

(assert (=> b!412209 (= lt!189434 (getCurrentListMapNoExtraKeys!1115 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!412210 () Bool)

(declare-fun res!239418 () Bool)

(assert (=> b!412210 (=> (not res!239418) (not e!246682))))

(declare-fun arrayContainsKey!0 (array!25015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!412210 (= res!239418 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!412211 () Bool)

(assert (=> b!412211 (= e!246683 tp_is_empty!10587)))

(declare-fun b!412206 () Bool)

(declare-fun res!239409 () Bool)

(assert (=> b!412206 (=> (not res!239409) (not e!246682))))

(assert (=> b!412206 (= res!239409 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6908))))

(declare-fun res!239416 () Bool)

(assert (=> start!39176 (=> (not res!239416) (not e!246682))))

(assert (=> start!39176 (= res!239416 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12306 _keys!709))))))

(assert (=> start!39176 e!246682))

(assert (=> start!39176 tp_is_empty!10587))

(assert (=> start!39176 tp!33833))

(assert (=> start!39176 true))

(declare-fun array_inv!8716 (array!25017) Bool)

(assert (=> start!39176 (and (array_inv!8716 _values!549) e!246685)))

(declare-fun array_inv!8717 (array!25015) Bool)

(assert (=> start!39176 (array_inv!8717 _keys!709)))

(assert (= (and start!39176 res!239416) b!412198))

(assert (= (and b!412198 res!239407) b!412204))

(assert (= (and b!412204 res!239410) b!412197))

(assert (= (and b!412197 res!239415) b!412206))

(assert (= (and b!412206 res!239409) b!412208))

(assert (= (and b!412208 res!239412) b!412201))

(assert (= (and b!412201 res!239408) b!412207))

(assert (= (and b!412207 res!239414) b!412210))

(assert (= (and b!412210 res!239418) b!412199))

(assert (= (and b!412199 res!239411) b!412200))

(assert (= (and b!412200 res!239417) b!412203))

(assert (= (and b!412203 res!239413) b!412209))

(assert (= (and b!412202 condMapEmpty!17502) mapIsEmpty!17502))

(assert (= (and b!412202 (not condMapEmpty!17502)) mapNonEmpty!17502))

(get-info :version)

(assert (= (and mapNonEmpty!17502 ((_ is ValueCellFull!4950) mapValue!17502)) b!412211))

(assert (= (and b!412202 ((_ is ValueCellFull!4950) mapDefault!17502)) b!412205))

(assert (= start!39176 b!412202))

(declare-fun m!402069 () Bool)

(assert (=> b!412197 m!402069))

(declare-fun m!402071 () Bool)

(assert (=> b!412200 m!402071))

(declare-fun m!402073 () Bool)

(assert (=> b!412201 m!402073))

(declare-fun m!402075 () Bool)

(assert (=> start!39176 m!402075))

(declare-fun m!402077 () Bool)

(assert (=> start!39176 m!402077))

(declare-fun m!402079 () Bool)

(assert (=> mapNonEmpty!17502 m!402079))

(declare-fun m!402081 () Bool)

(assert (=> b!412206 m!402081))

(declare-fun m!402083 () Bool)

(assert (=> b!412199 m!402083))

(declare-fun m!402085 () Bool)

(assert (=> b!412199 m!402085))

(declare-fun m!402087 () Bool)

(assert (=> b!412209 m!402087))

(declare-fun m!402089 () Bool)

(assert (=> b!412209 m!402089))

(declare-fun m!402091 () Bool)

(assert (=> b!412209 m!402091))

(declare-fun m!402093 () Bool)

(assert (=> b!412210 m!402093))

(declare-fun m!402095 () Bool)

(assert (=> b!412207 m!402095))

(declare-fun m!402097 () Bool)

(assert (=> b!412198 m!402097))

(check-sat (not start!39176) (not b!412210) (not b!412197) (not b_next!9435) (not b!412198) (not b!412199) (not mapNonEmpty!17502) (not b!412201) tp_is_empty!10587 b_and!16839 (not b!412209) (not b!412200) (not b!412206))
(check-sat b_and!16839 (not b_next!9435))
