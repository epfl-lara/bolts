; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108880 () Bool)

(assert start!108880)

(declare-fun b_free!28357 () Bool)

(declare-fun b_next!28357 () Bool)

(assert (=> start!108880 (= b_free!28357 (not b_next!28357))))

(declare-fun tp!100187 () Bool)

(declare-fun b_and!46433 () Bool)

(assert (=> start!108880 (= tp!100187 b_and!46433)))

(declare-fun b!1285317 () Bool)

(declare-fun res!853939 () Bool)

(declare-fun e!734212 () Bool)

(assert (=> b!1285317 (=> (not res!853939) (not e!734212))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85005 0))(
  ( (array!85006 (arr!41000 (Array (_ BitVec 32) (_ BitVec 64))) (size!41551 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85005)

(assert (=> b!1285317 (= res!853939 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41551 _keys!1741))))))

(declare-fun b!1285318 () Bool)

(declare-fun res!853940 () Bool)

(assert (=> b!1285318 (=> (not res!853940) (not e!734212))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50433 0))(
  ( (V!50434 (val!17073 Int)) )
))
(declare-datatypes ((ValueCell!16100 0))(
  ( (ValueCellFull!16100 (v!19673 V!50433)) (EmptyCell!16100) )
))
(declare-datatypes ((array!85007 0))(
  ( (array!85008 (arr!41001 (Array (_ BitVec 32) ValueCell!16100)) (size!41552 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85007)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1285318 (= res!853940 (and (= (size!41552 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41551 _keys!1741) (size!41552 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1285320 () Bool)

(assert (=> b!1285320 (= e!734212 false)))

(declare-fun minValue!1387 () V!50433)

(declare-fun zeroValue!1387 () V!50433)

(declare-fun lt!576849 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22014 0))(
  ( (tuple2!22015 (_1!11017 (_ BitVec 64)) (_2!11017 V!50433)) )
))
(declare-datatypes ((List!29227 0))(
  ( (Nil!29224) (Cons!29223 (h!30432 tuple2!22014) (t!42778 List!29227)) )
))
(declare-datatypes ((ListLongMap!19683 0))(
  ( (ListLongMap!19684 (toList!9857 List!29227)) )
))
(declare-fun contains!7912 (ListLongMap!19683 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4873 (array!85005 array!85007 (_ BitVec 32) (_ BitVec 32) V!50433 V!50433 (_ BitVec 32) Int) ListLongMap!19683)

(assert (=> b!1285320 (= lt!576849 (contains!7912 (getCurrentListMap!4873 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1285321 () Bool)

(declare-fun e!734211 () Bool)

(declare-fun e!734214 () Bool)

(declare-fun mapRes!52553 () Bool)

(assert (=> b!1285321 (= e!734211 (and e!734214 mapRes!52553))))

(declare-fun condMapEmpty!52553 () Bool)

(declare-fun mapDefault!52553 () ValueCell!16100)

