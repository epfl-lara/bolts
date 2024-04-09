; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72460 () Bool)

(assert start!72460)

(declare-fun b_free!13617 () Bool)

(declare-fun b_next!13617 () Bool)

(assert (=> start!72460 (= b_free!13617 (not b_next!13617))))

(declare-fun tp!47950 () Bool)

(declare-fun b_and!22721 () Bool)

(assert (=> start!72460 (= tp!47950 b_and!22721)))

(declare-fun b!839693 () Bool)

(declare-fun res!571007 () Bool)

(declare-fun e!468615 () Bool)

(assert (=> b!839693 (=> (not res!571007) (not e!468615))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839693 (= res!571007 (validMask!0 mask!1196))))

(declare-fun b!839694 () Bool)

(declare-fun e!468616 () Bool)

(declare-fun tp_is_empty!15483 () Bool)

(assert (=> b!839694 (= e!468616 tp_is_empty!15483)))

(declare-fun mapNonEmpty!24824 () Bool)

(declare-fun mapRes!24824 () Bool)

(declare-fun tp!47951 () Bool)

(declare-fun e!468618 () Bool)

(assert (=> mapNonEmpty!24824 (= mapRes!24824 (and tp!47951 e!468618))))

(declare-datatypes ((V!25691 0))(
  ( (V!25692 (val!7789 Int)) )
))
(declare-datatypes ((ValueCell!7302 0))(
  ( (ValueCellFull!7302 (v!10210 V!25691)) (EmptyCell!7302) )
))
(declare-fun mapValue!24824 () ValueCell!7302)

(declare-fun mapRest!24824 () (Array (_ BitVec 32) ValueCell!7302))

(declare-fun mapKey!24824 () (_ BitVec 32))

(declare-datatypes ((array!47218 0))(
  ( (array!47219 (arr!22636 (Array (_ BitVec 32) ValueCell!7302)) (size!23077 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47218)

(assert (=> mapNonEmpty!24824 (= (arr!22636 _values!688) (store mapRest!24824 mapKey!24824 mapValue!24824))))

(declare-fun b!839695 () Bool)

(assert (=> b!839695 (= e!468618 tp_is_empty!15483)))

(declare-fun res!571012 () Bool)

(assert (=> start!72460 (=> (not res!571012) (not e!468615))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47220 0))(
  ( (array!47221 (arr!22637 (Array (_ BitVec 32) (_ BitVec 64))) (size!23078 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47220)

(assert (=> start!72460 (= res!571012 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23078 _keys!868))))))

(assert (=> start!72460 e!468615))

(assert (=> start!72460 tp_is_empty!15483))

(assert (=> start!72460 true))

(assert (=> start!72460 tp!47950))

(declare-fun array_inv!18002 (array!47220) Bool)

(assert (=> start!72460 (array_inv!18002 _keys!868)))

(declare-fun e!468613 () Bool)

(declare-fun array_inv!18003 (array!47218) Bool)

(assert (=> start!72460 (and (array_inv!18003 _values!688) e!468613)))

(declare-fun b!839696 () Bool)

(declare-fun res!571008 () Bool)

(assert (=> b!839696 (=> (not res!571008) (not e!468615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47220 (_ BitVec 32)) Bool)

(assert (=> b!839696 (= res!571008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!839697 () Bool)

(declare-fun res!571009 () Bool)

(assert (=> b!839697 (=> (not res!571009) (not e!468615))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!839697 (= res!571009 (and (= (size!23077 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23078 _keys!868) (size!23077 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37081 () Bool)

(declare-fun v!557 () V!25691)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun minValue!654 () V!25691)

(declare-fun zeroValue!654 () V!25691)

(declare-datatypes ((tuple2!10336 0))(
  ( (tuple2!10337 (_1!5178 (_ BitVec 64)) (_2!5178 V!25691)) )
))
(declare-datatypes ((List!16167 0))(
  ( (Nil!16164) (Cons!16163 (h!17294 tuple2!10336) (t!22546 List!16167)) )
))
(declare-datatypes ((ListLongMap!9119 0))(
  ( (ListLongMap!9120 (toList!4575 List!16167)) )
))
(declare-fun call!37085 () ListLongMap!9119)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2567 (array!47220 array!47218 (_ BitVec 32) (_ BitVec 32) V!25691 V!25691 (_ BitVec 32) Int) ListLongMap!9119)

(assert (=> bm!37081 (= call!37085 (getCurrentListMapNoExtraKeys!2567 _keys!868 (array!47219 (store (arr!22636 _values!688) i!612 (ValueCellFull!7302 v!557)) (size!23077 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839698 () Bool)

(declare-fun res!571010 () Bool)

(assert (=> b!839698 (=> (not res!571010) (not e!468615))))

(declare-datatypes ((List!16168 0))(
  ( (Nil!16165) (Cons!16164 (h!17295 (_ BitVec 64)) (t!22547 List!16168)) )
))
(declare-fun arrayNoDuplicates!0 (array!47220 (_ BitVec 32) List!16168) Bool)

(assert (=> b!839698 (= res!571010 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16165))))

(declare-fun b!839699 () Bool)

(assert (=> b!839699 (= e!468615 (not true))))

(declare-fun e!468614 () Bool)

(assert (=> b!839699 e!468614))

(declare-fun c!91203 () Bool)

(assert (=> b!839699 (= c!91203 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28840 0))(
  ( (Unit!28841) )
))
(declare-fun lt!380736 () Unit!28840)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!269 (array!47220 array!47218 (_ BitVec 32) (_ BitVec 32) V!25691 V!25691 (_ BitVec 32) (_ BitVec 64) V!25691 (_ BitVec 32) Int) Unit!28840)

(assert (=> b!839699 (= lt!380736 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!269 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!24824 () Bool)

(assert (=> mapIsEmpty!24824 mapRes!24824))

(declare-fun call!37084 () ListLongMap!9119)

(declare-fun b!839700 () Bool)

(declare-fun +!1991 (ListLongMap!9119 tuple2!10336) ListLongMap!9119)

(assert (=> b!839700 (= e!468614 (= call!37085 (+!1991 call!37084 (tuple2!10337 k0!854 v!557))))))

(declare-fun b!839701 () Bool)

(declare-fun res!571011 () Bool)

(assert (=> b!839701 (=> (not res!571011) (not e!468615))))

(assert (=> b!839701 (= res!571011 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23078 _keys!868))))))

(declare-fun bm!37082 () Bool)

(assert (=> bm!37082 (= call!37084 (getCurrentListMapNoExtraKeys!2567 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839702 () Bool)

(assert (=> b!839702 (= e!468614 (= call!37085 call!37084))))

(declare-fun b!839703 () Bool)

(assert (=> b!839703 (= e!468613 (and e!468616 mapRes!24824))))

(declare-fun condMapEmpty!24824 () Bool)

(declare-fun mapDefault!24824 () ValueCell!7302)

(assert (=> b!839703 (= condMapEmpty!24824 (= (arr!22636 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7302)) mapDefault!24824)))))

(declare-fun b!839704 () Bool)

(declare-fun res!571014 () Bool)

(assert (=> b!839704 (=> (not res!571014) (not e!468615))))

(assert (=> b!839704 (= res!571014 (and (= (select (arr!22637 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23078 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!839705 () Bool)

(declare-fun res!571013 () Bool)

(assert (=> b!839705 (=> (not res!571013) (not e!468615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839705 (= res!571013 (validKeyInArray!0 k0!854))))

(assert (= (and start!72460 res!571012) b!839693))

(assert (= (and b!839693 res!571007) b!839697))

(assert (= (and b!839697 res!571009) b!839696))

(assert (= (and b!839696 res!571008) b!839698))

(assert (= (and b!839698 res!571010) b!839701))

(assert (= (and b!839701 res!571011) b!839705))

(assert (= (and b!839705 res!571013) b!839704))

(assert (= (and b!839704 res!571014) b!839699))

(assert (= (and b!839699 c!91203) b!839700))

(assert (= (and b!839699 (not c!91203)) b!839702))

(assert (= (or b!839700 b!839702) bm!37081))

(assert (= (or b!839700 b!839702) bm!37082))

(assert (= (and b!839703 condMapEmpty!24824) mapIsEmpty!24824))

(assert (= (and b!839703 (not condMapEmpty!24824)) mapNonEmpty!24824))

(get-info :version)

(assert (= (and mapNonEmpty!24824 ((_ is ValueCellFull!7302) mapValue!24824)) b!839695))

(assert (= (and b!839703 ((_ is ValueCellFull!7302) mapDefault!24824)) b!839694))

(assert (= start!72460 b!839703))

(declare-fun m!783775 () Bool)

(assert (=> b!839698 m!783775))

(declare-fun m!783777 () Bool)

(assert (=> bm!37081 m!783777))

(declare-fun m!783779 () Bool)

(assert (=> bm!37081 m!783779))

(declare-fun m!783781 () Bool)

(assert (=> b!839705 m!783781))

(declare-fun m!783783 () Bool)

(assert (=> b!839700 m!783783))

(declare-fun m!783785 () Bool)

(assert (=> b!839693 m!783785))

(declare-fun m!783787 () Bool)

(assert (=> start!72460 m!783787))

(declare-fun m!783789 () Bool)

(assert (=> start!72460 m!783789))

(declare-fun m!783791 () Bool)

(assert (=> mapNonEmpty!24824 m!783791))

(declare-fun m!783793 () Bool)

(assert (=> b!839704 m!783793))

(declare-fun m!783795 () Bool)

(assert (=> b!839699 m!783795))

(declare-fun m!783797 () Bool)

(assert (=> bm!37082 m!783797))

(declare-fun m!783799 () Bool)

(assert (=> b!839696 m!783799))

(check-sat (not b!839699) (not mapNonEmpty!24824) b_and!22721 (not bm!37082) (not bm!37081) (not b!839700) (not b_next!13617) tp_is_empty!15483 (not start!72460) (not b!839698) (not b!839705) (not b!839693) (not b!839696))
(check-sat b_and!22721 (not b_next!13617))
