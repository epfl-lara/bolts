; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109460 () Bool)

(assert start!109460)

(declare-fun b_free!28913 () Bool)

(declare-fun b_next!28913 () Bool)

(assert (=> start!109460 (= b_free!28913 (not b_next!28913))))

(declare-fun tp!101859 () Bool)

(declare-fun b_and!47013 () Bool)

(assert (=> start!109460 (= tp!101859 b_and!47013)))

(declare-fun mapIsEmpty!53390 () Bool)

(declare-fun mapRes!53390 () Bool)

(assert (=> mapIsEmpty!53390 mapRes!53390))

(declare-fun res!861088 () Bool)

(declare-fun e!739168 () Bool)

(assert (=> start!109460 (=> (not res!861088) (not e!739168))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109460 (= res!861088 (validMask!0 mask!2175))))

(assert (=> start!109460 e!739168))

(declare-fun tp_is_empty!34553 () Bool)

(assert (=> start!109460 tp_is_empty!34553))

(assert (=> start!109460 true))

(declare-datatypes ((V!51173 0))(
  ( (V!51174 (val!17351 Int)) )
))
(declare-datatypes ((ValueCell!16378 0))(
  ( (ValueCellFull!16378 (v!19952 V!51173)) (EmptyCell!16378) )
))
(declare-datatypes ((array!86089 0))(
  ( (array!86090 (arr!41541 (Array (_ BitVec 32) ValueCell!16378)) (size!42092 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86089)

(declare-fun e!739170 () Bool)

(declare-fun array_inv!31439 (array!86089) Bool)

(assert (=> start!109460 (and (array_inv!31439 _values!1445) e!739170)))

(declare-datatypes ((array!86091 0))(
  ( (array!86092 (arr!41542 (Array (_ BitVec 32) (_ BitVec 64))) (size!42093 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86091)

(declare-fun array_inv!31440 (array!86091) Bool)

(assert (=> start!109460 (array_inv!31440 _keys!1741)))

(assert (=> start!109460 tp!101859))

(declare-fun b!1295457 () Bool)

(declare-fun res!861092 () Bool)

(assert (=> b!1295457 (=> (not res!861092) (not e!739168))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295457 (= res!861092 (not (validKeyInArray!0 (select (arr!41542 _keys!1741) from!2144))))))

(declare-fun b!1295458 () Bool)

(declare-fun res!861087 () Bool)

(assert (=> b!1295458 (=> (not res!861087) (not e!739168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86091 (_ BitVec 32)) Bool)

(assert (=> b!1295458 (= res!861087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1295459 () Bool)

(declare-fun res!861086 () Bool)

(assert (=> b!1295459 (=> (not res!861086) (not e!739168))))

(declare-fun minValue!1387 () V!51173)

(declare-fun zeroValue!1387 () V!51173)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22494 0))(
  ( (tuple2!22495 (_1!11257 (_ BitVec 64)) (_2!11257 V!51173)) )
))
(declare-datatypes ((List!29662 0))(
  ( (Nil!29659) (Cons!29658 (h!30867 tuple2!22494) (t!43233 List!29662)) )
))
(declare-datatypes ((ListLongMap!20163 0))(
  ( (ListLongMap!20164 (toList!10097 List!29662)) )
))
(declare-fun contains!8153 (ListLongMap!20163 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5077 (array!86091 array!86089 (_ BitVec 32) (_ BitVec 32) V!51173 V!51173 (_ BitVec 32) Int) ListLongMap!20163)

(assert (=> b!1295459 (= res!861086 (contains!8153 (getCurrentListMap!5077 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1295460 () Bool)

(declare-fun res!861090 () Bool)

(assert (=> b!1295460 (=> (not res!861090) (not e!739168))))

(declare-datatypes ((List!29663 0))(
  ( (Nil!29660) (Cons!29659 (h!30868 (_ BitVec 64)) (t!43234 List!29663)) )
))
(declare-fun arrayNoDuplicates!0 (array!86091 (_ BitVec 32) List!29663) Bool)

(assert (=> b!1295460 (= res!861090 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29660))))

(declare-fun b!1295461 () Bool)

(declare-fun e!739167 () Bool)

(assert (=> b!1295461 (= e!739167 tp_is_empty!34553)))

(declare-fun b!1295462 () Bool)

(declare-fun res!861085 () Bool)

(assert (=> b!1295462 (=> (not res!861085) (not e!739168))))

(assert (=> b!1295462 (= res!861085 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42093 _keys!1741))))))

(declare-fun b!1295463 () Bool)

(declare-fun e!739171 () Bool)

(assert (=> b!1295463 (= e!739170 (and e!739171 mapRes!53390))))

(declare-fun condMapEmpty!53390 () Bool)

(declare-fun mapDefault!53390 () ValueCell!16378)

