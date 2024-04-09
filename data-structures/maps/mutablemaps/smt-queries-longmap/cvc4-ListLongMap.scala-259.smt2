; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4278 () Bool)

(assert start!4278)

(declare-fun b_free!1145 () Bool)

(declare-fun b_next!1145 () Bool)

(assert (=> start!4278 (= b_free!1145 (not b_next!1145))))

(declare-fun tp!4860 () Bool)

(declare-fun b_and!1961 () Bool)

(assert (=> start!4278 (= tp!4860 b_and!1961)))

(declare-fun b!32827 () Bool)

(declare-fun res!19926 () Bool)

(declare-fun e!20860 () Bool)

(assert (=> b!32827 (=> (not res!19926) (not e!20860))))

(declare-datatypes ((array!2207 0))(
  ( (array!2208 (arr!1055 (Array (_ BitVec 32) (_ BitVec 64))) (size!1156 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2207)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2207 (_ BitVec 32)) Bool)

(assert (=> b!32827 (= res!19926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32828 () Bool)

(declare-fun res!19924 () Bool)

(assert (=> b!32828 (=> (not res!19924) (not e!20860))))

(declare-datatypes ((List!858 0))(
  ( (Nil!855) (Cons!854 (h!1421 (_ BitVec 64)) (t!3557 List!858)) )
))
(declare-fun arrayNoDuplicates!0 (array!2207 (_ BitVec 32) List!858) Bool)

(assert (=> b!32828 (= res!19924 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!855))))

(declare-fun mapIsEmpty!1783 () Bool)

(declare-fun mapRes!1783 () Bool)

(assert (=> mapIsEmpty!1783 mapRes!1783))

(declare-fun b!32829 () Bool)

(declare-fun res!19929 () Bool)

(assert (=> b!32829 (=> (not res!19929) (not e!20860))))

(declare-datatypes ((V!1823 0))(
  ( (V!1824 (val!776 Int)) )
))
(declare-datatypes ((ValueCell!550 0))(
  ( (ValueCellFull!550 (v!1867 V!1823)) (EmptyCell!550) )
))
(declare-datatypes ((array!2209 0))(
  ( (array!2210 (arr!1056 (Array (_ BitVec 32) ValueCell!550)) (size!1157 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2209)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!32829 (= res!19929 (and (= (size!1157 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1156 _keys!1833) (size!1157 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32830 () Bool)

(declare-fun e!20857 () Bool)

(declare-fun tp_is_empty!1499 () Bool)

(assert (=> b!32830 (= e!20857 tp_is_empty!1499)))

(declare-fun b!32831 () Bool)

(declare-fun e!20858 () Bool)

(declare-fun e!20859 () Bool)

(assert (=> b!32831 (= e!20858 (and e!20859 mapRes!1783))))

(declare-fun condMapEmpty!1783 () Bool)

(declare-fun mapDefault!1783 () ValueCell!550)

