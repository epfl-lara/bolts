; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98858 () Bool)

(assert start!98858)

(declare-fun b_free!24427 () Bool)

(declare-fun b_next!24427 () Bool)

(assert (=> start!98858 (= b_free!24427 (not b_next!24427))))

(declare-fun tp!85993 () Bool)

(declare-fun b_and!39717 () Bool)

(assert (=> start!98858 (= tp!85993 b_and!39717)))

(declare-fun b!1154590 () Bool)

(declare-fun res!767319 () Bool)

(declare-fun e!656690 () Bool)

(assert (=> b!1154590 (=> (not res!767319) (not e!656690))))

(declare-datatypes ((array!74710 0))(
  ( (array!74711 (arr!36002 (Array (_ BitVec 32) (_ BitVec 64))) (size!36539 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74710)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74710 (_ BitVec 32)) Bool)

(assert (=> b!1154590 (= res!767319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1154591 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!656675 () Bool)

(declare-fun arrayContainsKey!0 (array!74710 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1154591 (= e!656675 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1154592 () Bool)

(declare-fun res!767328 () Bool)

(assert (=> b!1154592 (=> (not res!767328) (not e!656690))))

(declare-datatypes ((List!25333 0))(
  ( (Nil!25330) (Cons!25329 (h!26538 (_ BitVec 64)) (t!36759 List!25333)) )
))
(declare-fun arrayNoDuplicates!0 (array!74710 (_ BitVec 32) List!25333) Bool)

(assert (=> b!1154592 (= res!767328 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25330))))

(declare-fun bm!54662 () Bool)

(declare-datatypes ((V!43737 0))(
  ( (V!43738 (val!14535 Int)) )
))
(declare-datatypes ((tuple2!18550 0))(
  ( (tuple2!18551 (_1!9285 (_ BitVec 64)) (_2!9285 V!43737)) )
))
(declare-datatypes ((List!25334 0))(
  ( (Nil!25331) (Cons!25330 (h!26539 tuple2!18550) (t!36760 List!25334)) )
))
(declare-datatypes ((ListLongMap!16531 0))(
  ( (ListLongMap!16532 (toList!8281 List!25334)) )
))
(declare-fun call!54667 () ListLongMap!16531)

(declare-fun call!54665 () ListLongMap!16531)

(assert (=> bm!54662 (= call!54667 call!54665)))

(declare-fun mapIsEmpty!45260 () Bool)

(declare-fun mapRes!45260 () Bool)

(assert (=> mapIsEmpty!45260 mapRes!45260))

(declare-fun b!1154593 () Bool)

(declare-fun e!656682 () Bool)

(declare-fun tp_is_empty!28957 () Bool)

(assert (=> b!1154593 (= e!656682 tp_is_empty!28957)))

(declare-fun bm!54663 () Bool)

(declare-datatypes ((Unit!37911 0))(
  ( (Unit!37912) )
))
(declare-fun call!54672 () Unit!37911)

(declare-fun call!54669 () Unit!37911)

(assert (=> bm!54663 (= call!54672 call!54669)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1154594 () Bool)

(declare-fun e!656685 () Bool)

(declare-fun lt!517785 () Bool)

(assert (=> b!1154594 (= e!656685 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!517785) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun call!54671 () ListLongMap!16531)

(declare-fun call!54668 () ListLongMap!16531)

(declare-fun e!656691 () Bool)

(declare-fun b!1154595 () Bool)

(declare-fun -!1359 (ListLongMap!16531 (_ BitVec 64)) ListLongMap!16531)

(assert (=> b!1154595 (= e!656691 (= call!54671 (-!1359 call!54668 k!934)))))

(declare-fun bm!54664 () Bool)

(declare-fun lt!517773 () ListLongMap!16531)

(declare-fun call!54670 () Bool)

(declare-fun c!114653 () Bool)

(declare-fun contains!6769 (ListLongMap!16531 (_ BitVec 64)) Bool)

(assert (=> bm!54664 (= call!54670 (contains!6769 (ite c!114653 lt!517773 call!54667) k!934))))

(declare-fun b!1154596 () Bool)

(declare-fun res!767320 () Bool)

(assert (=> b!1154596 (=> (not res!767320) (not e!656690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1154596 (= res!767320 (validKeyInArray!0 k!934))))

(declare-fun b!1154597 () Bool)

(declare-fun e!656687 () Unit!37911)

(declare-fun lt!517777 () Unit!37911)

(assert (=> b!1154597 (= e!656687 lt!517777)))

(assert (=> b!1154597 (= lt!517777 call!54672)))

(declare-fun call!54666 () Bool)

(assert (=> b!1154597 call!54666))

(declare-fun b!1154598 () Bool)

(declare-fun res!767324 () Bool)

(assert (=> b!1154598 (=> (not res!767324) (not e!656690))))

(declare-datatypes ((ValueCell!13769 0))(
  ( (ValueCellFull!13769 (v!17173 V!43737)) (EmptyCell!13769) )
))
(declare-datatypes ((array!74712 0))(
  ( (array!74713 (arr!36003 (Array (_ BitVec 32) ValueCell!13769)) (size!36540 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74712)

(assert (=> b!1154598 (= res!767324 (and (= (size!36540 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36539 _keys!1208) (size!36540 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!54665 () Bool)

(assert (=> bm!54665 (= call!54666 call!54670)))

(declare-fun b!1154599 () Bool)

(declare-fun res!767333 () Bool)

(declare-fun e!656681 () Bool)

(assert (=> b!1154599 (=> (not res!767333) (not e!656681))))

(declare-fun lt!517781 () array!74710)

(assert (=> b!1154599 (= res!767333 (arrayNoDuplicates!0 lt!517781 #b00000000000000000000000000000000 Nil!25330))))

(declare-fun b!1154600 () Bool)

(declare-fun e!656677 () Bool)

(declare-fun e!656683 () Bool)

(assert (=> b!1154600 (= e!656677 (and e!656683 mapRes!45260))))

(declare-fun condMapEmpty!45260 () Bool)

(declare-fun mapDefault!45260 () ValueCell!13769)

