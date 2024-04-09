; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74970 () Bool)

(assert start!74970)

(declare-fun b_free!15461 () Bool)

(declare-fun b_next!15461 () Bool)

(assert (=> start!74970 (= b_free!15461 (not b_next!15461))))

(declare-fun tp!54087 () Bool)

(declare-fun b_and!25639 () Bool)

(assert (=> start!74970 (= tp!54087 b_and!25639)))

(declare-fun b!883883 () Bool)

(declare-fun res!600585 () Bool)

(declare-fun e!491923 () Bool)

(assert (=> b!883883 (=> (not res!600585) (not e!491923))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51520 0))(
  ( (array!51521 (arr!24775 (Array (_ BitVec 32) (_ BitVec 64))) (size!25216 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51520)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883883 (= res!600585 (and (= (select (arr!24775 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!883884 () Bool)

(declare-fun e!491920 () Bool)

(assert (=> b!883884 (= e!491923 e!491920)))

(declare-fun res!600586 () Bool)

(assert (=> b!883884 (=> (not res!600586) (not e!491920))))

(assert (=> b!883884 (= res!600586 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28653 0))(
  ( (V!28654 (val!8900 Int)) )
))
(declare-datatypes ((ValueCell!8413 0))(
  ( (ValueCellFull!8413 (v!11365 V!28653)) (EmptyCell!8413) )
))
(declare-datatypes ((array!51522 0))(
  ( (array!51523 (arr!24776 (Array (_ BitVec 32) ValueCell!8413)) (size!25217 (_ BitVec 32))) )
))
(declare-fun lt!400252 () array!51522)

(declare-fun minValue!654 () V!28653)

(declare-fun zeroValue!654 () V!28653)

(declare-datatypes ((tuple2!11828 0))(
  ( (tuple2!11829 (_1!5924 (_ BitVec 64)) (_2!5924 V!28653)) )
))
(declare-datatypes ((List!17693 0))(
  ( (Nil!17690) (Cons!17689 (h!18820 tuple2!11828) (t!24964 List!17693)) )
))
(declare-datatypes ((ListLongMap!10611 0))(
  ( (ListLongMap!10612 (toList!5321 List!17693)) )
))
(declare-fun lt!400245 () ListLongMap!10611)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3276 (array!51520 array!51522 (_ BitVec 32) (_ BitVec 32) V!28653 V!28653 (_ BitVec 32) Int) ListLongMap!10611)

(assert (=> b!883884 (= lt!400245 (getCurrentListMapNoExtraKeys!3276 _keys!868 lt!400252 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28653)

(declare-fun _values!688 () array!51522)

(assert (=> b!883884 (= lt!400252 (array!51523 (store (arr!24776 _values!688) i!612 (ValueCellFull!8413 v!557)) (size!25217 _values!688)))))

(declare-fun lt!400249 () ListLongMap!10611)

(assert (=> b!883884 (= lt!400249 (getCurrentListMapNoExtraKeys!3276 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883885 () Bool)

(declare-fun e!491919 () Bool)

(assert (=> b!883885 (= e!491919 (bvslt i!612 (size!25217 _values!688)))))

(declare-fun lt!400254 () tuple2!11828)

(declare-fun lt!400246 () ListLongMap!10611)

(declare-fun lt!400251 () tuple2!11828)

(declare-fun lt!400250 () ListLongMap!10611)

(declare-fun +!2524 (ListLongMap!10611 tuple2!11828) ListLongMap!10611)

(assert (=> b!883885 (= lt!400250 (+!2524 (+!2524 lt!400246 lt!400254) lt!400251))))

(declare-datatypes ((Unit!30151 0))(
  ( (Unit!30152) )
))
(declare-fun lt!400241 () Unit!30151)

(declare-fun lt!400253 () V!28653)

(declare-fun addCommutativeForDiffKeys!546 (ListLongMap!10611 (_ BitVec 64) V!28653 (_ BitVec 64) V!28653) Unit!30151)

(assert (=> b!883885 (= lt!400241 (addCommutativeForDiffKeys!546 lt!400246 k!854 v!557 (select (arr!24775 _keys!868) from!1053) lt!400253))))

(declare-fun b!883886 () Bool)

(declare-fun e!491925 () Bool)

(declare-fun tp_is_empty!17705 () Bool)

(assert (=> b!883886 (= e!491925 tp_is_empty!17705)))

(declare-fun b!883887 () Bool)

(declare-fun res!600595 () Bool)

(assert (=> b!883887 (=> (not res!600595) (not e!491923))))

(assert (=> b!883887 (= res!600595 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25216 _keys!868))))))

(declare-fun b!883888 () Bool)

(declare-fun e!491922 () Bool)

(assert (=> b!883888 (= e!491922 e!491919)))

(declare-fun res!600587 () Bool)

(assert (=> b!883888 (=> res!600587 e!491919)))

(assert (=> b!883888 (= res!600587 (= k!854 (select (arr!24775 _keys!868) from!1053)))))

(assert (=> b!883888 (not (= (select (arr!24775 _keys!868) from!1053) k!854))))

(declare-fun lt!400243 () Unit!30151)

(declare-fun e!491926 () Unit!30151)

(assert (=> b!883888 (= lt!400243 e!491926)))

(declare-fun c!93015 () Bool)

(assert (=> b!883888 (= c!93015 (= (select (arr!24775 _keys!868) from!1053) k!854))))

(assert (=> b!883888 (= lt!400245 lt!400250)))

(declare-fun lt!400244 () ListLongMap!10611)

(assert (=> b!883888 (= lt!400250 (+!2524 lt!400244 lt!400254))))

(assert (=> b!883888 (= lt!400254 (tuple2!11829 (select (arr!24775 _keys!868) from!1053) lt!400253))))

(declare-fun get!13069 (ValueCell!8413 V!28653) V!28653)

(declare-fun dynLambda!1278 (Int (_ BitVec 64)) V!28653)

(assert (=> b!883888 (= lt!400253 (get!13069 (select (arr!24776 _values!688) from!1053) (dynLambda!1278 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!883889 () Bool)

(declare-fun Unit!30153 () Unit!30151)

(assert (=> b!883889 (= e!491926 Unit!30153)))

(declare-fun lt!400247 () Unit!30151)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51520 (_ BitVec 32) (_ BitVec 32)) Unit!30151)

(assert (=> b!883889 (= lt!400247 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17694 0))(
  ( (Nil!17691) (Cons!17690 (h!18821 (_ BitVec 64)) (t!24965 List!17694)) )
))
(declare-fun arrayNoDuplicates!0 (array!51520 (_ BitVec 32) List!17694) Bool)

(assert (=> b!883889 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17691)))

(declare-fun lt!400242 () Unit!30151)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30151)

(assert (=> b!883889 (= lt!400242 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883889 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!400240 () Unit!30151)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51520 (_ BitVec 64) (_ BitVec 32) List!17694) Unit!30151)

(assert (=> b!883889 (= lt!400240 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17691))))

(assert (=> b!883889 false))

(declare-fun b!883890 () Bool)

(declare-fun res!600593 () Bool)

(assert (=> b!883890 (=> (not res!600593) (not e!491923))))

(assert (=> b!883890 (= res!600593 (and (= (size!25217 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25216 _keys!868) (size!25217 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883891 () Bool)

(declare-fun res!600589 () Bool)

(assert (=> b!883891 (=> (not res!600589) (not e!491923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51520 (_ BitVec 32)) Bool)

(assert (=> b!883891 (= res!600589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!28194 () Bool)

(declare-fun mapRes!28194 () Bool)

(assert (=> mapIsEmpty!28194 mapRes!28194))

(declare-fun res!600591 () Bool)

(assert (=> start!74970 (=> (not res!600591) (not e!491923))))

(assert (=> start!74970 (= res!600591 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25216 _keys!868))))))

(assert (=> start!74970 e!491923))

(assert (=> start!74970 tp_is_empty!17705))

(assert (=> start!74970 true))

(assert (=> start!74970 tp!54087))

(declare-fun array_inv!19484 (array!51520) Bool)

(assert (=> start!74970 (array_inv!19484 _keys!868)))

(declare-fun e!491924 () Bool)

(declare-fun array_inv!19485 (array!51522) Bool)

(assert (=> start!74970 (and (array_inv!19485 _values!688) e!491924)))

(declare-fun b!883892 () Bool)

(declare-fun e!491921 () Bool)

(assert (=> b!883892 (= e!491921 tp_is_empty!17705)))

(declare-fun b!883893 () Bool)

(assert (=> b!883893 (= e!491920 (not e!491922))))

(declare-fun res!600592 () Bool)

(assert (=> b!883893 (=> res!600592 e!491922)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883893 (= res!600592 (not (validKeyInArray!0 (select (arr!24775 _keys!868) from!1053))))))

(declare-fun lt!400255 () ListLongMap!10611)

(assert (=> b!883893 (= lt!400255 lt!400244)))

(assert (=> b!883893 (= lt!400244 (+!2524 lt!400246 lt!400251))))

(assert (=> b!883893 (= lt!400255 (getCurrentListMapNoExtraKeys!3276 _keys!868 lt!400252 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883893 (= lt!400251 (tuple2!11829 k!854 v!557))))

(assert (=> b!883893 (= lt!400246 (getCurrentListMapNoExtraKeys!3276 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!400248 () Unit!30151)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!746 (array!51520 array!51522 (_ BitVec 32) (_ BitVec 32) V!28653 V!28653 (_ BitVec 32) (_ BitVec 64) V!28653 (_ BitVec 32) Int) Unit!30151)

(assert (=> b!883893 (= lt!400248 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!746 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883894 () Bool)

(declare-fun res!600594 () Bool)

(assert (=> b!883894 (=> (not res!600594) (not e!491923))))

(assert (=> b!883894 (= res!600594 (validKeyInArray!0 k!854))))

(declare-fun b!883895 () Bool)

(assert (=> b!883895 (= e!491924 (and e!491925 mapRes!28194))))

(declare-fun condMapEmpty!28194 () Bool)

(declare-fun mapDefault!28194 () ValueCell!8413)

