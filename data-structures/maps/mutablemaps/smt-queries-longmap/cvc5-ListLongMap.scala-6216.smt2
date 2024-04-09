; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79458 () Bool)

(assert start!79458)

(declare-fun b_free!17617 () Bool)

(declare-fun b_next!17617 () Bool)

(assert (=> start!79458 (= b_free!17617 (not b_next!17617))))

(declare-fun tp!61296 () Bool)

(declare-fun b_and!28811 () Bool)

(assert (=> start!79458 (= tp!61296 b_and!28811)))

(declare-fun b!933484 () Bool)

(declare-fun e!524191 () Bool)

(declare-fun tp_is_empty!20125 () Bool)

(assert (=> b!933484 (= e!524191 tp_is_empty!20125)))

(declare-fun b!933485 () Bool)

(declare-fun e!524195 () Bool)

(declare-fun e!524192 () Bool)

(assert (=> b!933485 (= e!524195 e!524192)))

(declare-fun res!628871 () Bool)

(assert (=> b!933485 (=> (not res!628871) (not e!524192))))

(declare-fun lt!420449 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933485 (= res!628871 (validKeyInArray!0 lt!420449))))

(declare-datatypes ((array!56210 0))(
  ( (array!56211 (arr!27045 (Array (_ BitVec 32) (_ BitVec 64))) (size!27505 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56210)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!933485 (= lt!420449 (select (arr!27045 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!933486 () Bool)

(declare-fun res!628868 () Bool)

(declare-fun e!524194 () Bool)

(assert (=> b!933486 (=> (not res!628868) (not e!524194))))

(declare-datatypes ((List!19173 0))(
  ( (Nil!19170) (Cons!19169 (h!20315 (_ BitVec 64)) (t!27342 List!19173)) )
))
(declare-fun arrayNoDuplicates!0 (array!56210 (_ BitVec 32) List!19173) Bool)

(assert (=> b!933486 (= res!628868 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19170))))

(declare-fun b!933487 () Bool)

(declare-fun res!628875 () Bool)

(assert (=> b!933487 (=> (not res!628875) (not e!524195))))

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!933487 (= res!628875 (validKeyInArray!0 k!1099))))

(declare-fun b!933488 () Bool)

(declare-fun res!628869 () Bool)

(assert (=> b!933488 (=> (not res!628869) (not e!524194))))

(assert (=> b!933488 (= res!628869 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27505 _keys!1487))))))

(declare-fun b!933489 () Bool)

(assert (=> b!933489 (= e!524194 e!524195)))

(declare-fun res!628877 () Bool)

(assert (=> b!933489 (=> (not res!628877) (not e!524195))))

(declare-datatypes ((V!31799 0))(
  ( (V!31800 (val!10113 Int)) )
))
(declare-datatypes ((tuple2!13366 0))(
  ( (tuple2!13367 (_1!6693 (_ BitVec 64)) (_2!6693 V!31799)) )
))
(declare-datatypes ((List!19174 0))(
  ( (Nil!19171) (Cons!19170 (h!20316 tuple2!13366) (t!27343 List!19174)) )
))
(declare-datatypes ((ListLongMap!12077 0))(
  ( (ListLongMap!12078 (toList!6054 List!19174)) )
))
(declare-fun lt!420450 () ListLongMap!12077)

(declare-fun contains!5053 (ListLongMap!12077 (_ BitVec 64)) Bool)

(assert (=> b!933489 (= res!628877 (contains!5053 lt!420450 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9581 0))(
  ( (ValueCellFull!9581 (v!12632 V!31799)) (EmptyCell!9581) )
))
(declare-datatypes ((array!56212 0))(
  ( (array!56213 (arr!27046 (Array (_ BitVec 32) ValueCell!9581)) (size!27506 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56212)

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31799)

(declare-fun minValue!1173 () V!31799)

(declare-fun getCurrentListMap!3246 (array!56210 array!56212 (_ BitVec 32) (_ BitVec 32) V!31799 V!31799 (_ BitVec 32) Int) ListLongMap!12077)

(assert (=> b!933489 (= lt!420450 (getCurrentListMap!3246 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933490 () Bool)

(declare-fun res!628874 () Bool)

(assert (=> b!933490 (=> (not res!628874) (not e!524194))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56210 (_ BitVec 32)) Bool)

(assert (=> b!933490 (= res!628874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933491 () Bool)

(assert (=> b!933491 (= e!524192 (not true))))

(assert (=> b!933491 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19170)))

(declare-datatypes ((Unit!31496 0))(
  ( (Unit!31497) )
))
(declare-fun lt!420448 () Unit!31496)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56210 (_ BitVec 32) (_ BitVec 32)) Unit!31496)

(assert (=> b!933491 (= lt!420448 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420451 () tuple2!13366)

(declare-fun +!2754 (ListLongMap!12077 tuple2!13366) ListLongMap!12077)

(assert (=> b!933491 (contains!5053 (+!2754 lt!420450 lt!420451) k!1099)))

(declare-fun lt!420446 () Unit!31496)

(declare-fun lt!420447 () V!31799)

(declare-fun addStillContains!510 (ListLongMap!12077 (_ BitVec 64) V!31799 (_ BitVec 64)) Unit!31496)

(assert (=> b!933491 (= lt!420446 (addStillContains!510 lt!420450 lt!420449 lt!420447 k!1099))))

(assert (=> b!933491 (= (getCurrentListMap!3246 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2754 (getCurrentListMap!3246 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420451))))

(assert (=> b!933491 (= lt!420451 (tuple2!13367 lt!420449 lt!420447))))

(declare-fun get!14242 (ValueCell!9581 V!31799) V!31799)

(declare-fun dynLambda!1593 (Int (_ BitVec 64)) V!31799)

(assert (=> b!933491 (= lt!420447 (get!14242 (select (arr!27046 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1593 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420445 () Unit!31496)

(declare-fun lemmaListMapRecursiveValidKeyArray!189 (array!56210 array!56212 (_ BitVec 32) (_ BitVec 32) V!31799 V!31799 (_ BitVec 32) Int) Unit!31496)

(assert (=> b!933491 (= lt!420445 (lemmaListMapRecursiveValidKeyArray!189 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933492 () Bool)

(declare-fun res!628873 () Bool)

(assert (=> b!933492 (=> (not res!628873) (not e!524194))))

(assert (=> b!933492 (= res!628873 (and (= (size!27506 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27505 _keys!1487) (size!27506 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!933493 () Bool)

(declare-fun e!524190 () Bool)

(assert (=> b!933493 (= e!524190 tp_is_empty!20125)))

(declare-fun mapNonEmpty!31947 () Bool)

(declare-fun mapRes!31947 () Bool)

(declare-fun tp!61295 () Bool)

(assert (=> mapNonEmpty!31947 (= mapRes!31947 (and tp!61295 e!524191))))

(declare-fun mapValue!31947 () ValueCell!9581)

(declare-fun mapKey!31947 () (_ BitVec 32))

(declare-fun mapRest!31947 () (Array (_ BitVec 32) ValueCell!9581))

(assert (=> mapNonEmpty!31947 (= (arr!27046 _values!1231) (store mapRest!31947 mapKey!31947 mapValue!31947))))

(declare-fun b!933494 () Bool)

(declare-fun res!628876 () Bool)

(assert (=> b!933494 (=> (not res!628876) (not e!524195))))

(declare-fun v!791 () V!31799)

(declare-fun apply!836 (ListLongMap!12077 (_ BitVec 64)) V!31799)

(assert (=> b!933494 (= res!628876 (= (apply!836 lt!420450 k!1099) v!791))))

(declare-fun b!933495 () Bool)

(declare-fun e!524189 () Bool)

(assert (=> b!933495 (= e!524189 (and e!524190 mapRes!31947))))

(declare-fun condMapEmpty!31947 () Bool)

(declare-fun mapDefault!31947 () ValueCell!9581)

