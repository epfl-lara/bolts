; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79178 () Bool)

(assert start!79178)

(declare-fun b_free!17363 () Bool)

(declare-fun b_next!17363 () Bool)

(assert (=> start!79178 (= b_free!17363 (not b_next!17363))))

(declare-fun tp!60530 () Bool)

(declare-fun b_and!28447 () Bool)

(assert (=> start!79178 (= tp!60530 b_and!28447)))

(declare-fun b!928902 () Bool)

(declare-fun e!521641 () Bool)

(assert (=> b!928902 (= e!521641 false)))

(declare-datatypes ((V!31459 0))(
  ( (V!31460 (val!9986 Int)) )
))
(declare-fun lt!418940 () V!31459)

(declare-datatypes ((tuple2!13160 0))(
  ( (tuple2!13161 (_1!6590 (_ BitVec 64)) (_2!6590 V!31459)) )
))
(declare-datatypes ((List!18983 0))(
  ( (Nil!18980) (Cons!18979 (h!20125 tuple2!13160) (t!27048 List!18983)) )
))
(declare-datatypes ((ListLongMap!11871 0))(
  ( (ListLongMap!11872 (toList!5951 List!18983)) )
))
(declare-fun lt!418941 () ListLongMap!11871)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!746 (ListLongMap!11871 (_ BitVec 64)) V!31459)

(assert (=> b!928902 (= lt!418940 (apply!746 lt!418941 k!1099))))

(declare-fun b!928903 () Bool)

(declare-fun e!521639 () Bool)

(assert (=> b!928903 (= e!521639 e!521641)))

(declare-fun res!625627 () Bool)

(assert (=> b!928903 (=> (not res!625627) (not e!521641))))

(declare-fun contains!4967 (ListLongMap!11871 (_ BitVec 64)) Bool)

(assert (=> b!928903 (= res!625627 (contains!4967 lt!418941 k!1099))))

(declare-datatypes ((array!55718 0))(
  ( (array!55719 (arr!26800 (Array (_ BitVec 32) (_ BitVec 64))) (size!27260 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55718)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9454 0))(
  ( (ValueCellFull!9454 (v!12504 V!31459)) (EmptyCell!9454) )
))
(declare-datatypes ((array!55720 0))(
  ( (array!55721 (arr!26801 (Array (_ BitVec 32) ValueCell!9454)) (size!27261 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55720)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31459)

(declare-fun minValue!1173 () V!31459)

(declare-fun getCurrentListMap!3161 (array!55718 array!55720 (_ BitVec 32) (_ BitVec 32) V!31459 V!31459 (_ BitVec 32) Int) ListLongMap!11871)

(assert (=> b!928903 (= lt!418941 (getCurrentListMap!3161 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!928904 () Bool)

(declare-fun res!625631 () Bool)

(assert (=> b!928904 (=> (not res!625631) (not e!521639))))

(declare-datatypes ((List!18984 0))(
  ( (Nil!18981) (Cons!18980 (h!20126 (_ BitVec 64)) (t!27049 List!18984)) )
))
(declare-fun arrayNoDuplicates!0 (array!55718 (_ BitVec 32) List!18984) Bool)

(assert (=> b!928904 (= res!625631 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18981))))

(declare-fun b!928905 () Bool)

(declare-fun e!521640 () Bool)

(declare-fun e!521638 () Bool)

(declare-fun mapRes!31563 () Bool)

(assert (=> b!928905 (= e!521640 (and e!521638 mapRes!31563))))

(declare-fun condMapEmpty!31563 () Bool)

(declare-fun mapDefault!31563 () ValueCell!9454)

