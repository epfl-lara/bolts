; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4636 () Bool)

(assert start!4636)

(declare-fun b_free!1285 () Bool)

(declare-fun b_next!1285 () Bool)

(assert (=> start!4636 (= b_free!1285 (not b_next!1285))))

(declare-fun tp!5306 () Bool)

(declare-fun b_and!2121 () Bool)

(assert (=> start!4636 (= tp!5306 b_and!2121)))

(declare-fun mapIsEmpty!2018 () Bool)

(declare-fun mapRes!2018 () Bool)

(assert (=> mapIsEmpty!2018 mapRes!2018))

(declare-fun b!36263 () Bool)

(declare-fun res!21930 () Bool)

(declare-fun e!22898 () Bool)

(assert (=> b!36263 (=> (not res!21930) (not e!22898))))

(declare-datatypes ((array!2491 0))(
  ( (array!2492 (arr!1189 (Array (_ BitVec 32) (_ BitVec 64))) (size!1290 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2491)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2491 (_ BitVec 32)) Bool)

(assert (=> b!36263 (= res!21930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!36264 () Bool)

(declare-fun res!21928 () Bool)

(assert (=> b!36264 (=> (not res!21928) (not e!22898))))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!36264 (= res!21928 (validKeyInArray!0 k!1304))))

(declare-fun b!36265 () Bool)

(assert (=> b!36265 (= e!22898 false)))

(declare-fun defaultEntry!1504 () Int)

(declare-datatypes ((V!2011 0))(
  ( (V!2012 (val!846 Int)) )
))
(declare-datatypes ((ValueCell!620 0))(
  ( (ValueCellFull!620 (v!1946 V!2011)) (EmptyCell!620) )
))
(declare-datatypes ((array!2493 0))(
  ( (array!2494 (arr!1190 (Array (_ BitVec 32) ValueCell!620)) (size!1291 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2493)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun lt!13450 () Bool)

(declare-fun zeroValue!1443 () V!2011)

(declare-fun minValue!1443 () V!2011)

(declare-datatypes ((tuple2!1358 0))(
  ( (tuple2!1359 (_1!689 (_ BitVec 64)) (_2!689 V!2011)) )
))
(declare-datatypes ((List!965 0))(
  ( (Nil!962) (Cons!961 (h!1529 tuple2!1358) (t!3680 List!965)) )
))
(declare-datatypes ((ListLongMap!939 0))(
  ( (ListLongMap!940 (toList!485 List!965)) )
))
(declare-fun contains!433 (ListLongMap!939 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!306 (array!2491 array!2493 (_ BitVec 32) (_ BitVec 32) V!2011 V!2011 (_ BitVec 32) Int) ListLongMap!939)

(assert (=> b!36265 (= lt!13450 (contains!433 (getCurrentListMap!306 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k!1304))))

(declare-fun b!36266 () Bool)

(declare-fun e!22901 () Bool)

(declare-fun e!22902 () Bool)

(assert (=> b!36266 (= e!22901 (and e!22902 mapRes!2018))))

(declare-fun condMapEmpty!2018 () Bool)

(declare-fun mapDefault!2018 () ValueCell!620)

