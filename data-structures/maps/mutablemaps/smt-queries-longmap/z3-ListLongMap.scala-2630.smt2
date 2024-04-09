; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39608 () Bool)

(assert start!39608)

(declare-fun b_free!9867 () Bool)

(declare-fun b_next!9867 () Bool)

(assert (=> start!39608 (= b_free!9867 (not b_next!9867))))

(declare-fun tp!35130 () Bool)

(declare-fun b_and!17541 () Bool)

(assert (=> start!39608 (= tp!35130 b_and!17541)))

(declare-fun b!424059 () Bool)

(declare-fun res!248084 () Bool)

(declare-fun e!251956 () Bool)

(assert (=> b!424059 (=> (not res!248084) (not e!251956))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!424059 (= res!248084 (validKeyInArray!0 k0!794))))

(declare-fun b!424060 () Bool)

(declare-fun res!248086 () Bool)

(assert (=> b!424060 (=> (not res!248086) (not e!251956))))

(declare-datatypes ((array!25865 0))(
  ( (array!25866 (arr!12379 (Array (_ BitVec 32) (_ BitVec 64))) (size!12731 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25865)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15797 0))(
  ( (V!15798 (val!5554 Int)) )
))
(declare-datatypes ((ValueCell!5166 0))(
  ( (ValueCellFull!5166 (v!7797 V!15797)) (EmptyCell!5166) )
))
(declare-datatypes ((array!25867 0))(
  ( (array!25868 (arr!12380 (Array (_ BitVec 32) ValueCell!5166)) (size!12732 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25867)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!424060 (= res!248086 (and (= (size!12732 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12731 _keys!709) (size!12732 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!424061 () Bool)

(declare-fun e!251959 () Bool)

(declare-fun tp_is_empty!11019 () Bool)

(assert (=> b!424061 (= e!251959 tp_is_empty!11019)))

(declare-fun b!424062 () Bool)

(declare-fun res!248094 () Bool)

(assert (=> b!424062 (=> (not res!248094) (not e!251956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424062 (= res!248094 (validMask!0 mask!1025))))

(declare-fun b!424063 () Bool)

(declare-fun e!251957 () Bool)

(assert (=> b!424063 (= e!251957 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun minValue!515 () V!15797)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!194295 () array!25865)

(declare-fun v!412 () V!15797)

(declare-fun zeroValue!515 () V!15797)

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((tuple2!7224 0))(
  ( (tuple2!7225 (_1!3622 (_ BitVec 64)) (_2!3622 V!15797)) )
))
(declare-datatypes ((List!7271 0))(
  ( (Nil!7268) (Cons!7267 (h!8123 tuple2!7224) (t!12723 List!7271)) )
))
(declare-datatypes ((ListLongMap!6151 0))(
  ( (ListLongMap!6152 (toList!3091 List!7271)) )
))
(declare-fun lt!194293 () ListLongMap!6151)

(declare-fun getCurrentListMapNoExtraKeys!1292 (array!25865 array!25867 (_ BitVec 32) (_ BitVec 32) V!15797 V!15797 (_ BitVec 32) Int) ListLongMap!6151)

(assert (=> b!424063 (= lt!194293 (getCurrentListMapNoExtraKeys!1292 lt!194295 (array!25868 (store (arr!12380 _values!549) i!563 (ValueCellFull!5166 v!412)) (size!12732 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194294 () ListLongMap!6151)

(assert (=> b!424063 (= lt!194294 (getCurrentListMapNoExtraKeys!1292 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!424064 () Bool)

(declare-fun res!248089 () Bool)

(assert (=> b!424064 (=> (not res!248089) (not e!251957))))

(assert (=> b!424064 (= res!248089 (bvsle from!863 i!563))))

(declare-fun b!424065 () Bool)

(declare-fun res!248092 () Bool)

(assert (=> b!424065 (=> (not res!248092) (not e!251956))))

(assert (=> b!424065 (= res!248092 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12731 _keys!709))))))

(declare-fun b!424066 () Bool)

(assert (=> b!424066 (= e!251956 e!251957)))

(declare-fun res!248088 () Bool)

(assert (=> b!424066 (=> (not res!248088) (not e!251957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25865 (_ BitVec 32)) Bool)

(assert (=> b!424066 (= res!248088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194295 mask!1025))))

(assert (=> b!424066 (= lt!194295 (array!25866 (store (arr!12379 _keys!709) i!563 k0!794) (size!12731 _keys!709)))))

(declare-fun b!424067 () Bool)

(declare-fun e!251955 () Bool)

(assert (=> b!424067 (= e!251955 tp_is_empty!11019)))

(declare-fun mapNonEmpty!18150 () Bool)

(declare-fun mapRes!18150 () Bool)

(declare-fun tp!35129 () Bool)

(assert (=> mapNonEmpty!18150 (= mapRes!18150 (and tp!35129 e!251955))))

(declare-fun mapRest!18150 () (Array (_ BitVec 32) ValueCell!5166))

(declare-fun mapValue!18150 () ValueCell!5166)

(declare-fun mapKey!18150 () (_ BitVec 32))

(assert (=> mapNonEmpty!18150 (= (arr!12380 _values!549) (store mapRest!18150 mapKey!18150 mapValue!18150))))

(declare-fun mapIsEmpty!18150 () Bool)

(assert (=> mapIsEmpty!18150 mapRes!18150))

(declare-fun res!248090 () Bool)

(assert (=> start!39608 (=> (not res!248090) (not e!251956))))

(assert (=> start!39608 (= res!248090 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12731 _keys!709))))))

(assert (=> start!39608 e!251956))

(assert (=> start!39608 tp_is_empty!11019))

(assert (=> start!39608 tp!35130))

(assert (=> start!39608 true))

(declare-fun e!251958 () Bool)

(declare-fun array_inv!9024 (array!25867) Bool)

(assert (=> start!39608 (and (array_inv!9024 _values!549) e!251958)))

(declare-fun array_inv!9025 (array!25865) Bool)

(assert (=> start!39608 (array_inv!9025 _keys!709)))

(declare-fun b!424068 () Bool)

(declare-fun res!248085 () Bool)

(assert (=> b!424068 (=> (not res!248085) (not e!251956))))

(assert (=> b!424068 (= res!248085 (or (= (select (arr!12379 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12379 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424069 () Bool)

(declare-fun res!248087 () Bool)

(assert (=> b!424069 (=> (not res!248087) (not e!251957))))

(declare-datatypes ((List!7272 0))(
  ( (Nil!7269) (Cons!7268 (h!8124 (_ BitVec 64)) (t!12724 List!7272)) )
))
(declare-fun arrayNoDuplicates!0 (array!25865 (_ BitVec 32) List!7272) Bool)

(assert (=> b!424069 (= res!248087 (arrayNoDuplicates!0 lt!194295 #b00000000000000000000000000000000 Nil!7269))))

(declare-fun b!424070 () Bool)

(assert (=> b!424070 (= e!251958 (and e!251959 mapRes!18150))))

(declare-fun condMapEmpty!18150 () Bool)

(declare-fun mapDefault!18150 () ValueCell!5166)

(assert (=> b!424070 (= condMapEmpty!18150 (= (arr!12380 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5166)) mapDefault!18150)))))

(declare-fun b!424071 () Bool)

(declare-fun res!248093 () Bool)

(assert (=> b!424071 (=> (not res!248093) (not e!251956))))

(declare-fun arrayContainsKey!0 (array!25865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424071 (= res!248093 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!424072 () Bool)

(declare-fun res!248091 () Bool)

(assert (=> b!424072 (=> (not res!248091) (not e!251956))))

(assert (=> b!424072 (= res!248091 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7269))))

(declare-fun b!424073 () Bool)

(declare-fun res!248083 () Bool)

(assert (=> b!424073 (=> (not res!248083) (not e!251956))))

(assert (=> b!424073 (= res!248083 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(assert (= (and start!39608 res!248090) b!424062))

(assert (= (and b!424062 res!248094) b!424060))

(assert (= (and b!424060 res!248086) b!424073))

(assert (= (and b!424073 res!248083) b!424072))

(assert (= (and b!424072 res!248091) b!424065))

(assert (= (and b!424065 res!248092) b!424059))

(assert (= (and b!424059 res!248084) b!424068))

(assert (= (and b!424068 res!248085) b!424071))

(assert (= (and b!424071 res!248093) b!424066))

(assert (= (and b!424066 res!248088) b!424069))

(assert (= (and b!424069 res!248087) b!424064))

(assert (= (and b!424064 res!248089) b!424063))

(assert (= (and b!424070 condMapEmpty!18150) mapIsEmpty!18150))

(assert (= (and b!424070 (not condMapEmpty!18150)) mapNonEmpty!18150))

(get-info :version)

(assert (= (and mapNonEmpty!18150 ((_ is ValueCellFull!5166) mapValue!18150)) b!424067))

(assert (= (and b!424070 ((_ is ValueCellFull!5166) mapDefault!18150)) b!424061))

(assert (= start!39608 b!424070))

(declare-fun m!413305 () Bool)

(assert (=> start!39608 m!413305))

(declare-fun m!413307 () Bool)

(assert (=> start!39608 m!413307))

(declare-fun m!413309 () Bool)

(assert (=> b!424069 m!413309))

(declare-fun m!413311 () Bool)

(assert (=> b!424068 m!413311))

(declare-fun m!413313 () Bool)

(assert (=> b!424062 m!413313))

(declare-fun m!413315 () Bool)

(assert (=> b!424071 m!413315))

(declare-fun m!413317 () Bool)

(assert (=> b!424066 m!413317))

(declare-fun m!413319 () Bool)

(assert (=> b!424066 m!413319))

(declare-fun m!413321 () Bool)

(assert (=> b!424063 m!413321))

(declare-fun m!413323 () Bool)

(assert (=> b!424063 m!413323))

(declare-fun m!413325 () Bool)

(assert (=> b!424063 m!413325))

(declare-fun m!413327 () Bool)

(assert (=> b!424073 m!413327))

(declare-fun m!413329 () Bool)

(assert (=> b!424059 m!413329))

(declare-fun m!413331 () Bool)

(assert (=> mapNonEmpty!18150 m!413331))

(declare-fun m!413333 () Bool)

(assert (=> b!424072 m!413333))

(check-sat (not b!424071) (not b!424062) (not b_next!9867) b_and!17541 (not mapNonEmpty!18150) (not start!39608) (not b!424066) (not b!424072) tp_is_empty!11019 (not b!424059) (not b!424069) (not b!424063) (not b!424073))
(check-sat b_and!17541 (not b_next!9867))
