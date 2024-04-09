; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79686 () Bool)

(assert start!79686)

(declare-fun b_free!17707 () Bool)

(declare-fun b_next!17707 () Bool)

(assert (=> start!79686 (= b_free!17707 (not b_next!17707))))

(declare-fun tp!61577 () Bool)

(declare-fun b_and!29023 () Bool)

(assert (=> start!79686 (= tp!61577 b_and!29023)))

(declare-fun b!936488 () Bool)

(declare-fun e!525876 () Bool)

(assert (=> b!936488 (= e!525876 false)))

(declare-datatypes ((Unit!31600 0))(
  ( (Unit!31601) )
))
(declare-fun lt!422332 () Unit!31600)

(declare-fun e!525878 () Unit!31600)

(assert (=> b!936488 (= lt!422332 e!525878)))

(declare-fun c!97352 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936488 (= c!97352 (validKeyInArray!0 k!1099))))

(declare-fun b!936489 () Bool)

(declare-fun res!630631 () Bool)

(declare-fun e!525879 () Bool)

(assert (=> b!936489 (=> (not res!630631) (not e!525879))))

(declare-datatypes ((array!56394 0))(
  ( (array!56395 (arr!27133 (Array (_ BitVec 32) (_ BitVec 64))) (size!27593 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56394)

(declare-datatypes ((List!19250 0))(
  ( (Nil!19247) (Cons!19246 (h!20392 (_ BitVec 64)) (t!27509 List!19250)) )
))
(declare-fun arrayNoDuplicates!0 (array!56394 (_ BitVec 32) List!19250) Bool)

(assert (=> b!936489 (= res!630631 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19247))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun b!936490 () Bool)

(declare-fun e!525884 () Bool)

(declare-fun arrayContainsKey!0 (array!56394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936490 (= e!525884 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapIsEmpty!32094 () Bool)

(declare-fun mapRes!32094 () Bool)

(assert (=> mapIsEmpty!32094 mapRes!32094))

(declare-fun res!630629 () Bool)

(assert (=> start!79686 (=> (not res!630629) (not e!525879))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79686 (= res!630629 (validMask!0 mask!1881))))

(assert (=> start!79686 e!525879))

(assert (=> start!79686 true))

(declare-fun tp_is_empty!20215 () Bool)

(assert (=> start!79686 tp_is_empty!20215))

(declare-datatypes ((V!31919 0))(
  ( (V!31920 (val!10158 Int)) )
))
(declare-datatypes ((ValueCell!9626 0))(
  ( (ValueCellFull!9626 (v!12683 V!31919)) (EmptyCell!9626) )
))
(declare-datatypes ((array!56396 0))(
  ( (array!56397 (arr!27134 (Array (_ BitVec 32) ValueCell!9626)) (size!27594 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56396)

(declare-fun e!525883 () Bool)

(declare-fun array_inv!21070 (array!56396) Bool)

(assert (=> start!79686 (and (array_inv!21070 _values!1231) e!525883)))

(assert (=> start!79686 tp!61577))

(declare-fun array_inv!21071 (array!56394) Bool)

(assert (=> start!79686 (array_inv!21071 _keys!1487)))

(declare-fun b!936491 () Bool)

(declare-fun e!525882 () Bool)

(assert (=> b!936491 (= e!525883 (and e!525882 mapRes!32094))))

(declare-fun condMapEmpty!32094 () Bool)

(declare-fun mapDefault!32094 () ValueCell!9626)

