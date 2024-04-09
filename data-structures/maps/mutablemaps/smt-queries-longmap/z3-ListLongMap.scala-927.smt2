; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20672 () Bool)

(assert start!20672)

(declare-fun b_free!5319 () Bool)

(declare-fun b_next!5319 () Bool)

(assert (=> start!20672 (= b_free!5319 (not b_next!5319))))

(declare-fun tp!18989 () Bool)

(declare-fun b_and!12083 () Bool)

(assert (=> start!20672 (= tp!18989 b_and!12083)))

(declare-fun b!206344 () Bool)

(declare-fun e!134882 () Bool)

(declare-fun e!134880 () Bool)

(assert (=> b!206344 (= e!134882 (not e!134880))))

(declare-fun res!99965 () Bool)

(assert (=> b!206344 (=> res!99965 e!134880)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!206344 (= res!99965 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6547 0))(
  ( (V!6548 (val!2632 Int)) )
))
(declare-datatypes ((tuple2!3996 0))(
  ( (tuple2!3997 (_1!2008 (_ BitVec 64)) (_2!2008 V!6547)) )
))
(declare-datatypes ((List!2911 0))(
  ( (Nil!2908) (Cons!2907 (h!3549 tuple2!3996) (t!7850 List!2911)) )
))
(declare-datatypes ((ListLongMap!2923 0))(
  ( (ListLongMap!2924 (toList!1477 List!2911)) )
))
(declare-fun lt!105548 () ListLongMap!2923)

(declare-datatypes ((ValueCell!2244 0))(
  ( (ValueCellFull!2244 (v!4598 V!6547)) (EmptyCell!2244) )
))
(declare-datatypes ((array!9560 0))(
  ( (array!9561 (arr!4530 (Array (_ BitVec 32) ValueCell!2244)) (size!4855 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9560)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6547)

(declare-datatypes ((array!9562 0))(
  ( (array!9563 (arr!4531 (Array (_ BitVec 32) (_ BitVec 64))) (size!4856 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9562)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6547)

(declare-fun getCurrentListMap!1039 (array!9562 array!9560 (_ BitVec 32) (_ BitVec 32) V!6547 V!6547 (_ BitVec 32) Int) ListLongMap!2923)

(assert (=> b!206344 (= lt!105548 (getCurrentListMap!1039 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105553 () ListLongMap!2923)

(declare-fun lt!105550 () array!9560)

(assert (=> b!206344 (= lt!105553 (getCurrentListMap!1039 _keys!825 lt!105550 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105542 () ListLongMap!2923)

(declare-fun lt!105547 () ListLongMap!2923)

(assert (=> b!206344 (and (= lt!105542 lt!105547) (= lt!105547 lt!105542))))

(declare-fun lt!105544 () ListLongMap!2923)

(declare-fun lt!105546 () tuple2!3996)

(declare-fun +!494 (ListLongMap!2923 tuple2!3996) ListLongMap!2923)

(assert (=> b!206344 (= lt!105547 (+!494 lt!105544 lt!105546))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun v!520 () V!6547)

(assert (=> b!206344 (= lt!105546 (tuple2!3997 k0!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6283 0))(
  ( (Unit!6284) )
))
(declare-fun lt!105543 () Unit!6283)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!152 (array!9562 array!9560 (_ BitVec 32) (_ BitVec 32) V!6547 V!6547 (_ BitVec 32) (_ BitVec 64) V!6547 (_ BitVec 32) Int) Unit!6283)

(assert (=> b!206344 (= lt!105543 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!152 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!410 (array!9562 array!9560 (_ BitVec 32) (_ BitVec 32) V!6547 V!6547 (_ BitVec 32) Int) ListLongMap!2923)

(assert (=> b!206344 (= lt!105542 (getCurrentListMapNoExtraKeys!410 _keys!825 lt!105550 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206344 (= lt!105550 (array!9561 (store (arr!4530 _values!649) i!601 (ValueCellFull!2244 v!520)) (size!4855 _values!649)))))

(assert (=> b!206344 (= lt!105544 (getCurrentListMapNoExtraKeys!410 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206345 () Bool)

(declare-fun res!99968 () Bool)

(assert (=> b!206345 (=> (not res!99968) (not e!134882))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!206345 (= res!99968 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!8831 () Bool)

(declare-fun mapRes!8831 () Bool)

(declare-fun tp!18988 () Bool)

(declare-fun e!134881 () Bool)

(assert (=> mapNonEmpty!8831 (= mapRes!8831 (and tp!18988 e!134881))))

(declare-fun mapValue!8831 () ValueCell!2244)

(declare-fun mapKey!8831 () (_ BitVec 32))

(declare-fun mapRest!8831 () (Array (_ BitVec 32) ValueCell!2244))

(assert (=> mapNonEmpty!8831 (= (arr!4530 _values!649) (store mapRest!8831 mapKey!8831 mapValue!8831))))

(declare-fun b!206346 () Bool)

(declare-fun tp_is_empty!5175 () Bool)

(assert (=> b!206346 (= e!134881 tp_is_empty!5175)))

(declare-fun b!206347 () Bool)

(declare-fun res!99967 () Bool)

(assert (=> b!206347 (=> (not res!99967) (not e!134882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9562 (_ BitVec 32)) Bool)

(assert (=> b!206347 (= res!99967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!206348 () Bool)

(declare-fun e!134883 () Bool)

(declare-fun e!134884 () Bool)

(assert (=> b!206348 (= e!134883 (and e!134884 mapRes!8831))))

(declare-fun condMapEmpty!8831 () Bool)

(declare-fun mapDefault!8831 () ValueCell!2244)

(assert (=> b!206348 (= condMapEmpty!8831 (= (arr!4530 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2244)) mapDefault!8831)))))

(declare-fun b!206349 () Bool)

(declare-fun res!99969 () Bool)

(assert (=> b!206349 (=> (not res!99969) (not e!134882))))

(assert (=> b!206349 (= res!99969 (and (= (size!4855 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4856 _keys!825) (size!4855 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206350 () Bool)

(declare-fun res!99964 () Bool)

(assert (=> b!206350 (=> (not res!99964) (not e!134882))))

(declare-datatypes ((List!2912 0))(
  ( (Nil!2909) (Cons!2908 (h!3550 (_ BitVec 64)) (t!7851 List!2912)) )
))
(declare-fun arrayNoDuplicates!0 (array!9562 (_ BitVec 32) List!2912) Bool)

(assert (=> b!206350 (= res!99964 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2909))))

(declare-fun b!206351 () Bool)

(declare-fun e!134879 () Bool)

(assert (=> b!206351 (= e!134880 e!134879)))

(declare-fun res!99962 () Bool)

(assert (=> b!206351 (=> res!99962 e!134879)))

(assert (=> b!206351 (= res!99962 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!105549 () ListLongMap!2923)

(assert (=> b!206351 (= lt!105548 lt!105549)))

(declare-fun lt!105545 () tuple2!3996)

(assert (=> b!206351 (= lt!105549 (+!494 lt!105544 lt!105545))))

(declare-fun lt!105551 () ListLongMap!2923)

(assert (=> b!206351 (= lt!105553 lt!105551)))

(assert (=> b!206351 (= lt!105551 (+!494 lt!105547 lt!105545))))

(assert (=> b!206351 (= lt!105553 (+!494 lt!105542 lt!105545))))

(assert (=> b!206351 (= lt!105545 (tuple2!3997 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206352 () Bool)

(declare-fun res!99970 () Bool)

(assert (=> b!206352 (=> (not res!99970) (not e!134882))))

(assert (=> b!206352 (= res!99970 (= (select (arr!4531 _keys!825) i!601) k0!843))))

(declare-fun res!99963 () Bool)

(assert (=> start!20672 (=> (not res!99963) (not e!134882))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20672 (= res!99963 (validMask!0 mask!1149))))

(assert (=> start!20672 e!134882))

(declare-fun array_inv!2987 (array!9560) Bool)

(assert (=> start!20672 (and (array_inv!2987 _values!649) e!134883)))

(assert (=> start!20672 true))

(assert (=> start!20672 tp_is_empty!5175))

(declare-fun array_inv!2988 (array!9562) Bool)

(assert (=> start!20672 (array_inv!2988 _keys!825)))

(assert (=> start!20672 tp!18989))

(declare-fun mapIsEmpty!8831 () Bool)

(assert (=> mapIsEmpty!8831 mapRes!8831))

(declare-fun b!206353 () Bool)

(assert (=> b!206353 (= e!134884 tp_is_empty!5175)))

(declare-fun b!206354 () Bool)

(assert (=> b!206354 (= e!134879 (bvsle #b00000000000000000000000000000000 (size!4856 _keys!825)))))

(assert (=> b!206354 (= lt!105551 (+!494 lt!105549 lt!105546))))

(declare-fun lt!105552 () Unit!6283)

(declare-fun addCommutativeForDiffKeys!192 (ListLongMap!2923 (_ BitVec 64) V!6547 (_ BitVec 64) V!6547) Unit!6283)

(assert (=> b!206354 (= lt!105552 (addCommutativeForDiffKeys!192 lt!105544 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206355 () Bool)

(declare-fun res!99966 () Bool)

(assert (=> b!206355 (=> (not res!99966) (not e!134882))))

(assert (=> b!206355 (= res!99966 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4856 _keys!825))))))

(assert (= (and start!20672 res!99963) b!206349))

(assert (= (and b!206349 res!99969) b!206347))

(assert (= (and b!206347 res!99967) b!206350))

(assert (= (and b!206350 res!99964) b!206355))

(assert (= (and b!206355 res!99966) b!206345))

(assert (= (and b!206345 res!99968) b!206352))

(assert (= (and b!206352 res!99970) b!206344))

(assert (= (and b!206344 (not res!99965)) b!206351))

(assert (= (and b!206351 (not res!99962)) b!206354))

(assert (= (and b!206348 condMapEmpty!8831) mapIsEmpty!8831))

(assert (= (and b!206348 (not condMapEmpty!8831)) mapNonEmpty!8831))

(get-info :version)

(assert (= (and mapNonEmpty!8831 ((_ is ValueCellFull!2244) mapValue!8831)) b!206346))

(assert (= (and b!206348 ((_ is ValueCellFull!2244) mapDefault!8831)) b!206353))

(assert (= start!20672 b!206348))

(declare-fun m!234097 () Bool)

(assert (=> start!20672 m!234097))

(declare-fun m!234099 () Bool)

(assert (=> start!20672 m!234099))

(declare-fun m!234101 () Bool)

(assert (=> start!20672 m!234101))

(declare-fun m!234103 () Bool)

(assert (=> b!206350 m!234103))

(declare-fun m!234105 () Bool)

(assert (=> b!206354 m!234105))

(declare-fun m!234107 () Bool)

(assert (=> b!206354 m!234107))

(declare-fun m!234109 () Bool)

(assert (=> mapNonEmpty!8831 m!234109))

(declare-fun m!234111 () Bool)

(assert (=> b!206347 m!234111))

(declare-fun m!234113 () Bool)

(assert (=> b!206344 m!234113))

(declare-fun m!234115 () Bool)

(assert (=> b!206344 m!234115))

(declare-fun m!234117 () Bool)

(assert (=> b!206344 m!234117))

(declare-fun m!234119 () Bool)

(assert (=> b!206344 m!234119))

(declare-fun m!234121 () Bool)

(assert (=> b!206344 m!234121))

(declare-fun m!234123 () Bool)

(assert (=> b!206344 m!234123))

(declare-fun m!234125 () Bool)

(assert (=> b!206344 m!234125))

(declare-fun m!234127 () Bool)

(assert (=> b!206351 m!234127))

(declare-fun m!234129 () Bool)

(assert (=> b!206351 m!234129))

(declare-fun m!234131 () Bool)

(assert (=> b!206351 m!234131))

(declare-fun m!234133 () Bool)

(assert (=> b!206345 m!234133))

(declare-fun m!234135 () Bool)

(assert (=> b!206352 m!234135))

(check-sat (not mapNonEmpty!8831) b_and!12083 (not b!206350) tp_is_empty!5175 (not b_next!5319) (not start!20672) (not b!206345) (not b!206354) (not b!206351) (not b!206347) (not b!206344))
(check-sat b_and!12083 (not b_next!5319))
