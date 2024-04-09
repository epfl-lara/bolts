; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132186 () Bool)

(assert start!132186)

(declare-fun b_free!31867 () Bool)

(declare-fun b_next!31867 () Bool)

(assert (=> start!132186 (= b_free!31867 (not b_next!31867))))

(declare-fun tp!111853 () Bool)

(declare-fun b_and!51299 () Bool)

(assert (=> start!132186 (= tp!111853 b_and!51299)))

(declare-fun b!1550260 () Bool)

(declare-fun res!1061979 () Bool)

(declare-fun e!862983 () Bool)

(assert (=> b!1550260 (=> (not res!1061979) (not e!862983))))

(declare-datatypes ((array!103443 0))(
  ( (array!103444 (arr!49919 (Array (_ BitVec 32) (_ BitVec 64))) (size!50470 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103443)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1550260 (= res!1061979 (validKeyInArray!0 (select (arr!49919 _keys!618) from!762)))))

(declare-fun b!1550261 () Bool)

(declare-datatypes ((V!59301 0))(
  ( (V!59302 (val!19149 Int)) )
))
(declare-datatypes ((tuple2!24818 0))(
  ( (tuple2!24819 (_1!12419 (_ BitVec 64)) (_2!12419 V!59301)) )
))
(declare-datatypes ((List!36309 0))(
  ( (Nil!36306) (Cons!36305 (h!37751 tuple2!24818) (t!51022 List!36309)) )
))
(declare-datatypes ((ListLongMap!22439 0))(
  ( (ListLongMap!22440 (toList!11235 List!36309)) )
))
(declare-fun e!862980 () ListLongMap!22439)

(declare-fun call!70736 () ListLongMap!22439)

(declare-fun minValue!436 () V!59301)

(declare-fun +!4945 (ListLongMap!22439 tuple2!24818) ListLongMap!22439)

(assert (=> b!1550261 (= e!862980 (+!4945 call!70736 (tuple2!24819 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun mapNonEmpty!58918 () Bool)

(declare-fun mapRes!58918 () Bool)

(declare-fun tp!111854 () Bool)

(declare-fun e!862981 () Bool)

(assert (=> mapNonEmpty!58918 (= mapRes!58918 (and tp!111854 e!862981))))

(declare-datatypes ((ValueCell!18161 0))(
  ( (ValueCellFull!18161 (v!21947 V!59301)) (EmptyCell!18161) )
))
(declare-fun mapRest!58918 () (Array (_ BitVec 32) ValueCell!18161))

(declare-datatypes ((array!103445 0))(
  ( (array!103446 (arr!49920 (Array (_ BitVec 32) ValueCell!18161)) (size!50471 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103445)

(declare-fun mapValue!58918 () ValueCell!18161)

(declare-fun mapKey!58918 () (_ BitVec 32))

(assert (=> mapNonEmpty!58918 (= (arr!49920 _values!470) (store mapRest!58918 mapKey!58918 mapValue!58918))))

(declare-fun b!1550262 () Bool)

(declare-fun res!1061978 () Bool)

(declare-fun e!862984 () Bool)

(assert (=> b!1550262 (=> (not res!1061978) (not e!862984))))

(assert (=> b!1550262 (= res!1061978 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50470 _keys!618))))))

(declare-fun b!1550263 () Bool)

(declare-fun c!142502 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!668192 () Bool)

(assert (=> b!1550263 (= c!142502 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!668192))))

(declare-fun e!862982 () ListLongMap!22439)

(declare-fun e!862986 () ListLongMap!22439)

(assert (=> b!1550263 (= e!862982 e!862986)))

(declare-fun bm!70733 () Bool)

(declare-fun call!70737 () ListLongMap!22439)

(declare-fun call!70739 () ListLongMap!22439)

(assert (=> bm!70733 (= call!70737 call!70739)))

(declare-fun b!1550264 () Bool)

(declare-fun e!862979 () Bool)

(declare-fun e!862985 () Bool)

(assert (=> b!1550264 (= e!862979 (and e!862985 mapRes!58918))))

(declare-fun condMapEmpty!58918 () Bool)

(declare-fun mapDefault!58918 () ValueCell!18161)

