; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112434 () Bool)

(assert start!112434)

(declare-fun b_free!30793 () Bool)

(declare-fun b_next!30793 () Bool)

(assert (=> start!112434 (= b_free!30793 (not b_next!30793))))

(declare-fun tp!108016 () Bool)

(declare-fun b_and!49645 () Bool)

(assert (=> start!112434 (= tp!108016 b_and!49645)))

(declare-fun mapNonEmpty!56728 () Bool)

(declare-fun mapRes!56728 () Bool)

(declare-fun tp!108017 () Bool)

(declare-fun e!759120 () Bool)

(assert (=> mapNonEmpty!56728 (= mapRes!56728 (and tp!108017 e!759120))))

(declare-datatypes ((V!54041 0))(
  ( (V!54042 (val!18426 Int)) )
))
(declare-datatypes ((ValueCell!17453 0))(
  ( (ValueCellFull!17453 (v!21061 V!54041)) (EmptyCell!17453) )
))
(declare-fun mapValue!56728 () ValueCell!17453)

(declare-fun mapKey!56728 () (_ BitVec 32))

(declare-datatypes ((array!90255 0))(
  ( (array!90256 (arr!43589 (Array (_ BitVec 32) ValueCell!17453)) (size!44140 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90255)

(declare-fun mapRest!56728 () (Array (_ BitVec 32) ValueCell!17453))

(assert (=> mapNonEmpty!56728 (= (arr!43589 _values!1320) (store mapRest!56728 mapKey!56728 mapValue!56728))))

(declare-fun mapIsEmpty!56728 () Bool)

(assert (=> mapIsEmpty!56728 mapRes!56728))

(declare-fun b!1332478 () Bool)

(declare-fun res!884339 () Bool)

(declare-fun e!759124 () Bool)

(assert (=> b!1332478 (=> (not res!884339) (not e!759124))))

(declare-datatypes ((array!90257 0))(
  ( (array!90258 (arr!43590 (Array (_ BitVec 32) (_ BitVec 64))) (size!44141 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90257)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90257 (_ BitVec 32)) Bool)

(assert (=> b!1332478 (= res!884339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332479 () Bool)

(declare-fun e!759122 () Bool)

(declare-fun tp_is_empty!36703 () Bool)

(assert (=> b!1332479 (= e!759122 tp_is_empty!36703)))

(declare-fun b!1332480 () Bool)

(declare-fun e!759121 () Bool)

(assert (=> b!1332480 (= e!759121 (and e!759122 mapRes!56728))))

(declare-fun condMapEmpty!56728 () Bool)

(declare-fun mapDefault!56728 () ValueCell!17453)

