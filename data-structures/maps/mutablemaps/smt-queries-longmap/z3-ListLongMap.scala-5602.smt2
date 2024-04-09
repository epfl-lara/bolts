; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73426 () Bool)

(assert start!73426)

(declare-fun b_free!14313 () Bool)

(declare-fun b_next!14313 () Bool)

(assert (=> start!73426 (= b_free!14313 (not b_next!14313))))

(declare-fun tp!50443 () Bool)

(declare-fun b_and!23687 () Bool)

(assert (=> start!73426 (= tp!50443 b_and!23687)))

(declare-fun b!856608 () Bool)

(declare-fun e!477506 () Bool)

(assert (=> b!856608 (= e!477506 (not true))))

(declare-datatypes ((V!26979 0))(
  ( (V!26980 (val!8272 Int)) )
))
(declare-fun v!557 () V!26979)

(declare-datatypes ((ValueCell!7785 0))(
  ( (ValueCellFull!7785 (v!10693 V!26979)) (EmptyCell!7785) )
))
(declare-datatypes ((array!49066 0))(
  ( (array!49067 (arr!23560 (Array (_ BitVec 32) ValueCell!7785)) (size!24001 (_ BitVec 32))) )
))
(declare-fun lt!386009 () array!49066)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49068 0))(
  ( (array!49069 (arr!23561 (Array (_ BitVec 32) (_ BitVec 64))) (size!24002 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49068)

(declare-fun _values!688 () array!49066)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26979)

(declare-fun zeroValue!654 () V!26979)

(declare-datatypes ((tuple2!10896 0))(
  ( (tuple2!10897 (_1!5458 (_ BitVec 64)) (_2!5458 V!26979)) )
))
(declare-datatypes ((List!16768 0))(
  ( (Nil!16765) (Cons!16764 (h!17895 tuple2!10896) (t!23417 List!16768)) )
))
(declare-datatypes ((ListLongMap!9679 0))(
  ( (ListLongMap!9680 (toList!4855 List!16768)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2837 (array!49068 array!49066 (_ BitVec 32) (_ BitVec 32) V!26979 V!26979 (_ BitVec 32) Int) ListLongMap!9679)

(declare-fun +!2164 (ListLongMap!9679 tuple2!10896) ListLongMap!9679)

(assert (=> b!856608 (= (getCurrentListMapNoExtraKeys!2837 _keys!868 lt!386009 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2164 (getCurrentListMapNoExtraKeys!2837 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10897 k0!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29170 0))(
  ( (Unit!29171) )
))
(declare-fun lt!386010 () Unit!29170)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!424 (array!49068 array!49066 (_ BitVec 32) (_ BitVec 32) V!26979 V!26979 (_ BitVec 32) (_ BitVec 64) V!26979 (_ BitVec 32) Int) Unit!29170)

(assert (=> b!856608 (= lt!386010 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!424 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856609 () Bool)

(declare-fun res!581947 () Bool)

(declare-fun e!477508 () Bool)

(assert (=> b!856609 (=> (not res!581947) (not e!477508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856609 (= res!581947 (validMask!0 mask!1196))))

(declare-fun b!856610 () Bool)

(declare-fun e!477507 () Bool)

(declare-fun tp_is_empty!16449 () Bool)

(assert (=> b!856610 (= e!477507 tp_is_empty!16449)))

(declare-fun b!856611 () Bool)

(declare-fun res!581954 () Bool)

(assert (=> b!856611 (=> (not res!581954) (not e!477508))))

(assert (=> b!856611 (= res!581954 (and (= (select (arr!23561 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!856612 () Bool)

(declare-fun res!581948 () Bool)

(assert (=> b!856612 (=> (not res!581948) (not e!477508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856612 (= res!581948 (validKeyInArray!0 k0!854))))

(declare-fun b!856613 () Bool)

(declare-fun res!581950 () Bool)

(assert (=> b!856613 (=> (not res!581950) (not e!477508))))

(assert (=> b!856613 (= res!581950 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24002 _keys!868))))))

(declare-fun mapIsEmpty!26273 () Bool)

(declare-fun mapRes!26273 () Bool)

(assert (=> mapIsEmpty!26273 mapRes!26273))

(declare-fun b!856614 () Bool)

(declare-fun e!477509 () Bool)

(assert (=> b!856614 (= e!477509 tp_is_empty!16449)))

(declare-fun b!856615 () Bool)

(declare-fun e!477505 () Bool)

(assert (=> b!856615 (= e!477505 (and e!477507 mapRes!26273))))

(declare-fun condMapEmpty!26273 () Bool)

(declare-fun mapDefault!26273 () ValueCell!7785)

(assert (=> b!856615 (= condMapEmpty!26273 (= (arr!23560 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7785)) mapDefault!26273)))))

(declare-fun b!856616 () Bool)

(declare-fun res!581955 () Bool)

(assert (=> b!856616 (=> (not res!581955) (not e!477508))))

(declare-datatypes ((List!16769 0))(
  ( (Nil!16766) (Cons!16765 (h!17896 (_ BitVec 64)) (t!23418 List!16769)) )
))
(declare-fun arrayNoDuplicates!0 (array!49068 (_ BitVec 32) List!16769) Bool)

(assert (=> b!856616 (= res!581955 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16766))))

(declare-fun res!581951 () Bool)

(assert (=> start!73426 (=> (not res!581951) (not e!477508))))

(assert (=> start!73426 (= res!581951 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24002 _keys!868))))))

(assert (=> start!73426 e!477508))

(assert (=> start!73426 tp_is_empty!16449))

(assert (=> start!73426 true))

(assert (=> start!73426 tp!50443))

(declare-fun array_inv!18648 (array!49068) Bool)

(assert (=> start!73426 (array_inv!18648 _keys!868)))

(declare-fun array_inv!18649 (array!49066) Bool)

(assert (=> start!73426 (and (array_inv!18649 _values!688) e!477505)))

(declare-fun mapNonEmpty!26273 () Bool)

(declare-fun tp!50444 () Bool)

(assert (=> mapNonEmpty!26273 (= mapRes!26273 (and tp!50444 e!477509))))

(declare-fun mapRest!26273 () (Array (_ BitVec 32) ValueCell!7785))

(declare-fun mapKey!26273 () (_ BitVec 32))

(declare-fun mapValue!26273 () ValueCell!7785)

(assert (=> mapNonEmpty!26273 (= (arr!23560 _values!688) (store mapRest!26273 mapKey!26273 mapValue!26273))))

(declare-fun b!856617 () Bool)

(declare-fun res!581949 () Bool)

(assert (=> b!856617 (=> (not res!581949) (not e!477508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49068 (_ BitVec 32)) Bool)

(assert (=> b!856617 (= res!581949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856618 () Bool)

(declare-fun res!581952 () Bool)

(assert (=> b!856618 (=> (not res!581952) (not e!477508))))

(assert (=> b!856618 (= res!581952 (and (= (size!24001 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24002 _keys!868) (size!24001 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856619 () Bool)

(assert (=> b!856619 (= e!477508 e!477506)))

(declare-fun res!581953 () Bool)

(assert (=> b!856619 (=> (not res!581953) (not e!477506))))

(assert (=> b!856619 (= res!581953 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386007 () ListLongMap!9679)

(assert (=> b!856619 (= lt!386007 (getCurrentListMapNoExtraKeys!2837 _keys!868 lt!386009 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!856619 (= lt!386009 (array!49067 (store (arr!23560 _values!688) i!612 (ValueCellFull!7785 v!557)) (size!24001 _values!688)))))

(declare-fun lt!386008 () ListLongMap!9679)

(assert (=> b!856619 (= lt!386008 (getCurrentListMapNoExtraKeys!2837 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73426 res!581951) b!856609))

(assert (= (and b!856609 res!581947) b!856618))

(assert (= (and b!856618 res!581952) b!856617))

(assert (= (and b!856617 res!581949) b!856616))

(assert (= (and b!856616 res!581955) b!856613))

(assert (= (and b!856613 res!581950) b!856612))

(assert (= (and b!856612 res!581948) b!856611))

(assert (= (and b!856611 res!581954) b!856619))

(assert (= (and b!856619 res!581953) b!856608))

(assert (= (and b!856615 condMapEmpty!26273) mapIsEmpty!26273))

(assert (= (and b!856615 (not condMapEmpty!26273)) mapNonEmpty!26273))

(get-info :version)

(assert (= (and mapNonEmpty!26273 ((_ is ValueCellFull!7785) mapValue!26273)) b!856614))

(assert (= (and b!856615 ((_ is ValueCellFull!7785) mapDefault!26273)) b!856610))

(assert (= start!73426 b!856615))

(declare-fun m!797605 () Bool)

(assert (=> b!856617 m!797605))

(declare-fun m!797607 () Bool)

(assert (=> b!856619 m!797607))

(declare-fun m!797609 () Bool)

(assert (=> b!856619 m!797609))

(declare-fun m!797611 () Bool)

(assert (=> b!856619 m!797611))

(declare-fun m!797613 () Bool)

(assert (=> mapNonEmpty!26273 m!797613))

(declare-fun m!797615 () Bool)

(assert (=> start!73426 m!797615))

(declare-fun m!797617 () Bool)

(assert (=> start!73426 m!797617))

(declare-fun m!797619 () Bool)

(assert (=> b!856611 m!797619))

(declare-fun m!797621 () Bool)

(assert (=> b!856609 m!797621))

(declare-fun m!797623 () Bool)

(assert (=> b!856608 m!797623))

(declare-fun m!797625 () Bool)

(assert (=> b!856608 m!797625))

(assert (=> b!856608 m!797625))

(declare-fun m!797627 () Bool)

(assert (=> b!856608 m!797627))

(declare-fun m!797629 () Bool)

(assert (=> b!856608 m!797629))

(declare-fun m!797631 () Bool)

(assert (=> b!856612 m!797631))

(declare-fun m!797633 () Bool)

(assert (=> b!856616 m!797633))

(check-sat (not b!856617) (not b_next!14313) b_and!23687 (not b!856612) (not start!73426) (not b!856609) tp_is_empty!16449 (not mapNonEmpty!26273) (not b!856608) (not b!856616) (not b!856619))
(check-sat b_and!23687 (not b_next!14313))
