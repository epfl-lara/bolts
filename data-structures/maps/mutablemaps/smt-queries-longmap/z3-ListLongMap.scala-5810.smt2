; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74962 () Bool)

(assert start!74962)

(declare-fun b_free!15453 () Bool)

(declare-fun b_next!15453 () Bool)

(assert (=> start!74962 (= b_free!15453 (not b_next!15453))))

(declare-fun tp!54063 () Bool)

(declare-fun b_and!25623 () Bool)

(assert (=> start!74962 (= tp!54063 b_and!25623)))

(declare-fun mapNonEmpty!28182 () Bool)

(declare-fun mapRes!28182 () Bool)

(declare-fun tp!54062 () Bool)

(declare-fun e!491820 () Bool)

(assert (=> mapNonEmpty!28182 (= mapRes!28182 (and tp!54062 e!491820))))

(declare-datatypes ((V!28643 0))(
  ( (V!28644 (val!8896 Int)) )
))
(declare-datatypes ((ValueCell!8409 0))(
  ( (ValueCellFull!8409 (v!11361 V!28643)) (EmptyCell!8409) )
))
(declare-fun mapRest!28182 () (Array (_ BitVec 32) ValueCell!8409))

(declare-datatypes ((array!51504 0))(
  ( (array!51505 (arr!24767 (Array (_ BitVec 32) ValueCell!8409)) (size!25208 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51504)

(declare-fun mapKey!28182 () (_ BitVec 32))

(declare-fun mapValue!28182 () ValueCell!8409)

(assert (=> mapNonEmpty!28182 (= (arr!24767 _values!688) (store mapRest!28182 mapKey!28182 mapValue!28182))))

(declare-fun res!600460 () Bool)

(declare-fun e!491817 () Bool)

(assert (=> start!74962 (=> (not res!600460) (not e!491817))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51506 0))(
  ( (array!51507 (arr!24768 (Array (_ BitVec 32) (_ BitVec 64))) (size!25209 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51506)

(assert (=> start!74962 (= res!600460 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25209 _keys!868))))))

(assert (=> start!74962 e!491817))

(declare-fun tp_is_empty!17697 () Bool)

(assert (=> start!74962 tp_is_empty!17697))

(assert (=> start!74962 true))

(assert (=> start!74962 tp!54063))

(declare-fun array_inv!19478 (array!51506) Bool)

(assert (=> start!74962 (array_inv!19478 _keys!868)))

(declare-fun e!491815 () Bool)

(declare-fun array_inv!19479 (array!51504) Bool)

(assert (=> start!74962 (and (array_inv!19479 _values!688) e!491815)))

(declare-fun b!883687 () Bool)

(declare-fun e!491822 () Bool)

(assert (=> b!883687 (= e!491817 e!491822)))

(declare-fun res!600464 () Bool)

(assert (=> b!883687 (=> (not res!600464) (not e!491822))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!883687 (= res!600464 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11822 0))(
  ( (tuple2!11823 (_1!5921 (_ BitVec 64)) (_2!5921 V!28643)) )
))
(declare-datatypes ((List!17686 0))(
  ( (Nil!17683) (Cons!17682 (h!18813 tuple2!11822) (t!24949 List!17686)) )
))
(declare-datatypes ((ListLongMap!10605 0))(
  ( (ListLongMap!10606 (toList!5318 List!17686)) )
))
(declare-fun lt!400070 () ListLongMap!10605)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!400068 () array!51504)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28643)

(declare-fun zeroValue!654 () V!28643)

(declare-fun getCurrentListMapNoExtraKeys!3273 (array!51506 array!51504 (_ BitVec 32) (_ BitVec 32) V!28643 V!28643 (_ BitVec 32) Int) ListLongMap!10605)

(assert (=> b!883687 (= lt!400070 (getCurrentListMapNoExtraKeys!3273 _keys!868 lt!400068 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28643)

(assert (=> b!883687 (= lt!400068 (array!51505 (store (arr!24767 _values!688) i!612 (ValueCellFull!8409 v!557)) (size!25208 _values!688)))))

(declare-fun lt!400069 () ListLongMap!10605)

(assert (=> b!883687 (= lt!400069 (getCurrentListMapNoExtraKeys!3273 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883688 () Bool)

(declare-fun e!491818 () Bool)

(assert (=> b!883688 (= e!491818 tp_is_empty!17697)))

(declare-fun b!883689 () Bool)

(assert (=> b!883689 (= e!491820 tp_is_empty!17697)))

(declare-fun b!883690 () Bool)

(declare-fun res!600465 () Bool)

(assert (=> b!883690 (=> (not res!600465) (not e!491817))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!883690 (= res!600465 (and (= (select (arr!24768 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!883691 () Bool)

(declare-fun res!600463 () Bool)

(assert (=> b!883691 (=> (not res!600463) (not e!491817))))

(declare-datatypes ((List!17687 0))(
  ( (Nil!17684) (Cons!17683 (h!18814 (_ BitVec 64)) (t!24950 List!17687)) )
))
(declare-fun arrayNoDuplicates!0 (array!51506 (_ BitVec 32) List!17687) Bool)

(assert (=> b!883691 (= res!600463 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17684))))

(declare-fun mapIsEmpty!28182 () Bool)

(assert (=> mapIsEmpty!28182 mapRes!28182))

(declare-fun b!883692 () Bool)

(declare-fun res!600459 () Bool)

(assert (=> b!883692 (=> (not res!600459) (not e!491817))))

(assert (=> b!883692 (= res!600459 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25209 _keys!868))))))

(declare-fun b!883693 () Bool)

(declare-fun e!491821 () Bool)

(assert (=> b!883693 (= e!491822 (not e!491821))))

(declare-fun res!600466 () Bool)

(assert (=> b!883693 (=> res!600466 e!491821)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883693 (= res!600466 (not (validKeyInArray!0 (select (arr!24768 _keys!868) from!1053))))))

(declare-fun lt!400077 () ListLongMap!10605)

(declare-fun lt!400071 () ListLongMap!10605)

(assert (=> b!883693 (= lt!400077 lt!400071)))

(declare-fun lt!400074 () ListLongMap!10605)

(declare-fun +!2522 (ListLongMap!10605 tuple2!11822) ListLongMap!10605)

(assert (=> b!883693 (= lt!400071 (+!2522 lt!400074 (tuple2!11823 k0!854 v!557)))))

(assert (=> b!883693 (= lt!400077 (getCurrentListMapNoExtraKeys!3273 _keys!868 lt!400068 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883693 (= lt!400074 (getCurrentListMapNoExtraKeys!3273 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30140 0))(
  ( (Unit!30141) )
))
(declare-fun lt!400073 () Unit!30140)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!744 (array!51506 array!51504 (_ BitVec 32) (_ BitVec 32) V!28643 V!28643 (_ BitVec 32) (_ BitVec 64) V!28643 (_ BitVec 32) Int) Unit!30140)

(assert (=> b!883693 (= lt!400073 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!744 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883694 () Bool)

(declare-fun res!600458 () Bool)

(assert (=> b!883694 (=> (not res!600458) (not e!491817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51506 (_ BitVec 32)) Bool)

(assert (=> b!883694 (= res!600458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!883695 () Bool)

(assert (=> b!883695 (= e!491821 (not (= k0!854 (select (arr!24768 _keys!868) from!1053))))))

(assert (=> b!883695 (not (= (select (arr!24768 _keys!868) from!1053) k0!854))))

(declare-fun lt!400075 () Unit!30140)

(declare-fun e!491816 () Unit!30140)

(assert (=> b!883695 (= lt!400075 e!491816)))

(declare-fun c!93003 () Bool)

(assert (=> b!883695 (= c!93003 (= (select (arr!24768 _keys!868) from!1053) k0!854))))

(declare-fun get!13065 (ValueCell!8409 V!28643) V!28643)

(declare-fun dynLambda!1276 (Int (_ BitVec 64)) V!28643)

(assert (=> b!883695 (= lt!400070 (+!2522 lt!400071 (tuple2!11823 (select (arr!24768 _keys!868) from!1053) (get!13065 (select (arr!24767 _values!688) from!1053) (dynLambda!1276 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!883696 () Bool)

(declare-fun res!600461 () Bool)

(assert (=> b!883696 (=> (not res!600461) (not e!491817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883696 (= res!600461 (validMask!0 mask!1196))))

(declare-fun b!883697 () Bool)

(declare-fun Unit!30142 () Unit!30140)

(assert (=> b!883697 (= e!491816 Unit!30142)))

(declare-fun b!883698 () Bool)

(declare-fun res!600462 () Bool)

(assert (=> b!883698 (=> (not res!600462) (not e!491817))))

(assert (=> b!883698 (= res!600462 (and (= (size!25208 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25209 _keys!868) (size!25208 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883699 () Bool)

(declare-fun Unit!30143 () Unit!30140)

(assert (=> b!883699 (= e!491816 Unit!30143)))

(declare-fun lt!400078 () Unit!30140)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51506 (_ BitVec 32) (_ BitVec 32)) Unit!30140)

(assert (=> b!883699 (= lt!400078 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!883699 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17684)))

(declare-fun lt!400072 () Unit!30140)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51506 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30140)

(assert (=> b!883699 (= lt!400072 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883699 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!400076 () Unit!30140)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51506 (_ BitVec 64) (_ BitVec 32) List!17687) Unit!30140)

(assert (=> b!883699 (= lt!400076 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17684))))

(assert (=> b!883699 false))

(declare-fun b!883700 () Bool)

(declare-fun res!600457 () Bool)

(assert (=> b!883700 (=> (not res!600457) (not e!491817))))

(assert (=> b!883700 (= res!600457 (validKeyInArray!0 k0!854))))

(declare-fun b!883701 () Bool)

(assert (=> b!883701 (= e!491815 (and e!491818 mapRes!28182))))

(declare-fun condMapEmpty!28182 () Bool)

(declare-fun mapDefault!28182 () ValueCell!8409)

(assert (=> b!883701 (= condMapEmpty!28182 (= (arr!24767 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8409)) mapDefault!28182)))))

(assert (= (and start!74962 res!600460) b!883696))

(assert (= (and b!883696 res!600461) b!883698))

(assert (= (and b!883698 res!600462) b!883694))

(assert (= (and b!883694 res!600458) b!883691))

(assert (= (and b!883691 res!600463) b!883692))

(assert (= (and b!883692 res!600459) b!883700))

(assert (= (and b!883700 res!600457) b!883690))

(assert (= (and b!883690 res!600465) b!883687))

(assert (= (and b!883687 res!600464) b!883693))

(assert (= (and b!883693 (not res!600466)) b!883695))

(assert (= (and b!883695 c!93003) b!883699))

(assert (= (and b!883695 (not c!93003)) b!883697))

(assert (= (and b!883701 condMapEmpty!28182) mapIsEmpty!28182))

(assert (= (and b!883701 (not condMapEmpty!28182)) mapNonEmpty!28182))

(get-info :version)

(assert (= (and mapNonEmpty!28182 ((_ is ValueCellFull!8409) mapValue!28182)) b!883689))

(assert (= (and b!883701 ((_ is ValueCellFull!8409) mapDefault!28182)) b!883688))

(assert (= start!74962 b!883701))

(declare-fun b_lambda!12761 () Bool)

(assert (=> (not b_lambda!12761) (not b!883695)))

(declare-fun t!24948 () Bool)

(declare-fun tb!5119 () Bool)

(assert (=> (and start!74962 (= defaultEntry!696 defaultEntry!696) t!24948) tb!5119))

(declare-fun result!9865 () Bool)

(assert (=> tb!5119 (= result!9865 tp_is_empty!17697)))

(assert (=> b!883695 t!24948))

(declare-fun b_and!25625 () Bool)

(assert (= b_and!25623 (and (=> t!24948 result!9865) b_and!25625)))

(declare-fun m!823897 () Bool)

(assert (=> b!883694 m!823897))

(declare-fun m!823899 () Bool)

(assert (=> mapNonEmpty!28182 m!823899))

(declare-fun m!823901 () Bool)

(assert (=> b!883700 m!823901))

(declare-fun m!823903 () Bool)

(assert (=> start!74962 m!823903))

(declare-fun m!823905 () Bool)

(assert (=> start!74962 m!823905))

(declare-fun m!823907 () Bool)

(assert (=> b!883687 m!823907))

(declare-fun m!823909 () Bool)

(assert (=> b!883687 m!823909))

(declare-fun m!823911 () Bool)

(assert (=> b!883687 m!823911))

(declare-fun m!823913 () Bool)

(assert (=> b!883690 m!823913))

(declare-fun m!823915 () Bool)

(assert (=> b!883699 m!823915))

(declare-fun m!823917 () Bool)

(assert (=> b!883699 m!823917))

(declare-fun m!823919 () Bool)

(assert (=> b!883699 m!823919))

(declare-fun m!823921 () Bool)

(assert (=> b!883699 m!823921))

(declare-fun m!823923 () Bool)

(assert (=> b!883699 m!823923))

(declare-fun m!823925 () Bool)

(assert (=> b!883693 m!823925))

(declare-fun m!823927 () Bool)

(assert (=> b!883693 m!823927))

(declare-fun m!823929 () Bool)

(assert (=> b!883693 m!823929))

(declare-fun m!823931 () Bool)

(assert (=> b!883693 m!823931))

(assert (=> b!883693 m!823929))

(declare-fun m!823933 () Bool)

(assert (=> b!883693 m!823933))

(declare-fun m!823935 () Bool)

(assert (=> b!883693 m!823935))

(declare-fun m!823937 () Bool)

(assert (=> b!883691 m!823937))

(declare-fun m!823939 () Bool)

(assert (=> b!883696 m!823939))

(declare-fun m!823941 () Bool)

(assert (=> b!883695 m!823941))

(assert (=> b!883695 m!823929))

(declare-fun m!823943 () Bool)

(assert (=> b!883695 m!823943))

(declare-fun m!823945 () Bool)

(assert (=> b!883695 m!823945))

(assert (=> b!883695 m!823941))

(assert (=> b!883695 m!823943))

(declare-fun m!823947 () Bool)

(assert (=> b!883695 m!823947))

(check-sat b_and!25625 (not b!883699) (not b!883700) (not start!74962) (not b_next!15453) (not b!883693) (not b!883695) (not b!883687) (not b!883696) (not b!883691) (not b!883694) tp_is_empty!17697 (not b_lambda!12761) (not mapNonEmpty!28182))
(check-sat b_and!25625 (not b_next!15453))
