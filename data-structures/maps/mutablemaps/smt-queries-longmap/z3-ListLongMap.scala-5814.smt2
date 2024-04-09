; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75016 () Bool)

(assert start!75016)

(declare-fun b_free!15477 () Bool)

(declare-fun b_next!15477 () Bool)

(assert (=> start!75016 (= b_free!15477 (not b_next!15477))))

(declare-fun tp!54138 () Bool)

(declare-fun b_and!25685 () Bool)

(assert (=> start!75016 (= tp!54138 b_and!25685)))

(declare-fun b!884414 () Bool)

(declare-fun e!492226 () Bool)

(declare-fun e!492221 () Bool)

(assert (=> b!884414 (= e!492226 e!492221)))

(declare-fun res!600918 () Bool)

(assert (=> b!884414 (=> (not res!600918) (not e!492221))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!884414 (= res!600918 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!28675 0))(
  ( (V!28676 (val!8908 Int)) )
))
(declare-datatypes ((tuple2!11840 0))(
  ( (tuple2!11841 (_1!5930 (_ BitVec 64)) (_2!5930 V!28675)) )
))
(declare-datatypes ((List!17704 0))(
  ( (Nil!17701) (Cons!17700 (h!18831 tuple2!11840) (t!24987 List!17704)) )
))
(declare-datatypes ((ListLongMap!10623 0))(
  ( (ListLongMap!10624 (toList!5327 List!17704)) )
))
(declare-fun lt!400658 () ListLongMap!10623)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8421 0))(
  ( (ValueCellFull!8421 (v!11377 V!28675)) (EmptyCell!8421) )
))
(declare-datatypes ((array!51552 0))(
  ( (array!51553 (arr!24790 (Array (_ BitVec 32) ValueCell!8421)) (size!25231 (_ BitVec 32))) )
))
(declare-fun lt!400659 () array!51552)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51554 0))(
  ( (array!51555 (arr!24791 (Array (_ BitVec 32) (_ BitVec 64))) (size!25232 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51554)

(declare-fun minValue!654 () V!28675)

(declare-fun zeroValue!654 () V!28675)

(declare-fun getCurrentListMapNoExtraKeys!3281 (array!51554 array!51552 (_ BitVec 32) (_ BitVec 32) V!28675 V!28675 (_ BitVec 32) Int) ListLongMap!10623)

(assert (=> b!884414 (= lt!400658 (getCurrentListMapNoExtraKeys!3281 _keys!868 lt!400659 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28675)

(declare-fun _values!688 () array!51552)

(assert (=> b!884414 (= lt!400659 (array!51553 (store (arr!24790 _values!688) i!612 (ValueCellFull!8421 v!557)) (size!25231 _values!688)))))

(declare-fun lt!400660 () ListLongMap!10623)

(assert (=> b!884414 (= lt!400660 (getCurrentListMapNoExtraKeys!3281 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!884415 () Bool)

(declare-fun res!600917 () Bool)

(assert (=> b!884415 (=> (not res!600917) (not e!492226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884415 (= res!600917 (validMask!0 mask!1196))))

(declare-fun b!884416 () Bool)

(declare-fun res!600914 () Bool)

(assert (=> b!884416 (=> (not res!600914) (not e!492226))))

(assert (=> b!884416 (= res!600914 (and (= (size!25231 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25232 _keys!868) (size!25231 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!884417 () Bool)

(declare-fun res!600911 () Bool)

(assert (=> b!884417 (=> (not res!600911) (not e!492226))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884417 (= res!600911 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!28221 () Bool)

(declare-fun mapRes!28221 () Bool)

(assert (=> mapIsEmpty!28221 mapRes!28221))

(declare-fun b!884418 () Bool)

(declare-fun e!492225 () Bool)

(declare-fun tp_is_empty!17721 () Bool)

(assert (=> b!884418 (= e!492225 tp_is_empty!17721)))

(declare-fun b!884419 () Bool)

(declare-fun res!600916 () Bool)

(assert (=> b!884419 (=> (not res!600916) (not e!492226))))

(assert (=> b!884419 (= res!600916 (and (= (select (arr!24791 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!884420 () Bool)

(declare-fun e!492223 () Bool)

(assert (=> b!884420 (= e!492223 tp_is_empty!17721)))

(declare-fun b!884413 () Bool)

(declare-fun e!492224 () Bool)

(assert (=> b!884413 (= e!492221 (not e!492224))))

(declare-fun res!600915 () Bool)

(assert (=> b!884413 (=> res!600915 e!492224)))

(assert (=> b!884413 (= res!600915 (validKeyInArray!0 (select (arr!24791 _keys!868) from!1053)))))

(declare-fun +!2530 (ListLongMap!10623 tuple2!11840) ListLongMap!10623)

(assert (=> b!884413 (= (getCurrentListMapNoExtraKeys!3281 _keys!868 lt!400659 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2530 (getCurrentListMapNoExtraKeys!3281 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11841 k0!854 v!557)))))

(declare-datatypes ((Unit!30169 0))(
  ( (Unit!30170) )
))
(declare-fun lt!400661 () Unit!30169)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!751 (array!51554 array!51552 (_ BitVec 32) (_ BitVec 32) V!28675 V!28675 (_ BitVec 32) (_ BitVec 64) V!28675 (_ BitVec 32) Int) Unit!30169)

(assert (=> b!884413 (= lt!400661 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!751 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!600909 () Bool)

(assert (=> start!75016 (=> (not res!600909) (not e!492226))))

(assert (=> start!75016 (= res!600909 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25232 _keys!868))))))

(assert (=> start!75016 e!492226))

(assert (=> start!75016 tp_is_empty!17721))

(assert (=> start!75016 true))

(assert (=> start!75016 tp!54138))

(declare-fun array_inv!19492 (array!51554) Bool)

(assert (=> start!75016 (array_inv!19492 _keys!868)))

(declare-fun e!492220 () Bool)

(declare-fun array_inv!19493 (array!51552) Bool)

(assert (=> start!75016 (and (array_inv!19493 _values!688) e!492220)))

(declare-fun b!884421 () Bool)

(assert (=> b!884421 (= e!492224 (bvslt i!612 (size!25231 _values!688)))))

(declare-fun b!884422 () Bool)

(declare-fun res!600913 () Bool)

(assert (=> b!884422 (=> (not res!600913) (not e!492226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51554 (_ BitVec 32)) Bool)

(assert (=> b!884422 (= res!600913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!28221 () Bool)

(declare-fun tp!54137 () Bool)

(assert (=> mapNonEmpty!28221 (= mapRes!28221 (and tp!54137 e!492225))))

(declare-fun mapKey!28221 () (_ BitVec 32))

(declare-fun mapValue!28221 () ValueCell!8421)

(declare-fun mapRest!28221 () (Array (_ BitVec 32) ValueCell!8421))

(assert (=> mapNonEmpty!28221 (= (arr!24790 _values!688) (store mapRest!28221 mapKey!28221 mapValue!28221))))

(declare-fun b!884423 () Bool)

(declare-fun res!600910 () Bool)

(assert (=> b!884423 (=> (not res!600910) (not e!492226))))

(assert (=> b!884423 (= res!600910 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25232 _keys!868))))))

(declare-fun b!884424 () Bool)

(declare-fun res!600912 () Bool)

(assert (=> b!884424 (=> (not res!600912) (not e!492226))))

(declare-datatypes ((List!17705 0))(
  ( (Nil!17702) (Cons!17701 (h!18832 (_ BitVec 64)) (t!24988 List!17705)) )
))
(declare-fun arrayNoDuplicates!0 (array!51554 (_ BitVec 32) List!17705) Bool)

(assert (=> b!884424 (= res!600912 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17702))))

(declare-fun b!884425 () Bool)

(assert (=> b!884425 (= e!492220 (and e!492223 mapRes!28221))))

(declare-fun condMapEmpty!28221 () Bool)

(declare-fun mapDefault!28221 () ValueCell!8421)

(assert (=> b!884425 (= condMapEmpty!28221 (= (arr!24790 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8421)) mapDefault!28221)))))

(assert (= (and start!75016 res!600909) b!884415))

(assert (= (and b!884415 res!600917) b!884416))

(assert (= (and b!884416 res!600914) b!884422))

(assert (= (and b!884422 res!600913) b!884424))

(assert (= (and b!884424 res!600912) b!884423))

(assert (= (and b!884423 res!600910) b!884417))

(assert (= (and b!884417 res!600911) b!884419))

(assert (= (and b!884419 res!600916) b!884414))

(assert (= (and b!884414 res!600918) b!884413))

(assert (= (and b!884413 (not res!600915)) b!884421))

(assert (= (and b!884425 condMapEmpty!28221) mapIsEmpty!28221))

(assert (= (and b!884425 (not condMapEmpty!28221)) mapNonEmpty!28221))

(get-info :version)

(assert (= (and mapNonEmpty!28221 ((_ is ValueCellFull!8421) mapValue!28221)) b!884418))

(assert (= (and b!884425 ((_ is ValueCellFull!8421) mapDefault!28221)) b!884420))

(assert (= start!75016 b!884425))

(declare-fun m!824769 () Bool)

(assert (=> b!884422 m!824769))

(declare-fun m!824771 () Bool)

(assert (=> b!884419 m!824771))

(declare-fun m!824773 () Bool)

(assert (=> start!75016 m!824773))

(declare-fun m!824775 () Bool)

(assert (=> start!75016 m!824775))

(declare-fun m!824777 () Bool)

(assert (=> b!884413 m!824777))

(declare-fun m!824779 () Bool)

(assert (=> b!884413 m!824779))

(assert (=> b!884413 m!824777))

(declare-fun m!824781 () Bool)

(assert (=> b!884413 m!824781))

(declare-fun m!824783 () Bool)

(assert (=> b!884413 m!824783))

(assert (=> b!884413 m!824781))

(declare-fun m!824785 () Bool)

(assert (=> b!884413 m!824785))

(declare-fun m!824787 () Bool)

(assert (=> b!884413 m!824787))

(declare-fun m!824789 () Bool)

(assert (=> b!884424 m!824789))

(declare-fun m!824791 () Bool)

(assert (=> b!884417 m!824791))

(declare-fun m!824793 () Bool)

(assert (=> b!884414 m!824793))

(declare-fun m!824795 () Bool)

(assert (=> b!884414 m!824795))

(declare-fun m!824797 () Bool)

(assert (=> b!884414 m!824797))

(declare-fun m!824799 () Bool)

(assert (=> mapNonEmpty!28221 m!824799))

(declare-fun m!824801 () Bool)

(assert (=> b!884415 m!824801))

(check-sat (not b!884413) (not mapNonEmpty!28221) b_and!25685 tp_is_empty!17721 (not b!884415) (not start!75016) (not b!884424) (not b!884417) (not b_next!15477) (not b!884422) (not b!884414))
(check-sat b_and!25685 (not b_next!15477))
