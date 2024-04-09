; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98876 () Bool)

(assert start!98876)

(declare-fun b_free!24445 () Bool)

(declare-fun b_next!24445 () Bool)

(assert (=> start!98876 (= b_free!24445 (not b_next!24445))))

(declare-fun tp!86046 () Bool)

(declare-fun b_and!39753 () Bool)

(assert (=> start!98876 (= tp!86046 b_and!39753)))

(declare-datatypes ((V!43761 0))(
  ( (V!43762 (val!14544 Int)) )
))
(declare-fun zeroValue!944 () V!43761)

(declare-fun e!657150 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1155418 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!18566 0))(
  ( (tuple2!18567 (_1!9293 (_ BitVec 64)) (_2!9293 V!43761)) )
))
(declare-datatypes ((List!25350 0))(
  ( (Nil!25347) (Cons!25346 (h!26555 tuple2!18566) (t!36794 List!25350)) )
))
(declare-datatypes ((ListLongMap!16547 0))(
  ( (ListLongMap!16548 (toList!8289 List!25350)) )
))
(declare-fun lt!518369 () ListLongMap!16547)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13778 0))(
  ( (ValueCellFull!13778 (v!17182 V!43761)) (EmptyCell!13778) )
))
(declare-datatypes ((array!74746 0))(
  ( (array!74747 (arr!36020 (Array (_ BitVec 32) ValueCell!13778)) (size!36557 (_ BitVec 32))) )
))
(declare-fun lt!518372 () array!74746)

(declare-fun minValue!944 () V!43761)

(declare-datatypes ((array!74748 0))(
  ( (array!74749 (arr!36021 (Array (_ BitVec 32) (_ BitVec 64))) (size!36558 (_ BitVec 32))) )
))
(declare-fun lt!518384 () array!74748)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4728 (array!74748 array!74746 (_ BitVec 32) (_ BitVec 32) V!43761 V!43761 (_ BitVec 32) Int) ListLongMap!16547)

(assert (=> b!1155418 (= e!657150 (= lt!518369 (getCurrentListMapNoExtraKeys!4728 lt!518384 lt!518372 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1155419 () Bool)

(declare-fun e!657146 () Bool)

(declare-fun e!657147 () Bool)

(assert (=> b!1155419 (= e!657146 e!657147)))

(declare-fun res!767735 () Bool)

(assert (=> b!1155419 (=> (not res!767735) (not e!657147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74748 (_ BitVec 32)) Bool)

(assert (=> b!1155419 (= res!767735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!518384 mask!1564))))

(declare-fun _keys!1208 () array!74748)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1155419 (= lt!518384 (array!74749 (store (arr!36021 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36558 _keys!1208)))))

(declare-fun b!1155420 () Bool)

(declare-fun e!657136 () Bool)

(declare-fun tp_is_empty!28975 () Bool)

(assert (=> b!1155420 (= e!657136 tp_is_empty!28975)))

(declare-fun lt!518371 () ListLongMap!16547)

(declare-fun call!54886 () ListLongMap!16547)

(declare-fun bm!54878 () Bool)

(declare-fun c!114813 () Bool)

(declare-fun c!114815 () Bool)

(declare-fun +!3620 (ListLongMap!16547 tuple2!18566) ListLongMap!16547)

(assert (=> bm!54878 (= call!54886 (+!3620 lt!518371 (ite (or c!114815 c!114813) (tuple2!18567 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18567 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun mapIsEmpty!45287 () Bool)

(declare-fun mapRes!45287 () Bool)

(assert (=> mapIsEmpty!45287 mapRes!45287))

(declare-fun b!1155421 () Bool)

(declare-datatypes ((Unit!37947 0))(
  ( (Unit!37948) )
))
(declare-fun e!657142 () Unit!37947)

(declare-fun lt!518380 () Unit!37947)

(assert (=> b!1155421 (= e!657142 lt!518380)))

(declare-fun call!54885 () Unit!37947)

(assert (=> b!1155421 (= lt!518380 call!54885)))

(declare-fun call!54882 () Bool)

(assert (=> b!1155421 call!54882))

(declare-fun bm!54879 () Bool)

(declare-fun lt!518383 () ListLongMap!16547)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!54887 () Unit!37947)

(declare-fun addStillContains!917 (ListLongMap!16547 (_ BitVec 64) V!43761 (_ BitVec 64)) Unit!37947)

(assert (=> bm!54879 (= call!54887 (addStillContains!917 (ite c!114815 lt!518383 lt!518371) (ite c!114815 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114813 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114815 minValue!944 (ite c!114813 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1155422 () Bool)

(declare-fun e!657144 () Bool)

(declare-fun e!657139 () Bool)

(assert (=> b!1155422 (= e!657144 (and e!657139 mapRes!45287))))

(declare-fun condMapEmpty!45287 () Bool)

(declare-fun _values!996 () array!74746)

(declare-fun mapDefault!45287 () ValueCell!13778)

