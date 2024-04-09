; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77826 () Bool)

(assert start!77826)

(declare-fun b_free!16357 () Bool)

(declare-fun b_next!16357 () Bool)

(assert (=> start!77826 (= b_free!16357 (not b_next!16357))))

(declare-fun tp!57337 () Bool)

(declare-fun b_and!26889 () Bool)

(assert (=> start!77826 (= tp!57337 b_and!26889)))

(declare-fun mapNonEmpty!29878 () Bool)

(declare-fun mapRes!29878 () Bool)

(declare-fun tp!57336 () Bool)

(declare-fun e!508831 () Bool)

(assert (=> mapNonEmpty!29878 (= mapRes!29878 (and tp!57336 e!508831))))

(declare-datatypes ((V!29999 0))(
  ( (V!30000 (val!9438 Int)) )
))
(declare-datatypes ((ValueCell!8906 0))(
  ( (ValueCellFull!8906 (v!11945 V!29999)) (EmptyCell!8906) )
))
(declare-datatypes ((array!53576 0))(
  ( (array!53577 (arr!25742 (Array (_ BitVec 32) ValueCell!8906)) (size!26202 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53576)

(declare-fun mapRest!29878 () (Array (_ BitVec 32) ValueCell!8906))

(declare-fun mapValue!29878 () ValueCell!8906)

(declare-fun mapKey!29878 () (_ BitVec 32))

(assert (=> mapNonEmpty!29878 (= (arr!25742 _values!1152) (store mapRest!29878 mapKey!29878 mapValue!29878))))

(declare-fun b!907831 () Bool)

(declare-fun e!508829 () Bool)

(declare-fun e!508830 () Bool)

(assert (=> b!907831 (= e!508829 e!508830)))

(declare-fun res!612825 () Bool)

(assert (=> b!907831 (=> (not res!612825) (not e!508830))))

(declare-datatypes ((tuple2!12318 0))(
  ( (tuple2!12319 (_1!6169 (_ BitVec 64)) (_2!6169 V!29999)) )
))
(declare-datatypes ((List!18177 0))(
  ( (Nil!18174) (Cons!18173 (h!19319 tuple2!12318) (t!25714 List!18177)) )
))
(declare-datatypes ((ListLongMap!11029 0))(
  ( (ListLongMap!11030 (toList!5530 List!18177)) )
))
(declare-fun lt!409495 () ListLongMap!11029)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4539 (ListLongMap!11029 (_ BitVec 64)) Bool)

(assert (=> b!907831 (= res!612825 (contains!4539 lt!409495 k!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29999)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29999)

(declare-datatypes ((array!53578 0))(
  ( (array!53579 (arr!25743 (Array (_ BitVec 32) (_ BitVec 64))) (size!26203 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53578)

(declare-fun getCurrentListMap!2762 (array!53578 array!53576 (_ BitVec 32) (_ BitVec 32) V!29999 V!29999 (_ BitVec 32) Int) ListLongMap!11029)

(assert (=> b!907831 (= lt!409495 (getCurrentListMap!2762 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!907832 () Bool)

(declare-fun e!508828 () Bool)

(declare-fun e!508834 () Bool)

(assert (=> b!907832 (= e!508828 e!508834)))

(declare-fun res!612826 () Bool)

(assert (=> b!907832 (=> res!612826 e!508834)))

(declare-fun lt!409492 () ListLongMap!11029)

(assert (=> b!907832 (= res!612826 (not (contains!4539 lt!409492 k!1033)))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!907832 (= lt!409492 (getCurrentListMap!2762 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun b!907833 () Bool)

(declare-fun e!508833 () Bool)

(declare-fun e!508835 () Bool)

(assert (=> b!907833 (= e!508833 (and e!508835 mapRes!29878))))

(declare-fun condMapEmpty!29878 () Bool)

(declare-fun mapDefault!29878 () ValueCell!8906)

