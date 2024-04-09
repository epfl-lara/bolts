; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79346 () Bool)

(assert start!79346)

(declare-fun b_free!17531 () Bool)

(declare-fun b_next!17531 () Bool)

(assert (=> start!79346 (= b_free!17531 (not b_next!17531))))

(declare-fun tp!61035 () Bool)

(declare-fun b_and!28631 () Bool)

(assert (=> start!79346 (= tp!61035 b_and!28631)))

(declare-fun b!931551 () Bool)

(declare-fun res!627512 () Bool)

(declare-fun e!523177 () Bool)

(assert (=> b!931551 (=> (not res!627512) (not e!523177))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931551 (= res!627512 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!931552 () Bool)

(declare-fun res!627505 () Bool)

(declare-fun e!523178 () Bool)

(assert (=> b!931552 (=> (not res!627505) (not e!523178))))

(declare-datatypes ((array!56046 0))(
  ( (array!56047 (arr!26964 (Array (_ BitVec 32) (_ BitVec 64))) (size!27424 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56046)

(declare-datatypes ((List!19111 0))(
  ( (Nil!19108) (Cons!19107 (h!20253 (_ BitVec 64)) (t!27194 List!19111)) )
))
(declare-fun arrayNoDuplicates!0 (array!56046 (_ BitVec 32) List!19111) Bool)

(assert (=> b!931552 (= res!627505 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19108))))

(declare-fun b!931553 () Bool)

(declare-fun e!523179 () Bool)

(declare-fun tp_is_empty!20039 () Bool)

(assert (=> b!931553 (= e!523179 tp_is_empty!20039)))

(declare-fun b!931554 () Bool)

(declare-fun res!627508 () Bool)

(assert (=> b!931554 (=> (not res!627508) (not e!523177))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931554 (= res!627508 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!31815 () Bool)

(declare-fun mapRes!31815 () Bool)

(declare-fun tp!61034 () Bool)

(assert (=> mapNonEmpty!31815 (= mapRes!31815 (and tp!61034 e!523179))))

(declare-fun mapKey!31815 () (_ BitVec 32))

(declare-datatypes ((V!31683 0))(
  ( (V!31684 (val!10070 Int)) )
))
(declare-datatypes ((ValueCell!9538 0))(
  ( (ValueCellFull!9538 (v!12588 V!31683)) (EmptyCell!9538) )
))
(declare-fun mapValue!31815 () ValueCell!9538)

(declare-fun mapRest!31815 () (Array (_ BitVec 32) ValueCell!9538))

(declare-datatypes ((array!56048 0))(
  ( (array!56049 (arr!26965 (Array (_ BitVec 32) ValueCell!9538)) (size!27425 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56048)

(assert (=> mapNonEmpty!31815 (= (arr!26965 _values!1231) (store mapRest!31815 mapKey!31815 mapValue!31815))))

(declare-fun b!931555 () Bool)

(declare-fun e!523180 () Bool)

(assert (=> b!931555 (= e!523177 e!523180)))

(declare-fun res!627506 () Bool)

(assert (=> b!931555 (=> (not res!627506) (not e!523180))))

(declare-fun lt!419434 () (_ BitVec 64))

(assert (=> b!931555 (= res!627506 (validKeyInArray!0 lt!419434))))

(assert (=> b!931555 (= lt!419434 (select (arr!26964 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!931556 () Bool)

(declare-fun res!627509 () Bool)

(assert (=> b!931556 (=> (not res!627509) (not e!523178))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56046 (_ BitVec 32)) Bool)

(assert (=> b!931556 (= res!627509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!931557 () Bool)

(declare-fun res!627507 () Bool)

(assert (=> b!931557 (=> (not res!627507) (not e!523178))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!931557 (= res!627507 (and (= (size!27425 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27424 _keys!1487) (size!27425 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!931558 () Bool)

(declare-fun res!627503 () Bool)

(assert (=> b!931558 (=> (not res!627503) (not e!523177))))

(declare-fun v!791 () V!31683)

(declare-datatypes ((tuple2!13296 0))(
  ( (tuple2!13297 (_1!6658 (_ BitVec 64)) (_2!6658 V!31683)) )
))
(declare-datatypes ((List!19112 0))(
  ( (Nil!19109) (Cons!19108 (h!20254 tuple2!13296) (t!27195 List!19112)) )
))
(declare-datatypes ((ListLongMap!12007 0))(
  ( (ListLongMap!12008 (toList!6019 List!19112)) )
))
(declare-fun lt!419435 () ListLongMap!12007)

(declare-fun apply!805 (ListLongMap!12007 (_ BitVec 64)) V!31683)

(assert (=> b!931558 (= res!627503 (= (apply!805 lt!419435 k!1099) v!791))))

(declare-fun res!627504 () Bool)

(assert (=> start!79346 (=> (not res!627504) (not e!523178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79346 (= res!627504 (validMask!0 mask!1881))))

(assert (=> start!79346 e!523178))

(assert (=> start!79346 true))

(assert (=> start!79346 tp_is_empty!20039))

(declare-fun e!523181 () Bool)

(declare-fun array_inv!20960 (array!56048) Bool)

(assert (=> start!79346 (and (array_inv!20960 _values!1231) e!523181)))

(assert (=> start!79346 tp!61035))

(declare-fun array_inv!20961 (array!56046) Bool)

(assert (=> start!79346 (array_inv!20961 _keys!1487)))

(declare-fun b!931559 () Bool)

(declare-fun e!523176 () Bool)

(assert (=> b!931559 (= e!523181 (and e!523176 mapRes!31815))))

(declare-fun condMapEmpty!31815 () Bool)

(declare-fun mapDefault!31815 () ValueCell!9538)

