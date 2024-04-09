; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79668 () Bool)

(assert start!79668)

(declare-fun b_free!17689 () Bool)

(declare-fun b_next!17689 () Bool)

(assert (=> start!79668 (= b_free!17689 (not b_next!17689))))

(declare-fun tp!61523 () Bool)

(declare-fun b_and!28987 () Bool)

(assert (=> start!79668 (= tp!61523 b_and!28987)))

(declare-fun b!936045 () Bool)

(declare-fun res!630424 () Bool)

(declare-fun e!525624 () Bool)

(assert (=> b!936045 (=> (not res!630424) (not e!525624))))

(declare-datatypes ((array!56358 0))(
  ( (array!56359 (arr!27115 (Array (_ BitVec 32) (_ BitVec 64))) (size!27575 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56358)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56358 (_ BitVec 32)) Bool)

(assert (=> b!936045 (= res!630424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!936046 () Bool)

(declare-fun res!630425 () Bool)

(declare-fun e!525621 () Bool)

(assert (=> b!936046 (=> (not res!630425) (not e!525621))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31895 0))(
  ( (V!31896 (val!10149 Int)) )
))
(declare-fun v!791 () V!31895)

(declare-datatypes ((tuple2!13428 0))(
  ( (tuple2!13429 (_1!6724 (_ BitVec 64)) (_2!6724 V!31895)) )
))
(declare-datatypes ((List!19236 0))(
  ( (Nil!19233) (Cons!19232 (h!20378 tuple2!13428) (t!27477 List!19236)) )
))
(declare-datatypes ((ListLongMap!12139 0))(
  ( (ListLongMap!12140 (toList!6085 List!19236)) )
))
(declare-fun lt!422006 () ListLongMap!12139)

(declare-fun apply!863 (ListLongMap!12139 (_ BitVec 64)) V!31895)

(assert (=> b!936046 (= res!630425 (= (apply!863 lt!422006 k!1099) v!791))))

(declare-fun res!630426 () Bool)

(assert (=> start!79668 (=> (not res!630426) (not e!525624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79668 (= res!630426 (validMask!0 mask!1881))))

(assert (=> start!79668 e!525624))

(assert (=> start!79668 true))

(declare-fun tp_is_empty!20197 () Bool)

(assert (=> start!79668 tp_is_empty!20197))

(declare-datatypes ((ValueCell!9617 0))(
  ( (ValueCellFull!9617 (v!12674 V!31895)) (EmptyCell!9617) )
))
(declare-datatypes ((array!56360 0))(
  ( (array!56361 (arr!27116 (Array (_ BitVec 32) ValueCell!9617)) (size!27576 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56360)

(declare-fun e!525623 () Bool)

(declare-fun array_inv!21056 (array!56360) Bool)

(assert (=> start!79668 (and (array_inv!21056 _values!1231) e!525623)))

(assert (=> start!79668 tp!61523))

(declare-fun array_inv!21057 (array!56358) Bool)

(assert (=> start!79668 (array_inv!21057 _keys!1487)))

(declare-fun b!936047 () Bool)

(declare-fun res!630423 () Bool)

(assert (=> b!936047 (=> (not res!630423) (not e!525621))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!936047 (= res!630423 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!936048 () Bool)

(declare-fun e!525620 () Bool)

(declare-fun mapRes!32067 () Bool)

(assert (=> b!936048 (= e!525623 (and e!525620 mapRes!32067))))

(declare-fun condMapEmpty!32067 () Bool)

(declare-fun mapDefault!32067 () ValueCell!9617)

