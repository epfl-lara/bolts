; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110058 () Bool)

(assert start!110058)

(declare-fun b_free!29245 () Bool)

(declare-fun b_next!29245 () Bool)

(assert (=> start!110058 (= b_free!29245 (not b_next!29245))))

(declare-fun tp!102883 () Bool)

(declare-fun b_and!47413 () Bool)

(assert (=> start!110058 (= tp!102883 b_and!47413)))

(declare-fun e!743188 () Bool)

(declare-datatypes ((V!51617 0))(
  ( (V!51618 (val!17517 Int)) )
))
(declare-datatypes ((tuple2!22754 0))(
  ( (tuple2!22755 (_1!11387 (_ BitVec 64)) (_2!11387 V!51617)) )
))
(declare-datatypes ((List!29907 0))(
  ( (Nil!29904) (Cons!29903 (h!31112 tuple2!22754) (t!43506 List!29907)) )
))
(declare-datatypes ((ListLongMap!20423 0))(
  ( (ListLongMap!20424 (toList!10227 List!29907)) )
))
(declare-fun lt!582914 () ListLongMap!20423)

(declare-fun lt!582916 () tuple2!22754)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun b!1302878 () Bool)

(declare-fun contains!8296 (ListLongMap!20423 (_ BitVec 64)) Bool)

(declare-fun +!4447 (ListLongMap!20423 tuple2!22754) ListLongMap!20423)

(assert (=> b!1302878 (= e!743188 (contains!8296 (+!4447 lt!582914 lt!582916) k!1205))))

(declare-fun lt!582913 () ListLongMap!20423)

(assert (=> b!1302878 (not (contains!8296 (+!4447 lt!582913 lt!582916) k!1205))))

(declare-fun minValue!1387 () V!51617)

(assert (=> b!1302878 (= lt!582916 (tuple2!22755 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387))))

(declare-datatypes ((Unit!43080 0))(
  ( (Unit!43081) )
))
(declare-fun lt!582912 () Unit!43080)

(declare-fun addStillNotContains!471 (ListLongMap!20423 (_ BitVec 64) V!51617 (_ BitVec 64)) Unit!43080)

(assert (=> b!1302878 (= lt!582912 (addStillNotContains!471 lt!582913 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k!1205))))

(assert (=> b!1302878 (not (contains!8296 lt!582914 k!1205))))

(declare-fun zeroValue!1387 () V!51617)

(assert (=> b!1302878 (= lt!582914 (+!4447 lt!582913 (tuple2!22755 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun lt!582915 () Unit!43080)

(assert (=> b!1302878 (= lt!582915 (addStillNotContains!471 lt!582913 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k!1205))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16544 0))(
  ( (ValueCellFull!16544 (v!20130 V!51617)) (EmptyCell!16544) )
))
(declare-datatypes ((array!86745 0))(
  ( (array!86746 (arr!41860 (Array (_ BitVec 32) ValueCell!16544)) (size!42411 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86745)

(declare-datatypes ((array!86747 0))(
  ( (array!86748 (arr!41861 (Array (_ BitVec 32) (_ BitVec 64))) (size!42412 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86747)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6161 (array!86747 array!86745 (_ BitVec 32) (_ BitVec 32) V!51617 V!51617 (_ BitVec 32) Int) ListLongMap!20423)

(assert (=> b!1302878 (= lt!582913 (getCurrentListMapNoExtraKeys!6161 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1302880 () Bool)

(declare-fun e!743191 () Bool)

(declare-fun tp_is_empty!34885 () Bool)

(assert (=> b!1302880 (= e!743191 tp_is_empty!34885)))

(declare-fun b!1302881 () Bool)

(declare-fun res!865453 () Bool)

(declare-fun e!743193 () Bool)

(assert (=> b!1302881 (=> (not res!865453) (not e!743193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1302881 (= res!865453 (not (validKeyInArray!0 (select (arr!41861 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53917 () Bool)

(declare-fun mapRes!53917 () Bool)

(assert (=> mapIsEmpty!53917 mapRes!53917))

(declare-fun b!1302882 () Bool)

(declare-fun res!865450 () Bool)

(assert (=> b!1302882 (=> (not res!865450) (not e!743193))))

(assert (=> b!1302882 (= res!865450 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42412 _keys!1741))))))

(declare-fun b!1302883 () Bool)

(declare-fun res!865454 () Bool)

(assert (=> b!1302883 (=> (not res!865454) (not e!743193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86747 (_ BitVec 32)) Bool)

(assert (=> b!1302883 (= res!865454 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1302884 () Bool)

(declare-fun res!865448 () Bool)

(assert (=> b!1302884 (=> (not res!865448) (not e!743193))))

(assert (=> b!1302884 (= res!865448 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42412 _keys!1741))))))

(declare-fun b!1302885 () Bool)

(assert (=> b!1302885 (= e!743193 (not e!743188))))

(declare-fun res!865451 () Bool)

(assert (=> b!1302885 (=> res!865451 e!743188)))

(assert (=> b!1302885 (= res!865451 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1302885 (not (contains!8296 (ListLongMap!20424 Nil!29904) k!1205))))

(declare-fun lt!582917 () Unit!43080)

(declare-fun emptyContainsNothing!215 ((_ BitVec 64)) Unit!43080)

(assert (=> b!1302885 (= lt!582917 (emptyContainsNothing!215 k!1205))))

(declare-fun b!1302886 () Bool)

(declare-fun res!865456 () Bool)

(assert (=> b!1302886 (=> (not res!865456) (not e!743193))))

(declare-datatypes ((List!29908 0))(
  ( (Nil!29905) (Cons!29904 (h!31113 (_ BitVec 64)) (t!43507 List!29908)) )
))
(declare-fun arrayNoDuplicates!0 (array!86747 (_ BitVec 32) List!29908) Bool)

(assert (=> b!1302886 (= res!865456 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29905))))

(declare-fun b!1302887 () Bool)

(declare-fun e!743190 () Bool)

(assert (=> b!1302887 (= e!743190 tp_is_empty!34885)))

(declare-fun b!1302888 () Bool)

(declare-fun e!743192 () Bool)

(assert (=> b!1302888 (= e!743192 (and e!743191 mapRes!53917))))

(declare-fun condMapEmpty!53917 () Bool)

(declare-fun mapDefault!53917 () ValueCell!16544)

