; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78754 () Bool)

(assert start!78754)

(declare-fun b_free!16939 () Bool)

(declare-fun b_next!16939 () Bool)

(assert (=> start!78754 (= b_free!16939 (not b_next!16939))))

(declare-fun tp!59259 () Bool)

(declare-fun b_and!27633 () Bool)

(assert (=> start!78754 (= tp!59259 b_and!27633)))

(declare-fun b!918179 () Bool)

(declare-fun e!515471 () Bool)

(declare-fun tp_is_empty!19447 () Bool)

(assert (=> b!918179 (= e!515471 tp_is_empty!19447)))

(declare-fun b!918180 () Bool)

(declare-fun res!619171 () Bool)

(declare-fun e!515469 () Bool)

(assert (=> b!918180 (=> (not res!619171) (not e!515469))))

(declare-datatypes ((array!54886 0))(
  ( (array!54887 (arr!26384 (Array (_ BitVec 32) (_ BitVec 64))) (size!26844 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54886)

(declare-datatypes ((List!18619 0))(
  ( (Nil!18616) (Cons!18615 (h!19761 (_ BitVec 64)) (t!26296 List!18619)) )
))
(declare-fun arrayNoDuplicates!0 (array!54886 (_ BitVec 32) List!18619) Bool)

(assert (=> b!918180 (= res!619171 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18616))))

(declare-fun b!918181 () Bool)

(declare-fun e!515470 () Bool)

(assert (=> b!918181 (= e!515470 (not true))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!412154 () (_ BitVec 64))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30895 0))(
  ( (V!30896 (val!9774 Int)) )
))
(declare-datatypes ((ValueCell!9242 0))(
  ( (ValueCellFull!9242 (v!12292 V!30895)) (EmptyCell!9242) )
))
(declare-datatypes ((array!54888 0))(
  ( (array!54889 (arr!26385 (Array (_ BitVec 32) ValueCell!9242)) (size!26845 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54888)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30895)

(declare-fun minValue!1173 () V!30895)

(declare-datatypes ((tuple2!12774 0))(
  ( (tuple2!12775 (_1!6397 (_ BitVec 64)) (_2!6397 V!30895)) )
))
(declare-datatypes ((List!18620 0))(
  ( (Nil!18617) (Cons!18616 (h!19762 tuple2!12774) (t!26297 List!18620)) )
))
(declare-datatypes ((ListLongMap!11485 0))(
  ( (ListLongMap!11486 (toList!5758 List!18620)) )
))
(declare-fun getCurrentListMap!2984 (array!54886 array!54888 (_ BitVec 32) (_ BitVec 32) V!30895 V!30895 (_ BitVec 32) Int) ListLongMap!11485)

(declare-fun +!2588 (ListLongMap!11485 tuple2!12774) ListLongMap!11485)

(declare-fun get!13847 (ValueCell!9242 V!30895) V!30895)

(declare-fun dynLambda!1427 (Int (_ BitVec 64)) V!30895)

(assert (=> b!918181 (= (getCurrentListMap!2984 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2588 (getCurrentListMap!2984 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12775 lt!412154 (get!13847 (select (arr!26385 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1427 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30983 0))(
  ( (Unit!30984) )
))
(declare-fun lt!412155 () Unit!30983)

(declare-fun lemmaListMapRecursiveValidKeyArray!23 (array!54886 array!54888 (_ BitVec 32) (_ BitVec 32) V!30895 V!30895 (_ BitVec 32) Int) Unit!30983)

(assert (=> b!918181 (= lt!412155 (lemmaListMapRecursiveValidKeyArray!23 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918182 () Bool)

(declare-fun res!619164 () Bool)

(declare-fun e!515467 () Bool)

(assert (=> b!918182 (=> (not res!619164) (not e!515467))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918182 (= res!619164 (validKeyInArray!0 k!1099))))

(declare-fun b!918183 () Bool)

(declare-fun res!619165 () Bool)

(assert (=> b!918183 (=> (not res!619165) (not e!515467))))

(assert (=> b!918183 (= res!619165 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918184 () Bool)

(assert (=> b!918184 (= e!515469 e!515467)))

(declare-fun res!619169 () Bool)

(assert (=> b!918184 (=> (not res!619169) (not e!515467))))

(declare-fun lt!412153 () ListLongMap!11485)

(declare-fun contains!4772 (ListLongMap!11485 (_ BitVec 64)) Bool)

(assert (=> b!918184 (= res!619169 (contains!4772 lt!412153 k!1099))))

(assert (=> b!918184 (= lt!412153 (getCurrentListMap!2984 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!918185 () Bool)

(declare-fun res!619166 () Bool)

(assert (=> b!918185 (=> (not res!619166) (not e!515469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54886 (_ BitVec 32)) Bool)

(assert (=> b!918185 (= res!619166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918186 () Bool)

(declare-fun res!619168 () Bool)

(assert (=> b!918186 (=> (not res!619168) (not e!515469))))

(assert (=> b!918186 (= res!619168 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26844 _keys!1487))))))

(declare-fun res!619170 () Bool)

(assert (=> start!78754 (=> (not res!619170) (not e!515469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78754 (= res!619170 (validMask!0 mask!1881))))

(assert (=> start!78754 e!515469))

(assert (=> start!78754 true))

(assert (=> start!78754 tp_is_empty!19447))

(declare-fun e!515466 () Bool)

(declare-fun array_inv!20558 (array!54888) Bool)

(assert (=> start!78754 (and (array_inv!20558 _values!1231) e!515466)))

(assert (=> start!78754 tp!59259))

(declare-fun array_inv!20559 (array!54886) Bool)

(assert (=> start!78754 (array_inv!20559 _keys!1487)))

(declare-fun mapIsEmpty!30927 () Bool)

(declare-fun mapRes!30927 () Bool)

(assert (=> mapIsEmpty!30927 mapRes!30927))

(declare-fun b!918187 () Bool)

(declare-fun res!619163 () Bool)

(assert (=> b!918187 (=> (not res!619163) (not e!515469))))

(assert (=> b!918187 (= res!619163 (and (= (size!26845 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26844 _keys!1487) (size!26845 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!918188 () Bool)

(declare-fun e!515468 () Bool)

(assert (=> b!918188 (= e!515468 tp_is_empty!19447)))

(declare-fun mapNonEmpty!30927 () Bool)

(declare-fun tp!59258 () Bool)

(assert (=> mapNonEmpty!30927 (= mapRes!30927 (and tp!59258 e!515471))))

(declare-fun mapKey!30927 () (_ BitVec 32))

(declare-fun mapValue!30927 () ValueCell!9242)

(declare-fun mapRest!30927 () (Array (_ BitVec 32) ValueCell!9242))

(assert (=> mapNonEmpty!30927 (= (arr!26385 _values!1231) (store mapRest!30927 mapKey!30927 mapValue!30927))))

(declare-fun b!918189 () Bool)

(declare-fun res!619167 () Bool)

(assert (=> b!918189 (=> (not res!619167) (not e!515467))))

(declare-fun v!791 () V!30895)

(declare-fun apply!578 (ListLongMap!11485 (_ BitVec 64)) V!30895)

(assert (=> b!918189 (= res!619167 (= (apply!578 lt!412153 k!1099) v!791))))

(declare-fun b!918190 () Bool)

(assert (=> b!918190 (= e!515467 e!515470)))

(declare-fun res!619172 () Bool)

(assert (=> b!918190 (=> (not res!619172) (not e!515470))))

(assert (=> b!918190 (= res!619172 (validKeyInArray!0 lt!412154))))

(assert (=> b!918190 (= lt!412154 (select (arr!26384 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918191 () Bool)

(assert (=> b!918191 (= e!515466 (and e!515468 mapRes!30927))))

(declare-fun condMapEmpty!30927 () Bool)

(declare-fun mapDefault!30927 () ValueCell!9242)

