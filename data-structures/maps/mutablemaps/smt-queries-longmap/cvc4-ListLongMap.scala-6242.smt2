; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79908 () Bool)

(assert start!79908)

(declare-fun b_free!17777 () Bool)

(declare-fun b_next!17777 () Bool)

(assert (=> start!79908 (= b_free!17777 (not b_next!17777))))

(declare-fun tp!61795 () Bool)

(declare-fun b_and!29207 () Bool)

(assert (=> start!79908 (= tp!61795 b_and!29207)))

(declare-fun b!939360 () Bool)

(declare-fun res!631954 () Bool)

(declare-fun e!527654 () Bool)

(assert (=> b!939360 (=> (not res!631954) (not e!527654))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!939360 (= res!631954 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun b!939361 () Bool)

(declare-fun res!631958 () Bool)

(declare-fun e!527651 () Bool)

(assert (=> b!939361 (=> (not res!631958) (not e!527651))))

(declare-datatypes ((array!56534 0))(
  ( (array!56535 (arr!27201 (Array (_ BitVec 32) (_ BitVec 64))) (size!27661 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56534)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56534 (_ BitVec 32)) Bool)

(assert (=> b!939361 (= res!631958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!939362 () Bool)

(declare-fun e!527657 () Bool)

(declare-fun tp_is_empty!20285 () Bool)

(assert (=> b!939362 (= e!527657 tp_is_empty!20285)))

(declare-fun res!631950 () Bool)

(assert (=> start!79908 (=> (not res!631950) (not e!527651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79908 (= res!631950 (validMask!0 mask!1881))))

(assert (=> start!79908 e!527651))

(assert (=> start!79908 true))

(assert (=> start!79908 tp_is_empty!20285))

(declare-datatypes ((V!32011 0))(
  ( (V!32012 (val!10193 Int)) )
))
(declare-datatypes ((ValueCell!9661 0))(
  ( (ValueCellFull!9661 (v!12724 V!32011)) (EmptyCell!9661) )
))
(declare-datatypes ((array!56536 0))(
  ( (array!56537 (arr!27202 (Array (_ BitVec 32) ValueCell!9661)) (size!27662 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56536)

(declare-fun e!527656 () Bool)

(declare-fun array_inv!21110 (array!56536) Bool)

(assert (=> start!79908 (and (array_inv!21110 _values!1231) e!527656)))

(assert (=> start!79908 tp!61795))

(declare-fun array_inv!21111 (array!56534) Bool)

(assert (=> start!79908 (array_inv!21111 _keys!1487)))

(declare-fun b!939363 () Bool)

(declare-fun res!631956 () Bool)

(assert (=> b!939363 (=> (not res!631956) (not e!527651))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!939363 (= res!631956 (and (= (size!27662 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27661 _keys!1487) (size!27662 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!939364 () Bool)

(declare-fun mapRes!32207 () Bool)

(assert (=> b!939364 (= e!527656 (and e!527657 mapRes!32207))))

(declare-fun condMapEmpty!32207 () Bool)

(declare-fun mapDefault!32207 () ValueCell!9661)

