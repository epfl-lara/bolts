; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132184 () Bool)

(assert start!132184)

(declare-fun b_free!31865 () Bool)

(declare-fun b_next!31865 () Bool)

(assert (=> start!132184 (= b_free!31865 (not b_next!31865))))

(declare-fun tp!111848 () Bool)

(declare-fun b_and!51297 () Bool)

(assert (=> start!132184 (= tp!111848 b_and!51297)))

(declare-fun mapNonEmpty!58915 () Bool)

(declare-fun mapRes!58915 () Bool)

(declare-fun tp!111847 () Bool)

(declare-fun e!862952 () Bool)

(assert (=> mapNonEmpty!58915 (= mapRes!58915 (and tp!111847 e!862952))))

(declare-datatypes ((V!59297 0))(
  ( (V!59298 (val!19148 Int)) )
))
(declare-datatypes ((ValueCell!18160 0))(
  ( (ValueCellFull!18160 (v!21946 V!59297)) (EmptyCell!18160) )
))
(declare-fun mapRest!58915 () (Array (_ BitVec 32) ValueCell!18160))

(declare-fun mapValue!58915 () ValueCell!18160)

(declare-datatypes ((array!103439 0))(
  ( (array!103440 (arr!49917 (Array (_ BitVec 32) ValueCell!18160)) (size!50468 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103439)

(declare-fun mapKey!58915 () (_ BitVec 32))

(assert (=> mapNonEmpty!58915 (= (arr!49917 _values!470) (store mapRest!58915 mapKey!58915 mapValue!58915))))

(declare-fun bm!70718 () Bool)

(declare-datatypes ((tuple2!24816 0))(
  ( (tuple2!24817 (_1!12418 (_ BitVec 64)) (_2!12418 V!59297)) )
))
(declare-datatypes ((List!36308 0))(
  ( (Nil!36305) (Cons!36304 (h!37750 tuple2!24816) (t!51021 List!36308)) )
))
(declare-datatypes ((ListLongMap!22437 0))(
  ( (ListLongMap!22438 (toList!11234 List!36308)) )
))
(declare-fun call!70725 () ListLongMap!22437)

(declare-fun call!70723 () ListLongMap!22437)

(assert (=> bm!70718 (= call!70725 call!70723)))

(declare-fun b!1550212 () Bool)

(declare-fun e!862957 () Bool)

(declare-fun tp_is_empty!38141 () Bool)

(assert (=> b!1550212 (= e!862957 tp_is_empty!38141)))

(declare-fun bm!70719 () Bool)

(declare-fun call!70724 () ListLongMap!22437)

(declare-fun call!70721 () ListLongMap!22437)

(assert (=> bm!70719 (= call!70724 call!70721)))

(declare-fun b!1550213 () Bool)

(declare-fun e!862958 () ListLongMap!22437)

(declare-fun minValue!436 () V!59297)

(declare-fun +!4944 (ListLongMap!22437 tuple2!24816) ListLongMap!22437)

(assert (=> b!1550213 (= e!862958 (+!4944 call!70723 (tuple2!24817 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1550214 () Bool)

(declare-fun res!1061957 () Bool)

(declare-fun e!862954 () Bool)

(assert (=> b!1550214 (=> (not res!1061957) (not e!862954))))

(declare-datatypes ((array!103441 0))(
  ( (array!103442 (arr!49918 (Array (_ BitVec 32) (_ BitVec 64))) (size!50469 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103441)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103441 (_ BitVec 32)) Bool)

(assert (=> b!1550214 (= res!1061957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1550215 () Bool)

(declare-fun e!862960 () ListLongMap!22437)

(assert (=> b!1550215 (= e!862960 call!70725)))

(declare-fun b!1550216 () Bool)

(declare-fun e!862955 () Bool)

(assert (=> b!1550216 (= e!862955 (and e!862957 mapRes!58915))))

(declare-fun condMapEmpty!58915 () Bool)

(declare-fun mapDefault!58915 () ValueCell!18160)

