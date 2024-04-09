; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112378 () Bool)

(assert start!112378)

(declare-fun b_free!30737 () Bool)

(declare-fun b_next!30737 () Bool)

(assert (=> start!112378 (= b_free!30737 (not b_next!30737))))

(declare-fun tp!107848 () Bool)

(declare-fun b_and!49539 () Bool)

(assert (=> start!112378 (= tp!107848 b_and!49539)))

(declare-fun b!1331464 () Bool)

(declare-fun res!883632 () Bool)

(declare-fun e!758704 () Bool)

(assert (=> b!1331464 (=> (not res!883632) (not e!758704))))

(declare-datatypes ((V!53965 0))(
  ( (V!53966 (val!18398 Int)) )
))
(declare-datatypes ((ValueCell!17425 0))(
  ( (ValueCellFull!17425 (v!21033 V!53965)) (EmptyCell!17425) )
))
(declare-datatypes ((array!90145 0))(
  ( (array!90146 (arr!43534 (Array (_ BitVec 32) ValueCell!17425)) (size!44085 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90145)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90147 0))(
  ( (array!90148 (arr!43535 (Array (_ BitVec 32) (_ BitVec 64))) (size!44086 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90147)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53965)

(declare-fun zeroValue!1262 () V!53965)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23848 0))(
  ( (tuple2!23849 (_1!11934 (_ BitVec 64)) (_2!11934 V!53965)) )
))
(declare-datatypes ((List!31033 0))(
  ( (Nil!31030) (Cons!31029 (h!32238 tuple2!23848) (t!45190 List!31033)) )
))
(declare-datatypes ((ListLongMap!21517 0))(
  ( (ListLongMap!21518 (toList!10774 List!31033)) )
))
(declare-fun contains!8874 (ListLongMap!21517 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5697 (array!90147 array!90145 (_ BitVec 32) (_ BitVec 32) V!53965 V!53965 (_ BitVec 32) Int) ListLongMap!21517)

(assert (=> b!1331464 (= res!883632 (contains!8874 (getCurrentListMap!5697 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun mapIsEmpty!56644 () Bool)

(declare-fun mapRes!56644 () Bool)

(assert (=> mapIsEmpty!56644 mapRes!56644))

(declare-fun res!883628 () Bool)

(assert (=> start!112378 (=> (not res!883628) (not e!758704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112378 (= res!883628 (validMask!0 mask!1998))))

(assert (=> start!112378 e!758704))

(declare-fun e!758701 () Bool)

(declare-fun array_inv!32791 (array!90145) Bool)

(assert (=> start!112378 (and (array_inv!32791 _values!1320) e!758701)))

(assert (=> start!112378 true))

(declare-fun array_inv!32792 (array!90147) Bool)

(assert (=> start!112378 (array_inv!32792 _keys!1590)))

(assert (=> start!112378 tp!107848))

(declare-fun tp_is_empty!36647 () Bool)

(assert (=> start!112378 tp_is_empty!36647))

(declare-fun b!1331465 () Bool)

(declare-fun res!883630 () Bool)

(assert (=> b!1331465 (=> (not res!883630) (not e!758704))))

(assert (=> b!1331465 (= res!883630 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44086 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1331466 () Bool)

(declare-fun res!883627 () Bool)

(assert (=> b!1331466 (=> (not res!883627) (not e!758704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1331466 (= res!883627 (validKeyInArray!0 (select (arr!43535 _keys!1590) from!1980)))))

(declare-fun b!1331467 () Bool)

(declare-fun res!883634 () Bool)

(assert (=> b!1331467 (=> (not res!883634) (not e!758704))))

(assert (=> b!1331467 (= res!883634 (and (= (size!44085 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44086 _keys!1590) (size!44085 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1331468 () Bool)

(declare-fun e!758703 () Bool)

(assert (=> b!1331468 (= e!758701 (and e!758703 mapRes!56644))))

(declare-fun condMapEmpty!56644 () Bool)

(declare-fun mapDefault!56644 () ValueCell!17425)

