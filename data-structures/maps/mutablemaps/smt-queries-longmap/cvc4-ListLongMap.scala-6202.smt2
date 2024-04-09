; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79352 () Bool)

(assert start!79352)

(declare-fun b_free!17537 () Bool)

(declare-fun b_next!17537 () Bool)

(assert (=> start!79352 (= b_free!17537 (not b_next!17537))))

(declare-fun tp!61052 () Bool)

(declare-fun b_and!28643 () Bool)

(assert (=> start!79352 (= tp!61052 b_and!28643)))

(declare-fun b!931674 () Bool)

(declare-fun e!523240 () Bool)

(declare-fun e!523242 () Bool)

(assert (=> b!931674 (= e!523240 e!523242)))

(declare-fun res!627599 () Bool)

(assert (=> b!931674 (=> (not res!627599) (not e!523242))))

(declare-fun lt!419487 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931674 (= res!627599 (validKeyInArray!0 lt!419487))))

(declare-datatypes ((array!56058 0))(
  ( (array!56059 (arr!26970 (Array (_ BitVec 32) (_ BitVec 64))) (size!27430 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56058)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!931674 (= lt!419487 (select (arr!26970 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!627602 () Bool)

(declare-fun e!523245 () Bool)

(assert (=> start!79352 (=> (not res!627602) (not e!523245))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79352 (= res!627602 (validMask!0 mask!1881))))

(assert (=> start!79352 e!523245))

(assert (=> start!79352 true))

(declare-fun tp_is_empty!20045 () Bool)

(assert (=> start!79352 tp_is_empty!20045))

(declare-datatypes ((V!31691 0))(
  ( (V!31692 (val!10073 Int)) )
))
(declare-datatypes ((ValueCell!9541 0))(
  ( (ValueCellFull!9541 (v!12591 V!31691)) (EmptyCell!9541) )
))
(declare-datatypes ((array!56060 0))(
  ( (array!56061 (arr!26971 (Array (_ BitVec 32) ValueCell!9541)) (size!27431 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56060)

(declare-fun e!523243 () Bool)

(declare-fun array_inv!20964 (array!56060) Bool)

(assert (=> start!79352 (and (array_inv!20964 _values!1231) e!523243)))

(assert (=> start!79352 tp!61052))

(declare-fun array_inv!20965 (array!56058) Bool)

(assert (=> start!79352 (array_inv!20965 _keys!1487)))

(declare-fun b!931675 () Bool)

(declare-fun res!627601 () Bool)

(assert (=> b!931675 (=> (not res!627601) (not e!523245))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!931675 (= res!627601 (and (= (size!27431 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27430 _keys!1487) (size!27431 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!931676 () Bool)

(declare-fun e!523244 () Bool)

(assert (=> b!931676 (= e!523244 tp_is_empty!20045)))

(declare-fun b!931677 () Bool)

(declare-fun mapRes!31824 () Bool)

(assert (=> b!931677 (= e!523243 (and e!523244 mapRes!31824))))

(declare-fun condMapEmpty!31824 () Bool)

(declare-fun mapDefault!31824 () ValueCell!9541)

