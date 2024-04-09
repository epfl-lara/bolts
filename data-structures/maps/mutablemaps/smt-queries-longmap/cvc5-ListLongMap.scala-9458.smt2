; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112392 () Bool)

(assert start!112392)

(declare-fun b_free!30751 () Bool)

(declare-fun b_next!30751 () Bool)

(assert (=> start!112392 (= b_free!30751 (not b_next!30751))))

(declare-fun tp!107890 () Bool)

(declare-fun b_and!49567 () Bool)

(assert (=> start!112392 (= tp!107890 b_and!49567)))

(declare-fun b!1331730 () Bool)

(declare-fun res!883816 () Bool)

(declare-fun e!758808 () Bool)

(assert (=> b!1331730 (=> (not res!883816) (not e!758808))))

(declare-datatypes ((V!53985 0))(
  ( (V!53986 (val!18405 Int)) )
))
(declare-datatypes ((ValueCell!17432 0))(
  ( (ValueCellFull!17432 (v!21040 V!53985)) (EmptyCell!17432) )
))
(declare-datatypes ((array!90171 0))(
  ( (array!90172 (arr!43547 (Array (_ BitVec 32) ValueCell!17432)) (size!44098 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90171)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90173 0))(
  ( (array!90174 (arr!43548 (Array (_ BitVec 32) (_ BitVec 64))) (size!44099 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90173)

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53985)

(declare-fun zeroValue!1262 () V!53985)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((tuple2!23860 0))(
  ( (tuple2!23861 (_1!11940 (_ BitVec 64)) (_2!11940 V!53985)) )
))
(declare-datatypes ((List!31043 0))(
  ( (Nil!31040) (Cons!31039 (h!32248 tuple2!23860) (t!45214 List!31043)) )
))
(declare-datatypes ((ListLongMap!21529 0))(
  ( (ListLongMap!21530 (toList!10780 List!31043)) )
))
(declare-fun contains!8880 (ListLongMap!21529 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5703 (array!90173 array!90171 (_ BitVec 32) (_ BitVec 32) V!53985 V!53985 (_ BitVec 32) Int) ListLongMap!21529)

(assert (=> b!1331730 (= res!883816 (contains!8880 (getCurrentListMap!5703 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1331731 () Bool)

(declare-fun e!758805 () Bool)

(declare-fun tp_is_empty!36661 () Bool)

(assert (=> b!1331731 (= e!758805 tp_is_empty!36661)))

(declare-fun mapNonEmpty!56665 () Bool)

(declare-fun mapRes!56665 () Bool)

(declare-fun tp!107891 () Bool)

(declare-fun e!758807 () Bool)

(assert (=> mapNonEmpty!56665 (= mapRes!56665 (and tp!107891 e!758807))))

(declare-fun mapKey!56665 () (_ BitVec 32))

(declare-fun mapRest!56665 () (Array (_ BitVec 32) ValueCell!17432))

(declare-fun mapValue!56665 () ValueCell!17432)

(assert (=> mapNonEmpty!56665 (= (arr!43547 _values!1320) (store mapRest!56665 mapKey!56665 mapValue!56665))))

(declare-fun b!1331732 () Bool)

(declare-fun e!758806 () Bool)

(assert (=> b!1331732 (= e!758806 (and e!758805 mapRes!56665))))

(declare-fun condMapEmpty!56665 () Bool)

(declare-fun mapDefault!56665 () ValueCell!17432)

