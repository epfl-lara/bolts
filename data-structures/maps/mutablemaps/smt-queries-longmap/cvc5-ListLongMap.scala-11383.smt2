; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132320 () Bool)

(assert start!132320)

(declare-fun b_free!31915 () Bool)

(declare-fun b_next!31915 () Bool)

(assert (=> start!132320 (= b_free!31915 (not b_next!31915))))

(declare-fun tp!112009 () Bool)

(declare-fun b_and!51363 () Bool)

(assert (=> start!132320 (= tp!112009 b_and!51363)))

(declare-fun b!1551841 () Bool)

(declare-fun res!1062667 () Bool)

(declare-fun e!863922 () Bool)

(assert (=> b!1551841 (=> (not res!1062667) (not e!863922))))

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((array!103541 0))(
  ( (array!103542 (arr!49964 (Array (_ BitVec 32) (_ BitVec 64))) (size!50515 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103541)

(assert (=> b!1551841 (= res!1062667 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50515 _keys!618))))))

(declare-fun b!1551842 () Bool)

(declare-fun e!863919 () Bool)

(declare-fun tp_is_empty!38191 () Bool)

(assert (=> b!1551842 (= e!863919 tp_is_empty!38191)))

(declare-fun res!1062668 () Bool)

(assert (=> start!132320 (=> (not res!1062668) (not e!863922))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132320 (= res!1062668 (validMask!0 mask!926))))

(assert (=> start!132320 e!863922))

(declare-fun array_inv!38763 (array!103541) Bool)

(assert (=> start!132320 (array_inv!38763 _keys!618)))

(assert (=> start!132320 tp_is_empty!38191))

(assert (=> start!132320 true))

(assert (=> start!132320 tp!112009))

(declare-datatypes ((V!59365 0))(
  ( (V!59366 (val!19173 Int)) )
))
(declare-datatypes ((ValueCell!18185 0))(
  ( (ValueCellFull!18185 (v!21975 V!59365)) (EmptyCell!18185) )
))
(declare-datatypes ((array!103543 0))(
  ( (array!103544 (arr!49965 (Array (_ BitVec 32) ValueCell!18185)) (size!50516 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103543)

(declare-fun e!863921 () Bool)

(declare-fun array_inv!38764 (array!103543) Bool)

(assert (=> start!132320 (and (array_inv!38764 _values!470) e!863921)))

(declare-fun bm!71129 () Bool)

(declare-datatypes ((tuple2!24862 0))(
  ( (tuple2!24863 (_1!12441 (_ BitVec 64)) (_2!12441 V!59365)) )
))
(declare-datatypes ((List!36343 0))(
  ( (Nil!36340) (Cons!36339 (h!37785 tuple2!24862) (t!51064 List!36343)) )
))
(declare-datatypes ((ListLongMap!22483 0))(
  ( (ListLongMap!22484 (toList!11257 List!36343)) )
))
(declare-fun call!71135 () ListLongMap!22483)

(declare-fun call!71133 () ListLongMap!22483)

(assert (=> bm!71129 (= call!71135 call!71133)))

(declare-fun b!1551843 () Bool)

(declare-fun res!1062672 () Bool)

(assert (=> b!1551843 (=> (not res!1062672) (not e!863922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103541 (_ BitVec 32)) Bool)

(assert (=> b!1551843 (= res!1062672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1551844 () Bool)

(declare-fun mapRes!59002 () Bool)

(assert (=> b!1551844 (= e!863921 (and e!863919 mapRes!59002))))

(declare-fun condMapEmpty!59002 () Bool)

(declare-fun mapDefault!59002 () ValueCell!18185)

