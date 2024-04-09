; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112284 () Bool)

(assert start!112284)

(declare-fun b_free!30643 () Bool)

(declare-fun b_next!30643 () Bool)

(assert (=> start!112284 (= b_free!30643 (not b_next!30643))))

(declare-fun tp!107566 () Bool)

(declare-fun b_and!49351 () Bool)

(assert (=> start!112284 (= tp!107566 b_and!49351)))

(declare-fun b!1329678 () Bool)

(declare-fun res!882365 () Bool)

(declare-fun e!757995 () Bool)

(assert (=> b!1329678 (=> (not res!882365) (not e!757995))))

(declare-datatypes ((array!89961 0))(
  ( (array!89962 (arr!43442 (Array (_ BitVec 32) (_ BitVec 64))) (size!43993 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89961)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329678 (= res!882365 (validKeyInArray!0 (select (arr!43442 _keys!1590) from!1980)))))

(declare-fun mapNonEmpty!56503 () Bool)

(declare-fun mapRes!56503 () Bool)

(declare-fun tp!107567 () Bool)

(declare-fun e!757996 () Bool)

(assert (=> mapNonEmpty!56503 (= mapRes!56503 (and tp!107567 e!757996))))

(declare-datatypes ((V!53841 0))(
  ( (V!53842 (val!18351 Int)) )
))
(declare-datatypes ((ValueCell!17378 0))(
  ( (ValueCellFull!17378 (v!20986 V!53841)) (EmptyCell!17378) )
))
(declare-datatypes ((array!89963 0))(
  ( (array!89964 (arr!43443 (Array (_ BitVec 32) ValueCell!17378)) (size!43994 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89963)

(declare-fun mapKey!56503 () (_ BitVec 32))

(declare-fun mapValue!56503 () ValueCell!17378)

(declare-fun mapRest!56503 () (Array (_ BitVec 32) ValueCell!17378))

(assert (=> mapNonEmpty!56503 (= (arr!43443 _values!1320) (store mapRest!56503 mapKey!56503 mapValue!56503))))

(declare-fun b!1329679 () Bool)

(declare-fun e!757997 () Bool)

(declare-fun e!757999 () Bool)

(assert (=> b!1329679 (= e!757997 (and e!757999 mapRes!56503))))

(declare-fun condMapEmpty!56503 () Bool)

(declare-fun mapDefault!56503 () ValueCell!17378)

