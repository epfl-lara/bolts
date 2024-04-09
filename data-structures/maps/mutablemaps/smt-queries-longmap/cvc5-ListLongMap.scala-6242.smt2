; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79904 () Bool)

(assert start!79904)

(declare-fun b_free!17773 () Bool)

(declare-fun b_next!17773 () Bool)

(assert (=> start!79904 (= b_free!17773 (not b_next!17773))))

(declare-fun tp!61784 () Bool)

(declare-fun b_and!29203 () Bool)

(assert (=> start!79904 (= tp!61784 b_and!29203)))

(declare-fun b!939288 () Bool)

(declare-fun res!631901 () Bool)

(declare-fun e!527609 () Bool)

(assert (=> b!939288 (=> (not res!631901) (not e!527609))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56526 0))(
  ( (array!56527 (arr!27197 (Array (_ BitVec 32) (_ BitVec 64))) (size!27657 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56526)

(assert (=> b!939288 (= res!631901 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27657 _keys!1487))))))

(declare-fun b!939289 () Bool)

(declare-fun res!631898 () Bool)

(declare-fun e!527614 () Bool)

(assert (=> b!939289 (=> (not res!631898) (not e!527614))))

(assert (=> b!939289 (= res!631898 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!939290 () Bool)

(declare-fun e!527613 () Bool)

(declare-fun tp_is_empty!20281 () Bool)

(assert (=> b!939290 (= e!527613 tp_is_empty!20281)))

(declare-fun b!939291 () Bool)

(declare-fun res!631903 () Bool)

(assert (=> b!939291 (=> (not res!631903) (not e!527614))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!32007 0))(
  ( (V!32008 (val!10191 Int)) )
))
(declare-fun v!791 () V!32007)

(declare-datatypes ((tuple2!13500 0))(
  ( (tuple2!13501 (_1!6760 (_ BitVec 64)) (_2!6760 V!32007)) )
))
(declare-datatypes ((List!19307 0))(
  ( (Nil!19304) (Cons!19303 (h!20449 tuple2!13500) (t!27630 List!19307)) )
))
(declare-datatypes ((ListLongMap!12211 0))(
  ( (ListLongMap!12212 (toList!6121 List!19307)) )
))
(declare-fun lt!424479 () ListLongMap!12211)

(declare-fun apply!899 (ListLongMap!12211 (_ BitVec 64)) V!32007)

(assert (=> b!939291 (= res!631903 (= (apply!899 lt!424479 k!1099) v!791))))

(declare-fun b!939292 () Bool)

(declare-fun res!631899 () Bool)

(assert (=> b!939292 (=> (not res!631899) (not e!527609))))

(declare-datatypes ((List!19308 0))(
  ( (Nil!19305) (Cons!19304 (h!20450 (_ BitVec 64)) (t!27631 List!19308)) )
))
(declare-fun arrayNoDuplicates!0 (array!56526 (_ BitVec 32) List!19308) Bool)

(assert (=> b!939292 (= res!631899 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19305))))

(declare-fun b!939294 () Bool)

(declare-fun res!631902 () Bool)

(assert (=> b!939294 (=> (not res!631902) (not e!527609))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56526 (_ BitVec 32)) Bool)

(assert (=> b!939294 (= res!631902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!939295 () Bool)

(assert (=> b!939295 (= e!527609 e!527614)))

(declare-fun res!631897 () Bool)

(assert (=> b!939295 (=> (not res!631897) (not e!527614))))

(declare-fun contains!5134 (ListLongMap!12211 (_ BitVec 64)) Bool)

(assert (=> b!939295 (= res!631897 (contains!5134 lt!424479 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9659 0))(
  ( (ValueCellFull!9659 (v!12722 V!32007)) (EmptyCell!9659) )
))
(declare-datatypes ((array!56528 0))(
  ( (array!56529 (arr!27198 (Array (_ BitVec 32) ValueCell!9659)) (size!27658 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56528)

(declare-fun zeroValue!1173 () V!32007)

(declare-fun minValue!1173 () V!32007)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3309 (array!56526 array!56528 (_ BitVec 32) (_ BitVec 32) V!32007 V!32007 (_ BitVec 32) Int) ListLongMap!12211)

(assert (=> b!939295 (= lt!424479 (getCurrentListMap!3309 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!939296 () Bool)

(declare-fun res!631904 () Bool)

(assert (=> b!939296 (=> (not res!631904) (not e!527609))))

(assert (=> b!939296 (= res!631904 (and (= (size!27658 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27657 _keys!1487) (size!27658 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!939297 () Bool)

(declare-fun e!527611 () Bool)

(declare-fun mapRes!32201 () Bool)

(assert (=> b!939297 (= e!527611 (and e!527613 mapRes!32201))))

(declare-fun condMapEmpty!32201 () Bool)

(declare-fun mapDefault!32201 () ValueCell!9659)

