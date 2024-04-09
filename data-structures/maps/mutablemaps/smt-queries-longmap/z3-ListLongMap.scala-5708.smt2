; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74062 () Bool)

(assert start!74062)

(declare-fun b_free!14949 () Bool)

(declare-fun b_next!14949 () Bool)

(assert (=> start!74062 (= b_free!14949 (not b_next!14949))))

(declare-fun tp!52352 () Bool)

(declare-fun b_and!24719 () Bool)

(assert (=> start!74062 (= tp!52352 b_and!24719)))

(declare-fun b!870585 () Bool)

(declare-fun res!591845 () Bool)

(declare-fun e!484788 () Bool)

(assert (=> b!870585 (=> (not res!591845) (not e!484788))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50302 0))(
  ( (array!50303 (arr!24178 (Array (_ BitVec 32) (_ BitVec 64))) (size!24619 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50302)

(declare-datatypes ((V!27827 0))(
  ( (V!27828 (val!8590 Int)) )
))
(declare-datatypes ((ValueCell!8103 0))(
  ( (ValueCellFull!8103 (v!11011 V!27827)) (EmptyCell!8103) )
))
(declare-datatypes ((array!50304 0))(
  ( (array!50305 (arr!24179 (Array (_ BitVec 32) ValueCell!8103)) (size!24620 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50304)

(assert (=> b!870585 (= res!591845 (and (= (size!24620 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24619 _keys!868) (size!24620 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27227 () Bool)

(declare-fun mapRes!27227 () Bool)

(declare-fun tp!52351 () Bool)

(declare-fun e!484787 () Bool)

(assert (=> mapNonEmpty!27227 (= mapRes!27227 (and tp!52351 e!484787))))

(declare-fun mapKey!27227 () (_ BitVec 32))

(declare-fun mapValue!27227 () ValueCell!8103)

(declare-fun mapRest!27227 () (Array (_ BitVec 32) ValueCell!8103))

(assert (=> mapNonEmpty!27227 (= (arr!24179 _values!688) (store mapRest!27227 mapKey!27227 mapValue!27227))))

(declare-fun b!870586 () Bool)

(declare-fun res!591843 () Bool)

(assert (=> b!870586 (=> (not res!591843) (not e!484788))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870586 (= res!591843 (validKeyInArray!0 k0!854))))

(declare-fun b!870587 () Bool)

(declare-fun tp_is_empty!17085 () Bool)

(assert (=> b!870587 (= e!484787 tp_is_empty!17085)))

(declare-fun b!870588 () Bool)

(declare-fun e!484789 () Bool)

(assert (=> b!870588 (= e!484788 e!484789)))

(declare-fun res!591838 () Bool)

(assert (=> b!870588 (=> (not res!591838) (not e!484789))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!870588 (= res!591838 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395178 () array!50304)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11412 0))(
  ( (tuple2!11413 (_1!5716 (_ BitVec 64)) (_2!5716 V!27827)) )
))
(declare-datatypes ((List!17268 0))(
  ( (Nil!17265) (Cons!17264 (h!18395 tuple2!11412) (t!24313 List!17268)) )
))
(declare-datatypes ((ListLongMap!10195 0))(
  ( (ListLongMap!10196 (toList!5113 List!17268)) )
))
(declare-fun lt!395179 () ListLongMap!10195)

(declare-fun minValue!654 () V!27827)

(declare-fun zeroValue!654 () V!27827)

(declare-fun getCurrentListMapNoExtraKeys!3077 (array!50302 array!50304 (_ BitVec 32) (_ BitVec 32) V!27827 V!27827 (_ BitVec 32) Int) ListLongMap!10195)

(assert (=> b!870588 (= lt!395179 (getCurrentListMapNoExtraKeys!3077 _keys!868 lt!395178 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27827)

(assert (=> b!870588 (= lt!395178 (array!50305 (store (arr!24179 _values!688) i!612 (ValueCellFull!8103 v!557)) (size!24620 _values!688)))))

(declare-fun lt!395181 () ListLongMap!10195)

(assert (=> b!870588 (= lt!395181 (getCurrentListMapNoExtraKeys!3077 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27227 () Bool)

(assert (=> mapIsEmpty!27227 mapRes!27227))

(declare-fun b!870589 () Bool)

(declare-fun res!591842 () Bool)

(assert (=> b!870589 (=> (not res!591842) (not e!484788))))

(assert (=> b!870589 (= res!591842 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24619 _keys!868))))))

(declare-fun b!870590 () Bool)

(assert (=> b!870590 (= e!484789 (not true))))

(declare-fun +!2394 (ListLongMap!10195 tuple2!11412) ListLongMap!10195)

(assert (=> b!870590 (= (getCurrentListMapNoExtraKeys!3077 _keys!868 lt!395178 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2394 (getCurrentListMapNoExtraKeys!3077 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11413 k0!854 v!557)))))

(declare-datatypes ((Unit!29838 0))(
  ( (Unit!29839) )
))
(declare-fun lt!395180 () Unit!29838)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!625 (array!50302 array!50304 (_ BitVec 32) (_ BitVec 32) V!27827 V!27827 (_ BitVec 32) (_ BitVec 64) V!27827 (_ BitVec 32) Int) Unit!29838)

(assert (=> b!870590 (= lt!395180 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!625 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!591846 () Bool)

(assert (=> start!74062 (=> (not res!591846) (not e!484788))))

(assert (=> start!74062 (= res!591846 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24619 _keys!868))))))

(assert (=> start!74062 e!484788))

(assert (=> start!74062 tp_is_empty!17085))

(assert (=> start!74062 true))

(assert (=> start!74062 tp!52352))

(declare-fun array_inv!19066 (array!50302) Bool)

(assert (=> start!74062 (array_inv!19066 _keys!868)))

(declare-fun e!484791 () Bool)

(declare-fun array_inv!19067 (array!50304) Bool)

(assert (=> start!74062 (and (array_inv!19067 _values!688) e!484791)))

(declare-fun b!870591 () Bool)

(declare-fun res!591840 () Bool)

(assert (=> b!870591 (=> (not res!591840) (not e!484788))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870591 (= res!591840 (validMask!0 mask!1196))))

(declare-fun b!870592 () Bool)

(declare-fun res!591839 () Bool)

(assert (=> b!870592 (=> (not res!591839) (not e!484788))))

(assert (=> b!870592 (= res!591839 (and (= (select (arr!24178 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!870593 () Bool)

(declare-fun res!591844 () Bool)

(assert (=> b!870593 (=> (not res!591844) (not e!484788))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50302 (_ BitVec 32)) Bool)

(assert (=> b!870593 (= res!591844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!870594 () Bool)

(declare-fun e!484790 () Bool)

(assert (=> b!870594 (= e!484791 (and e!484790 mapRes!27227))))

(declare-fun condMapEmpty!27227 () Bool)

(declare-fun mapDefault!27227 () ValueCell!8103)

(assert (=> b!870594 (= condMapEmpty!27227 (= (arr!24179 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8103)) mapDefault!27227)))))

(declare-fun b!870595 () Bool)

(declare-fun res!591841 () Bool)

(assert (=> b!870595 (=> (not res!591841) (not e!484788))))

(declare-datatypes ((List!17269 0))(
  ( (Nil!17266) (Cons!17265 (h!18396 (_ BitVec 64)) (t!24314 List!17269)) )
))
(declare-fun arrayNoDuplicates!0 (array!50302 (_ BitVec 32) List!17269) Bool)

(assert (=> b!870595 (= res!591841 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17266))))

(declare-fun b!870596 () Bool)

(assert (=> b!870596 (= e!484790 tp_is_empty!17085)))

(assert (= (and start!74062 res!591846) b!870591))

(assert (= (and b!870591 res!591840) b!870585))

(assert (= (and b!870585 res!591845) b!870593))

(assert (= (and b!870593 res!591844) b!870595))

(assert (= (and b!870595 res!591841) b!870589))

(assert (= (and b!870589 res!591842) b!870586))

(assert (= (and b!870586 res!591843) b!870592))

(assert (= (and b!870592 res!591839) b!870588))

(assert (= (and b!870588 res!591838) b!870590))

(assert (= (and b!870594 condMapEmpty!27227) mapIsEmpty!27227))

(assert (= (and b!870594 (not condMapEmpty!27227)) mapNonEmpty!27227))

(get-info :version)

(assert (= (and mapNonEmpty!27227 ((_ is ValueCellFull!8103) mapValue!27227)) b!870587))

(assert (= (and b!870594 ((_ is ValueCellFull!8103) mapDefault!27227)) b!870596))

(assert (= start!74062 b!870594))

(declare-fun m!812011 () Bool)

(assert (=> b!870593 m!812011))

(declare-fun m!812013 () Bool)

(assert (=> b!870588 m!812013))

(declare-fun m!812015 () Bool)

(assert (=> b!870588 m!812015))

(declare-fun m!812017 () Bool)

(assert (=> b!870588 m!812017))

(declare-fun m!812019 () Bool)

(assert (=> b!870590 m!812019))

(declare-fun m!812021 () Bool)

(assert (=> b!870590 m!812021))

(assert (=> b!870590 m!812021))

(declare-fun m!812023 () Bool)

(assert (=> b!870590 m!812023))

(declare-fun m!812025 () Bool)

(assert (=> b!870590 m!812025))

(declare-fun m!812027 () Bool)

(assert (=> b!870595 m!812027))

(declare-fun m!812029 () Bool)

(assert (=> start!74062 m!812029))

(declare-fun m!812031 () Bool)

(assert (=> start!74062 m!812031))

(declare-fun m!812033 () Bool)

(assert (=> mapNonEmpty!27227 m!812033))

(declare-fun m!812035 () Bool)

(assert (=> b!870592 m!812035))

(declare-fun m!812037 () Bool)

(assert (=> b!870586 m!812037))

(declare-fun m!812039 () Bool)

(assert (=> b!870591 m!812039))

(check-sat (not b!870591) tp_is_empty!17085 (not b_next!14949) b_and!24719 (not b!870593) (not b!870586) (not b!870590) (not mapNonEmpty!27227) (not start!74062) (not b!870595) (not b!870588))
(check-sat b_and!24719 (not b_next!14949))
